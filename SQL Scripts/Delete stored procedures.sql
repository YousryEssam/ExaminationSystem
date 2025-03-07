-- DELETE stored procedures


-------------------------DeleteBranch-------------------------

CREATE PROCEDURE DeleteBranch
    @Branch_Id INT
AS
BEGIN
    SET NOCOUNT ON;
    DELETE FROM Branch WHERE Branch_Id = @Branch_Id;
END;

-------------------------DeleteInstructor-------------------------
CREATE PROCEDURE DeleteInstructor
    @Instructor_Id INT
AS
BEGIN
    SET NOCOUNT ON;
    DELETE FROM Instructor WHERE Instructor_Id = @Instructor_Id;
END;


-------------------------DeleteTrack-------------------------
CREATE PROCEDURE DeleteTrack
    @Track_Id INT
AS
BEGIN
    SET NOCOUNT ON;
    DELETE FROM Track WHERE Track_Id = @Track_Id;
END;



-------------------------DeleteCourse-------------------------
CREATE PROCEDURE DeleteCourse
    @Course_Id INT
AS
BEGIN
    SET NOCOUNT ON;
    DELETE FROM Course WHERE Course_Id = @Course_Id;
END;


-------------------------DeleteStudent-------------------------
CREATE PROCEDURE DeleteStudent
    @Student_Id INT
AS
BEGIN
    SET NOCOUNT ON;
    DELETE FROM Student WHERE Student_Id = @Student_Id;
END;

-------------------------DeleteExam-------------------------

CREATE PROCEDURE DeleteExam
    @Exam_Id INT
AS
BEGIN
    SET NOCOUNT ON;
    DELETE FROM Exam WHERE Exam_Id = @Exam_Id;
END;

-------------------------DeleteQuestion-------------------------

CREATE PROCEDURE DeleteQuestion
    @Question_Id INT
AS
BEGIN
    SET NOCOUNT ON;
    DELETE FROM Question WHERE Question_Id = @Question_Id;
END;


-------------------------DeleteOption-------------------------
CREATE PROCEDURE DeleteOption
    @Option_Id INT
AS
BEGIN
    SET NOCOUNT ON;
    DELETE FROM Option_Table WHERE Option_Id = @Option_Id;
END;

-------------------------DeleteBranchTrack-------------------------
CREATE PROCEDURE DeleteBranchTrack
    @Branch_Id INT,
    @Track_Id INT,
    @Intake INT
AS
BEGIN
    SET NOCOUNT ON;
    DELETE FROM Branch_Track WHERE Branch_Id = @Branch_Id AND Track_Id = @Track_Id AND Intake = @Intake;
END;

-------------------------DeleteTrackCourse-------------------------

CREATE PROCEDURE DeleteTrackCourse
    @Track_Id INT,
    @Course_Id INT
AS
BEGIN
    SET NOCOUNT ON;
    DELETE FROM Track_Course WHERE Track_Id = @Track_Id AND Course_Id = @Course_Id;
END;

-------------------------DeleteStudentCourse-------------------------

CREATE PROCEDURE DeleteStudentCourse
    @Student_Id INT,
    @Course_Id INT
AS
BEGIN
    SET NOCOUNT ON;
    DELETE FROM Student_Course WHERE Student_Id = @Student_Id AND Course_Id = @Course_Id;
END;

-------------------------DeleteStudentExamQuestion-------------------------

CREATE PROCEDURE DeleteStudentExamQuestion
    @Exam_Id INT,
    @Student_Id INT,
    @Question_Id INT
AS
BEGIN
    SET NOCOUNT ON;
    DELETE FROM Student_Exam_Question WHERE Exam_Id = @Exam_Id AND Student_Id = @Student_Id AND Question_Id = @Question_Id;
END;


-------------------------DeleteExamQuestion-------------------------

CREATE PROCEDURE DeleteExamQuestion
    @Exam_Id INT,
    @Option_Id INT
AS
BEGIN
    SET NOCOUNT ON;
    DELETE FROM Exam_Question WHERE Exam_Id = @Exam_Id AND Option_Id = @Option_Id;
END;
