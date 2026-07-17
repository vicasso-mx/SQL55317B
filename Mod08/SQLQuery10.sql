-- Created by GitHub Copilot in SSMS - review carefully before executing
-- Procedimiento almacenado que procesa datos de clientes desde XML.
-- Prepara un documento XML, extrae datos de clientes y los retorna en formato tabular.

CREATE OR ALTER PROCEDURE SalesLT.uspConsultarXML -- Corregido: Spelling error (Cosnultar -> Consultar)
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @ClientesXML XML =
    N'
    <Clientes>
      <Cliente>
        <IdCliente>1</IdCliente>
        <Cliente.Nombre>Orlando</Cliente.Nombre>
        <Cliente.Apellido>Gee</Cliente.Apellido>
        <Empresa>A Bike Store</Empresa>
        <Correo>orlando0@adventure-works.com</Correo>
      </Cliente>
      <Cliente>
        <IdCliente>2</IdCliente>
        <Cliente.Nombre>Keith</Cliente.Nombre>
        <Cliente.Apellido>Harris</Cliente.Apellido>
        <Empresa>Progressive Sports</Empresa>
        <Correo>keith0@adventure-works.com</Correo>
      </Cliente>
      <Cliente>
        <IdCliente>3</IdCliente>
        <Cliente.Nombre>Donna</Cliente.Nombre>
        <Cliente.Apellido>Carreras</Cliente.Apellido>
        <Empresa>Advanced Bike Components</Empresa>
        <Correo>donna0@adventure-works.com</Correo>
      </Cliente>
      <Cliente>
        <IdCliente>4</IdCliente>
        <Cliente.Nombre>Janet</Cliente.Nombre>
        <Cliente.Apellido>Gates</Cliente.Apellido>
        <Empresa>Modular Cycle Systems</Empresa>
        <Correo>janet1@adventure-works.com</Correo>
      </Cliente>
      <Cliente>
        <IdCliente>5</IdCliente>
        <Cliente.Nombre>Lucy</Cliente.Nombre>
        <Cliente.Apellido>Harrington</Cliente.Apellido>
        <Empresa>Metropolitan Sports Supply</Empresa>
        <Correo>lucy0@adventure-works.com</Correo>
      </Cliente>
    </Clientes>
    '

    DECLARE @XmlDocumentHandle INT;

    BEGIN TRY
        -- Prepara el documento XML para ser procesado por OPENXML
        EXEC sp_xml_preparedocument @XmlDocumentHandle OUTPUT, @ClientesXML

        -- Extrae datos del XML y retorna columnas específicas (no SELECT *)
        SELECT
            IdCliente
            , Nombre
            , Apellido
            , Empresa
            , Correo
        FROM OPENXML(@XmlDocumentHandle, '/Clientes/Cliente', 2)
        WITH (
            IdCliente INT
            , Nombre NVARCHAR(50) 'Cliente.Nombre'
            , Apellido NVARCHAR(50) 'Cliente.Apellido'
            , Empresa NVARCHAR(100)
            , Correo NVARCHAR(100)
        )
    BEGIN CATCH
        -- Captura errores durante el procesamiento XML
        IF @@TRANCOUNT > 0
            ROLLBACK TRANSACTION;

        DECLARE @ErrorMessage NVARCHAR(4000) = ERROR_MESSAGE();
        DECLARE @ErrorSeverity INT = ERROR_SEVERITY();
        DECLARE @ErrorState INT = ERROR_STATE();

        RAISERROR(@ErrorMessage, @ErrorSeverity, @ErrorState);
    END CATCH
    FINALLY
    BEGIN
        -- Asegura la liberación del documento XML incluso si ocurre error
        IF @XmlDocumentHandle IS NOT NULL
            EXEC sp_xml_removedocument @XmlDocumentHandle;
    END
END
GO