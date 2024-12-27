-- CREACIÓN DE LA BASE DE DATOS

DROP DATABASE IF EXISTS riverplate;
CREATE DATABASE riverplate;
USE riverplate;

-- CREACIÓN DE LAS TABLAS SIN FK

-- TABLA posicion
CREATE TABLE posicion(
    id_posicion INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    detalle_posicion VARCHAR(200)
);

-- TABLA rol_ct
CREATE TABLE rol_ct(
    id_rol_ct INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    detalle_rol_ct VARCHAR(200)
);

-- TABLA alineacion
CREATE TABLE alineacion(
    id_alineacion INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    detalle_alineacion VARCHAR(200)
);

-- TABLA resultado
CREATE TABLE resultado(
    id_resultado INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    detalle_resultado VARCHAR(200)
);

-- TABLA lesion
CREATE TABLE lesion(
    id_lesion INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    tipo_lesion VARCHAR(200)
);

-- TABLA competicion
CREATE TABLE competicion(
    id_competicion INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nombre_competicion VARCHAR(200),
    alcance VARCHAR(200)
);

-- TABLA arbitro
CREATE TABLE arbitro(
    id_arbitro INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(200),
    apellido VARCHAR(200),
    pais_nacimiento VARCHAR(200) DEFAULT 'Argentina'
);

-- TABLA estadio
CREATE TABLE estadio(
    id_estadio INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nombre_estadio VARCHAR(200),
    pais VARCHAR(200) DEFAULT 'Argentina',
    ubicacion VARCHAR(200),
    capacidad INT
);

-- CREACIÓN DE LAS TABLAS CON FK

-- TABLA club
CREATE TABLE club(
    id_club INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    id_estadio INT,
    nombre_club VARCHAR(200),
    pais VARCHAR(200) DEFAULT 'Argentina',
    socios INT
);

-- TABLA jugador
CREATE TABLE jugador(
    id_jugador INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    id_ultimo_club_jugador INT,
    id_posicion INT,
    nombre VARCHAR(200),
    apellido VARCHAR(200),
    dorsal INT,
    fecha_nacimiento DATE,
    pais_nacimiento VARCHAR(200) DEFAULT 'Argentina',
    inicio_contrato DATE,
    fin_contrato DATE,
    ultima_renovacion DATE,
    prestamo BOOLEAN
);

-- TABLA cuerpo_tecnico
CREATE TABLE cuerpo_tecnico(
    id_ct INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    id_ultimo_club_ct INT,
    id_rol_ct INT,
    nombre VARCHAR(200),
    apellido VARCHAR(200),
    fecha_nacimiento DATE,
    pais_nacimiento VARCHAR(200) DEFAULT 'Argentina',
    inicio_contrato DATE,
    fin_contrato DATE
);

-- TABLA partido
CREATE TABLE partido(
    id_partido INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    id_competicion INT,
    id_estadio INT,
    id_club INT,
    id_arbitro INT,
    id_alineacion INT,
    id_resultado INT,
    fecha DATE,
    goles_realizados INT,
    goles_recibidos INT
);

-- CREACIÓN DE LAS TABLAS INTERMEDIAS

-- TABLA lesion_jugador
CREATE TABLE lesion_jugador(
    id_lesion_jugador INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    id_jugador INT,
    id_lesion INT,
    fecha_lesion DATE,
    partidos_perdidos INT
);

-- TABLA ct_partido
CREATE TABLE ct_partido(
    id_ct_partido INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    id_ct INT,
    id_partido INT,
    id_rol_en_partido INT,
    observaciones VARCHAR(500),
    amarilla BOOLEAN,
    doble_amarilla BOOLEAN,
    roja BOOLEAN
);

-- TABLA jugador_partido
CREATE TABLE jugador_partido(
    id_jugador_partido INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    id_jugador INT,
    id_partido INT,
    minutos_jugados INT,
    goles INT,
    asistencias INT,
    goles_recibidos INT DEFAULT NULL,
    amarilla BOOLEAN,
    doble_amarilla BOOLEAN,
    roja BOOLEAN
);

-- CREACIÓN DE LAS REFERENCIAS PARA LAS TABLAS CON FK

-- TABLA club
ALTER TABLE club
    ADD CONSTRAINT fk_constraint_id_estadio_club
    FOREIGN KEY (id_estadio) REFERENCES estadio(id_estadio);

-- TABLA jugador
ALTER TABLE jugador
    ADD CONSTRAINT fk_constraint_id_club_jugador
    FOREIGN KEY (id_ultimo_club_jugador) REFERENCES club(id_club);

ALTER TABLE jugador
    ADD CONSTRAINT fk_constraint_id_posicion_jugador
    FOREIGN KEY (id_posicion) REFERENCES posicion(id_posicion);

-- TABLA cuerpo_tecnico
ALTER TABLE cuerpo_tecnico
    ADD CONSTRAINT fk_constraint_id_club_ct
    FOREIGN KEY (id_ultimo_club_ct) REFERENCES club(id_club);

ALTER TABLE cuerpo_tecnico
    ADD CONSTRAINT fk_constraint_id_rol_ct_ct
    FOREIGN KEY (id_rol_ct) REFERENCES rol_ct(id_rol_ct);

-- TABLA partido
ALTER TABLE partido
    ADD CONSTRAINT fk_constraint_id_competicion_partido
    FOREIGN KEY (id_competicion) REFERENCES competicion(id_competicion);

ALTER TABLE partido
    ADD CONSTRAINT fk_constraint_id_estadio_partido
    FOREIGN KEY (id_estadio) REFERENCES estadio(id_estadio);

ALTER TABLE partido
    ADD CONSTRAINT fk_constraint_id_club_partido
    FOREIGN KEY (id_club) REFERENCES club(id_club);

ALTER TABLE partido
    ADD CONSTRAINT fk_constraint_id_arbitro_partido
    FOREIGN KEY (id_arbitro) REFERENCES arbitro(id_arbitro);

ALTER TABLE partido
    ADD CONSTRAINT fk_constraint_id_alineacion_partido
    FOREIGN KEY (id_alineacion) REFERENCES alineacion(id_alineacion);

ALTER TABLE partido
    ADD CONSTRAINT fk_constraint_id_resultado_partido
    FOREIGN KEY (id_resultado) REFERENCES resultado(id_resultado);

-- CREACIÓN DE LAS REFERENCIAS PARA LAS TABLAS INTERMEDIAS

-- TABLA lesion_jugador
ALTER TABLE lesion_jugador
    ADD CONSTRAINT fk_constraint_id_jugador_lj
    FOREIGN KEY (id_jugador) REFERENCES jugador(id_jugador);

ALTER TABLE lesion_jugador
    ADD CONSTRAINT fk_constraint_id_lesion_lj
    FOREIGN KEY (id_lesion) REFERENCES lesion(id_lesion);

-- TABLA ct_partido
ALTER TABLE ct_partido
    ADD CONSTRAINT fk_constraint_id_ct_ctp
    FOREIGN KEY (id_ct) REFERENCES cuerpo_tecnico(id_ct);

ALTER TABLE ct_partido
    ADD CONSTRAINT fk_constraint_id_partido_ctp
    FOREIGN KEY (id_partido) REFERENCES partido(id_partido);

ALTER TABLE ct_partido
    ADD CONSTRAINT fk_constraint_id_rol_ctp
    FOREIGN KEY (id_rol_en_partido) REFERENCES rol_ct(id_rol_ct);

-- TABLA jugador_partido
ALTER TABLE jugador_partido
    ADD CONSTRAINT fk_constraint_id_jugador_jp
    FOREIGN KEY (id_jugador) REFERENCES jugador(id_jugador);

ALTER TABLE jugador_partido
    ADD CONSTRAINT fk_constraint_id_partido_jp
    FOREIGN KEY (id_partido) REFERENCES partido(id_partido);
