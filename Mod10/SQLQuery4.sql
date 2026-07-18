USE AdventureWorksLT2025;
GO


-- consultas con nombres de una parte
SELECT *
FROM ErrorLog -- el nombre de la tabla tiene una parte en su nombre (no tiene esquema ni nada más)
-- para que puedan usar los nombres de una parte debemos pertenecer al esquema predeterminado (Default)

-- Esto marcará un error porque no está en mi esquema default
SELECT *
FROM Product



-- consultas con nombres de dos partes
SELECT *
FROM dbo.ErrorLog -- el nombre dbo, es la primera parte y es el esquema de tabla la parte 2 es su nombre 

-- Esto ya no marcará un error porque aunuqe no está en mi esquema default, puedo nombrar su esquema
SELECT *
FROM SalesLt.Product



USE master;
GO
-- consultas con nombres de tres partes
SELECT *
FROM AdventureWorksLt2025.dbo.ErrorLog -- la parte 1 es el nombre de la base datos el nombre dbo, es la segunda parte y es el esquema de tabla la parte 3 es su nombre 

SELECT *
FROM AdventureWorksLt2025.SalesLt.Product





USE master;
GO
-- consultas con nombres de cuatro partes
SELECT *
FROM SRVDubai.AdventureWorksLt2025.dbo.ErrorLog -- la parte 1 es el nombre del server, la parte 2 de la base datos, la parte 3 es el esquema de tabla la parte 4 es su nombre 

SELECT *
FROM SRVDubai.AdventureWorksLt2025.SalesLt.Product


-- OPENQUERY para consultas distribuidas

SELECT * FROM
OPENQUERY( 
	SRVDubai ,
	'SELECT * FROM AdventureWorksLt2025.SalesLt.Product'
	);
GO

