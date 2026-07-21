-- 1. Write a query to display all employees whose salary is greater than 50,000.
Create Table employees(
EmployeeId INT,
Name Varchar(30),
Department Varchar(30),
Salary INT,
Bonus INT,
Experience INT,
City Varchar(30)
)

Insert Into employees Values
(101,'Farhan','HR',45000,5000,2,'Delhi'),
(102,'Aman','Marketing',55000,6000,3,'Mumbai'),
(103,'Saad','Electrical',65000,3000,1,'Goa'),
(104,'Saadiya','Civil',35000,9000,1,'Goa'),
(106,'Sahal','Mechinical',50000,1000,1,'Pune'),
(107,'Fahad','IT',90000,1000,7,'Pune'),
(108,'Sahil','IT',40000,1000,8,'Dubai')

SELECT * FROM employees

Select * From employees 
where Salary > 50000


-- 2. Retrieve employees who work in the IT department and have more than 5 years of experience.
Select * From employees
where Department = 'IT' AND Experience > 5

-- 3. Write a query to display employees whose salary is between 45,000 and 60,000.
select * from employees
where Salary Between 45000 AND 60000

-- 4. Display employees whose city is either Mumbai or Delhi.
select * from employees
where City IN ('Mumbai','Delhi')

-- 5. Write a query to display employee name along with their annual income.
select Name, Salary * 12 AS Annual_Income From employees

-- 6. Find employees whose name starts with the letter 'A'.
select * from employees
where Name Like 'A%'

-- 7. Find the highest salary among all employees.
SELECT MAX(Salary) AS Highest_Salary
FROM employees

-- 8. Find the total bonus paid to employees in the IT department.
SELECT SUM(Bonus) AS TotalBonus from employees
where Department = 'IT'

-- 9. Display the minimum and maximum experience of employees.
SELECT MAX(Experience) AS MostExperience,
       MIN(Experience) AS MinExperience
FROM employees


-- 10. Count the number of employees in each department.
SELECT Department, Count(*) from employees
Group BY Department

-- 11. Find the total bonus paid to employees in the IT department.
SELECT SUM(Bonus) AS Total_Bonus
FROM employees
WHERE Department = 'IT'


-- 12. Write an SQL statement to add a new column named Email of type VARCHAR(100) to the Employees table.
ALTER TABLE employees
ADD Email VARCHAR(100);


-- 13. Write an SQL statement to modify the Salary column so that it becomes DECIMAL(10,2).
ALTER TABLE employees
ALTER COLUMN Salary DECIMAL(10,2)


-- 14. Write an SQL statement to drop the Bonus column from the Employees table.
ALTER TABLE Employees
DROP COLUMN Bonus;


