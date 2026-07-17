USE AdventureWorksLT2025;
GO

CREATE FUNCTION SalesLT.getDirecciones()

RETURNS TABLE

AS

RETURN

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

GO
