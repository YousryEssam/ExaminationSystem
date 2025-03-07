-- submit question 

-- If MMCQ, answers should be comma-separated (e.g., "A,B,D")


CREATE PROCEDURE CheckStudentAnswer
    @Student_Id INT,
    @Exam_Id INT,
    @Question_Id INT,
    @Answer NVARCHAR(MAX)  -- Changed to NVARCHAR(MAX) instead of TEXT
AS
BEGIN
    DECLARE @Question_Type VARCHAR(10);
    DECLARE @Is_Correct BIT = 0;
    DECLARE @Total_Questions INT;
    DECLARE @Score_Increment DECIMAL(5,2);
    DECLARE @Correct_Options NVARCHAR(MAX);

    -- Get the question type (MCQ, MMCQ, T/F)
    SELECT @Question_Type = Question_Type
    FROM Question
    WHERE Question_Id = @Question_Id;

    -- Case 1: **MCQ / T/F** (Check if the answer is correct)
    IF @Question_Type IN ('MCQ', 'T/F')
    BEGIN
        SELECT @Is_Correct = CASE 
            WHEN EXISTS (
                SELECT 1 FROM Option_Table
                WHERE Question_Id = @Question_Id AND Option_Text = @Answer AND Is_Correct = 1
            )
            THEN 1 ELSE 0 
        END;
    END;

    -- Case 2: **MMCQ** (Check if ALL correct options are selected)
    IF @Question_Type = 'MMCQ'
    BEGIN
        -- Convert TEXT to NVARCHAR(MAX) for comparison
        SELECT @Correct_Options = STRING_AGG(CAST(Option_Text AS NVARCHAR(MAX)), ',')
        FROM Option_Table
        WHERE Question_Id = @Question_Id AND Is_Correct = 1;

        -- Compare student answer with correct options
        IF @Answer = @Correct_Options
            SET @Is_Correct = 1;
    END;

    -- Step 2: Save the student's answer in Student_Exam_Question
    UPDATE Student_Exam_Question
    SET Answer = @Answer
    WHERE Exam_Id = @Exam_Id AND Student_Id = @Student_Id AND Question_Id = @Question_Id;

    -- Step 3: If the answer is correct, update the student's score
    IF @Is_Correct = 1
    BEGIN
        -- Get total number of questions in the exam
        SELECT @Total_Questions = COUNT(*)
        FROM Student_Exam_Question
        WHERE Exam_Id = @Exam_Id AND Student_Id = @Student_Id;

        -- Calculate score increment
        SET @Score_Increment = (1.0 / @Total_Questions) * 100;

        -- Update the student's total score
        UPDATE Student_Course
        SET Score = Score + @Score_Increment
        WHERE Student_Id = @Student_Id AND Course_Id = (SELECT Course_Id FROM Exam WHERE Exam_Id = @Exam_Id);
    END;
END;
