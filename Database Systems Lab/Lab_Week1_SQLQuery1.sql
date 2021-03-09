use MyDB
CREATE TABLE Student(

StudentID int , 
Firstname varchar(50), 
LastName varchar(50), 
NickName varchar(50), 
Email varchar(50),
PhoneNumber varchar(50), 
Gender varchar(50),
BirthDate date,

primary key (StudentID, NickName)
)

Insert into Student values
(6188055, 'Mangkhales', 'Ngamjaruskotchakorn', 'Ice', 'Mangkhales.nga@student.mahidol.ac.th', '0821081291', 'Male', '2000-02-26'),
(6188077, 'Teekawin', 'Kridseang', 'Ohm', 'Teekawin.kir@student.mahidol.ac.th', '0821031549', 'Male', '2000-02-27'),
(6188099, 'Avo', 'Cado', 'Yummy', 'Avo.cado@student.mahidol.ac.th', '0821081241', 'Male', '2000-02-28'),
(6188011, 'Evo', 'Dado', 'Nummy', 'Evo.dado@student.mahidol.ac.th', '0821081261', 'Male', '2000-02-29')

Select *from Student
