/****** Object:  Database [PLC Developers]    Script Date: 8/24/2022 11:13:13 PM ******/

/* 
Estudiante: Julio Amaurys Campusano Alcántara
Matrícula: 21-SIIN-1-027
Universidad organización y método(O&M)
Materia: base de datos
Sección: 0541
*/

CREATE DATABASE [PLC Developers]
GO
USE [PLC Developers]
GO
/****** Object:  Table [dbo].[almacen]    Script Date: 8/24/2022 11:13:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[almacen](
	[produtoid] [int] NULL,
	[componente] [varchar](50) NULL,
	[numero de stock] [int] NULL,
	[cantidad] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Empleados]    Script Date: 8/24/2022 11:13:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Empleados](
	[Empleadoid] [varchar](50) NULL,
	[Nombre] [varchar](50) NULL,
	[ID] [int] NULL,
	[cargo] [varchar](50) NULL,
	[edad] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[factura de servicio]    Script Date: 8/24/2022 11:13:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[factura de servicio](
	[facturaid] [int] NULL,
	[numero de la factura] [int] NULL,
	[cliente] [varchar](50) NULL,
	[producto/servicio solicitado] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[registro semanal de ventas]    Script Date: 8/24/2022 11:13:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[registro semanal de ventas](
	[registroid] [int] NULL,
	[facturas] [int] NULL,
	[solicitud] [varchar](50) NULL,
	[fechas] [date] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[solicitud del cliente]    Script Date: 8/24/2022 11:13:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[solicitud del cliente](
	[clienteid] [int] NULL,
	[nombre del cliente] [varchar](50) NULL,
	[servicio/producto solicitado] [varchar](50) NULL,
	[cantidad] [int] NULL,
	[fecha del pedido] [date] NULL
) ON [PRIMARY]
GO
INSERT [dbo].[almacen] ([produtoid], [componente], [numero de stock], [cantidad]) VALUES (1, N'PLC siemens', 6161, 100)
INSERT [dbo].[almacen] ([produtoid], [componente], [numero de stock], [cantidad]) VALUES (2, N'Actuador branson', 1515, 50)
INSERT [dbo].[almacen] ([produtoid], [componente], [numero de stock], [cantidad]) VALUES (3, N'PLC omron', 1505, 50)
INSERT [dbo].[almacen] ([produtoid], [componente], [numero de stock], [cantidad]) VALUES (4, N'valvulas neumaticas', 4845, 25)
INSERT [dbo].[almacen] ([produtoid], [componente], [numero de stock], [cantidad]) VALUES (5, N'Pico controlador', 8425, 70)
INSERT [dbo].[almacen] ([produtoid], [componente], [numero de stock], [cantidad]) VALUES (6, N'luces leds', 5485, 300)
INSERT [dbo].[almacen] ([produtoid], [componente], [numero de stock], [cantidad]) VALUES (7, N'contactores ', 5951, 80)
INSERT [dbo].[almacen] ([produtoid], [componente], [numero de stock], [cantidad]) VALUES (8, N'relays', 5959, 200)
INSERT [dbo].[almacen] ([produtoid], [componente], [numero de stock], [cantidad]) VALUES (9, N'transformadores', 8895, 200)
INSERT [dbo].[almacen] ([produtoid], [componente], [numero de stock], [cantidad]) VALUES (10, N'tester', 42669, 100)
GO
INSERT [dbo].[Empleados] ([Empleadoid], [Nombre], [ID], [cargo], [edad]) VALUES (N'1', N'carlos duran', 526181, N'mantenimiento', 25)
INSERT [dbo].[Empleados] ([Empleadoid], [Nombre], [ID], [cargo], [edad]) VALUES (N'2', N'fernando tatis', 514815, N'seguridad', 22)
INSERT [dbo].[Empleados] ([Empleadoid], [Nombre], [ID], [cargo], [edad]) VALUES (N'3', N'alex zurdo', 151548, N'seguridad', 24)
INSERT [dbo].[Empleados] ([Empleadoid], [Nombre], [ID], [cargo], [edad]) VALUES (N'4', N'eloy vargas', 158181, N'tecnico', 28)
INSERT [dbo].[Empleados] ([Empleadoid], [Nombre], [ID], [cargo], [edad]) VALUES (N'5', N'julio amaurys', 814841, N'chofer', 30)
INSERT [dbo].[Empleados] ([Empleadoid], [Nombre], [ID], [cargo], [edad]) VALUES (N'6', N'sammy sosa', 818184, N'chofer', 38)
INSERT [dbo].[Empleados] ([Empleadoid], [Nombre], [ID], [cargo], [edad]) VALUES (N'7', N'julio angel', 151151, N'gerente', 27)
INSERT [dbo].[Empleados] ([Empleadoid], [Nombre], [ID], [cargo], [edad]) VALUES (N'8', N'claudio genao', 111514, N'supervisor', 26)
INSERT [dbo].[Empleados] ([Empleadoid], [Nombre], [ID], [cargo], [edad]) VALUES (N'9', N'orlando aguero', 51598, N'supervisor ', 28)
INSERT [dbo].[Empleados] ([Empleadoid], [Nombre], [ID], [cargo], [edad]) VALUES (N'10', N'elder ortiz', 8446949, N'tecnico', 21)
GO
INSERT [dbo].[factura de servicio] ([facturaid], [numero de la factura], [cliente], [producto/servicio solicitado]) VALUES (1, 626265656, N'fernado villalona', N'instalacion de apagado de luz inalambrica')
INSERT [dbo].[factura de servicio] ([facturaid], [numero de la factura], [cliente], [producto/servicio solicitado]) VALUES (2, 161262665, N'moises amador', N'bomba sumergible automatica')
INSERT [dbo].[factura de servicio] ([facturaid], [numero de la factura], [cliente], [producto/servicio solicitado]) VALUES (3, 666262, N'tomas aquino', N'instalacion de porton automatico')
INSERT [dbo].[factura de servicio] ([facturaid], [numero de la factura], [cliente], [producto/servicio solicitado]) VALUES (4, 62665955, N'santiago matias', N'instalacion de domotica')
INSERT [dbo].[factura de servicio] ([facturaid], [numero de la factura], [cliente], [producto/servicio solicitado]) VALUES (5, 95952629, N'edwar brito', N'instalacion de flota acuatica')
INSERT [dbo].[factura de servicio] ([facturaid], [numero de la factura], [cliente], [producto/servicio solicitado]) VALUES (6, 84959849, N'eduardo abad', N'Instalacion de bomba de agua automatica')
INSERT [dbo].[factura de servicio] ([facturaid], [numero de la factura], [cliente], [producto/servicio solicitado]) VALUES (7, 265959959, N'Fresenius kabi', N'Valvulas neumaticas')
INSERT [dbo].[factura de servicio] ([facturaid], [numero de la factura], [cliente], [producto/servicio solicitado]) VALUES (8, 99255656, N'edwar lifesciencies', N'Actuador branson')
INSERT [dbo].[factura de servicio] ([facturaid], [numero de la factura], [cliente], [producto/servicio solicitado]) VALUES (9, 96295955, N'bastex', N'PLC omron')
INSERT [dbo].[factura de servicio] ([facturaid], [numero de la factura], [cliente], [producto/servicio solicitado]) VALUES (10, 52959595, N'convatec', N'PLC allen bradhley')
GO
INSERT [dbo].[registro semanal de ventas] ([registroid], [facturas], [solicitud], [fechas]) VALUES (1, 92922995, N'10', CAST(N'2021-07-09' AS Date))
INSERT [dbo].[registro semanal de ventas] ([registroid], [facturas], [solicitud], [fechas]) VALUES (2, 9229299, N'25', CAST(N'2022-02-08' AS Date))
INSERT [dbo].[registro semanal de ventas] ([registroid], [facturas], [solicitud], [fechas]) VALUES (3, 92929559, N'14', CAST(N'2021-03-25' AS Date))
INSERT [dbo].[registro semanal de ventas] ([registroid], [facturas], [solicitud], [fechas]) VALUES (4, 929929, N'85', CAST(N'2022-02-01' AS Date))
INSERT [dbo].[registro semanal de ventas] ([registroid], [facturas], [solicitud], [fechas]) VALUES (5, 9922922, N'25', CAST(N'2021-04-03' AS Date))
INSERT [dbo].[registro semanal de ventas] ([registroid], [facturas], [solicitud], [fechas]) VALUES (6, 999529, N'39', CAST(N'2020-05-30' AS Date))
INSERT [dbo].[registro semanal de ventas] ([registroid], [facturas], [solicitud], [fechas]) VALUES (7, 9292992, N'629', CAST(N'2021-08-08' AS Date))
INSERT [dbo].[registro semanal de ventas] ([registroid], [facturas], [solicitud], [fechas]) VALUES (8, 9295929, N'2929', CAST(N'2022-07-27' AS Date))
INSERT [dbo].[registro semanal de ventas] ([registroid], [facturas], [solicitud], [fechas]) VALUES (9, 2999292, N'962', CAST(N'2022-03-04' AS Date))
INSERT [dbo].[registro semanal de ventas] ([registroid], [facturas], [solicitud], [fechas]) VALUES (10, 6926259, N'26', CAST(N'2021-05-12' AS Date))
GO
INSERT [dbo].[solicitud del cliente] ([clienteid], [nombre del cliente], [servicio/producto solicitado], [cantidad], [fecha del pedido]) VALUES (1, N'fernando', N'instalacion del porton electico', 1, CAST(N'2022-05-09' AS Date))
INSERT [dbo].[solicitud del cliente] ([clienteid], [nombre del cliente], [servicio/producto solicitado], [cantidad], [fecha del pedido]) VALUES (2, N'edwars lifesciencies', N'luces leds', 200, CAST(N'2022-04-02' AS Date))
INSERT [dbo].[solicitud del cliente] ([clienteid], [nombre del cliente], [servicio/producto solicitado], [cantidad], [fecha del pedido]) VALUES (3, N'richard', N'instalacion caja de breaker', 1, CAST(N'2022-08-06' AS Date))
INSERT [dbo].[solicitud del cliente] ([clienteid], [nombre del cliente], [servicio/producto solicitado], [cantidad], [fecha del pedido]) VALUES (4, N'baxter', N'actuador branson', 15, CAST(N'2022-01-01' AS Date))
INSERT [dbo].[solicitud del cliente] ([clienteid], [nombre del cliente], [servicio/producto solicitado], [cantidad], [fecha del pedido]) VALUES (5, N'jeury', N'instalacion de inversor', 1, CAST(N'2022-04-01' AS Date))
INSERT [dbo].[solicitud del cliente] ([clienteid], [nombre del cliente], [servicio/producto solicitado], [cantidad], [fecha del pedido]) VALUES (6, N'maria', N'instalacion de panel solar', 1, CAST(N'2022-09-07' AS Date))
INSERT [dbo].[solicitud del cliente] ([clienteid], [nombre del cliente], [servicio/producto solicitado], [cantidad], [fecha del pedido]) VALUES (7, N'convatec', N'venta de electovalvulas', 50, CAST(N'2022-04-08' AS Date))
INSERT [dbo].[solicitud del cliente] ([clienteid], [nombre del cliente], [servicio/producto solicitado], [cantidad], [fecha del pedido]) VALUES (8, N'alex', N'instalacion automatizada de bomba acuatica', 1, CAST(N'2022-03-03' AS Date))
INSERT [dbo].[solicitud del cliente] ([clienteid], [nombre del cliente], [servicio/producto solicitado], [cantidad], [fecha del pedido]) VALUES (9, N'Fresenius kabi', N'fuente de actuador branson', 20, CAST(N'2022-02-02' AS Date))
INSERT [dbo].[solicitud del cliente] ([clienteid], [nombre del cliente], [servicio/producto solicitado], [cantidad], [fecha del pedido]) VALUES (10, N'misael', N'instalacion porton automatico', 1, CAST(N'2022-05-25' AS Date))
GO
USE [master]
GO
ALTER DATABASE [PLC Developers] SET  READ_WRITE 
GO

