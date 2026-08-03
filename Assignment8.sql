CREATE TABLE Products (
    PID INT,
    PName VARCHAR(50),
    City VARCHAR(30) ,
    Quantity INT ,
    SalesUnit INT 
)

INSERT INTO Products (PID, PName, City, Quantity, SalesUnit)
VALUES
(1,'Laptop','Ahmedabad',45,20),
(2,'Smartphone','Mumbai',60,35),
(3,'Tablet','Vadodara',15,12),
(4,'Printer','Surat',30,18),
(5,'Mouse','Pune',25,14),
(6,'Keyboard','Ahmedabad',55,25),
(7,'Monitor','Mumbai',80,40),
(8,'Speaker','Vadodara',10,8),
(9,'Camera','Surat',0,5),
(10,'Headphone','Pune',70,30),
(11,'SSD','Ahmedabad',90,45),
(12,'Pendrive','Vadodara',20,10),
(13,'Router','Surat',40,22),
(14,'Webcam','Mumbai',35,16),
(15,'Microphone','Pune',50,24)

select * from Products
drop table Products


--- (Single Value Subqueries) --

-- 1. Find all products that have a Quantity greater than the average quantity of all products.
Select * From Products
Where Quantity >
(Select AVG(Quantity) From Products)


-- 2. Display the ProductName of products sold in the same city as 'Laptop'.
Select PName from Products
where City = 
(Select City From Products 
Where PName = 'Laptop' )

-- 3. Find the details of the products with the maximum Quantity.
Select * From Products 
where Quantity = 
( Select MAX(Quantity) from Products )

-- 4. List products whose salesUnit is higher than the salesUnit of ProductID 5.
Select * from Products 
where SalesUnit > 
(Select SalesUnit from Products
where PID = 5 )

-- 5. Find products that have a lower Quantity than the minimum Quantity found in 'Vadodara'.
Select * from Products 
where Quantity <
(select MIN(Quantity) from Products
where City = 'Vadodara' )

-- 6. Display products whose salesUnit is greater than the average salesUnit of products in 'Mumbai'.
Select * from Products
where SalesUnit >
(select AVG(SalesUnit) from Products
where City = 'Mumbai' 

-- 7. Find the product name with the lowest salesUnit.
Select * from Products
where SalesUnit = 
(select MIN(SalesUnit)
from Products)

-- 8. List all products sold in cities that have more than 50 total Quantity across all their products.
Select * from Products
where City IN 
( Select City from Products
Group BY City 
HAVING SUM(Quantity) > 50)

-- 9. Show products whose Quantity is exactly equal to the salesUnit of 'Smartphone'.
select * from Products
where Quantity = 
(select SalesUnit from Products
Where PName = 'Smartphone')

-- 10. Find the city which has the product with the highest salesUnit.
Select City from Products
where SalesUnit = 
(select MAX(SalesUnit)
from Products)

---- (IN, ALL, ANY & Correlated) --- 

-- 11. Find all products sold in cities where at least one product has a Quantity of zero.
Select * from Products
where City IN 
( select City from Products
where Quantity = 0)

-- 12. List products whose salesUnit is greater than the salesUnit of all products in 'Surat'.
select * from Products 
where SalesUnit > All
(select SalesUnit from Products
where City = 'Surat' )

-- 13. Find products that belong to cities where the average salesUnit is greater than 10.
select * from Products
where City IN
(select City from Products 
Group BY City
HAVING AVG(SalesUnit) > 10 )

-- 14.Display products that have a Quantity greater than any product's Quantity in 'Pune'.
select * from Products
where Quantity > ANY
(select Quantity from Products
where City = 'Pune' )

-- 15. Find all products whose ProductName is the same as any product sold in 'Ahmedabad'.
select * from Products
where PName = ANY
(
select PName from Products 
where City = 'Ahmedabad' )

-- 16. Select products where the Quantity is greater than the average Quantity of their own city.
Select * from Products p1
where Quantity > 
(Select AVG(Quantity) from Products p2
where p1.City = p2.City )

-- 17. Find cities where the total salesUnit is higher than the total salesUnit of 'Vadodara'.
Select City from Products
GROUP BY City 
HAVING SUM(SalesUnit) >
( Select SUM(SalesUnit) from Products 
where City = 'Vadodara')

-- 18. List products that are sold in the city that has the maximum variety (count) of products.
SELECT *
FROM Products
WHERE City =
(
    SELECT TOP 1 City
    FROM Products
    GROUP BY City
    ORDER BY COUNT(*) DESC
)

-- 19. Find the second highest Quantity from the Product table using a subquery.
SELECT MAX(Quantity) AS SecondHighestQuantity
FROM Products
WHERE Quantity <
(
    SELECT MAX(Quantity)
    FROM Products
)

-- 20.Display the ProductName and a calculated column showing the difference between its Quantity and the global average Quantity.
SELECT
    PName,
    Quantity,
    Quantity -
    (SELECT AVG(Quantity)
        FROM Products ) 
    AS Difference_From_Average
FROM Products










