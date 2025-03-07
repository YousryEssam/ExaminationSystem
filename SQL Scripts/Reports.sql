-- Reports 

CREATE PROCEDURE Show_Track_Students 
	@Track_Id INT
AS 
BEGIN 
	SET NOCOUNT ON;
	SELECT * FROM Student 
	WHERE Track_Id = @Track_Id;
END;

------------------------------------------------------------------------


CREATE PROCEDURE Show_Track_Students_At_Branch
	@Track_Id INT,
	@Branch_Id INT
AS 
BEGIN 
	SET NOCOUNT ON;
	SELECT * FROM Student 
	INNER JOIN Branch_Track ON Student.Track_Id = Branch_Track.Track_Id
	WHERE Student.Track_Id = @Track_Id;
END;

------------------------------------------------------------------------


CREATE PROCEDURE Show_Student_Grades 
	@Student_Id INT
AS 
BEGIN 
	SET NOCOUNT ON;
	SELECT Course_Name AS 'Course' ,Score AS 'Grade'  
	FROM Student_Course 
	INNER JOIN Course ON Course.Course_Id = Student_Course.Course_Id
	WHERE Student_Id = @Student_Id 
END;


------------------------------------------------------------------------


CREATE PROCEDURE  Course_Topics
	@Course_Id INT
AS 
BEGIN 
	SET NOCOUNT ON;
	SELECT Course_Name AS 'Course' ,Course.Description  
	FROM Course 
	WHERE Course_Id = @Course_Id; 
END;



------------------------------------------------------------------------

CREATE PROCEDURE  Number_Of_Questions_In_Exam
	@Exam_Id INT
AS 
BEGIN 
	SET NOCOUNT ON;
	SELECT COUNT(Question_Id) AS 'Number_Of_Questions' 
	FROM Student_Exam_Question 
	WHERE Exam_Id = @Exam_Id; 
END;


------------------------------------------------------------------------

CREATE PROCEDURE  Student_Exam_Answers
	@Student_Id INT,
	@Exam_Id INT
AS 
BEGIN 
	SET NOCOUNT ON;
	SELECT Question_Text AS 'Question'  , Answer AS 'Student Answers' FROM Question
	INNER JOIN Student_Exam_Question ON Question.Question_Id = Student_Exam_Question.Question_Id
	WHERE Student_Id = @Student_Id AND Exam_Id = @Exam_Id;
END;