USE AdventureWorksLT2025;
GO

INSERT INTO dbo.ProductDescriptions (DescriptionText, DesscriptionVector)
VALUES 
('Mountain bike with lightweight frame'
	, '[0.8, 0.1, 0.1]'),
('Road bike with aerodynamic design'
	, '[0.1, 0.9, 0.1]'),
('Hybrid bike suitable for city commuting'
	, '[0.3, 0.3, 0.4]'),
('Electric bike with long battery life'
	, '[0.2, 0.2, 0.6]'),
('Folding bike for easy storage and transport'
	, '[0.5, 0.2, 0.3]');

GO
