--Section 1: DDL (Data Definition Language) — Q1 to Q12
--1. Create a database for the college records.
CREATE DATABASE CollegeDB

--2. Create the Department table.
CREATE TABLE Department
(DepartmentID INT NOT NULL,
DepartmentName VARCHAR(50))
INSERT INTO Department (DepartmentID, DepartmentName) VALUES
(1, 'Computer Science'),
(2, 'Information Technology'),
(3, 'Commerce'),
(4, 'Arts'),
(5, 'Science'),
(6, 'Mathematics'),
(7, 'Physics'),
(8, 'Chemistry'),
(9, 'Biology'),
(10, 'English');

--3. Create the Student table with all required columns.

CREATE TABLE Student
(RollNo INT NOT NULL,
StudentName VARCHAR(50),
Course VARCHAR(100),
Marks INT ,
City VARCHAR(50),
Gender CHAR(1),
Age INT,
AdmissonDate DATE,
Fee INT,
DepartmentID INT, 
CONSTRAINT Gender_chk CHECK(Gender IN ('M','F')),
CONSTRAINT Mark_chk CHECK(Marks <= 100),
)

INSERT INTO Student VALUES
(101,'Aarav','BCA',85,'Mumbai','M',19,'2025-06-10',45000,1),
(102,'Ananya','BSc IT',91,'Delhi','F',20,'2025-06-11',48000,2),
(103,'Rahul','B.Com',76,'Ahmedabad','M',19,'2025-06-12',35000,3),
(104,'Priya','BA',82,'Surat','F',18,'2025-06-13',30000,4),
(105,'Rohan','BSc',88,'Pune','M',20,'2025-06-14',42000,5),
(106,'Sneha','BSc Maths',95,'Vadodara','F',21,'2025-06-15',43000,6),
(107,'Karan','BSc Physics',81,'Jaipur','M',20,'2025-06-16',44000,7),
(108,'Meera','BSc Chemistry',90,'Indore','F',19,'2025-06-17',44000,8),
(109,'Vikram','BSc Biology',74,'Nagpur','M',18,'2025-06-18',41000,9),
(110,'Pooja','BA English',89,'Lucknow','F',20,'2025-06-19',32000,10),

(111,'Aditya','BCA',86,'Rajkot','M',19,'2025-06-20',45000,1),
(112,'Riya','BSc IT',79,'Bhopal','F',18,'2025-06-21',48000,2),
(113,'Mohit','B.Com',68,'Kanpur','M',20,'2025-06-22',35000,3),
(114,'Kavya','BA',93,'Nashik','F',19,'2025-06-23',30000,4),
(115,'Arjun','BSc',84,'Noida','M',21,'2025-06-24',42000,5),
(116,'Isha','BSc Maths',92,'Patna','F',20,'2025-06-25',43000,6),
(117,'Nikhil','BSc Physics',77,'Agra','M',19,'2025-06-26',44000,7),
(118,'Aditi','BSc Chemistry',83,'Kota','F',18,'2025-06-27',44000,8),
(119,'Harsh','BSc Biology',80,'Jodhpur','M',20,'2025-06-28',41000,9),
(120,'Simran','BA English',87,'Amritsar','F',19,'2025-06-29',32000,10),

(121,'Yash','BCA',90,'Vadodara','M',20,'2025-07-01',45000,1),
(122,'Diya','BSc IT',85,'Mumbai','F',19,'2025-07-02',48000,2),
(123,'Manav','B.Com',72,'Delhi','M',18,'2025-07-03',35000,3),
(124,'Neha','BA',88,'Ahmedabad','F',20,'2025-07-04',30000,4),
(125,'Dev','BSc',81,'Surat','M',21,'2025-07-05',42000,5),
(126,'Palak','BSc Maths',94,'Pune','F',20,'2025-07-06',43000,6),
(127,'Krish','BSc Physics',79,'Jaipur','M',19,'2025-07-07',44000,7),
(128,'Nisha','BSc Chemistry',91,'Indore','F',18,'2025-07-08',44000,8),
(129,'Parth','BSc Biology',75,'Nagpur','M',20,'2025-07-09',41000,9),
(130,'Radhika','BA English',86,'Lucknow','F',21,'2025-07-10',32000,10),

(131,'Jay','BCA',82,'Rajkot','M',19,'2025-07-11',45000,1),
(132,'Khushi','BSc IT',96,'Bhopal','F',20,'2025-07-12',48000,2),
(133,'Tushar','B.Com',78,'Kanpur','M',21,'2025-07-13',35000,3),
(134,'Sakshi','BA',89,'Nashik','F',18,'2025-07-14',30000,4),
(135,'Aryan','BSc',83,'Noida','M',19,'2025-07-15',42000,5),
(136,'Tanvi','BSc Maths',90,'Patna','F',20,'2025-07-16',43000,6),
(137,'Shiv','BSc Physics',76,'Agra','M',21,'2025-07-17',44000,7),
(138,'Mansi','BSc Chemistry',88,'Kota','F',19,'2025-07-18',44000,8),
(139,'Sahil','BSc Biology',84,'Jodhpur','M',20,'2025-07-19',41000,9),
(140,'Anjali','BA English',93,'Amritsar','F',18,'2025-07-20',32000,10),

(141,'Viraj','BCA',87,'Vadodara','M',19,'2025-07-21',45000,1),
(142,'Heena','BSc IT',80,'Mumbai','F',20,'2025-07-22',48000,2),
(143,'Ritesh','B.Com',74,'Delhi','M',18,'2025-07-23',35000,3),
(144,'Komal','BA',92,'Ahmedabad','F',19,'2025-07-24',30000,4),
(145,'Dhruv','BSc',85,'Surat','M',20,'2025-07-25',42000,5),
(146,'Nidhi','BSc Maths',89,'Pune','F',21,'2025-07-26',43000,6),
(147,'Om','BSc Physics',81,'Jaipur','M',20,'2025-07-27',44000,7),
(148,'Bhavna','BSc Chemistry',94,'Indore','F',19,'2025-07-28',44000,8),
(149,'Aman','BSc Biology',77,'Nagpur','M',18,'2025-07-29',41000,9),
(150,'Muskan','BA English',90,'Lucknow','F',20,'2025-07-30',32000,10);

--4. Add a new column to the Student table to store the student's email address.
ALTER TABLE Student
ADD Email VARCHAR(65)

--5. Modify the data type/size of the email column you just added.
ALTER TABLE Student
ALTER COLUMN Email VARCHAR(70)

--6. Rename the newly added email column to something more suitable.
SP_RENAME 'Student.Email','SEmail'
--7. Drop the email column from the Student table.
ALTER TABLE Student
DROP COLUMN SEmail

--8. Rename the Student table to StudentRecords and then rename it back to Student.
SP_RENAME 'Student','StudentRecords'
SP_RENAME 'StudentRecords','Student'

--9. Write a query to view the complete structure of the Student table.
SP_HELP Student

--10. Write a query to view the complete structure of the Department table.
SP_HELP Department

--11. Truncate all the data from the Department table and recreate it.
TRUNCATE TABLE Department

--12.Drop the Department table and create it again with the same structure.
DROP TABLE Department

--Section 2: Constraints — PK, FK, UNIQUE, NOT NULL, DEFAULT, CHECK — Q13 to Q32

--13. Set the primary key on the Department table.
ALTER TABLE Department
ADD CONSTRAINT PK_DID PRIMARY KEY DepartmentID
--14. Set the primary key on the Student table.
ALTER TABLE Student
ADD CONSTRAINT PK_EID PRIMARY KEY Rollno

--15. Add a foreign key on the Student table that references the Department table.
ALTER TABLE Student
ADD CONSTRAINT FK_DID FOREIGN KEY DepartmentID REFERENCES Department(DepartmentID)

--16. Try inserting a student record with a department value that does not exist in the
--Department table and observe the result.
INSERT INTO Student VALUES
(151,'Aarav','BCA',85,'Mumbai','M',19,'2025-06-10',45000,11),

--17. Apply a NOT NULL constraint on the student's name column.
ALTER TABLE Student 
ALTER COLUMN StudentName VARCHAR (50) NOT NULL 

--18. Apply a NOT NULL constraint on the course column.
ALTER TABLE Course
ALTER COLUMN Course VARCHAR (100) NOT NULL 

--19. Apply a UNIQUE constraint on a column that stores each student's roll number.
-- Ans: Its already unique

--20. Apply a UNIQUE constraint on the email column (add the column again if you had
--dropped it earlier).
ALTER TABLE Student
ADD Email VARCHAR(70) UNIQUE

--21. Apply a DEFAULT constraint on the city column with a default value of your choice.
ALTER TABLE Student
ADD CONSTRAINT DEF_City DEFAULT 'Ahmedabad' FOR City

--22. Apply a DEFAULT constraint on the fee column with a default value.
ALTER TABLE Student
ADD CONSTRAINT DEF_Fees DEFAULT 25000 FOR Fee

--23. Apply a CHECK constraint on the marks column so that marks cannot be negative or
--greater than 100.
ALTER TABLE Student
ADD CONSTRAINT M_CHK CHECK (Marks BETWEEN 0 AND 100)

--24. Apply a CHECK constraint on the age column so that age must be greater than or
--equal to 15.
ALTER TABLE Student
ADD CONSTRAINT Age_CHK CHECK (15 <= Age)

--25. Apply a CHECK constraint on the gender column so that only 'M' or 'F' can be
--entered.
ALTER TABLE Student
ADD CONSTRAINT Gender_CHK CHECK (Gender IN ('M','F'))

--26. Remove the CHECK constraint applied on the age column.
ALTER TABLE Student
DROP Age_CHK

--27. Remove the UNIQUE constraint applied on the roll number column.
ALTER TABLE Student
DROP PK_EID 

--28. Remove the DEFAULT constraint applied on the fee column.
ALTER TABLE Student
DROP DEF_Fees

--29. Remove the foreign key constraint from the Student table.
ALTER TABLE Student
DROP  FOREIGN KEY DepartmentID REFERENCES Department(DepartmentID)

--30. Add the foreign key constraint back to the Student table.
ALTER TABLE Student
ADD CONSTRAINT FK_DID FOREIGN KEY DepartmentID REFERENCES Department(DepartmentID)

--31. Remove the primary key from the Department table and then reapply it.
ALTER TABLE Department 
DROP PK_DID

ALTER TABLE Department
ADD CONSTRAINT PK_DID PRIMARY KEY DepartmentID

--32. Try deleting a department from the Department table that is still referenced by a
--student and observe the result.
ALTER TABLE Department
DROP DepartmentName

--Section 3: DML (Data Manipulation Language) — Q33 to Q47
--33. Insert 5 records into the Department table.
INSERT INTO Department (DepartmentID, DepartmentName)
VALUES
(11, 'Economics'),
(12, 'Psychology'),
(13, 'Business Administration'),
(14, 'Mechanical Engineering'),
(15, 'Cyber Security')

--34. Insert 20 records into the Student table with varied courses, cities, marks, and fees.
INSERT INTO Student
(RollNo, StudentName, Course, Marks, City, Gender, Age, AdmissonDate, Fee, DepartmentID)
VALUES
(151,'Ayaan','BCA',82,'Mumbai','M',19,'2025-08-01',45000,11),
(152,'Siya','BSc IT',91,'Delhi','F',20,'2025-08-02',48000,12),
(153,'Kabir','B.Com',75,'Ahmedabad','M',18,'2025-08-03',35000,13),
(154,'Anika','BA',88,'Surat','F',19,'2025-08-04',30000,14),
(155,'Vivaan','BSc',84,'Pune','M',20,'2025-08-05',42000,15),
(156,'Myra','BCA',79,'Vadodara','F',19,'2025-08-06',45000,11),
(157,'Reyansh','BSc IT',95,'Rajkot','M',21,'2025-08-07',48000,12),
(158,'Kiara','B.Com',87,'Jaipur','F',20,'2025-08-08',35000,13),
(159,'Arnav','BA',72,'Indore','M',18,'2025-08-09',30000,14),
(160,'Aadhya','BSc',90,'Nagpur','F',19,'2025-08-10',42000,15),

(161,'Ishaan','BCA',85,'Lucknow','M',20,'2025-08-11',45000,11),
(162,'Navya','BSc IT',93,'Bhopal','F',21,'2025-08-12',48000,12),
(163,'Atharv','B.Com',68,'Kanpur','M',19,'2025-08-13',35000,13),
(164,'Saanvi','BA',81,'Nashik','F',18,'2025-08-14',30000,14),
(165,'Krishna','BSc',89,'Noida','M',20,'2025-08-15',42000,15),
(166,'Pari','BCA',94,'Patna','F',19,'2025-08-16',45000,11),
(167,'Devansh','BSc IT',77,'Agra','M',21,'2025-08-17',48000,12),
(168,'Anvi','B.Com',86,'Kota','F',20,'2025-08-18',35000,13),
(169,'Rudra','BA',80,'Jodhpur','M',19,'2025-08-19',30000,14),
(170,'Mehak','BSc',92,'Amritsar','F',18,'2025-08-20',42000,15)

--35. Insert a record into the Student table without providing a value for the city column,
--to check the DEFAULT constraint.
INSERT INTO Student
(RollNo, StudentName, Course, Marks, Gender, Age, AdmissonDate, Fee, DepartmentID)
VALUES
(171, 'Ritesh', 'BCA', 88, 'M', 20, '2025-08-21', 45000, 1)

--36. Insert a record into the Student table without providing a value for the fee column, to
--check the DEFAULT constraint.
INSERT INTO Student
(RollNo, StudentName, Course, Marks, City, Gender, Age, AdmissonDate, DepartmentID)
VALUES
(172, 'Aisha', 'BSc IT', 90, 'Surat', 'F', 19, '2025-08-22', 2);

--37.Update the marks of a student whose roll number is a specific value, increasing it by
--5.
UPDATE Student 
SET Marks = Marks+5
WHERE RollNo = 155

--38.Update the fee amount of all students belonging to a particular course.
UPDATE Student 
SET Fee = 60000
WHERE Course = 'BCA'

--39.Update the city of a student from one city to another.
UPDATE Student 
SET City = 'Bharuch'
WHERE RollNo = 105

--40.Update the department of a student to a different valid department.
UPDATE Student
SET DepartmentID = 5
WHERE RollNo = 101

--41.Delete the record of a student with a specific roll number.
DELETE FROM Student
WHERE RollNo = 109

--42.Delete all students whose marks are less than 35.
DELETE FROM Student
WHERE Marks < 35 

--43.Delete all students belonging to a particular city.
DELETE FROM Student
WHERE City = 'Ahmedabad'

--44. Insert a record leaving the student name blank and check whether the NOT NULL
--constraint blocks it.
INSERT INTO Student
(RollNo, Course, Marks, City, Gender, Age, AdmissonDate, Fee, DepartmentID)
VALUES
(173, 'BCA', 85, 'Surat', 'M', 20, '2025-08-23', 45000, 1)

--45. Insert a record with a duplicate roll number and check whether the UNIQUE
--constraint blocks it.
INSERT INTO Student
(RollNo, StudentName, Course, Marks, City, Gender, Age, AdmissonDate, Fee, DepartmentID)
VALUES
(102, 'Rahul', 'BCA', 80, 'Mumbai', 'M', 20, '2025-08-23', 45000, 1)

--46. Insert a record with age less than the allowed minimum and check whether the
--CHECK constraint blocks it.
ALTER TABLE Student
ADD CONSTRAINT Age_chk
CHECK (Age >= 18)

INSERT INTO Student
(RollNo, StudentName, Course, Marks, City, Gender, Age, AdmissonDate, Fee, DepartmentID)
VALUES
(174, 'Karan', 'BCA', 85, 'Delhi', 'M', 15, '2025-08-23', 45000, 2)

--47.Update the marks of a student to a value greater than 100 and check whether the
--CHECK constraint blocks it.
UPDATE Student
SET Marks = 120
WHERE RollNo = 103

--Section 4: Operators — Q48 to Q62
--48.Display all students whose marks are greater than 75.
SELECT *
FROM Student
WHERE Marks > 75

--49.Display all students whose fee is less than or equal to 20,000.
SELECT *
FROM Student
WHERE Fee <= 20000

--50.Display all students whose age is not equal to 18.
SELECT *
FROM Student
WHERE Age != 18

--51.Display all students belonging to the 'Computer Science' course AND having marks
--greater than 60.
SELECT *
FROM Student
WHERE Course = 'Computer Science'
AND Marks > 60

--52.Display all students belonging to the 'Computer Science' course OR the 'Commerce'
--course.
SELECT *
FROM Student
WHERE Course IN ('Computer Science', 'Commerce')

--53.Display all students whose marks are BETWEEN 50 and 90.
SELECT *
FROM Student
WHERE Marks BETWEEN 50 AND 90

--54.Display all students whose fee is BETWEEN 10,000 and 30,000.
SELECT *
FROM Student
WHERE Fee BETWEEN 10000 AND 30000

--55.Display all students whose city is IN ('Delhi', 'Jaipur', 'Ahmedabad').
SELECT *
FROM Student
WHERE City IN ('Delhi', 'Jaipur', 'Ahmedabad')

--56.Display all students whose course is NOT IN ('Arts', 'Commerce').
SELECT *
FROM Student
WHERE Course NOT IN ('Arts', 'Commerce')

--57.Display all students whose name starts with the letter 'S' using the LIKE operator.
SELECT *
FROM Student
WHERE StudentName LIKE 'S%'

--58.Display all students whose name ends with the letter 'n' using the LIKE operator.
SELECT *
FROM Student
WHERE StudentName LIKE '%n'

--59.Display all students whose name contains the substring 'an' anywhere in it.
SELECT *
FROM Student
WHERE StudentName LIKE '%an%'

--60.Display all students whose gender is 'F' and marks are greater than 80.
SELECT *
FROM Student
WHERE Gender = 'F'
AND Marks > 80

--61.Display all students whose department value IS NULL (if any).
SELECT *
FROM Student
WHERE DepartmentID IS NULL

--62.Display all students whose department value IS NOT NULL.
SELECT *
FROM Student
WHERE DepartmentID IS NOT NULL

--Section 5: Aggregation Functions — Q63 to Q80

--63. Find the total number of students using COUNT.
SELECT COUNT(*) AS TotalStudents
FROM Student

--64. Find the total number of students who belong to the 'Computer Science' course.
SELECT COUNT(*) AS TotalCSStudents
FROM Student
WHERE Course = 'Computer Science'

--65. Find the total fee collected from all students using SUM.
SELECT SUM(Fee) AS TotalFee
FROM Student

--66. Find the total fee collected from students of a specific course.
SELECT SUM(Fee) AS TotalFee
FROM Student
WHERE Course = 'BCA'

--67. Find the average marks of all students using AVG.
SELECT AVG(Marks) AS AverageMarks
FROM Student

--68. Find the average fee paid by students belonging to a specific city.
SELECT AVG(Fee) AS AverageFee
FROM Student
WHERE City = 'Ahmedabad'
--69. Find the highest marks scored by any student using MAX.
SELECT MAX(Marks) AS HighestMarks
FROM Student

--70. Find the lowest marks scored by any student using MIN.
SELECT MIN(Marks) AS LowestMarks
FROM Student

--71. Find the highest fee paid by any student.
SELECT MAX(Fee) AS HighestFee
FROM Student

--72. Find the lowest fee paid by any student.
SELECT MIN(Fee) AS LowestFee
FROM Student

--73. Find the average age of all students.
SELECT AVG(Age) AS AverageAge
FROM Student

--74. Find the total number of distinct courses offered, using COUNT with DISTINCT.
SELECT COUNT(DISTINCT Course) AS TotalCourses
FROM Student

--75. Find the total number of distinct cities the students belong to.
SELECT COUNT(DISTINCT City) AS TotalCities
FROM Student

--76. Find the maximum age among all students.
SELECT MAX(Age) AS MaximumAge
FROM Student

--77. Find the minimum age among all students.
SELECT MIN(Age) AS MinimumAge
FROM Student

--78. Find the sum of marks of all students combined.
SELECT SUM(Marks) AS TotalMarks
FROM Student

--79. Find the average marks of only the female students.
SELECT AVG(Marks) AS AverageFemaleMarks
FROM Student
WHERE Gender = 'F'

--80. Find the count of students who scored more than 90 marks.
SELECT COUNT(*) AS StudentsAbove90
FROM Student
WHERE Marks > 90
--Section 6: Clauses — GROUP BY, HAVING, ORDER BY — Q81 to Q100

--81.Display the total number of students in each course, using GROUP BY.
SELECT Course, COUNT(*) AS TotalStudents
FROM Student
GROUP BY Course

--82.Display the average marks of students, grouped by course.
SELECT Course, AVG(Marks) AS AverageMarks
FROM Student
GROUP BY Course

--83.Display the total fee collected, grouped by department.
SELECT DepartmentID, SUM(Fee) AS TotalFee
FROM Student
GROUP BY DepartmentID

--84.Display the maximum marks scored, grouped by city.
SELECT City, MAX(Marks) AS HighestMarks
FROM Student
GROUP BY City

--85.Display the minimum age, grouped by gender.
SELECT Gender, MIN(Age) AS MinimumAge
FROM Student
GROUP BY Gender

--86.Display the count of students, grouped by city.
SELECT City, COUNT(*) AS StudentCount
FROM Student
GROUP BY City

--87.Display the average fee, grouped by course and city together.
SELECT Course, City, AVG(Fee) AS AverageFee
FROM Student
GROUP BY Course, City

--88.Display the sum of marks, grouped by department.
SELECT DepartmentID, SUM(Marks) AS TotalMarks
FROM Student
GROUP BY DepartmentID

--89.Display courses having more than 5 students enrolled, using HAVING.
SELECT Course, COUNT(*) AS TotalStudents
FROM Student
GROUP BY Course
HAVING COUNT(*) > 5


--90.Display cities having an average fee greater than 15,000, using HAVING.
SELECT City, AVG(Fee) AS AverageFee
FROM Student
GROUP BY City
HAVING AVG(Fee) > 15000

--91.Display departments having a total student count greater than 3, using HAVING.
SELECT DepartmentID, COUNT(*) AS TotalStudents
FROM Student
GROUP BY DepartmentID
HAVING COUNT(*) > 3

--92.Display courses having an average marks greater than 70, using HAVING.
SELECT Course, AVG(Marks) AS AverageMarks
FROM Student
GROUP BY Course
HAVING AVG(Marks) > 70

--93.Display genders having a maximum marks value greater than 95, using HAVING.
SELECT Gender, MAX(Marks) AS MaximumMarks
FROM Student
GROUP BY Gender
HAVING MAX(Marks) > 95

--94.Display all student records sorted by marks in descending order, using ORDER BY.
SELECT *
FROM Student
ORDER BY Marks DESC

--95.Display all student records sorted by fee in ascending order.
SELECT *
FROM Student
ORDER BY Fee ASC

--96.Display all student records sorted by course (ascending) and then marks
--(descending).
SELECT *
FROM Student
ORDER BY Course ASC, Marks DESC

--97.Display all student records sorted by admission date, showing the most recently
--admitted students first.
SELECT *
FROM Student
ORDER BY AdmissonDate DESC

--98.Display the top 10 students with the highest marks, using ORDER BY along with a
--row-limiting clause.
SELECT TOP 10 *
FROM Student
ORDER BY Marks DESC

--99.Display all distinct courses sorted alphabetically.
SELECT DISTINCT Course
FROM Student
ORDER BY Course ASC

--100. Display department-wise student count sorted from highest to lowest count,
--combining GROUP BY and ORDER BY.
SELECT DepartmentID, COUNT(*) AS StudentCount
FROM Student
GROUP BY DepartmentID
ORDER BY StudentCount DESC