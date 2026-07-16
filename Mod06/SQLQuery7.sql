USE AdventureWorks2025;
GO

BEGIN TRANSACTION;

DELETE FROM Production.ProductCategory
WHERE ProductCategoryID = 5;
GO


DELETE FROM Production.ProductCategory
WHERE ProductCategoryID = 7;
GO

DELETE FROM Production.ProductCategory
WHERE ProductCategoryID = 8;
GO

DELETE FROM Production.ProductCategory
WHERE ProductCategoryID = 9;
GO

COMMIT TRANSACTION; 


ROLLBACK TRANSACTION; 


