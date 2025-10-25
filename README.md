# ✈️ SIAA - Sistema Integral de Administración Aeroportuaria

[![SQL Server](https://img.shields.io/badge/SQL_Server-CC2927?style=flat-square&logo=microsoft-sql-server&logoColor=white)](https://www.microsoft.com/sql-server)
[![Power BI](https://img.shields.io/badge/Power_BI-F2C811?style=flat-square&logo=powerbi&logoColor=black)](https://powerbi.microsoft.com/)
[![Estado](https://img.shields.io/badge/Estado-Finalizado-success?style=flat-square)]()
[![Calificación](https://img.shields.io/badge/Calificaci%C3%B3n-100%2F100-brightgreen?style=flat-square)]()

> **Inteligencia Estratégica para la Administración de Aeropuertos**

---

## 📋 Descripción del Proyecto

**SIAA** es un sistema integral de base de datos diseñado para la gestión completa de operaciones aeroportuarias. Este proyecto proporciona una solución robusta y escalable para el análisis predictivo y descriptivo de:

- ✈️ **Tráfico Aéreo** - Control integral de vuelos, rutas y horarios
- 👥 **Gestión de Pasajeros** - Desde reservaciones hasta abordaje
- 🏢 **Infraestructura** - Administración de terminales, puertas y recursos
- 💰 **Análisis Financiero** - Rendimiento operativo y comercial
- 📊 **Business Intelligence** - Reportería y análisis mediante Data Warehouse

El sistema está diseñado para apoyar la **toma de decisiones estratégicas** de autoridades aeroportuarias y gubernamentales, basándose en las mejores prácticas de aeropuertos internacionales de clase mundial.

---

## 🎯 Objetivos del Proyecto

✅ Diseñar una base de datos normalizada y escalable para operaciones aeroportuarias  
✅ Implementar un Data Warehouse (DWSIAA) para análisis histórico  
✅ Crear dashboards ejecutivos en Power BI para visualización de KPIs  
✅ Facilitar la toma de decisiones basada en datos en tiempo real  
✅ Optimizar procesos operativos mediante indicadores clave de desempeño  
✅ Simular escenarios reales de grandes aeropuertos internacionales  

---

## 🏗️ Arquitectura del Sistema

El proyecto SIAA se compone de **dos bases de datos principales**:

### 📊 **1. Base de Datos Operacional (SIAA)**
Sistema transaccional OLTP para operaciones diarias del aeropuerto:
- Gestión de vuelos en tiempo real
- Control de pasajeros y equipaje
- Administración de tripulación y empleados
- Operaciones de carga y logística
- Servicios comerciales y marketing

### 📈 **2. Data Warehouse (DWSIAA)**
Sistema analítico OLAP para análisis histórico e inteligencia de negocio:
- Análisis de tendencias históricas
- Predicción de demanda
- Optimización de recursos
- Reportería ejecutiva
- Integración con Power BI

---

## 💻 Stack Tecnológico

| Tecnología | Uso en el Proyecto |
|------------|-------------------|
| **Microsoft SQL Server** | Motor de base de datos principal (OLTP y OLAP) |
| **T-SQL** | Stored Procedures, triggers, funciones y vistas |
| **Power BI** | Análisis visual y dashboards ejecutivos |
| **Schemas** | Organización modular por departamentos |
| **Git & GitHub** | Control de versiones y colaboración |

---

## 📊 Características Principales

### **Base de Datos SIAA (Operacional)**

```
✅ 46 tablas organizadas en 22 bloques funcionales
✅ Arquitectura modular con schemas por departamento
✅ Stored Procedures para lógica de negocio compleja
✅ Triggers para auditoría y trazabilidad automática
✅ Vistas especializadas para consultas frecuentes
✅ Índices optimizados para alto rendimiento
✅ Constraints y validaciones de integridad referencial
✅ Normalización hasta 3FN (Tercera Forma Normal)
```

### **Data Warehouse DWSIAA (Analítico)**

```
✅ Modelado dimensional (esquema estrella)
✅ Tablas de hechos y dimensiones optimizadas
✅ Procesos ETL para carga de datos históricos
✅ Agregaciones precalculadas para análisis rápido
✅ Slowly Changing Dimensions (SCD Type 2)
✅ Particionamiento de tablas por rendimiento
✅ Integración nativa con Power BI
```

---

## 🗂️ Estructura de Schemas por Departamento

El sistema utiliza **schemas de SQL Server** para organizar lógicamente las tablas por área funcional:

| Schema | Departamento | Funcionalidad |
|--------|--------------|---------------|
| **INF** | Infraestructura | Países, aeropuertos, terminales, puertas |
| **OPA** | Operaciones Aéreas | Aerolíneas y aeronaves |
| **VUE** | Operaciones de Vuelo | Rutas, horarios, vuelos |
| **RRH** | Recursos Humanos | Empleados, turnos, asistencias |
| **PAS** | Servicio al Cliente | Gestión de pasajeros |
| **COM** | Comercial y Ventas | Reservaciones, pagos, abordajes |
| **EQP** | Logística de Equipaje | Control de equipaje |
| **MIG** | Migración y Aduana | Control migratorio |
| **SAB** | Servicio a Bordo | Servicios y consumos |
| **TEC** | Mantenimiento Técnico | Mantenimiento de aeronaves |
| **ABC** | Abastecimiento | Control de combustible |
| **MET** | Meteorología | Condiciones climáticas |
| **INT** | Business Intelligence | Incidentes, estadísticas, KPIs |
| **AUD** | Auditoría | Trazabilidad y reportes |
| **TRP** | Tripulación | Gestión de personal de vuelo |
| **SEG** | Seguridad | Controles e incidentes |
| **MKT** | Marketing | Campañas, fidelización, encuestas |
| **CTI** | Control Interno | Inspecciones y auditorías |
| **LGT** | Logística Terrestre | Transporte terrestre |
| **CRG** | Carga y Logística | Operaciones de carga aérea |
| **EMR** | Emergencias | Unidades e intervenciones |
| **PRE** | Planeamiento | Análisis histórico predictivo |

---

## 📁 Contenido del Repositorio

```
SIAA-Sistema-Integral-de-Gestion-Aeroportuaria/
│
├── 📄 SCRIPT BASE DE DATOS SIAA TABLAS SP SCHEMAS.sql
│   └─ Script completo de creación de base de datos operacional
│   └─ Incluye: tablas, stored procedures, triggers, vistas, schemas
│
├── 📄 SCRIPT DATA LAKE - DATA WAREHOUSE DWSIAA TABLAS SP SCHEMAS.sql
│   └─ Script completo de Data Warehouse analítico
│   └─ Incluye: dimensiones, hechos, ETL, agregaciones
│
├── 📄 Script SIAA.txt
│   └─ Versión de texto del script principal
│
├── 📊 Derek Velluti Proyecto final PBI.pdf
│   └─ Documentación del dashboard de Power BI
│
├── 📝 Proyecto Final SIAA.pdf
│   └─ Documentación técnica completa del proyecto
│
├── 🎓 Proyecto final TAND 08 Derek Velluti 1.pptx
│   └─ Presentación ejecutiva del proyecto
│
└── 📋 README.md
    └─ Este archivo
```

---

## 🚀 Instalación y Configuración

### **Prerrequisitos**

- Microsoft SQL Server 2019 o superior
- SQL Server Management Studio (SSMS)
- Power BI Desktop (opcional, para dashboards)
- Mínimo 4GB RAM disponible
- 2GB de espacio en disco

### **Instalación Paso a Paso**

#### **1. Clonar el Repositorio**

```bash
git clone https://github.com/DerekVelluti/SIAA-Sistema-Integral-de-Gestion-Aeroportuaria.git
cd SIAA-Sistema-Integral-de-Gestion-Aeroportuaria
```

#### **2. Crear Base de Datos Operacional (SIAA)**

1. Abrir SQL Server Management Studio (SSMS)
2. Conectarse a tu instancia de SQL Server
3. Abrir el archivo: `SCRIPT BASE DE DATOS SIAA TABLAS SP SCHEMAS.sql`
4. Ejecutar el script completo (F5)
5. Verificar creación exitosa de schemas y tablas

#### **3. Crear Data Warehouse (DWSIAA)**

1. En SSMS, abrir: `SCRIPT DATA LAKE - DATA WAREHOUSE DWSIAA TABLAS SP SCHEMAS.sql`
2. Ejecutar el script completo
3. Verificar creación de dimensiones y tablas de hechos

#### **4. Cargar Datos de Prueba (Opcional)**

Los scripts incluyen datos de ejemplo para testing. Revisar los INSERT statements al final de cada script.

#### **5. Configurar Power BI (Opcional)**

1. Abrir Power BI Desktop
2. Conectarse a SQL Server (servidor local o remoto)
3. Seleccionar base de datos DWSIAA
4. Importar las tablas de dimensiones y hechos
5. Crear relaciones según el modelo estrella

---

## 📈 Casos de Uso

### **Operaciones Diarias**
- Control de vuelos en tiempo real (salidas/llegadas)
- Gestión de check-in y abordaje de pasajeros
- Asignación dinámica de puertas de embarque
- Seguimiento de equipaje en tránsito
- Control de tripulación y turnos de empleados

### **Análisis Estratégico**
- Ocupación promedio por ruta y temporada
- Rentabilidad por aerolínea y tipo de vuelo
- Predicción de demanda de servicios
- Análisis de satisfacción del cliente
- Optimización de recursos (combustible, personal, infraestructura)

### **Business Intelligence**
- Dashboards ejecutivos en tiempo real
- Análisis de tendencias históricas
- Identificación de patrones operativos
- KPIs de rendimiento aeroportuario
- Reportería automática para gerencia

---

## 🏆 Resultados del Proyecto

- 🥇 **Calificación Final:** 100/100
- 🎓 **Proyecto Final** - Técnico en Análisis de Datos (TAND 08)
- ⭐ Reconocido por complejidad técnica y aplicabilidad real
- 📊 Implementación completa de mejores prácticas de bases de datos
- 🔄 Sistema escalable y listo para producción
- 📚 Documentación técnica exhaustiva

---

## 📚 Conceptos Aplicados

### **Diseño de Bases de Datos**
- Normalización (1FN, 2FN, 3FN)
- Modelado Entidad-Relación (ER)
- Integridad referencial y constraints
- Índices y optimización de queries
- Schemas para organización lógica

### **Data Warehousing**
- Modelado dimensional (Kimball)
- Esquema estrella (Star Schema)
- Tablas de hechos y dimensiones
- Procesos ETL (Extract, Transform, Load)
- Slowly Changing Dimensions

### **Programación SQL**
- Stored Procedures complejos
- Triggers para auditoría
- Funciones definidas por usuario
- Vistas materializadas
- Transacciones y manejo de errores

### **Business Intelligence**
- KPIs y métricas de negocio
- Dashboards interactivos
- Análisis OLAP
- Reportería ejecutiva
- Visualización de datos

---

## 🔮 Roadmap de Mejoras Futuras

- [ ] **API REST** - Interfaz de integración con sistemas externos
- [ ] **Machine Learning** - Predicción de demanda con modelos ML
- [ ] **Aplicación Web** - Frontend para gestión operativa
- [ ] **Streaming en Tiempo Real** - Integración con IoT y sensores
- [ ] **Alertas Automáticas** - Sistema de notificaciones inteligente
- [ ] **App Móvil** - Aplicación para pasajeros y personal
- [ ] **Integración Cloud** - Migración a Azure SQL Database
- [ ] **Blockchain** - Trazabilidad inmutable de equipaje

---

## 👨‍💻 Autor

**Derek Velluti**  
*Técnico en Análisis de Datos*

Profesional especializado en gestión de bases de datos, análisis de datos y business intelligence, con experiencia en el sector de gestión documental y archivística.

### 📫 Contacto

[![LinkedIn](https://img.shields.io/badge/LinkedIn-0077B5?style=flat-square&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/derek-velluti)
[![GitHub](https://img.shields.io/badge/GitHub-181717?style=flat-square&logo=github&logoColor=white)](https://github.com/DerekVelluti)
[![Email](https://img.shields.io/badge/Email-D14836?style=flat-square&logo=gmail&logoColor=white)](mailto:vellutimurillo@gmail.com)

---

## 📄 Licencia

Este proyecto fue desarrollado como **Proyecto Final** de la carrera Técnico en Análisis de Datos.  
Todos los derechos reservados © 2024 Derek Velluti

---

## 🙏 Agradecimientos

- **Universidad Hispanoamericana** - Por la formación académica y guía durante el desarrollo
- **Profesores y Mentores** - Por el acompañamiento técnico y metodológico
- **Comunidad de Análisis de Datos** - Por recursos, buenas prácticas y retroalimentación
- **Compañeros de Clase** - Por el trabajo colaborativo y apoyo mutuo

---

## 🌟 Basado en Aeropuertos de Clase Mundial

Este proyecto se inspiró en la estructura operacional de:

| Aeropuerto | Código | País | Pasajeros/Año |
|------------|--------|------|---------------|
| Los Angeles International | **LAX** | 🇺🇸 USA | 88M |
| Hartsfield-Jackson Atlanta | **ATL** | 🇺🇸 USA | 107M |
| London Heathrow | **LHR** | 🇬🇧 UK | 80M |
| Singapore Changi | **SIN** | 🇸🇬 Singapore | 68M |
| Dubai International | **DXB** | 🇦🇪 UAE | 89M |

---

## 📊 Estadísticas del Proyecto

```
📅 Duración del Desarrollo: 6 meses
💾 Líneas de Código SQL: ~5,000 líneas
📊 Tablas Creadas: 46 tablas operacionales + 15 dimensionales
🔧 Stored Procedures: 25+ procedimientos
⚡ Triggers: 10+ triggers de auditoría
📈 Vistas: 20+ vistas especializadas
📚 Documentación: 150+ páginas
🎯 Calificación Final: 100/100
```

---

## 💡 ¿Por qué SIAA?

En la industria aeroportuaria moderna, la **gestión eficiente de datos** es crítica para:

- ✈️ Garantizar operaciones seguras y puntuales
- 👥 Mejorar la experiencia del pasajero
- 💰 Optimizar costos operativos
- 📊 Tomar decisiones basadas en datos reales
- 🌍 Cumplir con estándares internacionales (IATA, ICAO, FAA)

**SIAA** proporciona la infraestructura de datos necesaria para lograr estos objetivos, combinando operación transaccional en tiempo real con análisis histórico profundo.

---

<div align="center">

### ⭐ Si este proyecto te resulta útil o interesante, no olvides darle una estrella ⭐

**Desarrollado con dedicación y pasión por Derek Velluti**

![Visitas al perfil](https://komarev.com/ghpvc/?username=DerekVelluti&color=brightgreen&style=flat-square&label=Visitas+al+Perfil)

---

**"Los datos son el combustible de las decisiones inteligentes"**

</div>
