/* ---------------------------------------------------- */
/*  Generated by Enterprise Architect Version 15.0 		*/
/*  Created On : 20-jun.-2023 21:19:07 				*/
/*  DBMS       : SQL Server 2012 						*/
/* ---------------------------------------------------- */

/* Drop Foreign Key Constraints */

IF EXISTS (SELECT 1 FROM dbo.sysobjects WHERE id = object_id(N'[FK_ASIGNACION_EMPLEADO]') AND OBJECTPROPERTY(id, N'IsForeignKey') = 1) 
ALTER TABLE [ASIGNACION] DROP CONSTRAINT [FK_ASIGNACION_EMPLEADO]
GO

IF EXISTS (SELECT 1 FROM dbo.sysobjects WHERE id = object_id(N'[FK_ASIGNACION_INVENTARIO]') AND OBJECTPROPERTY(id, N'IsForeignKey') = 1) 
ALTER TABLE [ASIGNACION] DROP CONSTRAINT [FK_ASIGNACION_INVENTARIO]
GO

/* Drop Tables */

IF EXISTS (SELECT 1 FROM dbo.sysobjects WHERE id = object_id(N'[ASIGNACION]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1) 
DROP TABLE [ASIGNACION]
GO

/* Create Tables */

CREATE TABLE [ASIGNACION]
(
	[ASIGNACION_NO] varchar(10) primary key NOT NULL,
	[EMP_NO] varchar(10) NULL,
	[INV_NO] varchar(10) NULL,
	[FECHA_ASIGNACION] date NULL,
	[FECHA_ENTREGA] date NULL,
	[ESTADO] varchar(50) NULL,
)
GO

/* Create Primary Keys, Indexes, Uniques, Checks */

ALTER TABLE [ASIGNACION] 
 ADD CONSTRAINT [PK_ASIGNACION]
	PRIMARY KEY CLUSTERED ([ASIGNACION_NO] ASC)
GO

/* Create Foreign Key Constraints */

ALTER TABLE [ASIGNACION] ADD CONSTRAINT [FK_ASIGNACION_EMPLEADO]
	FOREIGN KEY ([EMP_NO]) REFERENCES [EMPLEADO] ([EMP_NO]) ON DELETE No Action ON UPDATE No Action
GO

ALTER TABLE [ASIGNACION] ADD CONSTRAINT [FK_ASIGNACION_INVENTARIO]
	FOREIGN KEY ([INV_NO]) REFERENCES [INVENTARIO] ([INV_NO]) ON DELETE No Action ON UPDATE No Action
GO
