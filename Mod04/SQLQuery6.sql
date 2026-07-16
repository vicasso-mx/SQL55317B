USE AdventureWorksLT2025;
GO


-- El siguiente nombre es permanente
CREATE VIEW SalesLT.getSalesAboveAverage
AS
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
GO







SELECT * FROM SalesLT.getSalesAboveAverage








