USE AdventureWorksLT2025;
GO

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

EXEC sp_xml_preparedocument @XmlDocumentHandle OUTPUT, @ClientesXML;


SELECT *
FROM OPENXML(@XmlDocumentHandle, '/Clientes/Cliente', 2)

