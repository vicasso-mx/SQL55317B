USE AdventureWorksLT2025;
GO

SELECT
    City
    , StateProvince
    , CountryRegion
FROM SalesLT.Address
WHERE CountryRegion = 'United States'

UNION -- ESTA CLAUSULA ME DEVUELVE SOLO FILAS DISTINTAS

SELECT
    City
    , StateProvince
    , CountryRegion
FROM SalesLT.Address
WHERE CountryRegion = 'Canada';
GO



SELECT
    City
    , StateProvince
    , CountryRegion
FROM SalesLT.Address
WHERE CountryRegion = 'United States'

UNION ALL -- ESTA CLAUSULA SI TIENE DUPLICADOS TAMBIÉN LOS DEVUELVE

SELECT
    City
    , StateProvince
    , CountryRegion
FROM SalesLT.Address
WHERE CountryRegion = 'Canada';
GO
