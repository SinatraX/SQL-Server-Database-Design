--1
/* A - Get product id, name and selling start date 
for all products that started selling after 
07/01/2002. (Production.Product table)
*/
USE AdventureWorks2012
SELECT ProductID, Name[product], 
CAST(SellStartDate as DATE) as SellStartDate
FROM Production.Product
WHERE SellStartDate > 2002-07-01
/*B - Get product id and name for all products have ListPrice is 
greater than 200. (Production.Product table) */
SELECT ProductID
      ,Name
	  ,ListPrice
FROM Production.Product 
WHERE ListPrice > 200
ORDER BY ListPrice ASC
-- There are 189 products greater than 200.

--2
-- A - Get all information for students from TX. (Students Table)
USE SchoolSchedulingExample
SELECT * 
FROM dbo.Students
WHERE StudState = 'TX'
-- B - Get First and Last name of all male students. Hint StudGender will be M. (Students Table)
SELECT StudFirstName
      ,StudLastName
FROM dbo.Students
WHERE StudGender = 'M'
-- C - Get StaffID for all Professors. Hint Title will be Professor. (Faculty Table)
SELECT StaffID
FROM dbo.Staff
-- D - Get SbjectID and SubjectName for all classes with class size greater than 40. (Subjects Table)
SELECT SubjectID
      ,SubjectName
FROM dbo.Subjects
WHERE SubjectEstClassSize >= 40
-- E - Because of faculty shortage, Acc 210 will not be offered anymore.
--Find SubjectID and SubjectName out all the subject that need ACC 210 as pre-requist. 
--Hint SubjectPreReq column.(Subjects Table)
SELECT SubjectID
	  ,SubjectName
FROM dbo.Subjects
WHERE SubjectPreReq = 'Acc 210'
-- F - Get the StfFirstName, StfLastName and Salary for all the Staff. (Staff Table)
SELECT StfFirstName
	  ,StfLastname
	  ,Salary
FROM dbo.Staff
-- G - University is planning to give all employees 10% bonus. 
     -- Get the StfFirstName, StfLastName, Salary and Bouns. (Staff Table) (Hint Bonus will be a calculated field).
SELECT StfFirstName
	  ,StfLastname
	  ,Salary * 0.10 AS 'Bonus'
FROM dbo.Staff
ORDER BY Salary * 0.10 DESC
-- H Get StfFirstName, StfLastName for all Staff who will get more than $5000 in bonus. 
-- The bonus is 10% of Salary. (Staff Table)
SELECT StfFirstName
      ,StfLastname
	  ,Salary * 0.10 AS 'Bonus'
FROM dbo.Staff
WHERE Salary * 0.10 > 5000
ORDER BY Salary * 0.10 ASC
-- Employees get a bonus of more than 5,000 in staff database.