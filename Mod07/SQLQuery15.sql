USE AdventureWorksLT2025;
GO

DECLARE @vector VECTOR(3) = '[0.1, 0.9, 0.1]';


SELECT 
	DescriptionID
	, DescriptionText
	, DesscriptionVector
	, VECTOR_DISTANCE('cosine', @vector, DesscriptionVector) AS Distance
FROM dbo.ProductDescriptions
order by Distance asc;