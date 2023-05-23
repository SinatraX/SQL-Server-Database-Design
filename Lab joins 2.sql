USE AdventureWorks2012
--Q1
--Find the First Name and Last name of all Persons
--All employees are listed in the HumanResources.Employee table
--Person.peron table has the names of everyone
--Find the firstName and lastName of everyone, and if they are employees than the job titles
SELECT PP.FirstName
	  ,PP.LastName
	  ,HRE.JobTitle
FROM HumanResources.Employee AS HRE FULL JOIN Person.Person AS PP
ON PP.BusinessEntityID = HRE.BusinessEntityID
 
--Q2

--Find the First Name and Last name of all Employees
--All employees are listed in the HumanResources.Employee table
--Person.peron table has the names of everyone
--Find the firstName and lastName of everyone, and if they are employees than the job titles
--Write the query using left outer join and then using right outer join
SELECT PP.FirstName
	  ,PP.LastName
	  ,HRE.JobTitle
FROM HumanResources.Employee AS HRE LEFT OUTER JOIN Person.Person AS PP
ON PP.BusinessEntityID = HRE.BusinessEntityID
UNION 
SELECT PP.FirstName
	  ,PP.LastName
	  ,HRE.JobTitle
FROM HumanResources.Employee AS HRE RIGHT OUTER JOIN Person.Person AS PP
ON PP.BusinessEntityID = HRE.BusinessEntityID

--Q3

--Find the First Name and Last name 
--All customers are listed in the Sales.Customers table
--Person.peron table has the names of everyone
--for simplicity lets assume that Sales.Customers and Person.person are related on customers.customerID = p.BusinessEntityID
-- If a person is a customer select the customerID, if not levae it a blank
SELECT PP.FirstName
	  ,PP.LastName
	  ,SC.CustomerID
FROM Sales.Customer AS SC FULL JOIN Person.Person AS PP
ON SC.CustomerID = PP.BusinessEntityID

--Q4

--Find the First Name and Last name of all persons who are not customers
--All customers are listed in the Sales.Customers table
--Person.peron table has the names of everyone
--for simplicity lets assume that Sales.Customers and Person.person are related on customers.customerID = p.BusinessEntityID
SELECT PP.FirstName
	  ,PP.LastName
FROM Person.Person AS PP LEFT OUTER JOIN Sales.Customer AS SC
ON SC.CustomerID = PP.BusinessEntityID
WHERE SC.CustomerID IS NULL

--Q5

--Find the First Name and Last name of all persons who are not employees
--All employees are listed in the HumanResources.Employees table
--Person.peron table has the names of everyone
--HumanResources.Employee and Person.person are related on BusinessEntityID
SELECT PP.FirstName
	  ,PP.LastName
FROM Person.Person AS PP LEFT OUTER JOIN HumanResources.Employee AS HRE
ON HRE.BusinessEntityID = PP.BusinessEntityID
WHERE HRE.JobTitle IS NULL

--Q6

--All products that are listed are present in the Sales.SalesOrderDetails table
--All products available are listed in the production.product table
--Find all the products Names that are ORDERED
-- If a product is ordered multiple times show it multiple times
SELECT PP.NAME
FROM Sales.SalesOrderDetail AS SSOD FULL JOIN Production.Product AS PP
ON SSOD.ProductID = PP.ProductID
WHERE OrderQty IS NOT NULL
ORDER BY PP.NAME

--Q7

--All products that are listed are present in the Sales.SalesOrderDetails table
--All products available are listed in the production.product table
--Find all the products Names that are ORDERED
SELECT PP.NAME
FROM Sales.SalesOrderDetail AS SSOD FULL JOIN Production.Product AS PP
ON SSOD.ProductID = PP.ProductID
WHERE OrderQty IS NOT NULL
GROUP BY PP.NAME, SSOD.OrderQty
ORDER BY PP.NAME

--Q8

--All products that are listed are present in the Sales.SalesOrderDetails table
--All products available are listed in the production.product table
--Find all the products Names that are ORDERED
-- If a product is ordered multiple times show it ONLY ONCE
SELECT PP.NAME
FROM Sales.SalesOrderDetail AS SSOD FULL JOIN Production.Product AS PP
ON SSOD.ProductID = PP.ProductID
WHERE OrderQty IS NOT NULL
GROUP BY PP.NAME
ORDER BY PP.NAME