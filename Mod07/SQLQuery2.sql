USE AdventureWorksLT2025;
GO

DECLARE @Clientesjson NVARCHAR(MAX) =

N'
[
  {
    "IdCliente": 1,
    "Cliente": {
      "Nombre": "Orlando",
      "Apellido": "Gee"
    },
    "Empresa": "A Bike Store",
    "Correo": "orlando0@adventure-works.com"
  },
  {
    "IdCliente": 2,
    "Cliente": {
      "Nombre": "Keith",
      "Apellido": "Harris"
    },
    "Empresa": "Progressive Sports",
    "Correo": "keith0@adventure-works.com"
  },
  {
    "IdCliente": 3,
    "Cliente": {
      "Nombre": "Donna",
      "Apellido": "Carreras"
    },
    "Empresa": "Advanced Bike Components",
    "Correo": "donna0@adventure-works.com"
  },
  {
    "IdCliente": 4,
    "Cliente": {
      "Nombre": "Janet",
      "Apellido": "Gates"
    },
    "Empresa": "Modular Cycle Systems",
    "Correo": "janet1@adventure-works.com"
  },
  {
    "IdCliente": 5,
    "Cliente": {
      "Nombre": "Lucy",
      "Apellido": "Harrington"
    },
    "Empresa": "Metropolitan Sports Supply",
    "Correo": "lucy0@adventure-works.com"
  }
]
'




INSERT INTO SalesLT.Customer (CustomerID, FirstName, LastName, CompanyName, EmailAddress)
SELECT JSON_VALUE(@Clientesjson, '$[2].IdCliente') AS IdCliente,
       JSON_VALUE(@Clientesjson, '$[2].Cliente.Nombre') AS Nombre,
       JSON_VALUE(@Clientesjson, '$[2].Cliente.Apellido') AS Apellido,
       JSON_VALUE(@Clientesjson, '$[2].Empresa') AS Empresa,
       JSON_VALUE(@Clientesjson, '$[2].Correo') AS Correo
go


