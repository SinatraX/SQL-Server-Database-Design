-- Lab03A
--1

/* A - Get product id, name and selling start date 
for all products and sort the results in ascending 
order of selling start date. (Production.Product table)
*/
USE AdventureWorks2012
SELECT ProductID
	  ,Name
	  ,SellStartDate
FROM Production.Product
ORDER BY SellStartDate
/*
B - Get product id, name and selling start date 
for all products and sort the results in ascending 
order of name. (Production.Product table)
*/
SELECT ProductID
	  ,Name
	  ,SellStartDate
FROM Production.Product
ORDER BY Name
/*
C - Get product id, name and selling start date
for all products and sort the results in descending order of selling start date. 
(Production.Product table)
*/
SELECT ProductID
	  ,Name
	  ,SellStartDate
FROM Production.Product
ORDER BY SellStartDate DESC

--2 USE SchoolSchedulingExample

/*
A- Get all information about all students arranged in ascending order by StudLastName 
*/
USE SchoolSchedulingExample
SELECT *
FROM dbo.Students
ORDER BY StudLastName
/*
B- Get all information about all students arranged in order by StudBirthDate, 
the youngest first and the oldest last.
USE SchoolSchedulingExample 
*/
SELECT *
FROM dbo.Students
ORDER BY StudBirthDate DESC

/* C- Get all information from the students table, arranged by StudState.
If more than one student are from the same state, arrange them by StudBirthDate */
SELECT *
FROM dbo.Students
ORDER BY StudState