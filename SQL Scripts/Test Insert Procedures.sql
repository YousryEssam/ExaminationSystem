-- Test InsertBranch


-- Insert into Branch (needed for Branch_Track)
EXEC InsertBranch 
	@Branch_Id = 1, 
	@Branch_Name = 'Main Branch', 
	@Branch_Address = '123 Street', 
	@Branch_Phone = '0123456789';

-- Insert into Instructor (needed for Track)
EXEC InsertInstructor 
	@Instructor_Id = 1, 
	@Instructor_Name = 'Dr. Ahmed', 
	@Instructor_Salary = 10000.00, 
	@Phone = '0100000001';

-- Insert into Track (needed for Student & Track_Course)
EXEC InsertTrack 
	@Track_Id = 1, 
	@Track_Name = 'Software Engineering', 
	@Manager_Id = 1;

-- Insert into Course (needed for Exam, Question, Track_Course, and Student_Course)
EXEC InsertCourse 
	@Course_Id = 1, 
	@Course_Name = 'Database Systems', 
	@Min_Degree = 50, 
	@Description = 'Covers SQL and NoSQL databases';

-- Insert into Student
EXEC InsertStudent 
	@Student_Id = 1, 
	@Stud_Fname = 'Ali', 
	@Stud_Lname = 'Mahmoud', 
	@Student_Age = 22, 
	@Email = 'ali@example.com',
	@Track_Id = 1;

-- Insert into Exam
EXEC InsertExam 
	@Exam_Id = 1, 
	@Exam_Type = 'Final', 
	@Exam_Date = '2025-06-01', 
	@Course_Id = 1;

-- Insert into Question
EXEC InsertQuestion 
	@Question_Id = 1, 
	@Question_Type = 'MCQ', 
	@Question_Text = 'What is SQL?', 
	@Course_Id = 1;

-- Insert into Option_Table (Needed for Exam_Question)
EXEC InsertOption 
	@Option_Id = 1,
	@Option_Text = 'Structured Query Language', 
	@Is_Correct = 1, @Question_Id = 1;

-- Insert into Branch_Track
EXEC InsertBranchTrack 
	@Branch_Id = 1, 
	@Track_Id = 1, 
	@Intake = 2025;

-- Insert into Track_Course
EXEC InsertTrackCourse 
	@Track_Id = 1, 
	@Course_Id = 1;

-- Insert into Student_Course
EXEC InsertStudentCourse 
	@Student_Id = 1, 
	@Course_Id = 1, 
	@Score = 85.5;

-- Insert into Student_Exam_Question
EXEC InsertStudentExamQuestion 
	@Exam_Id = 1, @Student_Id = 1, 
	@Question_Id = 1, 
	@Answer = 'Structured Query Language';

-- Insert into Exam_Question
EXEC InsertExamQuestion 
	@Exam_Id = 1, 
	@Option_Id = 1;
