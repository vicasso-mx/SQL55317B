USE AdventureWorksLT2025;
GO


/*
En una base de datos normalizada, la información relacionada suele
almacenarse en tablas diferentes para evitar duplicidad y facilitar
su administración.
*/
SELECT
    c.CustomerID
    , c.FirstName
    , c.LastName
    , c.CompanyName
    , o.SalesOrderID
    , o.OrderDate
    , o.Status
    , o.TotalDue
FROM SalesLT.Customer AS c
INNER JOIN SalesLT.SalesOrderHeader AS o
    ON c.CustomerID = o.CustomerID


SELECT
    c.CustomerID
    , c.FirstName
    , c.LastName
    , c.CompanyName
    , o.SalesOrderID
    , o.OrderDate
    , o.Status
    , o.TotalDue
FROM SalesLT.Customer AS c
JOIN SalesLT.SalesOrderHeader AS o
    ON c.CustomerID = o.CustomerID
