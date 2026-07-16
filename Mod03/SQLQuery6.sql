-- COLUMNAS CALCULADAS

USE AdventureWorksLT2025;
GO





SELECT ProductID
	, Name
	, ListPrice -- es tipo Money
	, CAST(ListPrice AS decimal(10,2)) AS PrecioDecimal
	, SellStartDate
	, CONVERT( VARCHAR(10), SellStartDate, 103) AS FechaFormateada
	, ListPrice * 0.16 AS IVA
	, ListPrice * 1.16 AS PrecioConIVA
FROM SalesLT.Product



