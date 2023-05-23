/* 
1. Select all info for all orders with no credit card id. (Sales.SalesOrderHeader table)
*/
USE AdventureWorks2012
SELECT SalesOrderID
	  ,RevisionNumber
	  ,OrderDate
	  ,DueDate
	  ,ShipDate
	  ,Status
	  ,OnlineOrderFlag
	  ,SalesOrderNumber
	  ,PurchaseOrderNumber
	  ,AccountNumber
	  ,CustomerID
	  ,SalesPersonID
	  ,TerritoryID
	  ,BillToAddressID
	  ,ShipToAddressID
	  ,ShipMethodID
	  ,CreditCardApprovalCode
	  ,CurrencyRateID
	  ,SubTotal
	  ,TaxAmt
	  ,Freight
	  ,TotalDue
	  ,Comment
	  ,rowguid
	  ,ModifiedDate
FROM Sales.SalesOrderHeader

/*
2. Select all info for all products with a value in the size column. (Production.Product table)
*/
SELECT *
FROM Production.Product
WHERE Size IS NOT NULL  
/*
3. List all the persons who have a middle name (Person.person)
*/
SELECT *
FROM Person.Person
WHERE MiddleName IS NOT NULL 

/*
4. List all salesperson who do not work for territory 1, 6 and 3 (sales.Salerperson)
*/
SELECT *
FROM Sales.SalesPerson
WHERE TerritoryID = '1' OR TerritoryID = '6' OR TerritoryID = '3'
/*
5. List all products which sell for less than $3 or more than $20. Use between key word. 
*/
SELECT *
FROM Production.Product
WHERE ListPrice < 3 OR ListPrice > 20

