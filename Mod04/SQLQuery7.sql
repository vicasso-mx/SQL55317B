USE AdventureWorksLT2025;
GO

/*
CTE, es un conjunto de resultados temporal con un nombre que puede utilizarse dentro de una instrucción:
		SELECT
        INSERT
        DELETE
        UPDATE

es como si fuera una vista: 
CREATE VIEW SalesLT.getSalesAboveAverage
AS

pero no es permanente
*/


WITH InformeVentas AS
(
SELECT
    CustomerID
    , COUNT(*) AS OrderCount
    , SUM(TotalDue) AS TotalSales
FROM SalesLT.SalesOrderHeader
GROUP BY
    CustomerID
)
SELECT * FROM InformeVentas;
GO




WITH InformeVentas AS
(
SELECT
    CustomerID
    , COUNT(*) AS OrderCount
    , SUM(TotalDue) AS TotalSales
FROM SalesLT.SalesOrderHeader
GROUP BY
    CustomerID
)
SELECT 
      iv.OrderCount
    , iv.TotalSales
    , c.FirstName
    , c.LastName
FROM InformeVentas AS iv
JOIN SalesLT.Customer as c
ON iv.CustomerID = c.CustomerID;
GO




