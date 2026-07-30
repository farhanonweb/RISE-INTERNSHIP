-- SQL Joins Assignment -- 

Create Table Department (
DepartmentID INT,
DepartmentName Varchar(50),
Location Varchar(50)
)

INSERT INTO Department VALUES
(10,'IT','Ahmedabad'),
(20,'HR','Vadodara'),
(30,'Finance','Surat'),
(40,'Sales','Rajkot'),
(50,'Marketing','Mumbai')

Create Table Employee(
EmployeeID INT,
EmployeeName Varchar(50),
DepartmentID INT,
ManagerID INT NULL
)

INSERT INTO Employee VALUES
(1,'Suresh',10,NULL),
(2,'Ramesh',10,1),
(3,'Mahesh',20,1),
(4,'Priya',30,3),
(5,'Neha',10,1),
(6,'Amit',40,2),
(7,'Karan',30,3),
(8,'Pooja',20,3),
(9,'Rahul',40,2),
(10,'Anjali',50,NULL)


Create Table Project (
ProjectID INT,
ProjectName Varchar(100),
DepartmentID INT,
EmployeeID INT NULL
)

INSERT INTO Project VALUES
(101,'Employee Management',10,1),
(102,'Payroll System',30,4),
(103,'Website Development',10,2),
(104,'Recruitment Portal',20,3),
(105,'Sales Dashboard',40,6),
(106,'Inventory System',10,5),
(107,'Marketing Campaign',50,10),
(108,'Finance Report',30,7),
(109,'CRM System',40,NULL),
(110,'HR Analytics',20,NULL)




-- 1. Display each employee's name and their corresponding department name.
Select Employee.EmployeeName, Department.DepartmentName
from Employee
INNER JOIN Department
ON Employee.DepartmentID = Department.DepartmentID

-- 2. List all projects along with the name of the employee assigned to them.
Select P.ProjectName , E.EmployeeName
from Project P
INNER JOIN Employee E
ON P.EmployeeID = E.EmployeeID

-- 3. Show the names of employees and the names of their managers.
Select E.EmployeeName AS Employee,
       M.EmployeeName AS Manager
from Employee E
INNER JOIN Employee M
ON E.ManagerID = M.EmployeeID

-- 4. Display the Project ID and the Department ID for every project.
SELECT ProjectID, DepartmentID
FROM Project

-- 5. List employees who work in the 'IT' department.
Select E.EmployeeName
from Employee E 
INNER JOIN Department D
ON E.DepartmentID = D.DepartmentID
WHERE D.DepartmentName = 'IT'

-- 6. Display employee names and their manager names for all employees in department 10.
SELECT E.EmployeeName AS Employee,
       M.EmployeeName AS Manager
FROM Employee E
INNER JOIN Employee M
ON E.ManagerID = M.EmployeeID
WHERE E.DepartmentID = 10

-- 7. Show all projects handled by ‘Suresh’.
Select P.ProjectName
from Project p 
INNER JOIN Employee E
ON P.EmployeeID = E.EmployeeID
Where E.EmployeeName = 'Suresh'

-- 8. Find the department name associated with Project ID 101.
Select D.DepartmentName
From Project P
INNER JOIN Department D
ON P.DepartmentID = D.DepartmentID
Where P.ProjectID = 101

-- 9. List all employees whose manager's name is 'Suresh'.
SELECT E.EmployeeName
FROM Employee E
INNER JOIN Employee M
ON E.ManagerID = M.EmployeeID
WHERE M.EmployeeName = 'Suresh'

 -- 10.Display the count of employees in each department name.
 SELECT D.DepartmentName,
       COUNT(E.EmployeeID) AS TotalEmployees
FROM Department D
INNER JOIN Employee E
ON D.DepartmentID = E.DepartmentID
GROUP BY D.DepartmentName

-- 11. List all departments and the employees working in them (including departments with no employees).
SELECT D.DepartmentName,
       E.EmployeeName
FROM Department D
LEFT JOIN Employee E
ON D.DepartmentID = E.DepartmentID

-- 12.Display all employees and the projects they are assigned to (including those with no projects).
SELECT E.EmployeeName,
       P.ProjectName
FROM Employee E
LEFT JOIN Project P
ON E.EmployeeID = P.EmployeeID

-- 13. Show the names of employees, their department names, and their manager names in one result.
SELECT E.EmployeeName,
       D.DepartmentName,
       M.EmployeeName AS ManagerName
FROM Employee E
LEFT JOIN Department D
ON E.DepartmentID = D.DepartmentID
LEFT JOIN Employee M
ON E.ManagerID = M.EmployeeID

-- 14. Find all projects and the department name they belong to.
SELECT P.ProjectName,
       D.DepartmentName
FROM Project P
INNER JOIN Department D
ON P.DepartmentID = D.DepartmentID

-- 15. List all managers and the names of employees reporting to them (including managers with no reporters).
SELECT M.EmployeeName AS ManagerName,
       E.EmployeeName AS EmployeeName
FROM Employee M
LEFT JOIN Employee E
ON M.EmployeeID = E.ManagerID;

-- 16. Find employees who are NOT assigned to any project.
SELECT E.EmployeeName
FROM Employee E
LEFT JOIN Project P
ON E.EmployeeID = P.EmployeeID
WHERE P.ProjectID IS NULL;

-- 17. Display the names of all employees and the names of projects, but only for those in the 'IT' department.
SELECT E.EmployeeName,
       P.ProjectName
FROM Employee E
INNER JOIN Project P
ON E.EmployeeID = P.EmployeeID
INNER JOIN Department D
ON E.DepartmentID = D.DepartmentID
WHERE D.DepartmentName = 'IT';

-- 18. Show the names of managers who are managing employees in the 'Finance' department.
SELECT DISTINCT M.EmployeeName AS ManagerName
FROM Employee E
INNER JOIN Employee M
ON E.ManagerID = M.EmployeeID
INNER JOIN Department D
ON E.DepartmentID = D.DepartmentID
WHERE D.DepartmentName = 'Finance';

-- 19. Display Department Name, Employee Name, and Project Name for all matches.
SELECT D.DepartmentName,
       E.EmployeeName,
       P.ProjectName
FROM Department D
INNER JOIN Employee E
ON D.DepartmentID = E.DepartmentID
INNER JOIN Project P
ON E.EmployeeID = P.EmployeeID;

-- 20. List all projects and the manager's name responsible for the employee assigned to that project.
SELECT P.ProjectName,
       M.EmployeeName AS ManagerName
FROM Project P
INNER JOIN Employee E
ON P.EmployeeID = E.EmployeeID
INNER JOIN Employee M
ON E.ManagerID = M.EmployeeID;




















