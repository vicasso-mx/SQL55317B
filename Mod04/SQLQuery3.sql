USE AdventureWorksLT2025;
GO


SELECT
    c.CustomerID
    , c.FirstName
    , c.LastName
    , c.CompanyName
    , ca.AddressType
    , ca.AddressID
FROM SalesLT.Customer AS c
JOIN SalesLT.CustomerAddress AS ca
    ON c.CustomerID = ca.CustomerID
-- 417 filas devueltas

SELECT
    c.CustomerID
    , c.FirstName
    , c.LastName
    , c.CompanyName
    , ca.AddressType
    , ca.AddressID
FROM SalesLT.Customer AS c
LEFT OUTER JOIN SalesLT.CustomerAddress AS ca
    ON c.CustomerID = ca.CustomerID
-- 857 filas devueltas



SELECT
    c.CustomerID
    , c.FirstName
    , c.LastName
    , c.CompanyName
    , ca.AddressType
    , ca.AddressID
FROM SalesLT.Customer AS c
LEFT JOIN SalesLT.CustomerAddress AS ca
    ON c.CustomerID = ca.CustomerID
-- 857 filas devueltas


