USE ICT_Tutorial_Assignment1;

-- Lab04 SQL submission 
-- Date: 02/09/2021
-- Name: Mangkhales Ngamjaruskotchakorn
-- ID: 6188055 Section: 1
-- Question 1 How many students who live in Bangkok?
SELECT Count(Distinct [Student_Address]) as Who_Live_in_BKK
FROM Student
WHERE CharIndex('Bangkok', [Student_Address]) > 0


-- Question 2 How many students who was born in Summer? During April to July
SELECT Count(*) as Summer_child
FROM Student
WHERE MONTH(Student_Birthday) IN (4,5,6,7);


-- Question 3 How many courses assinged for each Instructor?
SELECT COUNT(c.Course_ID) as Cnt_Courses,
	   i.Instructor_FirstName + ' ' + i.Instructor_LastName as Instructor_name
FROM Instructor i 
INNER JOIN Course c
ON i.Instructor_ID = c.Instructor_ID
GROUP BY i.Instructor_FirstName + ' ' + i.Instructor_LastName;


-- Question 4 What is the average examination score earned by all students who enroll for each course?
SELECT AVG(es.Score) as Avg_Score, c.Course_Name
FROM Student s
JOIN PracticeExam pe ON s.Student_ID = pe.Student_ID
JOIN ExamScore es ON pe.Exam_ID = es.Exam_ID
JOIN EnrollCourse ec ON s.Student_ID = ec.Student_ID
JOIN Course c ON ec.Course_ID = c.Course_ID
GROUP BY c.Course_Name;


-- Question 5 How much money each student must pay for all
SELECT SUM(t.Amount) as Tot_Amount, 
	   s.Student_ID as StudentID,
       s.Student_FirstName + ' ' + s.Student_LastName as fullname
FROM Student s
JOIN Payment p ON s.Student_ID = p.Student_ID
JOIN Transaction_Table t ON p.Transaction_ID = t.Transaction_ID
GROUP BY s.Student_ID, s.Student_FirstName + ' ' + s.Student_LastName;