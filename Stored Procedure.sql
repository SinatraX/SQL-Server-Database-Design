-- 1 - Write a stored procedure to show all data from person.person table
USE AdventureWorks2012
GO
CREATE PROC spData
AS
SELECT *
FROM Person.Person

EXEC spData

-- 2 - Write a stored procedure to show all customer Ids that have placed orders
--(Sales.SalesOrderHeader sh and Person.Person are joined on CustomerID = BusinessEntityID)
CREATE PROC spCustomerID
AS
SELECT DISTINCT SH.CustomerID
FROM Sales.SalesOrderHeader AS SH INNER JOIN Person.Person AS PP
ON SH.CustomerID = PP.BusinessEntityID
INNER JOIN Sales.SalesOrderDetail AS SD
ON SD.SalesOrderID = SH.SalesOrderID
WHERE OrderQty IS NOT NULL

EXEC spCustomerID
--3 - Write a stored procedure to show all orders in the year 2005
CREATE PROC spOrderInfo2005
AS
SELECT DISTINCT PP.ProductID
			   ,Name
			   ,OrderDate
FROM Production.Product AS PP INNER JOIN Sales.SalesOrderDetail AS SD
ON  PP.ProductID = SD.ProductID
INNER JOIN Sales.SalesOrderHeader AS SH
ON SH.SalesOrderID = SD.SalesOrderID
WHERE DATEPART(YEAR, OrderDate) = 2005

EXEC spOrderInfo2005