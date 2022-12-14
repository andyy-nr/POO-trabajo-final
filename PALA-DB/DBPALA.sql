create database DBPALA
go

use DBPALA
go



/* ---------------------------------------------------- */
/*  Generated by Enterprise Architect Version 15.0 		*/
/*  Created On : 11-nov.-2022 18:04:38 				*/
/*  DBMS       : SQL Server 2012 						*/
/* ---------------------------------------------------- */

/* Drop Foreign Key Constraints */

IF EXISTS (SELECT 1 FROM dbo.sysobjects WHERE id = object_id(N'[FK_Lista_Usuario]') AND OBJECTPROPERTY(id, N'IsForeignKey') = 1) 
ALTER TABLE [Lista] DROP CONSTRAINT [FK_Lista_Usuario]
GO

IF EXISTS (SELECT 1 FROM dbo.sysobjects WHERE id = object_id(N'[FK_Tarea_contiene]') AND OBJECTPROPERTY(id, N'IsForeignKey') = 1) 
ALTER TABLE [Tarea] DROP CONSTRAINT [FK_Tarea_contiene]
GO

/* Drop Tables */

IF EXISTS (SELECT 1 FROM dbo.sysobjects WHERE id = object_id(N'[Lista]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1) 
DROP TABLE [Lista]
GO

IF EXISTS (SELECT 1 FROM dbo.sysobjects WHERE id = object_id(N'[Tarea]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1) 
DROP TABLE [Tarea]
GO

IF EXISTS (SELECT 1 FROM dbo.sysobjects WHERE id = object_id(N'[Usuario]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1) 
DROP TABLE [Usuario]
GO

/* Create Tables */

CREATE TABLE [Lista]
(
	[ListaID] int NOT NULL IDENTITY (1, 1),
	[UsuarioID] int NOT NULL,
	[Nombre] nvarchar(50) NULL
)
GO

CREATE TABLE [Tarea]
(
	[TareaID] int NOT NULL IDENTITY (1, 1),
	[ListaID] int NOT NULL,
	[estado] int NOT NULL,
	[Descripcion] nvarchar(140) NULL,
	[Vencimiento] date NULL,
	[T_restante] datetime NULL
)
GO

CREATE TABLE [Usuario]
(
	[UsuarioID] int NOT NULL IDENTITY (1, 1),
	[Estado] int NULL,
	[Nombre] nvarchar(50) NULL,
	[Apellidos] nvarchar(50) NULL,
	[Correo] nvarchar(60) NULL,
	[NomUsuario] nvarchar(50) NULL,
	[Contrasenia] nvarchar(50) NULL
)
GO

/* Create Primary Keys, Indexes, Uniques, Checks */

ALTER TABLE [Lista] 
 ADD CONSTRAINT [PK_Lista]
	PRIMARY KEY CLUSTERED ([ListaID] ASC)
GO

ALTER TABLE [Tarea] 
 ADD CONSTRAINT [PK_Tarea]
	PRIMARY KEY CLUSTERED ([TareaID] ASC)
GO

ALTER TABLE [Usuario] 
 ADD CONSTRAINT [PK_Usuario]
	PRIMARY KEY CLUSTERED ([UsuarioID] ASC)
GO

/* Create Foreign Key Constraints */

ALTER TABLE [Lista] ADD CONSTRAINT [FK_Lista_Usuario]
	FOREIGN KEY ([UsuarioID]) REFERENCES [Usuario] ([UsuarioID]) ON DELETE No Action ON UPDATE No Action
GO

ALTER TABLE [Tarea] ADD CONSTRAINT [FK_Tarea_contiene]
	FOREIGN KEY ([ListaID]) REFERENCES [Lista] ([ListaID]) ON DELETE No Action ON UPDATE No Action
GO
