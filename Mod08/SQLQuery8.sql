USE AdventureWorksLT2025;
GO

CREATE OR ALTER PROCEDURE SalesLT.uspBuscarDirecciones(
    @Apellido NVARCHAR(50), 
    @TipoDireccion NVARCHAR(20) = 'Shipping' 
)
AS
BEGIN
        SET NOCOUNT ON;

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
        WHERE 
            c.LastName = @Apellido 
            AND ca.AddressType = @TipoDireccion

        -- AGREGO CON INSERT

        -- ACTUALIZO CON UPDATES

        -- CONSULTO OTRAS TABALS

        -- EJECTUO PROCEDIMIENTO

        -- OTRAS OPERACIONES PARECIDAS
END
GO