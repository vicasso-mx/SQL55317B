USE AdventureWorks2025;
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




SELECT *
FROM OPENJSON(@Clientesjson)
WITH (
    IdCliente INT '$.IdCliente',
    Nombre NVARCHAR(50) '$.Cliente.Nombre',
    Apellido NVARCHAR(50) '$.Cliente.Apellido',
    Empresa NVARCHAR(100) '$.Empresa',
    Correo NVARCHAR(100) '$.Correo'
)