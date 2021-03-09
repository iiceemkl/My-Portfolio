USE ICT_Tutorial_Assignment1;

-- Name: Mangkhales Ngamjaruskotchakorn
-- ID: 6188055 Section: 1 Date: 02/13/2021

--Q1:  How many VDOs recorded for each course? 
SELECT COUNT(*) AS Number_of_Videos, c.Course_ID
FROM Course c
LEFT JOIN ElearningVideo ev ON c.Course_ID = ev.Course_ID
GROUP BY c.Course_ID;

--Q2: How many courses taught by each instructor? 
-- (The results must show the instructors' fullname and total courses)
SELECT COUNT(c.Course_ID) AS Total_Courses_taught_by,
i.Instructor_FirstName + ' ' + i.Instructor_LastName AS Instructor_FullName
FROM Instructor i
LEFT JOIN Course c ON i.Instructor_ID = c.Instructor_ID
GROUP BY i.Instructor_FirstName + ' ' + i.Instructor_LastName;

--Q3: Find the average amount of course taught by each instructor whose course amount is greater than 50,000 baht. 
-- (The results must show instructors' fullname and average amount)
SELECT AVG(c.Course_Amount) AS Average_Course_Amount,
i.Instructor_FirstName + ' ' + i.Instructor_LastName AS Instructor_FullName
FROM Instructor i
JOIN Course c ON i.Instructor_ID = c.Instructor_ID
WHERE c.Course_Amount > 50000
GROUP BY i.Instructor_FirstName + ' ' + i.Instructor_LastName;

--Q4: Find the most expensive course that students have to pay for enrollment.
-- (The results must show the course amount, and students' fullname)
SELECT c.Course_Amount,
s.Student_FirstName + ' ' + s.Student_LastName AS Student_FullName
FROM Student s 
JOIN EnrollCourse ec ON s.Student_ID = ec.Student_ID
JOIN Course c ON ec.Course_ID = c.Course_ID
WHERE c.Course_Amount = (SELECT MAX(Course_Amount) FROM Course);

--Q5: Find the average score, maximum score, and minimum score that each student can perform after taking examination.
-- (The results must show the average, max, and min scores, and students fullname)
SELECT s.Student_FirstName + ' ' + s.Student_LastName AS Student_FullName,
AVG(es.Score) AS Average_Score,
MAX(es.Score) AS Maximum_Score,
MIN(es.Score) AS Minimum_Score
FROM Student s
JOIN PracticeExam pe ON s.Student_ID = pe.Student_ID
JOIN ExamScore es ON pe.Exam_ID = es.Exam_ID
GROUP BY s.Student_FirstName + ' ' + s.Student_LastName;

