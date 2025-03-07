-- Exam Generation 

CREATE PROCEDURE CreateExam 
    @Course_Id INT,
    @Student_Id INT,
    @Num_Questions INT,
    @Exam_Id INT   -- Ensure output parameter
AS
BEGIN
    SET NOCOUNT ON;

    -- Step 1: Insert a new exam record and get the generated ID
    INSERT INTO Exam (Exam_Id, Exam_Type, Exam_Date, Course_Id)
    VALUES (@Exam_Id,'Final Exam', GETDATE(), @Course_Id);

    -- Step 2: Select random questions for the exam
    INSERT INTO Exam_Question (Exam_Id, Option_Id)
    SELECT TOP (@Num_Questions) @Exam_Id, Question_Id
    FROM Question
    WHERE Course_Id = @Course_Id
    ORDER BY NEWID();

    -- Step 3: Insert a record in Student_Exam_Question for tracking
    INSERT INTO Student_Exam_Question (Exam_Id, Student_Id, Question_Id, Answer)
    SELECT @Exam_Id, @Student_Id, Question_Id, ''
    FROM Question
    WHERE Course_Id = @Course_Id
    ORDER BY NEWID()
    OFFSET 0 ROWS FETCH NEXT @Num_Questions ROWS ONLY;
END;


-- Functinos 

CREATE FUNCTION GetQuestionOptions(@Question_Id INT)
RETURNS TABLE
AS
RETURN (
    SELECT Option_Text
    FROM Option_Table
    WHERE @Question_Id = Question_Id
);
