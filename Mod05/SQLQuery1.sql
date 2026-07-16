USE AdventureWorks2025;
GO

SET STATISTICS IO ON; -- Muestra las paginas (8KB) leidas
GO

SET STATISTICS TIME ON; -- Muestra el tiempo usado en procesar una consulta
GO


SELECT * FROM Person.ContactType;
GO
/*
SQL Server parse and compile time: 
   CPU time = 0 ms, elapsed time = 13 ms.

(20 filas afectadas)
Table 'ContactType'. .
Scan count 1 - Scan = recorrer toda la tabla

Leí dos páginas de la memoria, pero una la tuve que leer desde disco.
logical reads 2
physical reads 1


 SQL Server Execution Times:
   CPU time = 0 ms,  elapsed time = 4 ms.
*/

--sp_help 'Person.Person'

-- 3817 páginas
SELECT LastName, FirstName, MiddleName, Suffix, Title
FROM Person.Person

-- logical reads 106 páginas
SELECT LastName, FirstName, BusinessEntityID
FROM Person.Person


-- logical reads 29 páginas
SELECT LastName, FirstName, MiddleName, Suffix, Title
FROM Person.Person
WHERE LastName = 'Alan'

-- logical reads 2 páginas leidas
SELECT LastName, FirstName, BusinessEntityID
FROM Person.Person
WHERE LastName = 'Alan'




SELECT LastName, FirstName, MiddleName, Suffix, Title
FROM Person.Person
WHERE LastName = 'Alan'



SELECT LastName, FirstName, MiddleName, Suffix, Title
FROM Person.Person
WHERE LastName = 'Smith'



SELECT LastName, FirstName, MiddleName, Suffix, Title
FROM Person.Person
WHERE LastName = 'Alan'
ORDER BY Title;
go


sp_help 'Person.Person'
go


SELECT LastName, FirstName, MiddleName, Suffix
FROM Person.Person
WHERE LastName = 'Alan'
ORDER BY LastName


select distinct OnlineOrderFlag
from sales.SalesOrderHeader





SELECT OnlineOrderFlag, SalesOrderID OrdenEnCamino
from sales.SalesOrderHeader
WHERE OnlineOrderFlag = 0



