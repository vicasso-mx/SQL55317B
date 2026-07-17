USE AdventureWorksLT2025;
GO

SELECT ProductNumber AS [No. Producto]
	, Name AS Nombre
	, ListPrice as Precio
	, Color
	, SellStartDate as [Primer Venta]
INTO dbo.Informe -- INTO crea una tabla pero esta consulta no la puedo ejecutar más de una vez
FROM SalesLT.Product;
GO


SELECT * FROM dbo.Informe;
GO



