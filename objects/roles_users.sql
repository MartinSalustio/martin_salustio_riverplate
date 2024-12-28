-- CREACIÓN DE USUARIOS Y ROLES

-- CREACIÓN DE USUARIOS
CREATE USER IF NOT EXISTS 'jorge_brito'@'%' IDENTIFIED BY 'brito1';
CREATE USER IF NOT EXISTS 'matias_patanian'@'%' IDENTIFIED BY 'patanian2';
CREATE USER IF NOT EXISTS 'ignacio_villarroel'@'%' IDENTIFIED BY 'villarroel3';
CREATE USER IF NOT EXISTS 'enzo_francescoli'@'%' IDENTIFIED BY 'francescoli4';

-- CREACIÓN DEL ROL role_vicepresidente
CREATE ROLE role_vicepresidente;

-- ASIGNACIÓN DE PRIVILEGIOS A 'jorge_brito'@'%'
GRANT ALL PRIVILEGES ON *.* TO 'jorge_brito'@'%' WITH GRANT OPTION;

-- ASIGNACIÓN DE PRIVILEGIOS AL ROL role_vicepresidente
GRANT SELECT ON riverplate.posicion TO role_vicepresidente;
GRANT SELECT ON riverplate.rol_ct TO role_vicepresidente;
GRANT SELECT ON riverplate.alineacion TO role_vicepresidente;
GRANT SELECT ON riverplate.resultado TO role_vicepresidente;
GRANT SELECT ON riverplate.lesion TO role_vicepresidente;
GRANT SELECT ON riverplate.competicion TO role_vicepresidente;
GRANT SELECT ON riverplate.arbitro TO role_vicepresidente;
GRANT SELECT ON riverplate.estadio TO role_vicepresidente;
GRANT SELECT ON riverplate.club TO role_vicepresidente;
GRANT SELECT ON riverplate.jugador TO role_vicepresidente;
GRANT SELECT ON riverplate.cuerpo_tecnico TO role_vicepresidente;
GRANT SELECT ON riverplate.partido TO role_vicepresidente;
GRANT SELECT ON riverplate.lesion_jugador TO role_vicepresidente;
GRANT SELECT ON riverplate.ct_partido TO role_vicepresidente;
GRANT SELECT ON riverplate.jugador_partido TO role_vicepresidente;

-- ASIGNACIÓN DE PRIVILEGIOS A 'enzo_francescoli'@'%'
GRANT SELECT, INSERT, UPDATE, DELETE ON riverplate.posicion TO 'enzo_francescoli'@'%';
GRANT SELECT, INSERT, UPDATE, DELETE ON riverplate.jugador TO 'enzo_francescoli'@'%';
GRANT SELECT, INSERT, UPDATE, DELETE ON riverplate.lesion TO 'enzo_francescoli'@'%';
GRANT SELECT, INSERT, UPDATE, DELETE ON riverplate.partido TO 'enzo_francescoli'@'%';
GRANT SELECT, INSERT, UPDATE, DELETE ON riverplate.jugador_partido TO 'enzo_francescoli'@'%';
GRANT SELECT, INSERT, UPDATE, DELETE ON riverplate.lesion_jugador TO 'enzo_francescoli'@'%';

-- ASIGNACIÓN DE ROLES
GRANT role_vicepresidente TO 'matias_patanian'@'%';
GRANT role_vicepresidente TO 'ignacio_villarroel'@'%';

-- APLICAR LOS CAMBIOS
FLUSH PRIVILEGES;

-- MOSTRAR TODOS LOS USUARIOS Y SUS PRIVILEGIOS
SELECT * FROM mysql.user;

-- MOSTRAR CADA USUARIO Y SUS PRIVILEGIOS POR SEPARADO
SHOW GRANTS FOR 'jorge_brito'@'%';
SHOW GRANTS FOR 'matias_patanian'@'%';
SHOW GRANTS FOR 'ignacio_villarroel'@'%';
SHOW GRANTS FOR 'enzo_francescoli'@'%';

-- MOSTRAR EL ROL role_vicepresidente Y SUS PRIVILEGIOS
SHOW GRANTS FOR role_vicepresidente;
