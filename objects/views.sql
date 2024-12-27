-- CREACIÓN DE VISTAS

USE riverplate;

-- Vista para calcular la edad de los jugadores

DROP VIEW IF EXISTS riverplate.vw_calcular_edad;
CREATE VIEW riverplate.vw_calcular_edad AS
SELECT
    nombre,
    apellido,
    FLOOR(DATEDIFF(CURDATE(), fecha_nacimiento) / 365.25) AS edad
FROM riverplate.jugador
ORDER BY
    edad DESC;

-- Consultar la vista para calcular la edad de los jugadores

SELECT * FROM vw_calcular_edad;

-- Vista para calcular la antigüedad de los jugadores en el club

DROP VIEW IF EXISTS riverplate.vw_calcular_antiguedad;
CREATE VIEW riverplate.vw_calcular_antiguedad AS
SELECT
    nombre,
    apellido,
    FLOOR(DATEDIFF(CURDATE(), inicio_contrato) / 365.25) AS antiguedad
FROM riverplate.jugador
ORDER BY
    antiguedad DESC;

-- Consultar la vista para calcular la antigüedad de los jugadores en el club

SELECT * FROM vw_calcular_antiguedad;

-- Vista para visualizar a qué jugadores se les termina el contrato durante el año vigente

DROP VIEW IF EXISTS riverplate.vw_contratos_por_vencer;
CREATE VIEW riverplate.vw_contratos_por_vencer AS
SELECT
    nombre,
    apellido,
    fin_contrato
FROM riverplate.jugador
WHERE
    YEAR(fin_contrato) = YEAR(CURDATE())
ORDER BY
    fin_contrato ASC;

-- Consultar la vista para visualizar a qué jugadores se les termina el contrato durante el año vigente

SELECT * FROM vw_contratos_por_vencer;

-- Vista para ver la información de cada partido en detalle

DROP VIEW IF EXISTS riverplate.vw_partido_detalle;
CREATE VIEW riverplate.vw_partido_detalle AS
SELECT
    competicion.nombre_competicion,
    estadio.nombre_estadio,
    club.nombre_club,
    arbitro.apellido,
    alineacion.detalle_alineacion,
    resultado.detalle_resultado,
    fecha,
    goles_realizados,
    goles_recibidos
FROM riverplate.partido
LEFT JOIN competicion ON partido.id_competicion = competicion.id_competicion
LEFT JOIN estadio ON partido.id_estadio = estadio.id_estadio
LEFT JOIN club ON partido.id_club = club.id_club
LEFT JOIN arbitro ON partido.id_arbitro = arbitro.id_arbitro
LEFT JOIN alineacion ON partido.id_alineacion = alineacion.id_alineacion
LEFT JOIN resultado ON partido.id_resultado = resultado.id_resultado;

-- Consultar la vista de los partidos en detalle

SELECT * FROM vw_partido_detalle;

-- Vista para ver la información del rendimiento de cada jugador en detalle

DROP VIEW IF EXISTS riverplate.vw_jugador_partido_detalle;
CREATE VIEW riverplate.vw_jugador_partido_detalle AS
SELECT
    partido.fecha,
    competicion.nombre_competicion,
    estadio.nombre_estadio,
    club.nombre_club,
    jugador.nombre,
    jugador.apellido,
    minutos_jugados,
    goles,
    asistencias,
    jugador_partido.goles_recibidos,
    amarilla,
    doble_amarilla,
    roja
FROM riverplate.jugador_partido
LEFT JOIN partido ON jugador_partido.id_partido = partido.id_partido
LEFT JOIN jugador ON jugador_partido.id_jugador = jugador.id_jugador
LEFT JOIN competicion ON partido.id_competicion = competicion.id_competicion
LEFT JOIN estadio ON partido.id_estadio = estadio.id_estadio
LEFT JOIN club ON partido.id_club = club.id_club;

-- Consultar la vista del rendimiento de cada jugador en detalle

SELECT * FROM vw_jugador_partido_detalle;

-- Vista para calcular cuál es el máximo club proveedor de jugadores en nuestro plantel, incluyendo a las inferiores de River Plate

DROP VIEW IF EXISTS riverplate.vw_cantidad_jugadores_club;
CREATE VIEW riverplate.vw_cantidad_jugadores_club AS
SELECT
    club.nombre_club,
    COUNT(jugador.nombre) AS cantidad_jugadores
FROM riverplate.jugador
LEFT JOIN club ON jugador.id_ultimo_club_jugador = club.id_club
GROUP BY id_ultimo_club_jugador
ORDER BY cantidad_jugadores DESC;

-- Consultar la vista para visualizar cuál es el máximo club proveedor de jugadores en nuestro plantel

SELECT * FROM vw_cantidad_jugadores_club;
