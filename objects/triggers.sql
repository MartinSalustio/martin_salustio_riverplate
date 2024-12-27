-- CREACIÓN DE TRIGGERS

USE riverplate;

-- Trigger para verificar resultados imposibles en cuanto a la cantidad de goles al insertar partidos nuevos

DELIMITER //

DROP TRIGGER IF EXISTS t_verificar_goles_partido_insert //
CREATE TRIGGER t_verificar_goles_partido_insert
BEFORE INSERT ON partido
FOR EACH ROW
BEGIN
    IF NEW.goles_realizados < 0 OR NEW.goles_recibidos < 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Los goles realizados o recibidos no pueden ser negativos.';
    END IF;
END //

DELIMITER ;

-- Activar trigger
INSERT INTO partido(id_competicion, id_estadio, id_club, id_arbitro, id_alineacion, id_resultado, fecha, goles_realizados,
goles_recibidos) VALUES
('2', '1', '3', '2', '5', '2', CURDATE(), '-5', '2');

-- Trigger para verificar resultados imposibles en cuanto a la cantidad de goles al actualizar partidos

DELIMITER //

DROP TRIGGER IF EXISTS t_verificar_goles_partido_update //
CREATE TRIGGER t_verificar_goles_partido_update
BEFORE UPDATE ON partido
FOR EACH ROW
BEGIN
    IF NEW.goles_realizados < 0 OR NEW.goles_recibidos < 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Los goles realizados o recibidos no pueden ser negativos.';
    END IF;
END //

DELIMITER ;

-- Activar trigger
UPDATE partido
SET goles_recibidos = '-4'
WHERE id_partido = '1';

-- Trigger para verificar que la capacidad de los estadios no sea negativa al insertar

DELIMITER //

DROP TRIGGER IF EXISTS t_verificar_capacidad_estadio_insert //
CREATE TRIGGER t_verificar_capacidad_estadio_insert
BEFORE INSERT ON estadio
FOR EACH ROW
BEGIN
    IF NEW.capacidad < 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'La capacidad del estadio no puede ser negativa.';
    END IF;
END //

DELIMITER ;

-- Activar trigger
INSERT INTO estadio(nombre_estadio, pais, ubicacion, capacidad) VALUES
('Estádio Jornalista Mário Filho', 'Brasil', 'Río de Janeiro', '-82238');

-- Trigger para verificar que la capacidad de los estadios no sea negativa al actualizar

DELIMITER //

DROP TRIGGER IF EXISTS t_verificar_capacidad_estadio_update //
CREATE TRIGGER t_verificar_capacidad_estadio_update
BEFORE UPDATE ON estadio
FOR EACH ROW
BEGIN
    IF NEW.capacidad < 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'La capacidad del estadio no puede ser negativa.';
    END IF;
END //

DELIMITER ;

-- Activar trigger
UPDATE estadio
SET capacidad = '-82238'
WHERE id_estadio = '2';

-- Trigger para verificar que la cantidad de socios de un club no sea negativa al insertar

DELIMITER //

DROP TRIGGER IF EXISTS t_verificar_socios_club_insert //
CREATE TRIGGER t_verificar_socios_club_insert
BEFORE INSERT ON club
FOR EACH ROW
BEGIN
    IF NEW.socios < 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'La cantidad de socios del club no puede ser negativa.';
    END IF;
END //

DELIMITER ;

-- Activar trigger
INSERT INTO club(id_estadio, nombre_club, pais, socios) VALUES
(NULL, 'Fluminense Football Club', 'Brasil', '-66537');

-- Trigger para verificar que la cantidad de socios de un club no sea negativa al actualizar

DELIMITER //

DROP TRIGGER IF EXISTS t_verificar_socios_club_update //
CREATE TRIGGER t_verificar_socios_club_update
BEFORE UPDATE ON club
FOR EACH ROW
BEGIN
    IF NEW.socios < 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'La cantidad de socios del club no puede ser negativa.';
    END IF;
END //

DELIMITER ;

-- Activar trigger
UPDATE club
SET socios = '-66537'
WHERE id_club = '2';
