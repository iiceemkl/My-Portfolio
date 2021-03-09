CREATE DATABASE ICT_Tutorial_Assignment1;

CREATE TABLE Student(
	Student_ID int NOT NULL PRIMARY KEY,
	Student_FirstName varchar(100),
	Student_LastName varchar(100),
	Student_Address varchar(100),
	Student_Birthday date,
	Student_Email varchar(100),
	Student_Phone nchar(10),
	Student_UserID varchar(100),
	Student_Password varchar(100)
);

CREATE TABLE Instructor(
	Instructor_ID int NOT NULL PRIMARY KEY,
	Instructor_FirstName varchar(100),
	Instructor_LastName varchar(100),
	Instructor_Address varchar(100),
	Instructor_Birthday date,
	Instructor_Email varchar(100),
	Instructor_Phone varchar(10),
	Instructor_UserID varchar(100),
	Instructor_Password varchar(100)
);

CREATE TABLE Course(
	Course_ID int NOT NULL PRIMARY KEY,
	Course_Name varchar(100),
	Course_Amount int,
	Instructor_ID int FOREIGN KEY REFERENCES Instructor(Instructor_ID)
);

CREATE TABLE BookStocking(
	Book_ID int NOT NULL PRIMARY KEY,
	BookName varchar(100),
	Author varchar(100),
	Remaining int,
	Price int,
	Course_ID int FOREIGN KEY REFERENCES Course(Course_ID)
);

CREATE TABLE ElearningVideo(
	Lesson varchar(100),
	Details varchar(100),
	Course_ID int FOREIGN KEY REFERENCES Course(Course_ID)
);

CREATE TABLE Seat(
	Seat_ID int NOT NULL PRIMARY KEY, 
	SeatRow int,
	Number int,
	Course_ID int FOREIGN KEY REFERENCES Course(Course_ID),
	Student_ID int FOREIGN KEY REFERENCES Student(Student_ID)
);

CREATE TABLE EnrollCourse(
	Student_ID int FOREIGN KEY REFERENCES Student(Student_ID),
	Course_ID int FOREIGN KEY REFERENCES Course(Course_ID)
);

CREATE TABLE Transaction_Table(
	Transaction_ID int NOT NULL PRIMARY KEY,
	Amount int
);

CREATE TABLE Payment(
	Student_ID int FOREIGN KEY REFERENCES Student(Student_ID),
	Transaction_ID int FOREIGN KEY REFERENCES Transaction_Table(Transaction_ID)
);

CREATE TABLE ExamScore(
	Exam_ID int NOT NULL PRIMARY KEY,
	Score int
);

CREATE TABLE PracticeExam(
	Student_ID int FOREIGN KEY REFERENCES Student(Student_ID),
	Exam_ID int FOREIGN KEY REFERENCES ExamScore(Exam_ID)
);

CREATE TABLE CheckAttendence(
	Student_ID int FOREIGN KEY REFERENCES Student(Student_ID),
	Attend_Week int,
	Attend_Day Date,
	Attend_Status varchar(100)
);
