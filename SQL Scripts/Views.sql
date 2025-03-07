-- Views

-- Passed_Students
CREATE VIEW Passed_Students  AS 
	SELECT CONCAT(Stud_Fname , Stud_Lname) AS 'Student Name'  , Course.Course_Name 
	FROM Student 
	INNER JOIN Student_Course ON Student.Student_Id = Student_Course.Student_Id
	INNER JOIN Course ON Course.Course_Id = Student_Course.Course_Id
	WHERE Score >= Course.Min_Degree;


-- Failed Students
CREATE VIEW Failed_Students  AS 
	SELECT CONCAT(Stud_Fname , Stud_Lname) AS 'Student Name'  , Course.Course_Name 
	FROM Student 
	INNER JOIN Student_Course ON Student.Student_Id = Student_Course.Student_Id
	INNER JOIN Course ON Course.Course_Id = Student_Course.Course_Id
	WHERE Score <  Course.Min_Degree;

-- Get All managers
CREATE VIEW Tracks_Managers
	AS 
	SELECT Instructor.Instructor_Name AS 'Manager Name'  , Track.Track_Name AS 'Track Name' 
	FROM Instructor 
	INNER JOIN Track ON Manager_Id = Instructor_Id;

SELECT * FROM Tracks_Managers;

CREATE VIEW Student_Total_Courses AS 
	SELECT  CONCAT(Stud_Fname ,' ' ,Stud_Lname) AS 'Student_Name' , COUNT(Course_Id) AS 'Total_Courses'
	FROM Student 
	INNER JOIN Student_Course ON Student.Student_Id = Student_Course.Student_Id
	GROUP BY CONCAT(Stud_Fname ,' ' ,Stud_Lname);

SELECT * FROM Student_Total_Courses;