USE AdventureWorksLT2025
GO


CREATE TABLE dbo.ProductDescriptions
(
	DescriptionID INT PRIMARY KEY IDENTITY(1,1),
	DescriptionText NVARCHAR(255) NOT NULL,
	DesscriptionVector VECTOR(3) NOT NULL
);
GO

