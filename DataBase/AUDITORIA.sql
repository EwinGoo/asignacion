/* ---------------------------------------------------- */
/*  Generated by Enterprise Architect Version 15.0 		*/
/*  Created On : 20-jun.-2023 22:22:22 				*/
/*  DBMS       : SQL Server 2012 						*/
/* ---------------------------------------------------- */

/* Drop Foreign Key Constraints */

IF EXISTS (SELECT 1 FROM dbo.sysobjects WHERE id = object_id(N'[FK_AUDITORIA_ASIGNACION]') AND OBJECTPROPERTY(id, N'IsForeignKey') = 1) 
ALTER TABLE [AUDITORIA] DROP CONSTRAINT [FK_AUDITORIA_ASIGNACION]
GO

IF EXISTS (SELECT 1 FROM dbo.sysobjects WHERE id = object_id(N'[FK_AUDITORIA_USUARIO]') AND OBJECTPROPERTY(id, N'IsForeignKey') = 1) 
ALTER TABLE [AUDITORIA] DROP CONSTRAINT [FK_AUDITORIA_USUARIO]
GO

/* Drop Tables */

IF EXISTS (SELECT 1 FROM dbo.sysobjects WHERE id = object_id(N'[AUDITORIA]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1) 
DROP TABLE [AUDITORIA]
GO

/* Create Tables */

CREATE TABLE [AUDITORIA]
(
	[AUDITORIA_NO] varchar(50) NOT NULL,
	[EMP_NO] varchar(50) NULL,
	[USUARIO_NO] varchar(50) NULL,
	[FECHA] datetime NULL,
	[OPERACION] varchar(50) NULL,
	[ASIGNACION_NO] varchar(50) NULL,
	[INV_NO] varchar(50) NULL
)
GO

/* Create Primary Keys, Indexes, Uniques, Checks */

ALTER TABLE [AUDITORIA] 
 ADD CONSTRAINT [PK_AUDITORIA]
	PRIMARY KEY CLUSTERED ([AUDITORIA_NO] ASC)
GO

/* Create Foreign Key Constraints */

ALTER TABLE [AUDITORIA] ADD CONSTRAINT [FK_AUDITORIA_ASIGNACION]
	FOREIGN KEY ([ASIGNACION_NO]) REFERENCES [ASIGNACION] ([ASIGNACION_NO]) ON DELETE No Action ON UPDATE No Action
GO

ALTER TABLE [AUDITORIA] ADD CONSTRAINT [FK_AUDITORIA_USUARIO]
	FOREIGN KEY ([USUARIO_NO]) REFERENCES [USUARIO] ([USUARIO_NO]) ON DELETE No Action ON UPDATE No Action
GO
