USE ICT_Tutorial_Assignment1;

-- Name: Mangkhales Ngamjaruskotchakorn ID: 6188055 Section: 1 Assignment: 2

-- Part 1: Write the SQL commands to answer the following 5 questions:

-- Question 1 Show all students' name who enrolled more than 1 course.
SELECT s.Student_FirstName + ' ' + s.Student_LastName as Full_Name,
COUNT(ec.Course_ID) as Number_Of_Enrolled_Course
FROM Student s
JOIN EnrollCourse ec ON s.Student_ID = ec.Student_ID
GROUP BY s.Student_FirstName + ' ' + s.Student_LastName
HAVING COUNT(ec.Course_ID) > 1;

-- Question 2 Show all students' name who paid the payment costed higher than 50,000.00 baht.
SELECT s.Student_FirstName + ' ' + s.Student_LastName as Full_Name,
	   t.Amount
FROM Student s
JOIN Payment p ON s.Student_ID = p.Student_ID
JOIN Transactions t ON p.Transaction_ID = t.Transaction_ID
WHERE t.Amount > 50000;

-- Question 3 Show all students' name who got the summarized examination score more than the average score of all students.
SELECT s.Student_FirstName + ' ' + s.Student_LastName as Full_Name,
es.Score
FROM Student s
JOIN PracticeExam pe ON s.Student_ID = pe.Student_ID
JOIN ExamScore es ON pe.Exam_ID = es.Exam_ID
WHERE es.Score > (SELECT AVG(Score) FROM ExamScore)
GROUP BY s.Student_FirstName + ' ' + s.Student_LastName, es.Score;

-- Question 4 Show all instructors' full name who didn't teach any courses.
SELECT i.Instructor_FirstName + ' ' + i.Instructor_LastName as Full_Name
FROM Instructor i
LEFT JOIN Course c ON i.Instructor_ID = c.Instuctor_ID
GROUP BY i.Instructor_FirstName + ' ' + i.Instructor_LastName
HAVING COUNT(c.Course_ID) = 0;

-- Question 5 : Mr.A is a student who enrolls for a course named "B", show how much money he must pay for all books provided in this course. 
SELECT s.Student_FirstName, c.Course_Name, SUM(bt.Price) as Price_All_Books
FROM Student s
JOIN EnrollCourse ec ON s.student_ID = ec.Student_ID
JOIN Course c ON ec.Course_ID = c.Course_ID
JOIN BookStocking bt ON c.Course_ID = bt.Course_ID
WHERE s.Student_FirstName = 'JAMES' AND c.Course_Name = 'Business writing'
GROUP BY s.Student_FirstName, c.Course_Name;

-- Part 2: Design your own 5 more questions and write the SQL command to solve your questions.

-- Question 1: Find all Instructor who was born in June and August
SELECT Instructor_FirstName + ' ' + Instructor_LastName as Instructor_FullName,
	   Instructor_Birthday
FROM Instructor
WHERE MONTH(Instructor_Birthday) IN (6,8);

-- Question 2: Find all students who pass the criteria of the exam which is 50 score from 100. Representing in Ascending order
SELECT s.Student_FirstName + ' ' + s.Student_LastName as Student_Who_Pass_Exam,
	   es.Score
FROM Student s
JOIN PracticeExam pe ON s.Student_ID = pe.Student_ID
JOIN ExamScore es ON pe.Exam_ID = es.Exam_ID
WHERE es.Score BETWEEN 50 AND 100
ORDER BY es.Score ASC;

-- Queston 3: Find all students who absent in January
SELECT s.Student_FirstName + ' ' + s.Student_LastName as Student_Who_Absent,
       ca.Attend_Day,
       ca.Attend_Status
FROM Student s
JOIN CheckAttendence ca ON ca.Student_ID = s.Student_ID
WHERE ca.Attend_Status = 'A'

-- Question 4: Find all students who have to pay more than 3000 expenses, show in descending order.
SELECT s.Student_FirstName + ' ' + s.Student_LastName as Student_Who_Pay_Amount_More_than_3000,
	   t.Amount
FROM Student s
JOIN Payment p ON s.Student_ID = p.Student_ID
JOIN Transactions t ON p.Transaction_ID = t.Transaction_ID
WHERE t.Amount > 3000
ORDER BY t.Amount DESC;

-- Question 5: Find all Instructors who taught the course that have more than 4000 fees, also show course ID and course name.
SELECT i.Instructor_FirstName + ' ' + i.Instructor_LastName as Instructor_FullName,
	   c.Course_ID,
       c.Course_Name
FROM Instructor i
JOIN Course c ON i.Instructor_ID = c.Instuctor_ID
WHERE c.Course_Amount > 4000;