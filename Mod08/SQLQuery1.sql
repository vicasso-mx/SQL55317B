USE AdventureWorksLT2025;
GO

-- Funciones escalares regresan un dato
SELECT GETDATE(), 'FECHA', 3245;
GO

SELECT * FROM SalesLT.SalesOrderHeader
WHERE OrderDate <= GETDATE()

/*
Las funciones de tabla devuelven un conjunto de resultados, como una tabla.
por eso se escriben en el FROM, y se pueden unir con otras tablas.
*/
SELECT *
FROM sys.fn_helpcollations();
GO



