USE AdventureWorks2025;
GO


-- 31465 Filas
SELECT
	CustomerID
FROM Sales.SalesOrderHeader

-- 19119 Filas
SELECT DISTINCT
	CustomerID
FROM Sales.SalesOrderHeader

-- 19119 Filas
SELECT
	CustomerID, COUNT(*) As NumeroVentas
FROM Sales.SalesOrderHeader
GROUP BY CustomerID

-- Lo siguiente marcará un error, porque no estoy agrupando y estoy usando una función de agregado.
SELECT DISTINCT
	CustomerID, COUNT(*) As NumeroVentas
FROM Sales.SalesOrderHeader


-- Lo siguiente marcará un error, porque estoy usando una columna que no está agrupada: CustomerID
SELECT
	CustomerID, COUNT(*) As NumeroVentas
FROM Sales.SalesOrderHeader

-- Es correta la siguiente consulta
SELECT
	COUNT(*) As NumeroVentas
FROM Sales.SalesOrderHeader






SELECT
	CustomerID
	, COUNT(*) As NumeroVentas
	, SUM(TotalDue) as TotalVentas
	, AVG(TotalDue) as PromedioVentaCliente
	, MIN(TotalDue) as VentaMínima
	, MAX(TotalDue) as VentaMáxima
FROM Sales.SalesOrderHeader
GROUP BY CustomerID
ORDER BY TotalVentas DESC


-- Qué pasa si uso WHERE en lugar de Having
-- 74 filas
SELECT
	CustomerID
	, COUNT(*) As NumeroVentas
	, SUM(TotalDue) as TotalVentas
	, AVG(TotalDue) as PromedioVentaCliente
	, MIN(TotalDue) as VentaMínima
	, MAX(TotalDue) as VentaMáxima
FROM Sales.SalesOrderHeader
WHERE TotalDue > 80000
GROUP BY CustomerID
ORDER BY TotalVentas DESC


-- Si uso HAVING correctamente
-- 25 filas
SELECT
	CustomerID
	, COUNT(*) As NumeroVentas
	, SUM(TotalDue) as TotalVentas
	, AVG(TotalDue) as PromedioVentaCliente
	, MIN(TotalDue) as VentaMínima
	, MAX(TotalDue) as VentaMáxima
FROM Sales.SalesOrderHeader
GROUP BY CustomerID
HAVING AVG(TotalDue) > 80000
ORDER BY TotalVentas DESC
