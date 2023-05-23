USE AdventureWorks2012
-- 1 - Write a view to show all data from Sales.SalesPerson table
CREATE VIEW viData
AS
SELECT *
FROM Sales.SalesPerson

SELECT *
FROM viData
-- 2 - Write a View to show all customer Ids that have placed orders
--(Sales.SalesOrderHeader sh and Person.Person are joined on CustomerID = BusinessEntityID)
CREATE VIEW viCustomerID
AS
SELECT DISTINCT SH.CustomerID
FROM Sales.SalesOrderHeader AS SH INNER JOIN Person.Person AS PP
ON SH.CustomerID = PP.BusinessEntityID
INNER JOIN Sales.SalesOrderDetail AS SD
ON SD.SalesOrderID = SH.SalesOrderID
WHERE OrderQty IS NOT NULL

SELECT *
FROM viCustomerID
--3 - Write a view to show all sales.SalesPerson who have a not null sales quota
CREATE VIEW viSSNotNull
AS
SELECT *
FROM Sales.SalesPerson
WHERE SalesQuota IS NOT NULL

SELECT *
FROM viSSNotNull