-- Test submit
--SELECT * FROM Student;

--SELECT * FROM Student_Exam_Question

--SELECT * FROM Exam;

--SELECT * FROM Course;

--SELECT * FROM Student_Course;

--SELECT * FROM Question 
--ORDER BY Course_Id;


EXEC CreateExam 3, 1, 2, 1 ;

select * from Student_Exam_Question 
INNER JOIN Option_Table ON Option_Table.Question_Id = Student_Exam_Question.Question_Id;

SELECT * FROM Student_Course;

SELECT * FROM GetQuestionOptions(3);

EXEC CheckStudentAnswer 1 ,1,3 , 'False';

SELECT * FROM Student_Course;