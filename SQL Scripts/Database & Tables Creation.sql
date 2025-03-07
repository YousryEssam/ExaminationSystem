CREATE DATABASE YOUSRY_SANTY_Examination_System;
USE YOUSRY_SANTY_Examination_System;


-- Table Creation
CREATE TABLE Branch (
    Branch_Id INT PRIMARY KEY,
    Branch_Name NVARCHAR(50) NOT NULL,
    Branch_Address NVARCHAR(100) NOT NULL,
    Branch_Phone NVARCHAR(15)
);


CREATE TABLE Instructor (
    Instructor_Id INT PRIMARY KEY,
    Instructor_Name VARCHAR(50) NOT NULL,
    Instructor_Salary DECIMAL(10,2) CHECK (Instructor_Salary >= 0),
    Phone VARCHAR(15) UNIQUE
);


CREATE TABLE Track (
    Track_Id INT PRIMARY KEY,
    Track_Name VARCHAR(50) NOT NULL,
    Manager_Id INT , 
	FOREIGN KEY (Manager_Id) REFERENCES Instructor(Instructor_Id)
);


CREATE TABLE Course (
    Course_Id INT PRIMARY KEY,
    Course_Name VARCHAR(50) NOT NULL,
    Min_Degree INT CHECK (Min_Degree >= 0),
    Description TEXT
);



CREATE TABLE Student (
    Student_Id INT PRIMARY KEY,
    Stud_Fname VARCHAR(50) NOT NULL,
    Stud_Lname VARCHAR(50) NOT NULL,
    Student_Age INT CHECK (Student_Age > 0),
    Email VARCHAR(100) UNIQUE,
    Track_Id INT,
    FOREIGN KEY (Track_Id) REFERENCES Track(Track_Id)
);


CREATE TABLE Exam (
    Exam_Id INT PRIMARY KEY,
    Exam_Type VARCHAR(50) NOT NULL,
    Exam_Date DATE DEFAULT GETDATE(),
    Course_Id INT,
    FOREIGN KEY (Course_Id) REFERENCES Course(Course_Id)
);


CREATE TABLE Question (
    Question_Id INT PRIMARY KEY,
    Question_Type VARCHAR(50) NOT NULL CHECK (Question_Type IN ('MCQ', 'MMCQ',�'T/F')),
    Question_Text TEXT NOT NULL,
    Course_Id INT,
    FOREIGN KEY (Course_Id) REFERENCES Course(Course_Id)
);



CREATE TABLE Option_Table (
    Option_Id INT PRIMARY KEY,
    Option_Text TEXT NOT NULL,
    Is_Correct BIT NOT NULL,
    Question_Id INT,
    FOREIGN KEY (Question_Id) REFERENCES Question(Question_Id)
);

CREATE TABLE Branch_Track (
    Branch_Id INT,
    Track_Id INT,
    Intake INT,
    PRIMARY KEY (Branch_Id, Track_Id , Intake),
    FOREIGN KEY (Branch_Id) REFERENCES Branch(Branch_Id),
    FOREIGN KEY (Track_Id) REFERENCES Track(Track_Id)
);


CREATE TABLE Track_Course (
    Track_Id INT,
    Course_Id INT,
    PRIMARY KEY (Track_Id, Course_Id),
    FOREIGN KEY (Track_Id) REFERENCES Track(Track_Id),
    FOREIGN KEY (Course_Id) REFERENCES Course(Course_Id)
);


CREATE TABLE Student_Course (
    Student_Id INT,
    Course_Id INT,
	Score DECIMAL(5,2) CHECK (Score BETWEEN 0 AND 100)
    PRIMARY KEY (Student_Id, Course_Id),
    FOREIGN KEY (Student_Id) REFERENCES Student(Student_Id),
    FOREIGN KEY (Course_Id) REFERENCES Course(Course_Id)
);


CREATE TABLE Student_Exam_Question (
    Exam_Id INT,
    Student_Id INT,
    Question_Id INT,
    Answer TEXT NOT NULL,
    PRIMARY KEY (Exam_Id, Student_Id, Question_Id),
    FOREIGN KEY (Exam_Id) REFERENCES Exam(Exam_Id),
    FOREIGN KEY (Student_Id) REFERENCES Student(Student_Id),
    FOREIGN KEY (Question_Id) REFERENCES Question(Question_Id)
);

CREATE TABLE Exam_Question (
    Exam_Id INT,
    Option_Id INT,
    PRIMARY KEY (Exam_Id, Option_Id),
    FOREIGN KEY (Exam_Id) REFERENCES Exam(Exam_Id),
    FOREIGN KEY (Option_Id) REFERENCES Option_Table(Option_Id)
);