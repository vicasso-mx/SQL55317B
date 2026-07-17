-- Created by GitHub Copilot in SSMS - review carefully before executing
-- Función de tabla que retorna información de clientes y sus direcciones filtradas por apellido y tipo de dirección.
-- Utiliza un parámetro opcional para tipo de dirección con valor por defecto 'Shipping'.
-- Permite consultas eficientes combinando datos de clientes y direcciones.

-- Crea o altera una función de tabla que busca direcciones de clientes por apellido y tipo de dirección.
CREATE OR ALTER FUNCTION SalesLT.getDirecciones(
    @Apellido NVARCHAR(50), 
    @TipoDireccion NVARCHAR(20) = 'Shipping' -- Valor por defecto: 'Shipping'
)
RETURNS TABLE
AS
RETURN
-- Selecciona información del cliente y detalles de su dirección.
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
GO