

CREATE DATABASE DWSIAA;
GO

USE [DWSIAA]
GO

/****** Object:  Schema [CRG]    Script Date: 23/10/2025 01:04:33 p. m. ******/
CREATE SCHEMA [CRG]
GO
/****** Object:  Schema [DIM]    Script Date: 23/10/2025 01:04:33 p. m. ******/
CREATE SCHEMA [DIM]
GO
/****** Object:  Schema [FACT]    Script Date: 23/10/2025 01:04:33 p. m. ******/
CREATE SCHEMA [FACT]
GO
/****** Object:  Schema [METADATA]    Script Date: 23/10/2025 01:04:33 p. m. ******/
CREATE SCHEMA [METADATA]
GO
/****** Object:  Schema [PSTG]    Script Date: 23/10/2025 01:04:33 p. m. ******/
CREATE SCHEMA [PSTG]
GO
/****** Object:  Schema [STG]    Script Date: 23/10/2025 01:04:33 p. m. ******/
CREATE SCHEMA [STG]
GO
/****** Object:  Table [CRG].[AEROLINEAS]    Script Date: 23/10/2025 01:04:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CRG].[AEROLINEAS](
	[ID_Aerolinea] [int] NOT NULL,
	[Nombre] [nvarchar](100) NOT NULL,
	[Codigo_IATA] [char](2) NOT NULL,
	[Pais_Origen] [int] NOT NULL,
	[Activa] [bit] NULL,
	[Fecha_Creacion_Origen] [datetime2](7) NULL,
	[Fecha_Modificacion_Origen] [datetime2](7) NULL,
	[Fecha_Carga_Staging] [datetime2](7) NOT NULL,
	[Fecha_Actualizacion_Staging] [datetime2](7) NULL,
	[IDEtlExecution] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [CRG].[AERONAVES]    Script Date: 23/10/2025 01:04:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CRG].[AERONAVES](
	[ID_Aeronave] [int] NOT NULL,
	[Matricula] [nvarchar](10) NOT NULL,
	[Modelo] [nvarchar](50) NOT NULL,
	[Capacidad_Pasajeros] [int] NOT NULL,
	[Capacidad_Carga_KG] [int] NULL,
	[Fecha_Fabricacion] [date] NULL,
	[ID_Aerolinea] [int] NOT NULL,
	[Estado] [nvarchar](20) NULL,
	[Fecha_Creacion_Origen] [datetime2](7) NULL,
	[Fecha_Modificacion_Origen] [datetime2](7) NULL,
	[Fecha_Carga_Staging] [datetime2](7) NOT NULL,
	[Fecha_Actualizacion_Staging] [datetime2](7) NULL,
	[IDEtlExecution] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [CRG].[ASISTENCIAS_EMPLEADOS]    Script Date: 23/10/2025 01:04:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CRG].[ASISTENCIAS_EMPLEADOS](
	[ID_Asistencia] [int] NOT NULL,
	[ID_Empleado] [int] NOT NULL,
	[Fecha] [date] NOT NULL,
	[Hora_Entrada] [time](7) NULL,
	[Hora_Salida] [time](7) NULL,
	[Estado] [nvarchar](20) NULL,
	[Fecha_Creacion_Origen] [datetime2](7) NULL,
	[Fecha_Modificacion_Origen] [datetime2](7) NULL,
	[Fecha_Carga_Staging] [datetime2](7) NOT NULL,
	[Fecha_Actualizacion_Staging] [datetime2](7) NULL,
	[IDEtlExecution] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [CRG].[ATENCION_CLIENTE]    Script Date: 23/10/2025 01:04:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CRG].[ATENCION_CLIENTE](
	[ID_Atencion] [int] NOT NULL,
	[ID_Pasajero] [int] NOT NULL,
	[Fecha_Solicitud] [date] NOT NULL,
	[Tipo_Solicitud] [nvarchar](50) NOT NULL,
	[Descripcion] [nvarchar](255) NULL,
	[Estado] [nvarchar](30) NOT NULL,
	[Respuesta] [nvarchar](255) NULL,
	[Fecha_Respuesta] [date] NULL,
	[Fecha_Creacion_Origen] [datetime2](7) NULL,
	[Fecha_Modificacion_Origen] [datetime2](7) NULL,
	[Fecha_Carga_Staging] [datetime2](7) NOT NULL,
	[Fecha_Actualizacion_Staging] [datetime2](7) NULL,
	[IDEtlExecution] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [CRG].[CONTROLES_SEGURIDAD]    Script Date: 23/10/2025 01:04:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CRG].[CONTROLES_SEGURIDAD](
	[ID_Control] [int] NOT NULL,
	[ID_Vuelo] [int] NOT NULL,
	[Tipo_Control] [nvarchar](100) NOT NULL,
	[Fecha_Control] [date] NOT NULL,
	[Resultado] [nvarchar](50) NOT NULL,
	[Observaciones] [nvarchar](255) NULL,
	[Fecha_Creacion_Origen] [datetime2](7) NULL,
	[Fecha_Modificacion_Origen] [datetime2](7) NULL,
	[Fecha_Carga_Staging] [datetime2](7) NOT NULL,
	[Fecha_Actualizacion_Staging] [datetime2](7) NULL,
	[IDEtlExecution] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [CRG].[EMPLEADOS]    Script Date: 23/10/2025 01:04:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CRG].[EMPLEADOS](
	[ID_Empleado] [int] NOT NULL,
	[Nombre] [nvarchar](100) NOT NULL,
	[Apellido] [nvarchar](100) NOT NULL,
	[Cedula] [nvarchar](20) NOT NULL,
	[Fecha_Nacimiento] [date] NOT NULL,
	[Genero] [nvarchar](10) NULL,
	[Cargo] [nvarchar](50) NOT NULL,
	[ID_Aeropuerto] [int] NOT NULL,
	[Fecha_Contratacion] [date] NOT NULL,
	[Estado] [nvarchar](20) NULL,
	[Fecha_Creacion_Origen] [datetime2](7) NULL,
	[Fecha_Modificacion_Origen] [datetime2](7) NULL,
	[Fecha_Carga_Staging] [datetime2](7) NOT NULL,
	[Fecha_Actualizacion_Staging] [datetime2](7) NULL,
	[IDEtlExecution] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [CRG].[GESTION_ADMVUELOS]    Script Date: 23/10/2025 01:04:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CRG].[GESTION_ADMVUELOS](
	[ID_Gestion] [int] NOT NULL,
	[ID_Vuelo] [int] NOT NULL,
	[ID_Aerolinea] [int] NOT NULL,
	[ID_Pasajero] [int] NOT NULL,
	[ID_Paseabordaje] [int] NOT NULL,
	[Costo_Paseabordaje] [decimal](10, 2) NOT NULL,
	[Clase] [nvarchar](20) NOT NULL,
	[Origen] [nvarchar](75) NULL,
	[Destino] [nvarchar](75) NULL,
	[Fecha_Creacion_Origen] [datetime2](7) NULL,
	[Fecha_Modificacion_Origen] [datetime2](7) NULL,
	[Fecha_Carga_Staging] [datetime2](7) NULL,
	[Fecha_Modificacion_Staging] [datetime2](7) NULL,
	[IDEtlExecution] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [CRG].[INCIDENTES_SEGURIDAD]    Script Date: 23/10/2025 01:04:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CRG].[INCIDENTES_SEGURIDAD](
	[ID_Incidente] [int] NOT NULL,
	[ID_Vuelo] [int] NOT NULL,
	[Fecha_Incidente] [date] NOT NULL,
	[Tipo_Incidente] [nvarchar](100) NOT NULL,
	[Descripcion] [nvarchar](255) NULL,
	[Accion_Tomada] [nvarchar](255) NULL,
	[Fecha_Creacion_Origen] [datetime2](7) NULL,
	[Fecha_Modificacion_Origen] [datetime2](7) NULL,
	[Fecha_Carga_Staging] [datetime2](7) NOT NULL,
	[Fecha_Actualizacion_Staging] [datetime2](7) NULL,
	[IDEtlExecution] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [CRG].[INSPECCIONES_AUDITORIAS]    Script Date: 23/10/2025 01:04:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CRG].[INSPECCIONES_AUDITORIAS](
	[ID_Inspeccion] [int] NOT NULL,
	[Fecha] [date] NOT NULL,
	[Tipo_Inspeccion] [nvarchar](100) NOT NULL,
	[Area_Evaluada] [nvarchar](100) NOT NULL,
	[Responsable] [nvarchar](100) NULL,
	[Resultado] [nvarchar](50) NOT NULL,
	[Observaciones] [nvarchar](255) NULL,
	[Accion_Correctiva_Requerida] [bit] NULL,
	[Fecha_Creacion] [datetime2](7) NULL,
	[Fecha_Modificacion] [datetime2](7) NULL,
	[Fecha_Carga_Staging] [datetime2](7) NOT NULL,
	[Fecha_Actualizacion_Staging] [datetime2](7) NULL,
	[IDEtlExecution] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [CRG].[PASAJEROS]    Script Date: 23/10/2025 01:04:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CRG].[PASAJEROS](
	[ID_Pasajero] [int] NOT NULL,
	[Nombre] [nvarchar](100) NOT NULL,
	[Apellido] [nvarchar](100) NOT NULL,
	[Genero] [nvarchar](10) NULL,
	[Fecha_Nacimiento] [date] NULL,
	[Nacionalidad] [nvarchar](50) NULL,
	[Documento_Identidad] [nvarchar](50) NULL,
	[Correo_Electronico] [nvarchar](100) NULL,
	[Telefono] [nvarchar](20) NULL,
	[Fecha_Creacion_Origen] [datetime2](7) NULL,
	[Fecha_Modificacion_Origen] [datetime2](7) NULL,
	[Fecha_Carga_Staging] [datetime2](7) NOT NULL,
	[Fecha_Actualizacion_Staging] [datetime2](7) NULL,
	[IDEtlExecution] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [CRG].[PASES_ABORDAJE]    Script Date: 23/10/2025 01:04:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CRG].[PASES_ABORDAJE](
	[ID_Paseabordaje] [int] NOT NULL,
	[ID_Pasajero] [int] NOT NULL,
	[ID_Vuelo] [int] NOT NULL,
	[Asiento] [nvarchar](10) NOT NULL,
	[Clase] [nvarchar](20) NOT NULL,
	[Puerta_Embarque] [nvarchar](10) NOT NULL,
	[Hora_Embarque] [time](7) NOT NULL,
	[Estado] [nvarchar](30) NOT NULL,
	[Codigo_QR] [nvarchar](255) NULL,
	[Fecha_Emision] [date] NOT NULL,
	[Fecha_Creacion_Origen] [datetime2](7) NULL,
	[Fecha_Modificacion_Origen] [datetime2](7) NULL,
	[Fecha_Carga_Staging] [datetime2](7) NOT NULL,
	[Fecha_Actualizacion_Staging] [datetime2](7) NULL,
	[IDEtlExecution] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [CRG].[PUERTAS_EMBARQUE]    Script Date: 23/10/2025 01:04:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CRG].[PUERTAS_EMBARQUE](
	[ID_Puerta] [int] NOT NULL,
	[Codigo_Puerta] [nvarchar](10) NOT NULL,
	[ID_Terminal] [int] NOT NULL,
	[Tipo_Puerta] [nvarchar](20) NULL,
	[Estado] [nvarchar](20) NULL,
	[Fecha_Creacion_Origen] [datetime2](7) NULL,
	[Fecha_Modificacion_Origen] [datetime2](7) NULL,
	[Fecha_Carga_Staging] [datetime2](7) NOT NULL,
	[Fecha_Actualizacion_Staging] [datetime2](7) NULL,
	[IDEtlExecution] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [CRG].[TURNOS_EMPLEADOS]    Script Date: 23/10/2025 01:04:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CRG].[TURNOS_EMPLEADOS](
	[ID_Turno] [int] NOT NULL,
	[ID_Empleado] [int] NOT NULL,
	[Fecha] [date] NOT NULL,
	[Hora_Entrada] [time](7) NOT NULL,
	[Hora_Salida] [time](7) NOT NULL,
	[Tipo_Turno] [nvarchar](20) NULL,
	[Estado] [nvarchar](20) NULL,
	[Fecha_Creacion_Origen] [datetime2](7) NULL,
	[Fecha_Modificacion_Origen] [datetime2](7) NULL,
	[Fecha_Carga_Staging] [datetime2](7) NOT NULL,
	[Fecha_Actualizacion_Staging] [datetime2](7) NULL,
	[IDEtlExecution] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [CRG].[VUELOS]    Script Date: 23/10/2025 01:04:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CRG].[VUELOS](
	[ID_Vuelo] [int] NOT NULL,
	[Numero_Vuelo] [nvarchar](10) NOT NULL,
	[ID_Ruta] [int] NOT NULL,
	[ID_Aeronave] [int] NOT NULL,
	[ID_Horario] [int] NOT NULL,
	[Fecha_Salida] [date] NOT NULL,
	[Hora_Salida] [time](7) NOT NULL,
	[Hora_Llegada] [time](7) NOT NULL,
	[Estado] [nvarchar](20) NULL,
	[Fecha_Creacion_Origen] [datetime2](7) NULL,
	[Fecha_Modificacion_Origen] [datetime2](7) NULL,
	[Fecha_Carga_Staging] [datetime2](7) NOT NULL,
	[Fecha_Actualizacion_Staging] [datetime2](7) NULL,
	[IDEtlExecution] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [DIM].[AEROLINEAS]    Script Date: 23/10/2025 01:04:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [DIM].[AEROLINEAS](
	[AerolineaSK] [int] IDENTITY(1,1) NOT NULL,
	[ID_Aerolinea] [int] NOT NULL,
	[Nombre] [nvarchar](100) NOT NULL,
	[Pais] [nvarchar](50) NULL,
	[CodigoIATA] [nvarchar](10) NULL,
	[IDEtlExecution] [int] NULL,
	[Fecha_Carga_Dim] [datetime2](7) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[AerolineaSK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [DIM].[AERONAVES]    Script Date: 23/10/2025 01:04:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [DIM].[AERONAVES](
	[AeronaveSK] [int] IDENTITY(1,1) NOT NULL,
	[ID_Aeronave] [int] NOT NULL,
	[Matricula] [nvarchar](10) NOT NULL,
	[Modelo] [nvarchar](50) NOT NULL,
	[Capacidad_Pasajeros] [int] NULL,
	[IDEtlExecution] [int] NULL,
	[Fecha_Carga_Dim] [datetime2](7) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[AeronaveSK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [DIM].[ASISTENCIA_TURNOS]    Script Date: 23/10/2025 01:04:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [DIM].[ASISTENCIA_TURNOS](
	[TurnoSK] [int] IDENTITY(1,1) NOT NULL,
	[ID_Turno] [int] NOT NULL,
	[Hora_Entrada_Turno] [datetime2](7) NULL,
	[Hora_Salida_Turno] [datetime2](7) NULL,
	[Tipo_Turno] [nvarchar](50) NULL,
	[Estado_Turno] [nvarchar](50) NULL,
	[IDEtlExecution] [int] NULL,
	[FechaCargaDim] [datetime2](7) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[TurnoSK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[ID_Turno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [DIM].[EMPLEADOS]    Script Date: 23/10/2025 01:04:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [DIM].[EMPLEADOS](
	[EmpleadoSK] [int] IDENTITY(1,1) NOT NULL,
	[ID_Empleado] [int] NOT NULL,
	[Nombre] [nvarchar](100) NOT NULL,
	[Apellido] [nvarchar](100) NOT NULL,
	[Fecha_Nacimiento] [date] NOT NULL,
	[Genero] [nvarchar](10) NULL,
	[Cargo] [nvarchar](50) NOT NULL,
	[ID_Aeropuerto] [int] NOT NULL,
	[Fecha_Contratacion] [date] NOT NULL,
	[Estado] [nvarchar](20) NULL,
	[SCD2_FechaInicio] [datetime2](7) NOT NULL,
	[SCD2_FechaFin] [datetime2](7) NULL,
	[SCD2_EsActual] [bit] NOT NULL,
	[IDEtlExecution] [int] NULL,
	[Fecha_Carga_Dim] [datetime2](7) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[EmpleadoSK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [DIM].[FECHA]    Script Date: 23/10/2025 01:04:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [DIM].[FECHA](
	[FechaSK] [int] NOT NULL,
	[Fecha] [date] NOT NULL,
	[Anio] [int] NOT NULL,
	[Mes] [tinyint] NOT NULL,
	[Dia] [tinyint] NOT NULL,
	[Trimestre] [tinyint] NOT NULL,
	[NombreMes] [nvarchar](15) NOT NULL,
	[DiaSemana] [tinyint] NOT NULL,
	[NombreDia] [nvarchar](15) NOT NULL,
	[IDEtlExecution] [int] NULL,
	[FechaCargaDim] [datetime2](7) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[FechaSK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [DIM].[GESTION_ADMVUELOS]    Script Date: 23/10/2025 01:04:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [DIM].[GESTION_ADMVUELOS](
	[ID_Gestion] [int] NOT NULL,
	[ID_Vuelo] [int] NOT NULL,
	[ID_Aerolinea] [int] NOT NULL,
	[ID_Pasajero] [int] NOT NULL,
	[ID_Paseabordaje] [int] NOT NULL,
	[Costo_Paseabordaje] [decimal](10, 2) NOT NULL,
	[Clase] [nvarchar](20) NOT NULL,
	[Origen] [nvarchar](75) NULL,
	[Destino] [nvarchar](75) NULL,
	[Fecha_Carga_Dim] [datetime2](7) NOT NULL,
	[IDEtlExecution] [int] NULL,
	[GestionSK] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_GESTION_ADMVUELOS] PRIMARY KEY CLUSTERED 
(
	[GestionSK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [DIM].[HORA]    Script Date: 23/10/2025 01:04:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [DIM].[HORA](
	[HoraSK] [int] NOT NULL,
	[Hora] [time](7) NOT NULL,
	[HoraDelDia] [tinyint] NOT NULL,
	[Minuto] [tinyint] NOT NULL,
	[Segundo] [tinyint] NOT NULL,
	[FranjaHoraria] [nvarchar](20) NULL,
	[IDEtlExecution] [int] NULL,
	[FechaCargaDim] [datetime2](7) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[HoraSK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [DIM].[INSPECCIONES_AUDITORIAS]    Script Date: 23/10/2025 01:04:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [DIM].[INSPECCIONES_AUDITORIAS](
	[AreaInspeccionadaSK] [int] IDENTITY(1,1) NOT NULL,
	[ID_Inspeccion] [int] NOT NULL,
	[Tipo_Inspeccion] [nvarchar](100) NOT NULL,
	[Area_Evaluada] [nvarchar](100) NULL,
	[IDEtlExecution] [int] NULL,
	[Fecha_Carga_Dim] [datetime2](7) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[AreaInspeccionadaSK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [DIM].[PASAJEROS]    Script Date: 23/10/2025 01:04:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [DIM].[PASAJEROS](
	[PasajeroSK] [int] IDENTITY(1,1) NOT NULL,
	[ID_Pasajero] [int] NOT NULL,
	[Nombre] [nvarchar](100) NOT NULL,
	[Apellido] [nvarchar](100) NOT NULL,
	[Genero] [nvarchar](10) NULL,
	[Fecha_Nacimiento] [date] NULL,
	[Nacionalidad] [nvarchar](50) NULL,
	[IDEtlExecution] [int] NULL,
	[Fecha_Carga_Dim] [datetime2](7) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[PasajeroSK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [DIM].[PASES_ABORDAJE]    Script Date: 23/10/2025 01:04:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [DIM].[PASES_ABORDAJE](
	[PaseabordajeSK] [int] IDENTITY(1,1) NOT NULL,
	[ID_Paseabordaje] [int] NOT NULL,
	[ID_Pasajero] [int] NOT NULL,
	[ID_Vuelo] [int] NOT NULL,
	[Clase] [nvarchar](20) NOT NULL,
	[Puerta_Embarque] [nvarchar](10) NOT NULL,
	[Hora_Embarque] [time](7) NOT NULL,
	[Estado] [nvarchar](30) NOT NULL,
	[Fecha_Emision] [date] NOT NULL,
	[IDEtlExecution] [int] NULL,
	[Fecha_Carga_Dim] [datetime2](7) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[PaseabordajeSK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [DIM].[PUERTAS_EMBARQUE]    Script Date: 23/10/2025 01:04:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [DIM].[PUERTAS_EMBARQUE](
	[PuertaSK] [int] IDENTITY(1,1) NOT NULL,
	[ID_Puerta] [int] NOT NULL,
	[Codigo_Puerta] [nvarchar](10) NOT NULL,
	[ID_Terminal] [int] NOT NULL,
	[Tipo_Puerta] [nvarchar](20) NULL,
	[Estado] [nvarchar](20) NULL,
	[IDEtlExecution] [int] NULL,
	[Fecha_Carga_Dim] [datetime2](7) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[PuertaSK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [DIM].[RESULTADO]    Script Date: 23/10/2025 01:04:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [DIM].[RESULTADO](
	[ResultadoSK] [int] IDENTITY(1,1) NOT NULL,
	[CodigoResultado] [nvarchar](20) NOT NULL,
	[Descripcion] [nvarchar](100) NULL,
	[Activo] [bit] NOT NULL,
	[IDEtlExecution] [int] NULL,
	[Fecha_Carga_Dim] [datetime2](7) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ResultadoSK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [DIM].[TIPO_CONTROL]    Script Date: 23/10/2025 01:04:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [DIM].[TIPO_CONTROL](
	[TipoControlSK] [int] IDENTITY(1,1) NOT NULL,
	[TipoControl] [nvarchar](100) NOT NULL,
	[IDEtlExecution] [int] NULL,
	[Fecha_Carga_Dim] [datetime2](7) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[TipoControlSK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [DIM].[TIPO_INCIDENTE]    Script Date: 23/10/2025 01:04:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [DIM].[TIPO_INCIDENTE](
	[TipoIncidenteSK] [int] IDENTITY(1,1) NOT NULL,
	[TipoIncidente] [nvarchar](100) NOT NULL,
	[IDEtlExecution] [int] NULL,
	[Fecha_Carga_Dim] [datetime2](7) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[TipoIncidenteSK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [DIM].[TURNOS]    Script Date: 23/10/2025 01:04:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [DIM].[TURNOS](
	[TurnoSK] [int] IDENTITY(1,1) NOT NULL,
	[TipoTurno] [nvarchar](20) NOT NULL,
	[IDEtlExecution] [int] NULL,
	[Fecha_Carga_Dim] [datetime2](7) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[TurnoSK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [DIM].[VUELOS]    Script Date: 23/10/2025 01:04:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [DIM].[VUELOS](
	[VueloSK] [int] IDENTITY(1,1) NOT NULL,
	[ID_Vuelo] [int] NOT NULL,
	[Numero_Vuelo] [nvarchar](10) NOT NULL,
	[ID_Ruta] [int] NOT NULL,
	[ID_Horario] [int] NOT NULL,
	[Estado] [nvarchar](20) NULL,
	[IDEtlExecution] [int] NULL,
	[Fecha_Carga_Dim] [datetime2](7) NOT NULL,
	[Fecha_Salida] [date] NOT NULL,
	[Hora_Salida] [time](7) NOT NULL,
	[Hora_Llegada] [time](7) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[VueloSK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [FACT].[ASISTENCIA_PERSONAL]    Script Date: 23/10/2025 01:04:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [FACT].[ASISTENCIA_PERSONAL](
	[AsistenciaPersonalSK] [bigint] IDENTITY(1,1) NOT NULL,
	[FechaSK] [int] NOT NULL,
	[HoraEntradaSK] [int] NULL,
	[HoraSalidaSK] [int] NULL,
	[EmpleadoSK] [int] NOT NULL,
	[TurnoSK] [int] NULL,
	[EstadoAsistencia] [nvarchar](20) NULL,
	[HorasTrabajadas] [decimal](5, 2) NULL,
	[IDEtlExecution] [int] NULL,
	[FechaCargaFact] [datetime2](7) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[AsistenciaPersonalSK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [FACT].[CONTROLES_SEGURIDAD]    Script Date: 23/10/2025 01:04:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [FACT].[CONTROLES_SEGURIDAD](
	[ControlSeguridadSK] [bigint] IDENTITY(1,1) NOT NULL,
	[FechaSK] [int] NOT NULL,
	[HoraSK] [int] NOT NULL,
	[IDControl] [int] NOT NULL,
	[VueloSK] [int] NULL,
	[TipoControlSK] [int] NOT NULL,
	[IDEtlExecution] [int] NULL,
	[FechaCargaFact] [datetime2](7) NOT NULL,
	[ResultadoSK] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ControlSeguridadSK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [FACT].[INCIDENTES_SEGURIDAD]    Script Date: 23/10/2025 01:04:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [FACT].[INCIDENTES_SEGURIDAD](
	[IncidenteSeguridadSK] [bigint] IDENTITY(1,1) NOT NULL,
	[FechaSK] [int] NOT NULL,
	[HoraSK] [int] NOT NULL,
	[IDIncidente] [int] NOT NULL,
	[VueloSK] [int] NULL,
	[TipoIncidenteSK] [int] NOT NULL,
	[AccionTomada] [nvarchar](255) NULL,
	[IDEtlExecution] [int] NULL,
	[FechaCargaFact] [datetime2](7) NOT NULL,
	[ResultadoSK] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[IncidenteSeguridadSK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [FACT].[INSPECCIONES_AUDITORIAS]    Script Date: 23/10/2025 01:04:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [FACT].[INSPECCIONES_AUDITORIAS](
	[InspeccionAuditoriaSK] [bigint] IDENTITY(1,1) NOT NULL,
	[FechaSK] [int] NOT NULL,
	[HoraSK] [int] NOT NULL,
	[IDInspeccion] [int] NOT NULL,
	[AreaOperacionalSK] [int] NOT NULL,
	[TipoInspeccion] [nvarchar](100) NOT NULL,
	[IDEtlExecution] [int] NULL,
	[FechaCargaFact] [datetime2](7) NOT NULL,
	[ResultadoSK] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[InspeccionAuditoriaSK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [FACT].[OPERACIONES_VUELO]    Script Date: 23/10/2025 01:04:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [FACT].[OPERACIONES_VUELO](
	[OperacionVueloSK] [bigint] IDENTITY(1,1) NOT NULL,
	[FechaSK] [int] NOT NULL,
	[HoraSalidaSK] [int] NOT NULL,
	[HoraLlegadaSK] [int] NOT NULL,
	[VueloSK] [int] NOT NULL,
	[AeronaveSK] [int] NULL,
	[PuertaSK] [int] NULL,
	[IDEtlExecution] [int] NULL,
	[FechaCargaFact] [datetime2](7) NOT NULL,
	[PasajeroSK] [int] NULL,
	[AerolineaSK] [int] NULL,
	[PaseabordajeSK] [int] NULL,
	[GestionSK] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[OperacionVueloSK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [METADATA].[ETL_AUDITORIA]    Script Date: 23/10/2025 01:04:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [METADATA].[ETL_AUDITORIA](
	[IDEtlExecution] [int] IDENTITY(1,1) NOT NULL,
	[Machine_Name] [varchar](50) NULL,
	[Package_Name] [varchar](100) NULL,
	[User_Name] [varchar](50) NULL,
	[Start_Time] [datetime] NULL,
	[ETL_CountRows] [int] NULL,
	[ETL_CountNewRows] [int] NULL,
	[ETL_CountModifiedRows] [int] NULL,
	[End_Time] [datetime] NULL,
	[Status] [varchar](20) NULL,
	[Error_Message] [nvarchar](1000) NULL,
PRIMARY KEY CLUSTERED 
(
	[IDEtlExecution] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [PSTG].[AEROLINEAS]    Script Date: 23/10/2025 01:04:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [PSTG].[AEROLINEAS](
	[ID_Aerolinea] [int] NOT NULL,
	[Nombre] [nvarchar](100) NOT NULL,
	[Codigo_IATA] [char](2) NOT NULL,
	[Pais_Origen] [int] NOT NULL,
	[IDEtlExecution] [int] NULL,
	[Fecha_Carga_Pstg] [datetime2](7) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [PSTG].[AERONAVES]    Script Date: 23/10/2025 01:04:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [PSTG].[AERONAVES](
	[ID_Aeronave] [int] NOT NULL,
	[Matricula] [nvarchar](10) NOT NULL,
	[Modelo] [nvarchar](50) NOT NULL,
	[Capacidad_Pasajeros] [int] NULL,
	[IDEtlExecution] [int] NULL,
	[Fecha_Carga_Pstg] [datetime2](7) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [PSTG].[ASISTENCIA_COMBINADA]    Script Date: 23/10/2025 01:04:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [PSTG].[ASISTENCIA_COMBINADA](
	[ID_Asistencia] [int] NOT NULL,
	[ID_Turno] [int] NOT NULL,
	[ID_Empleado] [int] NOT NULL,
	[Fecha] [date] NOT NULL,
	[Hora_Entrada_Turno] [time](7) NOT NULL,
	[Hora_Salida_Turno] [time](7) NOT NULL,
	[Tipo_Turno] [nvarchar](20) NULL,
	[Estado_Turno] [nvarchar](20) NULL,
	[Estado_Asistencia] [nvarchar](20) NULL,
	[IDEtlExecution] [int] NULL,
	[Fecha_Carga_Pstg] [datetime2](7) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [PSTG].[ASISTENCIAS_EMPLEADOS]    Script Date: 23/10/2025 01:04:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [PSTG].[ASISTENCIAS_EMPLEADOS](
	[ID_Asistencia] [int] NOT NULL,
	[ID_Empleado] [int] NOT NULL,
	[Fecha] [date] NOT NULL,
	[Hora_Entrada] [time](7) NULL,
	[Hora_Salida] [time](7) NULL,
	[Estado] [nvarchar](20) NULL,
	[IDEtlExecution] [int] NULL,
	[Fecha_Carga_Pstg] [datetime2](7) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [PSTG].[ATENCION_CLIENTE]    Script Date: 23/10/2025 01:04:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [PSTG].[ATENCION_CLIENTE](
	[ID_Atencion] [int] NOT NULL,
	[ID_Pasajero] [int] NOT NULL,
	[Fecha_Solicitud] [date] NOT NULL,
	[Tipo_Solicitud] [nvarchar](50) NOT NULL,
	[Descripcion] [nvarchar](255) NULL,
	[Estado] [nvarchar](30) NOT NULL,
	[Respuesta] [nvarchar](255) NULL,
	[Fecha_Respuesta] [date] NULL,
	[IDEtlExecution] [int] NULL,
	[Fecha_Carga_Pstg] [datetime2](7) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [PSTG].[CONTROLES_SEGURIDAD]    Script Date: 23/10/2025 01:04:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [PSTG].[CONTROLES_SEGURIDAD](
	[ID_Control] [int] NOT NULL,
	[ID_Vuelo] [int] NOT NULL,
	[Tipo_Control] [nvarchar](100) NOT NULL,
	[Fecha_Control] [date] NOT NULL,
	[Resultado] [nvarchar](50) NULL,
	[IDEtlExecution] [int] NULL,
	[Fecha_Carga_Pstg] [datetime2](7) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [PSTG].[EMPLEADOS]    Script Date: 23/10/2025 01:04:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [PSTG].[EMPLEADOS](
	[ID_Empleado] [int] NOT NULL,
	[Nombre] [nvarchar](100) NOT NULL,
	[Apellido] [nvarchar](100) NOT NULL,
	[Fecha_Nacimiento] [date] NOT NULL,
	[Genero] [nvarchar](10) NULL,
	[Cargo] [nvarchar](50) NOT NULL,
	[ID_Aeropuerto] [int] NOT NULL,
	[Fecha_Contratacion] [date] NOT NULL,
	[Estado] [nvarchar](20) NULL,
	[IDEtlExecution] [int] NULL,
	[Fecha_Carga_Pstg] [datetime2](7) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [PSTG].[GESTION_ADMVUELOS]    Script Date: 23/10/2025 01:04:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [PSTG].[GESTION_ADMVUELOS](
	[ID_Gestion] [int] NOT NULL,
	[ID_Vuelo] [int] NOT NULL,
	[ID_Aerolinea] [int] NOT NULL,
	[ID_Pasajero] [int] NOT NULL,
	[ID_Paseabordaje] [int] NOT NULL,
	[Costo_Paseabordaje] [decimal](10, 2) NOT NULL,
	[Clase] [nvarchar](20) NOT NULL,
	[Origen] [nvarchar](75) NULL,
	[Destino] [nvarchar](75) NULL,
	[Fecha_Carga_Pstg] [datetime2](7) NOT NULL,
	[IDEtlExecution] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [PSTG].[INCIDENTES_SEGURIDAD]    Script Date: 23/10/2025 01:04:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [PSTG].[INCIDENTES_SEGURIDAD](
	[ID_Incidente] [int] NOT NULL,
	[ID_Vuelo] [int] NOT NULL,
	[Fecha_Incidente] [date] NOT NULL,
	[Tipo_Incidente] [nvarchar](100) NOT NULL,
	[Descripcion] [nvarchar](255) NULL,
	[Accion_Tomada] [nvarchar](255) NULL,
	[IDEtlExecution] [int] NULL,
	[Fecha_Carga_Pstg] [datetime2](7) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [PSTG].[INSPECCIONES_AUDITORIAS]    Script Date: 23/10/2025 01:04:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [PSTG].[INSPECCIONES_AUDITORIAS](
	[ID_Inspeccion] [int] NOT NULL,
	[Fecha] [date] NOT NULL,
	[Tipo_Inspeccion] [nvarchar](100) NOT NULL,
	[Area_Evaluada] [nvarchar](100) NOT NULL,
	[Resultado] [nvarchar](50) NULL,
	[IDEtlExecution] [int] NULL,
	[Fecha_Carga_Pstg] [datetime2](7) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [PSTG].[PASAJEROS]    Script Date: 23/10/2025 01:04:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [PSTG].[PASAJEROS](
	[ID_Pasajero] [int] NOT NULL,
	[Nombre] [nvarchar](100) NOT NULL,
	[Apellido] [nvarchar](100) NOT NULL,
	[Genero] [nvarchar](10) NULL,
	[Fecha_Nacimiento] [date] NULL,
	[Nacionalidad] [nvarchar](50) NULL,
	[IDEtlExecution] [int] NULL,
	[Fecha_Carga_Pstg] [datetime2](7) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [PSTG].[PASES_ABORDAJE]    Script Date: 23/10/2025 01:04:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [PSTG].[PASES_ABORDAJE](
	[ID_Paseabordaje] [int] NOT NULL,
	[ID_Pasajero] [int] NOT NULL,
	[ID_Vuelo] [int] NOT NULL,
	[Asiento] [nvarchar](10) NOT NULL,
	[Clase] [nvarchar](20) NOT NULL,
	[Puerta_Embarque] [nvarchar](10) NOT NULL,
	[Hora_Embarque] [time](7) NOT NULL,
	[Estado] [nvarchar](30) NOT NULL,
	[Codigo_QR] [nvarchar](255) NULL,
	[Fecha_Emision] [date] NOT NULL,
	[IDEtlExecution] [int] NULL,
	[Fecha_Carga_Pstg] [datetime2](7) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [PSTG].[PUERTAS_EMBARQUE]    Script Date: 23/10/2025 01:04:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [PSTG].[PUERTAS_EMBARQUE](
	[ID_Puerta] [int] NOT NULL,
	[Codigo_Puerta] [nvarchar](10) NOT NULL,
	[ID_Terminal] [int] NOT NULL,
	[Tipo_Puerta] [nvarchar](20) NULL,
	[Estado] [nvarchar](20) NULL,
	[IDEtlExecution] [int] NULL,
	[Fecha_Carga_Pstg] [datetime2](7) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [PSTG].[TURNOS_EMPLEADOS]    Script Date: 23/10/2025 01:04:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [PSTG].[TURNOS_EMPLEADOS](
	[ID_Turno] [int] NOT NULL,
	[ID_Empleado] [int] NOT NULL,
	[Fecha] [date] NOT NULL,
	[Hora_Entrada] [time](7) NOT NULL,
	[Hora_Salida] [time](7) NOT NULL,
	[Tipo_Turno] [nvarchar](20) NULL,
	[Estado] [nvarchar](20) NULL,
	[IDEtlExecution] [int] NULL,
	[Fecha_Carga_Pstg] [datetime2](7) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [PSTG].[VUELOS]    Script Date: 23/10/2025 01:04:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [PSTG].[VUELOS](
	[ID_Vuelo] [int] NOT NULL,
	[Numero_Vuelo] [nvarchar](10) NOT NULL,
	[ID_Ruta] [int] NOT NULL,
	[ID_Aeronave] [int] NOT NULL,
	[ID_Horario] [int] NOT NULL,
	[Fecha_Salida] [date] NOT NULL,
	[Hora_Salida] [time](7) NOT NULL,
	[Hora_Llegada] [time](7) NOT NULL,
	[Estado] [nvarchar](20) NULL,
	[IDEtlExecution] [int] NULL,
	[Fecha_Carga_Pstg] [datetime2](7) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [STG].[AEROLINEAS]    Script Date: 23/10/2025 01:04:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [STG].[AEROLINEAS](
	[ID_Aerolinea] [int] NOT NULL,
	[Nombre] [nvarchar](100) NOT NULL,
	[Codigo_IATA] [char](2) NOT NULL,
	[Pais_Origen] [int] NOT NULL,
	[Activa] [bit] NULL,
	[Fecha_Creacion_Origen] [datetime2](7) NULL,
	[Fecha_Modificacion_Origen] [datetime2](7) NULL,
	[Fecha_Carga_Staging] [datetime2](7) NOT NULL,
	[Fecha_Actualizacion_Staging] [datetime2](7) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [STG].[AERONAVES]    Script Date: 23/10/2025 01:04:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [STG].[AERONAVES](
	[ID_Aeronave] [int] NOT NULL,
	[Matricula] [nvarchar](10) NOT NULL,
	[Modelo] [nvarchar](50) NOT NULL,
	[Capacidad_Pasajeros] [int] NOT NULL,
	[Capacidad_Carga_KG] [int] NULL,
	[Fecha_Fabricacion] [date] NULL,
	[ID_Aerolinea] [int] NOT NULL,
	[Estado] [nvarchar](20) NULL,
	[Fecha_Creacion_Origen] [datetime2](7) NULL,
	[Fecha_Modificacion_Origen] [datetime2](7) NULL,
	[Fecha_Carga_Staging] [datetime2](7) NOT NULL,
	[Fecha_Actualizacion_Staging] [datetime2](7) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [STG].[AEROPUERTOS]    Script Date: 23/10/2025 01:04:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [STG].[AEROPUERTOS](
	[ID_Aeropuerto] [int] NOT NULL,
	[Nombre] [nvarchar](150) NOT NULL,
	[Codigo_IATA] [char](3) NOT NULL,
	[Ciudad] [nvarchar](100) NOT NULL,
	[ID_Pais] [int] NOT NULL,
	[Capacidad_Anual_Pasajeros] [int] NULL,
	[Fecha_Creacion_Origen] [datetime2](7) NULL,
	[Fecha_Modificacion_Origen] [datetime2](7) NULL,
	[Fecha_Carga_Staging] [datetime2](7) NOT NULL,
	[Fecha_Actualizacion_Staging] [datetime2](7) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [STG].[ASISTENCIAS_EMPLEADOS]    Script Date: 23/10/2025 01:04:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [STG].[ASISTENCIAS_EMPLEADOS](
	[ID_Asistencia] [int] NOT NULL,
	[ID_Empleado] [int] NOT NULL,
	[Fecha] [date] NOT NULL,
	[Hora_Entrada] [time](7) NULL,
	[Hora_Salida] [time](7) NULL,
	[Estado] [nvarchar](20) NULL,
	[Fecha_Creacion_Origen] [datetime2](7) NULL,
	[Fecha_Modificacion_Origen] [datetime2](7) NULL,
	[Fecha_Carga_Staging] [datetime2](7) NOT NULL,
	[Fecha_Actualizacion_Staging] [datetime2](7) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [STG].[ATENCION_CLIENTE]    Script Date: 23/10/2025 01:04:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [STG].[ATENCION_CLIENTE](
	[ID_Atencion] [int] NOT NULL,
	[ID_Pasajero] [int] NOT NULL,
	[Fecha_Solicitud] [date] NOT NULL,
	[Tipo_Solicitud] [nvarchar](50) NOT NULL,
	[Descripcion] [nvarchar](255) NULL,
	[Estado] [nvarchar](30) NOT NULL,
	[Respuesta] [nvarchar](255) NULL,
	[Fecha_Respuesta] [date] NULL,
	[Fecha_Creacion_Origen] [datetime2](7) NULL,
	[Fecha_Modificacion_Origen] [datetime2](7) NULL,
	[Fecha_Carga_Staging] [datetime2](7) NOT NULL,
	[Fecha_Actualizacion_Staging] [datetime2](7) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [STG].[AUDITORIA_SISTEMA]    Script Date: 23/10/2025 01:04:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [STG].[AUDITORIA_SISTEMA](
	[ID_Evento] [int] NOT NULL,
	[Fecha] [date] NOT NULL,
	[Hora] [time](7) NOT NULL,
	[Usuario] [nvarchar](100) NOT NULL,
	[Rol_Usuario] [nvarchar](50) NOT NULL,
	[Modulo] [nvarchar](50) NOT NULL,
	[Tipo_Evento] [nvarchar](50) NOT NULL,
	[Descripcion] [nvarchar](255) NOT NULL,
	[IP_Origen] [nvarchar](45) NULL,
	[Estado_Evento] [nvarchar](50) NULL,
	[Fecha_Creacion_Origen] [datetime2](7) NULL,
	[Fecha_Modificacion_Origen] [datetime2](7) NULL,
	[Fecha_Carga_Staging] [datetime2](7) NOT NULL,
	[Fecha_Actualizacion_Staging] [datetime2](7) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [STG].[CAMP_MARKETING]    Script Date: 23/10/2025 01:04:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [STG].[CAMP_MARKETING](
	[ID_Camp] [int] NOT NULL,
	[Nombre] [nvarchar](100) NOT NULL,
	[Tipo] [nvarchar](50) NOT NULL,
	[Fecha_Inicio] [date] NOT NULL,
	[Fecha_Fin] [date] NOT NULL,
	[Descripcion] [nvarchar](255) NULL,
	[Estado] [nvarchar](20) NULL,
	[Fecha_Creacion_Origen] [datetime2](7) NULL,
	[Fecha_Modificacion_Origen] [datetime2](7) NULL,
	[Fecha_Carga_Staging] [datetime2](7) NOT NULL,
	[Fecha_Actualizacion_Staging] [datetime2](7) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [STG].[CARGAS_TRANSPORTADAS]    Script Date: 23/10/2025 01:04:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [STG].[CARGAS_TRANSPORTADAS](
	[ID_Carga] [int] NOT NULL,
	[ID_VueloCarga] [int] NOT NULL,
	[ID_Operador] [int] NOT NULL,
	[Descripcion] [nvarchar](255) NULL,
	[Peso_Kg] [decimal](10, 2) NULL,
	[Volumen_M3] [decimal](10, 2) NULL,
	[Tipo_Carga] [nvarchar](50) NULL,
	[Estado] [nvarchar](30) NULL,
	[Fecha_Creacion_Origen] [datetime2](7) NULL,
	[Fecha_Modificacion_Origen] [datetime2](7) NULL,
	[Fecha_Carga_Staging] [datetime2](7) NOT NULL,
	[Fecha_Actualizacion_Staging] [datetime2](7) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [STG].[CLIMA]    Script Date: 23/10/2025 01:04:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [STG].[CLIMA](
	[ID_Registro] [int] NOT NULL,
	[ID_Aeropuerto] [int] NOT NULL,
	[Fecha] [date] NOT NULL,
	[Hora] [time](7) NOT NULL,
	[Temperatura_C] [decimal](5, 2) NULL,
	[Humedad_Porc] [decimal](5, 2) NULL,
	[Velocidad_Viento_KMH] [decimal](5, 2) NULL,
	[Condicion] [nvarchar](50) NULL,
	[Fecha_Creacion_Origen] [datetime2](7) NULL,
	[Fecha_Modificacion_Origen] [datetime2](7) NULL,
	[Fecha_Carga_Staging] [datetime2](7) NOT NULL,
	[Fecha_Actualizacion_Staging] [datetime2](7) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [STG].[COMBUSTIBLE]    Script Date: 23/10/2025 01:04:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [STG].[COMBUSTIBLE](
	[ID_Registro] [int] NOT NULL,
	[ID_Aeronave] [int] NOT NULL,
	[Fecha] [date] NOT NULL,
	[Cantidad_Galones] [decimal](10, 2) NOT NULL,
	[Costo_Total] [decimal](10, 2) NOT NULL,
	[Proveedor] [nvarchar](100) NULL,
	[Fecha_Creacion_Origen] [datetime2](7) NULL,
	[Fecha_Modificacion_Origen] [datetime2](7) NULL,
	[Fecha_Carga_Staging] [datetime2](7) NOT NULL,
	[Fecha_Actualizacion_Staging] [datetime2](7) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [STG].[CONTROLES_SEGURIDAD]    Script Date: 23/10/2025 01:04:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [STG].[CONTROLES_SEGURIDAD](
	[ID_Control] [int] NOT NULL,
	[ID_Vuelo] [int] NOT NULL,
	[Tipo_Control] [nvarchar](100) NOT NULL,
	[Fecha_Control] [date] NOT NULL,
	[Resultado] [nvarchar](50) NOT NULL,
	[Observaciones] [nvarchar](255) NULL,
	[Fecha_Creacion_Origen] [datetime2](7) NULL,
	[Fecha_Modificacion_Origen] [datetime2](7) NULL,
	[Fecha_Carga_Staging] [datetime2](7) NOT NULL,
	[Fecha_Actualizacion_Staging] [datetime2](7) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [STG].[EMPLEADOS]    Script Date: 23/10/2025 01:04:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [STG].[EMPLEADOS](
	[ID_Empleado] [int] NOT NULL,
	[Nombre] [nvarchar](100) NOT NULL,
	[Apellido] [nvarchar](100) NOT NULL,
	[Cedula] [nvarchar](20) NOT NULL,
	[Fecha_Nacimiento] [date] NOT NULL,
	[Genero] [nvarchar](10) NULL,
	[Cargo] [nvarchar](50) NOT NULL,
	[ID_Aeropuerto] [int] NOT NULL,
	[Fecha_Contratacion] [date] NOT NULL,
	[Estado] [nvarchar](20) NULL,
	[Fecha_Creacion_Origen] [datetime2](7) NULL,
	[Fecha_Modificacion_Origen] [datetime2](7) NULL,
	[Fecha_Carga_Staging] [datetime2](7) NOT NULL,
	[Fecha_Actualizacion_Staging] [datetime2](7) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [STG].[ENCUESTAS_OPINIONES_CLIENTES]    Script Date: 23/10/2025 01:04:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [STG].[ENCUESTAS_OPINIONES_CLIENTES](
	[ID_Registro] [int] NOT NULL,
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
	[Fecha_Creacion_Origen] [datetime2](7) NULL,
	[Fecha_Modificacion_Origen] [datetime2](7) NULL,
	[Fecha_Carga_Staging] [datetime2](7) NOT NULL,
	[Fecha_Actualizacion_Staging] [datetime2](7) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [STG].[EQUIPAJE]    Script Date: 23/10/2025 01:04:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [STG].[EQUIPAJE](
	[ID_Equipaje] [int] NOT NULL,
	[ID_Pasajero] [int] NOT NULL,
	[ID_Vuelo] [int] NOT NULL,
	[Codigo_Equipaje] [nvarchar](50) NOT NULL,
	[Tipo] [nvarchar](75) NOT NULL,
	[Peso] [decimal](5, 2) NOT NULL,
	[Dimensiones] [nvarchar](50) NULL,
	[Estado] [nvarchar](30) NOT NULL,
	[Fecha_Registro] [date] NOT NULL,
	[Observaciones] [nvarchar](255) NULL,
	[Fecha_Creacion_Origen] [datetime2](7) NULL,
	[Fecha_Modificacion_Origen] [datetime2](7) NULL,
	[Fecha_Carga_Staging] [datetime2](7) NOT NULL,
	[Fecha_Actualizacion_Staging] [datetime2](7) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [STG].[EQUIPAMIENTO_ESPECIAL]    Script Date: 23/10/2025 01:04:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [STG].[EQUIPAMIENTO_ESPECIAL](
	[ID_Equipamiento] [int] NOT NULL,
	[ID_Reservacion] [int] NOT NULL,
	[Tipo_Equipamiento] [nvarchar](100) NOT NULL,
	[Descripcion] [nvarchar](255) NULL,
	[Peso_Kg] [decimal](5, 2) NULL,
	[Dimensiones_CM] [nvarchar](50) NULL,
	[Requiere_Manejo_Especial] [bit] NULL,
	[Costo_Adicional] [decimal](10, 2) NULL,
	[Estado] [nvarchar](50) NULL,
	[Fecha_Creacion_Origen] [datetime2](7) NULL,
	[Fecha_Modificacion_Origen] [datetime2](7) NULL,
	[Fecha_Carga_Staging] [datetime2](7) NOT NULL,
	[Fecha_Actualizacion_Staging] [datetime2](7) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [STG].[ESTADISTICAS_DIARIAS]    Script Date: 23/10/2025 01:04:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [STG].[ESTADISTICAS_DIARIAS](
	[Fecha] [date] NOT NULL,
	[Total_Vuelos] [int] NULL,
	[Vuelos_Retrasados] [int] NULL,
	[Total_Pasajeros] [int] NULL,
	[Cancelaciones] [int] NULL,
	[Carga_Transportada_Kg] [decimal](10, 2) NULL,
	[Fecha_Creacion_Origen] [datetime2](7) NULL,
	[Fecha_Modificacion_Origen] [datetime2](7) NULL,
	[Fecha_Carga_Staging] [datetime2](7) NOT NULL,
	[Fecha_Actualizacion_Staging] [datetime2](7) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [STG].[FIDELIDAD_PASAJERO]    Script Date: 23/10/2025 01:04:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [STG].[FIDELIDAD_PASAJERO](
	[ID_Registro] [int] NOT NULL,
	[ID_Pasajero] [int] NOT NULL,
	[Puntos_Acumulados] [int] NULL,
	[Ultima_Actualizacion] [date] NOT NULL,
	[Nivel_Fidelidad] [nvarchar](30) NULL,
	[Fecha_Creacion_Origen] [datetime2](7) NULL,
	[Fecha_Modificacion_Origen] [datetime2](7) NULL,
	[Fecha_Carga_Staging] [datetime2](7) NOT NULL,
	[Fecha_Actualizacion_Staging] [datetime2](7) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [STG].[FRECUENCIAS]    Script Date: 23/10/2025 01:04:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [STG].[FRECUENCIAS](
	[ID_Frecuencia] [int] NOT NULL,
	[Descripcion] [nvarchar](255) NOT NULL,
	[Fecha_Creacion_Origen] [datetime2](7) NULL,
	[Fecha_Modificacion_Origen] [datetime2](7) NULL,
	[Fecha_Carga_Staging] [datetime2](7) NOT NULL,
	[Fecha_Actualizacion_Staging] [datetime2](7) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [STG].[GESTION_ADMVUELOS]    Script Date: 23/10/2025 01:04:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [STG].[GESTION_ADMVUELOS](
	[ID_Gestion] [int] NOT NULL,
	[ID_Vuelo] [int] NOT NULL,
	[ID_Aerolinea] [int] NOT NULL,
	[ID_Pasajero] [int] NOT NULL,
	[ID_Paseabordaje] [int] NOT NULL,
	[Costo_Paseabordaje] [decimal](10, 2) NOT NULL,
	[Clase] [nvarchar](20) NOT NULL,
	[Origen] [nvarchar](75) NULL,
	[Destino] [nvarchar](75) NULL,
	[Fecha_Creacion_Origen] [datetime2](7) NULL,
	[Fecha_Modificacion_Origen] [datetime2](7) NULL,
	[Fecha_Carga_Staging] [datetime2](7) NOT NULL,
	[Fecha_Actualizacion_Staging] [datetime2](7) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [STG].[HISTORICO_OPERACIONAL_VUELOS]    Script Date: 23/10/2025 01:04:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [STG].[HISTORICO_OPERACIONAL_VUELOS](
	[ID_Historico] [int] NOT NULL,
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
	[Fecha_Creacion_Origen] [datetime2](7) NULL,
	[Fecha_Modificacion_Origen] [datetime2](7) NULL,
	[Fecha_Carga_Staging] [datetime2](7) NOT NULL,
	[Fecha_Actualizacion_Staging] [datetime2](7) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [STG].[HORARIOS_PROGRAMADOS]    Script Date: 23/10/2025 01:04:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [STG].[HORARIOS_PROGRAMADOS](
	[ID_Horario] [int] NOT NULL,
	[ID_Ruta] [int] NOT NULL,
	[ID_Frecuencia] [int] NOT NULL,
	[Hora_Salida] [time](7) NOT NULL,
	[Hora_Llegada] [time](7) NOT NULL,
	[Fecha_Creacion_Origen] [datetime2](7) NULL,
	[Fecha_Modificacion_Origen] [datetime2](7) NULL,
	[Fecha_Carga_Staging] [datetime2](7) NOT NULL,
	[Fecha_Actualizacion_Staging] [datetime2](7) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [STG].[INCIDENTES_OPERATIVOS]    Script Date: 23/10/2025 01:04:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [STG].[INCIDENTES_OPERATIVOS](
	[ID_Incidente] [int] NOT NULL,
	[Fecha] [date] NOT NULL,
	[Hora] [time](7) NOT NULL,
	[ID_Vuelo] [int] NULL,
	[ID_Aeronave] [int] NULL,
	[Tipo_Incidente] [nvarchar](255) NULL,
	[Descripcion] [nvarchar](255) NULL,
	[Nivel_Severidad] [nvarchar](20) NULL,
	[Reportado_Por] [nvarchar](100) NULL,
	[Fecha_Creacion_Origen] [datetime2](7) NULL,
	[Fecha_Modificacion_Origen] [datetime2](7) NULL,
	[Fecha_Carga_Staging] [datetime2](7) NOT NULL,
	[Fecha_Actualizacion_Staging] [datetime2](7) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [STG].[INCIDENTES_SEGURIDAD]    Script Date: 23/10/2025 01:04:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [STG].[INCIDENTES_SEGURIDAD](
	[ID_Incidente] [int] NOT NULL,
	[ID_Vuelo] [int] NOT NULL,
	[Fecha_Incidente] [date] NOT NULL,
	[Tipo_Incidente] [nvarchar](100) NOT NULL,
	[Descripcion] [nvarchar](255) NULL,
	[Accion_Tomada] [nvarchar](255) NULL,
	[Fecha_Creacion_Origen] [datetime2](7) NULL,
	[Fecha_Modificacion_Origen] [datetime2](7) NULL,
	[Fecha_Carga_Staging] [datetime2](7) NOT NULL,
	[Fecha_Actualizacion_Staging] [datetime2](7) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [STG].[INSPECCIONES_AUDITORIAS]    Script Date: 23/10/2025 01:04:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [STG].[INSPECCIONES_AUDITORIAS](
	[ID_Inspeccion] [int] NOT NULL,
	[Fecha] [date] NOT NULL,
	[Tipo_Inspeccion] [nvarchar](100) NOT NULL,
	[Area_Evaluada] [nvarchar](100) NOT NULL,
	[Responsable] [nvarchar](100) NULL,
	[Resultado] [nvarchar](50) NOT NULL,
	[Observaciones] [nvarchar](255) NULL,
	[Accion_Correctiva_Requerida] [bit] NULL,
	[Fecha_Creacion] [datetime2](7) NULL,
	[Fecha_Modificacion] [datetime2](7) NULL,
	[Fecha_Carga_Staging] [datetime2](7) NOT NULL,
	[Fecha_Actualizacion_Staging] [datetime2](7) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [STG].[INTERVENCIONES_EMERGENCIA]    Script Date: 23/10/2025 01:04:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [STG].[INTERVENCIONES_EMERGENCIA](
	[ID_Intervencion] [int] NOT NULL,
	[ID_Unidad] [int] NOT NULL,
	[ID_Vuelo] [int] NULL,
	[Fecha] [datetime] NOT NULL,
	[Tipo_Incidente] [nvarchar](100) NULL,
	[Resultado] [nvarchar](100) NULL,
	[Observaciones] [nvarchar](255) NULL,
	[Fecha_Creacion_Origen] [datetime2](7) NULL,
	[Fecha_Modificacion_Origen] [datetime2](7) NULL,
	[Fecha_Carga_Staging] [datetime2](7) NOT NULL,
	[Fecha_Actualizacion_Staging] [datetime2](7) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [STG].[LOGISTICA_TERRESTRE]    Script Date: 23/10/2025 01:04:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [STG].[LOGISTICA_TERRESTRE](
	[ID_Transporte] [int] NOT NULL,
	[Tipo_Transporte] [nvarchar](50) NOT NULL,
	[Origen] [nvarchar](100) NOT NULL,
	[Destino] [nvarchar](100) NOT NULL,
	[Hora_Salida] [time](7) NOT NULL,
	[Hora_Llegada] [time](7) NOT NULL,
	[Responsable] [nvarchar](100) NULL,
	[Capacidad] [int] NULL,
	[Estado] [nvarchar](50) NULL,
	[Fecha_Creacion_Origen] [datetime2](7) NULL,
	[Fecha_Modificacion_Origen] [datetime2](7) NULL,
	[Fecha_Carga_Staging] [datetime2](7) NOT NULL,
	[Fecha_Actualizacion_Staging] [datetime2](7) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [STG].[MANTENIMIENTO]    Script Date: 23/10/2025 01:04:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [STG].[MANTENIMIENTO](
	[ID_Mantenimiento] [int] NOT NULL,
	[ID_Aeronave] [int] NOT NULL,
	[Fecha] [date] NOT NULL,
	[Hora] [time](7) NOT NULL,
	[Tipo_Mantenimiento] [nvarchar](50) NOT NULL,
	[Descripcion] [nvarchar](255) NULL,
	[Costo] [decimal](10, 2) NULL,
	[Estado] [nvarchar](30) NULL,
	[Tecnico_Responsable] [nvarchar](100) NULL,
	[Observaciones] [nvarchar](255) NULL,
	[Fecha_Creacion_Origen] [datetime2](7) NULL,
	[Fecha_Modificacion_Origen] [datetime2](7) NULL,
	[Fecha_Carga_Staging] [datetime2](7) NOT NULL,
	[Fecha_Actualizacion_Staging] [datetime2](7) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [STG].[MIGRACION_ADUANA]    Script Date: 23/10/2025 01:04:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [STG].[MIGRACION_ADUANA](
	[ID_Registro] [int] NOT NULL,
	[ID_Reservacion] [int] NOT NULL,
	[Fecha_Proceso] [date] NOT NULL,
	[Tipo_Proceso] [nvarchar](50) NOT NULL,
	[Estado] [nvarchar](50) NULL,
	[Observaciones] [nvarchar](255) NULL,
	[Fecha_Creacion_Origen] [datetime2](7) NULL,
	[Fecha_Modificacion_Origen] [datetime2](7) NULL,
	[Fecha_Carga_Staging] [datetime2](7) NOT NULL,
	[Fecha_Actualizacion_Staging] [datetime2](7) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [STG].[OFERTAS_APLICADAS]    Script Date: 23/10/2025 01:04:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [STG].[OFERTAS_APLICADAS](
	[ID_Oferta] [int] NOT NULL,
	[ID_Camp] [int] NOT NULL,
	[ID_Reservacion] [int] NOT NULL,
	[Descuento_Porcentaje] [decimal](5, 2) NULL,
	[Monto_Descontado] [decimal](10, 2) NULL,
	[Fecha_Aplicacion] [date] NOT NULL,
	[Fecha_Creacion_Origen] [datetime2](7) NULL,
	[Fecha_Modificacion_Origen] [datetime2](7) NULL,
	[Fecha_Carga_Staging] [datetime2](7) NOT NULL,
	[Fecha_Actualizacion_Staging] [datetime2](7) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [STG].[OPERADORES_CARGA]    Script Date: 23/10/2025 01:04:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [STG].[OPERADORES_CARGA](
	[ID_Operador] [int] NOT NULL,
	[Nombre] [nvarchar](100) NOT NULL,
	[Pais_Origen] [int] NOT NULL,
	[Tipo_Operador] [nvarchar](50) NULL,
	[Contacto] [nvarchar](100) NULL,
	[Fecha_Creacion_Origen] [datetime2](7) NULL,
	[Fecha_Modificacion_Origen] [datetime2](7) NULL,
	[Fecha_Carga_Staging] [datetime2](7) NOT NULL,
	[Fecha_Actualizacion_Staging] [datetime2](7) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [STG].[PAGOS]    Script Date: 23/10/2025 01:04:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [STG].[PAGOS](
	[ID_Pago] [int] NOT NULL,
	[ID_Reservacion] [int] NOT NULL,
	[Fecha_Pago] [date] NOT NULL,
	[Monto] [decimal](10, 2) NOT NULL,
	[Metodo_Pago] [nvarchar](30) NULL,
	[Estado] [nvarchar](20) NULL,
	[Fecha_Creacion_Origen] [datetime2](7) NULL,
	[Fecha_Modificacion_Origen] [datetime2](7) NULL,
	[Fecha_Carga_Staging] [datetime2](7) NOT NULL,
	[Fecha_Actualizacion_Staging] [datetime2](7) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [STG].[PAISES]    Script Date: 23/10/2025 01:04:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [STG].[PAISES](
	[ID_Pais] [int] NOT NULL,
	[Nombre] [nvarchar](100) NOT NULL,
	[Codigo_ISO] [nvarchar](3) NOT NULL,
	[Fecha_Creacion_Origen] [datetime2](7) NULL,
	[Fecha_Modificacion_Origen] [datetime2](7) NULL,
	[Fecha_Carga_Staging] [datetime2](7) NOT NULL,
	[Fecha_Actualizacion_Staging] [datetime2](7) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [STG].[PASAJEROS]    Script Date: 23/10/2025 01:04:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [STG].[PASAJEROS](
	[ID_Pasajero] [int] NOT NULL,
	[Nombre] [nvarchar](100) NOT NULL,
	[Apellido] [nvarchar](100) NOT NULL,
	[Genero] [nvarchar](10) NULL,
	[Fecha_Nacimiento] [date] NULL,
	[Nacionalidad] [nvarchar](50) NULL,
	[Documento_Identidad] [nvarchar](50) NULL,
	[Correo_Electronico] [nvarchar](100) NULL,
	[Telefono] [nvarchar](20) NULL,
	[Fecha_Creacion_Origen] [datetime2](7) NULL,
	[Fecha_Modificacion_Origen] [datetime2](7) NULL,
	[Fecha_Carga_Staging] [datetime2](7) NOT NULL,
	[Fecha_Actualizacion_Staging] [datetime2](7) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [STG].[PASES_ABORDAJE]    Script Date: 23/10/2025 01:04:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [STG].[PASES_ABORDAJE](
	[ID_Paseabordaje] [int] NOT NULL,
	[ID_Pasajero] [int] NOT NULL,
	[ID_Vuelo] [int] NOT NULL,
	[Asiento] [nvarchar](10) NOT NULL,
	[Clase] [nvarchar](20) NOT NULL,
	[Puerta_Embarque] [nvarchar](10) NOT NULL,
	[Hora_Embarque] [time](7) NOT NULL,
	[Estado] [nvarchar](30) NOT NULL,
	[Codigo_QR] [nvarchar](255) NULL,
	[Fecha_Emision] [date] NOT NULL,
	[Fecha_Creacion_Origen] [datetime2](7) NULL,
	[Fecha_Modificacion_Origen] [datetime2](7) NULL,
	[Fecha_Carga_Staging] [datetime2](7) NOT NULL,
	[Fecha_Actualizacion_Staging] [datetime2](7) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [STG].[PUERTAS_EMBARQUE]    Script Date: 23/10/2025 01:04:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [STG].[PUERTAS_EMBARQUE](
	[ID_Puerta] [int] NOT NULL,
	[Codigo_Puerta] [nvarchar](10) NOT NULL,
	[ID_Terminal] [int] NOT NULL,
	[Tipo_Puerta] [nvarchar](20) NULL,
	[Estado] [nvarchar](20) NULL,
	[Fecha_Creacion_Origen] [datetime2](7) NULL,
	[Fecha_Modificacion_Origen] [datetime2](7) NULL,
	[Fecha_Carga_Staging] [datetime2](7) NOT NULL,
	[Fecha_Actualizacion_Staging] [datetime2](7) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [STG].[REPORTES_GENERADOS]    Script Date: 23/10/2025 01:04:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [STG].[REPORTES_GENERADOS](
	[ID_Reporte] [int] NOT NULL,
	[ID_Evento] [int] NULL,
	[Tipo_Reporte] [nvarchar](100) NOT NULL,
	[Fecha_Generacion] [date] NOT NULL,
	[Generado_Por] [nvarchar](100) NULL,
	[Periodo_Desde] [date] NOT NULL,
	[Periodo_Hasta] [date] NOT NULL,
	[Observaciones] [nvarchar](255) NULL,
	[Fecha_Creacion_Origen] [datetime2](7) NULL,
	[Fecha_Modificacion_Origen] [datetime2](7) NULL,
	[Fecha_Carga_Staging] [datetime2](7) NOT NULL,
	[Fecha_Actualizacion_Staging] [datetime2](7) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [STG].[RESERVACIONES]    Script Date: 23/10/2025 01:04:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [STG].[RESERVACIONES](
	[ID_Reservacion] [int] NOT NULL,
	[ID_Pasajero] [int] NOT NULL,
	[ID_Vuelo] [int] NOT NULL,
	[Fecha_Reservacion] [date] NOT NULL,
	[Clase] [nvarchar](20) NULL,
	[Costo] [decimal](10, 2) NOT NULL,
	[Estado] [nvarchar](20) NULL,
	[Fecha_Creacion_Origen] [datetime2](7) NULL,
	[Fecha_Modificacion_Origen] [datetime2](7) NULL,
	[Fecha_Carga_Staging] [datetime2](7) NOT NULL,
	[Fecha_Actualizacion_Staging] [datetime2](7) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [STG].[RUTAS_AEREAS]    Script Date: 23/10/2025 01:04:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [STG].[RUTAS_AEREAS](
	[ID_Ruta] [int] NOT NULL,
	[ID_Aeropuerto_Origen] [int] NOT NULL,
	[ID_Aeropuerto_Destino] [int] NOT NULL,
	[Distancia_KM] [int] NOT NULL,
	[Duracion_Estimada_MIN] [int] NULL,
	[Fecha_Creacion_Origen] [datetime2](7) NULL,
	[Fecha_Modificacion_Origen] [datetime2](7) NULL,
	[Fecha_Carga_Staging] [datetime2](7) NOT NULL,
	[Fecha_Actualizacion_Staging] [datetime2](7) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [STG].[SERVICIOS_BORDO]    Script Date: 23/10/2025 01:04:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [STG].[SERVICIOS_BORDO](
	[ID_Servicio] [int] NOT NULL,
	[ID_Vuelo] [int] NOT NULL,
	[Tipo_Servicio] [nvarchar](50) NOT NULL,
	[Descripcion] [nvarchar](255) NULL,
	[Costo] [decimal](10, 2) NULL,
	[Fecha_Creacion_Origen] [datetime2](7) NULL,
	[Fecha_Modificacion_Origen] [datetime2](7) NULL,
	[Fecha_Carga_Staging] [datetime2](7) NOT NULL,
	[Fecha_Actualizacion_Staging] [datetime2](7) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [STG].[SERVICIOS_CONSUMIDOS]    Script Date: 23/10/2025 01:04:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [STG].[SERVICIOS_CONSUMIDOS](
	[ID_Consumo] [int] NOT NULL,
	[ID_Pasajero] [int] NOT NULL,
	[ID_Servicio] [int] NOT NULL,
	[Estado] [nvarchar](30) NOT NULL,
	[Fecha_Solicitud] [datetime] NOT NULL,
	[Fecha_Entrega] [datetime] NULL,
	[Observaciones] [nvarchar](255) NULL,
	[Fecha_Creacion_Origen] [datetime2](7) NULL,
	[Fecha_Modificacion_Origen] [datetime2](7) NULL,
	[Fecha_Carga_Staging] [datetime2](7) NOT NULL,
	[Fecha_Actualizacion_Staging] [datetime2](7) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [STG].[TERMINALES]    Script Date: 23/10/2025 01:04:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [STG].[TERMINALES](
	[ID_Terminal] [int] NOT NULL,
	[Nombre] [nvarchar](50) NOT NULL,
	[ID_Aeropuerto] [int] NOT NULL,
	[Fecha_Creacion_Origen] [datetime2](7) NULL,
	[Fecha_Modificacion_Origen] [datetime2](7) NULL,
	[Fecha_Carga_Staging] [datetime2](7) NOT NULL,
	[Fecha_Actualizacion_Staging] [datetime2](7) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [STG].[TIEMPOS_PROCESO_PASAJEROS]    Script Date: 23/10/2025 01:04:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [STG].[TIEMPOS_PROCESO_PASAJEROS](
	[ID_Proceso] [int] NOT NULL,
	[ID_Pasajero] [int] NULL,
	[Fecha] [date] NULL,
	[Hora_Llegada_Aeropuerto] [time](7) NULL,
	[Hora_CheckIn] [time](7) NULL,
	[Hora_Seguridad] [time](7) NULL,
	[Hora_Abordaje] [time](7) NULL,
	[Hora_Despegue] [time](7) NULL,
	[Fecha_Creacion_Origen] [datetime2](7) NULL,
	[Fecha_Modificacion_Origen] [datetime2](7) NULL,
	[Fecha_Carga_Staging] [datetime2](7) NOT NULL,
	[Fecha_Actualizacion_Staging] [datetime2](7) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [STG].[TRIPULACION]    Script Date: 23/10/2025 01:04:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [STG].[TRIPULACION](
	[ID_Tripulacion] [int] NOT NULL,
	[ID_Empleado] [int] NOT NULL,
	[ID_Vuelo] [int] NOT NULL,
	[Rol_Tripulacion] [nvarchar](50) NOT NULL,
	[Fecha_Asignacion] [date] NOT NULL,
	[Observaciones] [nvarchar](255) NULL,
	[Fecha_Creacion_Origen] [datetime2](7) NULL,
	[Fecha_Modificacion_Origen] [datetime2](7) NULL,
	[Fecha_Carga_Staging] [datetime2](7) NOT NULL,
	[Fecha_Actualizacion_Staging] [datetime2](7) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [STG].[TURNOS_EMPLEADOS]    Script Date: 23/10/2025 01:04:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [STG].[TURNOS_EMPLEADOS](
	[ID_Turno] [int] NOT NULL,
	[ID_Empleado] [int] NOT NULL,
	[Fecha] [date] NOT NULL,
	[Hora_Entrada] [time](7) NOT NULL,
	[Hora_Salida] [time](7) NOT NULL,
	[Tipo_Turno] [nvarchar](20) NULL,
	[Estado] [nvarchar](20) NULL,
	[Fecha_Creacion_Origen] [datetime2](7) NULL,
	[Fecha_Modificacion_Origen] [datetime2](7) NULL,
	[Fecha_Carga_Staging] [datetime2](7) NOT NULL,
	[Fecha_Actualizacion_Staging] [datetime2](7) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [STG].[UNIDADES_EMERGENCIA]    Script Date: 23/10/2025 01:04:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [STG].[UNIDADES_EMERGENCIA](
	[ID_Unidad] [int] NOT NULL,
	[Tipo_Unidad] [nvarchar](50) NULL,
	[Placa_Unidad] [nvarchar](20) NULL,
	[Responsable] [nvarchar](100) NULL,
	[Estado] [nvarchar](30) NULL,
	[Fecha_Creacion_Origen] [datetime2](7) NULL,
	[Fecha_Modificacion_Origen] [datetime2](7) NULL,
	[Fecha_Carga_Staging] [datetime2](7) NOT NULL,
	[Fecha_Actualizacion_Staging] [datetime2](7) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [STG].[VUELOS]    Script Date: 23/10/2025 01:04:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [STG].[VUELOS](
	[ID_Vuelo] [int] NOT NULL,
	[Numero_Vuelo] [nvarchar](10) NOT NULL,
	[ID_Ruta] [int] NOT NULL,
	[ID_Aeronave] [int] NOT NULL,
	[ID_Horario] [int] NOT NULL,
	[Fecha_Salida] [date] NOT NULL,
	[Hora_Salida] [time](7) NOT NULL,
	[Hora_Llegada] [time](7) NOT NULL,
	[Estado] [nvarchar](20) NULL,
	[Fecha_Creacion_Origen] [datetime2](7) NULL,
	[Fecha_Modificacion_Origen] [datetime2](7) NULL,
	[Fecha_Carga_Staging] [datetime2](7) NOT NULL,
	[Fecha_Actualizacion_Staging] [datetime2](7) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [STG].[VUELOS_CARGA]    Script Date: 23/10/2025 01:04:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [STG].[VUELOS_CARGA](
	[ID_VueloCarga] [int] NOT NULL,
	[ID_Aeronave] [int] NOT NULL,
	[ID_Ruta] [int] NOT NULL,
	[Fecha_Salida] [date] NOT NULL,
	[Hora_Salida] [time](7) NOT NULL,
	[Peso_Total_Kg] [decimal](10, 2) NULL,
	[Volumen_Total_M3] [decimal](10, 2) NULL,
	[Estado] [nvarchar](30) NULL,
	[Fecha_Creacion_Origen] [datetime2](7) NULL,
	[Fecha_Modificacion_Origen] [datetime2](7) NULL,
	[Fecha_Carga_Staging] [datetime2](7) NOT NULL,
	[Fecha_Actualizacion_Staging] [datetime2](7) NULL
) ON [PRIMARY]
GO
ALTER TABLE [DIM].[AEROLINEAS] ADD  DEFAULT (sysdatetime()) FOR [Fecha_Carga_Dim]
GO
ALTER TABLE [DIM].[AERONAVES] ADD  DEFAULT (sysdatetime()) FOR [Fecha_Carga_Dim]
GO
ALTER TABLE [DIM].[ASISTENCIA_TURNOS] ADD  DEFAULT (sysdatetime()) FOR [FechaCargaDim]
GO
ALTER TABLE [DIM].[EMPLEADOS] ADD  DEFAULT (sysdatetime()) FOR [Fecha_Carga_Dim]
GO
ALTER TABLE [DIM].[FECHA] ADD  DEFAULT (sysdatetime()) FOR [FechaCargaDim]
GO
ALTER TABLE [DIM].[HORA] ADD  DEFAULT (sysdatetime()) FOR [FechaCargaDim]
GO
ALTER TABLE [DIM].[INSPECCIONES_AUDITORIAS] ADD  DEFAULT (sysdatetime()) FOR [Fecha_Carga_Dim]
GO
ALTER TABLE [DIM].[PASAJEROS] ADD  DEFAULT (sysdatetime()) FOR [Fecha_Carga_Dim]
GO
ALTER TABLE [DIM].[PASES_ABORDAJE] ADD  DEFAULT (sysdatetime()) FOR [Fecha_Carga_Dim]
GO
ALTER TABLE [DIM].[PUERTAS_EMBARQUE] ADD  DEFAULT (sysdatetime()) FOR [Fecha_Carga_Dim]
GO
ALTER TABLE [DIM].[RESULTADO] ADD  DEFAULT ((1)) FOR [Activo]
GO
ALTER TABLE [DIM].[RESULTADO] ADD  DEFAULT (sysdatetime()) FOR [Fecha_Carga_Dim]
GO
ALTER TABLE [DIM].[TIPO_CONTROL] ADD  DEFAULT (sysdatetime()) FOR [Fecha_Carga_Dim]
GO
ALTER TABLE [DIM].[TIPO_INCIDENTE] ADD  DEFAULT (sysdatetime()) FOR [Fecha_Carga_Dim]
GO
ALTER TABLE [DIM].[TURNOS] ADD  DEFAULT (sysdatetime()) FOR [Fecha_Carga_Dim]
GO
ALTER TABLE [DIM].[VUELOS] ADD  DEFAULT (sysdatetime()) FOR [Fecha_Carga_Dim]
GO
ALTER TABLE [FACT].[ASISTENCIA_PERSONAL] ADD  DEFAULT (sysdatetime()) FOR [FechaCargaFact]
GO
ALTER TABLE [FACT].[CONTROLES_SEGURIDAD] ADD  DEFAULT (sysdatetime()) FOR [FechaCargaFact]
GO
ALTER TABLE [FACT].[INCIDENTES_SEGURIDAD] ADD  DEFAULT (sysdatetime()) FOR [FechaCargaFact]
GO
ALTER TABLE [FACT].[INSPECCIONES_AUDITORIAS] ADD  DEFAULT (sysdatetime()) FOR [FechaCargaFact]
GO
ALTER TABLE [FACT].[OPERACIONES_VUELO] ADD  DEFAULT (sysdatetime()) FOR [FechaCargaFact]
GO
ALTER TABLE [PSTG].[AEROLINEAS] ADD  DEFAULT (sysdatetime()) FOR [Fecha_Carga_Pstg]
GO
ALTER TABLE [PSTG].[AERONAVES] ADD  DEFAULT (sysdatetime()) FOR [Fecha_Carga_Pstg]
GO
ALTER TABLE [PSTG].[ASISTENCIA_COMBINADA] ADD  DEFAULT (sysdatetime()) FOR [Fecha_Carga_Pstg]
GO
ALTER TABLE [PSTG].[ASISTENCIAS_EMPLEADOS] ADD  DEFAULT (sysdatetime()) FOR [Fecha_Carga_Pstg]
GO
ALTER TABLE [PSTG].[ATENCION_CLIENTE] ADD  DEFAULT (sysdatetime()) FOR [Fecha_Carga_Pstg]
GO
ALTER TABLE [PSTG].[CONTROLES_SEGURIDAD] ADD  DEFAULT (sysdatetime()) FOR [Fecha_Carga_Pstg]
GO
ALTER TABLE [PSTG].[EMPLEADOS] ADD  DEFAULT (sysdatetime()) FOR [Fecha_Carga_Pstg]
GO
ALTER TABLE [PSTG].[INCIDENTES_SEGURIDAD] ADD  DEFAULT (sysdatetime()) FOR [Fecha_Carga_Pstg]
GO
ALTER TABLE [PSTG].[INSPECCIONES_AUDITORIAS] ADD  DEFAULT (sysdatetime()) FOR [Fecha_Carga_Pstg]
GO
ALTER TABLE [PSTG].[PASAJEROS] ADD  DEFAULT (sysdatetime()) FOR [Fecha_Carga_Pstg]
GO
ALTER TABLE [PSTG].[PUERTAS_EMBARQUE] ADD  DEFAULT (sysdatetime()) FOR [Fecha_Carga_Pstg]
GO
ALTER TABLE [PSTG].[TURNOS_EMPLEADOS] ADD  DEFAULT (sysdatetime()) FOR [Fecha_Carga_Pstg]
GO
ALTER TABLE [PSTG].[VUELOS] ADD  DEFAULT (sysdatetime()) FOR [Fecha_Carga_Pstg]
GO
ALTER TABLE [STG].[AEROLINEAS] ADD  DEFAULT (sysdatetime()) FOR [Fecha_Carga_Staging]
GO
ALTER TABLE [STG].[AERONAVES] ADD  DEFAULT (sysdatetime()) FOR [Fecha_Carga_Staging]
GO
ALTER TABLE [STG].[AEROPUERTOS] ADD  DEFAULT (sysdatetime()) FOR [Fecha_Carga_Staging]
GO
ALTER TABLE [STG].[ASISTENCIAS_EMPLEADOS] ADD  DEFAULT (sysdatetime()) FOR [Fecha_Carga_Staging]
GO
ALTER TABLE [STG].[ATENCION_CLIENTE] ADD  DEFAULT (sysdatetime()) FOR [Fecha_Carga_Staging]
GO
ALTER TABLE [STG].[AUDITORIA_SISTEMA] ADD  DEFAULT (sysdatetime()) FOR [Fecha_Carga_Staging]
GO
ALTER TABLE [STG].[CAMP_MARKETING] ADD  DEFAULT (sysdatetime()) FOR [Fecha_Carga_Staging]
GO
ALTER TABLE [STG].[CARGAS_TRANSPORTADAS] ADD  DEFAULT (sysdatetime()) FOR [Fecha_Carga_Staging]
GO
ALTER TABLE [STG].[CLIMA] ADD  DEFAULT (sysdatetime()) FOR [Fecha_Carga_Staging]
GO
ALTER TABLE [STG].[COMBUSTIBLE] ADD  DEFAULT (sysdatetime()) FOR [Fecha_Carga_Staging]
GO
ALTER TABLE [STG].[CONTROLES_SEGURIDAD] ADD  DEFAULT (sysdatetime()) FOR [Fecha_Carga_Staging]
GO
ALTER TABLE [STG].[EMPLEADOS] ADD  DEFAULT (sysdatetime()) FOR [Fecha_Carga_Staging]
GO
ALTER TABLE [STG].[ENCUESTAS_OPINIONES_CLIENTES] ADD  DEFAULT (sysdatetime()) FOR [Fecha_Carga_Staging]
GO
ALTER TABLE [STG].[EQUIPAJE] ADD  DEFAULT (sysdatetime()) FOR [Fecha_Carga_Staging]
GO
ALTER TABLE [STG].[EQUIPAMIENTO_ESPECIAL] ADD  DEFAULT (sysdatetime()) FOR [Fecha_Carga_Staging]
GO
ALTER TABLE [STG].[ESTADISTICAS_DIARIAS] ADD  DEFAULT (sysdatetime()) FOR [Fecha_Carga_Staging]
GO
ALTER TABLE [STG].[FIDELIDAD_PASAJERO] ADD  DEFAULT (sysdatetime()) FOR [Fecha_Carga_Staging]
GO
ALTER TABLE [STG].[FRECUENCIAS] ADD  DEFAULT (sysdatetime()) FOR [Fecha_Carga_Staging]
GO
ALTER TABLE [STG].[GESTION_ADMVUELOS] ADD  DEFAULT (sysdatetime()) FOR [Fecha_Carga_Staging]
GO
ALTER TABLE [STG].[HISTORICO_OPERACIONAL_VUELOS] ADD  DEFAULT (sysdatetime()) FOR [Fecha_Carga_Staging]
GO
ALTER TABLE [STG].[HORARIOS_PROGRAMADOS] ADD  DEFAULT (sysdatetime()) FOR [Fecha_Carga_Staging]
GO
ALTER TABLE [STG].[INCIDENTES_OPERATIVOS] ADD  DEFAULT (sysdatetime()) FOR [Fecha_Carga_Staging]
GO
ALTER TABLE [STG].[INCIDENTES_SEGURIDAD] ADD  DEFAULT (sysdatetime()) FOR [Fecha_Carga_Staging]
GO
ALTER TABLE [STG].[INSPECCIONES_AUDITORIAS] ADD  DEFAULT (sysdatetime()) FOR [Fecha_Carga_Staging]
GO
ALTER TABLE [STG].[INTERVENCIONES_EMERGENCIA] ADD  DEFAULT (sysdatetime()) FOR [Fecha_Carga_Staging]
GO
ALTER TABLE [STG].[LOGISTICA_TERRESTRE] ADD  DEFAULT (sysdatetime()) FOR [Fecha_Carga_Staging]
GO
ALTER TABLE [STG].[MANTENIMIENTO] ADD  DEFAULT (sysdatetime()) FOR [Fecha_Carga_Staging]
GO
ALTER TABLE [STG].[MIGRACION_ADUANA] ADD  DEFAULT (sysdatetime()) FOR [Fecha_Carga_Staging]
GO
ALTER TABLE [STG].[OFERTAS_APLICADAS] ADD  DEFAULT (sysdatetime()) FOR [Fecha_Carga_Staging]
GO
ALTER TABLE [STG].[OPERADORES_CARGA] ADD  DEFAULT (sysdatetime()) FOR [Fecha_Carga_Staging]
GO
ALTER TABLE [STG].[PAGOS] ADD  DEFAULT (sysdatetime()) FOR [Fecha_Carga_Staging]
GO
ALTER TABLE [STG].[PAISES] ADD  DEFAULT (sysdatetime()) FOR [Fecha_Carga_Staging]
GO
ALTER TABLE [STG].[PASAJEROS] ADD  DEFAULT (sysdatetime()) FOR [Fecha_Carga_Staging]
GO
ALTER TABLE [STG].[PASES_ABORDAJE] ADD  DEFAULT (sysdatetime()) FOR [Fecha_Carga_Staging]
GO
ALTER TABLE [STG].[PUERTAS_EMBARQUE] ADD  DEFAULT (sysdatetime()) FOR [Fecha_Carga_Staging]
GO
ALTER TABLE [STG].[REPORTES_GENERADOS] ADD  DEFAULT (sysdatetime()) FOR [Fecha_Carga_Staging]
GO
ALTER TABLE [STG].[RESERVACIONES] ADD  DEFAULT (sysdatetime()) FOR [Fecha_Carga_Staging]
GO
ALTER TABLE [STG].[RUTAS_AEREAS] ADD  DEFAULT (sysdatetime()) FOR [Fecha_Carga_Staging]
GO
ALTER TABLE [STG].[SERVICIOS_BORDO] ADD  DEFAULT (sysdatetime()) FOR [Fecha_Carga_Staging]
GO
ALTER TABLE [STG].[SERVICIOS_CONSUMIDOS] ADD  DEFAULT (sysdatetime()) FOR [Fecha_Carga_Staging]
GO
ALTER TABLE [STG].[TERMINALES] ADD  DEFAULT (sysdatetime()) FOR [Fecha_Carga_Staging]
GO
ALTER TABLE [STG].[TIEMPOS_PROCESO_PASAJEROS] ADD  DEFAULT (sysdatetime()) FOR [Fecha_Carga_Staging]
GO
ALTER TABLE [STG].[TRIPULACION] ADD  DEFAULT (sysdatetime()) FOR [Fecha_Carga_Staging]
GO
ALTER TABLE [STG].[TURNOS_EMPLEADOS] ADD  DEFAULT (sysdatetime()) FOR [Fecha_Carga_Staging]
GO
ALTER TABLE [STG].[UNIDADES_EMERGENCIA] ADD  DEFAULT (sysdatetime()) FOR [Fecha_Carga_Staging]
GO
ALTER TABLE [STG].[VUELOS] ADD  DEFAULT (sysdatetime()) FOR [Fecha_Carga_Staging]
GO
ALTER TABLE [STG].[VUELOS_CARGA] ADD  DEFAULT (sysdatetime()) FOR [Fecha_Carga_Staging]
GO
ALTER TABLE [FACT].[ASISTENCIA_PERSONAL]  WITH NOCHECK ADD FOREIGN KEY([EmpleadoSK])
REFERENCES [DIM].[EMPLEADOS] ([EmpleadoSK])
GO
ALTER TABLE [FACT].[ASISTENCIA_PERSONAL]  WITH NOCHECK ADD FOREIGN KEY([FechaSK])
REFERENCES [DIM].[FECHA] ([FechaSK])
GO
ALTER TABLE [FACT].[ASISTENCIA_PERSONAL]  WITH NOCHECK ADD FOREIGN KEY([HoraEntradaSK])
REFERENCES [DIM].[HORA] ([HoraSK])
GO
ALTER TABLE [FACT].[ASISTENCIA_PERSONAL]  WITH NOCHECK ADD FOREIGN KEY([HoraSalidaSK])
REFERENCES [DIM].[HORA] ([HoraSK])
GO
ALTER TABLE [FACT].[ASISTENCIA_PERSONAL]  WITH NOCHECK ADD  CONSTRAINT [FK_AsistenciaPersonal_TurnosAsistencia] FOREIGN KEY([TurnoSK])
REFERENCES [DIM].[ASISTENCIA_TURNOS] ([TurnoSK])
GO
ALTER TABLE [FACT].[ASISTENCIA_PERSONAL] NOCHECK CONSTRAINT [FK_AsistenciaPersonal_TurnosAsistencia]
GO
ALTER TABLE [FACT].[CONTROLES_SEGURIDAD]  WITH NOCHECK ADD FOREIGN KEY([FechaSK])
REFERENCES [DIM].[FECHA] ([FechaSK])
GO
ALTER TABLE [FACT].[CONTROLES_SEGURIDAD]  WITH NOCHECK ADD FOREIGN KEY([HoraSK])
REFERENCES [DIM].[HORA] ([HoraSK])
GO
ALTER TABLE [FACT].[CONTROLES_SEGURIDAD]  WITH NOCHECK ADD FOREIGN KEY([TipoControlSK])
REFERENCES [DIM].[TIPO_CONTROL] ([TipoControlSK])
GO
ALTER TABLE [FACT].[CONTROLES_SEGURIDAD]  WITH NOCHECK ADD  CONSTRAINT [FK_FactControles_Resultado] FOREIGN KEY([ResultadoSK])
REFERENCES [DIM].[RESULTADO] ([ResultadoSK])
GO
ALTER TABLE [FACT].[CONTROLES_SEGURIDAD] NOCHECK CONSTRAINT [FK_FactControles_Resultado]
GO
ALTER TABLE [FACT].[INCIDENTES_SEGURIDAD]  WITH NOCHECK ADD FOREIGN KEY([FechaSK])
REFERENCES [DIM].[FECHA] ([FechaSK])
GO
ALTER TABLE [FACT].[INCIDENTES_SEGURIDAD]  WITH NOCHECK ADD FOREIGN KEY([HoraSK])
REFERENCES [DIM].[HORA] ([HoraSK])
GO
ALTER TABLE [FACT].[INCIDENTES_SEGURIDAD]  WITH NOCHECK ADD FOREIGN KEY([TipoIncidenteSK])
REFERENCES [DIM].[TIPO_INCIDENTE] ([TipoIncidenteSK])
GO
ALTER TABLE [FACT].[INSPECCIONES_AUDITORIAS]  WITH NOCHECK ADD FOREIGN KEY([AreaOperacionalSK])
REFERENCES [DIM].[INSPECCIONES_AUDITORIAS] ([AreaInspeccionadaSK])
GO
ALTER TABLE [FACT].[INSPECCIONES_AUDITORIAS]  WITH NOCHECK ADD FOREIGN KEY([FechaSK])
REFERENCES [DIM].[FECHA] ([FechaSK])
GO
ALTER TABLE [FACT].[INSPECCIONES_AUDITORIAS]  WITH NOCHECK ADD FOREIGN KEY([HoraSK])
REFERENCES [DIM].[HORA] ([HoraSK])
GO
ALTER TABLE [FACT].[INSPECCIONES_AUDITORIAS]  WITH NOCHECK ADD  CONSTRAINT [FK_FactInspecciones_Resultado] FOREIGN KEY([ResultadoSK])
REFERENCES [DIM].[RESULTADO] ([ResultadoSK])
GO
ALTER TABLE [FACT].[INSPECCIONES_AUDITORIAS] NOCHECK CONSTRAINT [FK_FactInspecciones_Resultado]
GO
ALTER TABLE [FACT].[OPERACIONES_VUELO]  WITH NOCHECK ADD FOREIGN KEY([AerolineaSK])
REFERENCES [DIM].[AEROLINEAS] ([AerolineaSK])
GO
ALTER TABLE [FACT].[OPERACIONES_VUELO]  WITH NOCHECK ADD FOREIGN KEY([AeronaveSK])
REFERENCES [DIM].[AERONAVES] ([AeronaveSK])
GO
ALTER TABLE [FACT].[OPERACIONES_VUELO]  WITH NOCHECK ADD FOREIGN KEY([FechaSK])
REFERENCES [DIM].[FECHA] ([FechaSK])
GO
ALTER TABLE [FACT].[OPERACIONES_VUELO]  WITH NOCHECK ADD FOREIGN KEY([GestionSK])
REFERENCES [DIM].[GESTION_ADMVUELOS] ([GestionSK])
GO
ALTER TABLE [FACT].[OPERACIONES_VUELO]  WITH NOCHECK ADD FOREIGN KEY([HoraLlegadaSK])
REFERENCES [DIM].[HORA] ([HoraSK])
GO
ALTER TABLE [FACT].[OPERACIONES_VUELO]  WITH NOCHECK ADD FOREIGN KEY([HoraSalidaSK])
REFERENCES [DIM].[HORA] ([HoraSK])
GO
ALTER TABLE [FACT].[OPERACIONES_VUELO]  WITH NOCHECK ADD FOREIGN KEY([PasajeroSK])
REFERENCES [DIM].[PASAJEROS] ([PasajeroSK])
GO
ALTER TABLE [FACT].[OPERACIONES_VUELO]  WITH NOCHECK ADD FOREIGN KEY([PaseabordajeSK])
REFERENCES [DIM].[PASES_ABORDAJE] ([PaseabordajeSK])
GO
ALTER TABLE [FACT].[OPERACIONES_VUELO]  WITH NOCHECK ADD FOREIGN KEY([PuertaSK])
REFERENCES [DIM].[PUERTAS_EMBARQUE] ([PuertaSK])
GO
ALTER TABLE [FACT].[OPERACIONES_VUELO]  WITH NOCHECK ADD FOREIGN KEY([VueloSK])
REFERENCES [DIM].[VUELOS] ([VueloSK])
GO
/****** Object:  StoredProcedure [METADATA].[usp_EndEtlExec]    Script Date: 23/10/2025 01:04:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [METADATA].[usp_EndEtlExec]
    @IDEtlExecution INT,
    @ETL_CountRows INT,
    @ETL_CountNewRows INT,
    @ETL_CountModifiedRows INT,
    @Status VARCHAR(20)
AS
BEGIN
    SET NOCOUNT ON;
   
    UPDATE METADATA.ETL_AUDITORIA
    SET ETL_CountRows        = @ETL_CountRows,
        ETL_CountNewRows     = @ETL_CountNewRows,
        ETL_CountModifiedRows= @ETL_CountModifiedRows,
        End_Time             = GETDATE(),
        Status               = @Status
    WHERE IDEtlExecution = @IDEtlExecution;
END;
GO
/****** Object:  StoredProcedure [METADATA].[usp_StartEtlExec]    Script Date: 23/10/2025 01:04:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [METADATA].[usp_StartEtlExec]
    @Machine_Name VARCHAR(50),  
    @Package_Name VARCHAR(100),  
    @User_Name VARCHAR(50)
AS
BEGIN
    SET NOCOUNT ON;
    
    INSERT INTO METADATA.ETL_AUDITORIA
        (Machine_Name, Package_Name, User_Name, Start_Time, Status)
    VALUES
        (@Machine_Name, @Package_Name, @User_Name, GETDATE(), 'RUNNING');
    
    SELECT SCOPE_IDENTITY() AS IDEtlExecution;
END;
GO
/****** Object:  StoredProcedure [STG].[SP_CargarIncremental_AEROLINEAS]    Script Date: 23/10/2025 01:04:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [STG].[SP_CargarIncremental_AEROLINEAS]
AS
BEGIN
    SET NOCOUNT ON;
    MERGE STG.AEROLINEAS AS Target
    USING SIAA.OPA.AEROLINEAS AS Source
    ON (Target.ID_Aerolinea = Source.ID_Aerolinea)
    WHEN MATCHED AND (
        Target.Fecha_Modificacion_Origen IS NULL OR
        Source.Fecha_Modificacion IS NULL OR
        Target.Fecha_Modificacion_Origen < Source.Fecha_Modificacion
    )
    THEN UPDATE SET
        Target.Nombre = Source.Nombre,
        Target.Codigo_IATA = Source.Codigo_IATA,
        Target.Pais_Origen = Source.Pais_Origen,
        Target.Activa = Source.Activa,
        Target.Fecha_Creacion_Origen = Source.Fecha_Creacion,
        Target.Fecha_Modificacion_Origen = Source.Fecha_Modificacion
    WHEN NOT MATCHED BY TARGET THEN
        INSERT (
            ID_Aerolinea, Nombre, Codigo_IATA, Pais_Origen, Activa, Fecha_Creacion_Origen, Fecha_Modificacion_Origen
        )
        VALUES (
            Source.ID_Aerolinea, Source.Nombre, Source.Codigo_IATA, Source.Pais_Origen, Source.Activa, Source.Fecha_Creacion, Source.Fecha_Modificacion
        );
END;
GO
/****** Object:  StoredProcedure [STG].[SP_CargarIncremental_AERONAVES]    Script Date: 23/10/2025 01:04:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [STG].[SP_CargarIncremental_AERONAVES]
AS
BEGIN
    SET NOCOUNT ON;
    MERGE STG.AERONAVES AS Target
    USING SIAA.OPA.AERONAVES AS Source
    ON (Target.ID_Aeronave = Source.ID_Aeronave)
    WHEN MATCHED AND (
        Target.Fecha_Modificacion_Origen IS NULL OR
        Source.Fecha_Modificacion IS NULL OR
        Target.Fecha_Modificacion_Origen < Source.Fecha_Modificacion
    )
    THEN UPDATE SET
        Target.Matricula = Source.Matricula,
        Target.Modelo = Source.Modelo,
        Target.Capacidad_Pasajeros = Source.Capacidad_Pasajeros,
        Target.Capacidad_Carga_KG = Source.Capacidad_Carga_KG,
        Target.Fecha_Fabricacion = Source.Fecha_Fabricacion,
        Target.ID_Aerolinea = Source.ID_Aerolinea,
        Target.Estado = Source.Estado,
        Target.Fecha_Creacion_Origen = Source.Fecha_Creacion,
        Target.Fecha_Modificacion_Origen = Source.Fecha_Modificacion
    WHEN NOT MATCHED BY TARGET THEN
        INSERT (
            ID_Aeronave, Matricula, Modelo, Capacidad_Pasajeros, Capacidad_Carga_KG,
            Fecha_Fabricacion, ID_Aerolinea, Estado, Fecha_Creacion_Origen, Fecha_Modificacion_Origen
        )
        VALUES (
            Source.ID_Aeronave, Source.Matricula, Source.Modelo, Source.Capacidad_Pasajeros, Source.Capacidad_Carga_KG,
            Source.Fecha_Fabricacion, Source.ID_Aerolinea, Source.Estado, Source.Fecha_Creacion, Source.Fecha_Modificacion
        );
END;
GO
/****** Object:  StoredProcedure [STG].[SP_CargarIncremental_AEROPUERTOS]    Script Date: 23/10/2025 01:04:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [STG].[SP_CargarIncremental_AEROPUERTOS]
AS
BEGIN
    SET NOCOUNT ON;
    MERGE STG.AEROPUERTOS AS Target
    USING SIAA.INF.AEROPUERTOS AS Source
    ON (Target.ID_Aeropuerto = Source.ID_Aeropuerto)
    WHEN MATCHED AND (
        Target.Fecha_Modificacion_Origen IS NULL OR
        Source.Fecha_Modificacion IS NULL OR
        Target.Fecha_Modificacion_Origen < Source.Fecha_Modificacion
    )
    THEN UPDATE SET
        Target.Nombre = Source.Nombre,
        Target.Codigo_IATA = Source.Codigo_IATA,
        Target.Ciudad = Source.Ciudad,
        Target.ID_Pais = Source.ID_Pais,
        Target.Capacidad_Anual_Pasajeros = Source.Capacidad_Anual_Pasajeros,
        Target.Fecha_Creacion_Origen = Source.Fecha_Creacion,
        Target.Fecha_Modificacion_Origen = Source.Fecha_Modificacion
        -- Fecha_Actualizacion_Staging se actualiza por Trigger AFTER UPDATE
    WHEN NOT MATCHED BY TARGET THEN
        INSERT (
            ID_Aeropuerto, Nombre, Codigo_IATA, Ciudad, ID_Pais, Capacidad_Anual_Pasajeros,
            Fecha_Creacion_Origen, Fecha_Modificacion_Origen
            -- Fecha_Carga_Staging se auto-rellena con DEFAULT
            -- Fecha_Actualizacion_Staging será NULL por defecto
        )
        VALUES (
            Source.ID_Aeropuerto, Source.Nombre, Source.Codigo_IATA, Source.Ciudad, Source.ID_Pais, 
            Source.Capacidad_Anual_Pasajeros,
            Source.Fecha_Creacion, Source.Fecha_Modificacion
        );
END;
GO
/****** Object:  StoredProcedure [STG].[SP_CargarIncremental_ASISTENCIAS_EMPLEADOS]    Script Date: 23/10/2025 01:04:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [STG].[SP_CargarIncremental_ASISTENCIAS_EMPLEADOS]
AS
BEGIN
    SET NOCOUNT ON;
    MERGE STG.ASISTENCIAS_EMPLEADOS AS Target
    USING SIAA.RRH.ASISTENCIAS_EMPLEADOS AS Source
    ON (Target.ID_Asistencia = Source.ID_Asistencia)
    WHEN MATCHED AND (
        Target.Fecha_Modificacion_Origen IS NULL OR
        Source.Fecha_Modificacion IS NULL OR
        Target.Fecha_Modificacion_Origen < Source.Fecha_Modificacion
    )
    THEN UPDATE SET
        Target.ID_Empleado = Source.ID_Empleado,
        Target.Fecha = Source.Fecha,
        Target.Hora_Entrada = Source.Hora_Entrada,
        Target.Hora_Salida = Source.Hora_Salida,
        Target.Estado = Source.Estado,
        Target.Fecha_Creacion_Origen = Source.Fecha_Creacion,
        Target.Fecha_Modificacion_Origen = Source.Fecha_Modificacion
    WHEN NOT MATCHED BY TARGET THEN
        INSERT (
            ID_Asistencia, ID_Empleado, Fecha, Hora_Entrada, Hora_Salida, Estado,
            Fecha_Creacion_Origen, Fecha_Modificacion_Origen
        )
        VALUES (
            Source.ID_Asistencia, Source.ID_Empleado, Source.Fecha, Source.Hora_Entrada, Source.Hora_Salida, Source.Estado,
            Source.Fecha_Creacion, Source.Fecha_Modificacion
        );
END;
GO
/****** Object:  StoredProcedure [STG].[SP_CargarIncremental_ATENCION_CLIENTE]    Script Date: 23/10/2025 01:04:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [STG].[SP_CargarIncremental_ATENCION_CLIENTE]
AS
BEGIN
    SET NOCOUNT ON;
    MERGE STG.ATENCION_CLIENTE AS Target
    USING SIAA.MKT.ATENCION_CLIENTE AS Source
    ON (Target.ID_Atencion = Source.ID_Atencion)
    WHEN MATCHED AND (
        Target.Fecha_Modificacion_Origen IS NULL OR
        Source.Fecha_Modificacion IS NULL OR
        Target.Fecha_Modificacion_Origen < Source.Fecha_Modificacion
    )
    THEN UPDATE SET
        Target.ID_Pasajero = Source.ID_Pasajero,
        Target.Fecha_Solicitud = Source.Fecha_Solicitud,
        Target.Tipo_Solicitud = Source.Tipo_Solicitud,
        Target.Descripcion = Source.Descripcion,
        Target.Estado = Source.Estado,
        Target.Respuesta = Source.Respuesta,
        Target.Fecha_Respuesta = Source.Fecha_Respuesta,
        Target.Fecha_Creacion_Origen = Source.Fecha_Creacion,
        Target.Fecha_Modificacion_Origen = Source.Fecha_Modificacion
    WHEN NOT MATCHED BY TARGET THEN
        INSERT (
            ID_Atencion, ID_Pasajero, Fecha_Solicitud, Tipo_Solicitud, Descripcion,
            Estado, Respuesta, Fecha_Respuesta,
            Fecha_Creacion_Origen, Fecha_Modificacion_Origen
        )
        VALUES (
            Source.ID_Atencion, Source.ID_Pasajero, Source.Fecha_Solicitud, Source.Tipo_Solicitud, Source.Descripcion,
            Source.Estado, Source.Respuesta, Source.Fecha_Respuesta,
            Source.Fecha_Creacion, Source.Fecha_Modificacion
        );
END;
GO
/****** Object:  StoredProcedure [STG].[SP_CargarIncremental_AUDITORIA_SISTEMA]    Script Date: 23/10/2025 01:04:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [STG].[SP_CargarIncremental_AUDITORIA_SISTEMA]
AS
BEGIN
    SET NOCOUNT ON;
    MERGE STG.AUDITORIA_SISTEMA AS Target
    USING SIAA.AUD.AUDITORIA_SISTEMA AS Source
    ON (Target.ID_Evento = Source.ID_Evento)
    WHEN MATCHED AND (
        Target.Fecha_Modificacion_Origen IS NULL OR
        Source.Fecha_Modificacion IS NULL OR
        Target.Fecha_Modificacion_Origen < Source.Fecha_Modificacion
    )
    THEN UPDATE SET
        Target.Fecha = Source.Fecha,
        Target.Hora = Source.Hora,
        Target.Usuario = Source.Usuario,
        Target.Rol_Usuario = Source.Rol_Usuario,
        Target.Modulo = Source.Modulo,
        Target.Tipo_Evento = Source.Tipo_Evento,
        Target.Descripcion = Source.Descripcion,
        Target.IP_Origen = Source.IP_Origen,
        Target.Estado_Evento = Source.Estado_Evento,
        Target.Fecha_Creacion_Origen = Source.Fecha_Creacion,
        Target.Fecha_Modificacion_Origen = Source.Fecha_Modificacion
    WHEN NOT MATCHED BY TARGET THEN
        INSERT (
            ID_Evento, Fecha, Hora, Usuario, Rol_Usuario, Modulo, Tipo_Evento,
            Descripcion, IP_Origen, Estado_Evento, Fecha_Creacion_Origen, Fecha_Modificacion_Origen
        )
        VALUES (
            Source.ID_Evento, Source.Fecha, Source.Hora, Source.Usuario, Source.Rol_Usuario, Source.Modulo, Source.Tipo_Evento,
            Source.Descripcion, Source.IP_Origen, Source.Estado_Evento, Source.Fecha_Creacion, Source.Fecha_Modificacion
        );
END;
GO
/****** Object:  StoredProcedure [STG].[SP_CargarIncremental_CAMP_MARKETING]    Script Date: 23/10/2025 01:04:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [STG].[SP_CargarIncremental_CAMP_MARKETING]
AS
BEGIN
    SET NOCOUNT ON;
    MERGE STG.CAMP_MARKETING AS Target
    USING SIAA.MKT.CAMP_MARKETING AS Source
    ON (Target.ID_Camp = Source.ID_Camp)
    WHEN MATCHED AND (
        Target.Fecha_Modificacion_Origen IS NULL OR
        Source.Fecha_Modificacion IS NULL OR
        Target.Fecha_Modificacion_Origen < Source.Fecha_Modificacion
    )
    THEN UPDATE SET
        Target.Nombre = Source.Nombre,
        Target.Tipo = Source.Tipo,
        Target.Fecha_Inicio = Source.Fecha_Inicio,
        Target.Fecha_Fin = Source.Fecha_Fin,
        Target.Descripcion = Source.Descripcion,
        Target.Estado = Source.Estado,
        Target.Fecha_Creacion_Origen = Source.Fecha_Creacion,
        Target.Fecha_Modificacion_Origen = Source.Fecha_Modificacion
    WHEN NOT MATCHED BY TARGET THEN
        INSERT (
            ID_Camp, Nombre, Tipo, Fecha_Inicio, Fecha_Fin, Descripcion, Estado,
            Fecha_Creacion_Origen, Fecha_Modificacion_Origen
        )
        VALUES (
            Source.ID_Camp, Source.Nombre, Source.Tipo, Source.Fecha_Inicio, Source.Fecha_Fin, Source.Descripcion, Source.Estado,
            Source.Fecha_Creacion, Source.Fecha_Modificacion
        );
END;
GO
/****** Object:  StoredProcedure [STG].[SP_CargarIncremental_CARGAS_TRANSPORTADAS]    Script Date: 23/10/2025 01:04:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [STG].[SP_CargarIncremental_CARGAS_TRANSPORTADAS]
AS
BEGIN
    SET NOCOUNT ON;
    MERGE STG.CARGAS_TRANSPORTADAS AS Target
    USING SIAA.CRG.CARGAS_TRANSPORTADAS AS Source
    ON (Target.ID_Carga = Source.ID_Carga)
    WHEN MATCHED AND (
        Target.Fecha_Modificacion_Origen IS NULL OR
        Source.Fecha_Modificacion IS NULL OR
        Target.Fecha_Modificacion_Origen < Source.Fecha_Modificacion
    )
    THEN UPDATE SET
        Target.ID_VueloCarga = Source.ID_VueloCarga,
        Target.ID_Operador = Source.ID_Operador,
        Target.Descripcion = Source.Descripcion,
        Target.Peso_Kg = Source.Peso_Kg,
        Target.Volumen_M3 = Source.Volumen_M3,
        Target.Tipo_Carga = Source.Tipo_Carga,
        Target.Estado = Source.Estado,
        Target.Fecha_Creacion_Origen = Source.Fecha_Creacion,
        Target.Fecha_Modificacion_Origen = Source.Fecha_Modificacion
    WHEN NOT MATCHED BY TARGET THEN
        INSERT (
            ID_Carga, ID_VueloCarga, ID_Operador, Descripcion, Peso_Kg,
            Volumen_M3, Tipo_Carga, Estado,
            Fecha_Creacion_Origen, Fecha_Modificacion_Origen
        )
        VALUES (
            Source.ID_Carga, Source.ID_VueloCarga, Source.ID_Operador, Source.Descripcion, Source.Peso_Kg,
            Source.Volumen_M3, Source.Tipo_Carga, Source.Estado,
            Source.Fecha_Creacion, Source.Fecha_Modificacion
        );
END;
GO
/****** Object:  StoredProcedure [STG].[SP_CargarIncremental_CLIMA]    Script Date: 23/10/2025 01:04:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [STG].[SP_CargarIncremental_CLIMA]
AS
BEGIN
    SET NOCOUNT ON;
    MERGE STG.CLIMA AS Target
    USING SIAA.MET.CLIMA AS Source
    ON (Target.ID_Registro = Source.ID_Registro)
    WHEN MATCHED AND (
        Target.Fecha_Modificacion_Origen IS NULL OR
        Source.Fecha_Modificacion IS NULL OR
        Target.Fecha_Modificacion_Origen < Source.Fecha_Modificacion
    )
    THEN UPDATE SET
        Target.ID_Aeropuerto = Source.ID_Aeropuerto,
        Target.Fecha = Source.Fecha,
        Target.Hora = Source.Hora,
        Target.Temperatura_C = Source.Temperatura_C,
        Target.Humedad_Porc = Source.Humedad_Porc,
        Target.Velocidad_Viento_KMH = Source.Velocidad_Viento_KMH,
        Target.Condicion = Source.Condicion,
        Target.Fecha_Creacion_Origen = Source.Fecha_Creacion,
        Target.Fecha_Modificacion_Origen = Source.Fecha_Modificacion
    WHEN NOT MATCHED BY TARGET THEN
        INSERT (
            ID_Registro, ID_Aeropuerto, Fecha, Hora, Temperatura_C, Humedad_Porc,
            Velocidad_Viento_KMH, Condicion, Fecha_Creacion_Origen, Fecha_Modificacion_Origen
        )
        VALUES (
            Source.ID_Registro, Source.ID_Aeropuerto, Source.Fecha, Source.Hora, Source.Temperatura_C, Source.Humedad_Porc,
            Source.Velocidad_Viento_KMH, Source.Condicion, Source.Fecha_Creacion, Source.Fecha_Modificacion
        );
END;
GO
/****** Object:  StoredProcedure [STG].[SP_CargarIncremental_COMBUSTIBLE]    Script Date: 23/10/2025 01:04:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [STG].[SP_CargarIncremental_COMBUSTIBLE]
AS
BEGIN
    SET NOCOUNT ON;
    MERGE STG.COMBUSTIBLE AS Target
    USING SIAA.ABC.COMBUSTIBLE AS Source
    ON (Target.ID_Registro = Source.ID_Registro)
    WHEN MATCHED AND (
        Target.Fecha_Modificacion_Origen IS NULL OR
        Source.Fecha_Modificacion IS NULL OR
        Target.Fecha_Modificacion_Origen < Source.Fecha_Modificacion
    )
    THEN UPDATE SET
        Target.ID_Aeronave = Source.ID_Aeronave,
        Target.Fecha = Source.Fecha,
        Target.Cantidad_Galones = Source.Cantidad_Galones,
        Target.Costo_Total = Source.Costo_Total,
        Target.Proveedor = Source.Proveedor,
        Target.Fecha_Creacion_Origen = Source.Fecha_Creacion,
        Target.Fecha_Modificacion_Origen = Source.Fecha_Modificacion
    WHEN NOT MATCHED BY TARGET THEN
        INSERT (
            ID_Registro, ID_Aeronave, Fecha, Cantidad_Galones, Costo_Total, Proveedor,
            Fecha_Creacion_Origen, Fecha_Modificacion_Origen
        )
        VALUES (
            Source.ID_Registro, Source.ID_Aeronave, Source.Fecha, Source.Cantidad_Galones, Source.Costo_Total, Source.Proveedor,
            Source.Fecha_Creacion, Source.Fecha_Modificacion
        );
END;
GO
/****** Object:  StoredProcedure [STG].[SP_CargarIncremental_CONTROLES_SEGURIDAD]    Script Date: 23/10/2025 01:04:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [STG].[SP_CargarIncremental_CONTROLES_SEGURIDAD]
AS
BEGIN
    SET NOCOUNT ON;
    MERGE STG.CONTROLES_SEGURIDAD AS Target
    USING SIAA.SEG.CONTROLES_SEGURIDAD AS Source
    ON (Target.ID_Control = Source.ID_Control)
    WHEN MATCHED AND (
        Target.Fecha_Modificacion_Origen IS NULL OR
        Source.Fecha_Modificacion IS NULL OR
        Target.Fecha_Modificacion_Origen < Source.Fecha_Modificacion
    )
    THEN UPDATE SET
        Target.ID_Vuelo = Source.ID_Vuelo,
        Target.Tipo_Control = Source.Tipo_Control,
        Target.Fecha_Control = Source.Fecha_Control,
        Target.Resultado = Source.Resultado,
        Target.Observaciones = Source.Observaciones,
        Target.Fecha_Creacion_Origen = Source.Fecha_Creacion,
        Target.Fecha_Modificacion_Origen = Source.Fecha_Modificacion
    WHEN NOT MATCHED BY TARGET THEN
        INSERT (
            ID_Control, ID_Vuelo, Tipo_Control, Fecha_Control, Resultado, Observaciones,
            Fecha_Creacion_Origen, Fecha_Modificacion_Origen
        )
        VALUES (
            Source.ID_Control, Source.ID_Vuelo, Source.Tipo_Control, Source.Fecha_Control, Source.Resultado, Source.Observaciones,
            Source.Fecha_Creacion, Source.Fecha_Modificacion
        );
END;
GO
/****** Object:  StoredProcedure [STG].[SP_CargarIncremental_EMPLEADOS]    Script Date: 23/10/2025 01:04:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [STG].[SP_CargarIncremental_EMPLEADOS]
AS
BEGIN
    SET NOCOUNT ON;
    MERGE STG.EMPLEADOS AS Target
    USING SIAA.RRH.EMPLEADOS AS Source
    ON (Target.ID_Empleado = Source.ID_Empleado)
    WHEN MATCHED AND (
        Target.Fecha_Modificacion_Origen IS NULL OR
        Source.Fecha_Modificacion IS NULL OR
        Target.Fecha_Modificacion_Origen < Source.Fecha_Modificacion
    )
    THEN UPDATE SET
        Target.Nombre = Source.Nombre,
        Target.Apellido = Source.Apellido,
        Target.Cedula = Source.Cedula,
        Target.Fecha_Nacimiento = Source.Fecha_Nacimiento,
        Target.Genero = Source.Genero,
        Target.Cargo = Source.Cargo,
        Target.ID_Aeropuerto = Source.ID_Aeropuerto,
        Target.Fecha_Contratacion = Source.Fecha_Contratacion,
        Target.Estado = Source.Estado,
        Target.Fecha_Creacion_Origen = Source.Fecha_Creacion,
        Target.Fecha_Modificacion_Origen = Source.Fecha_Modificacion
    WHEN NOT MATCHED BY TARGET THEN
        INSERT (
            ID_Empleado, Nombre, Apellido, Cedula, Fecha_Nacimiento, Genero, Cargo, ID_Aeropuerto,
            Fecha_Contratacion, Estado, Fecha_Creacion_Origen, Fecha_Modificacion_Origen
        )
        VALUES (
            Source.ID_Empleado, Source.Nombre, Source.Apellido, Source.Cedula, Source.Fecha_Nacimiento, Source.Genero, Source.Cargo, Source.ID_Aeropuerto,
            Source.Fecha_Contratacion, Source.Estado, Source.Fecha_Creacion, Source.Fecha_Modificacion
        );
END;
GO
/****** Object:  StoredProcedure [STG].[SP_CargarIncremental_ENCUESTAS_OPINIONES_CLIENTES]    Script Date: 23/10/2025 01:04:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [STG].[SP_CargarIncremental_ENCUESTAS_OPINIONES_CLIENTES]
AS
BEGIN
    SET NOCOUNT ON;
    MERGE STG.ENCUESTAS_OPINIONES_CLIENTES AS Target
    USING SIAA.MKT.ENCUESTAS_OPINIONES_CLIENTES AS Source
    ON (Target.ID_Registro = Source.ID_Registro)
    WHEN MATCHED AND (
        Target.Fecha_Modificacion_Origen IS NULL OR
        Source.Fecha_Modificacion IS NULL OR
        Target.Fecha_Modificacion_Origen < Source.Fecha_Modificacion
    )
    THEN UPDATE SET
        Target.ID_Pasajero = Source.ID_Pasajero,
        Target.ID_Vuelo = Source.ID_Vuelo,
        Target.Fecha = Source.Fecha,
        Target.Puntualidad = Source.Puntualidad,
        Target.Comodidad = Source.Comodidad,
        Target.Servicio_Bordo = Source.Servicio_Bordo,
        Target.Limpieza = Source.Limpieza,
        Target.Calificacion_Global = Source.Calificacion_Global,
        Target.Comentario = Source.Comentario,
        Target.Tipo_Servicio = Source.Tipo_Servicio,
        Target.Fecha_Creacion_Origen = Source.Fecha_Creacion,
        Target.Fecha_Modificacion_Origen = Source.Fecha_Modificacion
    WHEN NOT MATCHED BY TARGET THEN
        INSERT (
            ID_Registro, ID_Pasajero, ID_Vuelo, Fecha, Puntualidad, Comodidad, Servicio_Bordo,
            Limpieza, Calificacion_Global, Comentario, Tipo_Servicio,
            Fecha_Creacion_Origen, Fecha_Modificacion_Origen
        )
        VALUES (
            Source.ID_Registro, Source.ID_Pasajero, Source.ID_Vuelo, Source.Fecha, Source.Puntualidad, Source.Comodidad, Source.Servicio_Bordo,
            Source.Limpieza, Source.Calificacion_Global, Source.Comentario, Source.Tipo_Servicio,
            Source.Fecha_Creacion, Source.Fecha_Modificacion
        );
END;
GO
/****** Object:  StoredProcedure [STG].[SP_CargarIncremental_EQUIPAJE]    Script Date: 23/10/2025 01:04:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [STG].[SP_CargarIncremental_EQUIPAJE]
AS
BEGIN
    SET NOCOUNT ON;
    MERGE STG.EQUIPAJE AS Target
    USING SIAA.EQP.EQUIPAJE AS Source
    ON (Target.ID_Equipaje = Source.ID_Equipaje)
    WHEN MATCHED AND (
        Target.Fecha_Modificacion_Origen IS NULL OR
        Source.Fecha_Modificacion IS NULL OR
        Target.Fecha_Modificacion_Origen < Source.Fecha_Modificacion
    )
    THEN UPDATE SET
        Target.ID_Pasajero = Source.ID_Pasajero,
        Target.ID_Vuelo = Source.ID_Vuelo,
        Target.Codigo_Equipaje = Source.Codigo_Equipaje,
        Target.Tipo = Source.Tipo,
        Target.Peso = Source.Peso,
        Target.Dimensiones = Source.Dimensiones,
        Target.Estado = Source.Estado,
        Target.Fecha_Registro = Source.Fecha_Registro,
        Target.Observaciones = Source.Observaciones,
        Target.Fecha_Creacion_Origen = Source.Fecha_Creacion,
        Target.Fecha_Modificacion_Origen = Source.Fecha_Modificacion
    WHEN NOT MATCHED BY TARGET THEN
        INSERT (
            ID_Equipaje, ID_Pasajero, ID_Vuelo, Codigo_Equipaje, Tipo, Peso, Dimensiones,
            Estado, Fecha_Registro, Observaciones, Fecha_Creacion_Origen, Fecha_Modificacion_Origen
        )
        VALUES (
            Source.ID_Equipaje, Source.ID_Pasajero, Source.ID_Vuelo, Source.Codigo_Equipaje, Source.Tipo, Source.Peso, Source.Dimensiones,
            Source.Estado, Source.Fecha_Registro, Source.Observaciones, Source.Fecha_Creacion, Source.Fecha_Modificacion
        );
END;
GO
/****** Object:  StoredProcedure [STG].[SP_CargarIncremental_EQUIPAMIENTO_ESPECIAL]    Script Date: 23/10/2025 01:04:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [STG].[SP_CargarIncremental_EQUIPAMIENTO_ESPECIAL]
AS
BEGIN
    SET NOCOUNT ON;
    MERGE STG.EQUIPAMIENTO_ESPECIAL AS Target
    USING SIAA.EQP.EQUIPAMIENTO_ESPECIAL AS Source
    ON (Target.ID_Equipamiento = Source.ID_Equipamiento)
    WHEN MATCHED AND (
        Target.Fecha_Modificacion_Origen IS NULL OR
        Source.Fecha_Modificacion IS NULL OR
        Target.Fecha_Modificacion_Origen < Source.Fecha_Modificacion
    )
    THEN UPDATE SET
        Target.ID_Reservacion = Source.ID_Reservacion, -- ID_Equipaje corregido
        Target.Tipo_Equipamiento = Source.Tipo_Equipamiento,
        Target.Descripcion = Source.Descripcion,
        Target.Peso_Kg = Source.Peso_Kg,
        Target.Dimensiones_CM = Source.Dimensiones_CM,
        Target.Requiere_Manejo_Especial = Source.Requiere_Manejo_Especial,
        Target.Costo_Adicional = Source.Costo_Adicional,
        Target.Estado = Source.Estado,
        Target.Fecha_Creacion_Origen = Source.Fecha_Creacion,
        Target.Fecha_Modificacion_Origen = Source.Fecha_Modificacion
    WHEN NOT MATCHED BY TARGET THEN
        INSERT (
            ID_Equipamiento, ID_Reservacion, Tipo_Equipamiento, Descripcion, Peso_Kg, -- ID_Equipaje corregido
            Dimensiones_CM, Requiere_Manejo_Especial, Costo_Adicional, Estado,
            Fecha_Creacion_Origen, Fecha_Modificacion_Origen
        )
        VALUES (
            Source.ID_Equipamiento, Source.ID_Reservacion, Source.Tipo_Equipamiento, Source.Descripcion, Source.Peso_Kg, -- Source.ID_Equipaje corregido
            Source.Dimensiones_CM, Source.Requiere_Manejo_Especial, Source.Costo_Adicional, Source.Estado,
            Source.Fecha_Creacion, Source.Fecha_Modificacion
        );
END;
GO
/****** Object:  StoredProcedure [STG].[SP_CargarIncremental_ESTADISTICAS_DIARIAS]    Script Date: 23/10/2025 01:04:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [STG].[SP_CargarIncremental_ESTADISTICAS_DIARIAS]
AS
BEGIN
    SET NOCOUNT ON;
    MERGE STG.ESTADISTICAS_DIARIAS AS Target
    USING SIAA.INT.ESTADISTICAS_DIARIAS AS Source
    ON (Target.Fecha = Source.Fecha) -- Clave primaria para MERGE es 'Fecha'
    WHEN MATCHED AND (
        Target.Fecha_Modificacion_Origen IS NULL OR -- Si el original no tenía fecha de modificación
        Source.Fecha_Modificacion IS NULL OR       -- Si la fuente no tiene fecha de modificación (improbable para actualización)
        Target.Fecha_Modificacion_Origen < Source.Fecha_Modificacion -- O la fecha de modificación en la fuente es más reciente
    )
    THEN UPDATE SET
        Target.Total_Vuelos = Source.Total_Vuelos,
        Target.Vuelos_Retrasados = Source.Vuelos_Retrasados,
        Target.Total_Pasajeros = Source.Total_Pasajeros,
        Target.Cancelaciones = Source.Cancelaciones,
        Target.Carga_Transportada_Kg = Source.Carga_Transportada_Kg,
        Target.Fecha_Creacion_Origen = Source.Fecha_Creacion,
        Target.Fecha_Modificacion_Origen = Source.Fecha_Modificacion
    WHEN NOT MATCHED BY TARGET THEN
        INSERT (
            Fecha, Total_Vuelos, Vuelos_Retrasados, Total_Pasajeros, Cancelaciones, Carga_Transportada_Kg,
            Fecha_Creacion_Origen, Fecha_Modificacion_Origen
        )
        VALUES (
            Source.Fecha, Source.Total_Vuelos, Source.Vuelos_Retrasados, Source.Total_Pasajeros, Source.Cancelaciones, Source.Carga_Transportada_Kg,
            Source.Fecha_Creacion, Source.Fecha_Modificacion
        );
END;
GO
/****** Object:  StoredProcedure [STG].[SP_CargarIncremental_FIDELIDAD_PASAJERO]    Script Date: 23/10/2025 01:04:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [STG].[SP_CargarIncremental_FIDELIDAD_PASAJERO]
AS
BEGIN
    SET NOCOUNT ON;
    MERGE STG.FIDELIDAD_PASAJERO AS Target
    USING SIAA.MKT.FIDELIDAD_PASAJERO AS Source
    ON (Target.ID_Registro = Source.ID_Registro)
    WHEN MATCHED AND (
        Target.Fecha_Modificacion_Origen IS NULL OR
        Source.Fecha_Modificacion IS NULL OR
        Target.Fecha_Modificacion_Origen < Source.Fecha_Modificacion
    )
    THEN UPDATE SET
        Target.ID_Pasajero = Source.ID_Pasajero,
        Target.Puntos_Acumulados = Source.Puntos_Acumulados,
        Target.Ultima_Actualizacion = Source.Ultima_Actualizacion,
        Target.Nivel_Fidelidad = Source.Nivel_Fidelidad,
        Target.Fecha_Creacion_Origen = Source.Fecha_Creacion,
        Target.Fecha_Modificacion_Origen = Source.Fecha_Modificacion
    WHEN NOT MATCHED BY TARGET THEN
        INSERT (
            ID_Registro, ID_Pasajero, Puntos_Acumulados, Ultima_Actualizacion, Nivel_Fidelidad,
            Fecha_Creacion_Origen, Fecha_Modificacion_Origen
        )
        VALUES (
            Source.ID_Registro, Source.ID_Pasajero, Source.Puntos_Acumulados, Source.Ultima_Actualizacion, Source.Nivel_Fidelidad,
            Source.Fecha_Creacion, Source.Fecha_Modificacion
        );
END;
GO
/****** Object:  StoredProcedure [STG].[SP_CargarIncremental_FRECUENCIAS]    Script Date: 23/10/2025 01:04:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [STG].[SP_CargarIncremental_FRECUENCIAS]
AS
BEGIN
    SET NOCOUNT ON;
    MERGE STG.FRECUENCIAS AS Target
    USING SIAA.VUE.FRECUENCIAS AS Source
    ON (Target.ID_Frecuencia = Source.ID_Frecuencia)
    WHEN MATCHED AND (
        Target.Fecha_Modificacion_Origen IS NULL OR
        Source.Fecha_Modificacion IS NULL OR
        Target.Fecha_Modificacion_Origen < Source.Fecha_Modificacion
    )
    THEN UPDATE SET
        Target.Descripcion = Source.Descripcion,
        Target.Fecha_Creacion_Origen = Source.Fecha_Creacion,
        Target.Fecha_Modificacion_Origen = Source.Fecha_Modificacion
    WHEN NOT MATCHED BY TARGET THEN
        INSERT (
            ID_Frecuencia, Descripcion, Fecha_Creacion_Origen, Fecha_Modificacion_Origen
        )
        VALUES (
            Source.ID_Frecuencia, Source.Descripcion, Source.Fecha_Creacion, Source.Fecha_Modificacion
        );
END;
GO
/****** Object:  StoredProcedure [STG].[SP_CargarIncremental_GESTION_ADMVUELOS]    Script Date: 23/10/2025 01:04:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [STG].[SP_CargarIncremental_GESTION_ADMVUELOS]
AS
BEGIN
    SET NOCOUNT ON;
    MERGE STG.GESTION_ADMVUELOS AS Target
    USING SIAA.COM.GESTION_ADMVUELOS AS Source
    ON (Target.ID_Gestion = Source.ID_Gestion)
    WHEN MATCHED AND (
        Target.Fecha_Modificacion_Origen IS NULL OR
        Source.Fecha_Modificacion IS NULL OR
        Target.Fecha_Modificacion_Origen < Source.Fecha_Modificacion
    )
    THEN UPDATE SET
        Target.ID_Vuelo = Source.ID_Vuelo,
        Target.ID_Aerolinea = Source.ID_Aerolinea,
        Target.ID_Pasajero = Source.ID_Pasajero,
        Target.ID_Paseabordaje = Source.ID_Paseabordaje,
        Target.Costo_Paseabordaje = Source.Costo_Paseabordaje,
	Target.Clase = Source.Clase,
	Target.Origen = Source.Origen,
	Target.Destino = Source.Destino,
        Target.Fecha_Creacion_Origen = Source.Fecha_Creacion,
        Target.Fecha_Modificacion_Origen = Source.Fecha_Modificacion
        -- Fecha_Actualizacion_Staging se actualiza por Trigger AFTER UPDATE
    WHEN NOT MATCHED BY TARGET THEN
        INSERT (
            ID_Gestion, ID_Vuelo, ID_Aerolinea, ID_Pasajero, ID_Paseabordaje,
        Costo_Paseabordaje, Clase, Origen, Destino, Fecha_Creacion_Origen, Fecha_Modificacion_Origen
            -- Fecha_Carga_Staging se auto-rellena con DEFAULT
            -- Fecha_Actualizacion_Staging será NULL por defecto
        )
        VALUES (
            Source.ID_Gestion, Source.ID_Vuelo, Source.ID_Aerolinea, Source.ID_Pasajero, Source.ID_Paseabordaje, 
            Source.Costo_Paseabordaje, Source.Clase, Source.Origen, Source.Destino,
            Source.Fecha_Creacion, Source.Fecha_Modificacion
        );
END;
GO
/****** Object:  StoredProcedure [STG].[SP_CargarIncremental_HISTORICO_OPERACIONAL_VUELOS]    Script Date: 23/10/2025 01:04:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [STG].[SP_CargarIncremental_HISTORICO_OPERACIONAL_VUELOS]
AS
BEGIN
    SET NOCOUNT ON;
    MERGE STG.HISTORICO_OPERACIONAL_VUELOS AS Target
    USING SIAA.PRE.HISTORICO_OPERACIONAL_VUELOS AS Source
    ON (Target.ID_Historico = Source.ID_Historico)
    WHEN MATCHED AND (
        Target.Fecha_Modificacion_Origen IS NULL OR
        Source.Fecha_Modificacion IS NULL OR
        Target.Fecha_Modificacion_Origen < Source.Fecha_Modificacion
    )
    THEN UPDATE SET
        Target.ID_Vuelo = Source.ID_Vuelo,
        Target.Fecha = Source.Fecha,
        Target.Hora_Salida_Programada = Source.Hora_Salida_Programada,
        Target.Hora_Salida_Real = Source.Hora_Salida_Real,
        Target.Clima_Temperatura = Source.Clima_Temperatura,
        Target.Clima_Humedad = Source.Clima_Humedad,
        Target.Clima_Condicion = Source.Clima_Condicion,
        Target.Retraso_Minutos = Source.Retraso_Minutos,
        Target.Estado_Vuelo = Source.Estado_Vuelo,
        Target.Carga_Pasajeros = Source.Carga_Pasajeros,
        Target.Carga_Carga_Kg = Source.Carga_Carga_Kg,
        Target.Observaciones = Source.Observaciones,
        Target.Fecha_Creacion_Origen = Source.Fecha_Creacion,
        Target.Fecha_Modificacion_Origen = Source.Fecha_Modificacion
    WHEN NOT MATCHED BY TARGET THEN
        INSERT (
            ID_Historico, ID_Vuelo, Fecha, Hora_Salida_Programada, Hora_Salida_Real,
            Clima_Temperatura, Clima_Humedad, Clima_Condicion, Retraso_Minutos,
            Estado_Vuelo, Carga_Pasajeros, Carga_Carga_Kg, Observaciones,
            Fecha_Creacion_Origen, Fecha_Modificacion_Origen
        )
        VALUES (
            Source.ID_Historico, Source.ID_Vuelo, Source.Fecha, Source.Hora_Salida_Programada, Source.Hora_Salida_Real,
            Source.Clima_Temperatura, Source.Clima_Humedad, Source.Clima_Condicion, Source.Retraso_Minutos,
            Source.Estado_Vuelo, Source.Carga_Pasajeros, Source.Carga_Carga_Kg, Source.Observaciones,
            Source.Fecha_Creacion, Source.Fecha_Modificacion
        );
END;
GO
/****** Object:  StoredProcedure [STG].[SP_CargarIncremental_HORARIOS_PROGRAMADOS]    Script Date: 23/10/2025 01:04:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [STG].[SP_CargarIncremental_HORARIOS_PROGRAMADOS]
AS
BEGIN
    SET NOCOUNT ON;
    MERGE STG.HORARIOS_PROGRAMADOS AS Target
    USING SIAA.VUE.HORARIOS_PROGRAMADOS AS Source
    ON (Target.ID_Horario = Source.ID_Horario)
    WHEN MATCHED AND (
        Target.Fecha_Modificacion_Origen IS NULL OR
        Source.Fecha_Modificacion IS NULL OR
        Target.Fecha_Modificacion_Origen < Source.Fecha_Modificacion
    )
    THEN UPDATE SET
        Target.ID_Ruta = Source.ID_Ruta,
        Target.ID_Frecuencia = Source.ID_Frecuencia,
        Target.Hora_Salida = Source.Hora_Salida,
        Target.Hora_Llegada = Source.Hora_Llegada,
        Target.Fecha_Creacion_Origen = Source.Fecha_Creacion,
        Target.Fecha_Modificacion_Origen = Source.Fecha_Modificacion
    WHEN NOT MATCHED BY TARGET THEN
        INSERT (
            ID_Horario, ID_Ruta, ID_Frecuencia, Hora_Salida, Hora_Llegada,
            Fecha_Creacion_Origen, Fecha_Modificacion_Origen
        )
        VALUES (
            Source.ID_Horario, Source.ID_Ruta, Source.ID_Frecuencia, Source.Hora_Salida, Source.Hora_Llegada,
            Source.Fecha_Creacion, Source.Fecha_Modificacion
        );
END;
GO
/****** Object:  StoredProcedure [STG].[SP_CargarIncremental_INCIDENTES_OPERATIVOS]    Script Date: 23/10/2025 01:04:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [STG].[SP_CargarIncremental_INCIDENTES_OPERATIVOS]
AS
BEGIN
    SET NOCOUNT ON;
    MERGE STG.INCIDENTES_OPERATIVOS AS Target
    USING SIAA.INT.INCIDENTES_OPERATIVOS AS Source
    ON (Target.ID_Incidente = Source.ID_Incidente)
    WHEN MATCHED AND (
        Target.Fecha_Modificacion_Origen IS NULL OR
        Source.Fecha_Modificacion IS NULL OR
        Target.Fecha_Modificacion_Origen < Source.Fecha_Modificacion
    )
    THEN UPDATE SET
        Target.Fecha = Source.Fecha,
        Target.Hora = Source.Hora,
        Target.ID_Vuelo = Source.ID_Vuelo,
        Target.ID_Aeronave = Source.ID_Aeronave,
        Target.Tipo_Incidente = Source.Tipo_Incidente,
        Target.Descripcion = Source.Descripcion,
        Target.Nivel_Severidad = Source.Nivel_Severidad,
        Target.Reportado_Por = Source.Reportado_Por,
        Target.Fecha_Creacion_Origen = Source.Fecha_Creacion,
        Target.Fecha_Modificacion_Origen = Source.Fecha_Modificacion
    WHEN NOT MATCHED BY TARGET THEN
        INSERT (
            ID_Incidente, Fecha, Hora, ID_Vuelo, ID_Aeronave, Tipo_Incidente,
            Descripcion, Nivel_Severidad, Reportado_Por, Fecha_Creacion_Origen, Fecha_Modificacion_Origen
        )
        VALUES (
            Source.ID_Incidente, Source.Fecha, Source.Hora, Source.ID_Vuelo, Source.ID_Aeronave, Source.Tipo_Incidente,
            Source.Descripcion, Source.Nivel_Severidad, Source.Reportado_Por, Source.Fecha_Creacion, Source.Fecha_Modificacion
        );
END;
GO
/****** Object:  StoredProcedure [STG].[SP_CargarIncremental_INCIDENTES_SEGURIDAD]    Script Date: 23/10/2025 01:04:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [STG].[SP_CargarIncremental_INCIDENTES_SEGURIDAD]
AS
BEGIN
    SET NOCOUNT ON;
    MERGE STG.INCIDENTES_SEGURIDAD AS Target
    USING SIAA.SEG.INCIDENTES_SEGURIDAD AS Source
    ON (Target.ID_Incidente = Source.ID_Incidente)
    WHEN MATCHED AND (
        Target.Fecha_Modificacion_Origen IS NULL OR
        Source.Fecha_Modificacion IS NULL OR
        Target.Fecha_Modificacion_Origen < Source.Fecha_Modificacion
    )
    THEN UPDATE SET
        Target.ID_Vuelo = Source.ID_Vuelo,
        Target.Fecha_Incidente = Source.Fecha_Incidente,
        Target.Tipo_Incidente = Source.Tipo_Incidente,
        Target.Descripcion = Source.Descripcion,
        Target.Accion_Tomada = Source.Accion_Tomada,
        Target.Fecha_Creacion_Origen = Source.Fecha_Creacion,
        Target.Fecha_Modificacion_Origen = Source.Fecha_Modificacion
    WHEN NOT MATCHED BY TARGET THEN
        INSERT (
            ID_Incidente, ID_Vuelo, Fecha_Incidente, Tipo_Incidente, Descripcion, Accion_Tomada,
            Fecha_Creacion_Origen, Fecha_Modificacion_Origen
        )
        VALUES (
            Source.ID_Incidente, Source.ID_Vuelo, Source.Fecha_Incidente, Source.Tipo_Incidente, Source.Descripcion, Source.Accion_Tomada,
            Source.Fecha_Creacion, Source.Fecha_Modificacion
        );
END;
GO
/****** Object:  StoredProcedure [STG].[SP_CargarIncremental_INSPECCIONES_AUDITORIAS]    Script Date: 23/10/2025 01:04:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [STG].[SP_CargarIncremental_INSPECCIONES_AUDITORIAS]
AS
BEGIN
    SET NOCOUNT ON;

    MERGE STG.INSPECCIONES_AUDITORIAS AS Target
    USING SIAA.CTI.INSPECCIONES_AUDITORIAS AS Source
    ON (Target.ID_Inspeccion = Source.ID_Inspeccion)
    WHEN MATCHED AND (
        -- Condición para actualizar: si la Fecha_Modificacion del origen es más reciente
        -- o si cualquier campo relevante ha cambiado (excluyendo las columnas de auditoría de staging)
        Target.Fecha_Modificacion IS NULL OR 
        Source.Fecha_Modificacion IS NULL OR
        Target.Fecha_Modificacion < Source.Fecha_Modificacion OR 
        -- Incluye otros campos que puedan cambiar y no tengan fecha de modificación propia
        ISNULL(Target.Fecha, '1900-01-01') <> ISNULL(Source.Fecha, '1900-01-01') OR -- CORRECCIÓN: Compara STG.Fecha con Source.Fecha
        ISNULL(Target.Tipo_Inspeccion, 'N/A') <> ISNULL(Source.Tipo_Inspeccion, 'N/A') OR 
        ISNULL(Target.Area_Evaluada, 'N/A') <> ISNULL(Source.Area_Evaluada, 'N/A') OR
        ISNULL(Target.Responsable, '') <> ISNULL(Source.Responsable, '') OR 
        ISNULL(Target.Resultado, '') <> ISNULL(Source.Resultado, '') OR
        ISNULL(Target.Observaciones, '') <> ISNULL(Source.Observaciones, '') OR
        ISNULL(Target.Accion_Correctiva_Requerida, 0) <> ISNULL(Source.Accion_Correctiva_Requerida, 0) 
    )
    THEN UPDATE SET
        Target.Fecha = Source.Fecha, -- CORRECCIÓN: Mapea a STG.Fecha
        Target.Tipo_Inspeccion = ISNULL(Source.Tipo_Inspeccion, 'N/A'), 
        Target.Area_Evaluada = ISNULL(Source.Area_Evaluada, 'N/A'),
        Target.Responsable = Source.Responsable, 
        Target.Resultado = Source.Resultado,
        Target.Observaciones = Source.Observaciones,
        Target.Accion_Correctiva_Requerida = Source.Accion_Correctiva_Requerida, 
        Target.Fecha_Creacion = Source.Fecha_Creacion, 
        Target.Fecha_Modificacion = Source.Fecha_Modificacion 
    WHEN NOT MATCHED BY TARGET THEN
        INSERT (
            ID_Inspeccion,
            Fecha,
            Tipo_Inspeccion,
            Area_Evaluada,
            Responsable,
            Resultado,
            Observaciones,
            Accion_Correctiva_Requerida,
            Fecha_Creacion,
            Fecha_Modificacion
        )
        VALUES (
            Source.ID_Inspeccion,
            Source.Fecha,
            ISNULL(Source.Tipo_Inspeccion, 'N/A'),
            ISNULL(Source.Area_Evaluada, 'N/A'),
            Source.Responsable,
            Source.Resultado,
            Source.Observaciones,
            Source.Accion_Correctiva_Requerida,
            Source.Fecha_Creacion,
            Source.Fecha_Modificacion
        );
END;
GO
/****** Object:  StoredProcedure [STG].[SP_CargarIncremental_INTERVENCIONES_EMERGENCIA]    Script Date: 23/10/2025 01:04:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [STG].[SP_CargarIncremental_INTERVENCIONES_EMERGENCIA]
AS
BEGIN
    SET NOCOUNT ON;
    MERGE STG.INTERVENCIONES_EMERGENCIA AS Target
    USING SIAA.EMR.INTERVENCIONES_EMERGENCIA AS Source
    ON (Target.ID_Intervencion = Source.ID_Intervencion)
    WHEN MATCHED AND (
        Target.Fecha_Modificacion_Origen IS NULL OR
        Source.Fecha_Modificacion IS NULL OR
        Target.Fecha_Modificacion_Origen < Source.Fecha_Modificacion
    )
    THEN UPDATE SET
        Target.ID_Unidad = Source.ID_Unidad,
        Target.ID_Vuelo = Source.ID_Vuelo,
        Target.Fecha = Source.Fecha,
        Target.Tipo_Incidente = Source.Tipo_Incidente,
        Target.Resultado = Source.Resultado,
        Target.Observaciones = Source.Observaciones,
        Target.Fecha_Creacion_Origen = Source.Fecha_Creacion,
        Target.Fecha_Modificacion_Origen = Source.Fecha_Modificacion
    WHEN NOT MATCHED BY TARGET THEN
        INSERT (
            ID_Intervencion, ID_Unidad, ID_Vuelo, Fecha, Tipo_Incidente,
            Resultado, Observaciones, Fecha_Creacion_Origen, Fecha_Modificacion_Origen
        )
        VALUES (
            Source.ID_Intervencion, Source.ID_Unidad, Source.ID_Vuelo, Source.Fecha, Source.Tipo_Incidente,
            Source.Resultado, Source.Observaciones, Source.Fecha_Creacion, Source.Fecha_Modificacion
        );
END;
GO
/****** Object:  StoredProcedure [STG].[SP_CargarIncremental_LOGISTICA_TERRESTRE]    Script Date: 23/10/2025 01:04:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [STG].[SP_CargarIncremental_LOGISTICA_TERRESTRE]
AS
BEGIN
    SET NOCOUNT ON;
    MERGE STG.LOGISTICA_TERRESTRE AS Target
    USING SIAA.LGT.LOGISTICA_TERRESTRE AS Source
    ON (Target.ID_Transporte = Source.ID_Transporte)
    WHEN MATCHED AND (
        Target.Fecha_Modificacion_Origen IS NULL OR
        Source.Fecha_Modificacion IS NULL OR
        Target.Fecha_Modificacion_Origen < Source.Fecha_Modificacion
    )
    THEN UPDATE SET
        Target.Tipo_Transporte = Source.Tipo_Transporte,
        Target.Origen = Source.Origen,
        Target.Destino = Source.Destino,
        Target.Hora_Salida = Source.Hora_Salida,
        Target.Hora_Llegada = Source.Hora_Llegada,
        Target.Responsable = Source.Responsable,
        Target.Capacidad = Source.Capacidad,
        Target.Estado = Source.Estado,
        Target.Fecha_Creacion_Origen = Source.Fecha_Creacion,
        Target.Fecha_Modificacion_Origen = Source.Fecha_Modificacion
    WHEN NOT MATCHED BY TARGET THEN
        INSERT (
            ID_Transporte, Tipo_Transporte, Origen, Destino, Hora_Salida,
            Hora_Llegada, Responsable, Capacidad, Estado,
            Fecha_Creacion_Origen, Fecha_Modificacion_Origen
        )
        VALUES (
            Source.ID_Transporte, Source.Tipo_Transporte, Source.Origen, Source.Destino, Source.Hora_Salida,
            Source.Hora_Llegada, Source.Responsable, Source.Capacidad, Source.Estado,
            Source.Fecha_Creacion, Source.Fecha_Modificacion
        );
END;
GO
/****** Object:  StoredProcedure [STG].[SP_CargarIncremental_MANTENIMIENTO]    Script Date: 23/10/2025 01:04:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [STG].[SP_CargarIncremental_MANTENIMIENTO]
AS
BEGIN
    SET NOCOUNT ON;
    MERGE STG.MANTENIMIENTO AS Target
    USING SIAA.TEC.MANTENIMIENTO AS Source
    ON (Target.ID_Mantenimiento = Source.ID_Mantenimiento)
    WHEN MATCHED AND (
        Target.Fecha_Modificacion_Origen IS NULL OR
        Source.Fecha_Modificacion IS NULL OR
        Target.Fecha_Modificacion_Origen < Source.Fecha_Modificacion
    )
    THEN UPDATE SET
        Target.ID_Aeronave = Source.ID_Aeronave,
        Target.Fecha = Source.Fecha,
        Target.Hora = Source.Hora,
        Target.Tipo_Mantenimiento = Source.Tipo_Mantenimiento,
        Target.Descripcion = Source.Descripcion,
        Target.Costo = Source.Costo,
        Target.Estado = Source.Estado,
        Target.Tecnico_Responsable = Source.Tecnico_Responsable,
        Target.Observaciones = Source.Observaciones,
        Target.Fecha_Creacion_Origen = Source.Fecha_Creacion,
        Target.Fecha_Modificacion_Origen = Source.Fecha_Modificacion
    WHEN NOT MATCHED BY TARGET THEN
        INSERT (
            ID_Mantenimiento, ID_Aeronave, Fecha, Hora, Tipo_Mantenimiento, Descripcion,
            Costo, Estado, Tecnico_Responsable, Observaciones,
            Fecha_Creacion_Origen, Fecha_Modificacion_Origen
        )
        VALUES (
            Source.ID_Mantenimiento, Source.ID_Aeronave, Source.Fecha, Source.Hora, Source.Tipo_Mantenimiento, Source.Descripcion,
            Source.Costo, Source.Estado, Source.Tecnico_Responsable, Source.Observaciones,
            Source.Fecha_Creacion, Source.Fecha_Modificacion
        );
END;
GO
/****** Object:  StoredProcedure [STG].[SP_CargarIncremental_MIGRACION_ADUANA]    Script Date: 23/10/2025 01:04:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [STG].[SP_CargarIncremental_MIGRACION_ADUANA]
AS
BEGIN
    SET NOCOUNT ON;
    MERGE STG.MIGRACION_ADUANA AS Target
    USING SIAA.MIG.MIGRACION_ADUANA AS Source
    ON (Target.ID_Registro = Source.ID_Registro)
    WHEN MATCHED AND (
        Target.Fecha_Modificacion_Origen IS NULL OR
        Source.Fecha_Modificacion IS NULL OR
        Target.Fecha_Modificacion_Origen < Source.Fecha_Modificacion
    )
    THEN UPDATE SET
        Target.ID_Reservacion = Source.ID_Reservacion,
        Target.Fecha_Proceso = Source.Fecha_Proceso,
        Target.Tipo_Proceso = Source.Tipo_Proceso,
        Target.Estado = Source.Estado,
        Target.Observaciones = Source.Observaciones,
        Target.Fecha_Creacion_Origen = Source.Fecha_Creacion,
        Target.Fecha_Modificacion_Origen = Source.Fecha_Modificacion
    WHEN NOT MATCHED BY TARGET THEN
        INSERT (
            ID_Registro, ID_Reservacion, Fecha_Proceso, Tipo_Proceso, Estado, Observaciones,
            Fecha_Creacion_Origen, Fecha_Modificacion_Origen
        )
        VALUES (
            Source.ID_Registro, Source.ID_Reservacion, Source.Fecha_Proceso, Source.Tipo_Proceso, Source.Estado, Source.Observaciones,
            Source.Fecha_Creacion, Source.Fecha_Modificacion
        );
END;
GO
/****** Object:  StoredProcedure [STG].[SP_CargarIncremental_OFERTAS_APLICADAS]    Script Date: 23/10/2025 01:04:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [STG].[SP_CargarIncremental_OFERTAS_APLICADAS]
AS
BEGIN
    SET NOCOUNT ON;
    MERGE STG.OFERTAS_APLICADAS AS Target
    USING SIAA.MKT.OFERTAS_APLICADAS AS Source
    ON (Target.ID_Oferta = Source.ID_Oferta)
    WHEN MATCHED AND (
        Target.Fecha_Modificacion_Origen IS NULL OR
        Source.Fecha_Modificacion IS NULL OR
        Target.Fecha_Modificacion_Origen < Source.Fecha_Modificacion
    )
    THEN UPDATE SET
        Target.ID_Camp = Source.ID_Camp,
        Target.ID_Reservacion = Source.ID_Reservacion,
        Target.Descuento_Porcentaje = Source.Descuento_Porcentaje,
        Target.Monto_Descontado = Source.Monto_Descontado,
        Target.Fecha_Aplicacion = Source.Fecha_Aplicacion,
        Target.Fecha_Creacion_Origen = Source.Fecha_Creacion,
        Target.Fecha_Modificacion_Origen = Source.Fecha_Modificacion
    WHEN NOT MATCHED BY TARGET THEN
        INSERT (
            ID_Oferta, ID_Camp, ID_Reservacion, Descuento_Porcentaje, Monto_Descontado, Fecha_Aplicacion,
            Fecha_Creacion_Origen, Fecha_Modificacion_Origen
        )
        VALUES (
            Source.ID_Oferta, Source.ID_Camp, Source.ID_Reservacion, Source.Descuento_Porcentaje, Source.Monto_Descontado, Source.Fecha_Aplicacion,
            Source.Fecha_Creacion, Source.Fecha_Modificacion
        );
END;
GO
/****** Object:  StoredProcedure [STG].[SP_CargarIncremental_OPERADORES_CARGA]    Script Date: 23/10/2025 01:04:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [STG].[SP_CargarIncremental_OPERADORES_CARGA]
AS
BEGIN
    SET NOCOUNT ON;
    MERGE STG.OPERADORES_CARGA AS Target
    USING SIAA.CRG.OPERADORES_CARGA AS Source
    ON (Target.ID_Operador = Source.ID_Operador)
    WHEN MATCHED AND (
        Target.Fecha_Modificacion_Origen IS NULL OR
        Source.Fecha_Modificacion IS NULL OR
        Target.Fecha_Modificacion_Origen < Source.Fecha_Modificacion
    )
    THEN UPDATE SET
        Target.Nombre = Source.Nombre,
        Target.Pais_Origen = Source.Pais_Origen,
        Target.Tipo_Operador = Source.Tipo_Operador,
        Target.Contacto = Source.Contacto,
        Target.Fecha_Creacion_Origen = Source.Fecha_Creacion,
        Target.Fecha_Modificacion_Origen = Source.Fecha_Modificacion
    WHEN NOT MATCHED BY TARGET THEN
        INSERT (
            ID_Operador, Nombre, Pais_Origen, Tipo_Operador, Contacto,
            Fecha_Creacion_Origen, Fecha_Modificacion_Origen
        )
        VALUES (
            Source.ID_Operador, Source.Nombre, Source.Pais_Origen, Source.Tipo_Operador, Source.Contacto,
            Source.Fecha_Creacion, Source.Fecha_Modificacion
        );
END;
GO
/****** Object:  StoredProcedure [STG].[SP_CargarIncremental_PAGOS]    Script Date: 23/10/2025 01:04:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [STG].[SP_CargarIncremental_PAGOS]
AS
BEGIN
    SET NOCOUNT ON;
    MERGE STG.PAGOS AS Target
    USING SIAA.COM.PAGOS AS Source
    ON (Target.ID_Pago = Source.ID_Pago)
    WHEN MATCHED AND (
        Target.Fecha_Modificacion_Origen IS NULL OR
        Source.Fecha_Modificacion IS NULL OR
        Target.Fecha_Modificacion_Origen < Source.Fecha_Modificacion
    )
    THEN UPDATE SET
        Target.ID_Reservacion = Source.ID_Reservacion,
        Target.Fecha_Pago = Source.Fecha_Pago,
        Target.Monto = Source.Monto,
        Target.Metodo_Pago = Source.Metodo_Pago,
        Target.Estado = Source.Estado,
        Target.Fecha_Creacion_Origen = Source.Fecha_Creacion,
        Target.Fecha_Modificacion_Origen = Source.Fecha_Modificacion
    WHEN NOT MATCHED BY TARGET THEN
        INSERT (
            ID_Pago, ID_Reservacion, Fecha_Pago, Monto, Metodo_Pago, Estado,
            Fecha_Creacion_Origen, Fecha_Modificacion_Origen
        )
        VALUES (
            Source.ID_Pago, Source.ID_Reservacion, Source.Fecha_Pago, Source.Monto, Source.Metodo_Pago, Source.Estado,
            Source.Fecha_Creacion, Source.Fecha_Modificacion
        );
END;
GO
/****** Object:  StoredProcedure [STG].[SP_CargarIncremental_PAISES]    Script Date: 23/10/2025 01:04:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [STG].[SP_CargarIncremental_PAISES]
AS
BEGIN
    SET NOCOUNT ON;
    MERGE STG.PAISES AS Target
    USING SIAA.INF.PAISES AS Source
    ON (Target.ID_Pais = Source.ID_Pais)
    WHEN MATCHED AND (
        Target.Fecha_Modificacion_Origen IS NULL OR
        Source.Fecha_Modificacion IS NULL OR
        Target.Fecha_Modificacion_Origen < Source.Fecha_Modificacion
    )
    THEN UPDATE SET
        Target.Nombre = Source.Nombre,
        Target.Codigo_ISO = Source.Codigo_ISO,
        Target.Fecha_Creacion_Origen = Source.Fecha_Creacion,
        Target.Fecha_Modificacion_Origen = Source.Fecha_Modificacion
    WHEN NOT MATCHED BY TARGET THEN
        INSERT (
            ID_Pais, Nombre, Codigo_ISO, Fecha_Creacion_Origen, Fecha_Modificacion_Origen
        )
        VALUES (
            Source.ID_Pais, Source.Nombre, Source.Codigo_ISO, Source.Fecha_Creacion, Source.Fecha_Modificacion
        );
END;
GO
/****** Object:  StoredProcedure [STG].[SP_CargarIncremental_PASAJEROS]    Script Date: 23/10/2025 01:04:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [STG].[SP_CargarIncremental_PASAJEROS]
AS
BEGIN
    SET NOCOUNT ON;
    MERGE STG.PASAJEROS AS Target
    USING SIAA.PAS.PASAJEROS AS Source
    ON (Target.ID_Pasajero = Source.ID_Pasajero)
    WHEN MATCHED AND (
        Target.Fecha_Modificacion_Origen IS NULL OR
        Source.Fecha_Modificacion IS NULL OR
        Target.Fecha_Modificacion_Origen < Source.Fecha_Modificacion
    )
    THEN UPDATE SET
        Target.Nombre = Source.Nombre,
        Target.Apellido = Source.Apellido,
        Target.Genero = Source.Genero,
        Target.Fecha_Nacimiento = Source.Fecha_Nacimiento,
        Target.Nacionalidad = Source.Nacionalidad,
        Target.Documento_Identidad = Source.Documento_Identidad,
        Target.Correo_Electronico = Source.Correo_Electronico,
        Target.Telefono = Source.Telefono,
        Target.Fecha_Creacion_Origen = Source.Fecha_Creacion,
        Target.Fecha_Modificacion_Origen = Source.Fecha_Modificacion
    WHEN NOT MATCHED BY TARGET THEN
        INSERT (
            ID_Pasajero, Nombre, Apellido, Genero, Fecha_Nacimiento, Nacionalidad, Documento_Identidad,
            Correo_Electronico, Telefono, Fecha_Creacion_Origen, Fecha_Modificacion_Origen
        )
        VALUES (
            Source.ID_Pasajero, Source.Nombre, Source.Apellido, Source.Genero, Source.Fecha_Nacimiento, Source.Nacionalidad, Source.Documento_Identidad,
            Source.Correo_Electronico, Source.Telefono, Source.Fecha_Creacion, Source.Fecha_Modificacion
        );
END;
GO
/****** Object:  StoredProcedure [STG].[SP_CargarIncremental_PASES_ABORDAJE]    Script Date: 23/10/2025 01:04:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [STG].[SP_CargarIncremental_PASES_ABORDAJE]
AS
BEGIN
    SET NOCOUNT ON;
    MERGE STG.PASES_ABORDAJE AS Target
    USING SIAA.COM.PASES_ABORDAJE AS Source
    ON (Target.ID_Paseabordaje = Source.ID_Paseabordaje)
    WHEN MATCHED AND (
        Target.Fecha_Modificacion_Origen IS NULL OR
        Source.Fecha_Modificacion IS NULL OR
        Target.Fecha_Modificacion_Origen < Source.Fecha_Modificacion
    )
    THEN UPDATE SET
        Target.ID_Pasajero = Source.ID_Pasajero,
        Target.ID_Vuelo = Source.ID_Vuelo,
        Target.Asiento = Source.Asiento,
        Target.Clase = Source.Clase,
        Target.Puerta_Embarque = Source.Puerta_Embarque,
        Target.Hora_Embarque = Source.Hora_Embarque,
        Target.Estado = Source.Estado,
        Target.Codigo_QR = Source.Codigo_QR,
        Target.Fecha_Emision = Source.Fecha_Emision,
        Target.Fecha_Creacion_Origen = Source.Fecha_Creacion,
        Target.Fecha_Modificacion_Origen = Source.Fecha_Modificacion
    WHEN NOT MATCHED BY TARGET THEN
        INSERT (
            ID_Paseabordaje, ID_Pasajero, ID_Vuelo, Asiento, Clase, Puerta_Embarque,
            Hora_Embarque, Estado, Codigo_QR, Fecha_Emision,
            Fecha_Creacion_Origen, Fecha_Modificacion_Origen
        )
        VALUES (
            Source.ID_Paseabordaje, Source.ID_Pasajero, Source.ID_Vuelo, Source.Asiento, Source.Clase, Source.Puerta_Embarque,
            Source.Hora_Embarque, Source.Estado, Source.Codigo_QR, Source.Fecha_Emision,
            Source.Fecha_Creacion, Source.Fecha_Modificacion
        );
END;
GO
/****** Object:  StoredProcedure [STG].[SP_CargarIncremental_PUERTAS_EMBARQUE]    Script Date: 23/10/2025 01:04:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [STG].[SP_CargarIncremental_PUERTAS_EMBARQUE]
AS
BEGIN
    SET NOCOUNT ON;
    MERGE STG.PUERTAS_EMBARQUE AS Target
    USING SIAA.INF.PUERTAS_EMBARQUE AS Source
    ON (Target.ID_Puerta = Source.ID_Puerta)
    WHEN MATCHED AND (
        Target.Fecha_Modificacion_Origen IS NULL OR
        Source.Fecha_Modificacion IS NULL OR
        Target.Fecha_Modificacion_Origen < Source.Fecha_Modificacion
    )
    THEN UPDATE SET
        Target.Codigo_Puerta = Source.Codigo_Puerta,
        Target.ID_Terminal = Source.ID_Terminal,
        Target.Tipo_Puerta = Source.Tipo_Puerta,
        Target.Estado = Source.Estado,
        Target.Fecha_Creacion_Origen = Source.Fecha_Creacion,
        Target.Fecha_Modificacion_Origen = Source.Fecha_Modificacion
    WHEN NOT MATCHED BY TARGET THEN
        INSERT (
            ID_Puerta, Codigo_Puerta, ID_Terminal, Tipo_Puerta, Estado, Fecha_Creacion_Origen, Fecha_Modificacion_Origen
        )
        VALUES (
            Source.ID_Puerta, Source.Codigo_Puerta, Source.ID_Terminal, Source.Tipo_Puerta, Source.Estado, Source.Fecha_Creacion, Source.Fecha_Modificacion
        );
END;
GO
/****** Object:  StoredProcedure [STG].[SP_CargarIncremental_REPORTES_GENERADOS]    Script Date: 23/10/2025 01:04:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [STG].[SP_CargarIncremental_REPORTES_GENERADOS]
AS
BEGIN
    SET NOCOUNT ON;
    MERGE STG.REPORTES_GENERADOS AS Target
    USING SIAA.AUD.REPORTES_GENERADOS AS Source
    ON (Target.ID_Reporte = Source.ID_Reporte)
    WHEN MATCHED AND (
        Target.Fecha_Modificacion_Origen IS NULL OR
        Source.Fecha_Modificacion IS NULL OR
        Target.Fecha_Modificacion_Origen < Source.Fecha_Modificacion
    )
    THEN UPDATE SET
        Target.ID_Evento = Source.ID_Evento,
        Target.Tipo_Reporte = Source.Tipo_Reporte,
        Target.Fecha_Generacion = Source.Fecha_Generacion,
        Target.Generado_Por = Source.Generado_Por,
        Target.Periodo_Desde = Source.Periodo_Desde,
        Target.Periodo_Hasta = Source.Periodo_Hasta,
        Target.Observaciones = Source.Observaciones,
        Target.Fecha_Creacion_Origen = Source.Fecha_Creacion,
        Target.Fecha_Modificacion_Origen = Source.Fecha_Modificacion
    WHEN NOT MATCHED BY TARGET THEN
        INSERT (
            ID_Reporte, ID_Evento, Tipo_Reporte, Fecha_Generacion, Generado_Por,
            Periodo_Desde, Periodo_Hasta, Observaciones,
            Fecha_Creacion_Origen, Fecha_Modificacion_Origen
        )
        VALUES (
            Source.ID_Reporte, Source.ID_Evento, Source.Tipo_Reporte, Source.Fecha_Generacion, Source.Generado_Por,
            Source.Periodo_Desde, Source.Periodo_Hasta, Source.Observaciones,
            Source.Fecha_Creacion, Source.Fecha_Modificacion
        );
END;
GO
/****** Object:  StoredProcedure [STG].[SP_CargarIncremental_RESERVACIONES]    Script Date: 23/10/2025 01:04:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [STG].[SP_CargarIncremental_RESERVACIONES]
AS
BEGIN
    SET NOCOUNT ON;
    MERGE STG.RESERVACIONES AS Target
    USING SIAA.COM.RESERVACIONES AS Source
    ON (Target.ID_Reservacion = Source.ID_Reservacion)
    WHEN MATCHED AND (
        Target.Fecha_Modificacion_Origen IS NULL OR
        Source.Fecha_Modificacion IS NULL OR
        Target.Fecha_Modificacion_Origen < Source.Fecha_Modificacion
    )
    THEN UPDATE SET
        Target.ID_Pasajero = Source.ID_Pasajero,
        Target.ID_Vuelo = Source.ID_Vuelo,
        Target.Fecha_Reservacion = Source.Fecha_Reservacion,
        Target.Clase = Source.Clase,
        Target.Costo = Source.Costo,
        Target.Estado = Source.Estado,
        Target.Fecha_Creacion_Origen = Source.Fecha_Creacion,
        Target.Fecha_Modificacion_Origen = Source.Fecha_Modificacion
    WHEN NOT MATCHED BY TARGET THEN
        INSERT (
            ID_Reservacion, ID_Pasajero, ID_Vuelo, Fecha_Reservacion, Clase, Costo, Estado,
            Fecha_Creacion_Origen, Fecha_Modificacion_Origen
        )
        VALUES (
            Source.ID_Reservacion, Source.ID_Pasajero, Source.ID_Vuelo, Source.Fecha_Reservacion, Source.Clase, Source.Costo, Source.Estado,
            Source.Fecha_Creacion, Source.Fecha_Modificacion
        );
END;
GO
/****** Object:  StoredProcedure [STG].[SP_CargarIncremental_RUTAS_AEREAS]    Script Date: 23/10/2025 01:04:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [STG].[SP_CargarIncremental_RUTAS_AEREAS]
AS
BEGIN
    SET NOCOUNT ON;
    MERGE STG.RUTAS_AEREAS AS Target
    USING SIAA.VUE.RUTAS_AEREAS AS Source
    ON (Target.ID_Ruta = Source.ID_Ruta)
    WHEN MATCHED AND (
        Target.Fecha_Modificacion_Origen IS NULL OR
        Source.Fecha_Modificacion IS NULL OR
        Target.Fecha_Modificacion_Origen < Source.Fecha_Modificacion
    )
    THEN UPDATE SET
        Target.ID_Aeropuerto_Origen = Source.ID_Aeropuerto_Origen,
        Target.ID_Aeropuerto_Destino = Source.ID_Aeropuerto_Destino,
        Target.Distancia_KM = Source.Distancia_KM,
        Target.Duracion_Estimada_MIN = Source.Duracion_Estimada_MIN,
        Target.Fecha_Creacion_Origen = Source.Fecha_Creacion,
        Target.Fecha_Modificacion_Origen = Source.Fecha_Modificacion
    WHEN NOT MATCHED BY TARGET THEN
        INSERT (
            ID_Ruta, ID_Aeropuerto_Origen, ID_Aeropuerto_Destino, Distancia_KM, Duracion_Estimada_MIN,
            Fecha_Creacion_Origen, Fecha_Modificacion_Origen
        )
        VALUES (
            Source.ID_Ruta, Source.ID_Aeropuerto_Origen, Source.ID_Aeropuerto_Destino, Source.Distancia_KM, Source.Duracion_Estimada_MIN,
            Source.Fecha_Creacion, Source.Fecha_Modificacion
        );
END;
GO
/****** Object:  StoredProcedure [STG].[SP_CargarIncremental_SERVICIOS_BORDO]    Script Date: 23/10/2025 01:04:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [STG].[SP_CargarIncremental_SERVICIOS_BORDO]
AS
BEGIN
    SET NOCOUNT ON;
    MERGE STG.SERVICIOS_BORDO AS Target
    USING SIAA.SAB.SERVICIOS_BORDO AS Source
    ON (Target.ID_Servicio = Source.ID_Servicio)
    WHEN MATCHED AND (
        Target.Fecha_Modificacion_Origen IS NULL OR
        Source.Fecha_Modificacion IS NULL OR
        Target.Fecha_Modificacion_Origen < Source.Fecha_Modificacion
    )
    THEN UPDATE SET
        Target.ID_Vuelo = Source.ID_Vuelo,
        Target.Tipo_Servicio = Source.Tipo_Servicio,
        Target.Descripcion = Source.Descripcion,
        Target.Costo = Source.Costo,
        Target.Fecha_Creacion_Origen = Source.Fecha_Creacion,
        Target.Fecha_Modificacion_Origen = Source.Fecha_Modificacion
    WHEN NOT MATCHED BY TARGET THEN
        INSERT (
            ID_Servicio, ID_Vuelo, Tipo_Servicio, Descripcion, Costo,
            Fecha_Creacion_Origen, Fecha_Modificacion_Origen
        )
        VALUES (
            Source.ID_Servicio, Source.ID_Vuelo, Source.Tipo_Servicio, Source.Descripcion, Source.Costo,
            Source.Fecha_Creacion, Source.Fecha_Modificacion
        );
END;
GO
/****** Object:  StoredProcedure [STG].[SP_CargarIncremental_SERVICIOS_CONSUMIDOS]    Script Date: 23/10/2025 01:04:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [STG].[SP_CargarIncremental_SERVICIOS_CONSUMIDOS]
AS
BEGIN
    SET NOCOUNT ON;
    MERGE STG.SERVICIOS_CONSUMIDOS AS Target
    USING SIAA.SAB.SERVICIOS_CONSUMIDOS AS Source
    ON (Target.ID_Consumo = Source.ID_Consumo)
    WHEN MATCHED AND (
        Target.Fecha_Modificacion_Origen IS NULL OR
        Source.Fecha_Modificacion IS NULL OR
        Target.Fecha_Modificacion_Origen < Source.Fecha_Modificacion
    )
    THEN UPDATE SET
        Target.ID_Pasajero = Source.ID_Pasajero,
        Target.ID_Servicio = Source.ID_Servicio,
        Target.Estado = Source.Estado,
        Target.Fecha_Solicitud = Source.Fecha_Solicitud,
        Target.Fecha_Entrega = Source.Fecha_Entrega,
        Target.Observaciones = Source.Observaciones,
        Target.Fecha_Creacion_Origen = Source.Fecha_Creacion,
        Target.Fecha_Modificacion_Origen = Source.Fecha_Modificacion
    WHEN NOT MATCHED BY TARGET THEN
        INSERT (
            ID_Consumo, ID_Pasajero, ID_Servicio, Estado, Fecha_Solicitud, Fecha_Entrega, Observaciones,
            Fecha_Creacion_Origen, Fecha_Modificacion_Origen
        )
        VALUES (
            Source.ID_Consumo, Source.ID_Pasajero, Source.ID_Servicio, Source.Estado, Source.Fecha_Solicitud, Source.Fecha_Entrega, Source.Observaciones,
            Source.Fecha_Creacion, Source.Fecha_Modificacion
        );
END;
GO
/****** Object:  StoredProcedure [STG].[SP_CargarIncremental_TERMINALES]    Script Date: 23/10/2025 01:04:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [STG].[SP_CargarIncremental_TERMINALES]
AS
BEGIN
    SET NOCOUNT ON;
    MERGE STG.TERMINALES AS Target
    USING SIAA.INF.TERMINALES AS Source
    ON (Target.ID_Terminal = Source.ID_Terminal)
    WHEN MATCHED AND (
        Target.Fecha_Modificacion_Origen IS NULL OR
        Source.Fecha_Modificacion IS NULL OR
        Target.Fecha_Modificacion_Origen < Source.Fecha_Modificacion
    )
    THEN UPDATE SET
        Target.Nombre = Source.Nombre,
        Target.ID_Aeropuerto = Source.ID_Aeropuerto,
        Target.Fecha_Creacion_Origen = Source.Fecha_Creacion,
        Target.Fecha_Modificacion_Origen = Source.Fecha_Modificacion
    WHEN NOT MATCHED BY TARGET THEN
        INSERT (
            ID_Terminal, Nombre, ID_Aeropuerto, Fecha_Creacion_Origen, Fecha_Modificacion_Origen
        )
        VALUES (
            Source.ID_Terminal, Source.Nombre, Source.ID_Aeropuerto, Source.Fecha_Creacion, Source.Fecha_Modificacion
        );
END;
GO
/****** Object:  StoredProcedure [STG].[SP_CargarIncremental_TIEMPOS_PROCESO_PASAJEROS]    Script Date: 23/10/2025 01:04:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [STG].[SP_CargarIncremental_TIEMPOS_PROCESO_PASAJEROS]
AS
BEGIN
    SET NOCOUNT ON;
    MERGE STG.TIEMPOS_PROCESO_PASAJEROS AS Target
    USING SIAA.INT.TIEMPOS_PROCESO_PASAJEROS AS Source
    ON (Target.ID_Proceso = Source.ID_Proceso)
    WHEN MATCHED AND (
        Target.Fecha_Modificacion_Origen IS NULL OR
        Source.Fecha_Modificacion IS NULL OR
        Target.Fecha_Modificacion_Origen < Source.Fecha_Modificacion
    )
    THEN UPDATE SET
        Target.ID_Pasajero = Source.ID_Pasajero,
        Target.Fecha = Source.Fecha,
        Target.Hora_Llegada_Aeropuerto = Source.Hora_Llegada_Aeropuerto,
        Target.Hora_CheckIn = Source.Hora_CheckIn,
        Target.Hora_Seguridad = Source.Hora_Seguridad,
        Target.Hora_Abordaje = Source.Hora_Abordaje,
        Target.Hora_Despegue = Source.Hora_Despegue,
        Target.Fecha_Creacion_Origen = Source.Fecha_Creacion,
        Target.Fecha_Modificacion_Origen = Source.Fecha_Modificacion
    WHEN NOT MATCHED BY TARGET THEN
        INSERT (
            ID_Proceso, ID_Pasajero, Fecha, Hora_Llegada_Aeropuerto, Hora_CheckIn,
            Hora_Seguridad, Hora_Abordaje, Hora_Despegue,
            Fecha_Creacion_Origen, Fecha_Modificacion_Origen
        )
        VALUES (
            Source.ID_Proceso, Source.ID_Pasajero, Source.Fecha, Source.Hora_Llegada_Aeropuerto, Source.Hora_CheckIn,
            Source.Hora_Seguridad, Source.Hora_Abordaje, Source.Hora_Despegue,
            Source.Fecha_Creacion, Source.Fecha_Modificacion
        );
END;
GO
/****** Object:  StoredProcedure [STG].[SP_CargarIncremental_TRIPULACION]    Script Date: 23/10/2025 01:04:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [STG].[SP_CargarIncremental_TRIPULACION]
AS
BEGIN
    SET NOCOUNT ON;
    MERGE STG.TRIPULACION AS Target
    USING SIAA.TRP.TRIPULACION AS Source
    ON (Target.ID_Tripulacion = Source.ID_Tripulacion)
    WHEN MATCHED AND (
        Target.Fecha_Modificacion_Origen IS NULL OR
        Source.Fecha_Modificacion IS NULL OR
        Target.Fecha_Modificacion_Origen < Source.Fecha_Modificacion
    )
    THEN UPDATE SET
        Target.ID_Empleado = Source.ID_Empleado,
        Target.ID_Vuelo = Source.ID_Vuelo,
        Target.Rol_Tripulacion = Source.Rol_Tripulacion,
        Target.Fecha_Asignacion = Source.Fecha_Asignacion,
        Target.Observaciones = Source.Observaciones,
        Target.Fecha_Creacion_Origen = Source.Fecha_Creacion,
        Target.Fecha_Modificacion_Origen = Source.Fecha_Modificacion
    WHEN NOT MATCHED BY TARGET THEN
        INSERT (
            ID_Tripulacion, ID_Empleado, ID_Vuelo, Rol_Tripulacion, Fecha_Asignacion, Observaciones,
            Fecha_Creacion_Origen, Fecha_Modificacion_Origen
        )
        VALUES (
            Source.ID_Tripulacion, Source.ID_Empleado, Source.ID_Vuelo, Source.Rol_Tripulacion, Source.Fecha_Asignacion, Source.Observaciones,
            Source.Fecha_Creacion, Source.Fecha_Modificacion
        );
END;
GO
/****** Object:  StoredProcedure [STG].[SP_CargarIncremental_TURNOS_EMPLEADOS]    Script Date: 23/10/2025 01:04:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [STG].[SP_CargarIncremental_TURNOS_EMPLEADOS]
AS
BEGIN
    SET NOCOUNT ON;
    MERGE STG.TURNOS_EMPLEADOS AS Target
    USING SIAA.RRH.TURNOS_EMPLEADOS AS Source
    ON (Target.ID_Turno = Source.ID_Turno)
    WHEN MATCHED AND (
        Target.Fecha_Modificacion_Origen IS NULL OR
        Source.Fecha_Modificacion IS NULL OR
        Target.Fecha_Modificacion_Origen < Source.Fecha_Modificacion
    )
    THEN UPDATE SET
        Target.ID_Empleado = Source.ID_Empleado,
        Target.Fecha = Source.Fecha,
        Target.Hora_Entrada = Source.Hora_Entrada,
        Target.Hora_Salida = Source.Hora_Salida,
        Target.Tipo_Turno = Source.Tipo_Turno,
        Target.Estado = Source.Estado,
        Target.Fecha_Creacion_Origen = Source.Fecha_Creacion,
        Target.Fecha_Modificacion_Origen = Source.Fecha_Modificacion
    WHEN NOT MATCHED BY TARGET THEN
        INSERT (
            ID_Turno, ID_Empleado, Fecha, Hora_Entrada, Hora_Salida, Tipo_Turno, Estado,
            Fecha_Creacion_Origen, Fecha_Modificacion_Origen
        )
        VALUES (
            Source.ID_Turno, Source.ID_Empleado, Source.Fecha, Source.Hora_Entrada, Source.Hora_Salida, Source.Tipo_Turno, Source.Estado,
            Source.Fecha_Creacion, Source.Fecha_Modificacion
        );
END;
GO
/****** Object:  StoredProcedure [STG].[SP_CargarIncremental_UNIDADES_EMERGENCIA]    Script Date: 23/10/2025 01:04:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [STG].[SP_CargarIncremental_UNIDADES_EMERGENCIA]
AS
BEGIN
    SET NOCOUNT ON;
    MERGE STG.UNIDADES_EMERGENCIA AS Target
    USING SIAA.EMR.UNIDADES_EMERGENCIA AS Source
    ON (Target.ID_Unidad = Source.ID_Unidad)
    WHEN MATCHED AND (
        Target.Fecha_Modificacion_Origen IS NULL OR
        Source.Fecha_Modificacion IS NULL OR
        Target.Fecha_Modificacion_Origen < Source.Fecha_Modificacion
    )
    THEN UPDATE SET
        Target.Tipo_Unidad = Source.Tipo_Unidad,
        Target.Placa_Unidad = Source.Placa_Unidad,
        Target.Responsable = Source.Responsable,
        Target.Estado = Source.Estado,
        Target.Fecha_Creacion_Origen = Source.Fecha_Creacion,
        Target.Fecha_Modificacion_Origen = Source.Fecha_Modificacion
    WHEN NOT MATCHED BY TARGET THEN
        INSERT (
            ID_Unidad, Tipo_Unidad, Placa_Unidad, Responsable, Estado,
            Fecha_Creacion_Origen, Fecha_Modificacion_Origen
        )
        VALUES (
            Source.ID_Unidad, Source.Tipo_Unidad, Source.Placa_Unidad, Source.Responsable, Source.Estado,
            Source.Fecha_Creacion, Source.Fecha_Modificacion
        );
END;
GO
/****** Object:  StoredProcedure [STG].[SP_CargarIncremental_VUELOS]    Script Date: 23/10/2025 01:04:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [STG].[SP_CargarIncremental_VUELOS]
AS
BEGIN
    SET NOCOUNT ON;
    MERGE STG.VUELOS AS Target
    USING SIAA.VUE.VUELOS AS Source
    ON (Target.ID_Vuelo = Source.ID_Vuelo)
    WHEN MATCHED AND (
        Target.Fecha_Modificacion_Origen IS NULL OR
        Source.Fecha_Modificacion IS NULL OR
        Target.Fecha_Modificacion_Origen < Source.Fecha_Modificacion
    )
    THEN UPDATE SET
        Target.Numero_Vuelo = Source.Numero_Vuelo,
        Target.ID_Ruta = Source.ID_Ruta,
        Target.ID_Aeronave = Source.ID_Aeronave,
        Target.ID_Horario = Source.ID_Horario,
        Target.Fecha_Salida = Source.Fecha_Salida,
        Target.Hora_Salida = Source.Hora_Salida,
        Target.Hora_Llegada = Source.Hora_Llegada,
        Target.Estado = Source.Estado,
        Target.Fecha_Creacion_Origen = Source.Fecha_Creacion,
        Target.Fecha_Modificacion_Origen = Source.Fecha_Modificacion
    WHEN NOT MATCHED BY TARGET THEN
        INSERT (
            ID_Vuelo, Numero_Vuelo, ID_Ruta, ID_Aeronave, ID_Horario, Fecha_Salida,
            Hora_Salida, Hora_Llegada, Estado, Fecha_Creacion_Origen, Fecha_Modificacion_Origen
        )
        VALUES (
            Source.ID_Vuelo, Source.Numero_Vuelo, Source.ID_Ruta, Source.ID_Aeronave, Source.ID_Horario, Source.Fecha_Salida,
            Source.Hora_Salida, Source.Hora_Llegada, Source.Estado, Source.Fecha_Creacion, Source.Fecha_Modificacion
        );
END;
GO
/****** Object:  StoredProcedure [STG].[SP_CargarIncremental_VUELOS_CARGA]    Script Date: 23/10/2025 01:04:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [STG].[SP_CargarIncremental_VUELOS_CARGA]
AS
BEGIN
    SET NOCOUNT ON;
    MERGE STG.VUELOS_CARGA AS Target
    USING SIAA.CRG.VUELOS_CARGA AS Source
    ON (Target.ID_VueloCarga = Source.ID_VueloCarga)
    WHEN MATCHED AND (
        Target.Fecha_Modificacion_Origen IS NULL OR
        Source.Fecha_Modificacion IS NULL OR
        Target.Fecha_Modificacion_Origen < Source.Fecha_Modificacion
    )
    THEN UPDATE SET
        Target.ID_Aeronave = Source.ID_Aeronave,
        Target.ID_Ruta = Source.ID_Ruta,
        Target.Fecha_Salida = Source.Fecha_Salida,
        Target.Hora_Salida = Source.Hora_Salida,
        Target.Peso_Total_Kg = Source.Peso_Total_Kg,
        Target.Volumen_Total_M3 = Source.Volumen_Total_M3,
        Target.Estado = Source.Estado,
        Target.Fecha_Creacion_Origen = Source.Fecha_Creacion,
        Target.Fecha_Modificacion_Origen = Source.Fecha_Modificacion
    WHEN NOT MATCHED BY TARGET THEN
        INSERT (
            ID_VueloCarga, ID_Aeronave, ID_Ruta, Fecha_Salida, Hora_Salida,
            Peso_Total_Kg, Volumen_Total_M3, Estado,
            Fecha_Creacion_Origen, Fecha_Modificacion_Origen
        )
        VALUES (
            Source.ID_VueloCarga, Source.ID_Aeronave, Source.ID_Ruta, Source.Fecha_Salida, Source.Hora_Salida,
            Source.Peso_Total_Kg, Source.Volumen_Total_M3, Source.Estado,
            Source.Fecha_Creacion, Source.Fecha_Modificacion
        );
END;
GO
/****** Object:  StoredProcedure [STG].[SP_CargarInicial_AEROLINEAS]    Script Date: 23/10/2025 01:04:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [STG].[SP_CargarInicial_AEROLINEAS]
AS
BEGIN
    SET NOCOUNT ON;
    TRUNCATE TABLE STG.AEROLINEAS;
    INSERT INTO STG.AEROLINEAS (
        ID_Aerolinea, Nombre, Codigo_IATA, Pais_Origen, Activa, Fecha_Creacion_Origen, Fecha_Modificacion_Origen
    )
    SELECT
        SAE.ID_Aerolinea, SAE.Nombre, SAE.Codigo_IATA, SAE.Pais_Origen, SAE.Activa, SAE.Fecha_Creacion, SAE.Fecha_Modificacion
    FROM SIAA.OPA.AEROLINEAS AS SAE;
END;
GO
/****** Object:  StoredProcedure [STG].[SP_CargarInicial_AERONAVES]    Script Date: 23/10/2025 01:04:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [STG].[SP_CargarInicial_AERONAVES]
AS
BEGIN
    SET NOCOUNT ON;
    TRUNCATE TABLE STG.AERONAVES;
    INSERT INTO STG.AERONAVES (
        ID_Aeronave, Matricula, Modelo, Capacidad_Pasajeros, Capacidad_Carga_KG,
        Fecha_Fabricacion, ID_Aerolinea, Estado, Fecha_Creacion_Origen, Fecha_Modificacion_Origen
    )
    SELECT
        SAN.ID_Aeronave, SAN.Matricula, SAN.Modelo, SAN.Capacidad_Pasajeros, SAN.Capacidad_Carga_KG,
        SAN.Fecha_Fabricacion, SAN.ID_Aerolinea, SAN.Estado, SAN.Fecha_Creacion, SAN.Fecha_Modificacion
    FROM SIAA.OPA.AERONAVES AS SAN;
END;
GO
/****** Object:  StoredProcedure [STG].[SP_CargarInicial_AEROPUERTOS]    Script Date: 23/10/2025 01:04:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [STG].[SP_CargarInicial_AEROPUERTOS]
AS
BEGIN
    SET NOCOUNT ON;
    TRUNCATE TABLE STG.AEROPUERTOS;
    INSERT INTO STG.AEROPUERTOS (
        ID_Aeropuerto, Nombre, Codigo_IATA, Ciudad, ID_Pais,
        Capacidad_Anual_Pasajeros, Fecha_Creacion_Origen, Fecha_Modificacion_Origen
        -- Fecha_Carga_Staging se auto-rellena con DEFAULT
        -- Fecha_Actualizacion_Staging será NULL por defecto
    )
    SELECT
        SA.ID_Aeropuerto, SA.Nombre, SA.Codigo_IATA, SA.Ciudad, SA.ID_Pais,
        SA.Capacidad_Anual_Pasajeros, SA.Fecha_Creacion, SA.Fecha_Modificacion
    FROM SIAA.INF.AEROPUERTOS AS SA;
END;
GO
/****** Object:  StoredProcedure [STG].[SP_CargarInicial_ASISTENCIAS_EMPLEADOS]    Script Date: 23/10/2025 01:04:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [STG].[SP_CargarInicial_ASISTENCIAS_EMPLEADOS]
AS
BEGIN
    SET NOCOUNT ON;
    TRUNCATE TABLE STG.ASISTENCIAS_EMPLEADOS;
    INSERT INTO STG.ASISTENCIAS_EMPLEADOS (
        ID_Asistencia, ID_Empleado, Fecha, Hora_Entrada, Hora_Salida, Estado,
        Fecha_Creacion_Origen, Fecha_Modificacion_Origen
    )
    SELECT
        SAE.ID_Asistencia, SAE.ID_Empleado, SAE.Fecha, SAE.Hora_Entrada, SAE.Hora_Salida, SAE.Estado,
        SAE.Fecha_Creacion, SAE.Fecha_Modificacion
    FROM SIAA.RRH.ASISTENCIAS_EMPLEADOS AS SAE;
END;
GO
/****** Object:  StoredProcedure [STG].[SP_CargarInicial_ATENCION_CLIENTE]    Script Date: 23/10/2025 01:04:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [STG].[SP_CargarInicial_ATENCION_CLIENTE]
AS
BEGIN
    SET NOCOUNT ON;
    TRUNCATE TABLE STG.ATENCION_CLIENTE;
    INSERT INTO STG.ATENCION_CLIENTE (
        ID_Atencion, ID_Pasajero, Fecha_Solicitud, Tipo_Solicitud, Descripcion,
        Estado, Respuesta, Fecha_Respuesta,
        Fecha_Creacion_Origen, Fecha_Modificacion_Origen
    )
    SELECT
        SAC.ID_Atencion, SAC.ID_Pasajero, SAC.Fecha_Solicitud, SAC.Tipo_Solicitud, SAC.Descripcion,
        SAC.Estado, SAC.Respuesta, SAC.Fecha_Respuesta,
        SAC.Fecha_Creacion, SAC.Fecha_Modificacion
    FROM SIAA.MKT.ATENCION_CLIENTE AS SAC;
END;
GO
/****** Object:  StoredProcedure [STG].[SP_CargarInicial_AUDITORIA_SISTEMA]    Script Date: 23/10/2025 01:04:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [STG].[SP_CargarInicial_AUDITORIA_SISTEMA]
AS
BEGIN
    SET NOCOUNT ON;
    TRUNCATE TABLE STG.AUDITORIA_SISTEMA;
    INSERT INTO STG.AUDITORIA_SISTEMA (
        ID_Evento, Fecha, Hora, Usuario, Rol_Usuario, Modulo, Tipo_Evento,
        Descripcion, IP_Origen, Estado_Evento, Fecha_Creacion_Origen, Fecha_Modificacion_Origen
    )
    SELECT
        SAS.ID_Evento, SAS.Fecha, SAS.Hora, SAS.Usuario, SAS.Rol_Usuario, SAS.Modulo, SAS.Tipo_Evento,
        SAS.Descripcion, SAS.IP_Origen, SAS.Estado_Evento, SAS.Fecha_Creacion, SAS.Fecha_Modificacion
    FROM SIAA.AUD.AUDITORIA_SISTEMA AS SAS;
END;
GO
/****** Object:  StoredProcedure [STG].[SP_CargarInicial_CAMP_MARKETING]    Script Date: 23/10/2025 01:04:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [STG].[SP_CargarInicial_CAMP_MARKETING]
AS
BEGIN
    SET NOCOUNT ON;
    TRUNCATE TABLE STG.CAMP_MARKETING;
    INSERT INTO STG.CAMP_MARKETING (
        ID_Camp, Nombre, Tipo, Fecha_Inicio, Fecha_Fin, Descripcion, Estado,
        Fecha_Creacion_Origen, Fecha_Modificacion_Origen
    )
    SELECT
        SCM.ID_Camp, SCM.Nombre, SCM.Tipo, SCM.Fecha_Inicio, SCM.Fecha_Fin, SCM.Descripcion, SCM.Estado,
        SCM.Fecha_Creacion, SCM.Fecha_Modificacion
    FROM SIAA.MKT.CAMP_MARKETING AS SCM;
END;
GO
/****** Object:  StoredProcedure [STG].[SP_CargarInicial_CARGAS_TRANSPORTADAS]    Script Date: 23/10/2025 01:04:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [STG].[SP_CargarInicial_CARGAS_TRANSPORTADAS]
AS
BEGIN
    SET NOCOUNT ON;
    TRUNCATE TABLE STG.CARGAS_TRANSPORTADAS;
    INSERT INTO STG.CARGAS_TRANSPORTADAS (
        ID_Carga, ID_VueloCarga, ID_Operador, Descripcion, Peso_Kg,
        Volumen_M3, Tipo_Carga, Estado,
        Fecha_Creacion_Origen, Fecha_Modificacion_Origen
    )
    SELECT
        SCT.ID_Carga, SCT.ID_VueloCarga, SCT.ID_Operador, SCT.Descripcion, SCT.Peso_Kg,
        SCT.Volumen_M3, SCT.Tipo_Carga, SCT.Estado,
        SCT.Fecha_Creacion, SCT.Fecha_Modificacion
    FROM SIAA.CRG.CARGAS_TRANSPORTADAS AS SCT;
END;
GO
/****** Object:  StoredProcedure [STG].[SP_CargarInicial_CLIMA]    Script Date: 23/10/2025 01:04:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [STG].[SP_CargarInicial_CLIMA]
AS
BEGIN
    SET NOCOUNT ON;
    TRUNCATE TABLE STG.CLIMA;
    INSERT INTO STG.CLIMA (
        ID_Registro, ID_Aeropuerto, Fecha, Hora, Temperatura_C, Humedad_Porc,
        Velocidad_Viento_KMH, Condicion, Fecha_Creacion_Origen, Fecha_Modificacion_Origen
    )
    SELECT
        SC.ID_Registro, SC.ID_Aeropuerto, SC.Fecha, SC.Hora, SC.Temperatura_C, SC.Humedad_Porc,
        SC.Velocidad_Viento_KMH, SC.Condicion, SC.Fecha_Creacion, SC.Fecha_Modificacion
    FROM SIAA.MET.CLIMA AS SC;
END;
GO
/****** Object:  StoredProcedure [STG].[SP_CargarInicial_COMBUSTIBLE]    Script Date: 23/10/2025 01:04:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [STG].[SP_CargarInicial_COMBUSTIBLE]
AS
BEGIN
    SET NOCOUNT ON;
    TRUNCATE TABLE STG.COMBUSTIBLE;
    INSERT INTO STG.COMBUSTIBLE (
        ID_Registro, ID_Aeronave, Fecha, Cantidad_Galones, Costo_Total, Proveedor,
        Fecha_Creacion_Origen, Fecha_Modificacion_Origen
    )
    SELECT
        SC.ID_Registro, SC.ID_Aeronave, SC.Fecha, SC.Cantidad_Galones, SC.Costo_Total, SC.Proveedor,
        SC.Fecha_Creacion, SC.Fecha_Modificacion
    FROM SIAA.ABC.COMBUSTIBLE AS SC;
END;
GO
/****** Object:  StoredProcedure [STG].[SP_CargarInicial_CONTROLES_SEGURIDAD]    Script Date: 23/10/2025 01:04:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [STG].[SP_CargarInicial_CONTROLES_SEGURIDAD]
AS
BEGIN
    SET NOCOUNT ON;
    TRUNCATE TABLE STG.CONTROLES_SEGURIDAD;
    INSERT INTO STG.CONTROLES_SEGURIDAD (
        ID_Control, ID_Vuelo, Tipo_Control, Fecha_Control, Resultado, Observaciones,
        Fecha_Creacion_Origen, Fecha_Modificacion_Origen
    )
    SELECT
        SCS.ID_Control, SCS.ID_Vuelo, SCS.Tipo_Control, SCS.Fecha_Control, SCS.Resultado, SCS.Observaciones,
        SCS.Fecha_Creacion, SCS.Fecha_Modificacion
    FROM SIAA.SEG.CONTROLES_SEGURIDAD AS SCS;
END;
GO
/****** Object:  StoredProcedure [STG].[SP_CargarInicial_EMPLEADOS]    Script Date: 23/10/2025 01:04:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [STG].[SP_CargarInicial_EMPLEADOS]
AS
BEGIN
    SET NOCOUNT ON;
    TRUNCATE TABLE STG.EMPLEADOS;
    INSERT INTO STG.EMPLEADOS (
        ID_Empleado, Nombre, Apellido, Cedula, Fecha_Nacimiento, Genero, Cargo, ID_Aeropuerto,
        Fecha_Contratacion, Estado, Fecha_Creacion_Origen, Fecha_Modificacion_Origen
    )
    SELECT
        SE.ID_Empleado, SE.Nombre, SE.Apellido, SE.Cedula, SE.Fecha_Nacimiento, SE.Genero, SE.Cargo, SE.ID_Aeropuerto,
        SE.Fecha_Contratacion, SE.Estado, SE.Fecha_Creacion, SE.Fecha_Modificacion
    FROM SIAA.RRH.EMPLEADOS AS SE;
END;
GO
/****** Object:  StoredProcedure [STG].[SP_CargarInicial_ENCUESTAS_OPINIONES_CLIENTES]    Script Date: 23/10/2025 01:04:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [STG].[SP_CargarInicial_ENCUESTAS_OPINIONES_CLIENTES]
AS
BEGIN
    SET NOCOUNT ON;
    TRUNCATE TABLE STG.ENCUESTAS_OPINIONES_CLIENTES;
    INSERT INTO STG.ENCUESTAS_OPINIONES_CLIENTES (
        ID_Registro, ID_Pasajero, ID_Vuelo, Fecha, Puntualidad, Comodidad, Servicio_Bordo,
        Limpieza, Calificacion_Global, Comentario, Tipo_Servicio,
        Fecha_Creacion_Origen, Fecha_Modificacion_Origen
    )
    SELECT
        SEOC.ID_Registro, SEOC.ID_Pasajero, SEOC.ID_Vuelo, SEOC.Fecha, SEOC.Puntualidad, SEOC.Comodidad, SEOC.Servicio_Bordo,
        SEOC.Limpieza, SEOC.Calificacion_Global, SEOC.Comentario, SEOC.Tipo_Servicio,
        SEOC.Fecha_Creacion, SEOC.Fecha_Modificacion
    FROM SIAA.MKT.ENCUESTAS_OPINIONES_CLIENTES AS SEOC;
END;
GO
/****** Object:  StoredProcedure [STG].[SP_CargarInicial_EQUIPAJE]    Script Date: 23/10/2025 01:04:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [STG].[SP_CargarInicial_EQUIPAJE]
AS
BEGIN
    SET NOCOUNT ON;
    TRUNCATE TABLE STG.EQUIPAJE;
    INSERT INTO STG.EQUIPAJE (
        ID_Equipaje, ID_Pasajero, ID_Vuelo, Codigo_Equipaje, Tipo, Peso, Dimensiones,
        Estado, Fecha_Registro, Observaciones, Fecha_Creacion_Origen, Fecha_Modificacion_Origen
    )
    SELECT
        SE.ID_Equipaje, SE.ID_Pasajero, SE.ID_Vuelo, SE.Codigo_Equipaje, SE.Tipo, SE.Peso, SE.Dimensiones,
        SE.Estado, SE.Fecha_Registro, SE.Observaciones, SE.Fecha_Creacion, SE.Fecha_Modificacion
    FROM SIAA.EQP.EQUIPAJE AS SE;
END;
GO
/****** Object:  StoredProcedure [STG].[SP_CargarInicial_EQUIPAMIENTO_ESPECIAL]    Script Date: 23/10/2025 01:04:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [STG].[SP_CargarInicial_EQUIPAMIENTO_ESPECIAL]
AS
BEGIN
    SET NOCOUNT ON;
    TRUNCATE TABLE STG.EQUIPAMIENTO_ESPECIAL;
    INSERT INTO STG.EQUIPAMIENTO_ESPECIAL (
        ID_Equipamiento, ID_Reservacion, Tipo_Equipamiento, Descripcion, Peso_Kg, -- ID_Equipaje corregido
        Dimensiones_CM, Requiere_Manejo_Especial, Costo_Adicional, Estado,
        Fecha_Creacion_Origen, Fecha_Modificacion_Origen
    )
    SELECT
        SEE.ID_Equipamiento, SEE.ID_Reservacion, SEE.Tipo_Equipamiento, SEE.Descripcion, SEE.Peso_Kg, -- SEE.ID_Equipaje corregido
        SEE.Dimensiones_CM, SEE.Requiere_Manejo_Especial, SEE.Costo_Adicional, SEE.Estado,
        SEE.Fecha_Creacion, SEE.Fecha_Modificacion
    FROM SIAA.EQP.EQUIPAMIENTO_ESPECIAL AS SEE;
END;
GO
/****** Object:  StoredProcedure [STG].[SP_CargarInicial_ESTADISTICAS_DIARIAS]    Script Date: 23/10/2025 01:04:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [STG].[SP_CargarInicial_ESTADISTICAS_DIARIAS]
AS
BEGIN
    SET NOCOUNT ON;
    TRUNCATE TABLE STG.ESTADISTICAS_DIARIAS;
    INSERT INTO STG.ESTADISTICAS_DIARIAS (
        Fecha, Total_Vuelos, Vuelos_Retrasados, Total_Pasajeros, Cancelaciones, Carga_Transportada_Kg,
        Fecha_Creacion_Origen, Fecha_Modificacion_Origen
    )
    SELECT
        SED.Fecha, SED.Total_Vuelos, SED.Vuelos_Retrasados, SED.Total_Pasajeros, SED.Cancelaciones, SED.Carga_Transportada_Kg,
        SED.Fecha_Creacion, SED.Fecha_Modificacion -- Tomando de SIAA.INT.ESTADISTICAS_DIARIAS, si existen
    FROM SIAA.INT.ESTADISTICAS_DIARIAS AS SED;
END;
GO
/****** Object:  StoredProcedure [STG].[SP_CargarInicial_FIDELIDAD_PASAJERO]    Script Date: 23/10/2025 01:04:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [STG].[SP_CargarInicial_FIDELIDAD_PASAJERO]
AS
BEGIN
    SET NOCOUNT ON;
    TRUNCATE TABLE STG.FIDELIDAD_PASAJERO;
    INSERT INTO STG.FIDELIDAD_PASAJERO (
        ID_Registro, ID_Pasajero, Puntos_Acumulados, Ultima_Actualizacion, Nivel_Fidelidad,
        Fecha_Creacion_Origen, Fecha_Modificacion_Origen
    )
    SELECT
        SFP.ID_Registro, SFP.ID_Pasajero, SFP.Puntos_Acumulados, SFP.Ultima_Actualizacion, SFP.Nivel_Fidelidad,
        SFP.Fecha_Creacion, SFP.Fecha_Modificacion
    FROM SIAA.MKT.FIDELIDAD_PASAJERO AS SFP;
END;
GO
/****** Object:  StoredProcedure [STG].[SP_CargarInicial_FRECUENCIAS]    Script Date: 23/10/2025 01:04:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [STG].[SP_CargarInicial_FRECUENCIAS]
AS
BEGIN
    SET NOCOUNT ON;
    TRUNCATE TABLE STG.FRECUENCIAS;
    INSERT INTO STG.FRECUENCIAS (
        ID_Frecuencia, Descripcion, Fecha_Creacion_Origen, Fecha_Modificacion_Origen
    )
    SELECT
        SF.ID_Frecuencia, SF.Descripcion, SF.Fecha_Creacion, SF.Fecha_Modificacion
    FROM SIAA.VUE.FRECUENCIAS AS SF;
END;
GO
/****** Object:  StoredProcedure [STG].[SP_CargarInicial_GESTION_ADMVUELOS]    Script Date: 23/10/2025 01:04:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [STG].[SP_CargarInicial_GESTION_ADMVUELOS]
AS
BEGIN
    SET NOCOUNT ON;
    TRUNCATE TABLE STG.GESTION_ADMVUELOS;
    INSERT INTO STG.GESTION_ADMVUELOS (
        ID_Gestion, ID_Vuelo, ID_Aerolinea, ID_Pasajero, ID_Paseabordaje,
        Costo_Paseabordaje, Clase, Origen, Destino, Fecha_Creacion_Origen, Fecha_Modificacion_Origen
        -- Fecha_Carga_Staging se auto-rellena con DEFAULT
        -- Fecha_Actualizacion_Staging será NULL por defecto
    )
    SELECT
        SGA.ID_Gestion, SGA.ID_Vuelo, SGA.ID_Aerolinea, SGA.ID_Pasajero, SGA.ID_Paseabordaje,
        SGA.Costo_Paseabordaje, SGA.Clase, SGA.Origen, SGA.Destino, SGA.Fecha_Creacion, SGA.Fecha_Modificacion
    FROM SIAA.COM.GESTION_ADMVUELOS AS SGA;
END;
GO
/****** Object:  StoredProcedure [STG].[SP_CargarInicial_HISTORICO_OPERACIONAL_VUELOS]    Script Date: 23/10/2025 01:04:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [STG].[SP_CargarInicial_HISTORICO_OPERACIONAL_VUELOS]
AS
BEGIN
    SET NOCOUNT ON;
    TRUNCATE TABLE STG.HISTORICO_OPERACIONAL_VUELOS;
    INSERT INTO STG.HISTORICO_OPERACIONAL_VUELOS (
        ID_Historico, ID_Vuelo, Fecha, Hora_Salida_Programada, Hora_Salida_Real,
        Clima_Temperatura, Clima_Humedad, Clima_Condicion, Retraso_Minutos,
        Estado_Vuelo, Carga_Pasajeros, Carga_Carga_Kg, Observaciones,
        Fecha_Creacion_Origen, Fecha_Modificacion_Origen
    )
    SELECT
        SHOV.ID_Historico, SHOV.ID_Vuelo, SHOV.Fecha, SHOV.Hora_Salida_Programada, SHOV.Hora_Salida_Real,
        SHOV.Clima_Temperatura, SHOV.Clima_Humedad, SHOV.Clima_Condicion, SHOV.Retraso_Minutos,
        SHOV.Estado_Vuelo, SHOV.Carga_Pasajeros, SHOV.Carga_Carga_Kg, SHOV.Observaciones,
        SHOV.Fecha_Creacion, SHOV.Fecha_Modificacion
    FROM SIAA.PRE.HISTORICO_OPERACIONAL_VUELOS AS SHOV;
END;
GO
/****** Object:  StoredProcedure [STG].[SP_CargarInicial_HORARIOS_PROGRAMADOS]    Script Date: 23/10/2025 01:04:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [STG].[SP_CargarInicial_HORARIOS_PROGRAMADOS]
AS
BEGIN
    SET NOCOUNT ON;
    TRUNCATE TABLE STG.HORARIOS_PROGRAMADOS;
    INSERT INTO STG.HORARIOS_PROGRAMADOS (
        ID_Horario, ID_Ruta, ID_Frecuencia, Hora_Salida, Hora_Llegada,
        Fecha_Creacion_Origen, Fecha_Modificacion_Origen
    )
    SELECT
        SHP.ID_Horario, SHP.ID_Ruta, SHP.ID_Frecuencia, SHP.Hora_Salida, SHP.Hora_Llegada,
        SHP.Fecha_Creacion, SHP.Fecha_Modificacion
    FROM SIAA.VUE.HORARIOS_PROGRAMADOS AS SHP;
END;
GO
/****** Object:  StoredProcedure [STG].[SP_CargarInicial_INCIDENTES_OPERATIVOS]    Script Date: 23/10/2025 01:04:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [STG].[SP_CargarInicial_INCIDENTES_OPERATIVOS]
AS
BEGIN
    SET NOCOUNT ON;
    TRUNCATE TABLE STG.INCIDENTES_OPERATIVOS;
    INSERT INTO STG.INCIDENTES_OPERATIVOS (
        ID_Incidente, Fecha, Hora, ID_Vuelo, ID_Aeronave, Tipo_Incidente,
        Descripcion, Nivel_Severidad, Reportado_Por, Fecha_Creacion_Origen, Fecha_Modificacion_Origen
    )
    SELECT
        SIO.ID_Incidente, SIO.Fecha, SIO.Hora, SIO.ID_Vuelo, SIO.ID_Aeronave, SIO.Tipo_Incidente,
        SIO.Descripcion, SIO.Nivel_Severidad, SIO.Reportado_Por, SIO.Fecha_Creacion, SIO.Fecha_Modificacion
    FROM SIAA.INT.INCIDENTES_OPERATIVOS AS SIO;
END;
GO
/****** Object:  StoredProcedure [STG].[SP_CargarInicial_INCIDENTES_SEGURIDAD]    Script Date: 23/10/2025 01:04:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [STG].[SP_CargarInicial_INCIDENTES_SEGURIDAD]
AS
BEGIN
    SET NOCOUNT ON;
    TRUNCATE TABLE STG.INCIDENTES_SEGURIDAD;
    INSERT INTO STG.INCIDENTES_SEGURIDAD (
        ID_Incidente, ID_Vuelo, Fecha_Incidente, Tipo_Incidente, Descripcion, Accion_Tomada,
        Fecha_Creacion_Origen, Fecha_Modificacion_Origen
    )
    SELECT
        SIS.ID_Incidente, SIS.ID_Vuelo, SIS.Fecha_Incidente, SIS.Tipo_Incidente, SIS.Descripcion, SIS.Accion_Tomada,
        SIS.Fecha_Creacion, SIS.Fecha_Modificacion
    FROM SIAA.SEG.INCIDENTES_SEGURIDAD AS SIS;
END;
GO
/****** Object:  StoredProcedure [STG].[SP_CargarInicial_INSPECCIONES_AUDITORIAS]    Script Date: 23/10/2025 01:04:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [STG].[SP_CargarInicial_INSPECCIONES_AUDITORIAS]
AS
BEGIN
    SET NOCOUNT ON;

    -- TRUNCATE TABLE para asegurar una carga limpia en la fase inicial
    TRUNCATE TABLE STG.INSPECCIONES_AUDITORIAS;

    -- Insertar datos desde el origen SIAA
    INSERT INTO STG.INSPECCIONES_AUDITORIAS (
        ID_Inspeccion,
        Fecha,                  
        Tipo_Inspeccion,        
        Area_Evaluada,
        Responsable,            
        Resultado,
        Observaciones,
        Accion_Correctiva_Requerida, 
        Fecha_Creacion,         
        Fecha_Modificacion      
    )
    SELECT
        SI.ID_Inspeccion,
        SI.Fecha,               -- CORRECCIÓN: Se selecciona 'Fecha' del origen para mapear a STG.Fecha
        ISNULL(SI.Tipo_Inspeccion, 'N/A'), 
        ISNULL(SI.Area_Evaluada, 'N/A') AS Area_Evaluada,
        SI.Responsable,         
        SI.Resultado,
        SI.Observaciones,
        SI.Accion_Correctiva_Requerida, 
        SI.Fecha_Creacion,      
        SI.Fecha_Modificacion   
    FROM SIAA.CTI.INSPECCIONES_AUDITORIAS AS SI;
END;
GO
/****** Object:  StoredProcedure [STG].[SP_CargarInicial_INTERVENCIONES_EMERGENCIA]    Script Date: 23/10/2025 01:04:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [STG].[SP_CargarInicial_INTERVENCIONES_EMERGENCIA]
AS
BEGIN
    SET NOCOUNT ON;
    TRUNCATE TABLE STG.INTERVENCIONES_EMERGENCIA;
    INSERT INTO STG.INTERVENCIONES_EMERGENCIA (
        ID_Intervencion, ID_Unidad, ID_Vuelo, Fecha, Tipo_Incidente,
        Resultado, Observaciones, Fecha_Creacion_Origen, Fecha_Modificacion_Origen
    )
    SELECT
        SIE.ID_Intervencion, SIE.ID_Unidad, SIE.ID_Vuelo, SIE.Fecha, SIE.Tipo_Incidente,
        SIE.Resultado, SIE.Observaciones, SIE.Fecha_Creacion, SIE.Fecha_Modificacion
    FROM SIAA.EMR.INTERVENCIONES_EMERGENCIA AS SIE;
END;
GO
/****** Object:  StoredProcedure [STG].[SP_CargarInicial_LOGISTICA_TERRESTRE]    Script Date: 23/10/2025 01:04:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [STG].[SP_CargarInicial_LOGISTICA_TERRESTRE]
AS
BEGIN
    SET NOCOUNT ON;
    TRUNCATE TABLE STG.LOGISTICA_TERRESTRE;
    INSERT INTO STG.LOGISTICA_TERRESTRE (
        ID_Transporte, Tipo_Transporte, Origen, Destino, Hora_Salida,
        Hora_Llegada, Responsable, Capacidad, Estado,
        Fecha_Creacion_Origen, Fecha_Modificacion_Origen
    )
    SELECT
        SLT.ID_Transporte, SLT.Tipo_Transporte, SLT.Origen, SLT.Destino, SLT.Hora_Salida,
        SLT.Hora_Llegada, SLT.Responsable, SLT.Capacidad, SLT.Estado,
        SLT.Fecha_Creacion, SLT.Fecha_Modificacion
    FROM SIAA.LGT.LOGISTICA_TERRESTRE AS SLT;
END;
GO
/****** Object:  StoredProcedure [STG].[SP_CargarInicial_MANTENIMIENTO]    Script Date: 23/10/2025 01:04:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [STG].[SP_CargarInicial_MANTENIMIENTO]
AS
BEGIN
    SET NOCOUNT ON;
    TRUNCATE TABLE STG.MANTENIMIENTO;
    INSERT INTO STG.MANTENIMIENTO (
        ID_Mantenimiento, ID_Aeronave, Fecha, Hora, Tipo_Mantenimiento, Descripcion,
        Costo, Estado, Tecnico_Responsable, Observaciones,
        Fecha_Creacion_Origen, Fecha_Modificacion_Origen
    )
    SELECT
        SM.ID_Mantenimiento, SM.ID_Aeronave, SM.Fecha, SM.Hora, SM.Tipo_Mantenimiento, SM.Descripcion,
        SM.Costo, SM.Estado, SM.Tecnico_Responsable, SM.Observaciones,
        SM.Fecha_Creacion, SM.Fecha_Modificacion
    FROM SIAA.TEC.MANTENIMIENTO AS SM;
END;
GO
/****** Object:  StoredProcedure [STG].[SP_CargarInicial_MIGRACION_ADUANA]    Script Date: 23/10/2025 01:04:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [STG].[SP_CargarInicial_MIGRACION_ADUANA]
AS
BEGIN
    SET NOCOUNT ON;
    TRUNCATE TABLE STG.MIGRACION_ADUANA;
    INSERT INTO STG.MIGRACION_ADUANA (
        ID_Registro, ID_Reservacion, Fecha_Proceso, Tipo_Proceso, Estado, Observaciones,
        Fecha_Creacion_Origen, Fecha_Modificacion_Origen
    )
    SELECT
        SMA.ID_Registro, SMA.ID_Reservacion, SMA.Fecha_Proceso, SMA.Tipo_Proceso, SMA.Estado, SMA.Observaciones,
        SMA.Fecha_Creacion, SMA.Fecha_Modificacion
    FROM SIAA.MIG.MIGRACION_ADUANA AS SMA;
END;
GO
/****** Object:  StoredProcedure [STG].[SP_CargarInicial_OFERTAS_APLICADAS]    Script Date: 23/10/2025 01:04:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [STG].[SP_CargarInicial_OFERTAS_APLICADAS]
AS
BEGIN
    SET NOCOUNT ON;
    TRUNCATE TABLE STG.OFERTAS_APLICADAS;
    INSERT INTO STG.OFERTAS_APLICADAS (
        ID_Oferta, ID_Camp, ID_Reservacion, Descuento_Porcentaje, Monto_Descontado, Fecha_Aplicacion,
        Fecha_Creacion_Origen, Fecha_Modificacion_Origen
    )
    SELECT
        SOA.ID_Oferta, SOA.ID_Camp, SOA.ID_Reservacion, SOA.Descuento_Porcentaje, SOA.Monto_Descontado, SOA.Fecha_Aplicacion,
        SOA.Fecha_Creacion, SOA.Fecha_Modificacion
    FROM SIAA.MKT.OFERTAS_APLICADAS AS SOA;
END;
GO
/****** Object:  StoredProcedure [STG].[SP_CargarInicial_OPERADORES_CARGA]    Script Date: 23/10/2025 01:04:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [STG].[SP_CargarInicial_OPERADORES_CARGA]
AS
BEGIN
    SET NOCOUNT ON;
    TRUNCATE TABLE STG.OPERADORES_CARGA;
    INSERT INTO STG.OPERADORES_CARGA (
        ID_Operador, Nombre, Pais_Origen, Tipo_Operador, Contacto,
        Fecha_Creacion_Origen, Fecha_Modificacion_Origen
    )
    SELECT
        SOC.ID_Operador, SOC.Nombre, SOC.Pais_Origen, SOC.Tipo_Operador, SOC.Contacto,
        SOC.Fecha_Creacion, SOC.Fecha_Modificacion
    FROM SIAA.CRG.OPERADORES_CARGA AS SOC;
END;
GO
/****** Object:  StoredProcedure [STG].[SP_CargarInicial_PAGOS]    Script Date: 23/10/2025 01:04:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [STG].[SP_CargarInicial_PAGOS]
AS
BEGIN
    SET NOCOUNT ON;
    TRUNCATE TABLE STG.PAGOS;
    INSERT INTO STG.PAGOS (
        ID_Pago, ID_Reservacion, Fecha_Pago, Monto, Metodo_Pago, Estado,
        Fecha_Creacion_Origen, Fecha_Modificacion_Origen
    )
    SELECT
        SPG.ID_Pago, SPG.ID_Reservacion, SPG.Fecha_Pago, SPG.Monto, SPG.Metodo_Pago, SPG.Estado,
        SPG.Fecha_Creacion, SPG.Fecha_Modificacion
    FROM SIAA.COM.PAGOS AS SPG;
END;
GO
/****** Object:  StoredProcedure [STG].[SP_CargarInicial_PAISES]    Script Date: 23/10/2025 01:04:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [STG].[SP_CargarInicial_PAISES]
AS
BEGIN
    SET NOCOUNT ON;
    TRUNCATE TABLE STG.PAISES;
    INSERT INTO STG.PAISES (
        ID_Pais, Nombre, Codigo_ISO, Fecha_Creacion_Origen, Fecha_Modificacion_Origen
    )
    SELECT
        SP.ID_Pais, SP.Nombre, SP.Codigo_ISO, SP.Fecha_Creacion, SP.Fecha_Modificacion
    FROM SIAA.INF.PAISES AS SP;
END;
GO
/****** Object:  StoredProcedure [STG].[SP_CargarInicial_PASAJEROS]    Script Date: 23/10/2025 01:04:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [STG].[SP_CargarInicial_PASAJEROS]
AS
BEGIN
    SET NOCOUNT ON;
    TRUNCATE TABLE STG.PASAJEROS;
    INSERT INTO STG.PASAJEROS (
        ID_Pasajero, Nombre, Apellido, Genero, Fecha_Nacimiento, Nacionalidad, Documento_Identidad,
        Correo_Electronico, Telefono, Fecha_Creacion_Origen, Fecha_Modificacion_Origen
    )
    SELECT
        SP.ID_Pasajero, SP.Nombre, SP.Apellido, SP.Genero, SP.Fecha_Nacimiento, SP.Nacionalidad, SP.Documento_Identidad,
        SP.Correo_Electronico, SP.Telefono, SP.Fecha_Creacion, SP.Fecha_Modificacion
    FROM SIAA.PAS.PASAJEROS AS SP;
END;
GO
/****** Object:  StoredProcedure [STG].[SP_CargarInicial_PASES_ABORDAJE]    Script Date: 23/10/2025 01:04:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [STG].[SP_CargarInicial_PASES_ABORDAJE]
AS
BEGIN
    SET NOCOUNT ON;
    TRUNCATE TABLE STG.PASES_ABORDAJE;
    INSERT INTO STG.PASES_ABORDAJE (
        ID_Paseabordaje, ID_Pasajero, ID_Vuelo, Asiento, Clase, Puerta_Embarque,
        Hora_Embarque, Estado, Codigo_QR, Fecha_Emision,
        Fecha_Creacion_Origen, Fecha_Modificacion_Origen
    )
    SELECT
        SPA.ID_Paseabordaje, SPA.ID_Pasajero, SPA.ID_Vuelo, SPA.Asiento, SPA.Clase, SPA.Puerta_Embarque,
        SPA.Hora_Embarque, SPA.Estado, SPA.Codigo_QR, SPA.Fecha_Emision,
        SPA.Fecha_Creacion, SPA.Fecha_Modificacion
    FROM SIAA.COM.PASES_ABORDAJE AS SPA;
END;
GO
/****** Object:  StoredProcedure [STG].[SP_CargarInicial_PUERTAS_EMBARQUE]    Script Date: 23/10/2025 01:04:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [STG].[SP_CargarInicial_PUERTAS_EMBARQUE]
AS
BEGIN
    SET NOCOUNT ON;
    TRUNCATE TABLE STG.PUERTAS_EMBARQUE;
    INSERT INTO STG.PUERTAS_EMBARQUE (
        ID_Puerta, Codigo_Puerta, ID_Terminal, Tipo_Puerta, Estado, Fecha_Creacion_Origen, Fecha_Modificacion_Origen
    )
    SELECT
        SPE.ID_Puerta, SPE.Codigo_Puerta, SPE.ID_Terminal, SPE.Tipo_Puerta, SPE.Estado, SPE.Fecha_Creacion, SPE.Fecha_Modificacion
    FROM SIAA.INF.PUERTAS_EMBARQUE AS SPE;
END;
GO
/****** Object:  StoredProcedure [STG].[SP_CargarInicial_REPORTES_GENERADOS]    Script Date: 23/10/2025 01:04:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [STG].[SP_CargarInicial_REPORTES_GENERADOS]
AS
BEGIN
    SET NOCOUNT ON;
    TRUNCATE TABLE STG.REPORTES_GENERADOS;
    INSERT INTO STG.REPORTES_GENERADOS (
        ID_Reporte, ID_Evento, Tipo_Reporte, Fecha_Generacion, Generado_Por,
        Periodo_Desde, Periodo_Hasta, Observaciones,
        Fecha_Creacion_Origen, Fecha_Modificacion_Origen
    )
    SELECT
        SRG.ID_Reporte, SRG.ID_Evento, SRG.Tipo_Reporte, SRG.Fecha_Generacion, SRG.Generado_Por,
        SRG.Periodo_Desde, SRG.Periodo_Hasta, SRG.Observaciones,
        SRG.Fecha_Creacion, SRG.Fecha_Modificacion
    FROM SIAA.AUD.REPORTES_GENERADOS AS SRG;
END;
GO
/****** Object:  StoredProcedure [STG].[SP_CargarInicial_RESERVACIONES]    Script Date: 23/10/2025 01:04:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [STG].[SP_CargarInicial_RESERVACIONES]
AS
BEGIN
    SET NOCOUNT ON;
    TRUNCATE TABLE STG.RESERVACIONES;
    INSERT INTO STG.RESERVACIONES (
        ID_Reservacion, ID_Pasajero, ID_Vuelo, Fecha_Reservacion, Clase, Costo, Estado,
        Fecha_Creacion_Origen, Fecha_Modificacion_Origen
    )
    SELECT
        SR.ID_Reservacion, SR.ID_Pasajero, SR.ID_Vuelo, SR.Fecha_Reservacion, SR.Clase, SR.Costo, SR.Estado,
        SR.Fecha_Creacion, SR.Fecha_Modificacion
    FROM SIAA.COM.RESERVACIONES AS SR;
END;
GO
/****** Object:  StoredProcedure [STG].[SP_CargarInicial_RUTAS_AEREAS]    Script Date: 23/10/2025 01:04:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [STG].[SP_CargarInicial_RUTAS_AEREAS]
AS
BEGIN
    SET NOCOUNT ON;
    TRUNCATE TABLE STG.RUTAS_AEREAS;
    INSERT INTO STG.RUTAS_AEREAS (
        ID_Ruta, ID_Aeropuerto_Origen, ID_Aeropuerto_Destino, Distancia_KM, Duracion_Estimada_MIN,
        Fecha_Creacion_Origen, Fecha_Modificacion_Origen
    )
    SELECT
        SRA.ID_Ruta, SRA.ID_Aeropuerto_Origen, SRA.ID_Aeropuerto_Destino, SRA.Distancia_KM, SRA.Duracion_Estimada_MIN,
        SRA.Fecha_Creacion, SRA.Fecha_Modificacion
    FROM SIAA.VUE.RUTAS_AEREAS AS SRA;
END;
GO
/****** Object:  StoredProcedure [STG].[SP_CargarInicial_SERVICIOS_BORDO]    Script Date: 23/10/2025 01:04:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [STG].[SP_CargarInicial_SERVICIOS_BORDO]
AS
BEGIN
    SET NOCOUNT ON;
    TRUNCATE TABLE STG.SERVICIOS_BORDO;
    INSERT INTO STG.SERVICIOS_BORDO (
        ID_Servicio, ID_Vuelo, Tipo_Servicio, Descripcion, Costo,
        Fecha_Creacion_Origen, Fecha_Modificacion_Origen
    )
    SELECT
        SSB.ID_Servicio, SSB.ID_Vuelo, SSB.Tipo_Servicio, SSB.Descripcion, SSB.Costo,
        SSB.Fecha_Creacion, SSB.Fecha_Modificacion
    FROM SIAA.SAB.SERVICIOS_BORDO AS SSB;
END;
GO
/****** Object:  StoredProcedure [STG].[SP_CargarInicial_SERVICIOS_CONSUMIDOS]    Script Date: 23/10/2025 01:04:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [STG].[SP_CargarInicial_SERVICIOS_CONSUMIDOS]
AS
BEGIN
    SET NOCOUNT ON;
    TRUNCATE TABLE STG.SERVICIOS_CONSUMIDOS;
    INSERT INTO STG.SERVICIOS_CONSUMIDOS (
        ID_Consumo, ID_Pasajero, ID_Servicio, Estado, Fecha_Solicitud, Fecha_Entrega, Observaciones,
        Fecha_Creacion_Origen, Fecha_Modificacion_Origen
    )
    SELECT
        SSC.ID_Consumo, SSC.ID_Pasajero, SSC.ID_Servicio, SSC.Estado, SSC.Fecha_Solicitud, SSC.Fecha_Entrega, SSC.Observaciones,
        SSC.Fecha_Creacion, SSC.Fecha_Modificacion
    FROM SIAA.SAB.SERVICIOS_CONSUMIDOS AS SSC;
END;
GO
/****** Object:  StoredProcedure [STG].[SP_CargarInicial_TERMINALES]    Script Date: 23/10/2025 01:04:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [STG].[SP_CargarInicial_TERMINALES]
AS
BEGIN
    SET NOCOUNT ON;
    TRUNCATE TABLE STG.TERMINALES;
    INSERT INTO STG.TERMINALES (
        ID_Terminal, Nombre, ID_Aeropuerto, Fecha_Creacion_Origen, Fecha_Modificacion_Origen
    )
    SELECT
        ST.ID_Terminal, ST.Nombre, ST.ID_Aeropuerto, ST.Fecha_Creacion, ST.Fecha_Modificacion
    FROM SIAA.INF.TERMINALES AS ST;
END;
GO
/****** Object:  StoredProcedure [STG].[SP_CargarInicial_TIEMPOS_PROCESO_PASAJEROS]    Script Date: 23/10/2025 01:04:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [STG].[SP_CargarInicial_TIEMPOS_PROCESO_PASAJEROS]
AS
BEGIN
    SET NOCOUNT ON;
    TRUNCATE TABLE STG.TIEMPOS_PROCESO_PASAJEROS;
    INSERT INTO STG.TIEMPOS_PROCESO_PASAJEROS (
        ID_Proceso, ID_Pasajero, Fecha, Hora_Llegada_Aeropuerto, Hora_CheckIn,
        Hora_Seguridad, Hora_Abordaje, Hora_Despegue,
        Fecha_Creacion_Origen, Fecha_Modificacion_Origen
    )
    SELECT
        STPP.ID_Proceso, STPP.ID_Pasajero, STPP.Fecha, STPP.Hora_Llegada_Aeropuerto, STPP.Hora_CheckIn,
        STPP.Hora_Seguridad, STPP.Hora_Abordaje, STPP.Hora_Despegue,
        STPP.Fecha_Creacion, STPP.Fecha_Modificacion
    FROM SIAA.INT.TIEMPOS_PROCESO_PASAJEROS AS STPP;
END;
GO
/****** Object:  StoredProcedure [STG].[SP_CargarInicial_TRIPULACION]    Script Date: 23/10/2025 01:04:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [STG].[SP_CargarInicial_TRIPULACION]
AS
BEGIN
    SET NOCOUNT ON;
    TRUNCATE TABLE STG.TRIPULACION;
    INSERT INTO STG.TRIPULACION (
        ID_Tripulacion, ID_Empleado, ID_Vuelo, Rol_Tripulacion, Fecha_Asignacion, Observaciones,
        Fecha_Creacion_Origen, Fecha_Modificacion_Origen
    )
    SELECT
        ST.ID_Tripulacion, ST.ID_Empleado, ST.ID_Vuelo, ST.Rol_Tripulacion, ST.Fecha_Asignacion, ST.Observaciones,
        ST.Fecha_Creacion, ST.Fecha_Modificacion
    FROM SIAA.TRP.TRIPULACION AS ST;
END;
GO
/****** Object:  StoredProcedure [STG].[SP_CargarInicial_TURNOS_EMPLEADOS]    Script Date: 23/10/2025 01:04:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [STG].[SP_CargarInicial_TURNOS_EMPLEADOS]
AS
BEGIN
    SET NOCOUNT ON;
    TRUNCATE TABLE STG.TURNOS_EMPLEADOS;
    INSERT INTO STG.TURNOS_EMPLEADOS (
        ID_Turno, ID_Empleado, Fecha, Hora_Entrada, Hora_Salida, Tipo_Turno, Estado,
        Fecha_Creacion_Origen, Fecha_Modificacion_Origen
    )
    SELECT
        STE.ID_Turno, STE.ID_Empleado, STE.Fecha, STE.Hora_Entrada, STE.Hora_Salida, STE.Tipo_Turno, STE.Estado,
        STE.Fecha_Creacion, STE.Fecha_Modificacion
    FROM SIAA.RRH.TURNOS_EMPLEADOS AS STE;
END;
GO
/****** Object:  StoredProcedure [STG].[SP_CargarInicial_UNIDADES_EMERGENCIA]    Script Date: 23/10/2025 01:04:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [STG].[SP_CargarInicial_UNIDADES_EMERGENCIA]
AS
BEGIN
    SET NOCOUNT ON;
    TRUNCATE TABLE STG.UNIDADES_EMERGENCIA;
    INSERT INTO STG.UNIDADES_EMERGENCIA (
        ID_Unidad, Tipo_Unidad, Placa_Unidad, Responsable, Estado,
        Fecha_Creacion_Origen, Fecha_Modificacion_Origen
    )
    SELECT
        SUE.ID_Unidad, SUE.Tipo_Unidad, SUE.Placa_Unidad, SUE.Responsable, SUE.Estado,
        SUE.Fecha_Creacion, SUE.Fecha_Modificacion
    FROM SIAA.EMR.UNIDADES_EMERGENCIA AS SUE;
END;
GO
/****** Object:  StoredProcedure [STG].[SP_CargarInicial_VUELOS]    Script Date: 23/10/2025 01:04:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [STG].[SP_CargarInicial_VUELOS]
AS
BEGIN
    SET NOCOUNT ON;
    TRUNCATE TABLE STG.VUELOS;
    INSERT INTO STG.VUELOS (
        ID_Vuelo, Numero_Vuelo, ID_Ruta, ID_Aeronave, ID_Horario, Fecha_Salida,
        Hora_Salida, Hora_Llegada, Estado, Fecha_Creacion_Origen, Fecha_Modificacion_Origen
    )
    SELECT
        SV.ID_Vuelo, SV.Numero_Vuelo, SV.ID_Ruta, SV.ID_Aeronave, SV.ID_Horario, SV.Fecha_Salida,
        SV.Hora_Salida, SV.Hora_Llegada, SV.Estado, SV.Fecha_Creacion, SV.Fecha_Modificacion
    FROM SIAA.VUE.VUELOS AS SV;
END;
GO
/****** Object:  StoredProcedure [STG].[SP_CargarInicial_VUELOS_CARGA]    Script Date: 23/10/2025 01:04:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [STG].[SP_CargarInicial_VUELOS_CARGA]
AS
BEGIN
    SET NOCOUNT ON;
    TRUNCATE TABLE STG.VUELOS_CARGA;
    INSERT INTO STG.VUELOS_CARGA (
        ID_VueloCarga, ID_Aeronave, ID_Ruta, Fecha_Salida, Hora_Salida,
        Peso_Total_Kg, Volumen_Total_M3, Estado,
        Fecha_Creacion_Origen, Fecha_Modificacion_Origen
    )
    SELECT
        SVC.ID_VueloCarga, SVC.ID_Aeronave, SVC.ID_Ruta, SVC.Fecha_Salida, SVC.Hora_Salida,
        SVC.Peso_Total_Kg, SVC.Volumen_Total_M3, SVC.Estado,
        SVC.Fecha_Creacion, SVC.Fecha_Modificacion
    FROM SIAA.CRG.VUELOS_CARGA AS SVC;
END;
GO
