USE AdventureWorksLT2019

SELECT CustomerID, LastName, CompanyName
FROM SalesLT.Customer
--
SELECT Name, ProductNumber, Color
FROM SalesLT.Product
--
SELECT CustomerID, SalesOrderID
FROM SalesLT.SalesOrderHeader
--
USE AdventureWorks2014

SELECT BusinessEntityID, LoginID, JobTitle
FROM HumanResources.Employee
WHERE JobTitle = 'Research and Development Engineer'
--
SELECT FirstName, LastName, MiddleName
FROM Person.Person
WHERE MiddleName = 'J'
--
SELECT *
FROM Production.ProductCostHistory
WHERE ModifiedDate = '2003-06-17'
--
SELECT BusinessEntityID, LoginID, JobTitle
FROM HumanResources.Employee
WHERE JobTitle <> 'Research and Development Engineer'
--
SELECT BusinessEntityID, FirstName, MiddleName, LastName, ModifiedDate
FROM Person.Person
WHERE ModifiedDate > '2000-12-29'
--
SELECT BusinessEntityID, FirstName, MiddleName, LastName, ModifiedDate
FROM Person.Person
WHERE ModifiedDate <> '2000-12-29'
--
SELECT BusinessEntityID, FirstName, MiddleName, LastName, ModifiedDate
FROM Person.Person
WHERE ModifiedDate BETWEEN '2000-12-01' AND '2000-12-31'
--
SELECT ProductID, Name, Color
FROM Production.Product
WHERE Color IS NULL
--
SELECT ProductID, Name, Color
FROM Production.Product
WHERE Color <> 'Blue'
--
SELECT ProductID, Name, Size, Color
FROM Production.Product
WHERE COLOR IS NOT NULL OR Style IS NOT NULL OR Color IS NOT NULL
--
SELECT BusinessEntityID, FirstName, MiddleName, LastName
FROM Person.Person
ORDER BY LastName, FirstName, MiddleName
--
SELECT BusinessEntityID, FirstName, MiddleName, LastName
FROM Person.Person
ORDER BY LastName DESC, FirstName DESC, MiddleName DESC
--
SELECT AddressLine1, (City + ' ' + PostalCode)
FROM Person.Address
--
SELECT ProductID, ISNULL(Color, 'No Color'), Name
FROM Production.Product
--
SELECT Name + ': ' + ISNULL(Color, 'No Color')
FROM Production.Product
--
SELECT MaxQty - MinQty, SpecialOfferID, Description
FROM Sales.SpecialOffer
--
SELECT MinQty * DiscountPct, SpecialOfferID, Description
FROM Sales.SpecialOffer
--
SELECT DiscountPct * ISNULL(MaxQty, 10), SpecialOfferID, Description
FROM Sales.SpecialOffer
--
SELECT LEFT(AddressLine1, 10), AddressLine1
FROM Person.Address
--
SELECT SUBSTRING(addressline1, 10, 15), AddressLine1
FROM Person.Address
--
SELECT UPPER(FirstName), UPPER(LastName)
FROM Person.Person
--
SELECT SUBSTRING(ProductNumber, CHARINDEX('-', ProductNumber) + 1, 23) as what, ProductNumber
FROM Production.Product
--
SELECT DATEDIFF(day, OrderDate, ShipDate), OrderDate, ShipDate
FROM Sales.SalesOrderHeader
--
SELECT DATE(OrderDate), ShipDate
FROM Sales.SalesOrderHeader
