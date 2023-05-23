--q1
-- The Sales.SalesOrderHeader and Sales.SalesOrderDetail are related on SalesOrderID
-- Find the Customer ID and all the productsID they ordered. 
-- If a product is ordered multiple times by the same customer it will be displayed multiple times
USE AdventureWorks2012
SELECT SSOH.CustomerID
	  ,SSOD.ProductID
FROM Sales.SalesOrderHeader AS SSOH INNER JOIN Sales.SalesOrderDetail AS SSOD
ON SSOH.SalesOrderID = SSOD.SalesOrderID

--q2
-- The Sales.SalesOrderHeader and Sales.SalesOrderDetail are related on SalesOrderID
-- And Sales.SalesOrderDetails and Production.Product table are related on ProductID 
-- Find the Customer ID and all the product Names they ordered. 
-- If a product is ordered multiple times by the same customer it will be displayed multiple times
SELECT SSOH.CustomerID
	  ,PP.Name
FROM Sales.SalesOrderHeader AS SSOH INNER JOIN Sales.SalesOrderDetail AS SSOD
ON SSOH.SalesOrderID = SSOD.SalesOrderID
INNER JOIN Production.Product AS PP
ON SSOD.ProductID = PP.ProductID

--q3
--Find the First Name and Last name of all Employees
--All employees are listed in the HumanResources.Employee table
--Person.peron table has the names of everyone
--HumanResources.Employee and Person.person are related on BusinessEntityID
SELECT PP.FirstName
	  ,PP.LastName
FROM HumanResources.Employee AS HRE INNER JOIN Person.Person AS PP
ON HRE.BusinessEntityID = PP.BusinessEntityID

--q4
--Find the First Name and Last name of all Customers
--All customers are listed in the Sales.Customers table
--Person.peron table has the names of everyone
--for simplicity lets assume that Sales.Customers and Person.person are related on customers.customerID = p.BusinessEntityID
SELECT PP.FirstName
	  ,PP.LastName
FROM Sales.Customer AS SC INNER JOIN Person.Person AS PP
ON SC.CustomerID = PP.BusinessEntityID