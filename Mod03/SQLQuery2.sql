USE AdventureWorksLT2025
GO

SELECT *
FROM SalesLT.Product;
GO


SELECT ProductNumber, Name, Color, ListPrice, SellStartDate
FROM SalesLT.Product;
GO


SELECT ProductNumber
	, Name
	, ListPrice
	, SellStartDate
	, Color
FROM SalesLT.Product;
GO


SELECT ProductNumber
	, Name
	, ListPrice
	--, SellStartDate
	, Color
FROM SalesLT.Product;
GO



SELECT ProductNumber
	, [Name]
	, ListPrice
	--, SellStartDate
	, Color
FROM SalesLT.[Product];
GO



SELECT ProductNumber AS [No. Producto]
	, Name AS Nombre
	, ListPrice as Precio
	, Color
	, SellStartDate as [Primer Venta]
FROM SalesLT.Product;
GO


SELECT *
FROM SalesLT.vGetAllCategories
