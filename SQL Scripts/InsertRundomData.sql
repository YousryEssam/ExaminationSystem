--Insert Rundom Data 


-- InsertBranch

EXEC InsertBranch @Branch_Id = 1, @Branch_Name = 'ITI Assiut', @Branch_Address = 'Assiut University, Assiut, Egypt', @Branch_Phone = '0881234567';

EXEC InsertBranch @Branch_Id = 2, @Branch_Name = 'ITI Cairo', @Branch_Address = 'Smart Village, Giza, Egypt', @Branch_Phone = '0221234567';

EXEC InsertBranch @Branch_Id = 3, @Branch_Name = 'ITI Alexandria', @Branch_Address = 'Borg El Arab, Alexandria, Egypt', @Branch_Phone = '0345678912';

EXEC InsertBranch @Branch_Id = 4, @Branch_Name = 'ITI Mansoura', @Branch_Address = 'Mansoura University, Mansoura, Egypt', @Branch_Phone = '0507891234';

EXEC InsertBranch @Branch_Id = 5, @Branch_Name = 'ITI Ismailia', @Branch_Address = 'Technology Valley, Ismailia, Egypt', @Branch_Phone = '0645678901';

EXEC InsertBranch @Branch_Id = 6, @Branch_Name = 'ITI Minya', @Branch_Address = 'Minya University, Minya, Egypt', @Branch_Phone = '0862345678';

EXEC InsertBranch @Branch_Id = 7, @Branch_Name = 'ITI Sohag', @Branch_Address = 'Sohag University, Sohag, Egypt', @Branch_Phone = '0931234567';

EXEC InsertBranch @Branch_Id = 8, @Branch_Name = 'ITI Qena', @Branch_Address = 'South Valley University, Qena, Egypt', @Branch_Phone = '0965678912';

EXEC InsertBranch @Branch_Id = 9, @Branch_Name = 'ITI Aswan', @Branch_Address = 'Aswan University, Aswan, Egypt', @Branch_Phone = '0977891234';

EXEC InsertBranch @Branch_Id = 10, @Branch_Name = 'ITI Zagazig', @Branch_Address = 'Zagazig University, Zagazig, Egypt', @Branch_Phone = '0554567890';


--InsertInstructor

EXEC InsertInstructor @Instructor_Id = 1, @Instructor_Name = 'Ahmed Mamdouh', @Instructor_Salary = 100000.00, @Phone = '01012345678';

EXEC InsertInstructor @Instructor_Id = 2, @Instructor_Name = 'Mohamed Ali', @Instructor_Salary = 22000.00, @Phone = '01023456789';

EXEC InsertInstructor @Instructor_Id = 3, @Instructor_Name = 'Yasmine Adel', @Instructor_Salary = 28000.00, @Phone = '01034567890';

EXEC InsertInstructor @Instructor_Id = 4, @Instructor_Name = 'Khaled Samir', @Instructor_Salary = 20000.00, @Phone = '01145678901';

EXEC InsertInstructor @Instructor_Id = 5, @Instructor_Name = 'Sara Mahmoud', @Instructor_Salary = 30000.00, @Phone = '01256789012';

EXEC InsertInstructor @Instructor_Id = 6, @Instructor_Name = 'Mostafa Nabil', @Instructor_Salary = 24000.00, @Phone = '01167890123';

EXEC InsertInstructor @Instructor_Id = 7, @Instructor_Name = 'Hala Ibrahim', @Instructor_Salary = 26000.00, @Phone = '01078901234';

EXEC InsertInstructor @Instructor_Id = 8, @Instructor_Name = 'Osama Saeed', @Instructor_Salary = 23000.00, @Phone = '01289012345';

EXEC InsertInstructor @Instructor_Id = 9, @Instructor_Name = 'Manal Tawfik', @Instructor_Salary = 29000.00, @Phone = '01190123456';

EXEC InsertInstructor @Instructor_Id = 10, @Instructor_Name = 'Tarek Fouad', @Instructor_Salary = 21000.00, @Phone = '01001234567';


-- InsertTrack
EXEC InsertTrack @Track_Id = 1, @Track_Name = 'Full Stack .NET', @Manager_Id = 1;

EXEC InsertTrack @Track_Id = 2, @Track_Name = 'Full Stack Java', @Manager_Id = 2;

EXEC InsertTrack @Track_Id = 3, @Track_Name = 'Full Stack Python', @Manager_Id = 3;

EXEC InsertTrack @Track_Id = 4, @Track_Name = 'Mobile Development', @Manager_Id = 4;

EXEC InsertTrack @Track_Id = 5, @Track_Name = 'Artificial Intelligence', @Manager_Id = 5;

EXEC InsertTrack @Track_Id = 6, @Track_Name = 'Embedded Systems', @Manager_Id = 6;

EXEC InsertTrack @Track_Id = 7, @Track_Name = 'Cybersecurity', @Manager_Id = 7;

EXEC InsertTrack @Track_Id = 8, @Track_Name = 'Business Intelligence', @Manager_Id = 8;

EXEC InsertTrack @Track_Id = 9, @Track_Name = 'Game Development', @Manager_Id = 9;

EXEC InsertTrack @Track_Id = 10, @Track_Name = 'Cloud Computing', @Manager_Id = 10;


--InsertCourse

EXEC InsertCourse @Course_Id = 1, @Course_Name = 'Object-Oriented Programming', @Min_Degree = 50, @Description = 'Introduction to OOP principles using Java and C#';

EXEC InsertCourse @Course_Id = 2, @Course_Name = 'Data Structures & Algorithms', @Min_Degree = 60, @Description = 'Fundamental data structures and algorithmic problem-solving techniques';

EXEC InsertCourse @Course_Id = 3, @Course_Name = 'Database Management Systems', @Min_Degree = 55, @Description = 'Introduction to relational databases, SQL, and NoSQL databases';

EXEC InsertCourse @Course_Id = 4, @Course_Name = 'Web Development Fundamentals', @Min_Degree = 50, @Description = 'HTML, CSS, JavaScript, and front-end development best practices';

EXEC InsertCourse @Course_Id = 5, @Course_Name = 'Backend Development with .NET', @Min_Degree = 65, @Description = 'Building scalable backend systems using ASP.NET Core and C#';

EXEC InsertCourse @Course_Id = 6, @Course_Name = 'Machine Learning Basics', @Min_Degree = 70, @Description = 'Supervised and unsupervised learning techniques using Python';

EXEC InsertCourse @Course_Id = 7, @Course_Name = 'Cybersecurity Essentials', @Min_Degree = 60, @Description = 'Principles of cybersecurity, network security, and ethical hacking';

EXEC InsertCourse @Course_Id = 8, @Course_Name = 'Mobile App Development', @Min_Degree = 55, @Description = 'Developing Android and iOS applications using Flutter and Kotlin';

EXEC InsertCourse @Course_Id = 9, @Course_Name = 'Cloud Computing & DevOps', @Min_Degree = 65, @Description = 'AWS, Azure, containerization, and CI/CD pipelines';

EXEC InsertCourse @Course_Id = 10, @Course_Name = 'Game Development with Unity', @Min_Degree = 50, @Description = 'Building interactive 2D and 3D games using Unity and C#';


--InsertStudent

EXEC InsertStudent @Student_Id = 1, @Stud_Fname = 'Yousry', @Stud_Lname = 'Essam', @Student_Age = 23, @Email = 'Yousry.essam@example.com', @Track_Id = 1;

EXEC InsertStudent @Student_Id = 2, @Stud_Fname = 'Santy', @Stud_Lname = 'Osama', @Student_Age = 22, @Email = 'santy.osama@example.com', @Track_Id = 2;

EXEC InsertStudent @Student_Id = 3, @Stud_Fname = 'Omar', @Stud_Lname = 'Ali', @Student_Age = 25, @Email = 'omar.ali@example.com', @Track_Id = 3;

EXEC InsertStudent @Student_Id = 4, @Stud_Fname = 'Sara', @Stud_Lname = 'Mahmoud', @Student_Age = 22, @Email = 'sara.mahmoud@example.com', @Track_Id = 4;

EXEC InsertStudent @Student_Id = 5, @Stud_Fname = 'Mostafa', @Stud_Lname = 'Nabil', @Student_Age = 26, @Email = 'mostafa.nabil@example.com', @Track_Id = 5;

EXEC InsertStudent @Student_Id = 6, @Stud_Fname = 'Hala', @Stud_Lname = 'Ibrahim', @Student_Age = 24, @Email = 'hala.ibrahim@example.com', @Track_Id = 6;

EXEC InsertStudent @Student_Id = 7, @Stud_Fname = 'Osama', @Stud_Lname = 'Saeed', @Student_Age = 25, @Email = 'osama.saeed@example.com', @Track_Id = 7;

EXEC InsertStudent @Student_Id = 8, @Stud_Fname = 'Manal', @Stud_Lname = 'Tawfik', @Student_Age = 23, @Email = 'manal.tawfik@example.com', @Track_Id = 8;

EXEC InsertStudent @Student_Id = 9, @Stud_Fname = 'Tarek', @Stud_Lname = 'Fouad', @Student_Age = 27, @Email = 'tarek.fouad@example.com', @Track_Id = 9;

EXEC InsertStudent @Student_Id = 10, @Stud_Fname = 'Nour', @Stud_Lname = 'Adel', @Student_Age = 22, @Email = 'nour.adel@example.com', @Track_Id = 10;



-- InsertQuestion

-- MCQ Question
EXEC InsertQuestion @Question_Id = 1, @Question_Type = 'MCQ', @Question_Text = 'What is the time complexity of binary search?', @Course_Id = 2;
EXEC InsertQuestion @Question_Id = 4, @Question_Type = 'MCQ', @Question_Text = 'Which SQL JOIN returns only matching rows in both tables?', @Course_Id = 3;
EXEC InsertQuestion @Question_Id = 7, @Question_Type = 'MCQ', @Question_Text = 'Which HTML element is used to define important text?', @Course_Id = 4;


-- MMCQ Question
EXEC InsertQuestion @Question_Id = 2, @Question_Type = 'MMCQ', @Question_Text = 'Which of the following are programming paradigms?', @Course_Id = 1;
EXEC InsertQuestion @Question_Id = 5, @Question_Type = 'MMCQ', @Question_Text = 'Which of the following are features of Object-Oriented Programming?', @Course_Id = 1;
EXEC InsertQuestion @Question_Id = 8, @Question_Type = 'MMCQ', @Question_Text = 'Which of the following are cloud computing services?', @Course_Id = 9;

-- T/F Question
EXEC InsertQuestion @Question_Id = 3, @Question_Type = 'T/F', @Question_Text = 'Python is a statically typed language.', @Course_Id = 3;
EXEC InsertQuestion @Question_Id = 6, @Question_Type = 'T/F', @Question_Text = 'C# is an interpreted language.', @Course_Id = 5;
EXEC InsertQuestion @Question_Id = 9, @Question_Type = 'T/F', @Question_Text = 'Unity uses Java as its primary scripting language.', @Course_Id = 10;







-- InsertOption
EXEC InsertOption @Option_Id = 1, @Option_Text = 'O(n)', @Is_Correct = 0, @Question_Id = 1;
EXEC InsertOption @Option_Id = 2, @Option_Text = 'O(log n)', @Is_Correct = 1, @Question_Id = 1;
EXEC InsertOption @Option_Id = 3, @Option_Text = 'O(n log n)', @Is_Correct = 0, @Question_Id = 1;
EXEC InsertOption @Option_Id = 4, @Option_Text = 'O(1)', @Is_Correct = 0, @Question_Id = 1;
EXEC InsertOption @Option_Id = 11, @Option_Text = 'INNER JOIN', @Is_Correct = 1, @Question_Id = 4;
EXEC InsertOption @Option_Id = 12, @Option_Text = 'LEFT JOIN', @Is_Correct = 0, @Question_Id = 4;
EXEC InsertOption @Option_Id = 13, @Option_Text = 'RIGHT JOIN', @Is_Correct = 0, @Question_Id = 4;
EXEC InsertOption @Option_Id = 14, @Option_Text = 'FULL JOIN', @Is_Correct = 0, @Question_Id = 4;
EXEC InsertOption @Option_Id = 21, @Option_Text = '<strong>', @Is_Correct = 1, @Question_Id = 7;
EXEC InsertOption @Option_Id = 22, @Option_Text = '<em>', @Is_Correct = 0, @Question_Id = 7;
EXEC InsertOption @Option_Id = 23, @Option_Text = '<mark>', @Is_Correct = 0, @Question_Id = 7;
EXEC InsertOption @Option_Id = 24, @Option_Text = '<b>', @Is_Correct = 0, @Question_Id = 7;



EXEC InsertOption @Option_Id = 5, @Option_Text = 'Object-Oriented Programming', @Is_Correct = 1, @Question_Id = 2;
EXEC InsertOption @Option_Id = 6, @Option_Text = 'Functional Programming', @Is_Correct = 1, @Question_Id = 2;
EXEC InsertOption @Option_Id = 7, @Option_Text = 'Linear Programming', @Is_Correct = 0, @Question_Id = 2;
EXEC InsertOption @Option_Id = 8, @Option_Text = 'Procedural Programming', @Is_Correct = 1, @Question_Id = 2;
EXEC InsertOption @Option_Id = 15, @Option_Text = 'Encapsulation', @Is_Correct = 1, @Question_Id = 5;
EXEC InsertOption @Option_Id = 16, @Option_Text = 'Polymorphism', @Is_Correct = 1, @Question_Id = 5;
EXEC InsertOption @Option_Id = 17, @Option_Text = 'Recursion', @Is_Correct = 0, @Question_Id = 5;
EXEC InsertOption @Option_Id = 18, @Option_Text = 'Inheritance', @Is_Correct = 1, @Question_Id = 5;
EXEC InsertOption @Option_Id = 25, @Option_Text = 'IaaS', @Is_Correct = 1, @Question_Id = 8;
EXEC InsertOption @Option_Id = 26, @Option_Text = 'PaaS', @Is_Correct = 1, @Question_Id = 8;
EXEC InsertOption @Option_Id = 27, @Option_Text = 'SaaS', @Is_Correct = 1, @Question_Id = 8;
EXEC InsertOption @Option_Id = 28, @Option_Text = 'BIaaS', @Is_Correct = 0, @Question_Id = 8;


EXEC InsertOption @Option_Id = 9, @Option_Text = 'True', @Is_Correct = 0, @Question_Id = 3;
EXEC InsertOption @Option_Id = 10, @Option_Text = 'False', @Is_Correct = 1, @Question_Id = 3;
EXEC InsertOption @Option_Id = 19, @Option_Text = 'True', @Is_Correct = 0, @Question_Id = 6;
EXEC InsertOption @Option_Id = 20, @Option_Text = 'False', @Is_Correct = 1, @Question_Id = 6;
EXEC InsertOption @Option_Id = 29, @Option_Text = 'True', @Is_Correct = 0, @Question_Id = 9;
EXEC InsertOption @Option_Id = 30, @Option_Text = 'False', @Is_Correct = 1, @Question_Id = 9;


--InsertBranchTrack
EXEC InsertBranchTrack @Branch_Id = 1, @Track_Id = 1, @Intake = 45;
EXEC InsertBranchTrack @Branch_Id = 2, @Track_Id = 2, @Intake = 45;
EXEC InsertBranchTrack @Branch_Id = 3, @Track_Id = 3, @Intake = 45;
EXEC InsertBranchTrack @Branch_Id = 4, @Track_Id = 4, @Intake = 45;
EXEC InsertBranchTrack @Branch_Id = 5, @Track_Id = 5, @Intake = 45;
EXEC InsertBranchTrack @Branch_Id = 1, @Track_Id = 2, @Intake = 44;
EXEC InsertBranchTrack @Branch_Id = 2, @Track_Id = 1, @Intake = 44;
EXEC InsertBranchTrack @Branch_Id = 3, @Track_Id = 4, @Intake = 44;
EXEC InsertBranchTrack @Branch_Id = 4, @Track_Id = 3, @Intake = 43;
EXEC InsertBranchTrack @Branch_Id = 5, @Track_Id = 6, @Intake = 41;



--- InsertTrackCourse
EXEC InsertTrackCourse @Track_Id = 1, @Course_Id = 1;
EXEC InsertTrackCourse @Track_Id = 1, @Course_Id = 2;
EXEC InsertTrackCourse @Track_Id = 2, @Course_Id = 3;
EXEC InsertTrackCourse @Track_Id = 2, @Course_Id = 4;
EXEC InsertTrackCourse @Track_Id = 3, @Course_Id = 5;
EXEC InsertTrackCourse @Track_Id = 3, @Course_Id = 6;
EXEC InsertTrackCourse @Track_Id = 4, @Course_Id = 7;
EXEC InsertTrackCourse @Track_Id = 4, @Course_Id = 8;
EXEC InsertTrackCourse @Track_Id = 5, @Course_Id = 9;
EXEC InsertTrackCourse @Track_Id = 5, @Course_Id = 10;
EXEC InsertTrackCourse @Track_Id = 6, @Course_Id = 11;
EXEC InsertTrackCourse @Track_Id = 6, @Course_Id = 12;
EXEC InsertTrackCourse @Track_Id = 7, @Course_Id = 13;
EXEC InsertTrackCourse @Track_Id = 7, @Course_Id = 14;
EXEC InsertTrackCourse @Track_Id = 8, @Course_Id = 15;
EXEC InsertTrackCourse @Track_Id = 8, @Course_Id = 16;


-- InsertStudentCourse
EXEC InsertStudentCourse 1, 1, 0;
EXEC InsertStudentCourse 1, 3, 0;
EXEC InsertStudentCourse 2, 3, 0;
EXEC InsertStudentCourse 3, 4, 0;
EXEC InsertStudentCourse 4, 5, 0;
EXEC InsertStudentCourse 5, 2, 0;


