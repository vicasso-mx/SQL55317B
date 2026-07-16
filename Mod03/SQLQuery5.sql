-- Convertir un tipo de dato a otro tipo de dato
USE AdventureWorksLT2025;
GO


-- PROCEDIMIENTO DE SISTEMA PARA SABER LOS TIPOS DE DATOS DE LAS COLUMNAS DE UNA TABLA

sp_help 'SalesLt.Product'
GO

SELECT ProductID
	, Name
	, ListPrice -- es tipo Money
	, CAST(ListPrice AS decimal(10,2)) AS PrecioDecimal
FROM SalesLT.Product




SELECT ProductID
	, Name
	, ListPrice -- es tipo Money
	, CAST(ListPrice AS decimal(10,2)) AS PrecioDecimal
	, SellStartDate
	, CONVERT( VARCHAR(10), SellStartDate, 103) AS FechaFormateada
FROM SalesLT.Product



