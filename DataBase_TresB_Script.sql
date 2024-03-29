USE [master]
GO
/****** Object:  Database [DB_TRESB]    Script Date: 15/11/2019 15:54:17 ******/
CREATE DATABASE [DB_TRESB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DB_TRESB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\DB_TRESB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'DB_TRESB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\DB_TRESB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [DB_TRESB] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DB_TRESB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DB_TRESB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DB_TRESB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DB_TRESB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DB_TRESB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DB_TRESB] SET ARITHABORT OFF 
GO
ALTER DATABASE [DB_TRESB] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [DB_TRESB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DB_TRESB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DB_TRESB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DB_TRESB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DB_TRESB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DB_TRESB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DB_TRESB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DB_TRESB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DB_TRESB] SET  ENABLE_BROKER 
GO
ALTER DATABASE [DB_TRESB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DB_TRESB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DB_TRESB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DB_TRESB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DB_TRESB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DB_TRESB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DB_TRESB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DB_TRESB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [DB_TRESB] SET  MULTI_USER 
GO
ALTER DATABASE [DB_TRESB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DB_TRESB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DB_TRESB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DB_TRESB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DB_TRESB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [DB_TRESB] SET QUERY_STORE = OFF
GO
USE [DB_TRESB]
GO
ALTER DATABASE SCOPED CONFIGURATION SET IDENTITY_CACHE = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [DB_TRESB]
GO
/****** Object:  Table [dbo].[CarritoCompras]    Script Date: 15/11/2019 15:54:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CarritoCompras](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdProducto] [int] NOT NULL,
	[Cantidad] [int] NOT NULL,
	[IdUsuario] [int] NOT NULL,
 CONSTRAINT [PK_CarritoCompras_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categoria]    Script Date: 15/11/2019 15:54:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categoria](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](100) NOT NULL,
 CONSTRAINT [PK_Categoria_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Comentarios]    Script Date: 15/11/2019 15:54:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comentarios](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Texto] [varchar](2001) NOT NULL,
	[Fecha] [datetime] NOT NULL,
	[IdUsuario] [int] NOT NULL,
	[IdProducto] [int] NOT NULL,
 CONSTRAINT [PK_Comentarios_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DetalleVenta]    Script Date: 15/11/2019 15:54:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DetalleVenta](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SubTotal] [decimal](12, 2) NOT NULL,
	[PrecioUnitario] [decimal](8, 2) NOT NULL,
	[Cantidad] [int] NOT NULL,
	[IdVenta] [int] NOT NULL,
	[IdProducto] [int] NOT NULL,
 CONSTRAINT [PK_DetalleVenta_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Direccion]    Script Date: 15/11/2019 15:54:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Direccion](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Calle] [varchar](200) NOT NULL,
	[Pais] [varchar](200) NOT NULL,
	[Region] [varchar](200) NOT NULL,
	[Ciudad] [varchar](200) NOT NULL,
	[CodigoPostal] [varchar](20) NOT NULL,
	[IdUsuario] [int] NOT NULL,
 CONSTRAINT [PK_Direccion_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ListaFavoritos]    Script Date: 15/11/2019 15:54:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ListaFavoritos](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdProducto] [int] NOT NULL,
	[IdUsuario] [int] NOT NULL,
 CONSTRAINT [PK_ListaFavoritos_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Producto]    Script Date: 15/11/2019 15:54:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Producto](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](100) NOT NULL,
	[Descripcion] [varchar](500) NOT NULL,
	[PrecioUnitario] [decimal](8, 2) NOT NULL,
	[Stock] [int] NOT NULL,
	[RutaImagen] [varchar](max) NULL,
	[IsActive] [bit] NOT NULL,
	[IdCategoria] [int] NOT NULL,
 CONSTRAINT [PK_Producto_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 15/11/2019 15:54:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuario](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Email] [varchar](100) NOT NULL,
	[Clave] [varchar](100) NOT NULL,
	[Salt] [varchar](100) NOT NULL,
	[Nombres] [varchar](200) NOT NULL,
	[Apellidos] [varchar](200) NOT NULL,
	[Sexo] [bit] NOT NULL,
	[FechaNacimiento] [datetime] NOT NULL,
	[Celular] [varchar](12) NOT NULL,
	[TipoUsuario] [tinyint] NOT NULL,
	[FechaRegistro] [datetime] NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_Usuario_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Venta]    Script Date: 15/11/2019 15:54:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Venta](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdUsuario] [int] NOT NULL,
	[Fecha] [datetime] NOT NULL,
	[MontoTotal] [decimal](12, 2) NOT NULL,
	[TipoPago] [tinyint] NOT NULL,
	[IdDireccion] [int] NOT NULL,
 CONSTRAINT [PK_Venta_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[CarritoCompras] ON 

INSERT [dbo].[CarritoCompras] ([Id], [IdProducto], [Cantidad], [IdUsuario]) VALUES (50, 41, 1, 1)
SET IDENTITY_INSERT [dbo].[CarritoCompras] OFF
SET IDENTITY_INSERT [dbo].[Categoria] ON 

INSERT [dbo].[Categoria] ([Id], [Nombre]) VALUES (8, N'Calzado')
INSERT [dbo].[Categoria] ([Id], [Nombre]) VALUES (11, N'Jeje')
INSERT [dbo].[Categoria] ([Id], [Nombre]) VALUES (9, N'Juguetes')
INSERT [dbo].[Categoria] ([Id], [Nombre]) VALUES (2, N'Los Mas Nuevos')
INSERT [dbo].[Categoria] ([Id], [Nombre]) VALUES (1, N'Los Mas Vendidos')
INSERT [dbo].[Categoria] ([Id], [Nombre]) VALUES (7, N'Maquillaje')
INSERT [dbo].[Categoria] ([Id], [Nombre]) VALUES (6, N'Moda')
INSERT [dbo].[Categoria] ([Id], [Nombre]) VALUES (13, N'Probando')
INSERT [dbo].[Categoria] ([Id], [Nombre]) VALUES (12, N'Pruebita')
INSERT [dbo].[Categoria] ([Id], [Nombre]) VALUES (3, N'Ropa Hombre')
INSERT [dbo].[Categoria] ([Id], [Nombre]) VALUES (4, N'Ropa Mujer')
INSERT [dbo].[Categoria] ([Id], [Nombre]) VALUES (5, N'Tecnologia')
SET IDENTITY_INSERT [dbo].[Categoria] OFF
SET IDENTITY_INSERT [dbo].[Comentarios] ON 

INSERT [dbo].[Comentarios] ([Id], [Texto], [Fecha], [IdUsuario], [IdProducto]) VALUES (2, N'Prueba', CAST(N'2019-10-28T00:00:00.000' AS DateTime), 3, 41)
INSERT [dbo].[Comentarios] ([Id], [Texto], [Fecha], [IdUsuario], [IdProducto]) VALUES (4, N'Otro texto', CAST(N'2019-10-28T00:00:00.000' AS DateTime), 5, 41)
INSERT [dbo].[Comentarios] ([Id], [Texto], [Fecha], [IdUsuario], [IdProducto]) VALUES (7, N'Primer comentario', CAST(N'2019-10-28T17:20:04.093' AS DateTime), 3, 82)
SET IDENTITY_INSERT [dbo].[Comentarios] OFF
SET IDENTITY_INSERT [dbo].[DetalleVenta] ON 

INSERT [dbo].[DetalleVenta] ([Id], [SubTotal], [PrecioUnitario], [Cantidad], [IdVenta], [IdProducto]) VALUES (1, CAST(127.45 AS Decimal(12, 2)), CAST(127.45 AS Decimal(8, 2)), 1, 1, 26)
INSERT [dbo].[DetalleVenta] ([Id], [SubTotal], [PrecioUnitario], [Cantidad], [IdVenta], [IdProducto]) VALUES (2, CAST(206.95 AS Decimal(12, 2)), CAST(206.95 AS Decimal(8, 2)), 1, 2, 41)
INSERT [dbo].[DetalleVenta] ([Id], [SubTotal], [PrecioUnitario], [Cantidad], [IdVenta], [IdProducto]) VALUES (3, CAST(170.03 AS Decimal(12, 2)), CAST(170.03 AS Decimal(8, 2)), 1, 2, 42)
INSERT [dbo].[DetalleVenta] ([Id], [SubTotal], [PrecioUnitario], [Cantidad], [IdVenta], [IdProducto]) VALUES (4, CAST(235.92 AS Decimal(12, 2)), CAST(235.92 AS Decimal(8, 2)), 1, 2, 82)
INSERT [dbo].[DetalleVenta] ([Id], [SubTotal], [PrecioUnitario], [Cantidad], [IdVenta], [IdProducto]) VALUES (5, CAST(254.90 AS Decimal(12, 2)), CAST(127.45 AS Decimal(8, 2)), 2, 3, 26)
INSERT [dbo].[DetalleVenta] ([Id], [SubTotal], [PrecioUnitario], [Cantidad], [IdVenta], [IdProducto]) VALUES (6, CAST(413.90 AS Decimal(12, 2)), CAST(206.95 AS Decimal(8, 2)), 2, 3, 41)
INSERT [dbo].[DetalleVenta] ([Id], [SubTotal], [PrecioUnitario], [Cantidad], [IdVenta], [IdProducto]) VALUES (7, CAST(340.06 AS Decimal(12, 2)), CAST(170.03 AS Decimal(8, 2)), 2, 3, 42)
INSERT [dbo].[DetalleVenta] ([Id], [SubTotal], [PrecioUnitario], [Cantidad], [IdVenta], [IdProducto]) VALUES (8, CAST(235.92 AS Decimal(12, 2)), CAST(235.92 AS Decimal(8, 2)), 1, 3, 82)
INSERT [dbo].[DetalleVenta] ([Id], [SubTotal], [PrecioUnitario], [Cantidad], [IdVenta], [IdProducto]) VALUES (9, CAST(620.85 AS Decimal(12, 2)), CAST(206.95 AS Decimal(8, 2)), 3, 4, 41)
INSERT [dbo].[DetalleVenta] ([Id], [SubTotal], [PrecioUnitario], [Cantidad], [IdVenta], [IdProducto]) VALUES (10, CAST(127.45 AS Decimal(12, 2)), CAST(127.45 AS Decimal(8, 2)), 1, 5, 26)
INSERT [dbo].[DetalleVenta] ([Id], [SubTotal], [PrecioUnitario], [Cantidad], [IdVenta], [IdProducto]) VALUES (11, CAST(206.95 AS Decimal(12, 2)), CAST(206.95 AS Decimal(8, 2)), 1, 5, 41)
INSERT [dbo].[DetalleVenta] ([Id], [SubTotal], [PrecioUnitario], [Cantidad], [IdVenta], [IdProducto]) VALUES (12, CAST(170.03 AS Decimal(12, 2)), CAST(170.03 AS Decimal(8, 2)), 1, 5, 42)
INSERT [dbo].[DetalleVenta] ([Id], [SubTotal], [PrecioUnitario], [Cantidad], [IdVenta], [IdProducto]) VALUES (13, CAST(235.92 AS Decimal(12, 2)), CAST(235.92 AS Decimal(8, 2)), 1, 5, 82)
INSERT [dbo].[DetalleVenta] ([Id], [SubTotal], [PrecioUnitario], [Cantidad], [IdVenta], [IdProducto]) VALUES (14, CAST(6.64 AS Decimal(12, 2)), CAST(6.64 AS Decimal(8, 2)), 1, 5, 13)
INSERT [dbo].[DetalleVenta] ([Id], [SubTotal], [PrecioUnitario], [Cantidad], [IdVenta], [IdProducto]) VALUES (15, CAST(127.45 AS Decimal(12, 2)), CAST(127.45 AS Decimal(8, 2)), 1, 6, 26)
INSERT [dbo].[DetalleVenta] ([Id], [SubTotal], [PrecioUnitario], [Cantidad], [IdVenta], [IdProducto]) VALUES (16, CAST(206.95 AS Decimal(12, 2)), CAST(206.95 AS Decimal(8, 2)), 1, 6, 41)
INSERT [dbo].[DetalleVenta] ([Id], [SubTotal], [PrecioUnitario], [Cantidad], [IdVenta], [IdProducto]) VALUES (17, CAST(170.03 AS Decimal(12, 2)), CAST(170.03 AS Decimal(8, 2)), 1, 6, 42)
INSERT [dbo].[DetalleVenta] ([Id], [SubTotal], [PrecioUnitario], [Cantidad], [IdVenta], [IdProducto]) VALUES (18, CAST(235.92 AS Decimal(12, 2)), CAST(235.92 AS Decimal(8, 2)), 1, 6, 82)
INSERT [dbo].[DetalleVenta] ([Id], [SubTotal], [PrecioUnitario], [Cantidad], [IdVenta], [IdProducto]) VALUES (19, CAST(214.61 AS Decimal(12, 2)), CAST(214.61 AS Decimal(8, 2)), 1, 6, 36)
INSERT [dbo].[DetalleVenta] ([Id], [SubTotal], [PrecioUnitario], [Cantidad], [IdVenta], [IdProducto]) VALUES (20, CAST(1181.90 AS Decimal(12, 2)), CAST(236.38 AS Decimal(8, 2)), 5, 14, 32)
INSERT [dbo].[DetalleVenta] ([Id], [SubTotal], [PrecioUnitario], [Cantidad], [IdVenta], [IdProducto]) VALUES (21, CAST(351.47 AS Decimal(12, 2)), CAST(50.21 AS Decimal(8, 2)), 7, 14, 33)
INSERT [dbo].[DetalleVenta] ([Id], [SubTotal], [PrecioUnitario], [Cantidad], [IdVenta], [IdProducto]) VALUES (22, CAST(2343.70 AS Decimal(12, 2)), CAST(234.37 AS Decimal(8, 2)), 10, 14, 34)
INSERT [dbo].[DetalleVenta] ([Id], [SubTotal], [PrecioUnitario], [Cantidad], [IdVenta], [IdProducto]) VALUES (23, CAST(1929.20 AS Decimal(12, 2)), CAST(37.10 AS Decimal(8, 2)), 52, 15, 40)
INSERT [dbo].[DetalleVenta] ([Id], [SubTotal], [PrecioUnitario], [Cantidad], [IdVenta], [IdProducto]) VALUES (24, CAST(6627.40 AS Decimal(12, 2)), CAST(127.45 AS Decimal(8, 2)), 52, 16, 26)
INSERT [dbo].[DetalleVenta] ([Id], [SubTotal], [PrecioUnitario], [Cantidad], [IdVenta], [IdProducto]) VALUES (25, CAST(127.45 AS Decimal(12, 2)), CAST(127.45 AS Decimal(8, 2)), 1, 17, 26)
INSERT [dbo].[DetalleVenta] ([Id], [SubTotal], [PrecioUnitario], [Cantidad], [IdVenta], [IdProducto]) VALUES (26, CAST(127.45 AS Decimal(12, 2)), CAST(127.45 AS Decimal(8, 2)), 1, 18, 26)
INSERT [dbo].[DetalleVenta] ([Id], [SubTotal], [PrecioUnitario], [Cantidad], [IdVenta], [IdProducto]) VALUES (27, CAST(206.95 AS Decimal(12, 2)), CAST(206.95 AS Decimal(8, 2)), 1, 18, 41)
INSERT [dbo].[DetalleVenta] ([Id], [SubTotal], [PrecioUnitario], [Cantidad], [IdVenta], [IdProducto]) VALUES (28, CAST(340.06 AS Decimal(12, 2)), CAST(170.03 AS Decimal(8, 2)), 2, 18, 42)
INSERT [dbo].[DetalleVenta] ([Id], [SubTotal], [PrecioUnitario], [Cantidad], [IdVenta], [IdProducto]) VALUES (29, CAST(2359.20 AS Decimal(12, 2)), CAST(235.92 AS Decimal(8, 2)), 10, 18, 82)
INSERT [dbo].[DetalleVenta] ([Id], [SubTotal], [PrecioUnitario], [Cantidad], [IdVenta], [IdProducto]) VALUES (30, CAST(33.64 AS Decimal(12, 2)), CAST(33.64 AS Decimal(8, 2)), 1, 18, 95)
INSERT [dbo].[DetalleVenta] ([Id], [SubTotal], [PrecioUnitario], [Cantidad], [IdVenta], [IdProducto]) VALUES (31, CAST(206.95 AS Decimal(12, 2)), CAST(206.95 AS Decimal(8, 2)), 1, 19, 41)
INSERT [dbo].[DetalleVenta] ([Id], [SubTotal], [PrecioUnitario], [Cantidad], [IdVenta], [IdProducto]) VALUES (32, CAST(235.92 AS Decimal(12, 2)), CAST(235.92 AS Decimal(8, 2)), 1, 19, 82)
INSERT [dbo].[DetalleVenta] ([Id], [SubTotal], [PrecioUnitario], [Cantidad], [IdVenta], [IdProducto]) VALUES (33, CAST(235.92 AS Decimal(12, 2)), CAST(235.92 AS Decimal(8, 2)), 1, 20, 82)
INSERT [dbo].[DetalleVenta] ([Id], [SubTotal], [PrecioUnitario], [Cantidad], [IdVenta], [IdProducto]) VALUES (34, CAST(206.95 AS Decimal(12, 2)), CAST(206.95 AS Decimal(8, 2)), 1, 20, 41)
INSERT [dbo].[DetalleVenta] ([Id], [SubTotal], [PrecioUnitario], [Cantidad], [IdVenta], [IdProducto]) VALUES (35, CAST(235.92 AS Decimal(12, 2)), CAST(235.92 AS Decimal(8, 2)), 1, 21, 82)
INSERT [dbo].[DetalleVenta] ([Id], [SubTotal], [PrecioUnitario], [Cantidad], [IdVenta], [IdProducto]) VALUES (36, CAST(152.77 AS Decimal(12, 2)), CAST(152.77 AS Decimal(8, 2)), 1, 21, 77)
INSERT [dbo].[DetalleVenta] ([Id], [SubTotal], [PrecioUnitario], [Cantidad], [IdVenta], [IdProducto]) VALUES (37, CAST(47.36 AS Decimal(12, 2)), CAST(47.36 AS Decimal(8, 2)), 1, 21, 18)
INSERT [dbo].[DetalleVenta] ([Id], [SubTotal], [PrecioUnitario], [Cantidad], [IdVenta], [IdProducto]) VALUES (38, CAST(6.64 AS Decimal(12, 2)), CAST(6.64 AS Decimal(8, 2)), 1, 21, 13)
INSERT [dbo].[DetalleVenta] ([Id], [SubTotal], [PrecioUnitario], [Cantidad], [IdVenta], [IdProducto]) VALUES (39, CAST(33.64 AS Decimal(12, 2)), CAST(33.64 AS Decimal(8, 2)), 1, 21, 95)
INSERT [dbo].[DetalleVenta] ([Id], [SubTotal], [PrecioUnitario], [Cantidad], [IdVenta], [IdProducto]) VALUES (40, CAST(3104.25 AS Decimal(12, 2)), CAST(206.95 AS Decimal(8, 2)), 15, 22, 41)
INSERT [dbo].[DetalleVenta] ([Id], [SubTotal], [PrecioUnitario], [Cantidad], [IdVenta], [IdProducto]) VALUES (41, CAST(235.92 AS Decimal(12, 2)), CAST(235.92 AS Decimal(8, 2)), 1, 22, 82)
SET IDENTITY_INSERT [dbo].[DetalleVenta] OFF
SET IDENTITY_INSERT [dbo].[Direccion] ON 

INSERT [dbo].[Direccion] ([Id], [Calle], [Pais], [Region], [Ciudad], [CodigoPostal], [IdUsuario]) VALUES (2, N'Direccion Paul', N'Peru', N'Cajamarca/Cajamarca/Cajamarca', N'Cajamarca', N'076', 3)
INSERT [dbo].[Direccion] ([Id], [Calle], [Pais], [Region], [Ciudad], [CodigoPostal], [IdUsuario]) VALUES (3, N'Direccion Luis', N'Peru', N'Cajamarca/Cajamarca/Cajamarca', N'Cajamarca', N'076', 4)
INSERT [dbo].[Direccion] ([Id], [Calle], [Pais], [Region], [Ciudad], [CodigoPostal], [IdUsuario]) VALUES (4, N'Direccion Andrea', N'Peru', N'Cajamarca/Cajamarca/Cajamarca', N'Cajamarca', N'076', 5)
INSERT [dbo].[Direccion] ([Id], [Calle], [Pais], [Region], [Ciudad], [CodigoPostal], [IdUsuario]) VALUES (5, N'Direccion Paul 2', N'Peru', N'Cajamarca/Cajamarca/Cajamarca', N'Cajamarca', N'076', 3)
INSERT [dbo].[Direccion] ([Id], [Calle], [Pais], [Region], [Ciudad], [CodigoPostal], [IdUsuario]) VALUES (6, N'Direccion Paul 3', N'Peru', N'Cajamarca/Cajamarca/Cajamarca', N'Cajamarca', N'076', 3)
INSERT [dbo].[Direccion] ([Id], [Calle], [Pais], [Region], [Ciudad], [CodigoPostal], [IdUsuario]) VALUES (7, N'Direccion Paul 4', N'Peru', N'Cajamarca/Cajamarca/Cajamarca', N'Cajamarca', N'076', 3)
INSERT [dbo].[Direccion] ([Id], [Calle], [Pais], [Region], [Ciudad], [CodigoPostal], [IdUsuario]) VALUES (8, N'La nueva direccion de paul', N'Peru', N'Cajamarca/Cajamarca/Cajamarca', N'Cajamarca', N'076', 3)
INSERT [dbo].[Direccion] ([Id], [Calle], [Pais], [Region], [Ciudad], [CodigoPostal], [IdUsuario]) VALUES (9, N'Direccion Banios 2', N'Peru', N'Cajamarca/Cajamarca/Cajamarca', N'Cajamarca', N'076', 5)
SET IDENTITY_INSERT [dbo].[Direccion] OFF
SET IDENTITY_INSERT [dbo].[ListaFavoritos] ON 

INSERT [dbo].[ListaFavoritos] ([Id], [IdProducto], [IdUsuario]) VALUES (1, 5, 1)
INSERT [dbo].[ListaFavoritos] ([Id], [IdProducto], [IdUsuario]) VALUES (2, 4, 1)
INSERT [dbo].[ListaFavoritos] ([Id], [IdProducto], [IdUsuario]) VALUES (3, 3, 1)
INSERT [dbo].[ListaFavoritos] ([Id], [IdProducto], [IdUsuario]) VALUES (4, 50, 1)
INSERT [dbo].[ListaFavoritos] ([Id], [IdProducto], [IdUsuario]) VALUES (5, 41, 1)
INSERT [dbo].[ListaFavoritos] ([Id], [IdProducto], [IdUsuario]) VALUES (6, 26, 5)
INSERT [dbo].[ListaFavoritos] ([Id], [IdProducto], [IdUsuario]) VALUES (7, 41, 5)
INSERT [dbo].[ListaFavoritos] ([Id], [IdProducto], [IdUsuario]) VALUES (9, 82, 5)
INSERT [dbo].[ListaFavoritos] ([Id], [IdProducto], [IdUsuario]) VALUES (10, 36, 5)
INSERT [dbo].[ListaFavoritos] ([Id], [IdProducto], [IdUsuario]) VALUES (11, 34, 5)
INSERT [dbo].[ListaFavoritos] ([Id], [IdProducto], [IdUsuario]) VALUES (12, 32, 5)
INSERT [dbo].[ListaFavoritos] ([Id], [IdProducto], [IdUsuario]) VALUES (13, 1, 5)
INSERT [dbo].[ListaFavoritos] ([Id], [IdProducto], [IdUsuario]) VALUES (14, 63, 5)
INSERT [dbo].[ListaFavoritos] ([Id], [IdProducto], [IdUsuario]) VALUES (15, 23, 5)
INSERT [dbo].[ListaFavoritos] ([Id], [IdProducto], [IdUsuario]) VALUES (16, 28, 5)
INSERT [dbo].[ListaFavoritos] ([Id], [IdProducto], [IdUsuario]) VALUES (17, 22, 5)
INSERT [dbo].[ListaFavoritos] ([Id], [IdProducto], [IdUsuario]) VALUES (18, 22, 5)
INSERT [dbo].[ListaFavoritos] ([Id], [IdProducto], [IdUsuario]) VALUES (19, 41, 5)
INSERT [dbo].[ListaFavoritos] ([Id], [IdProducto], [IdUsuario]) VALUES (20, 95, 5)
INSERT [dbo].[ListaFavoritos] ([Id], [IdProducto], [IdUsuario]) VALUES (39, 41, 3)
INSERT [dbo].[ListaFavoritos] ([Id], [IdProducto], [IdUsuario]) VALUES (40, 13, 5)
INSERT [dbo].[ListaFavoritos] ([Id], [IdProducto], [IdUsuario]) VALUES (41, 18, 5)
INSERT [dbo].[ListaFavoritos] ([Id], [IdProducto], [IdUsuario]) VALUES (42, 77, 5)
SET IDENTITY_INSERT [dbo].[ListaFavoritos] OFF
SET IDENTITY_INSERT [dbo].[Producto] ON 

INSERT [dbo].[Producto] ([Id], [Nombre], [Descripcion], [PrecioUnitario], [Stock], [RutaImagen], [IsActive], [IdCategoria]) VALUES (1, N'Nuevo Nombre del producto', N'Una descripcion breve', CAST(35.00 AS Decimal(8, 2)), 15, N'http://dummyimage.com/159x100.jpg/dddddd/000000', 1, 2)
INSERT [dbo].[Producto] ([Id], [Nombre], [Descripcion], [PrecioUnitario], [Stock], [RutaImagen], [IsActive], [IdCategoria]) VALUES (2, N'Wine - Manischewitz Concord', N'Oth fx low end l tibia, subs for opn fx type I/2 w malunion', CAST(135.93 AS Decimal(8, 2)), 650, N'http://dummyimage.com/158x149.jpg/5fa2dd/ffffff', 1, 6)
INSERT [dbo].[Producto] ([Id], [Nombre], [Descripcion], [PrecioUnitario], [Stock], [RutaImagen], [IsActive], [IdCategoria]) VALUES (3, N'Wine - Magnotta, Merlot Sr Vqa', N'Non-prs chronic ulc unsp prt of r low leg w unsp severity', CAST(53.42 AS Decimal(8, 2)), 408, N'http://dummyimage.com/235x126.jpg/5fa2dd/ffffff', 1, 2)
INSERT [dbo].[Producto] ([Id], [Nombre], [Descripcion], [PrecioUnitario], [Stock], [RutaImagen], [IsActive], [IdCategoria]) VALUES (4, N'Bread - Pullman, Sliced', N'Blister (nonthermal) of right wrist, initial encounter', CAST(109.45 AS Decimal(8, 2)), 60, N'http://dummyimage.com/108x100.jpg/ff4444/ffffff', 1, 3)
INSERT [dbo].[Producto] ([Id], [Nombre], [Descripcion], [PrecioUnitario], [Stock], [RutaImagen], [IsActive], [IdCategoria]) VALUES (5, N'Tequila - Sauza Silver', N'Puncture wound w foreign body of unsp shoulder, init encntr', CAST(224.96 AS Decimal(8, 2)), 230, N'http://dummyimage.com/243x152.jpg/cc0000/ffffff', 0, 6)
INSERT [dbo].[Producto] ([Id], [Nombre], [Descripcion], [PrecioUnitario], [Stock], [RutaImagen], [IsActive], [IdCategoria]) VALUES (6, N'Pectin', N'Nondisp fx of dist pole of navic bone of l wrs, 7thP', CAST(7.81 AS Decimal(8, 2)), 271, N'http://dummyimage.com/100x119.jpg/dddddd/000000', 0, 6)
INSERT [dbo].[Producto] ([Id], [Nombre], [Descripcion], [PrecioUnitario], [Stock], [RutaImagen], [IsActive], [IdCategoria]) VALUES (7, N'Apple - Custard', N'Poisoning by chloramphenicol group, accidental, subs', CAST(86.90 AS Decimal(8, 2)), 490, N'http://dummyimage.com/206x180.jpg/5fa2dd/ffffff', 1, 2)
INSERT [dbo].[Producto] ([Id], [Nombre], [Descripcion], [PrecioUnitario], [Stock], [RutaImagen], [IsActive], [IdCategoria]) VALUES (8, N'Bread - Multigrain, Loaf', N'Algoneurodystrophy, multiple sites', CAST(164.21 AS Decimal(8, 2)), 336, N'http://dummyimage.com/204x124.jpg/5fa2dd/ffffff', 0, 3)
INSERT [dbo].[Producto] ([Id], [Nombre], [Descripcion], [PrecioUnitario], [Stock], [RutaImagen], [IsActive], [IdCategoria]) VALUES (9, N'Cheese - Goat With Herbs', N'Palindromic rheumatism, right hip', CAST(155.61 AS Decimal(8, 2)), 226, N'http://dummyimage.com/217x233.jpg/5fa2dd/ffffff', 1, 4)
INSERT [dbo].[Producto] ([Id], [Nombre], [Descripcion], [PrecioUnitario], [Stock], [RutaImagen], [IsActive], [IdCategoria]) VALUES (10, N'Curry Powder Madras', N'Maternal care for oth fetal problems, unsp tri, fetus 5', CAST(249.53 AS Decimal(8, 2)), 29, N'http://dummyimage.com/215x111.jpg/cc0000/ffffff', 0, 6)
INSERT [dbo].[Producto] ([Id], [Nombre], [Descripcion], [PrecioUnitario], [Stock], [RutaImagen], [IsActive], [IdCategoria]) VALUES (11, N'Pesto - Primerba, Paste', N'Histidinemia', CAST(197.52 AS Decimal(8, 2)), 479, N'http://dummyimage.com/140x111.jpg/5fa2dd/ffffff', 1, 6)
INSERT [dbo].[Producto] ([Id], [Nombre], [Descripcion], [PrecioUnitario], [Stock], [RutaImagen], [IsActive], [IdCategoria]) VALUES (12, N'Table Cloth 144x90 White', N'Abrasion of nose', CAST(73.64 AS Decimal(8, 2)), 280, N'http://dummyimage.com/116x207.jpg/cc0000/ffffff', 0, 5)
INSERT [dbo].[Producto] ([Id], [Nombre], [Descripcion], [PrecioUnitario], [Stock], [RutaImagen], [IsActive], [IdCategoria]) VALUES (13, N'Croissant, Raw - Mini', N'Nondisp oblique fx shaft of r rad, 7thD', CAST(6.64 AS Decimal(8, 2)), 184, N'http://dummyimage.com/243x190.jpg/dddddd/000000', 1, 7)
INSERT [dbo].[Producto] ([Id], [Nombre], [Descripcion], [PrecioUnitario], [Stock], [RutaImagen], [IsActive], [IdCategoria]) VALUES (14, N'Bread Fig And Almond', N'Lacerat extn musc/fasc/tend at forarm lv, right arm, subs', CAST(77.69 AS Decimal(8, 2)), 262, N'http://dummyimage.com/245x184.jpg/dddddd/000000', 0, 1)
INSERT [dbo].[Producto] ([Id], [Nombre], [Descripcion], [PrecioUnitario], [Stock], [RutaImagen], [IsActive], [IdCategoria]) VALUES (15, N'Coffee - Decaffeinato Coffee', N'Preparatory care for renal dialysis', CAST(239.15 AS Decimal(8, 2)), 464, N'http://dummyimage.com/109x195.jpg/5fa2dd/ffffff', 0, 6)
INSERT [dbo].[Producto] ([Id], [Nombre], [Descripcion], [PrecioUnitario], [Stock], [RutaImagen], [IsActive], [IdCategoria]) VALUES (16, N'Napkin White', N'Fourth [trochlear] nerve palsy', CAST(117.95 AS Decimal(8, 2)), 287, N'http://dummyimage.com/213x207.jpg/cc0000/ffffff', 0, 2)
INSERT [dbo].[Producto] ([Id], [Nombre], [Descripcion], [PrecioUnitario], [Stock], [RutaImagen], [IsActive], [IdCategoria]) VALUES (17, N'Fudge - Cream Fudge', N'Nondisp fx of proximal phalanx of left thumb, sequela', CAST(33.91 AS Decimal(8, 2)), 477, N'http://dummyimage.com/181x208.jpg/5fa2dd/ffffff', 0, 5)
INSERT [dbo].[Producto] ([Id], [Nombre], [Descripcion], [PrecioUnitario], [Stock], [RutaImagen], [IsActive], [IdCategoria]) VALUES (18, N'Chicken Giblets', N'Unspecified sprain of unspecified lesser toe(s), init encntr', CAST(47.36 AS Decimal(8, 2)), 442, N'http://dummyimage.com/178x163.jpg/ff4444/ffffff', 1, 7)
INSERT [dbo].[Producto] ([Id], [Nombre], [Descripcion], [PrecioUnitario], [Stock], [RutaImagen], [IsActive], [IdCategoria]) VALUES (19, N'Napkin - Dinner, White', N'Toxic effect of venom of N & S American snake, assault', CAST(108.01 AS Decimal(8, 2)), 341, N'http://dummyimage.com/211x176.jpg/ff4444/ffffff', 0, 7)
INSERT [dbo].[Producto] ([Id], [Nombre], [Descripcion], [PrecioUnitario], [Stock], [RutaImagen], [IsActive], [IdCategoria]) VALUES (20, N'Tuna - Loin', N'Other contact with nonvenomous lizards', CAST(15.10 AS Decimal(8, 2)), 446, N'http://dummyimage.com/167x198.jpg/5fa2dd/ffffff', 0, 5)
INSERT [dbo].[Producto] ([Id], [Nombre], [Descripcion], [PrecioUnitario], [Stock], [RutaImagen], [IsActive], [IdCategoria]) VALUES (21, N'Tobasco Sauce', N'Ped w convey injured in collision w hv veh nontraf, subs', CAST(222.71 AS Decimal(8, 2)), 220, N'http://dummyimage.com/150x140.jpg/5fa2dd/ffffff', 0, 1)
INSERT [dbo].[Producto] ([Id], [Nombre], [Descripcion], [PrecioUnitario], [Stock], [RutaImagen], [IsActive], [IdCategoria]) VALUES (22, N'Shrimp - 21/25, Peel And Deviened', N'Hemiplegic migraine, not intractable, w status migrainosus', CAST(112.73 AS Decimal(8, 2)), 209, N'http://dummyimage.com/147x107.jpg/ff4444/ffffff', 1, 4)
INSERT [dbo].[Producto] ([Id], [Nombre], [Descripcion], [PrecioUnitario], [Stock], [RutaImagen], [IsActive], [IdCategoria]) VALUES (23, N'Basil - Primerba, Paste', N'Hereditary elliptocytosis', CAST(56.87 AS Decimal(8, 2)), 137, N'http://dummyimage.com/100x187.jpg/5fa2dd/ffffff', 1, 4)
INSERT [dbo].[Producto] ([Id], [Nombre], [Descripcion], [PrecioUnitario], [Stock], [RutaImagen], [IsActive], [IdCategoria]) VALUES (24, N'Wine - Red, Gamay Noir', N'Unsp comp of fb acc left in body fol remov cath/pack, sqla', CAST(249.81 AS Decimal(8, 2)), 259, N'http://dummyimage.com/216x144.jpg/cc0000/ffffff', 0, 4)
INSERT [dbo].[Producto] ([Id], [Nombre], [Descripcion], [PrecioUnitario], [Stock], [RutaImagen], [IsActive], [IdCategoria]) VALUES (25, N'Asparagus - Mexican', N'Abscess of tendon sheath, unspecified hand', CAST(2.35 AS Decimal(8, 2)), 341, N'http://dummyimage.com/119x187.jpg/ff4444/ffffff', 1, 6)
INSERT [dbo].[Producto] ([Id], [Nombre], [Descripcion], [PrecioUnitario], [Stock], [RutaImagen], [IsActive], [IdCategoria]) VALUES (26, N'Asparagus - Green, Fresh', N'Fall from tree, sequela', CAST(127.45 AS Decimal(8, 2)), 0, N'http://dummyimage.com/230x249.jpg/5fa2dd/ffffff', 1, 1)
INSERT [dbo].[Producto] ([Id], [Nombre], [Descripcion], [PrecioUnitario], [Stock], [RutaImagen], [IsActive], [IdCategoria]) VALUES (27, N'Juice - Ocean Spray Kiwi', N'Abscess of external ear, unspecified ear', CAST(68.30 AS Decimal(8, 2)), 152, N'http://dummyimage.com/176x163.jpg/5fa2dd/ffffff', 1, 4)
INSERT [dbo].[Producto] ([Id], [Nombre], [Descripcion], [PrecioUnitario], [Stock], [RutaImagen], [IsActive], [IdCategoria]) VALUES (28, N'Snapple - Mango Maddness', N'Cystic meniscus, unspecified meniscus, right knee', CAST(232.37 AS Decimal(8, 2)), 69, N'http://dummyimage.com/107x203.jpg/5fa2dd/ffffff', 1, 4)
INSERT [dbo].[Producto] ([Id], [Nombre], [Descripcion], [PrecioUnitario], [Stock], [RutaImagen], [IsActive], [IdCategoria]) VALUES (29, N'Wine - Bouchard La Vignee Pinot', N'Conjunctival xerosis, unspecified, bilateral', CAST(207.55 AS Decimal(8, 2)), 294, N'http://dummyimage.com/175x243.jpg/5fa2dd/ffffff', 0, 6)
INSERT [dbo].[Producto] ([Id], [Nombre], [Descripcion], [PrecioUnitario], [Stock], [RutaImagen], [IsActive], [IdCategoria]) VALUES (30, N'Artichoke - Hearts, Canned', N'String or thread causing external constriction, subs encntr', CAST(113.26 AS Decimal(8, 2)), 158, N'http://dummyimage.com/191x112.jpg/dddddd/000000', 0, 6)
INSERT [dbo].[Producto] ([Id], [Nombre], [Descripcion], [PrecioUnitario], [Stock], [RutaImagen], [IsActive], [IdCategoria]) VALUES (31, N'Pepper - Roasted Red', N'Lac w/o fb of unsp frnt wl of thrx w/o penet thor cav, subs', CAST(167.95 AS Decimal(8, 2)), 98, N'http://dummyimage.com/248x110.jpg/ff4444/ffffff', 0, 1)
INSERT [dbo].[Producto] ([Id], [Nombre], [Descripcion], [PrecioUnitario], [Stock], [RutaImagen], [IsActive], [IdCategoria]) VALUES (32, N'Tarragon - Fresh', N'Posterior dislocation of right ulnohumeral joint, sequela', CAST(236.38 AS Decimal(8, 2)), 57, N'http://dummyimage.com/137x147.jpg/dddddd/000000', 1, 2)
INSERT [dbo].[Producto] ([Id], [Nombre], [Descripcion], [PrecioUnitario], [Stock], [RutaImagen], [IsActive], [IdCategoria]) VALUES (33, N'Lid Tray - 16in Dome', N'Poisoning by other antipsychotics and neuroleptics, assault', CAST(50.21 AS Decimal(8, 2)), 281, N'http://dummyimage.com/119x239.jpg/dddddd/000000', 0, 4)
INSERT [dbo].[Producto] ([Id], [Nombre], [Descripcion], [PrecioUnitario], [Stock], [RutaImagen], [IsActive], [IdCategoria]) VALUES (34, N'Beer - Original Organic Lager', N'Gastric contents in pharynx causing asphyxiation', CAST(234.37 AS Decimal(8, 2)), 117, N'http://dummyimage.com/239x178.jpg/cc0000/ffffff', 1, 2)
INSERT [dbo].[Producto] ([Id], [Nombre], [Descripcion], [PrecioUnitario], [Stock], [RutaImagen], [IsActive], [IdCategoria]) VALUES (35, N'Devonshire Cream', N'Insomnia due to other mental disorder', CAST(26.25 AS Decimal(8, 2)), 79, N'http://dummyimage.com/232x161.jpg/cc0000/ffffff', 0, 1)
INSERT [dbo].[Producto] ([Id], [Nombre], [Descripcion], [PrecioUnitario], [Stock], [RutaImagen], [IsActive], [IdCategoria]) VALUES (36, N'Wine - White, Mosel Gold', N'Toxic effect of ketones, undetermined, initial encounter', CAST(214.61 AS Decimal(8, 2)), 254, N'http://dummyimage.com/130x147.jpg/5fa2dd/ffffff', 1, 2)
INSERT [dbo].[Producto] ([Id], [Nombre], [Descripcion], [PrecioUnitario], [Stock], [RutaImagen], [IsActive], [IdCategoria]) VALUES (37, N'Wine - Magnotta - Pinot Gris Sr', N'Laceration without foreign body, left ankle, init encntr', CAST(97.91 AS Decimal(8, 2)), 277, N'http://dummyimage.com/168x177.jpg/5fa2dd/ffffff', 0, 1)
INSERT [dbo].[Producto] ([Id], [Nombre], [Descripcion], [PrecioUnitario], [Stock], [RutaImagen], [IsActive], [IdCategoria]) VALUES (38, N'Iced Tea - Lemon, 460 Ml', N'Other secondary kyphosis, thoracic region', CAST(177.00 AS Decimal(8, 2)), 265, N'http://dummyimage.com/188x185.jpg/cc0000/ffffff', 1, 4)
INSERT [dbo].[Producto] ([Id], [Nombre], [Descripcion], [PrecioUnitario], [Stock], [RutaImagen], [IsActive], [IdCategoria]) VALUES (39, N'Sauce - Gravy, Au Jus, Mix', N'Disp fx of lateral condyle of unsp femr, 7thD', CAST(156.02 AS Decimal(8, 2)), 92, N'http://dummyimage.com/141x133.jpg/5fa2dd/ffffff', 0, 6)
INSERT [dbo].[Producto] ([Id], [Nombre], [Descripcion], [PrecioUnitario], [Stock], [RutaImagen], [IsActive], [IdCategoria]) VALUES (40, N'Smirnoff Green Apple Twist', N'Nondisp fx of lunate, unsp wrist, subs for fx w nonunion', CAST(37.10 AS Decimal(8, 2)), 269, N'http://dummyimage.com/148x189.jpg/5fa2dd/ffffff', 0, 6)
INSERT [dbo].[Producto] ([Id], [Nombre], [Descripcion], [PrecioUnitario], [Stock], [RutaImagen], [IsActive], [IdCategoria]) VALUES (41, N'Basil - Thai', N'Nondisp seg fx shaft of l fibula, 7thQ', CAST(206.95 AS Decimal(8, 2)), 353, N'http://dummyimage.com/118x121.jpg/cc0000/ffffff', 1, 1)
INSERT [dbo].[Producto] ([Id], [Nombre], [Descripcion], [PrecioUnitario], [Stock], [RutaImagen], [IsActive], [IdCategoria]) VALUES (42, N'Sugar - Cubes', N'Disp fx of unspecified radial styloid process, sequela', CAST(170.03 AS Decimal(8, 2)), 0, N'http://dummyimage.com/244x224.jpg/ff4444/ffffff', 1, 1)
INSERT [dbo].[Producto] ([Id], [Nombre], [Descripcion], [PrecioUnitario], [Stock], [RutaImagen], [IsActive], [IdCategoria]) VALUES (43, N'Tea - Camomele', N'Prsn brd/alit mtrcy inj in clsn w statnry object, sequela', CAST(206.80 AS Decimal(8, 2)), 19, N'http://dummyimage.com/143x178.jpg/ff4444/ffffff', 0, 6)
INSERT [dbo].[Producto] ([Id], [Nombre], [Descripcion], [PrecioUnitario], [Stock], [RutaImagen], [IsActive], [IdCategoria]) VALUES (44, N'Wasabi Powder', N'Calculus of bile duct with acute cholangitis w/o obstruction', CAST(191.92 AS Decimal(8, 2)), 333, N'http://dummyimage.com/121x105.jpg/5fa2dd/ffffff', 1, 3)
INSERT [dbo].[Producto] ([Id], [Nombre], [Descripcion], [PrecioUnitario], [Stock], [RutaImagen], [IsActive], [IdCategoria]) VALUES (45, N'Lamb - Whole, Fresh', N'Nondisp fx of posterior wall of left acetabulum, sequela', CAST(187.09 AS Decimal(8, 2)), 492, N'http://dummyimage.com/172x147.jpg/dddddd/000000', 0, 1)
INSERT [dbo].[Producto] ([Id], [Nombre], [Descripcion], [PrecioUnitario], [Stock], [RutaImagen], [IsActive], [IdCategoria]) VALUES (46, N'Crackers - Trio', N'Burn of first degree of trunk, unspecified site, sequela', CAST(128.11 AS Decimal(8, 2)), 356, N'http://dummyimage.com/138x192.jpg/5fa2dd/ffffff', 0, 6)
INSERT [dbo].[Producto] ([Id], [Nombre], [Descripcion], [PrecioUnitario], [Stock], [RutaImagen], [IsActive], [IdCategoria]) VALUES (47, N'Sugar - Invert', N'Displ avuls fx (chip fracture) of unsp talus, 7thK', CAST(191.91 AS Decimal(8, 2)), 472, N'http://dummyimage.com/126x149.jpg/dddddd/000000', 0, 3)
INSERT [dbo].[Producto] ([Id], [Nombre], [Descripcion], [PrecioUnitario], [Stock], [RutaImagen], [IsActive], [IdCategoria]) VALUES (48, N'Muffin Hinge Container 6', N'Stress fracture, right hand, initial encounter for fracture', CAST(210.59 AS Decimal(8, 2)), 212, N'http://dummyimage.com/156x157.jpg/cc0000/ffffff', 0, 1)
INSERT [dbo].[Producto] ([Id], [Nombre], [Descripcion], [PrecioUnitario], [Stock], [RutaImagen], [IsActive], [IdCategoria]) VALUES (49, N'Tart - Lemon', N'Congenital pneumonia due to viral agent', CAST(11.14 AS Decimal(8, 2)), 303, N'http://dummyimage.com/178x135.jpg/ff4444/ffffff', 0, 7)
INSERT [dbo].[Producto] ([Id], [Nombre], [Descripcion], [PrecioUnitario], [Stock], [RutaImagen], [IsActive], [IdCategoria]) VALUES (50, N'Beef - Tongue, Cooked', N'Barton''s fx r radius, subs for opn fx type I/2 w routn heal', CAST(239.37 AS Decimal(8, 2)), 149, N'http://dummyimage.com/136x137.jpg/ff4444/ffffff', 0, 2)
INSERT [dbo].[Producto] ([Id], [Nombre], [Descripcion], [PrecioUnitario], [Stock], [RutaImagen], [IsActive], [IdCategoria]) VALUES (51, N'Wiberg Super Cure', N'Adult osteomalacia', CAST(78.63 AS Decimal(8, 2)), 134, N'http://dummyimage.com/142x136.jpg/ff4444/ffffff', 0, 4)
INSERT [dbo].[Producto] ([Id], [Nombre], [Descripcion], [PrecioUnitario], [Stock], [RutaImagen], [IsActive], [IdCategoria]) VALUES (52, N'Wood Chips - Regular', N'Toxic effect of lacrimogenic gas', CAST(166.95 AS Decimal(8, 2)), 12, N'http://dummyimage.com/194x161.jpg/dddddd/000000', 0, 4)
INSERT [dbo].[Producto] ([Id], [Nombre], [Descripcion], [PrecioUnitario], [Stock], [RutaImagen], [IsActive], [IdCategoria]) VALUES (53, N'Wine - Red, Gamay Noir', N'Fistula, right foot', CAST(173.43 AS Decimal(8, 2)), 184, N'http://dummyimage.com/100x213.jpg/cc0000/ffffff', 0, 2)
INSERT [dbo].[Producto] ([Id], [Nombre], [Descripcion], [PrecioUnitario], [Stock], [RutaImagen], [IsActive], [IdCategoria]) VALUES (54, N'Grand Marnier', N'Poisoning by macrolides, assault, sequela', CAST(232.98 AS Decimal(8, 2)), 494, N'http://dummyimage.com/219x236.jpg/dddddd/000000', 1, 6)
INSERT [dbo].[Producto] ([Id], [Nombre], [Descripcion], [PrecioUnitario], [Stock], [RutaImagen], [IsActive], [IdCategoria]) VALUES (55, N'Black Currants', N'Viral carditis', CAST(98.94 AS Decimal(8, 2)), 191, N'http://dummyimage.com/161x139.jpg/5fa2dd/ffffff', 1, 4)
INSERT [dbo].[Producto] ([Id], [Nombre], [Descripcion], [PrecioUnitario], [Stock], [RutaImagen], [IsActive], [IdCategoria]) VALUES (56, N'Cheese - Cheddar, Mild', N'Oth fx low end unsp femr, 7thH', CAST(125.18 AS Decimal(8, 2)), 22, N'http://dummyimage.com/205x137.jpg/cc0000/ffffff', 1, 2)
INSERT [dbo].[Producto] ([Id], [Nombre], [Descripcion], [PrecioUnitario], [Stock], [RutaImagen], [IsActive], [IdCategoria]) VALUES (57, N'Beans - Black Bean, Canned', N'Intrinsic cartilagenous obst of eustach tube, unsp ear', CAST(19.46 AS Decimal(8, 2)), 243, N'http://dummyimage.com/138x145.jpg/cc0000/ffffff', 1, 2)
INSERT [dbo].[Producto] ([Id], [Nombre], [Descripcion], [PrecioUnitario], [Stock], [RutaImagen], [IsActive], [IdCategoria]) VALUES (58, N'Soup - Campbells Tomato Ravioli', N'Displ commnt fx shaft of l fibula, 7thG', CAST(171.44 AS Decimal(8, 2)), 2, N'http://dummyimage.com/143x228.jpg/dddddd/000000', 1, 4)
INSERT [dbo].[Producto] ([Id], [Nombre], [Descripcion], [PrecioUnitario], [Stock], [RutaImagen], [IsActive], [IdCategoria]) VALUES (59, N'Cup - 3.5oz, Foam', N'Malignant carcinoid tumors', CAST(13.14 AS Decimal(8, 2)), 77, N'http://dummyimage.com/237x179.jpg/ff4444/ffffff', 0, 3)
INSERT [dbo].[Producto] ([Id], [Nombre], [Descripcion], [PrecioUnitario], [Stock], [RutaImagen], [IsActive], [IdCategoria]) VALUES (60, N'Sugar - Sweet N Low, Individual', N'Corrosion of 3rd deg mu sites of right ankle and foot, subs', CAST(184.65 AS Decimal(8, 2)), 434, N'http://dummyimage.com/107x183.jpg/cc0000/ffffff', 0, 3)
INSERT [dbo].[Producto] ([Id], [Nombre], [Descripcion], [PrecioUnitario], [Stock], [RutaImagen], [IsActive], [IdCategoria]) VALUES (61, N'Wine - Ice Wine', N'Unsp disp fx of surg neck of r humer, subs for fx w malunion', CAST(236.04 AS Decimal(8, 2)), 495, N'http://dummyimage.com/103x218.jpg/ff4444/ffffff', 0, 6)
INSERT [dbo].[Producto] ([Id], [Nombre], [Descripcion], [PrecioUnitario], [Stock], [RutaImagen], [IsActive], [IdCategoria]) VALUES (62, N'French Pastry - Mini Chocolate', N'Monoplg upr lmb fol oth cerebvasc disease aff right dom side', CAST(40.42 AS Decimal(8, 2)), 324, N'http://dummyimage.com/171x211.jpg/dddddd/000000', 0, 1)
INSERT [dbo].[Producto] ([Id], [Nombre], [Descripcion], [PrecioUnitario], [Stock], [RutaImagen], [IsActive], [IdCategoria]) VALUES (63, N'Grouper - Fresh', N'Presence of other specified functional implants', CAST(190.66 AS Decimal(8, 2)), 373, N'http://dummyimage.com/113x128.jpg/ff4444/ffffff', 1, 7)
INSERT [dbo].[Producto] ([Id], [Nombre], [Descripcion], [PrecioUnitario], [Stock], [RutaImagen], [IsActive], [IdCategoria]) VALUES (64, N'Jolt Cola - Electric Blue', N'Displ commnt fx shaft of unsp femr, init for opn fx type I/2', CAST(180.44 AS Decimal(8, 2)), 89, N'http://dummyimage.com/233x186.jpg/5fa2dd/ffffff', 0, 5)
INSERT [dbo].[Producto] ([Id], [Nombre], [Descripcion], [PrecioUnitario], [Stock], [RutaImagen], [IsActive], [IdCategoria]) VALUES (65, N'Wine - White, Antinore Orvieto', N'Malignant neoplasm of left orbit', CAST(247.67 AS Decimal(8, 2)), 27, N'http://dummyimage.com/182x234.jpg/5fa2dd/ffffff', 0, 4)
INSERT [dbo].[Producto] ([Id], [Nombre], [Descripcion], [PrecioUnitario], [Stock], [RutaImagen], [IsActive], [IdCategoria]) VALUES (66, N'Lamb Tenderloin Nz Fr', N'Unsp athscl autol vein bypass of the extrm, unsp extremity', CAST(224.63 AS Decimal(8, 2)), 4, N'http://dummyimage.com/155x141.jpg/cc0000/ffffff', 0, 5)
INSERT [dbo].[Producto] ([Id], [Nombre], [Descripcion], [PrecioUnitario], [Stock], [RutaImagen], [IsActive], [IdCategoria]) VALUES (67, N'Foil - 4oz Custard Cup', N'Injury of digital nerve of unspecified finger, subs encntr', CAST(73.18 AS Decimal(8, 2)), 386, N'http://dummyimage.com/171x105.jpg/cc0000/ffffff', 1, 2)
INSERT [dbo].[Producto] ([Id], [Nombre], [Descripcion], [PrecioUnitario], [Stock], [RutaImagen], [IsActive], [IdCategoria]) VALUES (68, N'Salmon - Smoked, Sliced', N'Other specified rheumatoid arthritis, left ankle and foot', CAST(217.59 AS Decimal(8, 2)), 450, N'http://dummyimage.com/143x215.jpg/cc0000/ffffff', 0, 6)
INSERT [dbo].[Producto] ([Id], [Nombre], [Descripcion], [PrecioUnitario], [Stock], [RutaImagen], [IsActive], [IdCategoria]) VALUES (69, N'Coffee - Cafe Moreno', N'Corros 3rd deg mu right fingers (nail), not inc thumb, init', CAST(72.28 AS Decimal(8, 2)), 133, N'http://dummyimage.com/201x206.jpg/dddddd/000000', 1, 3)
INSERT [dbo].[Producto] ([Id], [Nombre], [Descripcion], [PrecioUnitario], [Stock], [RutaImagen], [IsActive], [IdCategoria]) VALUES (70, N'Scallops - 10/20', N'Other superficial bite of unspecified wrist, subs encntr', CAST(9.44 AS Decimal(8, 2)), 235, N'http://dummyimage.com/233x229.jpg/ff4444/ffffff', 0, 4)
INSERT [dbo].[Producto] ([Id], [Nombre], [Descripcion], [PrecioUnitario], [Stock], [RutaImagen], [IsActive], [IdCategoria]) VALUES (71, N'Wine - Red, Mosaic Zweigelt', N'Lateral disloc of proximal end of tibia, left knee, init', CAST(238.41 AS Decimal(8, 2)), 420, N'http://dummyimage.com/222x213.jpg/dddddd/000000', 1, 6)
INSERT [dbo].[Producto] ([Id], [Nombre], [Descripcion], [PrecioUnitario], [Stock], [RutaImagen], [IsActive], [IdCategoria]) VALUES (72, N'Bread - Granary Small Pull', N'Unsp fx first MC bone, right hand, subs for fx w malunion', CAST(125.42 AS Decimal(8, 2)), 333, N'http://dummyimage.com/228x201.jpg/dddddd/000000', 0, 1)
INSERT [dbo].[Producto] ([Id], [Nombre], [Descripcion], [PrecioUnitario], [Stock], [RutaImagen], [IsActive], [IdCategoria]) VALUES (73, N'Kiwano', N'Mtrcy driver injured in collision w oth mv in traf, init', CAST(16.48 AS Decimal(8, 2)), 219, N'http://dummyimage.com/209x154.jpg/dddddd/000000', 1, 4)
INSERT [dbo].[Producto] ([Id], [Nombre], [Descripcion], [PrecioUnitario], [Stock], [RutaImagen], [IsActive], [IdCategoria]) VALUES (74, N'Gatorade - Fruit Punch', N'Insect bite (nonvenomous), right knee, subsequent encounter', CAST(173.23 AS Decimal(8, 2)), 325, N'http://dummyimage.com/104x234.jpg/5fa2dd/ffffff', 1, 7)
INSERT [dbo].[Producto] ([Id], [Nombre], [Descripcion], [PrecioUnitario], [Stock], [RutaImagen], [IsActive], [IdCategoria]) VALUES (75, N'Water - San Pellegrino', N'Toxic effect of tobacco cigarettes, undetermined, init', CAST(3.32 AS Decimal(8, 2)), 402, N'http://dummyimage.com/119x206.jpg/ff4444/ffffff', 0, 3)
INSERT [dbo].[Producto] ([Id], [Nombre], [Descripcion], [PrecioUnitario], [Stock], [RutaImagen], [IsActive], [IdCategoria]) VALUES (76, N'Beef - Roasted, Cooked', N'Disp fx of med malleolus of unsp tibia, 7thE', CAST(183.92 AS Decimal(8, 2)), 158, N'http://dummyimage.com/155x185.jpg/ff4444/ffffff', 0, 4)
INSERT [dbo].[Producto] ([Id], [Nombre], [Descripcion], [PrecioUnitario], [Stock], [RutaImagen], [IsActive], [IdCategoria]) VALUES (77, N'Energy Drink Bawls', N'Ntrm subarach hemorrhage from anterior communicating artery', CAST(152.77 AS Decimal(8, 2)), 278, N'http://dummyimage.com/169x197.jpg/dddddd/000000', 1, 7)
INSERT [dbo].[Producto] ([Id], [Nombre], [Descripcion], [PrecioUnitario], [Stock], [RutaImagen], [IsActive], [IdCategoria]) VALUES (78, N'Wine - White, Ej Gallo', N'Exanthema subitum [sixth disease] due to human herpesvirus 7', CAST(112.66 AS Decimal(8, 2)), 306, N'http://dummyimage.com/249x174.jpg/ff4444/ffffff', 0, 7)
INSERT [dbo].[Producto] ([Id], [Nombre], [Descripcion], [PrecioUnitario], [Stock], [RutaImagen], [IsActive], [IdCategoria]) VALUES (79, N'Hand Towel', N'Displ longitud fx unsp patella, 7thF', CAST(169.14 AS Decimal(8, 2)), 370, N'http://dummyimage.com/163x163.jpg/ff4444/ffffff', 1, 7)
INSERT [dbo].[Producto] ([Id], [Nombre], [Descripcion], [PrecioUnitario], [Stock], [RutaImagen], [IsActive], [IdCategoria]) VALUES (80, N'Wonton Wrappers', N'Superficial foreign body of unsp shoulder, subs encntr', CAST(93.38 AS Decimal(8, 2)), 79, N'http://dummyimage.com/135x244.jpg/ff4444/ffffff', 0, 1)
INSERT [dbo].[Producto] ([Id], [Nombre], [Descripcion], [PrecioUnitario], [Stock], [RutaImagen], [IsActive], [IdCategoria]) VALUES (81, N'Beef - Tongue, Cooked', N'Pasngr in hv veh injured in clsn w unsp mv in traf, sequela', CAST(96.15 AS Decimal(8, 2)), 259, N'http://dummyimage.com/103x216.jpg/5fa2dd/ffffff', 1, 5)
INSERT [dbo].[Producto] ([Id], [Nombre], [Descripcion], [PrecioUnitario], [Stock], [RutaImagen], [IsActive], [IdCategoria]) VALUES (82, N'Veal Inside - Provimi', N'Puncture wound without foreign body, right hip, subs encntr', CAST(235.92 AS Decimal(8, 2)), 73, N'http://dummyimage.com/135x132.jpg/ff4444/ffffff', 1, 1)
INSERT [dbo].[Producto] ([Id], [Nombre], [Descripcion], [PrecioUnitario], [Stock], [RutaImagen], [IsActive], [IdCategoria]) VALUES (83, N'Iced Tea - Lemon, 340ml', N'Disp fx of neck of left talus, subs for fx w delay heal', CAST(87.31 AS Decimal(8, 2)), 289, N'http://dummyimage.com/200x138.jpg/cc0000/ffffff', 0, 7)
INSERT [dbo].[Producto] ([Id], [Nombre], [Descripcion], [PrecioUnitario], [Stock], [RutaImagen], [IsActive], [IdCategoria]) VALUES (84, N'Tamarillo', N'Path fx in neopltc dis, unsp ankle, subs for fx w malunion', CAST(93.83 AS Decimal(8, 2)), 102, N'http://dummyimage.com/216x132.jpg/ff4444/ffffff', 0, 1)
INSERT [dbo].[Producto] ([Id], [Nombre], [Descripcion], [PrecioUnitario], [Stock], [RutaImagen], [IsActive], [IdCategoria]) VALUES (85, N'Juice - Apple 284ml', N'Oth fracture of left lesser toe(s), subs for fx w malunion', CAST(33.63 AS Decimal(8, 2)), 21, N'http://dummyimage.com/195x200.jpg/dddddd/000000', 0, 7)
INSERT [dbo].[Producto] ([Id], [Nombre], [Descripcion], [PrecioUnitario], [Stock], [RutaImagen], [IsActive], [IdCategoria]) VALUES (86, N'Soup - Campbells Beef Noodle', N'Inferior dislocation of left humerus', CAST(126.14 AS Decimal(8, 2)), 112, N'http://dummyimage.com/174x153.jpg/ff4444/ffffff', 1, 4)
INSERT [dbo].[Producto] ([Id], [Nombre], [Descripcion], [PrecioUnitario], [Stock], [RutaImagen], [IsActive], [IdCategoria]) VALUES (87, N'Mushroom - Oyster, Fresh', N'Drug/chem diab w prolif diab rtnop with comb detach, l eye', CAST(84.60 AS Decimal(8, 2)), 335, N'http://dummyimage.com/185x173.jpg/dddddd/000000', 1, 7)
INSERT [dbo].[Producto] ([Id], [Nombre], [Descripcion], [PrecioUnitario], [Stock], [RutaImagen], [IsActive], [IdCategoria]) VALUES (88, N'Catfish - Fillets', N'Strain of extensor musc/fasc/tend right thumb at wrs/hnd lv', CAST(135.07 AS Decimal(8, 2)), 303, N'http://dummyimage.com/185x218.jpg/5fa2dd/ffffff', 0, 3)
INSERT [dbo].[Producto] ([Id], [Nombre], [Descripcion], [PrecioUnitario], [Stock], [RutaImagen], [IsActive], [IdCategoria]) VALUES (89, N'Fireball Whisky', N'Strain extensor musc/fasc/tend l little finger at forarm lv', CAST(119.68 AS Decimal(8, 2)), 469, N'http://dummyimage.com/213x163.jpg/5fa2dd/ffffff', 1, 5)
INSERT [dbo].[Producto] ([Id], [Nombre], [Descripcion], [PrecioUnitario], [Stock], [RutaImagen], [IsActive], [IdCategoria]) VALUES (90, N'Lamb - Whole, Frozen', N'Nondisp fx of dist pole of navic bone of l wrs, 7thD', CAST(222.89 AS Decimal(8, 2)), 141, N'http://dummyimage.com/127x220.jpg/ff4444/ffffff', 0, 2)
INSERT [dbo].[Producto] ([Id], [Nombre], [Descripcion], [PrecioUnitario], [Stock], [RutaImagen], [IsActive], [IdCategoria]) VALUES (91, N'Tart Shells - Sweet, 4', N'Unsp superficial injury of unspecified ear, subs encntr', CAST(80.73 AS Decimal(8, 2)), 3, N'http://dummyimage.com/247x113.jpg/cc0000/ffffff', 0, 2)
INSERT [dbo].[Producto] ([Id], [Nombre], [Descripcion], [PrecioUnitario], [Stock], [RutaImagen], [IsActive], [IdCategoria]) VALUES (92, N'Wine - Prosecco Valdobienne', N'Benign neoplasm of left ciliary body', CAST(65.54 AS Decimal(8, 2)), 58, N'http://dummyimage.com/128x143.jpg/ff4444/ffffff', 1, 3)
INSERT [dbo].[Producto] ([Id], [Nombre], [Descripcion], [PrecioUnitario], [Stock], [RutaImagen], [IsActive], [IdCategoria]) VALUES (93, N'Thyme - Fresh', N'Unsp fx low end r tibia, 7thH', CAST(9.38 AS Decimal(8, 2)), 29, N'http://dummyimage.com/142x235.jpg/cc0000/ffffff', 0, 7)
INSERT [dbo].[Producto] ([Id], [Nombre], [Descripcion], [PrecioUnitario], [Stock], [RutaImagen], [IsActive], [IdCategoria]) VALUES (94, N'Trout Rainbow Whole', N'Laceration with foreign body of left buttock, subs encntr', CAST(170.69 AS Decimal(8, 2)), 477, N'http://dummyimage.com/193x246.jpg/dddddd/000000', 0, 5)
INSERT [dbo].[Producto] ([Id], [Nombre], [Descripcion], [PrecioUnitario], [Stock], [RutaImagen], [IsActive], [IdCategoria]) VALUES (95, N'Trout Rainbow Whole', N'Displ longitud fx r patella, subs for clos fx w routn heal', CAST(33.64 AS Decimal(8, 2)), 190, N'http://dummyimage.com/106x213.jpg/ff4444/ffffff', 1, 1)
INSERT [dbo].[Producto] ([Id], [Nombre], [Descripcion], [PrecioUnitario], [Stock], [RutaImagen], [IsActive], [IdCategoria]) VALUES (96, N'Cheese - Grie Des Champ', N'Unspecified injury of spleen, subsequent encounter', CAST(169.34 AS Decimal(8, 2)), 227, N'http://dummyimage.com/225x118.jpg/dddddd/000000', 0, 3)
INSERT [dbo].[Producto] ([Id], [Nombre], [Descripcion], [PrecioUnitario], [Stock], [RutaImagen], [IsActive], [IdCategoria]) VALUES (97, N'Nantucket Orange Juice', N'Retained (old) fb in iris or ciliary body, bilateral', CAST(158.00 AS Decimal(8, 2)), 500, N'http://dummyimage.com/118x140.jpg/cc0000/ffffff', 0, 4)
INSERT [dbo].[Producto] ([Id], [Nombre], [Descripcion], [PrecioUnitario], [Stock], [RutaImagen], [IsActive], [IdCategoria]) VALUES (98, N'Brocolinni - Gaylan, Chinese', N'Traum hemor cereb, w LOC of unsp duration, sequela', CAST(171.53 AS Decimal(8, 2)), 359, N'http://dummyimage.com/159x236.jpg/dddddd/000000', 1, 6)
INSERT [dbo].[Producto] ([Id], [Nombre], [Descripcion], [PrecioUnitario], [Stock], [RutaImagen], [IsActive], [IdCategoria]) VALUES (99, N'Sea Bass - Fillets', N'Corros 1st deg mult site of r shldr/up lmb, ex wrs/hnd, subs', CAST(95.98 AS Decimal(8, 2)), 241, N'http://dummyimage.com/139x222.jpg/dddddd/000000', 1, 7)
GO
INSERT [dbo].[Producto] ([Id], [Nombre], [Descripcion], [PrecioUnitario], [Stock], [RutaImagen], [IsActive], [IdCategoria]) VALUES (100, N'Arizona - Plum Green Tea', N'Disp fx of med condyle of l tibia, 7thN', CAST(95.98 AS Decimal(8, 2)), 231, N'http://dummyimage.com/250x231.jpg/dddddd/000000', 0, 1)
INSERT [dbo].[Producto] ([Id], [Nombre], [Descripcion], [PrecioUnitario], [Stock], [RutaImagen], [IsActive], [IdCategoria]) VALUES (106, N'asda', N'asdd', CAST(15.90 AS Decimal(8, 2)), 15, N'~/Imagenes/Productos/71275887_501687520611585_5681027180281200640_n.jpg', 1, 8)
INSERT [dbo].[Producto] ([Id], [Nombre], [Descripcion], [PrecioUnitario], [Stock], [RutaImagen], [IsActive], [IdCategoria]) VALUES (108, N'fufufu', N'fufufufu', CAST(15.00 AS Decimal(8, 2)), 51, N'~/Imagenes/Productos/71650634_1003709220020811_6787185463221288960_n.jpg', 1, 8)
INSERT [dbo].[Producto] ([Id], [Nombre], [Descripcion], [PrecioUnitario], [Stock], [RutaImagen], [IsActive], [IdCategoria]) VALUES (109, N'efeef', N'efefe', CAST(123456.00 AS Decimal(8, 2)), 15, N'~/Imagenes/Productos/71650634_1003709220020811_6787185463221288960_n.jpg', 1, 8)
INSERT [dbo].[Producto] ([Id], [Nombre], [Descripcion], [PrecioUnitario], [Stock], [RutaImagen], [IsActive], [IdCategoria]) VALUES (110, N'efefe', N'efefef', CAST(15.00 AS Decimal(8, 2)), 10, N'~/Imagenes/Productos/71275887_501687520611585_5681027180281200640_n.jpg', 1, 8)
INSERT [dbo].[Producto] ([Id], [Nombre], [Descripcion], [PrecioUnitario], [Stock], [RutaImagen], [IsActive], [IdCategoria]) VALUES (111, N'gfgfg', N'sfdsf', CAST(100000.00 AS Decimal(8, 2)), 14, N'~/Imagenes/Productos/71650634_1003709220020811_6787185463221288960_n.jpg', 1, 8)
INSERT [dbo].[Producto] ([Id], [Nombre], [Descripcion], [PrecioUnitario], [Stock], [RutaImagen], [IsActive], [IdCategoria]) VALUES (116, N'asdsad', N'asdsad', CAST(15.00 AS Decimal(8, 2)), 15, N'', 1, 6)
INSERT [dbo].[Producto] ([Id], [Nombre], [Descripcion], [PrecioUnitario], [Stock], [RutaImagen], [IsActive], [IdCategoria]) VALUES (117, N'sdfds', N'sdfsdf', CAST(205.00 AS Decimal(8, 2)), 15, N'', 1, 6)
INSERT [dbo].[Producto] ([Id], [Nombre], [Descripcion], [PrecioUnitario], [Stock], [RutaImagen], [IsActive], [IdCategoria]) VALUES (118, N'PruebaProducto', N'Descripcion Sencilla como sea', CAST(205.00 AS Decimal(8, 2)), 10, N'', 1, 6)
INSERT [dbo].[Producto] ([Id], [Nombre], [Descripcion], [PrecioUnitario], [Stock], [RutaImagen], [IsActive], [IdCategoria]) VALUES (119, N'PruebaProducto', N'Descripcion Sencilla como sea', CAST(205.00 AS Decimal(8, 2)), 10, N'', 1, 6)
SET IDENTITY_INSERT [dbo].[Producto] OFF
SET IDENTITY_INSERT [dbo].[Usuario] ON 

INSERT [dbo].[Usuario] ([Id], [Email], [Clave], [Salt], [Nombres], [Apellidos], [Sexo], [FechaNacimiento], [Celular], [TipoUsuario], [FechaRegistro], [IsActive]) VALUES (1, N'admin@gmail.com', N'Wyv8rwyg1eJtMJP+bPtcDUbDD7VYXeIwqbWLHy2D0uTUH+pNTAi+kbVcsRq0yw0tsHjdWb19kMQQMG5+RDwrWA==', N'100000.wKP2e+GKkGxZjQO1AVkNAsO6CA/FXdX0K16rbyG4Y4vj/w==', N'Fernando', N'Guerrero', 1, CAST(N'1996-05-06T00:00:00.000' AS DateTime), N'983265964', 2, CAST(N'2019-09-17T19:17:21.163' AS DateTime), 0)
INSERT [dbo].[Usuario] ([Id], [Email], [Clave], [Salt], [Nombres], [Apellidos], [Sexo], [FechaNacimiento], [Celular], [TipoUsuario], [FechaRegistro], [IsActive]) VALUES (2, N'empleado@gmail.com', N'vGU0698Q4iJCifIZeBjVZ9iNwA+wfDscAU+2VV4/TdbYSehl0pPlCpN+WNeUFsxcQNm2vm7SKObT0u10dfitXg==', N'100000.TK7Mxq8BkeeUiY0W9f/J353W+3wNOrAyV+qwdd83wex7kg==', N'Empleado', N'Empleado', 1, CAST(N'2019-09-15T00:00:00.000' AS DateTime), N'12345678', 1, CAST(N'2019-09-17T19:20:29.187' AS DateTime), 1)
INSERT [dbo].[Usuario] ([Id], [Email], [Clave], [Salt], [Nombres], [Apellidos], [Sexo], [FechaNacimiento], [Celular], [TipoUsuario], [FechaRegistro], [IsActive]) VALUES (3, N'paul@gmail.com', N'j2hH2gHZ2Bb1P482MgGQiMZV5AfpTFfMyf+wjgJ4gvOlKbSZbzOfa/eyUXGEjnn44a38tFb3kOHzDKP/tZVHeg==', N'100000.QgGUxGH2q8Zgb0kkZE1StbC+jPAjaq8ts0RjAVf9jMOKTg==', N'Paul', N'Ciriaco', 1, CAST(N'2019-09-18T00:00:00.000' AS DateTime), N'12345678', 0, CAST(N'2019-09-17T19:21:17.830' AS DateTime), 1)
INSERT [dbo].[Usuario] ([Id], [Email], [Clave], [Salt], [Nombres], [Apellidos], [Sexo], [FechaNacimiento], [Celular], [TipoUsuario], [FechaRegistro], [IsActive]) VALUES (4, N'luis@gmail.com', N'J+gbTJk35hv/cEH5WAd6vLgzCR8U71wVwZhagGyWVSD5yjTmB/sgOCosay95Vlu3at48+KIyn1jSraF0x/2sCg==', N'100000.WvnZUsXpmba5EW7kDpEDDRkEo4w78w17QDZgB1o2c72TzA==', N'Luis', N'Luis', 1, CAST(N'1994-05-12T00:00:00.000' AS DateTime), N'983265964', 0, CAST(N'2019-09-17T19:21:43.747' AS DateTime), 1)
INSERT [dbo].[Usuario] ([Id], [Email], [Clave], [Salt], [Nombres], [Apellidos], [Sexo], [FechaNacimiento], [Celular], [TipoUsuario], [FechaRegistro], [IsActive]) VALUES (5, N'andrea@gmail.com', N'gaVaP4jgxkH+B7IorAsP/NBLEUww6gH3cf0dZmxVVv9L8JJ5Sa4d4vG/pBXbwpwvRDUMf7b5qdfH7wJrNvRJ8w==', N'100000.yyjWbECKhxODvQ2azHq90hL/CsNGqaz+raOm2G4wsDVsDA==', N'Andreita', N'Bada', 1, CAST(N'1996-05-15T00:00:00.000' AS DateTime), N'983265964', 0, CAST(N'2019-09-17T19:22:07.317' AS DateTime), 0)
INSERT [dbo].[Usuario] ([Id], [Email], [Clave], [Salt], [Nombres], [Apellidos], [Sexo], [FechaNacimiento], [Celular], [TipoUsuario], [FechaRegistro], [IsActive]) VALUES (6, N'pruebota@gmail.com', N'HtlEKgwplq6q7ea6OLqKQJgalVq1CTbxqD5YwZ6nGt3fq59w/Kzm1eNd7qSvM9Vcpx84kRoiSvWT8h+IMFpX2Q==', N'100000.OFyjarohwbJM74dfNnGqIGG2YFXq3UVh8Yfq+IzowQ/qmA==', N'lalala', N'lalala', 1, CAST(N'2019-10-25T00:00:00.000' AS DateTime), N'12345667', 0, CAST(N'2019-10-12T16:02:28.147' AS DateTime), 1)
INSERT [dbo].[Usuario] ([Id], [Email], [Clave], [Salt], [Nombres], [Apellidos], [Sexo], [FechaNacimiento], [Celular], [TipoUsuario], [FechaRegistro], [IsActive]) VALUES (7, N'calidad@gmail.com', N'/KtR4g/IBAPZETp4hk5nmF4Cfp6P93760ZcUu8zhgL1dSTntrKkgjKZKBvaEMx947xarpmDr6aaXtTmHPs/iIQ==', N'100000.Bkj5jrdazNZSbNjHNNslLXlvVOCm1L+nI+CtlWEmQaEoOA==', N'Calidad', N'Probando', 1, CAST(N'1996-10-06T00:00:00.000' AS DateTime), N'12345678', 0, CAST(N'2019-10-12T16:11:20.827' AS DateTime), 1)
INSERT [dbo].[Usuario] ([Id], [Email], [Clave], [Salt], [Nombres], [Apellidos], [Sexo], [FechaNacimiento], [Celular], [TipoUsuario], [FechaRegistro], [IsActive]) VALUES (8, N'usuario1@gmail.com', N'zB1aXQ4e/dzV7DTofkIQsWgtKe2hOpv+XckQGHxNNk6E698zgoJVU78PWuH/yfLVCPteJ/AoK6HNBQoj+ZmKhw==', N'100000.3zPI2JzNZjpwxQSI3MMA6sY01nyZpu2hqNynnOOMXlGvrA==', N'UsuarioPrueba', N'Usuario', 1, CAST(N'1996-10-06T00:00:00.000' AS DateTime), N'12345678', 1, CAST(N'2019-10-13T08:25:53.967' AS DateTime), 1)
INSERT [dbo].[Usuario] ([Id], [Email], [Clave], [Salt], [Nombres], [Apellidos], [Sexo], [FechaNacimiento], [Celular], [TipoUsuario], [FechaRegistro], [IsActive]) VALUES (11, N'correo@gmail.com', N'tzepokO3IDlM8i4ePOszUlTQx7Y1YpYaN/T5hwpjjE2DJEbTiibUWJxni88PGwL4ztK2jOsniuj88LBWtvZgVA==', N'100000.zIvceUOndD2LJwok4wDYXDGsJ7GvFhvvIkmhPBltm4Oclw==', N'aaa', N'aaa', 1, CAST(N'2019-10-31T00:00:00.000' AS DateTime), N'12345678', 0, CAST(N'2019-10-26T23:25:16.560' AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[Usuario] OFF
SET IDENTITY_INSERT [dbo].[Venta] ON 

INSERT [dbo].[Venta] ([Id], [IdUsuario], [Fecha], [MontoTotal], [TipoPago], [IdDireccion]) VALUES (1, 5, CAST(N'2019-09-17T19:22:25.537' AS DateTime), CAST(127.45 AS Decimal(12, 2)), 1, 4)
INSERT [dbo].[Venta] ([Id], [IdUsuario], [Fecha], [MontoTotal], [TipoPago], [IdDireccion]) VALUES (2, 5, CAST(N'2019-09-17T19:22:34.137' AS DateTime), CAST(612.90 AS Decimal(12, 2)), 1, 4)
INSERT [dbo].[Venta] ([Id], [IdUsuario], [Fecha], [MontoTotal], [TipoPago], [IdDireccion]) VALUES (3, 3, CAST(N'2019-09-17T19:23:02.470' AS DateTime), CAST(1244.78 AS Decimal(12, 2)), 1, 2)
INSERT [dbo].[Venta] ([Id], [IdUsuario], [Fecha], [MontoTotal], [TipoPago], [IdDireccion]) VALUES (4, 3, CAST(N'2019-09-17T19:23:08.923' AS DateTime), CAST(620.85 AS Decimal(12, 2)), 1, 2)
INSERT [dbo].[Venta] ([Id], [IdUsuario], [Fecha], [MontoTotal], [TipoPago], [IdDireccion]) VALUES (5, 4, CAST(N'2019-09-17T19:23:47.313' AS DateTime), CAST(746.99 AS Decimal(12, 2)), 1, 3)
INSERT [dbo].[Venta] ([Id], [IdUsuario], [Fecha], [MontoTotal], [TipoPago], [IdDireccion]) VALUES (6, 5, CAST(N'2019-10-09T12:58:06.597' AS DateTime), CAST(954.96 AS Decimal(12, 2)), 1, 4)
INSERT [dbo].[Venta] ([Id], [IdUsuario], [Fecha], [MontoTotal], [TipoPago], [IdDireccion]) VALUES (14, 3, CAST(N'2019-10-14T21:42:37.700' AS DateTime), CAST(3877.07 AS Decimal(12, 2)), 2, 5)
INSERT [dbo].[Venta] ([Id], [IdUsuario], [Fecha], [MontoTotal], [TipoPago], [IdDireccion]) VALUES (15, 3, CAST(N'2019-10-15T13:57:07.193' AS DateTime), CAST(1929.20 AS Decimal(12, 2)), 1, 2)
INSERT [dbo].[Venta] ([Id], [IdUsuario], [Fecha], [MontoTotal], [TipoPago], [IdDireccion]) VALUES (16, 3, CAST(N'2019-10-15T14:15:22.497' AS DateTime), CAST(6627.40 AS Decimal(12, 2)), 1, 5)
INSERT [dbo].[Venta] ([Id], [IdUsuario], [Fecha], [MontoTotal], [TipoPago], [IdDireccion]) VALUES (17, 3, CAST(N'2019-10-15T14:32:40.417' AS DateTime), CAST(127.45 AS Decimal(12, 2)), 2, 2)
INSERT [dbo].[Venta] ([Id], [IdUsuario], [Fecha], [MontoTotal], [TipoPago], [IdDireccion]) VALUES (18, 5, CAST(N'2019-10-15T14:43:17.723' AS DateTime), CAST(3067.30 AS Decimal(12, 2)), 1, 4)
INSERT [dbo].[Venta] ([Id], [IdUsuario], [Fecha], [MontoTotal], [TipoPago], [IdDireccion]) VALUES (19, 3, CAST(N'2019-10-26T17:36:32.160' AS DateTime), CAST(442.87 AS Decimal(12, 2)), 1, 2)
INSERT [dbo].[Venta] ([Id], [IdUsuario], [Fecha], [MontoTotal], [TipoPago], [IdDireccion]) VALUES (20, 3, CAST(N'2019-10-26T23:17:14.083' AS DateTime), CAST(442.87 AS Decimal(12, 2)), 1, 2)
INSERT [dbo].[Venta] ([Id], [IdUsuario], [Fecha], [MontoTotal], [TipoPago], [IdDireccion]) VALUES (21, 5, CAST(N'2019-10-31T19:59:47.997' AS DateTime), CAST(476.33 AS Decimal(12, 2)), 1, 4)
INSERT [dbo].[Venta] ([Id], [IdUsuario], [Fecha], [MontoTotal], [TipoPago], [IdDireccion]) VALUES (22, 3, CAST(N'2019-11-01T16:09:27.317' AS DateTime), CAST(3340.17 AS Decimal(12, 2)), 1, 2)
SET IDENTITY_INSERT [dbo].[Venta] OFF
SET ANSI_PADDING ON
GO
/****** Object:  Index [UN_Categoria_Nombre]    Script Date: 15/11/2019 15:54:19 ******/
ALTER TABLE [dbo].[Categoria] ADD  CONSTRAINT [UN_Categoria_Nombre] UNIQUE NONCLUSTERED 
(
	[Nombre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UN_Usuario_Correo]    Script Date: 15/11/2019 15:54:19 ******/
ALTER TABLE [dbo].[Usuario] ADD  CONSTRAINT [UN_Usuario_Correo] UNIQUE NONCLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CarritoCompras]  WITH CHECK ADD  CONSTRAINT [FK_CarritoCompras_IdCUsuario] FOREIGN KEY([IdUsuario])
REFERENCES [dbo].[Usuario] ([Id])
GO
ALTER TABLE [dbo].[CarritoCompras] CHECK CONSTRAINT [FK_CarritoCompras_IdCUsuario]
GO
ALTER TABLE [dbo].[CarritoCompras]  WITH CHECK ADD  CONSTRAINT [FK_CarritoCompras_IdProducto] FOREIGN KEY([IdProducto])
REFERENCES [dbo].[Producto] ([Id])
GO
ALTER TABLE [dbo].[CarritoCompras] CHECK CONSTRAINT [FK_CarritoCompras_IdProducto]
GO
ALTER TABLE [dbo].[Comentarios]  WITH CHECK ADD  CONSTRAINT [FK_Comentarios_IdProducto] FOREIGN KEY([IdProducto])
REFERENCES [dbo].[Producto] ([Id])
GO
ALTER TABLE [dbo].[Comentarios] CHECK CONSTRAINT [FK_Comentarios_IdProducto]
GO
ALTER TABLE [dbo].[Comentarios]  WITH CHECK ADD  CONSTRAINT [FK_Comentarios_IdUsuario] FOREIGN KEY([IdUsuario])
REFERENCES [dbo].[Usuario] ([Id])
GO
ALTER TABLE [dbo].[Comentarios] CHECK CONSTRAINT [FK_Comentarios_IdUsuario]
GO
ALTER TABLE [dbo].[DetalleVenta]  WITH CHECK ADD  CONSTRAINT [FK_Producto_IdProducto] FOREIGN KEY([IdProducto])
REFERENCES [dbo].[Producto] ([Id])
GO
ALTER TABLE [dbo].[DetalleVenta] CHECK CONSTRAINT [FK_Producto_IdProducto]
GO
ALTER TABLE [dbo].[DetalleVenta]  WITH CHECK ADD  CONSTRAINT [FK_Producto_IdVenta] FOREIGN KEY([IdVenta])
REFERENCES [dbo].[Venta] ([Id])
GO
ALTER TABLE [dbo].[DetalleVenta] CHECK CONSTRAINT [FK_Producto_IdVenta]
GO
ALTER TABLE [dbo].[Direccion]  WITH CHECK ADD  CONSTRAINT [FK_Direccion_IdUsuario] FOREIGN KEY([IdUsuario])
REFERENCES [dbo].[Usuario] ([Id])
GO
ALTER TABLE [dbo].[Direccion] CHECK CONSTRAINT [FK_Direccion_IdUsuario]
GO
ALTER TABLE [dbo].[ListaFavoritos]  WITH CHECK ADD  CONSTRAINT [FK_ListaFavoritos_IdCUsuario] FOREIGN KEY([IdUsuario])
REFERENCES [dbo].[Usuario] ([Id])
GO
ALTER TABLE [dbo].[ListaFavoritos] CHECK CONSTRAINT [FK_ListaFavoritos_IdCUsuario]
GO
ALTER TABLE [dbo].[ListaFavoritos]  WITH CHECK ADD  CONSTRAINT [FK_ListaFavoritos_IdProducto] FOREIGN KEY([IdProducto])
REFERENCES [dbo].[Producto] ([Id])
GO
ALTER TABLE [dbo].[ListaFavoritos] CHECK CONSTRAINT [FK_ListaFavoritos_IdProducto]
GO
ALTER TABLE [dbo].[Producto]  WITH CHECK ADD  CONSTRAINT [FK_Producto_IdCategoria] FOREIGN KEY([IdCategoria])
REFERENCES [dbo].[Categoria] ([Id])
GO
ALTER TABLE [dbo].[Producto] CHECK CONSTRAINT [FK_Producto_IdCategoria]
GO
ALTER TABLE [dbo].[Venta]  WITH CHECK ADD  CONSTRAINT [FK_Venta_IdDireccion] FOREIGN KEY([IdDireccion])
REFERENCES [dbo].[Direccion] ([Id])
GO
ALTER TABLE [dbo].[Venta] CHECK CONSTRAINT [FK_Venta_IdDireccion]
GO
ALTER TABLE [dbo].[Venta]  WITH CHECK ADD  CONSTRAINT [FK_Venta_IdUsuario] FOREIGN KEY([IdUsuario])
REFERENCES [dbo].[Usuario] ([Id])
GO
ALTER TABLE [dbo].[Venta] CHECK CONSTRAINT [FK_Venta_IdUsuario]
GO
ALTER TABLE [dbo].[CarritoCompras]  WITH CHECK ADD  CONSTRAINT [CHK_CarritoCompras_Cantidad] CHECK  (([Cantidad]>(0)))
GO
ALTER TABLE [dbo].[CarritoCompras] CHECK CONSTRAINT [CHK_CarritoCompras_Cantidad]
GO
ALTER TABLE [dbo].[Producto]  WITH CHECK ADD  CONSTRAINT [CHK_Producto_PrecioUnitario] CHECK  (([PrecioUnitario]>=(0)))
GO
ALTER TABLE [dbo].[Producto] CHECK CONSTRAINT [CHK_Producto_PrecioUnitario]
GO
ALTER TABLE [dbo].[Producto]  WITH CHECK ADD  CONSTRAINT [CHK_Producto_Stock] CHECK  (([Stock]>=(0)))
GO
ALTER TABLE [dbo].[Producto] CHECK CONSTRAINT [CHK_Producto_Stock]
GO
USE [master]
GO
ALTER DATABASE [DB_TRESB] SET  READ_WRITE 
GO
