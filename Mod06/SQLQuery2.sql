USE AdventureWorks2025;
GO


/*
GUID significa global unique identifier (identificador único global). Es un número de 128 bits que se utiliza para identificar de manera única información en sistemas informáticos. Los GUIDs son ampliamente utilizados en bases de datos y aplicaciones para garantizar que cada registro o entidad tenga un identificador único, evitando colisiones y duplicados.


*/
INSERT Production.ProductCategory (Name, rowguid, ModifiedDate)
VALUES (
	'Souvenirs'
	, NEWID() -- Genera un nuevo GUID único para la columna rowguid
	, GETDATE() -- Obtiene la fecha y hora actual para la columna ModifiedDate
	);
GO

INSERT Production.ProductCategory (Name, rowguid, ModifiedDate)
VALUES ('Accesorios', NEWID(), GETDATE())
		,('Ropa', NEWID(), GETDATE())
		,('Calzado', NEWID(), GETDATE());
GO


INSERT Production.ProductCategory 
VALUES (
	'Gadgets'
	, NEWID() 
	, GETDATE() 
	);
GO



INSERT Production.ProductCategory (ModifiedDate, rowguid, Name)
VALUES (GETDATE(), NEWID(), 'Eléctricas');
GO
