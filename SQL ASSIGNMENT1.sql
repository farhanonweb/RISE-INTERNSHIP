                               -- Literal SELECT Statement Practice Problems --

-- 1) Execute a literal select statement that returns your name.
SELECT 'Farhan Gheri' AS Name;

-- 2) Write the literal select statement that evaluates the product of 7 and 4.
SELECT 7 * 4 AS PRODUCT;

-- 3) Write the literal select statement that takes the difference of 7 and 4 then multiplies that difference by 8.
SELECT (7 -4) * 8 AS RESULT;

-- 4) Write a literal select statement that returns the phrase “Brewster’s SQL Training Class”. (Hint: note the single apostrophe in the string).
SELECT 'Brewster''s SQL Training Class' AS Phrase;

-- 5) Execute a literal SELECT statement that returns the phrase “Day 1 of Training” in one column and the result of 5*3 in another column.
SELECT 'Day 1 of Training' AS Training, 5 * 3 AS Result;


                                -- Insert/Update/Delete --

-- 1. Insert a new employee record with all details provided directly.

CREATE TABLE Freshemployee (
    EID INT,
    Ename VARCHAR(20),
    Eage INT,
    ESalary MONEY,
    Department VARCHAR(20)
    
);

INSERT INTO Freshemployee 
VALUES (101, 'Farhan', 29, 50000,'AI');
SELECT * FROM Freshemployee;



-- 2. Add multiple new team members to the HR department at once.
INSERT INTO Freshemployee
VALUES (102, 'Rahil', 33, 54000, 'HR'),
(103, 'Aman', 44, 30000, 'Cloud'),
(104, 'Saad', 77, 10000, 'Finance')

-- 3. Register an employee who hasn't been assigned a salary yet.
INSERT INTO  Freshemployee (EID, Ename, Eage, Department) 
Values(106, 'Karan', 91,'Hr'),
(107, 'Dinesh', 92, 'Hr')

Update Freshemployee 
set ESalary = 1000000
where ESalary is NULL

-- 4. Update the salary to 85,000 for everyone working in the 'Cloud' department.
Update Freshemployee
set ESalary = 85000
where Department = 'Cloud'

-- 5. Change both the department and salary for a specific employee by name.
Update Freshemployee
set ESalary = 200, Department = 'AI'
where Ename = 'Rahil'

-- 6. Give a flat 10% appraisal boost to employee working in AI department.
Update Freshemployee
set ESalary = ESalary * 1.10
where Department = 'AI'

-- 7. Assign an initial entry-level salary of 30,000 to anyone whose salary column is completely blank (NULL).
Update Freshemployee 
set ESalary = 30000
where ESalary is NULL


-- 8. Remove a specific employee from the system using their unique ID.
Delete From Freshemployee
Where EID = 104

-- 9. Remove all records belonging to a department that has been completely shut down.
Delete From Freshemployee 
Where Department ='AI'

-- 10.Drop records of any employee earning less than 20,000 in the Finance division.
Delete From Freshemployee
Where Department='Finance' And ESalary <20000











