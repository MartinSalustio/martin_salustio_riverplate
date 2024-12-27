-- CREACIÓN DE ROLES

USE riverplate;

-- CREATE USER IF NOT EXISTS
CREATE USER IF NOT EXISTS 'jorge_brito'@'%' IDENTIFIED BY 'brito1';
CREATE USER IF NOT EXISTS 'matias_patanian'@'%' IDENTIFIED BY 'patanian2';
CREATE USER IF NOT EXISTS 'enzo_francescoli'@'%' IDENTIFIED BY 'francescoli3';

-- GRANT PRIVILEGES TO 'jorge_brito'@'%'
GRANT ALL PRIVILEGES ON

-- GRANT PRIVILEGES TO 'matias_patanian'@'%'
GRANT SELECT ON riverplate.jugador TO 'matias_patanian'@'%';
GRANT SELECT ON riverplate.cuerpo_tecnico TO 'matias_patanian'@'%';
GRANT SELECT ON riverplate.partido TO 'matias_patanian'@'%';
GRANT SELECT ON riverplate.lesion_jugador TO 'matias_patanian'@'%';
GRANT SELECT ON riverplate.ct_partido TO 'matias_patanian'@'%';
GRANT SELECT ON riverplate.jugador_partido TO 'matias_patanian'@'%';

-- GRANT PRIVILEGES TO 'enzo_francescoli'@'%'
GRANT SELECT ON riverplate.jugador TO 'enzo_francescoli'@'%';
GRANT SELECT ON riverplate.lesion TO 'enzo_francescoli'@'%';
GRANT SELECT ON riverplate.partido TO 'enzo_francescoli'@'%';
GRANT SELECT ON riverplate.jugador_partido TO 'enzo_francescoli'@'%';
GRANT SELECT ON riverplate.lesion_jugador TO 'enzo_francescoli'@'%';

-- APLICAR LOS CAMBIOS
FLUSH PRIVILEGES;
