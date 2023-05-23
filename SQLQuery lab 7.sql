-- Lab07- A.sql

/*
1- Select all the sales order id’s from sales.salesorderdetail table which had either the order quantity greater
than 40 or the unit price of the item is greater than 3500.
*/
USE AdventureWorks2012;
SELECT *
FROM Sales.SalesOrderDetail
WHERE (OrderQty > '40' OR UnitPrice > '3500')

/*
2-How many products in the production.product table are class ‘L’ and take 4 days to manufacture.
*/
SELECT *
FROM Production.Product
WHERE (Class = 'L' AND DaysToManufacture = '4')

/*
3-Select all info for all employees that were not hired on either 1/3/1999 or 7/1/2001 
and whose title does not begin with either m or v. (276 rows) (HumanResources.Employee table)
*/
SELECT *
FROM HumanResources.Employee
WHERE (HireDate <> '1/3/1999' OR HireDate <>'7/1/2001')
AND JobTitle NOT LIKE '[m,v]%'
-- There are 276 rows

/*
4 - Find all staff who have salary > 50000 and are from state 'wa' (Staff table)
*/
USE SchoolSchedulingExample
SELECT *
FROM dbo.Staff
WHERE (Salary > '50000' AND StfState = 'WA')

/*
5 - Find all staff who either have salary > 50000 or are from state 'wa' (Staff table)
*/
SELECT *
FROM dbo.Staff
WHERE (Salary > '50000' OR StfState = 'WA')

/*
6 - Find all staff who are from state 'wa' and city Tacoma (Staff table)
*/
SELECT *
FROM dbo.Staff
WHERE (StfState = 'WA' AND StfCity = 'Tacoma')

/*
7-Select all info for all Staff that from state wa or ca 
(Staff table)
*/
SELECT *
FROM dbo.Staff
WHERE (StfState = 'WA' OR StfState = 'CA')

/*
8-Select all info for all Staff that NOT from state wa or ca 
(Staff table). Do not use NOT KeyWord.
*/
SELECT *
FROM dbo.Staff
WHERE (StfState <> 'WA' AND StfState <> 'CA')

/*
9-Select all info for all Staff that were not hired(DateHired) in '05/31/1986' or '1/21/1985' 
(Staff table)
*/
SELECT *
FROM dbo.Staff
WHERE (DateHired <> '05/31/1986' AND DateHired <>'1/21/1985')

/*
10-Select all info for all Staff that were not hired on '05/31/1986' or '1/21/1985' 
and whose State is WA. (Staff table)
*/
SELECT *
FROM dbo.Staff
WHERE (DateHired <> '05/31/1986' AND DateHired <>'1/21/1985') AND (StfState LIKE 'WA')

/*
11-Select all info for all Staff that were not hired on '05/31/1986' or '1/21/1985' 
and whose State is neither WA nor CA. (Staff table)
*/
SELECT *
FROM dbo.Staff
WHERE (DateHired <> '05/31/1986' AND DateHired <>'1/21/1985') AND (StfState <> 'WA' AND StfState <> 'CA')
