/* ---------------------------------------------------- */
/*  Generated by Enterprise Architect Version 15.0 		*/
/*  Created On : 20-jun.-2023 05:30:49 				*/
/*  DBMS       : SQL Server 2012 						*/
/* ---------------------------------------------------- */

/* Drop Foreign Key Constraints */

IF EXISTS (SELECT 1 FROM dbo.sysobjects WHERE id = object_id(N'[FK_OFICINA_EMPLEADO]') AND OBJECTPROPERTY(id, N'IsForeignKey') = 1) 
ALTER TABLE [OFICINA] DROP CONSTRAINT [FK_OFICINA_EMPLEADO]
GO

/* Drop Tables */

IF EXISTS (SELECT 1 FROM dbo.sysobjects WHERE id = object_id(N'[OFICINA]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1) 
DROP TABLE [OFICINA]
GO

/* Create Tables */

CREATE TABLE [OFICINA]
(
	[OFICINA_NO] varchar(50) NOT NULL,
	[DEPTO] varchar(50) NULL,
	[COD_OFICINA] int NULL,
	[NOMBRE_OF] varchar(50) NULL,
	[EMP_NO] varchar(50) NULL,
	[UBICACION] varchar(100) NULL
)
GO

/* Create Primary Keys, Indexes, Uniques, Checks */

ALTER TABLE [OFICINA] 
 ADD CONSTRAINT [PK_OFICINA]
	PRIMARY KEY CLUSTERED ([OFICINA_NO] ASC)
GO

/* Create Foreign Key Constraints */

ALTER TABLE [OFICINA] ADD CONSTRAINT [FK_OFICINA_EMPLEADO]
	FOREIGN KEY ([EMP_NO]) REFERENCES [EMPLEADO] ([EMP_NO]) ON DELETE No Action ON UPDATE No Action
GO

use ASIGNACION

