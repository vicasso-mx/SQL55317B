USE AdventureWorksLT2025; 
GO


SELECT CustomerID AS IdCliente
	, FirstName AS [Cliente.Nombre]
	, LastName AS [Cliente.Apellido]
	, CompanyName AS Empresa
	, EmailAddress AS Correo
FROM SalesLT.Customer 
WHERE CustomerID <= 5 
ORDER BY CustomerID
FOR XML PATH('Cliente'), ROOT('Clientes')

