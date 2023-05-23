/* 
1. Select all info for all employees hired between January 1, 
2000 and December 31, 2000. (HumanResources.Employee table)
*/
USE AdventureWorks2012
SELECT *
FROM HumanResources.Employee
WHERE HireDate
BETWEEN '2000-01-01' AND '2000-12-31'

/*
-- 2. Select all info about all order details with order quantity equal 
to 10, 20, 30 or 40. (Sales.SalesOrderDetail table)
*/
SELECT *
FROM Sales.SalesOrderDetail 
ORDER BY OrderQty
OFFSET  5 ROWS 

/*
-- 3. Find all Students firstName, LastName born(StudBirthDate) 
between 1990 and 1994. (Students table)
*/
USE SchoolSchedulingExample
SELECT StudFirstName
	  ,StudLastName
	  ,StudBirthDate
FROM dbo.Students
WHERE StudBirthDate
BETWEEN '1990' AND '1994'

/* 
4. Find all students FirstName and LastName Whose major code(StudMajor) 
is 2,4 or 5. (Students table) 
*/
SELECT StudFirstName
	  ,StudLastName
	  ,StudMajor
FROM dbo.Students
WHERE StudMajor = '2' OR StudMajor = '4' OR StudMajor = '5'

/* 
5. Select all StfFirstName, StfLastName for all Staff who are in 
StfZipCode 98052, 98033,98115, 98006,90809. (Staff table)
*/
SELECT StfFirstName
	  ,StfLastname
	  ,StfZipCode
FROM dbo.Staff
WHERE StfZipCode = '98052' OR StfZipCode = '98033' OR StfZipCode = '98115' OR StfZipCode = '98006' OR StfZipCode = '90809'

/* 
6. Find Class details for all Classes which are held in 
room(ClassRoomID) 1231, 1619,3443,3446. (Classes Table)
*/
SELECT *
FROM dbo.Classes
WHERE ClassRoomID = '1231' OR ClassRoomID = '1619' OR ClassRoomID = '3443' OR ClassRoomID = '3446'

/* 
7. Find all classes which have startDate in 2013. (Classes Table) 
*/
SELECT *
FROM dbo.Classes
WHERE StartDate 
BETWEEN '2013-01-01' AND '2013-12-31'