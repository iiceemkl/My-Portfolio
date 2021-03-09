/*Question 1*/
Use ICT_Tutorial_Assignment1;
select Student_ID,
	   Student_FirstName+' '+Student_LastName as [Name],
	   Year(getdate())-Year(Student_Birthday) as age,
	   Student_Email
from Student
where CharIndex('gmail',[Student_Email]) > 0
go

/*Question 2*/
DECLARE @MyAge INT;
SET @MyAge = 20;
select Student_FirstName+ ' '+Student_LastName as [Name],
		Year(getdate())-Year(Student_Birthday) as age
from Student
where Year(getdate())-Year(Student_Birthday) > @MyAge
go

/*Question 3*/
select s.Student_FirstName + ' ' + s.Student_LastName as [Name],
	   s.Student_Email,
       s.Student_Phone
from Student s LEFT JOIN Payment p
on s.Student_ID = p.Student_ID
where p.Transaction_ID IS NULL;

/*Question 4*/
select s.Student_ID, 
	   pr.Exam_ID,
	   s.Student_FirstName + ' ' + s.Student_LastName as [Name],
	   e.Score
from Student s JOIN PracticeExam pr on s.Student_ID = pr.Student_ID JOIN ExamScore e on pr.Exam_ID = e.Exam_ID;

/*Question 5*/
select top 1 s.Student_FirstName + ' ' + s.Student_LastName as [Name],
		     es.Score
from Student s JOIN PracticeExam pr on s.Student_ID = pr.Student_ID JOIN ExamScore es on pr.Exam_ID = es.Exam_ID
Order by es.Score DESC;

/*Question 6*/
select top 1 i.Instructor_FirstName + ' ' + i.Instructor_LastName as [Instructor_FullName],
			 c.Course_Amount
from Instructor i JOIN Course c on i.Instructor_ID = c.Instuctor_ID
Order by c.Course_Amount DESC;

/*Question 7*/
select top 5 s.Student_FirstName + ' ' + s.Student_LastName as [Name],
			 c.Course_Amount
from Student s JOIN EnrollCourse ec on s.Student_ID = ec.Student_ID JOIN Course c on ec.Course_ID = c.Course_ID
Order by c.Course_Amount DESC;

/*Question 8*/
select c.Course_ID, 
	   ev.Course_ID
from Course c LEFT JOIN ElearningVideo ev on c.Course_ID = ev.Course_ID
where ev.Course_ID IS NULL;