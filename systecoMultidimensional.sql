USE [master]
GO
/****** Object:  Database [SystecoSaDW]    Script Date: 08/07/2021 15:37:32 ******/
CREATE DATABASE [SystecoSaDW]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'SystecoSaDW', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\SystecoSaDW.mdf' , SIZE = 270336KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'SystecoSaDW_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\SystecoSaDW_log.ldf' , SIZE = 991232KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [SystecoSaDW] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SystecoSaDW].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [SystecoSaDW] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [SystecoSaDW] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [SystecoSaDW] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [SystecoSaDW] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [SystecoSaDW] SET ARITHABORT OFF 
GO
ALTER DATABASE [SystecoSaDW] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [SystecoSaDW] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [SystecoSaDW] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [SystecoSaDW] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [SystecoSaDW] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [SystecoSaDW] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [SystecoSaDW] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [SystecoSaDW] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [SystecoSaDW] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [SystecoSaDW] SET  DISABLE_BROKER 
GO
ALTER DATABASE [SystecoSaDW] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [SystecoSaDW] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [SystecoSaDW] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [SystecoSaDW] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [SystecoSaDW] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [SystecoSaDW] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [SystecoSaDW] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [SystecoSaDW] SET RECOVERY FULL 
GO
ALTER DATABASE [SystecoSaDW] SET  MULTI_USER 
GO
ALTER DATABASE [SystecoSaDW] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [SystecoSaDW] SET DB_CHAINING OFF 
GO
ALTER DATABASE [SystecoSaDW] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [SystecoSaDW] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [SystecoSaDW] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'SystecoSaDW', N'ON'
GO
ALTER DATABASE [SystecoSaDW] SET QUERY_STORE = OFF
GO
USE [SystecoSaDW]
GO
/****** Object:  Table [dbo].[DimCliente]    Script Date: 08/07/2021 15:37:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimCliente](
	[keyCliente] [int] IDENTITY(1,1) NOT NULL,
	[apellidoCliente] [nvarchar](255) NULL,
	[nombreCliente] [nvarchar](255) NULL,
	[dniCliente] [nvarchar](255) NULL,
	[idDistrito] [nvarchar](255) NULL,
	[mailCliente] [nvarchar](255) NULL,
	[telefonoCliente] [nvarchar](255) NULL,
	[nombreDistrito] [nvarchar](255) NULL,
	[idProvincia] [nvarchar](255) NULL,
	[nombreProvincia] [nvarchar](255) NULL,
	[idDepartamento] [nvarchar](255) NULL,
	[nombreDepartamento] [nvarchar](255) NULL,
	[idCliente] [nvarchar](255) NULL,
 CONSTRAINT [PK_DimCliente] PRIMARY KEY CLUSTERED 
(
	[keyCliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimDistrito]    Script Date: 08/07/2021 15:37:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimDistrito](
	[keyDistrito] [int] IDENTITY(1,1) NOT NULL,
	[idDistrito] [nvarchar](255) NULL,
	[idDepartamento] [nvarchar](255) NULL,
	[idProvincia] [nvarchar](255) NULL,
	[nombreDistrito] [nvarchar](255) NULL,
	[nombreDepartamento] [nvarchar](255) NULL,
	[nombreProvincia] [nvarchar](255) NULL,
 CONSTRAINT [PK_DimDistrito] PRIMARY KEY CLUSTERED 
(
	[keyDistrito] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimEmpleado]    Script Date: 08/07/2021 15:37:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimEmpleado](
	[keyEmpleado] [int] IDENTITY(1,1) NOT NULL,
	[idEmpleado] [nvarchar](255) NULL,
	[apellidoEmpleado] [nvarchar](255) NULL,
	[nombreEmpleado] [nvarchar](255) NULL,
	[dniEmpleado] [nvarchar](255) NULL,
	[idDistrito] [nvarchar](255) NULL,
	[mailEmpleado] [nvarchar](255) NULL,
	[telefonoEmpleado] [nvarchar](255) NULL,
	[nombreDistrito] [nvarchar](255) NULL,
	[idProvincia] [nvarchar](255) NULL,
	[nombreProvincia] [nvarchar](255) NULL,
	[idDepartamento] [nvarchar](255) NULL,
	[nombreDepartamento] [nvarchar](255) NULL,
 CONSTRAINT [PK_DimEmpleado] PRIMARY KEY CLUSTERED 
(
	[keyEmpleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimProducto]    Script Date: 08/07/2021 15:37:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimProducto](
	[keyProducto] [int] IDENTITY(1,1) NOT NULL,
	[idProducto] [nvarchar](255) NULL,
	[descripcionProducto] [nvarchar](255) NULL,
	[precioUnitario] [money] NULL,
	[existenciaProducto] [int] NULL,
	[idMarca] [nvarchar](255) NULL,
	[idProveedor] [nvarchar](255) NULL,
	[idCategoria] [nvarchar](255) NULL,
	[nombreMarca] [nvarchar](50) NULL,
	[nombreCategoria] [nvarchar](50) NULL,
	[nombreProveedor] [nvarchar](50) NULL,
 CONSTRAINT [PK_dimProducto] PRIMARY KEY CLUSTERED 
(
	[keyProducto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimTiempo]    Script Date: 08/07/2021 15:37:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimTiempo](
	[keyFecha] [int] IDENTITY(1,1) NOT NULL,
	[fecha] [date] NULL,
	[dia] [nvarchar](30) NULL,
	[mes] [nvarchar](30) NULL,
	[año] [int] NULL,
	[semestre] [int] NULL,
	[trimestre] [int] NULL,
	[diaMes] [int] NULL,
	[diaAño] [int] NULL,
 CONSTRAINT [PK_DimTiempo_1] PRIMARY KEY CLUSTERED 
(
	[keyFecha] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FactVentas]    Script Date: 08/07/2021 15:37:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FactVentas](
	[keyTiempo] [int] NOT NULL,
	[keyProducto] [int] NOT NULL,
	[keyDistrito] [int] NOT NULL,
	[keyCliente] [int] NOT NULL,
	[keyEmpleado] [int] NOT NULL,
	[iva] [float] NULL,
	[totalSinIva] [float] NULL,
	[totalConIva] [float] NULL,
 CONSTRAINT [PK_FactVentas_1] PRIMARY KEY CLUSTERED 
(
	[keyTiempo] ASC,
	[keyProducto] ASC,
	[keyDistrito] ASC,
	[keyCliente] ASC,
	[keyEmpleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[FactVentas]  WITH CHECK ADD  CONSTRAINT [FK_FactVentas_DimCliente] FOREIGN KEY([keyCliente])
REFERENCES [dbo].[DimCliente] ([keyCliente])
GO
ALTER TABLE [dbo].[FactVentas] CHECK CONSTRAINT [FK_FactVentas_DimCliente]
GO
ALTER TABLE [dbo].[FactVentas]  WITH CHECK ADD  CONSTRAINT [FK_FactVentas_DimDistrito] FOREIGN KEY([keyDistrito])
REFERENCES [dbo].[DimDistrito] ([keyDistrito])
GO
ALTER TABLE [dbo].[FactVentas] CHECK CONSTRAINT [FK_FactVentas_DimDistrito]
GO
ALTER TABLE [dbo].[FactVentas]  WITH CHECK ADD  CONSTRAINT [FK_FactVentas_DimEmpleado2] FOREIGN KEY([keyEmpleado])
REFERENCES [dbo].[DimEmpleado] ([keyEmpleado])
GO
ALTER TABLE [dbo].[FactVentas] CHECK CONSTRAINT [FK_FactVentas_DimEmpleado2]
GO
ALTER TABLE [dbo].[FactVentas]  WITH CHECK ADD  CONSTRAINT [FK_FactVentas_DimProducto1] FOREIGN KEY([keyProducto])
REFERENCES [dbo].[DimProducto] ([keyProducto])
GO
ALTER TABLE [dbo].[FactVentas] CHECK CONSTRAINT [FK_FactVentas_DimProducto1]
GO
ALTER TABLE [dbo].[FactVentas]  WITH CHECK ADD  CONSTRAINT [FK_FactVentas_DimTiempo] FOREIGN KEY([keyTiempo])
REFERENCES [dbo].[DimTiempo] ([keyFecha])
GO
ALTER TABLE [dbo].[FactVentas] CHECK CONSTRAINT [FK_FactVentas_DimTiempo]
GO
USE [master]
GO
ALTER DATABASE [SystecoSaDW] SET  READ_WRITE 
GO
