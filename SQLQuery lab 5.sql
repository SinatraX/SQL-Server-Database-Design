/*
--1 --  From Person.Person table select any person whose last name 
has an a as the second character. Sort the results by last name.
*/
USE AdventureWorks2012
SELECT *
FROM Person.Person
WHERE LastName LIKE '_a%'
/*
--2 -- From Person.Person table select any person whose last name 
begins with a or c or e. Sort the results by first name
*/
SELECT *
FROM Person.Person
WHERE LastName LIKE 'a%'OR LastName like 'c%' OR LastName like 'e%'
ORDER BY FirstName
/*
--3 -- From Person.Person table select any person whose last name 
has the letters a or c or e in the second character position
*/
SELECT *
FROM Person.Person
WHERE LastName LIKE '_a%'OR LastName like '_c%' OR LastName like '_e%'
/*
--4 -- From Person.Person table select any person whose last name
does NOT begin with a or c or e
*/
SELECT *
FROM Person.Person
WHERE LastName NOT LIKE '[a,c,e]%'
/*
--5 -- From Person.Person table select any person whose last name 
has the letters ne together anywhere in the name
*/
SELECT *
FROM Person.Person
WHERE LastName LIKE '%ne%' 
/*
--6 -- From Person.Person table select any person whose last name 
begins with d through f
*/
SELECT *
FROM Person.Person
WHERE LastName BETWEEN 'd' AND 'f'
ORDER BY LastName
/*
--7 -- From Person.Person table select any person whose last name
does NOT begin with d through f:	
*/
SELECT *
FROM Person.Person
WHERE LastName NOT LIKE '[d,e,f]%'

/*
--8 How many students have StudFirstName Starting with A?(Students Table)
*/
USE SchoolSchedulingExample
SELECT *
FROM dbo.Students
WHERE StudFirstName LIKE 'a%'
-- There are no studens have StudFirstName Starting with A.
/*
--9 How many students have StudFirstName Starting with B and ends with Y?(Students Table)
*/
USE SchoolSchedulingExample
SELECT *
FROM dbo.Students
WHERE StudFirstName LIKE 'b%%y'
-- Student Betsy Stadick has StudFirstName starting with B and ends with Y.
/*
--10 We are migrating to a new system, and Some Special charaters might pose a problem, for example '#'.
How many students have used character '#' in the StudStreetAddress?(Students Table)
*/
USE SchoolSchedulingExample
SELECT *
FROM dbo.Students
WHERE StudStreetAddress LIKE '%#%'
-- Student Michael Viescas's address used character '#' in the StudStreetAddress.
/*
--11 How many students have 5 character last name?(Students Table)
*/
USE SchoolSchedulingExample
SELECT *
FROM dbo.Students
WHERE StudLastName LIKE '_____'
-- There are three students have 5 character last name: Smith, Jones, and Pundt.
/*
--12 Find the student whose last name, has e has second character, and ends with y?(Students Table) 
*/
USE SchoolSchedulingExample
SELECT *
FROM dbo.Students
WHERE StudLastName LIKE '_e%%y'
-- John Kennedy is the student whose last name, has e has second character, and ends with y.