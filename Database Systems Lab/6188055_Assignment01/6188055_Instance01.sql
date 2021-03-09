INSERT INTO Student (Student_ID, Student_FirstName, Student_LastName, Student_Address, Student_Birthday, Student_Email, Student_Phone, Student_UserID, Student_Password)
VALUES (6188055, 'JEREMY', 'BERNAL', '70  Ashton Lane', '1982-01-05', 'jeremy@gmail.com', '7578532174', 'jeremy01', 'je001122'),
 (6188256, 'JAMES', 'STEVENSON', '4720  Elsie Drive', '1992-11-02', 'james@gmail.com', '4323013247', 'james02', 'ja001122'),
 (6188354, 'ADAM', 'FORD', '2825  Nutters Barn Lane', '1992-11-30', 'adam@gmail.com', '7127303457', 'adam03', 'ad001122'),
 (6188658, 'LUCIA', 'WOOD', '427  Green Gate Lane', '1987-06-15', 'lucia@gmail.com', '4436338166', 'lucia04', 'lu001122'),
 (6188345, 'BRANDEN', 'HOTCHKISS', '3214  O Conner Street', '1999-02-20', 'branden@gmail.com', '8025651119', 'branden05', 'br001122'),
 (6188505, 'HILDA', 'JONES', '1978  Red Dog Road', '1984-05-27', 'hi@gmail.com', '9803399556', 'hilda06', 'hi001122'),
 (6188326, 'NICOLE', 'STEPNEY', '177  Shingleton Road', '1960-02-29', 'nicole@gmail.com', '2488851285', 'nicole07', 'ni001122'),
 (6188444, 'KENNETH', 'TONEY', '2993  Farm Meadow Drive', '1963-11-22', 'kenneth@gmail.com', '6153723013', 'kenneth08', 'ke001122'),
 (6188789, 'RICHARD', 'TORRES', '3947  Park Street', '1990-05-03', 'richard@gmail.com', '4152182972', 'richard09', 'ri001122'),
 (6188999, 'Terry', 'Barr', '305  Comfort Court', '1990-06-01', 'terry@gmail.com', '9205766093', 'treey11', 'tr001122');

INSERT INTO Instructor (Instructor_ID, Instructor_FirstName, Instructor_LastName, Instructor_Address, Instructor_Birthday, Instructor_Email, Instructor_Phone, Instructor_UserID, Instructor_Password)
VALUES (1111, 'RODOLFO', 'FREEMAN', '3005  Bartlett Avenue', '1983-01-12', 'rodolfo.fre@mahidol.ac.th', '8103437901', 'rodolfo21', 'ro778899'),
 (2222, 'EDWARD', 'BARTH', '2949  Kinney Street', '1997-06-14', 'edward.bar@mahidol.ac.th', '4133269764', 'edward22', 'ed778899'),
 (3333, 'WILLARD', 'WILCOXEN', '2303  Tree Frog Lane', '1983-11-29', 'willard.wil@mahidol.ac.th', '8168686998', 'wilard23', 'wi778899'),
 (4444, 'kenneth', 'adcock', '3190  Koontz Lane', '1973-12-19', 'kenneth.adc@mahidol.ac.th', '3239015053', 'kenneth24', 'ke778899'),
 (5555, 'howard', 'foster', '1882  Oak Way', '1969-08-17', 'howard.fos@mahidol.ac.th', '3085150584', 'howard25', 'ho778899'),
 (6666, 'betty', 'Cook', '2177  Kemper Lane', '1969-06-04', 'betty.coo@mahidol.ac.th', '8015092384', 'betty26', 'be778899'),
 (7777, 'Marie', 'Woods', '1539  Dancing Dove Lane', '1966-04-07', 'marie.woo@mahidol.ac.th', '6469345403', 'marie27', 'ma778899'),
 (8888, 'Richard ', 'Nottingham', '4682  Lincoln Drive', '1993-06-30', 'richard.not@mahidol.ac.th', '7173311745', 'richard28', 'ri778899'),
 (9999, 'Julie ', 'Brownell', '3683  Armory Road', '1956-10-23', 'julie.bro@mahidol.ac.th', '3174395276', 'julie29', 'ju778899'),
 (1112, 'Tristan ', 'Rios', '4672  Swick Hill Street', '1974-05-26', 'tristan.rio@mahidol.ac.th', '9802198280', 'tristan20', 'tr778899');

INSERT INTO Course (Course_ID, Course_Name, Course_Amount, Instructor_ID)
VALUES (451, 'Artificial Intelligence', 2500, 1111),
(301, 'Business writing', 4200, 2222),
(472, 'Software Metrics', 3200, 3333),
(461, 'Computer and Communication Security', 2000, 4444),
(443, 'Parallel and Distributed Systems', 2000, 5555),
(414, 'Information Storage and Retrieval', 3200, 6666),
(361, 'Management Information Systems', 4100, 7777),
(424, 'Wireless and Mobile Computing', 3500, 8888),
(371, 'Introduction to Software Engineering', 3700, 9999),
(393, 'Database Systems Lab', 3300, 1112);

INSERT INTO BookStocking (Book_ID, BookName, Author, Remaining, Price, Course_ID)
VALUES (101011, 'In Search of Lost Time', 'Marcel Proust', 9, 500, 451),
(101022, 'Ulysses', 'James Joyce', 12, 450, 301),
(101033, 'Don Quixote', 'Miguel de Cervantes', 14, 270, 472),
(101044, 'One Hundred Years of Solitude', 'Gabriel Garcia Marquez', 35, 550, 461),
(101055, 'The Great Gatsby', 'F. Scott Fitzgerald', 8, 620, 443),
(101066, 'Moby Dick', 'Herman Melville', 7, 245, 414),
(101077, 'War and Peace', 'Leo Tolstoy', 62, 200, 361),
(101088, 'Hamlet', 'William Shakespeare', 25, 170, 424),
(101099, 'The Odyssey', 'Homer', 44, 460, 371),
(101010, 'Madame Bovary', 'Gustave Flaubert', 66, 370, 393);

INSERT INTO ElearningVideo (Lesson, Details, Course_ID)
VALUES ('Artificial Intelligence','studies how to realize the intelligent human', 451),
('Business writing','learn about english', 301),
('Software Metrics','learn about SE', 472),
('Computer and Communication Security','learn about Security', 461),
('Parallel and Distributed Systems','learn about parallel', 443),
('Information Storage and Retrieval','learn about IR', 414),
('Management Information Systems','learn about MIS', 361),
('Wireless and Mobile Computing','learn about WMC', 424),
('Introduction to Software Engineering','learn about ISE', 371),
('Database Systems Lab','learn about DSL', 393);

INSERT INTO Seat (Seat_ID, SeatRow, Number, Course_ID, Student_ID)
VALUES (01, 11, 111, 451, 6188055),
(02, 22, 222, 301, 6188256),
(03, 33, 333, 472, 6188354),
(04, 44, 444, 461, 6188658),
(05, 55, 555, 443, 6188345),
(06, 66, 666, 414, 6188505),
(07, 77, 777, 361, 6188326),
(08, 88, 888, 424, 6188444),
(09, 99, 999, 371, 6188789),
(11, 111, 1111, 393, 6188999);

INSERT INTO EnrollCourse(Student_ID, Course_ID)
VALUES (6188055, 451),
(6188256, 301),
(6188354, 472),
(6188658, 461),
(6188345, 443),
(6188505, 414),
(6188326, 361),
(6188444, 424),
(6188789, 371),
(6188999, 393);

INSERT INTO Transaction_Table(Transaction_ID, Amount)
VALUES (22551, 2500),
(22552, 3200),
(22553, 4400),
(22554, 2100),
(22555, 1900),
(22556, 1110),
(22557, 6500),
(22558, 4500),
(22559, 5200),
(22550, 1300);

INSERT INTO Payment(Student_ID, Transaction_ID)
VALUES (6188055, 22551),
(6188256, 22552),
(6188354, 22553),
(6188658, 22554),
(6188345, 22555),
(6188505, 22556),
(6188326, 22557),
(6188444, 22558),
(6188789, 22559),
(6188999, 22550);

INSERT INTO ExamScore(Exam_ID, Score)
VALUES (7001, 78),
(7002, 58),
(7003, 67),
(7004, 49),
(7005, 58),
(7006, 62),
(7007, 35),
(7008, 98),
(7009, 86),
(7010, 46);

INSERT INTO  PracticeExam(Student_ID, Exam_ID)
VALUES (6188055, 7001),
(6188256, 7002),
(6188354, 7003),
(6188658, 7004),
(6188345, 7005),
(6188505, 7006),
(6188326, 7007),
(6188444, 7008),
(6188789, 7009),
(6188999, 7010);

INSERT INTO CheckAttendence(Student_ID, Attend_Week, Attend_Day, Attend_Status)
VALUES (6188055, 1, '2021-01-11', 'P'),
(6188256, 2, '2021-01-11', 'P'),
(6188354, 3, '2021-01-11', 'P'),
(6188658, 4, '2021-01-11', 'A'),
(6188345, 1, '2021-01-11', 'A'),
(6188505, 2, '2021-01-11', 'L'),
(6188326, 3, '2021-01-11', 'A'),
(6188444, 1, '2021-01-11', 'L'),
(6188789, 2, '2021-01-11', 'A'),
(6188999, 4, '2021-01-11', 'P');




 

