USE AdventureWorksLT2025;
GO
/* Main Office  Shipping
*/

SELECT * FROM SalesLT.getDirecciones('Johnson', 'Main Office')
GO

SELECT * FROM SalesLT.getDirecciones('Johnson', 'Shipping')
GO

SELECT * FROM SalesLT.getDirecciones('Johnson', DEFAULT)
GO


