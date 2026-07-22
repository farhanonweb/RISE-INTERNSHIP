
Create Table employee(
EID INT,
EName Varchar(30),
Department Varchar(15),
Salary Money
)

INSERT INTO Employee (EID, EName, Department, Salary) VALUES
(101, 'Amit', 'IT', 100000),
(102, 'Riya', 'HR', 40000),
(103, 'Rahul', 'IT', 55000),
(104, 'Sneha', 'Sales', 45000),
(105, 'Karan', 'HR', 42000),
(106, 'Priya', 'IT', 200000),
(107, 'Vikas', 'Sales', 47000),
(108, 'Neha', 'Finance', 52000)

select * from employee

-- 1. Write a query to display each Department and the total number of employees working in that department from the Employee table.

Select Department, Count(*) AS TotalEmployees
from employee
Group BY Department

-- 2. Write a query to find the Department, the highest salary (MAX), and the average salary (AVG) for each department.
Select Department, MAX(Salary) AS Highest_Salary, AVG(Salary) AS Average_Salary
from employee
Group BY Department

-- 3. Write a query to count how many employees are in each Department.
Select Department, Count(*) AS TotalEmployees
from employee
Group BY Department

-- 4. Write a query to find the minimum salary in each Department
Select Department, MIN(Salary) AS Minimum_Salary
from employee
Group BY Department

-- 5. Write a query to show departments that have more than 2 employees
Select Department , COUNT(EID) AS TotalEmployees
from employee
Group BY Department
Having COUNT(EID) > 2

-- 6. Write a query to show departments where the total salary payout is greater than 100,000
Select Department, SUM(Salary) AS TotalEmployees
from employee
Group By Department
Having SUM(Salary) > 100000

-- 7. Write a query to find departments where the average salary is above 60,000
Select Department, AVG(Salary) AS TotalEmployees
from employee
Group BY Department
Having AVG(Salary) > 60000

-- 8. Write a query to show departments that have exactly 1 employee
Select Department, COUNT(EID) AS TotalEmloyees
from employee
Group BY Department
Having COUNT(EID) = 1

-- 9. Write a query to list all employees sorted by Salary from highest to lowest
Select  * from employee
ORDER BY Salary DESC

-- 10.Write a query to list all employees sorted by Ename in alphabetical order
Select * from employee 
ORDER BY EName

-- 11.Write a query to list all employees sorted by Department alphabetically, and then by Ename alphabetically.
Select  * from employee
ORDER BY Department,EName 



