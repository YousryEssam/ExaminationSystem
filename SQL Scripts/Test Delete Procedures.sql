
--Test the DELETE Procedures 
EXEC DeleteBranch @Branch_Id = 1;

EXEC DeleteInstructor @Instructor_Id = 1;

EXEC DeleteTrack @Track_Id = 1;

EXEC DeleteCourse @Course_Id = 1;

EXEC DeleteStudent @Student_Id = 1;

EXEC DeleteExam @Exam_Id = 1;

EXEC DeleteQuestion @Question_Id = 1;

EXEC DeleteOption @Option_Id = 1;

EXEC DeleteBranchTrack @Branch_Id = 1, @Track_Id = 1, @Intake = 2025;

EXEC DeleteTrackCourse @Track_Id = 1, @Course_Id = 1;

EXEC DeleteStudentCourse @Student_Id = 1, @Course_Id = 1;

EXEC DeleteStudentExamQuestion @Exam_Id = 1, @Student_Id = 1, @Question_Id = 1;

EXEC DeleteExamQuestion @Exam_Id = 1, @Option_Id = 1;