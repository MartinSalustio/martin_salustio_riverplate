-- CREACIÓN DE FUNCIONES

USE riverplate;

-- Función para calcular cuántos goles tiene un jugador en una determinada competición

DELIMITER //

DROP FUNCTION IF EXISTS fx_goles_competicion //
CREATE FUNCTION fx_goles_competicion(_id_jugador INT, _id_competicion INT)
RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE total_goles INT;
    SELECT COALESCE(SUM(goles), 0) INTO total_goles FROM riverplate.jugador_partido
    LEFT JOIN riverplate.partido ON partido.id_partido = jugador_partido.id_partido
    WHERE
        id_jugador = _id_jugador AND id_competicion = _id_competicion;
    RETURN total_goles;
END //

DELIMITER ;

-- Probar función fx_goles_competicion
SELECT fx_goles_competicion('24', '2');

-- Función para calcular cuántas asistencias tiene un jugador en una determinada competición

DELIMITER //

DROP FUNCTION IF EXISTS fx_asistencias_competicion //
CREATE FUNCTION fx_asistencias_competicion(_id_jugador INT, _id_competicion INT)
RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE total_asistencias INT;
    SELECT COALESCE(SUM(asistencias), 0) INTO total_asistencias FROM riverplate.jugador_partido
    LEFT JOIN riverplate.partido ON partido.id_partido = jugador_partido.id_partido
    WHERE
        id_jugador = _id_jugador AND id_competicion = _id_competicion;
    RETURN total_asistencias;
END //

DELIMITER ;

-- Probar función fx_asistencias_competicion
SELECT fx_asistencias_competicion('21', '2');

-- Función para calcular cuántas tarjetas rojas tiene un jugador en una determinada competición

DELIMITER //

DROP FUNCTION IF EXISTS fx_rojas_competicion //
CREATE FUNCTION fx_rojas_competicion(_id_jugador INT, _id_competicion INT)
RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE total_rojas INT;
    SELECT COALESCE(SUM(roja), 0) INTO total_rojas FROM riverplate.jugador_partido
    LEFT JOIN riverplate.partido ON partido.id_partido = jugador_partido.id_partido
    WHERE
        id_jugador = _id_jugador AND id_competicion = _id_competicion;
    RETURN total_rojas;
END //

DELIMITER ;

-- Probar función fx_rojas_competicion
SELECT fx_rojas_competicion('6', '2');

-- Función para calcular cuántas tarjetas amarillas tiene un jugador en una determinada competición

DELIMITER //

DROP FUNCTION IF EXISTS fx_amarillas_competicion //
CREATE FUNCTION fx_amarillas_competicion(_id_jugador INT, _id_competicion INT)
RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE total_amarillas INT;
    SELECT COALESCE(SUM(amarilla), 0) INTO total_amarillas FROM riverplate.jugador_partido
    LEFT JOIN riverplate.partido ON partido.id_partido = jugador_partido.id_partido
    WHERE
        id_jugador = _id_jugador AND id_competicion = _id_competicion;
    RETURN total_amarillas;
END //

DELIMITER ;

-- Probar función fx_amarillas_competicion
SELECT fx_amarillas_competicion('29', '2');
