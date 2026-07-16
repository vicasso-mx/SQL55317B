USE AdventureWorks2025;
GO


-- Transacciones
/*
	Una transacción tiene 4 propiedades importantes, conocidas como ACID:
	Atomicidad: La transacción se ejecuta en su totalidad o no se ejecuta en absoluto.
	Consistencia: La transacción lleva a la base de datos de un estado válido a otro estado válido.
	Aislamiento: Las transacciones concurrentes no interfieren entre sí. (Isolation)
	Durabilidad: Una vez que una transacción se ha confirmado, los cambios son permanentes, incluso en caso de fallos del sistema.



	Para iniciar una transacción, se utiliza la instrucción BEGIN TRANSACTION. Esto marca el inicio de una transacción explícita. A partir de este punto, todas las operaciones realizadas se consideran parte de la transacción hasta que se confirme o se revierta.

	Para saber cuantas transacciones tengo abiertas utilizo la función @@TRANCOUNT. Esta función devuelve el número de transacciones activas para la conexión actual. Si el valor devuelto es 0, significa que no hay transacciones activas.

*/

PRINT @@TRANCOUNT;


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


ROLLBACK TRANSACTION; -- Deshace la transacción y revierte los cambios realizados desde el inicio de la transacción. Esto significa que cualquier operación realizada dentro de la transacción se deshará y la base de datos volverá al estado anterior a la transacción.

COMMIT TRANSACTION; -- Confirma la transacción y hace permanentes los cambios realizados desde el inicio de la transacción. Esto significa que todas las operaciones realizadas dentro de la transacción se guardarán en la base de datos de forma permanente.
