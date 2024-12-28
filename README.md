![portada_riverplate](https://github.com/user-attachments/assets/df1cd21b-fbb8-46f3-af41-4084be826847)

# Proyecto: riverplate

### Alumno: Martín Salustio.
### Curso: Coderhouse SQL.
### Comisión: 59430.
### Docente: Anderson Michel Torres.
### Tutores: Nicolás Maugeri y Hugo González.

## **Introducción**

La base de datos ‘riverplate’ fue creada para gestionar y almacenar información relacionada con el Club Atlético River Plate (CARP), uno de los clubes más importantes del fútbol argentino. Esta base de datos abarca múltiples aspectos en torno al primer equipo de fútbol masculino que se desempeñó durante el segundo semestre del año 2024, incluyendo jugadores, cuerpo técnico, partidos, competiciones y aspectos médicos.

## **Objetivo**

El objetivo de la base de datos es facilitar la toma de decisiones en cuanto a la gestión deportiva del club. A partir de la información almacenada, se podrá visualizar:
- El rendimiento de los jugadores del plantel y del cuerpo técnico.
- Las bajas debido a lesiones, varias amonestaciones y expulsiones.
- La duración de los contratos y préstamos.
- Los perfiles de jugadores que necesita el equipo para salir adelante.
- El desempeño del club en competiciones nacionales e internacionales.

## **Situación problemática**

El fútbol es un deporte repleto de datos, por lo que es necesario centralizar la información del club en un solo lugar. La base de datos busca resolver:
- La compleja necesidad de analizar tanto las estadísticas individuales como las colectivas.
- La gestión de contratos, préstamos y renovaciones de los jugadores y de los miembros del cuerpo técnico.
- La disponibilidad de jugadores, quienes no pueden jugar en caso de lesiones, varias amonestaciones o expulsiones.
- La dificultad de manejar los datos en torno a una gran variedad de competiciones en las que participa el club.

## **Modelo de negocio**

El modelo de negocio representado en esta base de datos se centra en las operaciones principales de un club de fútbol profesional, en este caso del Club Atlético River Plate. El modus operandi se estructura de la siguiente manera:
- Gestión de personal deportivo: registro de los jugadores y del cuerpo técnico, administrando sus contratos y préstamos.
- Gestión de partidos: seguimiento de resultados y estadísticas.
- Gestión de infraestructura: control de las instalaciones deportivas.
- Control médico y de sanciones: control de la disponibilidad del plantel.
- Administración de competiciones: gestión de los torneos de los que forma parte el club.

## **Creación de las tablas**

### **Tablas sin FK**

- ‘posicion’: contiene las posiciones que ocupan los jugadores en los partidos.
  - id_posicion INT NOT NULL AUTO_INCREMENT PRIMARY KEY.
  - detalle_posicion VARCHAR(200).
- ‘rol_ct’: contiene los roles que desempeñan los miembros del cuerpo técnico en los partidos y durante los entrenamientos.
  - id_rol_ct INT NOT NULL AUTO_INCREMENT PRIMARY KEY.
  - detalle_rol_ct VARCHAR(200).
- ‘alineacion’: representa las diferentes estrategias, las formas de jugar que puede elegir el director ténico en cada uno de los encuentros.
  - id_alineacion INT NOT NULL AUTO_INCREMENT PRIMARY KEY.
  - detalle_alineacion VARCHAR(200).
- ‘resultado’: contiene las posibilidades de resultados de un partido.
  - id_resultado INT NOT NULL AUTO_INCREMENT PRIMARY KEY.
  - detalle_resultado VARCHAR(200).
- ‘lesion’: almacena los tipos de lesiones que pueden sufrir los jugadores.
  - id_lesion INT NOT NULL AUTO_INCREMENT PRIMARY KEY.
  - tipo_lesion VARCHAR(200).
- ‘competicion’: gestiona la información importante de las diferentes competencias en las que participa el club.
  - id_competicion INT NOT NULL AUTO_INCREMENT PRIMARY KEY.
  - nombre_competicion VARCHAR(200).
  - alcance VARCHAR(200).
- ‘arbitro’: contiene información sobre aquellas personas que dirigen los partidos y que toman las decisiones adentro de la cancha.
  - id_arbitro INT NOT NULL AUTO_INCREMENT PRIMARY KEY.
  - nombre VARCHAR(200).
  - apellido VARCHAR(200).
  - pais_nacimiento VARCHAR(200) DEFAULT 'Argentina'.
- ‘estadio’: almacena la información de los estadios del mundo en los que el equipo debe jugar en las distintas competiciones.
  - id_estadio INT NOT NULL AUTO_INCREMENT PRIMARY KEY.
  - nombre_estadio VARCHAR(200).
  - pais VARCHAR(200) DEFAULT 'Argentina'.
  - ubicacion VARCHAR(200).
  - capacidad INT.

### **Tablas con FK**

- ‘club’: representa a los rivales a los que se tiene que enfrentar el club.
  - id_club INT NOT NULL AUTO_INCREMENT PRIMARY KEY.
  - id_estadio INT (FK).
  - nombre_club VARCHAR(200).
  - pais VARCHAR(200) DEFAULT 'Argentina'.
  - socios INT.
- ‘jugador’: almacena la información personal de cada miembro del plantel futbolístico, incluyendo los datos acerca de los contratos y préstamos.
  - id_jugador INT NOT NULL AUTO_INCREMENT PRIMARY KEY.
  - id_ultimo_club_jugador INT (FK).
  - id_posicion INT (FK).
  - nombre VARCHAR(200).
  - apellido VARCHAR(200).
  - dorsal INT.
  - fecha_nacimiento DATE.
  - pais_nacimiento VARCHAR(200) DEFAULT 'Argentina'.
  - inicio_contrato DATE.
  - fin_contrato DATE.
  - ultima_renovacion DATE.
  - prestamo BOOLEAN.
- ‘cuerpo_tecnico’: contiene la información de cada integrante del cuerpo técnico, incluyendo sus contratos.
  - id_ct INT NOT NULL AUTO_INCREMENT PRIMARY KEY.
  - id_ultimo_club_ct INT (FK).
  - id_rol_ct INT (FK).
  - nombre VARCHAR(200).
  - apellido VARCHAR(200).
  - fecha_nacimiento DATE.
  - pais_nacimiento VARCHAR(200) DEFAULT 'Argentina'.
  - inicio_contrato DATE.
  - fin_contrato DATE.
- ‘partido’: registra las estadísticas de cada partido con el objetivo de que sean posteriormente analizadas.
  - id_partido INT NOT NULL AUTO_INCREMENT PRIMARY KEY.
  - id_competicion INT (FK).
  - id_estadio INT (FK).
  - id_club INT (FK).
  - id_arbitro INT (FK).
  - id_alineacion INT (FK).
  - id_resultado INT (FK).
  - fecha DATE.
  - goles_realizados INT.
  - goles_recibidos INT.

### **Tablas intermedias**

- ‘lesion_jugador’: sirve para gestionar las fechas en las que los jugadores no están disponibles debido a complicaciones médicas.
  - id_lesion_jugador INT NOT NULL AUTO_INCREMENT PRIMARY KEY.
  - id_jugador INT (FK).
  - id_lesion INT (FK).
  - fecha_lesion DATE.
  - partidos_perdidos INT.
- ‘ct_partido’: se utiliza para observar cómo se desempeñan los miembros del cuerpo técnico durante los partidos.
  - id_ct_partido INT NOT NULL AUTO_INCREMENT PRIMARY KEY.
  - id_ct INT (FK).
  - id_partido INT (FK).
  - id_rol_en_partido INT (FK).
  - observaciones VARCHAR(500).
  - amarilla BOOLEAN.
  - doble_amarilla BOOLEAN.
  - roja BOOLEAN.
- ‘jugador_partido’: funciona para analizar el desempeño de cada jugador en un partido en específico.
  - id_jugador_partido INT NOT NULL AUTO_INCREMENT PRIMARY KEY.
  - id_jugador INT (FK).
  - id_partido INT (FK).
  - minutos_jugados INT.
  - goles INT.
  - asistencias INT.
  - goles_recibidos INT DEFAULT NULL.
  - amarilla BOOLEAN.
  - doble_amarilla BOOLEAN.
  - roja BOOLEAN.

## **Objetos de la base de datos: vistas**

### **Vista'vw_calcular_edad'**

Descripción: sirve para calcular la edad de los jugadores restando la fecha actual con la fecha de nacimiento de cada uno.

Columnas:
  - nombre: nombre del jugador.
  - apellido: apellido del jugador.
  - edad: calcula automáticamente la edad del jugador.

Uso: SELECT * FROM vw_calcular_edad;

### **Vista'vw_calcular_antiguedad'**

Descripción: Calcula los años de antigüedad de los jugadores en el club.

Columnas:
  - nombre: Nombre del jugador.
  - apellido: Apellido del jugador.
  - antiguedad: Antigüedad en años.

Uso: SELECT * FROM vw_calcular_antiguedad;

### **Vista'vw_contratos_por_vencer'**

Descripción: Muestra los jugadores cuyos contratos terminan en el año vigente.

Columnas:
  - nombre: Nombre del jugador.
  - apellido: Apellido del jugador.
  - fin_contrato: Fecha de vencimiento del contrato.

Uso: SELECT * FROM vw_contratos_por_vencer;

### **Vista'vw_partido_detalle'**

Descripción: Proporciona detalles completos de los partidos jugados.

Columnas:
  - nombre_competicion: Competición.
  - nombre_estadio: Estadio.
  - nombre_club: Club rival.
  - apellido: Árbitro.
  - detalle_alineacion: Alineación del equipo.
  - detalle_resultado: Resultado del partido.
  - fecha: Fecha del partido.
  - goles_realizados: Goles realizados.
  - goles_recibidos: Goles recibidos.

Uso: SELECT * FROM vw_partido_detalle;

### **Vista'vw_jugador_partido_detalle'**

Descripción: Muestra el rendimiento detallado de cada jugador en los partidos.

Columnas:
  - fecha: Fecha del partido.
  - nombre_competicion: Competición.
  - nombre_estadio: Estadio.
  - nombre_club: Club rival.
  - nombre: Nombre del jugador.
  - apellido: Apellido del jugador.
  - minutos_jugados: Minutos jugados.
  - goles: Goles marcados.
  - asistencias: Asistencias realizadas.
  - goles_recibidos: Goles recibidos.
  - amarilla: Tarjetas amarillas.
  - doble_amarilla: Dobles amarillas.
  - roja: Tarjetas rojas.

Uso: SELECT * FROM vw_jugador_partido_detalle;

### **Vista'vw_cantidad_jugadores_club'**

Descripción: Identifica el club que más jugadores ha aportado al plantel.

Columnas:
  - nombre_club: Nombre del club.
  - cantidad_jugadores: Cantidad de jugadores provenientes de ese club.

Uso: SELECT * FROM vw_cantidad_jugadores_club;

### **Función'fx_goles_competicion'**

Descripción: Calcula la cantidad de goles marcados por un jugador en una competición específica.

Parámetros:
  - _id_jugador: ID del jugador.
  - _id_competicion: ID de la competición.

Uso: SELECT fx_goles_competicion(24, 2);

### **Función'fx_asistencias_competicion'**

Descripción: Calcula la cantidad de asistencias realizadas por un jugador en una competición específica.

Parámetros:
  - _id_jugador: ID del jugador.
  - _id_competicion: ID de la competición.

Uso: SELECT fx_asistencias_competicion(21, 2);

### **Función'fx_rojas_competicion'**

Descripción: Calcula la cantidad de tarjetas rojas recibidas por un jugador en una competición específica.

Parámetros:
  - _id_jugador: ID del jugador.
  - _id_competicion: ID de la competición.

Uso: SELECT fx_rojas_competicion(6, 2);

### **Función'fx_amarillas_competicion'**

Descripción: Calcula la cantidad de tarjetas amarillas recibidas por un jugador en una competición específica.

Parámetros:
  - _id_jugador: ID del jugador.
  - _id_competicion: ID de la competición.

Uso: SELECT fx_amarillas_competicion(29, 2);

### **Procedimiento'sp_registrar_partido'**

Descripción: Registra un nuevo partido en la base de datos.

Parámetros:
  - Detalles del partido (competición, estadio, club, árbitro, alineación, resultado, fecha, goles realizados, goles recibidos).

Uso: CALL sp_registrar_partido(2, 1, 15, 11, 5, 1, CURDATE(), 2, 0);

### **Procedimiento'sp_actualizar_contrato'**

Descripción: Actualiza la fecha de finalización de contrato de un jugador.

Parámetros:
  - sp_id_jugador: ID del jugador.
  - sp_fin_contrato: Nueva fecha de fin de contrato.
  - sp_ultima_renovacion: Fecha de la última renovación.

Uso: CALL sp_actualizar_contrato(21, '2030-12-31', CURDATE());

### **Trigger't_verificar_goles_partido_insert'**

Descripción: Verifica que los goles realizados o recibidos no sean negativos al insertar un partido.

### **Trigger't_verificar_capacidad_estadio_insert'**

Descripción: Asegura que la capacidad del estadio no sea negativa al insertar un nuevo registro.

### **Trigger't_verificar_socios_club_insert'**

Descripción: Valida que la cantidad de socios de un club no sea negativa al insertar un club.

Uso de triggers: Activados automáticamente en las operaciones correspondientes.

### **Usuario: jorge_brito**

Descripción: al ser el presidente y la máxima autoridad del Club Atlético River Plate, tiene acceso como administrador a la base de datos con todos los permisos.

### **Usuarios: matias_patanian e ignacio_villarroel**

Descripción: al ser los vicepresidentes del Club Atlético River Plate, tienen acceso a la totalidad de la base de datos. Sin embargo, al no trabajar en algo relacionado a la gestión de la información, no necesitan permisos de edición, solo de lectura.

Los vicepresidentes tienen el rol llamado 'role_vicepresidente' para facilitar el hecho de darles los mismos permisos a ambos.

### **Usuario: enzo_francescoli**

Descripción: al ser el director deportivo del Club Atlético River Plate, tiene acceso a las tablas relacionadas con los jugadores, con el objetivo de que pueda ver sus desempeños en la cancha y cómo están físicamente. De esta manera, podrá cumplir con su rol de fichar jugadores que cubran las debilidades del plantel actual.

## Herramientas utilizadas en el proyecto

- Excalidraw: funcionó como la herramienta de dibujo que utilicé para crear el Diagrama de Entidad-Relación (DER).
- GitHub: funcionó como la plataforma en la cual pude crear un repositorio para almacenar allí mi proyecto final.
- MySQL: funcionó como el sistema de gestión de bases de datos relacionales que me permitió almacenar y manipular datos.
- MySQL Workbench: funcionó como la interfaz gráfica que me permitió trabajar con bases de datos MySQL.
