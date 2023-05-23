Use AdventureWorks2012
Select *
From Person.Person

/* A. each person from the Person.Person table. 
B. Get contact id, first name, middle name, last name for each person.*/
Select    BusinessEntityID
		 ,FirstName 
		 ,MiddleName
		 ,LastName
From Person.Person


Use SchoolSchedulingExample


Select *
From dbo.Faculty
-- A. There are 24 rows in Faculty table.

Select SubjectName
From dbo.Subjects

-- B. There are 56 Subjects.