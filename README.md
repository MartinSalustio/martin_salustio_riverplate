Introducción

La base de datos ‘riverplate’ fue creada para gestionar y almacenar información relacionada con el Club Atlético River Plate (CARP), uno de los clubes más importantes del fútbol argentino. Esta base de datos abarca múltiples aspectos en torno al primer equipo de fútbol masculino que se desempeñó durante el segundo semestre del año 2024, incluyendo jugadores, cuerpo técnico, partidos, competiciones y aspectos médicos.

Objetivo

El objetivo de la base de datos es facilitar la toma de decisiones en cuanto a la gestión deportiva del club. A partir de la información almacenada, se podrá visualizar:
•	El rendimiento de los jugadores del plantel y del cuerpo técnico.
•	Las bajas debido a lesiones, varias amonestaciones y expulsiones.
•	La duración de los contratos y préstamos.
•	Los perfiles de jugadores que necesita el equipo para salir adelante.
•	El desempeño del club en competiciones nacionales e internacionales.

Situación problemática

El fútbol es un deporte repleto de datos, por lo que es necesario centralizar la información del club en un solo lugar. La base de datos busca resolver:
•	La compleja necesidad de analizar tanto las estadísticas individuales como las colectivas.
•	La gestión de contratos, préstamos y renovaciones de los jugadores y de los miembros del cuerpo técnico.
•	La disponibilidad de jugadores, quienes no pueden jugar en caso de lesiones, varias amonestaciones o expulsiones.
•	La dificultad de manejar los datos en torno a una gran variedad de competiciones en las que participa el club.

Modelo de negocio

El modelo de negocio representado en esta base de datos se centra en las operaciones principales de un club de fútbol profesional, en este caso del Club Atlético River Plate. El modus operandi se estructura de la siguiente manera:
•	Gestión de personal deportivo: registro de los jugadores y del cuerpo técnico, administrando sus contratos y préstamos.
•	Gestión de partidos: seguimiento de resultados y estadísticas.
•	Gestión de infraestructura: control de las instalaciones deportivas.
•	Control médico y de sanciones: control de la disponibilidad del plantel.
•	Administración de competiciones: gestión de los torneos de los que forma parte el club.

Tablas sin FK

•	‘posicion’: contiene las posiciones que ocupan los jugadores en los partidos.
o	id_posicion INT NOT NULL AUTO_INCREMENT PRIMARY KEY.
o	detalle_posicion VARCHAR(200).
•	‘rol_ct’: contiene los roles que desempeñan los miembros del cuerpo técnico en los partidos y durante los entrenamientos.
o	id_rol_ct INT NOT NULL AUTO_INCREMENT PRIMARY KEY.
o	detalle_rol_ct VARCHAR(200).
•	‘alineacion’: representa las diferentes estrategias, las formas de jugar que puede elegir el director ténico en cada uno de los encuentros.
o	id_alineacion INT NOT NULL AUTO_INCREMENT PRIMARY KEY.
o	detalle_alineacion VARCHAR(200).
•	‘resultado’: contiene las posibilidades de resultados de un partido.
o	id_resultado INT NOT NULL AUTO_INCREMENT PRIMARY KEY.
o	detalle_resultado VARCHAR(200).
•	‘lesion’: almacena los tipos de lesiones que pueden sufrir los jugadores.
o	id_lesion INT NOT NULL AUTO_INCREMENT PRIMARY KEY.
o	tipo_lesion VARCHAR(200).
•	‘competicion’: gestiona la información importante de las diferentes competencias en las que participa el club.
o	id_competicion INT NOT NULL AUTO_INCREMENT PRIMARY KEY.
o	nombre_competicion VARCHAR(200).
o	alcance VARCHAR(200).
•	‘arbitro’: contiene información sobre aquellas personas que dirigen los partidos y que toman las decisiones adentro de la cancha.
o	id_arbitro INT NOT NULL AUTO_INCREMENT PRIMARY KEY.
o	nombre VARCHAR(200).
o	apellido VARCHAR(200).
o	pais_nacimiento VARCHAR(200) DEFAULT 'Argentina'.
•	‘estadio’: almacena la información de los estadios del mundo en los que el equipo debe jugar en las distintas competiciones.
o	id_estadio INT NOT NULL AUTO_INCREMENT PRIMARY KEY.
o	nombre_estadio VARCHAR(200).
o	pais VARCHAR(200) DEFAULT 'Argentina'.
o	ubicacion VARCHAR(200).
o	capacidad INT.

Tablas con FK

•	‘club’: representa a los rivales a los que se tiene que enfrentar el club.
o	id_club INT NOT NULL AUTO_INCREMENT PRIMARY KEY.
o	id_estadio INT (FK).
o	nombre_club VARCHAR(200).
o	pais VARCHAR(200) DEFAULT 'Argentina'.
o	socios INT.
•	‘jugador’: almacena la información personal de cada miembro del plantel futbolístico, incluyendo los datos acerca de los contratos y préstamos.
o	id_jugador INT NOT NULL AUTO_INCREMENT PRIMARY KEY.
o	id_ultimo_club_jugador INT (FK).
o	id_posicion INT (FK).
o	nombre VARCHAR(200).
o	apellido VARCHAR(200).
o	dorsal INT.
o	fecha_nacimiento DATE.
o	pais_nacimiento VARCHAR(200) DEFAULT 'Argentina'.
o	inicio_contrato DATE.
o	fin_contrato DATE.
o	ultima_renovacion DATE.
o	prestamo BOOLEAN.
•	‘cuerpo_tecnico’: contiene la información de cada integrante del cuerpo técnico, incluyendo sus contratos.
o	id_ct INT NOT NULL AUTO_INCREMENT PRIMARY KEY.
o	id_ultimo_club_ct INT (FK).
o	id_rol_ct INT (FK).
o	nombre VARCHAR(200).
o	apellido VARCHAR(200).
o	fecha_nacimiento DATE.
o	pais_nacimiento VARCHAR(200) DEFAULT 'Argentina'.
o	inicio_contrato DATE.
o	fin_contrato DATE.
•	‘partido’: registra las estadísticas de cada partido con el objetivo de que sean posteriormente analizadas.
o	id_partido INT NOT NULL AUTO_INCREMENT PRIMARY KEY.
o	id_competicion INT (FK).
o	id_estadio INT (FK).
o	id_club INT (FK).
o	id_arbitro INT (FK).
o	id_alineacion INT (FK).
o	id_resultado INT (FK).
o	fecha DATE.
o	goles_realizados INT.
o	goles_recibidos INT.

Tablas intermedias

•	‘lesion_jugador’: sirve para gestionar las fechas en las que los jugadores no están disponibles debido a complicaciones médicas.
o	id_lesion_jugador INT NOT NULL AUTO_INCREMENT PRIMARY KEY.
o	id_jugador INT (FK).
o	id_lesion INT (FK).
o	fecha_lesion DATE.
o	partidos_perdidos INT.
•	‘ct_partido’: se utiliza para observar cómo se desempeñan los miembros del cuerpo técnico durante los partidos.
o	id_ct_partido INT NOT NULL AUTO_INCREMENT PRIMARY KEY.
o	id_ct INT (FK).
o	id_partido INT (FK).
o	id_rol_en_partido INT (FK).
o	observaciones VARCHAR(500).
o	amarilla BOOLEAN.
o	doble_amarilla BOOLEAN.
o	roja BOOLEAN.
•	‘jugador_partido’: funciona para analizar el desempeño de cada jugador en un partido en específico.
o	id_jugador_partido INT NOT NULL AUTO_INCREMENT PRIMARY KEY.
o	id_jugador INT (FK).
o	id_partido INT (FK).
o	minutos_jugados INT.
o	goles INT.
o	asistencias INT.
o	goles_recibidos INT DEFAULT NULL.
o	amarilla BOOLEAN.
o	doble_amarilla BOOLEAN.
o	roja BOOLEAN.




