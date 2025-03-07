--Examination system Part Two 

-- Stored Procedures 

----------------------------InsertBranch----------------------------
CREATE PROCEDURE InsertBranch
    @Branch_Id INT,
    @Branch_Name NVARCHAR(50),
    @Branch_Address NVARCHAR(100),
    @Branch_Phone NVARCHAR(15)
AS
BEGIN
    SET NOCOUNT ON;    
    IF EXISTS (SELECT 1 FROM Branch WHERE Branch_Id = @Branch_Id)
    BEGIN
        PRINT 'Error: Branch_Id already exists.';
        RETURN;
    END
    INSERT INTO Branch (Branch_Id, Branch_Name, Branch_Address, Branch_Phone)
    VALUES (@Branch_Id, @Branch_Name, @Branch_Address, @Branch_Phone);
    PRINT 'Branch inserted successfully.';
END;


----------------------------InsertInstructor----------------------------

CREATE PROCEDURE InsertInstructor
    @Instructor_Id INT,
    @Instructor_Name VARCHAR(50),
    @Instructor_Salary DECIMAL(10,2),
    @Phone VARCHAR(15)
AS
BEGIN
    SET NOCOUNT ON;
    IF EXISTS (SELECT 1 FROM Instructor WHERE Instructor_Id = @Instructor_Id)
    BEGIN
        PRINT 'Error: Instructor_Id already exists.';
        RETURN;
    END
    IF EXISTS (SELECT 1 FROM Instructor WHERE Phone = @Phone)
    BEGIN
        PRINT 'Error: Phone number already exists.';
        RETURN;
    END
    INSERT INTO Instructor (Instructor_Id, Instructor_Name, Instructor_Salary, Phone)
    VALUES (@Instructor_Id, @Instructor_Name, @Instructor_Salary, @Phone);
    PRINT 'Instructor inserted successfully.';
END;



----------------------------InsertTrack----------------------------

CREATE PROCEDURE InsertTrack
    @Track_Id INT,
    @Track_Name VARCHAR(50),
    @Manager_Id INT
AS
BEGIN
    SET NOCOUNT ON;
    IF EXISTS (SELECT 1 FROM Track WHERE Track_Id = @Track_Id)
    BEGIN
        PRINT 'Error: Track_Id already exists.';
        RETURN;
    END
    INSERT INTO Track (Track_Id, Track_Name, Manager_Id)
    VALUES (@Track_Id, @Track_Name, @Manager_Id);
    PRINT 'Track inserted successfully.';
END;


----------------------------InsertCourse----------------------------

CREATE PROCEDURE InsertCourse
    @Course_Id INT,
    @Course_Name VARCHAR(50),
    @Min_Degree INT,
    @Description TEXT
AS
BEGIN
    SET NOCOUNT ON;
    IF EXISTS (SELECT 1 FROM Course WHERE Course_Id = @Course_Id)
    BEGIN
        PRINT 'Error: Course_Id already exists.';
        RETURN;
    END
    INSERT INTO Course (Course_Id, Course_Name, Min_Degree, Description)
    VALUES (@Course_Id, @Course_Name, @Min_Degree, @Description);
    PRINT 'Course inserted successfully.';
END;

----------------------------InsertStudent----------------------------

CREATE PROCEDURE InsertStudent
    @Student_Id INT,
    @Stud_Fname VARCHAR(50),
    @Stud_Lname VARCHAR(50),
    @Student_Age INT,
    @Email VARCHAR(100),
    @Track_Id INT
AS
BEGIN
    SET NOCOUNT ON;
    IF EXISTS (SELECT 1 FROM Student WHERE Student_Id = @Student_Id)
    BEGIN
        PRINT 'Error: Student_Id already exists.';
        RETURN;
    END
    IF EXISTS (SELECT 1 FROM Student WHERE Email = @Email)
    BEGIN
        PRINT 'Error: Email already exists.';
        RETURN;
    END
    INSERT INTO Student (Student_Id, Stud_Fname, Stud_Lname, Student_Age, Email, Track_Id)
    VALUES (@Student_Id, @Stud_Fname, @Stud_Lname, @Student_Age, @Email, @Track_Id);
    PRINT 'Student inserted successfully.';
END;

----------------------------InsertExam----------------------------

CREATE PROCEDURE InsertExam
    @Exam_Id INT,
    @Exam_Type VARCHAR(50),
    @Exam_Date DATE,
    @Course_Id INT
AS
BEGIN
    SET NOCOUNT ON;
    IF EXISTS (SELECT 1 FROM Exam WHERE Exam_Id = @Exam_Id)
    BEGIN
        PRINT 'Error: Exam_Id already exists.';
        RETURN;
    END
    INSERT INTO Exam (Exam_Id, Exam_Type, Exam_Date, Course_Id)
    VALUES (@Exam_Id, @Exam_Type, @Exam_Date, @Course_Id);
    PRINT 'Exam inserted successfully.';
END;

----------------------------InsertQuestion----------------------------

CREATE PROCEDURE InsertQuestion
    @Question_Id INT,
    @Question_Type VARCHAR(50),
    @Question_Text TEXT,
    @Course_Id INT
AS
BEGIN
    SET NOCOUNT ON;
    IF EXISTS (SELECT 1 FROM Question WHERE Question_Id = @Question_Id)
    BEGIN
        PRINT 'Error: Question_Id already exists.';
        RETURN;
    END
    INSERT INTO Question (Question_Id, Question_Type, Question_Text, Course_Id)
    VALUES (@Question_Id, @Question_Type, @Question_Text, @Course_Id);
    PRINT 'Question inserted successfully.';
END;


----------------------------InsertOption----------------------------

CREATE PROCEDURE InsertOption
    @Option_Id INT,
    @Option_Text TEXT,
    @Is_Correct BIT,
    @Question_Id INT
AS
BEGIN
    SET NOCOUNT ON;
    IF EXISTS (SELECT 1 FROM Option_Table WHERE Option_Id = @Option_Id)
    BEGIN
        PRINT 'Error: Option_Id already exists.';
        RETURN;
    END
    INSERT INTO Option_Table (Option_Id, Option_Text, Is_Correct, Question_Id)
    VALUES (@Option_Id, @Option_Text, @Is_Correct, @Question_Id);
    PRINT 'Option inserted successfully.';
END;

----------------------------InsertBranchTrack----------------------------

CREATE PROCEDURE InsertBranchTrack
    @Branch_Id INT,
    @Track_Id INT,
    @Intake INT
AS
BEGIN
    SET NOCOUNT ON;
    INSERT INTO Branch_Track (Branch_Id, Track_Id, Intake)
    VALUES (@Branch_Id, @Track_Id, @Intake);
    PRINT 'Branch_Track inserted successfully.';
END;

----------------------------InsertTrackCourse----------------------------

CREATE PROCEDURE InsertTrackCourse
    @Track_Id INT,
    @Course_Id INT
AS
BEGIN
    SET NOCOUNT ON;
    INSERT INTO Track_Course (Track_Id, Course_Id)
    VALUES (@Track_Id, @Course_Id);
    PRINT 'Track_Course inserted successfully.';
END;

----------------------------InsertStudentCourse----------------------------
CREATE PROCEDURE InsertStudentCourse
    @Student_Id INT,
    @Course_Id INT,
    @Score DECIMAL(5,2)
AS
BEGIN
    SET NOCOUNT ON;
    INSERT INTO Student_Course (Student_Id, Course_Id, Score)
    VALUES (@Student_Id, @Course_Id, @Score);
    PRINT 'Student_Course inserted successfully.';
END;

----------------------------InsertStudentExamQuestion----------------------------

CREATE PROCEDURE InsertStudentExamQuestion
    @Exam_Id INT,
    @Student_Id INT,
    @Question_Id INT,
    @Answer TEXT
AS
BEGIN
    SET NOCOUNT ON;
    INSERT INTO Student_Exam_Question (Exam_Id, Student_Id, Question_Id, Answer)
    VALUES (@Exam_Id, @Student_Id, @Question_Id, @Answer);
    PRINT 'Student_Exam_Question inserted successfully.';
END;


----------------------------InsertExamQuestion----------------------------

CREATE PROCEDURE InsertExamQuestion
    @Exam_Id INT,
    @Option_Id INT
AS
BEGIN
    SET NOCOUNT ON;
    INSERT INTO Exam_Question (Exam_Id, Option_Id)
    VALUES (@Exam_Id, @Option_Id);
    PRINT 'Exam_Question inserted successfully.';
END;