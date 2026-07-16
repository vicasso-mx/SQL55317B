USE AdventureWorksLT2025;
GO


-- Necesito las ventas cuyo total de venta TotalDue sea mayor al promedio de venta.

SELECT
	AVG(TotalDue) as PromedioVentaCliente
FROM SalesLT.SalesOrderHeader


SELECT
	CustomerID
	, SalesOrderID
	, OrderDate
	, TotalDue
FROM SalesLT.SalesOrderHeader
WHERE TotalDue > 29884.4873



-- LA SIGUIENTE CONSULTA TIENE OTRA CONSULTA, POR LO TANTO, ES UNA SUBCONSULTA
SELECT
	CustomerID
	, SalesOrderID
	, OrderDate
	, TotalDue
FROM SalesLT.SalesOrderHeader
WHERE TotalDue > (
					SELECT
						AVG(TotalDue) as PromedioVentaCliente
					FROM SalesLT.SalesOrderHeader
				)


-- Dame la lista de clientes que tengan al menos una venta
-- subconsulta correlacionada
SELECT 
	c.CustomerID
	, c.FirstName
	, c.LastName
	, c.CompanyName
FROM SalesLT.Customer as c
WHERE EXISTS
(
	SELECT 1
	FROM SalesLT.SalesOrderHeader as o
	WHERE o.CustomerID = c.CustomerID
	
)

