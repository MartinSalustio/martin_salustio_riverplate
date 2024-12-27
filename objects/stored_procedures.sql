-- CREACIÓN DE PROCEDIMIENTOS

USE riverplate;

-- Procedimiento para registrar un nuevo partido

DELIMITER //

DROP PROCEDURE IF EXISTS sp_registrar_partido //
CREATE PROCEDURE sp_registrar_partido(
    IN sp_id_competicion INT,
    IN sp_id_estadio INT,
    IN sp_id_club INT,
    IN sp_id_arbitro INT,
    IN sp_id_alineacion INT,
    IN sp_id_resultado INT,
    IN sp_fecha DATE,
    IN sp_goles_realizados INT,
    IN sp_goles_recibidos INT
)
BEGIN
    INSERT INTO partido(id_competicion, id_estadio, id_club, id_arbitro, id_alineacion, id_resultado, fecha,
    goles_realizados, goles_recibidos) VALUES (sp_id_competicion, sp_id_estadio, sp_id_club, sp_id_arbitro,
    sp_id_alineacion, sp_id_resultado, sp_fecha, sp_goles_realizados, sp_goles_recibidos);
END //

DELIMITER ;

-- Consultar el procedimiento para registrar un nuevo partido

CALL sp_registrar_partido('2', '1', '15', '11', '5', '1', CURDATE(), '2', '0');

-- Procedimiento para actualizar la fecha límite del contrato de los jugadores

DELIMITER //

DROP PROCEDURE IF EXISTS sp_actualizar_contrato //
CREATE PROCEDURE sp_actualizar_contrato(
    IN sp_id_jugador INT,
    IN sp_fin_contrato DATE,
    IN sp_ultima_renovacion DATE
)
BEGIN
    UPDATE jugador
    SET fin_contrato = sp_fin_contrato, ultima_renovacion = sp_ultima_renovacion
    WHERE id_jugador = sp_id_jugador;
END //

DELIMITER ;

-- Consultar el procedimiento para actualizar la fecha límite del contrato de los jugadores

CALL sp_actualizar_contrato('21', '2030-12-31', CURDATE());
