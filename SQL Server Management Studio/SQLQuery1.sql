Create Database Banco
USE [Banco]
CREATE TABLE [dbo].[Cliente](
	[DocIdent] [nvarchar](12) NULL,
	[Nombre] [nvarchar](30) NULL,
	[Apellido] [nvarchar](30) NULL,
	[Direccion] [nvarchar](20) NULL,
	[Telefono] [nvarchar](12) NULL,
	[FechaIngreso] [datetime] NULL,
	[Estado] [bit] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CuentaxCliente]    Script Date: 10/05/2022 08:47:47 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CuentaxCliente](
	[NroCuenta] [nvarchar](15) NULL,
	[DocIdent] [nvarchar](12) NULL,
	[FechaApertura] [datetime] NULL,
	[Clave] [nvarchar](5) NULL,
	[Saldo] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoTransaccion]    Script Date: 10/05/2022 08:47:47 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoTransaccion](
	[CodigoT] [nvarchar](2) NULL,
	[Descripcion] [nvarchar](20) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TransacCuenta]    Script Date: 10/05/2022 08:47:47 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TransacCuenta](
	[NroCuenta] [nvarchar](15) NULL,
	[CodigoT] [nvarchar](2) NULL,
	[Fecha] [datetime] NULL,
	[Hora] [datetime] NULL,
	[Valor] [int] NULL
) ON [PRIMARY]
GO
INSERT [dbo].[Cliente] ([DocIdent], [Nombre], [Apellido], [Direccion], [Telefono], [FechaIngreso], [Estado]) VALUES (N'4444', N'Teresa', N'Valencia', N'Kra 43', N'2335698', CAST(N'2001-03-31T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Cliente] ([DocIdent], [Nombre], [Apellido], [Direccion], [Telefono], [FechaIngreso], [Estado]) VALUES (N'4445', N'Milena', N'Zapata Grajales', N'Clle 71', N'21300005', CAST(N'2001-02-20T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Cliente] ([DocIdent], [Nombre], [Apellido], [Direccion], [Telefono], [FechaIngreso], [Estado]) VALUES (N'3322', N'Manuela', N'Rodas', N'Transv 6', N'2323223', CAST(N'2004-02-02T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[CuentaxCliente] ([NroCuenta], [DocIdent], [FechaApertura], [Clave], [Saldo]) VALUES (N'222', N'4445', CAST(N'2001-02-02T00:00:00.000' AS DateTime), N'77777', 6000000)
INSERT [dbo].[CuentaxCliente] ([NroCuenta], [DocIdent], [FechaApertura], [Clave], [Saldo]) VALUES (N'102', N'4445', CAST(N'2002-05-05T00:00:00.000' AS DateTime), N'22222', 9000000)
INSERT [dbo].[CuentaxCliente] ([NroCuenta], [DocIdent], [FechaApertura], [Clave], [Saldo]) VALUES (N'555', N'4444', CAST(N'2002-06-06T00:00:00.000' AS DateTime), N'22222', 3000000)
INSERT [dbo].[CuentaxCliente] ([NroCuenta], [DocIdent], [FechaApertura], [Clave], [Saldo]) VALUES (N'333', N'4444', CAST(N'2001-04-06T00:00:00.000' AS DateTime), N'11111', 500000)
INSERT [dbo].[CuentaxCliente] ([NroCuenta], [DocIdent], [FechaApertura], [Clave], [Saldo]) VALUES (N'444', N'4444', CAST(N'2002-05-07T00:00:00.000' AS DateTime), N'55555', 4300000)
INSERT [dbo].[CuentaxCliente] ([NroCuenta], [DocIdent], [FechaApertura], [Clave], [Saldo]) VALUES (N'107', N'3322', CAST(N'2003-06-06T00:00:00.000' AS DateTime), N'1477', 2500000)
INSERT [dbo].[TipoTransaccion] ([CodigoT], [Descripcion]) VALUES (N'01', N'Consignacion')
INSERT [dbo].[TipoTransaccion] ([CodigoT], [Descripcion]) VALUES (N'02', N'Retiro')
INSERT [dbo].[TipoTransaccion] ([CodigoT], [Descripcion]) VALUES (N'03', N'Trans. Fondos')
INSERT [dbo].[TransacCuenta] ([NroCuenta], [CodigoT], [Fecha], [Hora], [Valor]) VALUES (N'222', N'01', CAST(N'2001-10-31T17:39:41.000' AS DateTime), CAST(N'2001-10-31T17:39:41.000' AS DateTime), 500000)
INSERT [dbo].[TransacCuenta] ([NroCuenta], [CodigoT], [Fecha], [Hora], [Valor]) VALUES (N'222', N'02', CAST(N'2001-10-15T12:44:31.000' AS DateTime), CAST(N'2001-10-15T12:44:31.000' AS DateTime), 3500000)
INSERT [dbo].[TransacCuenta] ([NroCuenta], [CodigoT], [Fecha], [Hora], [Valor]) VALUES (N'222', N'02', CAST(N'2001-10-15T13:52:40.000' AS DateTime), CAST(N'2001-10-15T13:52:40.000' AS DateTime), 500000)
INSERT [dbo].[TransacCuenta] ([NroCuenta], [CodigoT], [Fecha], [Hora], [Valor]) VALUES (N'222', N'02', CAST(N'2001-10-31T17:40:09.000' AS DateTime), CAST(N'2001-10-31T17:40:09.000' AS DateTime), 500000)
INSERT [dbo].[TransacCuenta] ([NroCuenta], [CodigoT], [Fecha], [Hora], [Valor]) VALUES (N'222', N'03', CAST(N'2001-10-15T12:49:44.000' AS DateTime), CAST(N'2001-10-15T12:49:44.000' AS DateTime), 3500000)
INSERT [dbo].[TransacCuenta] ([NroCuenta], [CodigoT], [Fecha], [Hora], [Valor]) VALUES (N'102', N'01', CAST(N'2001-10-15T13:00:03.000' AS DateTime), CAST(N'2001-10-15T13:00:03.000' AS DateTime), 10000000)
INSERT [dbo].[TransacCuenta] ([NroCuenta], [CodigoT], [Fecha], [Hora], [Valor]) VALUES (N'102', N'02', CAST(N'2001-10-15T13:00:43.000' AS DateTime), CAST(N'2001-10-15T13:00:43.000' AS DateTime), 5000000)
INSERT [dbo].[TransacCuenta] ([NroCuenta], [CodigoT], [Fecha], [Hora], [Valor]) VALUES (N'333', N'01', CAST(N'2001-10-15T12:46:30.000' AS DateTime), CAST(N'2001-10-15T12:46:30.000' AS DateTime), 2500000)
INSERT [dbo].[TransacCuenta] ([NroCuenta], [CodigoT], [Fecha], [Hora], [Valor]) VALUES (N'333', N'02', CAST(N'2001-10-15T12:49:04.000' AS DateTime), CAST(N'2001-10-15T12:49:04.000' AS DateTime), 6500000)
INSERT [dbo].[TransacCuenta] ([NroCuenta], [CodigoT], [Fecha], [Hora], [Valor]) VALUES (N'444', N'01', CAST(N'2001-10-15T12:36:36.000' AS DateTime), CAST(N'2001-10-15T12:36:36.000' AS DateTime), 3000000)
INSERT [dbo].[TransacCuenta] ([NroCuenta], [CodigoT], [Fecha], [Hora], [Valor]) VALUES (N'444', N'01', CAST(N'2001-10-15T13:40:33.000' AS DateTime), CAST(N'2001-10-15T13:40:33.000' AS DateTime), 6000000)
INSERT [dbo].[TransacCuenta] ([NroCuenta], [CodigoT], [Fecha], [Hora], [Valor]) VALUES (N'444', N'02', CAST(N'2001-10-15T13:21:26.000' AS DateTime), CAST(N'2001-10-15T13:21:26.000' AS DateTime), 2500000)
INSERT [dbo].[TransacCuenta] ([NroCuenta], [CodigoT], [Fecha], [Hora], [Valor]) VALUES (N'444', N'02', CAST(N'2001-10-15T13:39:52.000' AS DateTime), CAST(N'2001-10-15T13:39:52.000' AS DateTime), 1500000)
INSERT [dbo].[TransacCuenta] ([NroCuenta], [CodigoT], [Fecha], [Hora], [Valor]) VALUES (N'444', N'02', CAST(N'2001-10-15T13:41:39.000' AS DateTime), CAST(N'2001-10-15T13:41:39.000' AS DateTime), 5000000)
INSERT [dbo].[TransacCuenta] ([NroCuenta], [CodigoT], [Fecha], [Hora], [Valor]) VALUES (N'444', N'02', CAST(N'2001-10-15T13:44:34.000' AS DateTime), CAST(N'2001-10-15T13:44:34.000' AS DateTime), 200000)
INSERT [dbo].[TransacCuenta] ([NroCuenta], [CodigoT], [Fecha], [Hora], [Valor]) VALUES (N'107', N'01', CAST(N'2005-09-09T09:59:30.000' AS DateTime), CAST(N'2005-09-09T09:59:30.000' AS DateTime), 23000)
INSERT [dbo].[TransacCuenta] ([NroCuenta