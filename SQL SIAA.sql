USE [master]
GO
/****** Object:  Database [SIAA]    Script Date: 24/10/2025 09:39:43 a. m. ******/
CREATE DATABASE [SIAA]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'SIAA', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\SIAA.mdf' , SIZE = 73728KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'SIAA_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\SIAA_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [SIAA] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SIAA].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [SIAA] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [SIAA] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [SIAA] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [SIAA] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [SIAA] SET ARITHABORT OFF 
GO
ALTER DATABASE [SIAA] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [SIAA] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [SIAA] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [SIAA] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [SIAA] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [SIAA] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [SIAA] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [SIAA] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [SIAA] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [SIAA] SET  DISABLE_BROKER 
GO
ALTER DATABASE [SIAA] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [SIAA] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [SIAA] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [SIAA] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [SIAA] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [SIAA] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [SIAA] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [SIAA] SET RECOVERY FULL 
GO
ALTER DATABASE [SIAA] SET  MULTI_USER 
GO
ALTER DATABASE [SIAA] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [SIAA] SET DB_CHAINING OFF 
GO
ALTER DATABASE [SIAA] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [SIAA] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [SIAA] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [SIAA] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [SIAA] SET QUERY_STORE = OFF
GO
USE [SIAA]
GO
/****** Object:  User [USERSIAA]    Script Date: 24/10/2025 09:39:43 a. m. ******/
CREATE USER [USERSIAA] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_datareader] ADD MEMBER [USERSIAA]
GO
/****** Object:  Schema [ABC]    Script Date: 24/10/2025 09:39:43 a. m. ******/
CREATE SCHEMA [ABC]
GO
/****** Object:  Schema [AUD]    Script Date: 24/10/2025 09:39:43 a. m. ******/
CREATE SCHEMA [AUD]
GO
/****** Object:  Schema [COM]    Script Date: 24/10/2025 09:39:43 a. m. ******/
CREATE SCHEMA [COM]
GO
/****** Object:  Schema [CRG]    Script Date: 24/10/2025 09:39:43 a. m. ******/
CREATE SCHEMA [CRG]
GO
/****** Object:  Schema [CTI]    Script Date: 24/10/2025 09:39:43 a. m. ******/
CREATE SCHEMA [CTI]
GO
/****** Object:  Schema [EMR]    Script Date: 24/10/2025 09:39:43 a. m. ******/
CREATE SCHEMA [EMR]
GO
/****** Object:  Schema [EQP]    Script Date: 24/10/2025 09:39:43 a. m. ******/
CREATE SCHEMA [EQP]
GO
/****** Object:  Schema [INF]    Script Date: 24/10/2025 09:39:43 a. m. ******/
CREATE SCHEMA [INF]
GO
/****** Object:  Schema [INT]    Script Date: 24/10/2025 09:39:43 a. m. ******/
CREATE SCHEMA [INT]
GO
/****** Object:  Schema [LGT]    Script Date: 24/10/2025 09:39:43 a. m. ******/
CREATE SCHEMA [LGT]
GO
/****** Object:  Schema [MET]    Script Date: 24/10/2025 09:39:43 a. m. ******/
CREATE SCHEMA [MET]
GO
/****** Object:  Schema [MIG]    Script Date: 24/10/2025 09:39:43 a. m. ******/
CREATE SCHEMA [MIG]
GO
/****** Object:  Schema [MKT]    Script Date: 24/10/2025 09:39:43 a. m. ******/
CREATE SCHEMA [MKT]
GO
/****** Object:  Schema [OPA]    Script Date: 24/10/2025 09:39:43 a. m. ******/
CREATE SCHEMA [OPA]
GO
/****** Object:  Schema [PAS]    Script Date: 24/10/2025 09:39:43 a. m. ******/
CREATE SCHEMA [PAS]
GO
/****** Object:  Schema [PRE]    Script Date: 24/10/2025 09:39:43 a. m. ******/
CREATE SCHEMA [PRE]
GO
/****** Object:  Schema [RRH]    Script Date: 24/10/2025 09:39:43 a. m. ******/
CREATE SCHEMA [RRH]
GO
/****** Object:  Schema [SAB]    Script Date: 24/10/2025 09:39:43 a. m. ******/
CREATE SCHEMA [SAB]
GO
/****** Object:  Schema [SEG]    Script Date: 24/10/2025 09:39:43 a. m. ******/
CREATE SCHEMA [SEG]
GO
/****** Object:  Schema [STG]    Script Date: 24/10/2025 09:39:43 a. m. ******/
CREATE SCHEMA [STG]
GO
/****** Object:  Schema [TEC]    Script Date: 24/10/2025 09:39:43 a. m. ******/
CREATE SCHEMA [TEC]
GO
/****** Object:  Schema [TRP]    Script Date: 24/10/2025 09:39:43 a. m. ******/
CREATE SCHEMA [TRP]
GO
/****** Object:  Schema [VUE]    Script Date: 24/10/2025 09:39:43 a. m. ******/
CREATE SCHEMA [VUE]
GO
/****** Object:  Table [ABC].[COMBUSTIBLE]    Script Date: 24/10/2025 09:39:43 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ABC].[COMBUSTIBLE](
	[ID_Registro] [int] IDENTITY(1,1) NOT NULL,
	[ID_Aeronave] [int] NOT NULL,
	[Fecha] [date] NOT NULL,
	[Cantidad_Galones] [decimal](10, 2) NOT NULL,
	[Costo_Total] [decimal](10, 2) NOT NULL,
	[Proveedor] [nvarchar](100) NULL,
	[Fecha_Creacion] [datetime2](7) NULL,
	[Fecha_Modificacion] [datetime2](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Registro] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [AUD].[AUDITORIA_SISTEMA]    Script Date: 24/10/2025 09:39:43 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [AUD].[AUDITORIA_SISTEMA](
	[ID_Evento] [int] IDENTITY(1,1) NOT NULL,
	[Fecha] [date] NOT NULL,
	[Hora] [time](7) NOT NULL,
	[Usuario] [nvarchar](100) NOT NULL,
	[Rol_Usuario] [nvarchar](50) NOT NULL,
	[Modulo] [nvarchar](50) NOT NULL,
	[Tipo_Evento] [nvarchar](50) NOT NULL,
	[Descripcion] [nvarchar](255) NOT NULL,
	[IP_Origen] [nvarchar](45) NULL,
	[Estado_Evento] [nvarchar](50) NULL,
	[Fecha_Creacion] [datetime2](7) NULL,
	[Fecha_Modificacion] [datetime2](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Evento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [AUD].[REPORTES_GENERADOS]    Script Date: 24/10/2025 09:39:43 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [AUD].[REPORTES_GENERADOS](
	[ID_Reporte] [int] IDENTITY(1,1) NOT NULL,
	[ID_Evento] [int] NULL,
	[Tipo_Reporte] [nvarchar](100) NOT NULL,
	[Fecha_Generacion] [date] NOT NULL,
	[Generado_Por] [nvarchar](100) NULL,
	[Periodo_Desde] [date] NOT NULL,
	[Periodo_Hasta] [date] NOT NULL,
	[Observaciones] [nvarchar](255) NULL,
	[Fecha_Creacion] [datetime2](7) NULL,
	[Fecha_Modificacion] [datetime2](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Reporte] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [COM].[GESTION_ADMVUELOS]    Script Date: 24/10/2025 09:39:43 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [COM].[GESTION_ADMVUELOS](
	[ID_Gestion] [int] IDENTITY(1,1) NOT NULL,
	[ID_Vuelo] [int] NOT NULL,
	[ID_Aerolinea] [int] NOT NULL,
	[ID_Pasajero] [int] NOT NULL,
	[ID_Paseabordaje] [int] NOT NULL,
	[Costo_Paseabordaje] [decimal](10, 2) NOT NULL,
	[Fecha_Creacion] [datetime2](7) NULL,
	[Fecha_Modificacion] [datetime2](7) NULL,
	[Clase] [nvarchar](20) NOT NULL,
	[Origen] [nvarchar](75) NULL,
	[Destino] [nvarchar](75) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Gestion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [COM].[PAGOS]    Script Date: 24/10/2025 09:39:43 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [COM].[PAGOS](
	[ID_Pago] [int] IDENTITY(1,1) NOT NULL,
	[ID_Reservacion] [int] NOT NULL,
	[Fecha_Pago] [date] NOT NULL,
	[Monto] [decimal](10, 2) NOT NULL,
	[Metodo_Pago] [nvarchar](30) NULL,
	[Estado] [nvarchar](20) NULL,
	[Fecha_Creacion] [datetime2](7) NULL,
	[Fecha_Modificacion] [datetime2](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Pago] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [COM].[PASES_ABORDAJE]    Script Date: 24/10/2025 09:39:43 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [COM].[PASES_ABORDAJE](
	[ID_Paseabordaje] [int] IDENTITY(1,1) NOT NULL,
	[ID_Pasajero] [int] NOT NULL,
	[ID_Vuelo] [int] NOT NULL,
	[Asiento] [nvarchar](10) NOT NULL,
	[Clase] [nvarchar](20) NOT NULL,
	[Puerta_Embarque] [nvarchar](10) NOT NULL,
	[Hora_Embarque] [time](7) NOT NULL,
	[Estado] [nvarchar](30) NOT NULL,
	[Codigo_QR] [nvarchar](255) NULL,
	[Fecha_Emision] [date] NOT NULL,
	[Fecha_Creacion] [datetime2](7) NULL,
	[Fecha_Modificacion] [datetime2](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Paseabordaje] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [COM].[RESERVACIONES]    Script Date: 24/10/2025 09:39:43 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [COM].[RESERVACIONES](
	[ID_Reservacion] [int] IDENTITY(1,1) NOT NULL,
	[ID_Pasajero] [int] NOT NULL,
	[ID_Vuelo] [int] NOT NULL,
	[Fecha_Reservacion] [date] NOT NULL,
	[Clase] [nvarchar](20) NULL,
	[Costo] [decimal](10, 2) NOT NULL,
	[Estado] [nvarchar](20) NULL,
	[Fecha_Creacion] [datetime2](7) NULL,
	[Fecha_Modificacion] [datetime2](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Reservacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [CRG].[CARGAS_TRANSPORTADAS]    Script Date: 24/10/2025 09:39:43 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CRG].[CARGAS_TRANSPORTADAS](
	[ID_Carga] [int] IDENTITY(1,1) NOT NULL,
	[ID_VueloCarga] [int] NOT NULL,
	[ID_Operador] [int] NOT NULL,
	[Descripcion] [nvarchar](255) NULL,
	[Peso_Kg] [decimal](10, 2) NULL,
	[Volumen_M3] [decimal](10, 2) NULL,
	[Tipo_Carga] [nvarchar](50) NULL,
	[Estado] [nvarchar](30) NULL,
	[Fecha_Creacion] [datetime2](7) NULL,
	[Fecha_Modificacion] [datetime2](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Carga] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [CRG].[OPERADORES_CARGA]    Script Date: 24/10/2025 09:39:43 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CRG].[OPERADORES_CARGA](
	[ID_Operador] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](100) NOT NULL,
	[Pais_Origen] [int] NOT NULL,
	[Tipo_Operador] [nvarchar](50) NULL,
	[Contacto] [nvarchar](100) NULL,
	[Fecha_Creacion] [datetime2](7) NULL,
	[Fecha_Modificacion] [datetime2](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Operador] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [CRG].[VUELOS_CARGA]    Script Date: 24/10/2025 09:39:43 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CRG].[VUELOS_CARGA](
	[ID_VueloCarga] [int] IDENTITY(1,1) NOT NULL,
	[ID_Aeronave] [int] NOT NULL,
	[ID_Ruta] [int] NOT NULL,
	[Fecha_Salida] [date] NOT NULL,
	[Hora_Salida] [time](7) NOT NULL,
	[Peso_Total_Kg] [decimal](10, 2) NULL,
	[Volumen_Total_M3] [decimal](10, 2) NULL,
	[Estado] [nvarchar](30) NULL,
	[Fecha_Creacion] [datetime2](7) NULL,
	[Fecha_Modificacion] [datetime2](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_VueloCarga] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [CTI].[INSPECCIONES_AUDITORIAS]    Script Date: 24/10/2025 09:39:43 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CTI].[INSPECCIONES_AUDITORIAS](
	[ID_Inspeccion] [int] IDENTITY(1,1) NOT NULL,
	[Fecha] [date] NOT NULL,
	[Tipo_Inspeccion] [nvarchar](100) NOT NULL,
	[Area_Evaluada] [nvarchar](100) NOT NULL,
	[Responsable] [nvarchar](100) NULL,
	[Resultado] [nvarchar](50) NOT NULL,
	[Observaciones] [nvarchar](255) NULL,
	[Accion_Correctiva_Requerida] [bit] NULL,
	[Fecha_Creacion] [datetime2](7) NULL,
	[Fecha_Modificacion] [datetime2](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Inspeccion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [EMR].[INTERVENCIONES_EMERGENCIA]    Script Date: 24/10/2025 09:39:43 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [EMR].[INTERVENCIONES_EMERGENCIA](
	[ID_Intervencion] [int] IDENTITY(1,1) NOT NULL,
	[ID_Unidad] [int] NOT NULL,
	[ID_Vuelo] [int] NULL,
	[Fecha] [datetime] NOT NULL,
	[Tipo_Incidente] [nvarchar](100) NULL,
	[Resultado] [nvarchar](100) NULL,
	[Observaciones] [nvarchar](255) NULL,
	[Fecha_Creacion] [datetime2](7) NULL,
	[Fecha_Modificacion] [datetime2](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Intervencion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [EMR].[UNIDADES_EMERGENCIA]    Script Date: 24/10/2025 09:39:43 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [EMR].[UNIDADES_EMERGENCIA](
	[ID_Unidad] [int] IDENTITY(1,1) NOT NULL,
	[Tipo_Unidad] [nvarchar](50) NULL,
	[Placa_Unidad] [nvarchar](20) NULL,
	[Responsable] [nvarchar](100) NULL,
	[Estado] [nvarchar](30) NULL,
	[Fecha_Creacion] [datetime2](7) NULL,
	[Fecha_Modificacion] [datetime2](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Unidad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [EQP].[EQUIPAJE]    Script Date: 24/10/2025 09:39:43 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [EQP].[EQUIPAJE](
	[ID_Equipaje] [int] IDENTITY(1,1) NOT NULL,
	[ID_Pasajero] [int] NOT NULL,
	[ID_Vuelo] [int] NOT NULL,
	[Codigo_Equipaje] [nvarchar](50) NOT NULL,
	[Tipo] [nvarchar](75) NOT NULL,
	[Peso] [decimal](5, 2) NOT NULL,
	[Dimensiones] [nvarchar](50) NULL,
	[Estado] [nvarchar](30) NOT NULL,
	[Fecha_Registro] [date] NOT NULL,
	[Observaciones] [nvarchar](255) NULL,
	[Fecha_Creacion] [datetime2](7) NULL,
	[Fecha_Modificacion] [datetime2](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Equipaje] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[Codigo_Equipaje] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [EQP].[EQUIPAMIENTO_ESPECIAL]    Script Date: 24/10/2025 09:39:43 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [EQP].[EQUIPAMIENTO_ESPECIAL](
	[ID_Equipamiento] [int] IDENTITY(1,1) NOT NULL,
	[ID_Reservacion] [int] NOT NULL,
	[Tipo_Equipamiento] [nvarchar](100) NOT NULL,
	[Descripcion] [nvarchar](255) NULL,
	[Peso_Kg] [decimal](5, 2) NULL,
	[Dimensiones_CM] [nvarchar](50) NULL,
	[Requiere_Manejo_Especial] [bit] NULL,
	[Costo_Adicional] [decimal](10, 2) NULL,
	[Estado] [nvarchar](50) NULL,
	[Fecha_Creacion] [datetime2](7) NULL,
	[Fecha_Modificacion] [datetime2](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Equipamiento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [INF].[AEROPUERTOS]    Script Date: 24/10/2025 09:39:43 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [INF].[AEROPUERTOS](
	[ID_Aeropuerto] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](150) NOT NULL,
	[Codigo_IATA] [char](3) NOT NULL,
	[Ciudad] [nvarchar](100) NOT NULL,
	[ID_Pais] [int] NOT NULL,
	[Capacidad_Anual_Pasajeros] [int] NULL,
	[Fecha_Creacion] [datetime2](7) NULL,
	[Fecha_Modificacion] [datetime2](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Aeropuerto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[Codigo_IATA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [INF].[PAISES]    Script Date: 24/10/2025 09:39:43 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [INF].[PAISES](
	[ID_Pais] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](100) NOT NULL,
	[Codigo_ISO] [nvarchar](3) NOT NULL,
	[Fecha_Creacion] [datetime2](7) NULL,
	[Fecha_Modificacion] [datetime2](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Pais] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[Codigo_ISO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [INF].[PUERTAS_EMBARQUE]    Script Date: 24/10/2025 09:39:43 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [INF].[PUERTAS_EMBARQUE](
	[ID_Puerta] [int] IDENTITY(1,1) NOT NULL,
	[Codigo_Puerta] [nvarchar](10) NOT NULL,
	[ID_Terminal] [int] NOT NULL,
	[Tipo_Puerta] [nvarchar](20) NULL,
	[Estado] [nvarchar](20) NULL,
	[Fecha_Creacion] [datetime2](7) NULL,
	[Fecha_Modificacion] [datetime2](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Puerta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [INF].[TERMINALES]    Script Date: 24/10/2025 09:39:43 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [INF].[TERMINALES](
	[ID_Terminal] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](50) NOT NULL,
	[ID_Aeropuerto] [int] NOT NULL,
	[Fecha_Creacion] [datetime2](7) NULL,
	[Fecha_Modificacion] [datetime2](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Terminal] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [INT].[ESTADISTICAS_DIARIAS]    Script Date: 24/10/2025 09:39:43 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [INT].[ESTADISTICAS_DIARIAS](
	[Fecha] [date] NOT NULL,
	[Total_Vuelos] [int] NULL,
	[Vuelos_Retrasados] [int] NULL,
	[Total_Pasajeros] [int] NULL,
	[Cancelaciones] [int] NULL,
	[Carga_Transportada_Kg] [decimal](10, 2) NULL,
	[Fecha_Creacion] [datetime2](7) NULL,
	[Fecha_Modificacion] [datetime2](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[Fecha] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [INT].[INCIDENTES_OPERATIVOS]    Script Date: 24/10/2025 09:39:43 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [INT].[INCIDENTES_OPERATIVOS](
	[ID_Incidente] [int] IDENTITY(1,1) NOT NULL,
	[Fecha] [date] NOT NULL,
	[Hora] [time](7) NOT NULL,
	[ID_Vuelo] [int] NULL,
	[ID_Aeronave] [int] NULL,
	[Tipo_Incidente] [nvarchar](255) NULL,
	[Descripcion] [nvarchar](255) NULL,
	[Nivel_Severidad] [nvarchar](20) NULL,
	[Reportado_Por] [nvarchar](100) NULL,
	[Fecha_Creacion] [datetime2](7) NULL,
	[Fecha_Modificacion] [datetime2](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Incidente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [INT].[TIEMPOS_PROCESO_PASAJEROS]    Script Date: 24/10/2025 09:39:43 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [INT].[TIEMPOS_PROCESO_PASAJEROS](
	[ID_Proceso] [int] IDENTITY(1,1) NOT NULL,
	[ID_Pasajero] [int] NULL,
	[Fecha] [date] NULL,
	[Hora_Llegada_Aeropuerto] [time](7) NULL,
	[Hora_CheckIn] [time](7) NULL,
	[Hora_Seguridad] [time](7) NULL,
	[Hora_Abordaje] [time](7) NULL,
	[Hora_Despegue] [time](7) NULL,
	[Fecha_Creacion] [datetime2](7) NULL,
	[Fecha_Modificacion] [datetime2](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Proceso] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [LGT].[LOGISTICA_TERRESTRE]    Script Date: 24/10/2025 09:39:43 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [LGT].[LOGISTICA_TERRESTRE](
	[ID_Transporte] [int] IDENTITY(1,1) NOT NULL,
	[Tipo_Transporte] [nvarchar](50) NOT NULL,
	[Origen] [nvarchar](100) NOT NULL,
	[Destino] [nvarchar](100) NOT NULL,
	[Hora_Salida] [time](7) NOT NULL,
	[Hora_Llegada] [time](7) NOT NULL,
	[Responsable] [nvarchar](100) NULL,
	[Capacidad] [int] NULL,
	[Estado] [nvarchar](50) NULL,
	[Fecha_Creacion] [datetime2](7) NULL,
	[Fecha_Modificacion] [datetime2](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Transporte] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [MET].[CLIMA]    Script Date: 24/10/2025 09:39:43 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [MET].[CLIMA](
	[ID_Registro] [int] IDENTITY(1,1) NOT NULL,
	[ID_Aeropuerto] [int] NOT NULL,
	[Fecha] [date] NOT NULL,
	[Hora] [time](7) NOT NULL,
	[Temperatura_C] [decimal](5, 2) NULL,
	[Humedad_Porc] [decimal](5, 2) NULL,
	[Velocidad_Viento_KMH] [decimal](5, 2) NULL,
	[Condicion] [nvarchar](50) NULL,
	[Fecha_Creacion] [datetime2](7) NULL,
	[Fecha_Modificacion] [datetime2](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Registro] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [MIG].[MIGRACION_ADUANA]    Script Date: 24/10/2025 09:39:43 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [MIG].[MIGRACION_ADUANA](
	[ID_Registro] [int] IDENTITY(1,1) NOT NULL,
	[ID_Reservacion] [int] NOT NULL,
	[Fecha_Proceso] [date] NOT NULL,
	[Tipo_Proceso] [nvarchar](50) NOT NULL,
	[Estado] [nvarchar](50) NULL,
	[Observaciones] [nvarchar](255) NULL,
	[Fecha_Creacion] [datetime2](7) NULL,
	[Fecha_Modificacion] [datetime2](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Registro] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [MKT].[ATENCION_CLIENTE]    Script Date: 24/10/2025 09:39:43 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [MKT].[ATENCION_CLIENTE](
	[ID_Atencion] [int] IDENTITY(1,1) NOT NULL,
	[ID_Pasajero] [int] NOT NULL,
	[Fecha_Solicitud] [date] NOT NULL,
	[Tipo_Solicitud] [nvarchar](50) NOT NULL,
	[Descripcion] [nvarchar](255) NULL,
	[Estado] [nvarchar](30) NOT NULL,
	[Respuesta] [nvarchar](255) NULL,
	[Fecha_Respuesta] [date] NULL,
	[Fecha_Creacion] [datetime2](7) NULL,
	[Fecha_Modificacion] [datetime2](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Atencion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [MKT].[CAMP_MARKETING]    Script Date: 24/10/2025 09:39:43 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [MKT].[CAMP_MARKETING](
	[ID_Camp] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](100) NOT NULL,
	[Tipo] [nvarchar](50) NOT NULL,
	[Fecha_Inicio] [date] NOT NULL,
	[Fecha_Fin] [date] NOT NULL,
	[Descripcion] [nvarchar](255) NULL,
	[Estado] [nvarchar](20) NULL,
	[Fecha_Creacion] [datetime2](7) NULL,
	[Fecha_Modificacion] [datetime2](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Camp] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [MKT].[ENCUESTAS_OPINIONES_CLIENTES]    Script Date: 24/10/2025 09:39:43 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [MKT].[ENCUESTAS_OPINIONES_CLIENTES](
	[ID_Registro] [int] IDENTITY(1,1) NOT NULL,
	[ID_Pasajero] [int] NOT NULL,
	[ID_Vuelo] [int] NULL,
	[Fecha] [date] NOT NULL,
	[Puntualidad] [tinyint] NULL,
	[Comodidad] [tinyint] NULL,
	[Servicio_Bordo] [tinyint] NULL,
	[Limpieza] [tinyint] NULL,
	[Calificacion_Global] [tinyint] NULL,
	[Comentario] [nvarchar](255) NULL,
	[Tipo_Servicio] [nvarchar](50) NULL,
	[Fecha_Creacion] [datetime2](7) NULL,
	[Fecha_Modificacion] [datetime2](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Registro] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [MKT].[FIDELIDAD_PASAJERO]    Script Date: 24/10/2025 09:39:43 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [MKT].[FIDELIDAD_PASAJERO](
	[ID_Registro] [int] IDENTITY(1,1) NOT NULL,
	[ID_Pasajero] [int] NOT NULL,
	[Puntos_Acumulados] [int] NULL,
	[Ultima_Actualizacion] [date] NOT NULL,
	[Nivel_Fidelidad] [nvarchar](30) NULL,
	[Fecha_Creacion] [datetime2](7) NULL,
	[Fecha_Modificacion] [datetime2](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Registro] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [MKT].[OFERTAS_APLICADAS]    Script Date: 24/10/2025 09:39:43 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [MKT].[OFERTAS_APLICADAS](
	[ID_Oferta] [int] IDENTITY(1,1) NOT NULL,
	[ID_Camp] [int] NOT NULL,
	[ID_Reservacion] [int] NOT NULL,
	[Descuento_Porcentaje] [decimal](5, 2) NULL,
	[Monto_Descontado] [decimal](10, 2) NULL,
	[Fecha_Aplicacion] [date] NOT NULL,
	[Fecha_Creacion] [datetime2](7) NULL,
	[Fecha_Modificacion] [datetime2](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Oferta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [OPA].[AEROLINEAS]    Script Date: 24/10/2025 09:39:43 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [OPA].[AEROLINEAS](
	[ID_Aerolinea] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](100) NOT NULL,
	[Codigo_IATA] [char](2) NOT NULL,
	[Pais_Origen] [int] NOT NULL,
	[Activa] [bit] NULL,
	[Fecha_Creacion] [datetime2](7) NULL,
	[Fecha_Modificacion] [datetime2](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Aerolinea] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[Codigo_IATA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [OPA].[AERONAVES]    Script Date: 24/10/2025 09:39:43 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [OPA].[AERONAVES](
	[ID_Aeronave] [int] IDENTITY(1,1) NOT NULL,
	[Matricula] [nvarchar](10) NOT NULL,
	[Modelo] [nvarchar](50) NOT NULL,
	[Capacidad_Pasajeros] [int] NOT NULL,
	[Capacidad_Carga_KG] [int] NULL,
	[Fecha_Fabricacion] [date] NULL,
	[ID_Aerolinea] [int] NOT NULL,
	[Estado] [nvarchar](20) NULL,
	[Fecha_Creacion] [datetime2](7) NULL,
	[Fecha_Modificacion] [datetime2](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Aeronave] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[Matricula] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [PAS].[PASAJEROS]    Script Date: 24/10/2025 09:39:43 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [PAS].[PASAJEROS](
	[ID_Pasajero] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](100) NOT NULL,
	[Apellido] [nvarchar](100) NOT NULL,
	[Genero] [nvarchar](10) NULL,
	[Fecha_Nacimiento] [date] NULL,
	[Nacionalidad] [nvarchar](50) NULL,
	[Documento_Identidad] [nvarchar](50) NULL,
	[Correo_Electronico] [nvarchar](100) NULL,
	[Telefono] [nvarchar](20) NULL,
	[Fecha_Creacion] [datetime2](7) NULL,
	[Fecha_Modificacion] [datetime2](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Pasajero] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[Documento_Identidad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [PRE].[HISTORICO_OPERACIONAL_VUELOS]    Script Date: 24/10/2025 09:39:43 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [PRE].[HISTORICO_OPERACIONAL_VUELOS](
	[ID_Historico] [int] IDENTITY(1,1) NOT NULL,
	[ID_Vuelo] [int] NOT NULL,
	[Fecha] [date] NOT NULL,
	[Hora_Salida_Programada] [time](7) NOT NULL,
	[Hora_Salida_Real] [time](7) NULL,
	[Clima_Temperatura] [decimal](5, 2) NULL,
	[Clima_Humedad] [decimal](5, 2) NULL,
	[Clima_Condicion] [nvarchar](50) NULL,
	[Retraso_Minutos] [int] NULL,
	[Estado_Vuelo] [nvarchar](30) NULL,
	[Carga_Pasajeros] [int] NULL,
	[Carga_Carga_Kg] [decimal](10, 2) NULL,
	[Observaciones] [nvarchar](255) NULL,
	[Fecha_Creacion] [datetime2](7) NULL,
	[Fecha_Modificacion] [datetime2](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Historico] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [RRH].[ASISTENCIAS_EMPLEADOS]    Script Date: 24/10/2025 09:39:43 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [RRH].[ASISTENCIAS_EMPLEADOS](
	[ID_Asistencia] [int] IDENTITY(1,1) NOT NULL,
	[ID_Empleado] [int] NOT NULL,
	[Fecha] [date] NOT NULL,
	[Hora_Entrada] [time](7) NULL,
	[Hora_Salida] [time](7) NULL,
	[Estado] [nvarchar](20) NULL,
	[Fecha_Creacion] [datetime2](7) NULL,
	[Fecha_Modificacion] [datetime2](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Asistencia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [RRH].[EMPLEADOS]    Script Date: 24/10/2025 09:39:43 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [RRH].[EMPLEADOS](
	[ID_Empleado] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](100) NOT NULL,
	[Apellido] [nvarchar](100) NOT NULL,
	[Cedula] [nvarchar](20) NOT NULL,
	[Fecha_Nacimiento] [date] NOT NULL,
	[Genero] [nvarchar](10) NULL,
	[Cargo] [nvarchar](50) NOT NULL,
	[ID_Aeropuerto] [int] NOT NULL,
	[Fecha_Contratacion] [date] NOT NULL,
	[Estado] [nvarchar](20) NULL,
	[Fecha_Creacion] [datetime2](7) NULL,
	[Fecha_Modificacion] [datetime2](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Empleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[Cedula] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [RRH].[TURNOS_EMPLEADOS]    Script Date: 24/10/2025 09:39:43 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [RRH].[TURNOS_EMPLEADOS](
	[ID_Turno] [int] IDENTITY(1,1) NOT NULL,
	[ID_Empleado] [int] NOT NULL,
	[Fecha] [date] NOT NULL,
	[Hora_Entrada] [time](7) NOT NULL,
	[Hora_Salida] [time](7) NOT NULL,
	[Tipo_Turno] [nvarchar](20) NULL,
	[Estado] [nvarchar](20) NULL,
	[Fecha_Creacion] [datetime2](7) NULL,
	[Fecha_Modificacion] [datetime2](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Turno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [SAB].[SERVICIOS_BORDO]    Script Date: 24/10/2025 09:39:43 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [SAB].[SERVICIOS_BORDO](
	[ID_Servicio] [int] IDENTITY(1,1) NOT NULL,
	[ID_Vuelo] [int] NOT NULL,
	[Tipo_Servicio] [nvarchar](50) NOT NULL,
	[Descripcion] [nvarchar](255) NULL,
	[Costo] [decimal](10, 2) NULL,
	[Fecha_Creacion] [datetime2](7) NULL,
	[Fecha_Modificacion] [datetime2](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Servicio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [SAB].[SERVICIOS_CONSUMIDOS]    Script Date: 24/10/2025 09:39:43 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [SAB].[SERVICIOS_CONSUMIDOS](
	[ID_Consumo] [int] IDENTITY(1,1) NOT NULL,
	[ID_Pasajero] [int] NOT NULL,
	[ID_Servicio] [int] NOT NULL,
	[Estado] [nvarchar](30) NOT NULL,
	[Fecha_Solicitud] [datetime] NOT NULL,
	[Fecha_Entrega] [datetime] NULL,
	[Observaciones] [nvarchar](255) NULL,
	[Fecha_Creacion] [datetime2](7) NULL,
	[Fecha_Modificacion] [datetime2](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Consumo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [SEG].[CONTROLES_SEGURIDAD]    Script Date: 24/10/2025 09:39:43 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [SEG].[CONTROLES_SEGURIDAD](
	[ID_Control] [int] IDENTITY(1,1) NOT NULL,
	[ID_Vuelo] [int] NOT NULL,
	[Tipo_Control] [nvarchar](100) NOT NULL,
	[Fecha_Control] [date] NOT NULL,
	[Resultado] [nvarchar](50) NOT NULL,
	[Observaciones] [nvarchar](255) NULL,
	[Fecha_Creacion] [datetime2](7) NULL,
	[Fecha_Modificacion] [datetime2](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Control] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [SEG].[INCIDENTES_SEGURIDAD]    Script Date: 24/10/2025 09:39:43 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [SEG].[INCIDENTES_SEGURIDAD](
	[ID_Incidente] [int] IDENTITY(1,1) NOT NULL,
	[ID_Vuelo] [int] NOT NULL,
	[Fecha_Incidente] [date] NOT NULL,
	[Tipo_Incidente] [nvarchar](100) NOT NULL,
	[Descripcion] [nvarchar](255) NULL,
	[Accion_Tomada] [nvarchar](255) NULL,
	[Fecha_Creacion] [datetime2](7) NULL,
	[Fecha_Modificacion] [datetime2](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Incidente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [TEC].[MANTENIMIENTO]    Script Date: 24/10/2025 09:39:43 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [TEC].[MANTENIMIENTO](
	[ID_Mantenimiento] [int] IDENTITY(1,1) NOT NULL,
	[ID_Aeronave] [int] NOT NULL,
	[Fecha] [date] NOT NULL,
	[Hora] [time](7) NOT NULL,
	[Tipo_Mantenimiento] [nvarchar](50) NOT NULL,
	[Descripcion] [nvarchar](255) NULL,
	[Costo] [decimal](10, 2) NULL,
	[Estado] [nvarchar](30) NULL,
	[Tecnico_Responsable] [nvarchar](100) NULL,
	[Observaciones] [nvarchar](255) NULL,
	[Fecha_Creacion] [datetime2](7) NULL,
	[Fecha_Modificacion] [datetime2](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Mantenimiento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [TRP].[TRIPULACION]    Script Date: 24/10/2025 09:39:43 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [TRP].[TRIPULACION](
	[ID_Tripulacion] [int] IDENTITY(1,1) NOT NULL,
	[ID_Empleado] [int] NOT NULL,
	[ID_Vuelo] [int] NOT NULL,
	[Rol_Tripulacion] [nvarchar](50) NOT NULL,
	[Fecha_Asignacion] [date] NOT NULL,
	[Observaciones] [nvarchar](255) NULL,
	[Fecha_Creacion] [datetime2](7) NULL,
	[Fecha_Modificacion] [datetime2](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Tripulacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [VUE].[FRECUENCIAS]    Script Date: 24/10/2025 09:39:43 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [VUE].[FRECUENCIAS](
	[ID_Frecuencia] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [nvarchar](255) NOT NULL,
	[Fecha_Creacion] [datetime2](7) NULL,
	[Fecha_Modificacion] [datetime2](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Frecuencia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [VUE].[HORARIOS_PROGRAMADOS]    Script Date: 24/10/2025 09:39:43 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [VUE].[HORARIOS_PROGRAMADOS](
	[ID_Horario] [int] IDENTITY(1,1) NOT NULL,
	[ID_Ruta] [int] NOT NULL,
	[ID_Frecuencia] [int] NOT NULL,
	[Hora_Salida] [time](7) NOT NULL,
	[Hora_Llegada] [time](7) NOT NULL,
	[Fecha_Creacion] [datetime2](7) NULL,
	[Fecha_Modificacion] [datetime2](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Horario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [VUE].[RUTAS_AEREAS]    Script Date: 24/10/2025 09:39:43 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [VUE].[RUTAS_AEREAS](
	[ID_Ruta] [int] IDENTITY(1,1) NOT NULL,
	[ID_Aeropuerto_Origen] [int] NOT NULL,
	[ID_Aeropuerto_Destino] [int] NOT NULL,
	[Distancia_KM] [int] NOT NULL,
	[Duracion_Estimada_MIN] [int] NULL,
	[Fecha_Creacion] [datetime2](7) NULL,
	[Fecha_Modificacion] [datetime2](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Ruta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [VUE].[VUELOS]    Script Date: 24/10/2025 09:39:43 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [VUE].[VUELOS](
	[ID_Vuelo] [int] IDENTITY(1,1) NOT NULL,
	[Numero_Vuelo] [nvarchar](10) NOT NULL,
	[ID_Ruta] [int] NOT NULL,
	[ID_Aeronave] [int] NOT NULL,
	[ID_Horario] [int] NOT NULL,
	[Fecha_Salida] [date] NOT NULL,
	[Hora_Salida] [time](7) NOT NULL,
	[Hora_Llegada] [time](7) NOT NULL,
	[Estado] [nvarchar](20) NULL,
	[Fecha_Creacion] [datetime2](7) NULL,
	[Fecha_Modificacion] [datetime2](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Vuelo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_INF_AEROPUERTOS_Capacidad_Anual_Pasajeros]    Script Date: 24/10/2025 09:39:43 a. m. ******/
CREATE NONCLUSTERED INDEX [IDX_INF_AEROPUERTOS_Capacidad_Anual_Pasajeros] ON [INF].[AEROPUERTOS]
(
	[Capacidad_Anual_Pasajeros] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IDX_INT_ESTADISTICAS_DIARIAS_Cancelaciones]    Script Date: 24/10/2025 09:39:43 a. m. ******/
CREATE NONCLUSTERED INDEX [IDX_INT_ESTADISTICAS_DIARIAS_Cancelaciones] ON [INT].[ESTADISTICAS_DIARIAS]
(
	[Cancelaciones] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IDX_INT_ESTADISTICAS_DIARIAS_Total_Pasajeros]    Script Date: 24/10/2025 09:39:43 a. m. ******/
CREATE NONCLUSTERED INDEX [IDX_INT_ESTADISTICAS_DIARIAS_Total_Pasajeros] ON [INT].[ESTADISTICAS_DIARIAS]
(
	[Total_Pasajeros] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IDX_INT_ESTADISTICAS_DIARIAS_Total_Vuelos]    Script Date: 24/10/2025 09:39:43 a. m. ******/
CREATE NONCLUSTERED INDEX [IDX_INT_ESTADISTICAS_DIARIAS_Total_Vuelos] ON [INT].[ESTADISTICAS_DIARIAS]
(
	[Total_Vuelos] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IDX_INT_ESTADISTICAS_DIARIAS_Vuelos_Retrasados]    Script Date: 24/10/2025 09:39:43 a. m. ******/
CREATE NONCLUSTERED INDEX [IDX_INT_ESTADISTICAS_DIARIAS_Vuelos_Retrasados] ON [INT].[ESTADISTICAS_DIARIAS]
(
	[Vuelos_Retrasados] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IDX_LGT_LOGISTICA_TERRESTRE_Capacidad]    Script Date: 24/10/2025 09:39:43 a. m. ******/
CREATE NONCLUSTERED INDEX [IDX_LGT_LOGISTICA_TERRESTRE_Capacidad] ON [LGT].[LOGISTICA_TERRESTRE]
(
	[Capacidad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IDX_MKT_FIDELIDAD_PASAJERO_Puntos_Acumulados]    Script Date: 24/10/2025 09:39:43 a. m. ******/
CREATE NONCLUSTERED INDEX [IDX_MKT_FIDELIDAD_PASAJERO_Puntos_Acumulados] ON [MKT].[FIDELIDAD_PASAJERO]
(
	[Puntos_Acumulados] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IDX_OPA_AERONAVES_Capacidad_Carga_KG]    Script Date: 24/10/2025 09:39:43 a. m. ******/
CREATE NONCLUSTERED INDEX [IDX_OPA_AERONAVES_Capacidad_Carga_KG] ON [OPA].[AERONAVES]
(
	[Capacidad_Carga_KG] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IDX_OPA_AERONAVES_Capacidad_Pasajeros]    Script Date: 24/10/2025 09:39:43 a. m. ******/
CREATE NONCLUSTERED INDEX [IDX_OPA_AERONAVES_Capacidad_Pasajeros] ON [OPA].[AERONAVES]
(
	[Capacidad_Pasajeros] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IDX_VUE_RUTAS_AEREAS_Distancia_KM]    Script Date: 24/10/2025 09:39:43 a. m. ******/
CREATE NONCLUSTERED INDEX [IDX_VUE_RUTAS_AEREAS_Distancia_KM] ON [VUE].[RUTAS_AEREAS]
(
	[Distancia_KM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IDX_VUE_RUTAS_AEREAS_Duracion_Estimada_MIN]    Script Date: 24/10/2025 09:39:43 a. m. ******/
CREATE NONCLUSTERED INDEX [IDX_VUE_RUTAS_AEREAS_Duracion_Estimada_MIN] ON [VUE].[RUTAS_AEREAS]
(
	[Duracion_Estimada_MIN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [ABC].[COMBUSTIBLE] ADD  DEFAULT (getdate()) FOR [Fecha_Creacion]
GO
ALTER TABLE [AUD].[AUDITORIA_SISTEMA] ADD  DEFAULT ('Éxito') FOR [Estado_Evento]
GO
ALTER TABLE [AUD].[AUDITORIA_SISTEMA] ADD  DEFAULT (getdate()) FOR [Fecha_Creacion]
GO
ALTER TABLE [AUD].[REPORTES_GENERADOS] ADD  DEFAULT (getdate()) FOR [Fecha_Creacion]
GO
ALTER TABLE [COM].[GESTION_ADMVUELOS] ADD  DEFAULT (getdate()) FOR [Fecha_Creacion]
GO
ALTER TABLE [COM].[PAGOS] ADD  DEFAULT ('Completado') FOR [Estado]
GO
ALTER TABLE [COM].[PAGOS] ADD  DEFAULT (getdate()) FOR [Fecha_Creacion]
GO
ALTER TABLE [COM].[PASES_ABORDAJE] ADD  DEFAULT (getdate()) FOR [Fecha_Creacion]
GO
ALTER TABLE [COM].[RESERVACIONES] ADD  DEFAULT ('Económica') FOR [Clase]
GO
ALTER TABLE [COM].[RESERVACIONES] ADD  DEFAULT ('Confirmada') FOR [Estado]
GO
ALTER TABLE [COM].[RESERVACIONES] ADD  DEFAULT (getdate()) FOR [Fecha_Creacion]
GO
ALTER TABLE [CRG].[CARGAS_TRANSPORTADAS] ADD  DEFAULT ('Registrada') FOR [Estado]
GO
ALTER TABLE [CRG].[CARGAS_TRANSPORTADAS] ADD  DEFAULT (getdate()) FOR [Fecha_Creacion]
GO
ALTER TABLE [CRG].[OPERADORES_CARGA] ADD  DEFAULT (getdate()) FOR [Fecha_Creacion]
GO
ALTER TABLE [CRG].[VUELOS_CARGA] ADD  DEFAULT ('Programado') FOR [Estado]
GO
ALTER TABLE [CRG].[VUELOS_CARGA] ADD  DEFAULT (getdate()) FOR [Fecha_Creacion]
GO
ALTER TABLE [CTI].[INSPECCIONES_AUDITORIAS] ADD  DEFAULT ((0)) FOR [Accion_Correctiva_Requerida]
GO
ALTER TABLE [CTI].[INSPECCIONES_AUDITORIAS] ADD  DEFAULT (getdate()) FOR [Fecha_Creacion]
GO
ALTER TABLE [EMR].[INTERVENCIONES_EMERGENCIA] ADD  DEFAULT (getdate()) FOR [Fecha_Creacion]
GO
ALTER TABLE [EMR].[UNIDADES_EMERGENCIA] ADD  DEFAULT ('Activa') FOR [Estado]
GO
ALTER TABLE [EMR].[UNIDADES_EMERGENCIA] ADD  DEFAULT (getdate()) FOR [Fecha_Creacion]
GO
ALTER TABLE [EQP].[EQUIPAJE] ADD  DEFAULT (getdate()) FOR [Fecha_Creacion]
GO
ALTER TABLE [EQP].[EQUIPAMIENTO_ESPECIAL] ADD  DEFAULT ((0)) FOR [Requiere_Manejo_Especial]
GO
ALTER TABLE [EQP].[EQUIPAMIENTO_ESPECIAL] ADD  DEFAULT ((0)) FOR [Costo_Adicional]
GO
ALTER TABLE [EQP].[EQUIPAMIENTO_ESPECIAL] ADD  DEFAULT ('Registrado') FOR [Estado]
GO
ALTER TABLE [EQP].[EQUIPAMIENTO_ESPECIAL] ADD  DEFAULT (getdate()) FOR [Fecha_Creacion]
GO
ALTER TABLE [INF].[AEROPUERTOS] ADD  DEFAULT (getdate()) FOR [Fecha_Creacion]
GO
ALTER TABLE [INF].[PAISES] ADD  DEFAULT (getdate()) FOR [Fecha_Creacion]
GO
ALTER TABLE [INF].[PUERTAS_EMBARQUE] ADD  DEFAULT ('General') FOR [Tipo_Puerta]
GO
ALTER TABLE [INF].[PUERTAS_EMBARQUE] ADD  DEFAULT ('Activa') FOR [Estado]
GO
ALTER TABLE [INF].[PUERTAS_EMBARQUE] ADD  DEFAULT (getdate()) FOR [Fecha_Creacion]
GO
ALTER TABLE [INF].[TERMINALES] ADD  DEFAULT (getdate()) FOR [Fecha_Creacion]
GO
ALTER TABLE [INT].[ESTADISTICAS_DIARIAS] ADD  DEFAULT (getdate()) FOR [Fecha_Creacion]
GO
ALTER TABLE [INT].[INCIDENTES_OPERATIVOS] ADD  DEFAULT (getdate()) FOR [Fecha_Creacion]
GO
ALTER TABLE [INT].[TIEMPOS_PROCESO_PASAJEROS] ADD  DEFAULT (getdate()) FOR [Fecha_Creacion]
GO
ALTER TABLE [LGT].[LOGISTICA_TERRESTRE] ADD  DEFAULT ('Programado') FOR [Estado]
GO
ALTER TABLE [LGT].[LOGISTICA_TERRESTRE] ADD  DEFAULT (getdate()) FOR [Fecha_Creacion]
GO
ALTER TABLE [MET].[CLIMA] ADD  DEFAULT (getdate()) FOR [Fecha_Creacion]
GO
ALTER TABLE [MIG].[MIGRACION_ADUANA] ADD  DEFAULT ('Pendiente') FOR [Estado]
GO
ALTER TABLE [MIG].[MIGRACION_ADUANA] ADD  DEFAULT (getdate()) FOR [Fecha_Creacion]
GO
ALTER TABLE [MKT].[ATENCION_CLIENTE] ADD  DEFAULT ('Pendiente') FOR [Estado]
GO
ALTER TABLE [MKT].[ATENCION_CLIENTE] ADD  DEFAULT (getdate()) FOR [Fecha_Creacion]
GO
ALTER TABLE [MKT].[CAMP_MARKETING] ADD  DEFAULT ('Activa') FOR [Estado]
GO
ALTER TABLE [MKT].[CAMP_MARKETING] ADD  DEFAULT (getdate()) FOR [Fecha_Creacion]
GO
ALTER TABLE [MKT].[ENCUESTAS_OPINIONES_CLIENTES] ADD  DEFAULT (getdate()) FOR [Fecha_Creacion]
GO
ALTER TABLE [MKT].[FIDELIDAD_PASAJERO] ADD  DEFAULT ((0)) FOR [Puntos_Acumulados]
GO
ALTER TABLE [MKT].[FIDELIDAD_PASAJERO] ADD  DEFAULT (getdate()) FOR [Fecha_Creacion]
GO
ALTER TABLE [MKT].[OFERTAS_APLICADAS] ADD  DEFAULT (getdate()) FOR [Fecha_Creacion]
GO
ALTER TABLE [OPA].[AEROLINEAS] ADD  DEFAULT ((1)) FOR [Activa]
GO
ALTER TABLE [OPA].[AEROLINEAS] ADD  DEFAULT (getdate()) FOR [Fecha_Creacion]
GO
ALTER TABLE [OPA].[AERONAVES] ADD  DEFAULT ('Operativa') FOR [Estado]
GO
ALTER TABLE [OPA].[AERONAVES] ADD  DEFAULT (getdate()) FOR [Fecha_Creacion]
GO
ALTER TABLE [PAS].[PASAJEROS] ADD  DEFAULT (getdate()) FOR [Fecha_Creacion]
GO
ALTER TABLE [PRE].[HISTORICO_OPERACIONAL_VUELOS] ADD  DEFAULT (getdate()) FOR [Fecha_Creacion]
GO
ALTER TABLE [RRH].[ASISTENCIAS_EMPLEADOS] ADD  DEFAULT ('Presente') FOR [Estado]
GO
ALTER TABLE [RRH].[ASISTENCIAS_EMPLEADOS] ADD  DEFAULT (getdate()) FOR [Fecha_Creacion]
GO
ALTER TABLE [RRH].[EMPLEADOS] ADD  DEFAULT ('Activo') FOR [Estado]
GO
ALTER TABLE [RRH].[EMPLEADOS] ADD  DEFAULT (getdate()) FOR [Fecha_Creacion]
GO
ALTER TABLE [RRH].[TURNOS_EMPLEADOS] ADD  DEFAULT ('Asignado') FOR [Estado]
GO
ALTER TABLE [RRH].[TURNOS_EMPLEADOS] ADD  DEFAULT (getdate()) FOR [Fecha_Creacion]
GO
ALTER TABLE [SAB].[SERVICIOS_BORDO] ADD  DEFAULT ((0)) FOR [Costo]
GO
ALTER TABLE [SAB].[SERVICIOS_BORDO] ADD  DEFAULT (getdate()) FOR [Fecha_Creacion]
GO
ALTER TABLE [SAB].[SERVICIOS_CONSUMIDOS] ADD  DEFAULT (getdate()) FOR [Fecha_Solicitud]
GO
ALTER TABLE [SAB].[SERVICIOS_CONSUMIDOS] ADD  DEFAULT (getdate()) FOR [Fecha_Creacion]
GO
ALTER TABLE [SEG].[CONTROLES_SEGURIDAD] ADD  DEFAULT (getdate()) FOR [Fecha_Creacion]
GO
ALTER TABLE [SEG].[INCIDENTES_SEGURIDAD] ADD  DEFAULT (getdate()) FOR [Fecha_Creacion]
GO
ALTER TABLE [TEC].[MANTENIMIENTO] ADD  DEFAULT ('Programado') FOR [Estado]
GO
ALTER TABLE [TEC].[MANTENIMIENTO] ADD  DEFAULT (getdate()) FOR [Fecha_Creacion]
GO
ALTER TABLE [TRP].[TRIPULACION] ADD  DEFAULT (getdate()) FOR [Fecha_Creacion]
GO
ALTER TABLE [VUE].[FRECUENCIAS] ADD  DEFAULT (getdate()) FOR [Fecha_Creacion]
GO
ALTER TABLE [VUE].[HORARIOS_PROGRAMADOS] ADD  DEFAULT (getdate()) FOR [Fecha_Creacion]
GO
ALTER TABLE [VUE].[RUTAS_AEREAS] ADD  DEFAULT (getdate()) FOR [Fecha_Creacion]
GO
ALTER TABLE [VUE].[VUELOS] ADD  DEFAULT ('Programado') FOR [Estado]
GO
ALTER TABLE [VUE].[VUELOS] ADD  DEFAULT (getdate()) FOR [Fecha_Creacion]
GO
ALTER TABLE [ABC].[COMBUSTIBLE]  WITH CHECK ADD  CONSTRAINT [FK_Combustible_Aeronave] FOREIGN KEY([ID_Aeronave])
REFERENCES [OPA].[AERONAVES] ([ID_Aeronave])
GO
ALTER TABLE [ABC].[COMBUSTIBLE] CHECK CONSTRAINT [FK_Combustible_Aeronave]
GO
ALTER TABLE [AUD].[REPORTES_GENERADOS]  WITH CHECK ADD  CONSTRAINT [FK_Reporte_Auditoria] FOREIGN KEY([ID_Evento])
REFERENCES [AUD].[AUDITORIA_SISTEMA] ([ID_Evento])
GO
ALTER TABLE [AUD].[REPORTES_GENERADOS] CHECK CONSTRAINT [FK_Reporte_Auditoria]
GO
ALTER TABLE [COM].[GESTION_ADMVUELOS]  WITH CHECK ADD  CONSTRAINT [FK_Gestion_Aerolinea] FOREIGN KEY([ID_Aerolinea])
REFERENCES [OPA].[AEROLINEAS] ([ID_Aerolinea])
GO
ALTER TABLE [COM].[GESTION_ADMVUELOS] CHECK CONSTRAINT [FK_Gestion_Aerolinea]
GO
ALTER TABLE [COM].[GESTION_ADMVUELOS]  WITH CHECK ADD  CONSTRAINT [FK_Gestion_Pasajero] FOREIGN KEY([ID_Pasajero])
REFERENCES [PAS].[PASAJEROS] ([ID_Pasajero])
GO
ALTER TABLE [COM].[GESTION_ADMVUELOS] CHECK CONSTRAINT [FK_Gestion_Pasajero]
GO
ALTER TABLE [COM].[GESTION_ADMVUELOS]  WITH CHECK ADD  CONSTRAINT [FK_Gestion_Paseabordaje] FOREIGN KEY([ID_Paseabordaje])
REFERENCES [COM].[PASES_ABORDAJE] ([ID_Paseabordaje])
GO
ALTER TABLE [COM].[GESTION_ADMVUELOS] CHECK CONSTRAINT [FK_Gestion_Paseabordaje]
GO
ALTER TABLE [COM].[GESTION_ADMVUELOS]  WITH CHECK ADD  CONSTRAINT [FK_Gestion_Vuelo] FOREIGN KEY([ID_Vuelo])
REFERENCES [VUE].[VUELOS] ([ID_Vuelo])
GO
ALTER TABLE [COM].[GESTION_ADMVUELOS] CHECK CONSTRAINT [FK_Gestion_Vuelo]
GO
ALTER TABLE [COM].[PAGOS]  WITH CHECK ADD  CONSTRAINT [FK_Pago_Reservacion] FOREIGN KEY([ID_Reservacion])
REFERENCES [COM].[RESERVACIONES] ([ID_Reservacion])
GO
ALTER TABLE [COM].[PAGOS] CHECK CONSTRAINT [FK_Pago_Reservacion]
GO
ALTER TABLE [COM].[PASES_ABORDAJE]  WITH CHECK ADD  CONSTRAINT [FK_PASES_ABORDAJE_Pasajero] FOREIGN KEY([ID_Pasajero])
REFERENCES [PAS].[PASAJEROS] ([ID_Pasajero])
GO
ALTER TABLE [COM].[PASES_ABORDAJE] CHECK CONSTRAINT [FK_PASES_ABORDAJE_Pasajero]
GO
ALTER TABLE [COM].[PASES_ABORDAJE]  WITH CHECK ADD  CONSTRAINT [FK_PASES_ABORDAJE_Vuelo] FOREIGN KEY([ID_Vuelo])
REFERENCES [VUE].[VUELOS] ([ID_Vuelo])
GO
ALTER TABLE [COM].[PASES_ABORDAJE] CHECK CONSTRAINT [FK_PASES_ABORDAJE_Vuelo]
GO
ALTER TABLE [COM].[RESERVACIONES]  WITH CHECK ADD  CONSTRAINT [FK_Reservacion_Pasajero] FOREIGN KEY([ID_Pasajero])
REFERENCES [PAS].[PASAJEROS] ([ID_Pasajero])
GO
ALTER TABLE [COM].[RESERVACIONES] CHECK CONSTRAINT [FK_Reservacion_Pasajero]
GO
ALTER TABLE [COM].[RESERVACIONES]  WITH CHECK ADD  CONSTRAINT [FK_Reservacion_Vuelo] FOREIGN KEY([ID_Vuelo])
REFERENCES [VUE].[VUELOS] ([ID_Vuelo])
GO
ALTER TABLE [COM].[RESERVACIONES] CHECK CONSTRAINT [FK_Reservacion_Vuelo]
GO
ALTER TABLE [CRG].[CARGAS_TRANSPORTADAS]  WITH CHECK ADD  CONSTRAINT [FK_Carga_Operador] FOREIGN KEY([ID_Operador])
REFERENCES [CRG].[OPERADORES_CARGA] ([ID_Operador])
GO
ALTER TABLE [CRG].[CARGAS_TRANSPORTADAS] CHECK CONSTRAINT [FK_Carga_Operador]
GO
ALTER TABLE [CRG].[CARGAS_TRANSPORTADAS]  WITH CHECK ADD  CONSTRAINT [FK_Carga_Vuelo] FOREIGN KEY([ID_VueloCarga])
REFERENCES [CRG].[VUELOS_CARGA] ([ID_VueloCarga])
GO
ALTER TABLE [CRG].[CARGAS_TRANSPORTADAS] CHECK CONSTRAINT [FK_Carga_Vuelo]
GO
ALTER TABLE [CRG].[OPERADORES_CARGA]  WITH CHECK ADD  CONSTRAINT [FK_Operador_Pais] FOREIGN KEY([Pais_Origen])
REFERENCES [INF].[PAISES] ([ID_Pais])
GO
ALTER TABLE [CRG].[OPERADORES_CARGA] CHECK CONSTRAINT [FK_Operador_Pais]
GO
ALTER TABLE [CRG].[VUELOS_CARGA]  WITH CHECK ADD  CONSTRAINT [FK_VueloCarga_Aeronave] FOREIGN KEY([ID_Aeronave])
REFERENCES [OPA].[AERONAVES] ([ID_Aeronave])
GO
ALTER TABLE [CRG].[VUELOS_CARGA] CHECK CONSTRAINT [FK_VueloCarga_Aeronave]
GO
ALTER TABLE [CRG].[VUELOS_CARGA]  WITH CHECK ADD  CONSTRAINT [FK_VueloCarga_Ruta] FOREIGN KEY([ID_Ruta])
REFERENCES [VUE].[RUTAS_AEREAS] ([ID_Ruta])
GO
ALTER TABLE [CRG].[VUELOS_CARGA] CHECK CONSTRAINT [FK_VueloCarga_Ruta]
GO
ALTER TABLE [EMR].[INTERVENCIONES_EMERGENCIA]  WITH CHECK ADD  CONSTRAINT [FK_Intervencion_Unidad] FOREIGN KEY([ID_Unidad])
REFERENCES [EMR].[UNIDADES_EMERGENCIA] ([ID_Unidad])
GO
ALTER TABLE [EMR].[INTERVENCIONES_EMERGENCIA] CHECK CONSTRAINT [FK_Intervencion_Unidad]
GO
ALTER TABLE [EMR].[INTERVENCIONES_EMERGENCIA]  WITH CHECK ADD  CONSTRAINT [FK_Intervencion_Vuelo] FOREIGN KEY([ID_Vuelo])
REFERENCES [VUE].[VUELOS] ([ID_Vuelo])
GO
ALTER TABLE [EMR].[INTERVENCIONES_EMERGENCIA] CHECK CONSTRAINT [FK_Intervencion_Vuelo]
GO
ALTER TABLE [EQP].[EQUIPAJE]  WITH CHECK ADD  CONSTRAINT [FK_Equipaje_Pasajero] FOREIGN KEY([ID_Pasajero])
REFERENCES [PAS].[PASAJEROS] ([ID_Pasajero])
GO
ALTER TABLE [EQP].[EQUIPAJE] CHECK CONSTRAINT [FK_Equipaje_Pasajero]
GO
ALTER TABLE [EQP].[EQUIPAJE]  WITH CHECK ADD  CONSTRAINT [FK_Equipaje_Vuelo] FOREIGN KEY([ID_Vuelo])
REFERENCES [VUE].[VUELOS] ([ID_Vuelo])
GO
ALTER TABLE [EQP].[EQUIPAJE] CHECK CONSTRAINT [FK_Equipaje_Vuelo]
GO
ALTER TABLE [EQP].[EQUIPAMIENTO_ESPECIAL]  WITH CHECK ADD  CONSTRAINT [FK_Equipamiento_Reservacion] FOREIGN KEY([ID_Reservacion])
REFERENCES [COM].[RESERVACIONES] ([ID_Reservacion])
GO
ALTER TABLE [EQP].[EQUIPAMIENTO_ESPECIAL] CHECK CONSTRAINT [FK_Equipamiento_Reservacion]
GO
ALTER TABLE [INF].[AEROPUERTOS]  WITH CHECK ADD  CONSTRAINT [FK_Aeropuerto_Pais] FOREIGN KEY([ID_Pais])
REFERENCES [INF].[PAISES] ([ID_Pais])
GO
ALTER TABLE [INF].[AEROPUERTOS] CHECK CONSTRAINT [FK_Aeropuerto_Pais]
GO
ALTER TABLE [INF].[PUERTAS_EMBARQUE]  WITH CHECK ADD  CONSTRAINT [FK_Puerta_Terminal] FOREIGN KEY([ID_Terminal])
REFERENCES [INF].[TERMINALES] ([ID_Terminal])
GO
ALTER TABLE [INF].[PUERTAS_EMBARQUE] CHECK CONSTRAINT [FK_Puerta_Terminal]
GO
ALTER TABLE [INF].[TERMINALES]  WITH CHECK ADD  CONSTRAINT [FK_Terminal_Aeropuerto] FOREIGN KEY([ID_Aeropuerto])
REFERENCES [INF].[AEROPUERTOS] ([ID_Aeropuerto])
GO
ALTER TABLE [INF].[TERMINALES] CHECK CONSTRAINT [FK_Terminal_Aeropuerto]
GO
ALTER TABLE [INT].[INCIDENTES_OPERATIVOS]  WITH CHECK ADD  CONSTRAINT [FK_Incidente_Aeronave] FOREIGN KEY([ID_Aeronave])
REFERENCES [OPA].[AERONAVES] ([ID_Aeronave])
GO
ALTER TABLE [INT].[INCIDENTES_OPERATIVOS] CHECK CONSTRAINT [FK_Incidente_Aeronave]
GO
ALTER TABLE [INT].[INCIDENTES_OPERATIVOS]  WITH CHECK ADD  CONSTRAINT [FK_Incidente_Vuelo] FOREIGN KEY([ID_Vuelo])
REFERENCES [VUE].[VUELOS] ([ID_Vuelo])
GO
ALTER TABLE [INT].[INCIDENTES_OPERATIVOS] CHECK CONSTRAINT [FK_Incidente_Vuelo]
GO
ALTER TABLE [INT].[TIEMPOS_PROCESO_PASAJEROS]  WITH CHECK ADD  CONSTRAINT [FK_TiempoPasajero] FOREIGN KEY([ID_Pasajero])
REFERENCES [PAS].[PASAJEROS] ([ID_Pasajero])
GO
ALTER TABLE [INT].[TIEMPOS_PROCESO_PASAJEROS] CHECK CONSTRAINT [FK_TiempoPasajero]
GO
ALTER TABLE [MET].[CLIMA]  WITH CHECK ADD  CONSTRAINT [FK_Clima_Aeropuerto] FOREIGN KEY([ID_Aeropuerto])
REFERENCES [INF].[AEROPUERTOS] ([ID_Aeropuerto])
GO
ALTER TABLE [MET].[CLIMA] CHECK CONSTRAINT [FK_Clima_Aeropuerto]
GO
ALTER TABLE [MIG].[MIGRACION_ADUANA]  WITH CHECK ADD  CONSTRAINT [FK_MigracionAduana_Reservacion] FOREIGN KEY([ID_Reservacion])
REFERENCES [COM].[RESERVACIONES] ([ID_Reservacion])
GO
ALTER TABLE [MIG].[MIGRACION_ADUANA] CHECK CONSTRAINT [FK_MigracionAduana_Reservacion]
GO
ALTER TABLE [MKT].[ATENCION_CLIENTE]  WITH CHECK ADD  CONSTRAINT [FK_AtencionCliente_Pasajero] FOREIGN KEY([ID_Pasajero])
REFERENCES [PAS].[PASAJEROS] ([ID_Pasajero])
GO
ALTER TABLE [MKT].[ATENCION_CLIENTE] CHECK CONSTRAINT [FK_AtencionCliente_Pasajero]
GO
ALTER TABLE [MKT].[ENCUESTAS_OPINIONES_CLIENTES]  WITH CHECK ADD  CONSTRAINT [FK_Encuesta_Pasajero] FOREIGN KEY([ID_Pasajero])
REFERENCES [PAS].[PASAJEROS] ([ID_Pasajero])
GO
ALTER TABLE [MKT].[ENCUESTAS_OPINIONES_CLIENTES] CHECK CONSTRAINT [FK_Encuesta_Pasajero]
GO
ALTER TABLE [MKT].[ENCUESTAS_OPINIONES_CLIENTES]  WITH CHECK ADD  CONSTRAINT [FK_Encuesta_Vuelo] FOREIGN KEY([ID_Vuelo])
REFERENCES [VUE].[VUELOS] ([ID_Vuelo])
GO
ALTER TABLE [MKT].[ENCUESTAS_OPINIONES_CLIENTES] CHECK CONSTRAINT [FK_Encuesta_Vuelo]
GO
ALTER TABLE [MKT].[FIDELIDAD_PASAJERO]  WITH CHECK ADD  CONSTRAINT [FK_Fidelidad_Pasajero] FOREIGN KEY([ID_Pasajero])
REFERENCES [PAS].[PASAJEROS] ([ID_Pasajero])
GO
ALTER TABLE [MKT].[FIDELIDAD_PASAJERO] CHECK CONSTRAINT [FK_Fidelidad_Pasajero]
GO
ALTER TABLE [MKT].[OFERTAS_APLICADAS]  WITH CHECK ADD  CONSTRAINT [FK_Oferta_Campaña] FOREIGN KEY([ID_Camp])
REFERENCES [MKT].[CAMP_MARKETING] ([ID_Camp])
GO
ALTER TABLE [MKT].[OFERTAS_APLICADAS] CHECK CONSTRAINT [FK_Oferta_Campaña]
GO
ALTER TABLE [MKT].[OFERTAS_APLICADAS]  WITH CHECK ADD  CONSTRAINT [FK_Oferta_Reservacion] FOREIGN KEY([ID_Reservacion])
REFERENCES [COM].[RESERVACIONES] ([ID_Reservacion])
GO
ALTER TABLE [MKT].[OFERTAS_APLICADAS] CHECK CONSTRAINT [FK_Oferta_Reservacion]
GO
ALTER TABLE [OPA].[AEROLINEAS]  WITH CHECK ADD  CONSTRAINT [FK_Aerolinea_Pais] FOREIGN KEY([Pais_Origen])
REFERENCES [INF].[PAISES] ([ID_Pais])
GO
ALTER TABLE [OPA].[AEROLINEAS] CHECK CONSTRAINT [FK_Aerolinea_Pais]
GO
ALTER TABLE [OPA].[AERONAVES]  WITH CHECK ADD  CONSTRAINT [FK_Aeronave_Aerolinea] FOREIGN KEY([ID_Aerolinea])
REFERENCES [OPA].[AEROLINEAS] ([ID_Aerolinea])
GO
ALTER TABLE [OPA].[AERONAVES] CHECK CONSTRAINT [FK_Aeronave_Aerolinea]
GO
ALTER TABLE [PRE].[HISTORICO_OPERACIONAL_VUELOS]  WITH CHECK ADD  CONSTRAINT [FK_Historico_Vuelo] FOREIGN KEY([ID_Vuelo])
REFERENCES [VUE].[VUELOS] ([ID_Vuelo])
GO
ALTER TABLE [PRE].[HISTORICO_OPERACIONAL_VUELOS] CHECK CONSTRAINT [FK_Historico_Vuelo]
GO
ALTER TABLE [RRH].[ASISTENCIAS_EMPLEADOS]  WITH CHECK ADD  CONSTRAINT [FK_Asistencia_Empleado] FOREIGN KEY([ID_Empleado])
REFERENCES [RRH].[EMPLEADOS] ([ID_Empleado])
GO
ALTER TABLE [RRH].[ASISTENCIAS_EMPLEADOS] CHECK CONSTRAINT [FK_Asistencia_Empleado]
GO
ALTER TABLE [RRH].[EMPLEADOS]  WITH CHECK ADD  CONSTRAINT [FK_Empleado_Aeropuerto] FOREIGN KEY([ID_Aeropuerto])
REFERENCES [INF].[AEROPUERTOS] ([ID_Aeropuerto])
GO
ALTER TABLE [RRH].[EMPLEADOS] CHECK CONSTRAINT [FK_Empleado_Aeropuerto]
GO
ALTER TABLE [RRH].[TURNOS_EMPLEADOS]  WITH CHECK ADD  CONSTRAINT [FK_Turno_Empleado] FOREIGN KEY([ID_Empleado])
REFERENCES [RRH].[EMPLEADOS] ([ID_Empleado])
GO
ALTER TABLE [RRH].[TURNOS_EMPLEADOS] CHECK CONSTRAINT [FK_Turno_Empleado]
GO
ALTER TABLE [SAB].[SERVICIOS_BORDO]  WITH CHECK ADD  CONSTRAINT [FK_ServiciosVuelo] FOREIGN KEY([ID_Vuelo])
REFERENCES [VUE].[VUELOS] ([ID_Vuelo])
GO
ALTER TABLE [SAB].[SERVICIOS_BORDO] CHECK CONSTRAINT [FK_ServiciosVuelo]
GO
ALTER TABLE [SAB].[SERVICIOS_CONSUMIDOS]  WITH CHECK ADD  CONSTRAINT [FK_Consumo_Pasajero] FOREIGN KEY([ID_Pasajero])
REFERENCES [PAS].[PASAJEROS] ([ID_Pasajero])
GO
ALTER TABLE [SAB].[SERVICIOS_CONSUMIDOS] CHECK CONSTRAINT [FK_Consumo_Pasajero]
GO
ALTER TABLE [SAB].[SERVICIOS_CONSUMIDOS]  WITH CHECK ADD  CONSTRAINT [FK_Consumo_Servicio] FOREIGN KEY([ID_Servicio])
REFERENCES [SAB].[SERVICIOS_BORDO] ([ID_Servicio])
GO
ALTER TABLE [SAB].[SERVICIOS_CONSUMIDOS] CHECK CONSTRAINT [FK_Consumo_Servicio]
GO
ALTER TABLE [SEG].[CONTROLES_SEGURIDAD]  WITH CHECK ADD  CONSTRAINT [FK_Control_Vuelo] FOREIGN KEY([ID_Vuelo])
REFERENCES [VUE].[VUELOS] ([ID_Vuelo])
GO
ALTER TABLE [SEG].[CONTROLES_SEGURIDAD] CHECK CONSTRAINT [FK_Control_Vuelo]
GO
ALTER TABLE [SEG].[INCIDENTES_SEGURIDAD]  WITH CHECK ADD  CONSTRAINT [FK_IncidentesSeguridad_Vuelo] FOREIGN KEY([ID_Vuelo])
REFERENCES [VUE].[VUELOS] ([ID_Vuelo])
GO
ALTER TABLE [SEG].[INCIDENTES_SEGURIDAD] CHECK CONSTRAINT [FK_IncidentesSeguridad_Vuelo]
GO
ALTER TABLE [TEC].[MANTENIMIENTO]  WITH CHECK ADD  CONSTRAINT [FK_Mantenimiento_Aeronave] FOREIGN KEY([ID_Aeronave])
REFERENCES [OPA].[AERONAVES] ([ID_Aeronave])
GO
ALTER TABLE [TEC].[MANTENIMIENTO] CHECK CONSTRAINT [FK_Mantenimiento_Aeronave]
GO
ALTER TABLE [TRP].[TRIPULACION]  WITH CHECK ADD  CONSTRAINT [FK_Tripulacion_Empleado] FOREIGN KEY([ID_Empleado])
REFERENCES [RRH].[EMPLEADOS] ([ID_Empleado])
GO
ALTER TABLE [TRP].[TRIPULACION] CHECK CONSTRAINT [FK_Tripulacion_Empleado]
GO
ALTER TABLE [TRP].[TRIPULACION]  WITH CHECK ADD  CONSTRAINT [FK_Tripulacion_Vuelo] FOREIGN KEY([ID_Vuelo])
REFERENCES [VUE].[VUELOS] ([ID_Vuelo])
GO
ALTER TABLE [TRP].[TRIPULACION] CHECK CONSTRAINT [FK_Tripulacion_Vuelo]
GO
ALTER TABLE [VUE].[HORARIOS_PROGRAMADOS]  WITH CHECK ADD  CONSTRAINT [FK_Horarios_Frecuencia] FOREIGN KEY([ID_Frecuencia])
REFERENCES [VUE].[FRECUENCIAS] ([ID_Frecuencia])
GO
ALTER TABLE [VUE].[HORARIOS_PROGRAMADOS] CHECK CONSTRAINT [FK_Horarios_Frecuencia]
GO
ALTER TABLE [VUE].[HORARIOS_PROGRAMADOS]  WITH CHECK ADD  CONSTRAINT [FK_Horarios_Ruta] FOREIGN KEY([ID_Ruta])
REFERENCES [VUE].[RUTAS_AEREAS] ([ID_Ruta])
GO
ALTER TABLE [VUE].[HORARIOS_PROGRAMADOS] CHECK CONSTRAINT [FK_Horarios_Ruta]
GO
ALTER TABLE [VUE].[RUTAS_AEREAS]  WITH CHECK ADD  CONSTRAINT [FK_Ruta_Destino] FOREIGN KEY([ID_Aeropuerto_Destino])
REFERENCES [INF].[AEROPUERTOS] ([ID_Aeropuerto])
GO
ALTER TABLE [VUE].[RUTAS_AEREAS] CHECK CONSTRAINT [FK_Ruta_Destino]
GO
ALTER TABLE [VUE].[RUTAS_AEREAS]  WITH CHECK ADD  CONSTRAINT [FK_Ruta_Origen] FOREIGN KEY([ID_Aeropuerto_Origen])
REFERENCES [INF].[AEROPUERTOS] ([ID_Aeropuerto])
GO
ALTER TABLE [VUE].[RUTAS_AEREAS] CHECK CONSTRAINT [FK_Ruta_Origen]
GO
ALTER TABLE [VUE].[VUELOS]  WITH CHECK ADD  CONSTRAINT [FK_Vuelo_Aeronave] FOREIGN KEY([ID_Aeronave])
REFERENCES [OPA].[AERONAVES] ([ID_Aeronave])
GO
ALTER TABLE [VUE].[VUELOS] CHECK CONSTRAINT [FK_Vuelo_Aeronave]
GO
ALTER TABLE [VUE].[VUELOS]  WITH CHECK ADD  CONSTRAINT [FK_Vuelo_Ruta] FOREIGN KEY([ID_Ruta])
REFERENCES [VUE].[RUTAS_AEREAS] ([ID_Ruta])
GO
ALTER TABLE [VUE].[VUELOS] CHECK CONSTRAINT [FK_Vuelo_Ruta]
GO
ALTER TABLE [VUE].[VUELOS]  WITH CHECK ADD  CONSTRAINT [FK_Vuelos_Horarios] FOREIGN KEY([ID_Horario])
REFERENCES [VUE].[HORARIOS_PROGRAMADOS] ([ID_Horario])
GO
ALTER TABLE [VUE].[VUELOS] CHECK CONSTRAINT [FK_Vuelos_Horarios]
GO
ALTER TABLE [MKT].[ENCUESTAS_OPINIONES_CLIENTES]  WITH CHECK ADD CHECK  (([Calificacion_Global]>=(1) AND [Calificacion_Global]<=(5)))
GO
ALTER TABLE [MKT].[ENCUESTAS_OPINIONES_CLIENTES]  WITH CHECK ADD CHECK  (([Comodidad]>=(1) AND [Comodidad]<=(5)))
GO
ALTER TABLE [MKT].[ENCUESTAS_OPINIONES_CLIENTES]  WITH CHECK ADD CHECK  (([Limpieza]>=(1) AND [Limpieza]<=(5)))
GO
ALTER TABLE [MKT].[ENCUESTAS_OPINIONES_CLIENTES]  WITH CHECK ADD CHECK  (([Puntualidad]>=(1) AND [Puntualidad]<=(5)))
GO
ALTER TABLE [MKT].[ENCUESTAS_OPINIONES_CLIENTES]  WITH CHECK ADD CHECK  (([Servicio_Bordo]>=(1) AND [Servicio_Bordo]<=(5)))
GO
/****** Object:  StoredProcedure [dbo].[SP_Actualizar_Prediccion_Retraso]    Script Date: 24/10/2025 09:39:43 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- 2. Crear el Stored Procedure para actualizar la predicción de retraso
CREATE PROCEDURE [dbo].[SP_Actualizar_Prediccion_Retraso]
    @ID_Historico INT,
    @MensajePrediccion NVARCHAR(255)
AS
BEGIN
    SET NOCOUNT ON;

    UPDATE PRE.HISTORICO_OPERACIONAL_VUELOS
    SET Observaciones = @MensajePrediccion
    WHERE ID_Historico = @ID_Historico;
END;
GO
/****** Object:  StoredProcedure [dbo].[SP_Generar_Historico_Para_Todos_Los_Vuelos]    Script Date: 24/10/2025 09:39:43 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- 2. Crear el Stored Procedure
CREATE PROCEDURE [dbo].[SP_Generar_Historico_Para_Todos_Los_Vuelos]
AS
BEGIN
    SET NOCOUNT ON;

    PRINT 'Iniciando la generación/actualización del histórico para TODOS los vuelos...';

    DECLARE @ID_Vuelo_Actual INT;

    -- Usamos un cursor para iterar sobre todos los ID_Vuelo existentes en la tabla VUE.VUELOS
    DECLARE cur_all_flights CURSOR LOCAL FORWARD_ONLY STATIC READ_ONLY FOR
    SELECT ID_Vuelo
    FROM VUE.VUELOS
    ORDER BY ID_Vuelo; -- Ordenar para un procesamiento consistente

    OPEN cur_all_flights;
    FETCH NEXT FROM cur_all_flights INTO @ID_Vuelo_Actual;

    WHILE @@FETCH_STATUS = 0
    BEGIN
        -- Llamar al Stored Procedure que realiza el UPSERT para cada ID_Vuelo
        -- Este SP (SP_Insertar_Historico_Vuelo) se encargará de insertar o actualizar
        -- la fila correspondiente en PRE.HISTORICO_OPERACIONAL_VUELOS.
        EXEC SP_Insertar_Historico_Vuelo @ID_Vuelo = @ID_Vuelo_Actual;
        
        -- Puedes descomentar la siguiente línea si quieres ver un mensaje por cada vuelo procesado
        -- PRINT '  -> Procesado/Actualizado histórico para ID_Vuelo: ' + CAST(@ID_Vuelo_Actual AS NVARCHAR(10));
        
        FETCH NEXT FROM cur_all_flights INTO @ID_Vuelo_Actual;
    END;

    CLOSE cur_all_flights;
    DEALLOCATE cur_all_flights;

    PRINT 'Generación/Actualización del histórico para TODOS los vuelos completada.';
END;
GO
/****** Object:  StoredProcedure [dbo].[SP_Insertar_Historico_Vuelo]    Script Date: 24/10/2025 09:39:43 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- 2. Crear el Stored Procedure (Ahora realiza un UPSERT inteligente con CLIMA corregido)
CREATE PROCEDURE [dbo].[SP_Insertar_Historico_Vuelo]
    @ID_Vuelo INT
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE
        @Fecha DATE,
        @HoraProgramada TIME,
        @HoraReal TIME,
        @Estado NVARCHAR(30),
        @Temp DECIMAL(5,2),
        @Humedad DECIMAL(5,2),
        @Condicion NVARCHAR(50),
        @RetrasoMin INT,
        @Pasajeros INT,
        @CargaKg DECIMAL(10,2),
        @ID_Aeropuerto_Origen_Vuelo INT; -- Nueva variable para almacenar el ID_Aeropuerto_Origen

    -- Paso 1: Traer datos básicos del vuelo desde VUE.VUELOS
    SELECT
        @Fecha = V.Fecha_Salida,
        @HoraProgramada = V.Hora_Salida,
        @HoraReal = V.Hora_Llegada,
        @Estado = V.Estado,
        @ID_Aeropuerto_Origen_Vuelo = RA.ID_Aeropuerto_Origen -- ¡AHORA SÍ! Obtener el ID_Aeropuerto_Origen
    FROM VUE.VUELOS AS V
    INNER JOIN VUE.RUTAS_AEREAS AS RA ON V.ID_Ruta = RA.ID_Ruta -- Unir con RUTAS_AEREAS
    WHERE V.ID_Vuelo = @ID_Vuelo;

    -- Salir si el vuelo no se encuentra (este SP solo debe llamarse para vuelos existentes)
    IF @Fecha IS NULL
    BEGIN
        RETURN;
    END;

    -- Paso 2: Calcular retraso si hay hora real
    SET @RetrasoMin = ISNULL(DATEDIFF(MINUTE, @HoraProgramada, @HoraReal), 0);

    -- Paso 3: Obtener clima más cercano para el aeropuerto de ORIGEN del vuelo
    -- Usamos @ID_Aeropuerto_Origen_Vuelo para consultar MET.CLIMA
    SELECT TOP 1
        @Temp = T.Temperatura_C,
        @Humedad = T.Humedad_Porc,
        @Condicion = T.Condicion
    FROM MET.CLIMA AS T
    WHERE T.Fecha = @Fecha
    AND T.ID_Aeropuerto = @ID_Aeropuerto_Origen_Vuelo -- ¡CORREGIDO! Usamos el ID del aeropuerto de origen
    ORDER BY ABS(DATEDIFF(MINUTE, T.Hora, @HoraProgramada)); -- Clima más cercano a la hora programada

    -- Paso 4: Contar pasajeros (ISNULL para asegurar 0 si no hay reservaciones)
    SELECT @Pasajeros = COUNT(*)
    FROM COM.RESERVACIONES
    WHERE ID_Vuelo = @ID_Vuelo;

    -- Paso 5: Sumar carga de equipaje (ISNULL para asegurar 0 si no hay equipaje)
    SELECT @CargaKg = ISNULL(SUM(Peso), 0)
    FROM EQP.EQUIPAJE
    WHERE ID_Vuelo = @ID_Vuelo;

    -- Paso 6: Realizar el UPSERT en PRE.HISTORICO_OPERACIONAL_VUELOS
    MERGE PRE.HISTORICO_OPERACIONAL_VUELOS AS Target
    USING (SELECT @ID_Vuelo AS ID_Vuelo_Source,
                  @Fecha AS Fecha_Source,
                  @HoraProgramada AS Hora_Salida_Programada_Source,
                  @HoraReal AS Hora_Salida_Real_Source,
                  @Temp AS Clima_Temperatura_Source,
                  @Humedad AS Clima_Humedad_Source,
                  @Condicion AS Clima_Condicion_Source,
                  @RetrasoMin AS Retraso_Minutos_Source,
                  @Estado AS Estado_Vuelo_Source,
                  @Pasajeros AS Carga_Pasajeros_Source,
                  @CargaKg AS Carga_Carga_Kg_Source
           ) AS Source
    ON (Target.ID_Vuelo = Source.ID_Vuelo_Source)
    WHEN MATCHED AND (
        -- Condición para UPDATE: si CUALQUIER campo operacional relevante ha cambiado
        ISNULL(Target.Fecha, '1900-01-01') <> ISNULL(Source.Fecha_Source, '1900-01-01') OR
        ISNULL(Target.Hora_Salida_Programada, '00:00:00') <> ISNULL(Source.Hora_Salida_Programada_Source, '00:00:00') OR
        ISNULL(Target.Hora_Salida_Real, '00:00:00') <> ISNULL(Source.Hora_Salida_Real_Source, '00:00:00') OR
        ISNULL(Target.Clima_Temperatura, -999.99) <> ISNULL(Source.Clima_Temperatura_Source, -999.99) OR
        ISNULL(Target.Clima_Humedad, -999.99) <> ISNULL(Source.Clima_Humedad_Source, -999.99) OR
        ISNULL(Target.Clima_Condicion, '') <> ISNULL(Source.Clima_Condicion_Source, '') OR
        ISNULL(Target.Retraso_Minutos, -999) <> ISNULL(Source.Retraso_Minutos_Source, -999) OR
        ISNULL(Target.Estado_Vuelo, '') <> ISNULL(Source.Estado_Vuelo_Source, '') OR
        ISNULL(Target.Carga_Pasajeros, -999) <> ISNULL(Source.Carga_Pasajeros_Source, -999) OR
        ISNULL(Target.Carga_Carga_Kg, -999.99) <> ISNULL(Source.Carga_Carga_Kg_Source, -999.99)
    ) THEN
        -- Actualizar los campos operativos y la fecha de modificación propia de PRE.HISTORICO_OPERACIONAL_VUELOS
        UPDATE SET
            Target.Fecha = Source.Fecha_Source,
            Target.Hora_Salida_Programada = Source.Hora_Salida_Programada_Source,
            Target.Hora_Salida_Real = Source.Hora_Salida_Real_Source,
            Target.Clima_Temperatura = Source.Clima_Temperatura_Source,
            Target.Clima_Humedad = Source.Clima_Humedad_Source,
            Target.Clima_Condicion = Source.Clima_Condicion_Source,
            Target.Retraso_Minutos = Source.Retraso_Minutos_Source,
            Target.Estado_Vuelo = Source.Estado_Vuelo_Source,
            Target.Carga_Pasajeros = Source.Carga_Pasajeros_Source,
            Target.Carga_Carga_Kg = Source.Carga_Carga_Kg_Source,
            -- Target.Observaciones NO se toca aquí, es actualizado solo por SP_Actualizar_Prediccion_Retraso
            Target.Fecha_Modificacion = GETDATE() -- Actualiza la propia fecha de modificación de esta tabla
    WHEN NOT MATCHED BY TARGET THEN
        -- Insertar un nuevo registro si no existe
        INSERT (
            ID_Vuelo, Fecha, Hora_Salida_Programada, Hora_Salida_Real,
            Clima_Temperatura, Clima_Humedad, Clima_Condicion,
            Retraso_Minutos, Estado_Vuelo, Carga_Pasajeros, Carga_Carga_Kg,
            Observaciones, Fecha_Creacion, Fecha_Modificacion
        )
        VALUES (
            Source.ID_Vuelo_Source, Source.Fecha_Source, Source.Hora_Salida_Programada_Source, Source.Hora_Salida_Real_Source,
            Source.Clima_Temperatura_Source, Source.Clima_Humedad_Source, Source.Clima_Condicion_Source,
            Source.Retraso_Minutos_Source, Source.Estado_Vuelo_Source, Source.Carga_Pasajeros_Source, Source.Carga_Carga_Kg_Source,
            NULL, -- Observaciones es NULL en la inserción inicial
            GETDATE(), -- Fecha_Creacion se establece al momento de la inserción
            NULL       -- Fecha_Modificacion es NULL en la inserción inicial
        );
END;
GO
/****** Object:  StoredProcedure [dbo].[SP_Refrescar_Historico_Vuelos_Activos_SIAA]    Script Date: 24/10/2025 09:39:43 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- 2. Crear el Stored Procedure para refrescar periódicamente vuelos activos
CREATE PROCEDURE [dbo].[SP_Refrescar_Historico_Vuelos_Activos_SIAA]
AS
BEGIN
    SET NOCOUNT ON;

    PRINT 'Iniciando refresco periódico de PRE.HISTORICO_OPERACIONAL_VUELOS para vuelos activos...';

    DECLARE @ID_Vuelo_Actual INT;

    -- Cursor para obtener los ID_Vuelo de vuelos activos/próximos que nos interesan
    -- Define "activos" según tu lógica de negocio. Ejemplos:
    -- - Vuelos programados para hoy o en el futuro cercano.
    -- - Vuelos cuyo estado es 'Programado', 'En Vuelo', 'Retrasado'.
    -- - Podrías añadir lógica para vuelos que han cambiado recientemente en RESERVACIONES/EQUIPAJE.
    DECLARE cur_active_flights CURSOR LOCAL FORWARD_ONLY STATIC READ_ONLY FOR
    SELECT ID_Vuelo
    FROM VUE.VUELOS
    WHERE
        -- Vuelos que son hoy o en los próximos 7 días (ajusta según tu necesidad)
        Fecha_Salida >= CAST(GETDATE() AS DATE) AND Fecha_Salida <= DATEADD(DAY, 7, CAST(GETDATE() AS DATE))
        OR
        -- O vuelos que están en un estado que sugiere que aún son "activos" u "operativos"
        Estado IN ('Programado', 'En Vuelo', 'Retrasado', 'Desviado', 'Aterrizado'); 
        -- Considera si 'Aterrizado' debe seguir siendo monitoreado por un tiempo corto.

    OPEN cur_active_flights;
    FETCH NEXT FROM cur_active_flights INTO @ID_Vuelo_Actual;

    WHILE @@FETCH_STATUS = 0
    BEGIN
        -- Llamar al Stored Procedure que realiza el UPSERT para actualizar el histórico
        EXEC SP_Insertar_Historico_Vuelo @ID_Vuelo = @ID_Vuelo_Actual;
        -- PRINT '  -> Refrescado histórico para ID_Vuelo: ' + CAST(@ID_Vuelo_Actual AS NVARCHAR(10));
        
        FETCH NEXT FROM cur_active_flights INTO @ID_Vuelo_Actual;
    END;

    CLOSE cur_active_flights;
    DEALLOCATE cur_active_flights;

    PRINT 'Refresco de PRE.HISTORICO_OPERACIONAL_VUELOS completado.';
END;
GO
USE [master]
GO
ALTER DATABASE [SIAA] SET  READ_WRITE 
GO
