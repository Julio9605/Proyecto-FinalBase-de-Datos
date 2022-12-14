

/****** Object:  Database [Empresa PLC]    Script Date: 8/26/2022 4:37:40 PM ******/

/*
Nombre: Julio Amaurys Campusano
Matricula: 21-SIIN-1-027
Materia: Base de Datos
Seccion: 0541
Universidad O&M
*/
CREATE DATABASE [Empresa PLC]
GO
USE [Empresa PLC]
GO
/****** Object:  Table [dbo].[almacen]    Script Date: 8/26/2022 4:37:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[almacen](
	[productoid] [varchar](50) NOT NULL,
	[cantidad] [varchar](50) NULL,
 CONSTRAINT [PK_almacen] PRIMARY KEY CLUSTERED 
(
	[productoid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[empleados]    Script Date: 8/26/2022 4:37:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[empleados](
	[Empleadoid] [int] NOT NULL,
	[nombre] [varchar](50) NULL,
	[id] [int] NULL,
	[cargoid] [int] NULL,
 CONSTRAINT [PK_empleados] PRIMARY KEY CLUSTERED 
(
	[Empleadoid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[factura]    Script Date: 8/26/2022 4:37:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[factura](
	[clienteid] [int] NOT NULL,
	[nombre] [varchar](50) NULL,
	[fecha de entrega] [date] NULL,
 CONSTRAINT [PK_factura] PRIMARY KEY CLUSTERED 
(
	[clienteid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[nomina]    Script Date: 8/26/2022 4:37:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[nomina](
	[empleadoid] [int] NULL,
	[nombre] [varchar](50) NULL,
	[cargo] [varchar](50) NULL,
	[monto] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[solicitud]    Script Date: 8/26/2022 4:37:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[solicitud](
	[clienteid] [int] NULL,
	[nombre] [varchar](50) NULL,
	[productoid] [varchar](50) NULL,
	[cargoid] [int] NOT NULL,
 CONSTRAINT [PK_solicitud] PRIMARY KEY CLUSTERED 
(
	[cargoid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[almacen] ([productoid], [cantidad]) VALUES (N'1', N'30')
INSERT [dbo].[almacen] ([productoid], [cantidad]) VALUES (N'10', N'20')
INSERT [dbo].[almacen] ([productoid], [cantidad]) VALUES (N'2', N'80')
INSERT [dbo].[almacen] ([productoid], [cantidad]) VALUES (N'3', N'50')
INSERT [dbo].[almacen] ([productoid], [cantidad]) VALUES (N'4', N'70')
INSERT [dbo].[almacen] ([productoid], [cantidad]) VALUES (N'5', N'14')
INSERT [dbo].[almacen] ([productoid], [cantidad]) VALUES (N'6', N'15')
INSERT [dbo].[almacen] ([productoid], [cantidad]) VALUES (N'7', N'18')
INSERT [dbo].[almacen] ([productoid], [cantidad]) VALUES (N'8', N'22')
INSERT [dbo].[almacen] ([productoid], [cantidad]) VALUES (N'9', N'15')
GO
INSERT [dbo].[empleados] ([Empleadoid], [nombre], [id], [cargoid]) VALUES (1, N'mercedes', 5959592, 1)
INSERT [dbo].[empleados] ([Empleadoid], [nombre], [id], [cargoid]) VALUES (2, N'pablo', 818189, 2)
INSERT [dbo].[empleados] ([Empleadoid], [nombre], [id], [cargoid]) VALUES (3, N'elder', 9922929, 3)
INSERT [dbo].[empleados] ([Empleadoid], [nombre], [id], [cargoid]) VALUES (4, N'orlando', 2929526, 4)
INSERT [dbo].[empleados] ([Empleadoid], [nombre], [id], [cargoid]) VALUES (5, N'eloy', 295592659, 5)
INSERT [dbo].[empleados] ([Empleadoid], [nombre], [id], [cargoid]) VALUES (6, N'jesus', 959299, 6)
INSERT [dbo].[empleados] ([Empleadoid], [nombre], [id], [cargoid]) VALUES (7, N'pedro', 929299, 7)
INSERT [dbo].[empleados] ([Empleadoid], [nombre], [id], [cargoid]) VALUES (8, N'juan', 2299929, 8)
INSERT [dbo].[empleados] ([Empleadoid], [nombre], [id], [cargoid]) VALUES (9, N'maria', 292922, 9)
INSERT [dbo].[empleados] ([Empleadoid], [nombre], [id], [cargoid]) VALUES (10, N'carlos', 2992929, 10)
GO
INSERT [dbo].[factura] ([clienteid], [nombre], [fecha de entrega]) VALUES (1, N'fernando', CAST(N'2022-05-02' AS Date))
INSERT [dbo].[factura] ([clienteid], [nombre], [fecha de entrega]) VALUES (2, N'ester', CAST(N'2022-05-06' AS Date))
INSERT [dbo].[factura] ([clienteid], [nombre], [fecha de entrega]) VALUES (3, N'julio', CAST(N'2022-08-07' AS Date))
INSERT [dbo].[factura] ([clienteid], [nombre], [fecha de entrega]) VALUES (4, N'amaurys', CAST(N'2022-02-02' AS Date))
INSERT [dbo].[factura] ([clienteid], [nombre], [fecha de entrega]) VALUES (5, N'adrian ', CAST(N'2022-03-03' AS Date))
INSERT [dbo].[factura] ([clienteid], [nombre], [fecha de entrega]) VALUES (6, N'arie', CAST(N'2022-12-01' AS Date))
INSERT [dbo].[factura] ([clienteid], [nombre], [fecha de entrega]) VALUES (7, N'elvin ', CAST(N'2022-09-09' AS Date))
INSERT [dbo].[factura] ([clienteid], [nombre], [fecha de entrega]) VALUES (8, N'orlando', CAST(N'2022-12-08' AS Date))
INSERT [dbo].[factura] ([clienteid], [nombre], [fecha de entrega]) VALUES (9, N'pedro', CAST(N'2022-01-01' AS Date))
INSERT [dbo].[factura] ([clienteid], [nombre], [fecha de entrega]) VALUES (10, N'juan', CAST(N'2022-11-16' AS Date))
GO
INSERT [dbo].[nomina] ([empleadoid], [nombre], [cargo], [monto]) VALUES (1, N'carlos', N'tecnico', 2662626)
INSERT [dbo].[nomina] ([empleadoid], [nombre], [cargo], [monto]) VALUES (2, N'maria', N'chofer', 626262)
INSERT [dbo].[nomina] ([empleadoid], [nombre], [cargo], [monto]) VALUES (3, N'juan', N'chofer', 6262626)
INSERT [dbo].[nomina] ([empleadoid], [nombre], [cargo], [monto]) VALUES (4, N'pedro', N'tecnico', 6262622)
INSERT [dbo].[nomina] ([empleadoid], [nombre], [cargo], [monto]) VALUES (5, N'jose', N'supervisor', 929296)
INSERT [dbo].[nomina] ([empleadoid], [nombre], [cargo], [monto]) VALUES (6, N'jhon', N'supervisor', 959595)
INSERT [dbo].[nomina] ([empleadoid], [nombre], [cargo], [monto]) VALUES (7, N'kyle', N'gerente', 956295)
INSERT [dbo].[nomina] ([empleadoid], [nombre], [cargo], [monto]) VALUES (8, N'will', N'gerente', 9929299)
INSERT [dbo].[nomina] ([empleadoid], [nombre], [cargo], [monto]) VALUES (9, N'keanu', N'coordinador', 2929929)
INSERT [dbo].[nomina] ([empleadoid], [nombre], [cargo], [monto]) VALUES (10, N'smith', N'tecnico', 6292929)
GO
INSERT [dbo].[solicitud] ([clienteid], [nombre], [productoid], [cargoid]) VALUES (1, N'carl', N'1', 1)
INSERT [dbo].[solicitud] ([clienteid], [nombre], [productoid], [cargoid]) VALUES (2, N'maria', N'2', 2)
INSERT [dbo].[solicitud] ([clienteid], [nombre], [productoid], [cargoid]) VALUES (3, N'juan', N'3', 3)
INSERT [dbo].[solicitud] ([clienteid], [nombre], [productoid], [cargoid]) VALUES (4, N'martiza', N'4', 4)
INSERT [dbo].[solicitud] ([clienteid], [nombre], [productoid], [cargoid]) VALUES (5, N'jose', N'5', 5)
INSERT [dbo].[solicitud] ([clienteid], [nombre], [productoid], [cargoid]) VALUES (6, N'jorge', N'6', 6)
INSERT [dbo].[solicitud] ([clienteid], [nombre], [productoid], [cargoid]) VALUES (7, N'carol', N'7', 7)
INSERT [dbo].[solicitud] ([clienteid], [nombre], [productoid], [cargoid]) VALUES (8, N'amaurys', N'8', 8)
INSERT [dbo].[solicitud] ([clienteid], [nombre], [productoid], [cargoid]) VALUES (9, N'julio', N'9', 9)
INSERT [dbo].[solicitud] ([clienteid], [nombre], [productoid], [cargoid]) VALUES (10, N'orlando', N'10', 10)
GO
ALTER TABLE [dbo].[empleados]  WITH CHECK ADD  CONSTRAINT [FK_empleados_solicitud1] FOREIGN KEY([cargoid])
REFERENCES [dbo].[solicitud] ([cargoid])
GO
ALTER TABLE [dbo].[empleados] CHECK CONSTRAINT [FK_empleados_solicitud1]
GO
ALTER TABLE [dbo].[nomina]  WITH CHECK ADD  CONSTRAINT [FK_nomina_empleados] FOREIGN KEY([empleadoid])
REFERENCES [dbo].[empleados] ([Empleadoid])
GO
ALTER TABLE [dbo].[nomina] CHECK CONSTRAINT [FK_nomina_empleados]
GO
ALTER TABLE [dbo].[solicitud]  WITH CHECK ADD  CONSTRAINT [FK_solicitud_almacen1] FOREIGN KEY([productoid])
REFERENCES [dbo].[almacen] ([productoid])
GO
ALTER TABLE [dbo].[solicitud] CHECK CONSTRAINT [FK_solicitud_almacen1]
GO
ALTER TABLE [dbo].[solicitud]  WITH CHECK ADD  CONSTRAINT [FK_solicitud_factura1] FOREIGN KEY([clienteid])
REFERENCES [dbo].[factura] ([clienteid])
GO
ALTER TABLE [dbo].[solicitud] CHECK CONSTRAINT [FK_solicitud_factura1]
GO
USE [master]
GO
ALTER DATABASE [Empresa PLC] SET  READ_WRITE 
GO
