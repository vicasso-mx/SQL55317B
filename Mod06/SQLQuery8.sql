-- Created by GitHub Copilot in SSMS - review carefully before executing con apoyo de Víctor
-- Este script elimina cuatro categorías de productos específicas de la base de datos AdventureWorks2025.
-- Implementa manejo robusto de errores con bloques TRY-CATCH y reversión automática en caso de fallo.

BEGIN TRY
    -- Inicia una transacción explícita para agrupar las operaciones de eliminación
    BEGIN TRANSACTION;

    -- Elimina categoría de producto con ID 5
    DELETE FROM Production.ProductCategory
    WHERE ProductCategoryID = 5;

    -- Elimina categoría de producto con ID 7
    DELETE FROM Production.ProductCategory
    WHERE ProductCategoryID = 7/0;

    -- Elimina categoría de producto con ID 8
    DELETE FROM Production.ProductCategory
    WHERE ProductCategoryID = 8;

    -- Elimina categoría de producto con ID 9
    DELETE FROM Production.ProductCategory
    WHERE ProductCategoryID = 9;

    -- Confirma la transacción si todas las operaciones se ejecutaron exitosamente
    COMMIT TRANSACTION;
    
    -- Notifica al usuario que la transacción se completó correctamente
    PRINT 'Transacción completada exitosamente. Se eliminaron 4 categorías de producto.';
END TRY
BEGIN CATCH
    -- Deshace la transacción en caso de error (si aún está activa)
    IF @@TRANCOUNT > 0
        ROLLBACK TRANSACTION;

    -- Captura el número de error
    DECLARE @ErrorNumber INT = ERROR_NUMBER();
    -- Captura el mensaje de error descriptivo
    DECLARE @ErrorMessage NVARCHAR(4000) = ERROR_MESSAGE();
    -- Captura el nivel de severidad del error
    DECLARE @ErrorSeverity INT = ERROR_SEVERITY();
    -- Captura el estado del error
    DECLARE @ErrorState INT = ERROR_STATE();

    -- Informa al usuario que la transacción fue revertida
    PRINT 'ERROR: Transacción revertida debido a un error.';
    PRINT 'Número de error: ' + CAST(@ErrorNumber AS VARCHAR(10));
    PRINT 'Mensaje de error: ' + @ErrorMessage;
    
    -- Re-lanza el error para registro en el log de eventos de SQL Server
    RAISERROR(@ErrorMessage, @ErrorSeverity, @ErrorState);
END CATCH;