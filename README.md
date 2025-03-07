# Online Examination System

## 📌 Project Overview
The **Online Examination System** is an automated system designed to facilitate online exams, manage student records, and generate reports. The project is built using **SQL Server** and provides essential functionalities such as exam creation, student answers storage, and automated exam correction.

## 🏗️ Database Design
- The system consists of **13 tables** for efficient data management.
- **Entity-Relationship Diagram (ERD)**:  
  ![ERD](https://github.com/YousryEssam/ExaminationSystem/blob/main/Diagrams/Flowchart%20-%20ERD.jpg)
- **System Flowchart Mapping**:  
  ![Mapping](https://github.com/YousryEssam/ExaminationSystem/blob/main/Diagrams/Flowchart%20-%20Mapping.jpg)

## 🛠️ Features
- **Stored Procedures**:
  - CRUD operations: Select, Insert, Update, and Delete.
  - **Exam Management**: Generate exams dynamically.
  - **Exam Answers Handling**: Store and retrieve student responses.
  - **Exam Correction**: Automated evaluation of student answers.

## 📊 Reports & Procedures
The system includes several **stored procedures** and **views** to assist ITI staff in monitoring student performance and managing exams.

### 🔹 Stored Procedures:
#### 📌 Selection & Reports:
- `Show_Track_Students`: Retrieves students in a specific track.
- `Show_Track_Students_At_Branch`: Retrieves students in a track at a specific branch.
- `Show_Student_Grades`: Retrieves student grades across all courses.
- `Course_Topics`: Lists topics covered in a specific course.
- `Number_Of_Questions_In_Exam`: Returns the number of questions in an exam.
- `Student_Exam_Answers`: Shows a student's answers in a specific exam.
- `CheckStudentAnswer`: Verifies the correctness of a student's answer.

#### 📝 Exam Management:
- `CreateExam`:  
  - Generates a new exam for a student based on the selected course.
  - Selects random questions and assigns them to the exam.
  - Links the exam with the student in the `Student_Exam_Question` table.

- `CheckStudentAnswer`:  
  - This stored procedure, CheckStudentAnswer, is used to evaluate and record a student's answer to an exam question.
  - Automatically updates student scores upon correct answers.



#### 🔹 Insert Procedures:
- `InsertBranch`: Adds a new branch to the system.
- `InsertInstructor`: Adds a new instructor and ensures unique phone numbers.
- `InsertTrack`: Adds a new track with a manager.
- `InsertCourse`: Adds a new course with a description and minimum degree.
- `InsertStudent`: Adds a new student with unique email verification.
- `InsertExam`: Adds a new exam to the system.
- `InsertQuestion`: Inserts a new question for a course.
- `InsertOption`: Adds an answer option for a question.
- `InsertBranchTrack`: Links a branch with a track.
- `InsertTrackCourse`: Assigns a course to a track.
- `InsertStudentCourse`: Enrolls a student in a course.
- `InsertStudentExamQuestion`: Records a student's exam question and answer.
- `InsertExamQuestion`: Links a question with an exam.

#### 🗑️ Delete Procedures:
- `DeleteBranch`: Deletes a branch by its ID.
- `DeleteInstructor`: Deletes an instructor by their ID.
- `DeleteTrack`: Deletes a track by its ID.
- `DeleteCourse`: Deletes a course by its ID.
- `DeleteStudent`: Deletes a student by their ID.
- `DeleteExam`: Deletes an exam by its ID.
- `DeleteQuestion`: Deletes a question by its ID.
- `DeleteOption`: Deletes an option from `Option_Table` by its ID.
- `DeleteBranchTrack`: Deletes a track from a branch.
- `DeleteTrackCourse`: Deletes a course from a track.
- `DeleteStudentCourse`: Removes a student from a course.
- `DeleteStudentExamQuestion`: Deletes a student’s exam question record.
- `DeleteExamQuestion`: Deletes a question from an exam.

### 🔹 Helper Functions:
- `GetQuestionOptions(@Question_Id INT)`:  
  - Returns a list of available answer options for a specific question.

### 🔹 Views:
- `Passed_Students`: Displays students who have passed their exams.
- `Failed_Students`: Displays students who have failed.
- `Tracks_Managers`: Lists managers responsible for different tracks.
- `Student_Total_Courses`: Shows the total courses a student is enrolled in.

## 👥 Contributors
- **Yousry Essam** - [GitHub Profile](https://github.com/YousryEssam)
- **Santy Osam** - [GitHub Profile](https://github.com/SantyOsama)

## 📂 Repository
[🔗 GitHub Repository](https://github.com/YousryEssam/ExaminationSystem)
