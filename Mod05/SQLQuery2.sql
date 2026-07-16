USE AdventureWorks2025;
GO

SET STATISTICS IO ON;
GO

SET STATISTICS TIME ON;
GO


sp_help 'Sales.Customer'


SELECT
	s.SalesOrderID
	, c.CustomerID
	, CONCAT_WS(' ', p.FirstName, p.LastName) AS CustomerName
FROM Sales.SalesOrderHeader s
	LEFT JOIN Sales.Customer c
	ON s.CustomerID = c.CustomerID
	LEFT JOIN Person.Person p
	ON c.PersonID = p.BusinessEntityID;

