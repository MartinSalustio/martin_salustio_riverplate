-- INSERCIÓN DE DATOS

USE riverplate;

-- INSERCIÓN DE DATOS EN LAS TABLAS SIN FK

-- TABLA posicion
INSERT INTO riverplate.posicion(detalle_posicion) VALUES
('Arquero'),
('Defensa central'),
('Lateral izquierdo'),
('Lateral derecho'),
('Pivote'),
('Mediocentro'),
('Interior derecho'),
('Mediocentro ofensivo'),
('Extremo derecho'),
('Delantero centro');

-- TABLA rol_ct
INSERT INTO riverplate.rol_ct(detalle_rol_ct) VALUES
('Entrenador'),
('Entrenador asistente'),
('Entrenador de arqueros'),
('Preparador físico'),
('Entrenador de juveniles'),
('Analista de video');

-- TABLA alineacion
INSERT INTO riverplate.alineacion(detalle_alineacion) VALUES
('4-1-2-1-2'),
('4-3-1-2'),
('4-2-3-1'),
('5-3-2'),
('4-3-3'),
('3-4-1-2'),
('4-1-4-1'),
('4-1-3-2'),
('4-2-2-2'),
('4-4-2');

-- TABLA resultado
INSERT INTO riverplate.resultado(detalle_resultado) VALUES
('Victoria'),
('Empate'),
('Derrota');

-- TABLA lesion
INSERT INTO riverplate.lesion(tipo_lesion) VALUES
('Hernia inguinal'),
('Lesión muscular'),
('Distensión de muslo'),
('Esguince de tobillo'),
('Problemas musculares'),
('Tendinitis'),
('Desgarro en el isquiotibial');

-- TABLA competicion
INSERT INTO riverplate.competicion(nombre_competicion, alcance) VALUES
('Copa Libertadores', 'Internacional'),
('Primera División', 'Nacional'),
('Copa de la Liga Profesional', 'Nacional'),
('Copa Argentina', 'Nacional'),
('Supercopa Argentina', 'Nacional'),
('Amistoso', 'Nacional/internacional');

-- TABLA arbitro
INSERT INTO riverplate.arbitro(nombre, apellido, pais_nacimiento) VALUES
('Nazareno José', 'Arasa', DEFAULT),
('Leandro Ezequiel', 'Rey Hilfer', DEFAULT),
('Maximiliano Nicolás', 'Ramírez', DEFAULT),
('Sebastián Alejandro', 'Zunino', DEFAULT),
('Andrés', 'Merlos', DEFAULT),
('Darío Humberto', 'Herrera', DEFAULT),
('Pablo Gastón', 'Echavarría', DEFAULT),
('Fernando David', 'Espinoza', DEFAULT),
('Hernán', 'Mastrángelo', DEFAULT),
('Facundo Raúl', 'Tello Figueroa', DEFAULT),
('Yael Cristian', 'Falcón Pérez', DEFAULT),
('Fernando', 'Echenique', DEFAULT),
('Nicolás', 'Lamolina', DEFAULT),
('Carlos Andrés', 'Gariano', DEFAULT),
('Jorge Ignacio', 'Baliño', DEFAULT),
('Silvio Aníbal', 'Trucco', DEFAULT),
('Luis', 'Lobo Medina', DEFAULT),
('Pablo Germán', 'Dóvalo', DEFAULT),
('Ariel Maximiliano', 'Penel', DEFAULT),
('Fernando Andrés', 'Rapallini', DEFAULT),
('Sebastián Nicolás', 'Martínez Beligoy', DEFAULT),
('Juan', 'Pafundi', DEFAULT),
('Bryan Gustavo', 'Ferreyra', DEFAULT),
('Pablo', 'Giménez', DEFAULT),
('Franco Matías', 'Acita Moldes', DEFAULT),
('Edgardo Daniel', 'Zamora', DEFAULT),
('Wilmar Alexander', 'Roldán Pérez', 'Colombia'),
('Jesús Noel', 'Valenzuela Sáez', 'Venezuela'),
('Andrés Matías', 'Matonte Cabrera', 'Uruguay'),
('Raphael', 'Claus', 'Brasil'),
('Gustavo Adrián', 'Tejera Capó', 'Uruguay'),
('Andrés José', 'Rojas Noguera', 'Colombia');

-- TABLA estadio
INSERT INTO riverplate.estadio(nombre_estadio, pais, ubicacion, capacidad) VALUES
('Mâs Monumental', DEFAULT, 'CABA', '84567'),
('Alberto J. Armando', DEFAULT, 'CABA', '57200'),
('Mario Alberto Kempes', DEFAULT, 'Córdoba', '57000'),
('Presidente Perón', DEFAULT, 'Avellaneda', '51389'),
('José Amalfitani', DEFAULT, 'CABA', '49747'),
('Tomás Adolfo Ducó', DEFAULT, 'CABA', '48314'),
('Pedro Bidegain', DEFAULT, 'CABA', '47964'),
('Ciudad de Lanús - Néstor Díaz Pérez', DEFAULT, 'Lanús', '45319'),
('Libertadores de América - Ricardo Enrique Bochini', DEFAULT, 'Avellaneda', '42069'),
('Marcelo Bielsa', DEFAULT, 'Rosario', '42000'),
('Dr. Lisandro de la Torre', DEFAULT, 'Rosario', '41654'),
('Malvinas Argentinas', DEFAULT, 'Mendoza', '38800'),
('Julio César Villagra', DEFAULT, 'Córdoba', '38500'),
('Monumental José Fierro', DEFAULT, 'San Miguel de Tucumán', '35200'),
('Florencio Sola', DEFAULT, 'Banfield', '34901'),
('Jorge Luis Hirschi', DEFAULT, 'La Plata', '32530'),
('Ciudad de Vicente López', DEFAULT, 'Vicente López', '32000'),
('15 de Abril', DEFAULT, 'Santa Fe', '30000'),
('Único Madre de Ciudades', DEFAULT, 'Santiago del Estero', '29000'),
('Juan Carmelo Zerillo', DEFAULT, 'La Plata', '27717'),
('Juan Domingo Perón - Monumental Alta Córdoba', DEFAULT, 'Córdoba', '26535'),
('José Dellagiovanna', DEFAULT, 'Victoria', '26282'),
('Bautista Gargantini', DEFAULT, 'Mendoza', '24000'),
('Diego Armando Maradona', DEFAULT, 'CABA', '22063'),
('Eva Perón', DEFAULT, 'Junín', '22000'),
('Norberto Tomaghello', DEFAULT, 'Florencio Varela', '20000'),
('Claudio Fabián Tapia', DEFAULT, 'CABA', '4400'),
('Guillermo Laza', DEFAULT, 'CABA', '3000'),
('Cotton Bowl', 'Estados Unidos', 'Dallas', '92100'),
('Toyota Stadium', 'Estados Unidos', 'Frisco', '20500'),
('Brigadier General Estanislao López', DEFAULT, 'Ciudad de Santa Fe', '40000'),
('Polideportivo de Pueblo Nuevo', 'Venezuela', 'San Cristóbal', '38755'),
('Defensores del Chaco', 'Paraguay', 'Asunción', '42354'),
('Gran Parque Central', 'Uruguay', 'Montevideo', '37000'),
('Monumental David Arellano', 'Chile', 'Santiago de Chile', '47000'),
('Arena MRV - Presidente Elías Kalil', 'Brasil', 'Belo Horizonte', '46000');

-- INSERCIÓN DE DATOS EN LAS TABLAS CON FK

-- TABLA club
INSERT INTO riverplate.club(id_estadio, nombre_club, pais, socios) VALUES
('1', 'Club Atlético River Plate', DEFAULT, '351000'),
('2', 'Club Atlético Boca Juniors', DEFAULT, '315879'),
('3', 'Club Atlético Talleres', DEFAULT, '71400'),
('4', 'Racing Club de Avellaneda', DEFAULT, '71104'),
('5', 'Club Atlético Vélez Sarsfield', DEFAULT, '56000'),
('6', 'Club Atlético Huracán', DEFAULT, '31000'),
('7', 'Club Atlético San Lorenzo de Almagro', DEFAULT, '56911'),
('8', 'Club Atlético Lanús', DEFAULT, '34484'),
('9', 'Club Atlético Independiente de Avellaneda', DEFAULT, '140000'),
('10', 'Club Atlético Newells Old Boys', DEFAULT, '70257'),
('11', 'Club Atlético Rosario Central', DEFAULT, '90512'),
('12', 'Club Deportivo Godoy Cruz Antonio Tomba', DEFAULT, '9400'),
('13', 'Club Atlético Belgrano', DEFAULT, '60000'),
('14', 'Club Atlético Tucumán', DEFAULT, '22648'),
('15', 'Club Atlético Banfield', DEFAULT, '13276'),
('16', 'Club Estudiantes de La Plata', DEFAULT, '51500'),
('17', 'Club Atlético Platense', DEFAULT, '7162'),
('18', 'Club Atlético Unión', DEFAULT, '15725'),
('19', 'Club Atlético Central Córdoba', DEFAULT, '3057'),
('20', 'Club de Gimnasia y Esgrima La Plata', DEFAULT, '27444'),
('21', 'Instituto Atlético Central Córdoba', DEFAULT, '33000'),
('22', 'Club Atlético Tigre', DEFAULT, '5000'),
('23', 'Club Sportivo Independiente Rivadavia', DEFAULT, '15000'),
('24', 'Asociación Atlética Argentinos Juniors', DEFAULT, '18210'),
('25', 'Club Atlético Sarmiento', DEFAULT, '5403'),
('26', 'Club Social y Deportivo Defensa y Justicia', DEFAULT, '7400'),
('27', 'Club Atlético Barracas Central', DEFAULT, '2326'),
('28', 'Deportivo Riestra Asociación de Fomento Barrio Colón', DEFAULT, '600'),
(NULL, 'Club de Fútbol Monterrey Rayados A.C.', 'México', NULL),
(NULL, 'Club de Fútbol Pachuca', 'México', NULL),
(NULL, 'Club Atlético Excursionistas', DEFAULT, NULL),
('32', 'Deportivo Táchira Fútbol Club', 'Venezuela', NULL),
('34', 'Club Nacional de Football', 'Uruguay', '85000'),
(NULL, 'Club Libertad', 'Paraguay', NULL),
(NULL, 'Club Atlético Temperley', DEFAULT, '8700'),
(NULL, 'Millonarios Fútbol Club', 'Colombia', '4000'),
(NULL, 'Club Olimpia', 'Paraguay', '11000'),
('35', 'Corporación Club Social y Deportivo Colo-Colo', 'Chile', '58500'),
('36', 'Clube Atlético Mineiro', 'Brasil', '85000'),
(NULL, 'Al-Ittihad Football Club', 'Arabia Saudita', '5000'),
(NULL, 'Club The Strongest', 'Bolivia', '8000'),
(NULL, 'Club Almagro', DEFAULT, '1500'),
(NULL, 'Corporación Deportiva Club Atlético Nacional', 'Colombia', '16000'),
(NULL, 'Cádiz Club de Fútbol S.A.D', 'España', '15218'),
(NULL, 'Al-Ahli Saudi Football Club', 'Arabia Saudita', NULL),
(NULL, 'Sevilla Fútbol Club S.A.D.', 'España', '39955'),
(NULL, 'Real Betis Balompié', 'España', '73439'),
(NULL, 'Club Internacional de Fútbol Miami', 'Estados Unidos', NULL),
(NULL, 'Club de Fútbol Cruz Azul', 'México', '472'),
(NULL, 'Internacional de Porto Alegre', 'Brasil', '140000'),
(NULL, 'Montevideo Wanderers Fútbol Club', 'Uruguay', NULL),
('31', 'Club Atlético Colón', DEFAULT, '25130'),
(NULL, 'Manchester City Football Club', 'Inglaterra', NULL),
(NULL, 'Al-Nassr Football Club', 'Arabia Saudita', NULL),
(NULL, 'West Ham United Football Club', 'Inglaterra', NULL),
(NULL, 'Football Club Internazionale Milano', 'Italia', '208631'),
(NULL, 'Junior de Barranquilla', 'Colombia', NULL);

-- TABLA jugador
INSERT INTO riverplate.jugador(id_ultimo_club_jugador, id_posicion, nombre, apellido, dorsal, fecha_nacimiento,
pais_nacimiento, inicio_contrato, fin_contrato, ultima_renovacion, prestamo) VALUES
('43', '1', 'Franco Daniel', 'Armani', '1', '1986-10-16', DEFAULT, '2018-01-03', '2026-12-31', '2024-04-17', '0'),
('44', '1', 'Jeremías Conan', 'Ledesma', '25', '1993-02-13', DEFAULT, '2024-07-06', '2028-12-31', NULL, '0'),
('45', '2', 'Paulo César', 'Díaz Huincales', '17', '1994-08-25', 'Chile', '2019-08-01', '2027-12-31', '2024-07-10', '0'),
('46', '2', 'Federico', 'Gattoni', '6', '1999-02-16', DEFAULT, '2024-07-03', '2025-06-30', NULL, '1'),
('47', '2', 'Germán Alejo', 'Pezzella', '33', '1991-06-27', DEFAULT, '2024-08-05', '2027-12-31', NULL, '0'),
('48', '2', 'Leandro Martín', 'González Pírez', '14', '1992-02-26', DEFAULT, '2024-01-01', '2025-12-31', NULL, '0'),
('49', '2', 'Ramiro José', 'Funes Mori', '3', '1991-03-05', DEFAULT, '2023-07-18', '2026-12-31', NULL, '0'),
('1', '2', 'Daniel Lucas', 'Zabala', '22', '2003-01-17', DEFAULT, '2024-01-01', '2026-12-31', '2024-06-13', '0'),
('46', '3', 'Marcos Javier', 'Acuña', '24', '1991-10-28', DEFAULT, '2024-08-20', '2027-12-31', NULL, '0'),
('3', '3', 'Enzo Hernán', 'Díaz', '13', '1995-12-07', DEFAULT, '2023-01-21', '2026-12-31', '2024-01-06', '0'),
('10', '3', 'Milton Óscar', 'Casco', '20', '1988-04-11', DEFAULT, '2015-09-10', '2025-12-31', '2022-09-13', '0'),
('50', '4', 'Fabricio Tomás', 'Bustos Sein', '21', '1996-04-28', DEFAULT, '2024-08-09', '2027-12-31', NULL, '0'),
('26', '4', 'Ariel Agustín', 'Sant Anna Quintero', '27', '1997-09-27', 'Uruguay', '2024-02-03', '2027-12-31', NULL, '0'),
('3', '5', 'Rodrigo Román', 'Villagra', '23', '2001-02-14', DEFAULT, '2024-02-03', '2027-12-31', NULL, '0'),
('51', '5', 'Nicolás', 'Fonseca', '4', '1998-10-19', 'Italia', '2023-08-15', '2027-12-31', NULL, '0'),
('29', '5', 'Claudio Matías', 'Kranevitter', '5', '1993-05-21', DEFAULT, '2023-01-01', '2025-12-31', NULL, '0'),
('52', '6', 'Rodrigo Germán', 'Aliendro', '29', '1991-02-16', DEFAULT, '2022-06-27', '2026-12-31', '2023-10-27', '0'),
('1', '7', 'Santiago', 'Simón', '31', '2002-06-13', DEFAULT, '2021-07-01', '2026-12-31', '2024-01-19', '0'),
('53', '8', 'Claudio Jeremías', 'Echeverri', '19', '2006-01-02', DEFAULT, '2024-01-26', '2024-12-31', NULL, '1'),
('1', '8', 'Franco', 'Mastantuono', '30', '2007-08-14', DEFAULT, '2024-01-01', '2026-12-31', '2024-03-19', '0'),
('54', '8', 'Gonzalo Nicolás', 'Martínez', '18', '1993-06-13', DEFAULT, '2023-08-24', '2024-12-31', NULL, '0'),
('55', '8', 'Manuel', 'Lanzini', '10', '1993-02-15', DEFAULT, '2023-08-02', '2024-12-31', NULL, '0'),
('39', '8', 'Ignacio Martín', 'Fernández', '26', '1990-01-12', DEFAULT, '2023-01-01', '2025-12-31', NULL, '0'),
('38', '9', 'Pablo César', 'Solari Ferreyra', '36', '2001-03-22', DEFAULT, '2022-07-18', '2027-12-31', '2024-04-16', '0'),
('29', '9', 'Maximiliano Eduardo', 'Meza', '8', '1992-12-15', DEFAULT, '2024-08-15', '2026-12-31', NULL, '0'),
('1', '9', 'Ian Martín', 'Subiabre', '38', '2007-01-01', DEFAULT, '2024-01-01', '2026-12-31', '2024-01-06', '0'),
('56', '10', 'Facundo', 'Colidio', '11', '2000-01-04', DEFAULT, '2023-07-21', '2025-12-31', NULL, '0'),
('7', '10', 'Adam Fernando', 'Bareiro Gamarra', '7', '1996-07-26', 'Paraguay', '2024-07-11', '2027-12-31', NULL, '0'),
('57', '10', 'Miguel Ángel', 'Borja Hernández', '9', '1993-01-26', 'Colombia', '2022-07-12', '2025-12-31', NULL, '0'),
('1', '10', 'Agustín Fabián', 'Ruberto', '32', '2006-01-14', DEFAULT, '2024-01-01', '2027-12-31', '2024-01-06', '0');

-- TABLA cuerpo_tecnico
INSERT INTO riverplate.cuerpo_tecnico(id_ultimo_club_ct, id_rol_ct, nombre, apellido, fecha_nacimiento, pais_nacimiento,
inicio_contrato, fin_contrato) VALUES
('40', '1', 'Marcelo Daniel', 'Gallardo', '1976-01-18', DEFAULT, '2024-08-05', '2025-12-31'),
('40', '2', 'Matías', 'Biscay', '1973-03-05', DEFAULT, '2024-08-05', '2025-12-31'),
('40', '2', 'Hernán Leonel', 'Buján', '1974-12-05', DEFAULT, '2024-08-05', '2025-12-31'),
('41', '3', 'Javier Osvaldo', 'Sodero', '1964-07-17', DEFAULT, '2024-08-05', '2025-12-31'),
('40', '4', 'Pablo', 'Dolce', '1973-06-16', DEFAULT, '2024-08-05', '2025-12-31'),
('1', '5', 'Jorge Manuel', 'Gordillo', '1962-01-27', DEFAULT, '1999-07-01', NULL),
('42', '5', 'Javier Oscar', 'Alonso', '1971-05-19', DEFAULT, '2014-01-01', NULL),
('22', '6', 'Alejandro', 'Albornoz', '1983-04-16', DEFAULT, '2024-08-05', '2025-12-31'),
('40', '6', 'Nahuel', 'Hidalgo', '1991-08-25', DEFAULT, '2024-08-05', '2025-12-31');

-- TABLA partido
INSERT INTO riverplate.partido(id_competicion, id_estadio, id_club, id_arbitro, id_alineacion, id_resultado, fecha, 
goles_realizados, goles_recibidos) VALUES
('2', '1', '6', '12', '3', '2', '2024-08-10', '1', '1'),
('1', '3', '3', '32', '5', '1', '2024-08-14', '1', '0'),
('2', '20', '20', '9', '7', '2', '2024-08-17', '1', '1'),
('1', '1', '3', '31', '5', '1', '2024-08-21', '2', '1'),
('2', '1', '10', '2', '3', '2', '2024-08-25', '0', '0'),
('2', '9', '9', '11', '3', '2', '2024-09-01', '0', '0'),
('2', '1', '14', '4', '5', '1', '2024-09-13', '4', '1'),
('1', '35', '38', '30', '5', '2', '2024-09-17', '1', '1'),
('2', '2', '2', '3', '6', '1', '2024-09-21', '1', '0'),
('1', '1', '38', '29', '5', '1', '2024-09-24', '1', '0'),
('2', '1', '3', '10', '5', '3', '2024-09-29', '0', '1'),
('2', '17', '17', '18', '3', '2', '2024-10-06', '0', '0'),
('2', '1', '5', '11', '3', '2', '2024-10-18', '1', '1'),
('1', '36', '39', '28', '4', '3', '2024-10-22', '0', '3'),
('2', '26', '26', '3', '3', '2', '2024-10-25', '0', '0'),
('1', '1', '39', '27', '3', '2', '2024-10-29', '0', '0'),
('2', '1', '15', '21', '2', '1', '2024-11-02', '3', '1'),
('2', '21', '21', '5', '2', '1', '2024-11-06', '3', '2'),
('2', '1', '27', '12', '2', '1', '2024-11-10', '3', '0'),
('2', '12', '23', '1', '2', '3', '2024-11-21', '1', '2'),
('2', '16', '16', '19', '2', '1', '2024-11-29', '2', '1'),
('2', '1', '7', '14', '2', '2', '2024-12-04', '1', '1'),
('2', '1', '11', '11', '2', '1', '2024-12-08', '4', '0'),
('2', '4', '4', '4', '1', '3', '2024-12-14', '0', '1');

-- INSERCIÓN DE DATOS EN LAS TABLAS INTERMEDIAS

-- TABLA lesion_jugador
INSERT INTO riverplate.lesion_jugador(id_jugador, id_lesion, fecha_lesion, partidos_perdidos) VALUES
('9', '3', '2024-10-07', '2'),
('9', '6', '2024-10-22', '2'),
('9', '7', '2024-11-05', '5'),
('10', '1', '2024-11-08', '6'),
('19', '2', '2024-11-23', '4'),
('13', '3', '2024-11-27', '4'),
('28', '4', '2024-12-06', '2'),
('3', '5', '2024-12-14', '1');

-- TABLA ct_partido
INSERT INTO riverplate.ct_partido(id_ct, id_partido, id_rol_en_partido, observaciones, amarilla, doble_amarilla, roja) VALUES
('1', '17', '1', NULL, '0', '0', '0'),
('1', '18', '1', NULL, '0', '0', '0'),
('1', '19', '1', 'Buen 11 inicial y cambios acertados.', '0', '0', '0'),
('1', '20', '1', 'Mal planteada la defensa, era preferible poner a Zabala antes que a Gattoni.', '0', '0', '0'),
('1', '21', '1', 'Hizo lo que pudo teniendo muchos jugadores lesionados.', '0', '0', '0'),
('1', '22', '1', 'Los cambios no ayudaron a conservar la ventaja.', '0', '0', '0'),
('1', '23', '1', 'Buen 11 inicial y cambios acertados.', '0', '0', '0'),
('1', '24', '1', NULL, '0', '0', '0');

-- TABLA jugador_partido
INSERT INTO riverplate.jugador_partido(id_jugador, id_partido, minutos_jugados, goles, asistencias, goles_recibidos,
amarilla, doble_amarilla, roja) VALUES
('1', '17', '103', '0', '0', '1', '0', '0', '0'),
('24', '17', '79', '2', '0', DEFAULT, '0', '0', '0'),
('29', '17', '24', '1', '0', DEFAULT, '1', '0', '0'),
('19', '17', '79', '0', '1', DEFAULT, '0', '0', '0'),
('21', '17', '24', '0', '1', DEFAULT, '0', '0', '0'),
('18', '17', '96', '0', '1', DEFAULT, '0', '0', '0'),
('1', '18', '106', '0', '0', '2', '0', '0', '0'),
('24', '18', '79', '1', '0', DEFAULT, '1', '0', '0'),
('3', '18', '106', '1', '0', DEFAULT, '0', '0', '0'),
('27', '18', '106', '1', '0', DEFAULT, '0', '0', '0'),
('19', '18', '79', '0', '1', DEFAULT, '0', '0', '0'),
('21', '18', '27', '0', '1', DEFAULT, '0', '0', '0'),
('1', '19', '96', '0', '0', '0', '0', '0', '0'),
('20', '19', '28', '0', '1', DEFAULT, '0', '0', '0'),
('14', '19', '96', '0', '1', DEFAULT, '0', '0', '0'),
('3', '19', '96', '1', '0', DEFAULT, '0', '0', '0'),
('29', '19', '28', '1', '0', DEFAULT, '0', '0', '0'),
('25', '19', '83', '1', '0', DEFAULT, '1', '0', '0'),
('1', '20', '106', '0', '0', '2', '0', '0', '0'),
('27', '20', '66', '1', '0', DEFAULT, '1', '0', '0'),
('6', '20', '106', '0', '0', DEFAULT, '0', '0', '1'),
('1', '21', '102', '0', '0', '1', '1', '0', '0'),
('27', '21', '76', '1', '1', DEFAULT, '0', '0', '0'),
('25', '21', '68', '1', '1', DEFAULT, '0', '0', '0'),
('1', '22', '101', '0', '0', '1', '0', '0', '0'),
('25', '22', '101', '1', '0', DEFAULT, '0', '0', '0'),
('1', '23', '94', '0', '0', '0', '0', '0', '0'),
('19', '23', '64', '0', '1', DEFAULT, '0', '0', '0'),
('21', '23', '30', '1', '2', DEFAULT, '0', '0', '0'),
('29', '23', '29', '1', '0', DEFAULT, '0', '0', '0'),
('24', '23', '83', '2', '0', DEFAULT, '0', '0', '0'),
('1', '24', '100', '0', '0', '1', '0', '0', '0');
