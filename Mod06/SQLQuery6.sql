


-- Las transacciones implícitas son aquellas que se ejecutan automáticamente sin necesidad de utilizar las instrucciones BEGIN TRANSACTION, COMMIT TRANSACTION o ROLLBACK TRANSACTION. En este modo, cada instrucción individual se considera una transacción y se confirma automáticamente al finalizar.

DELETE FROM Production.ProductCategory
WHERE ProductCategoryID = 10;
GO
