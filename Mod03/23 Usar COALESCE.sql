-- Funcion para devolver el primer valor diferente de nulo.

SELECT FirstName
	, COALESCE(MiddleName, 'Sin LastName') as MiddleName
FROM SalesLT.Customer

