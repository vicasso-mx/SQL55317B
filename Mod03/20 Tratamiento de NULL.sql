USE AdventureWorksLT2025;
GO


SELECT *
FROM SalesLT.Address
where AddressLine2 IS NOT NULL -- La clausula null es para defnir valoes nulos



SELECT *
FROM SalesLT.Address
where AddressLine2 = '' -- Esto no significa nulo, significa valor vacío.


SELECT *
FROM SalesLT.Address
where AddressLine2 IS NULL -- La clausula null es para defnir valoes nulos


-- Funcion para devolver el primer valor diferente de nulo.

SELECT FirstName
	, COALESCE(MiddleName, 'Sin LastName') as MiddleName
FROM SalesLT.Customer

