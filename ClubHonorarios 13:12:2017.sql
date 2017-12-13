/*
 Navicat Premium Data Transfer

 Source Server         : ClubHonorarios
 Source Server Type    : MySQL
 Source Server Version : 50719
 Source Host           : localhost:3306
 Source Schema         : ClubHonorarios

 Target Server Type    : MySQL
 Target Server Version : 50719
 File Encoding         : 65001

 Date: 13/12/2017 10:51:28
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for Categorias
-- ----------------------------
DROP TABLE IF EXISTS `Categorias`;
CREATE TABLE `Categorias` (
  `idCategoria` int(11) NOT NULL,
  `pertenece` int(11) DEFAULT NULL,
  `nombre` varchar(50) NOT NULL,
  `path` varchar(1000) NOT NULL,
  `nivel` int(11) NOT NULL,
  `estado` char(1) NOT NULL,
  PRIMARY KEY (`idCategoria`),
  UNIQUE KEY `comment_id` (`idCategoria`),
  KEY `relacion_idx` (`pertenece`),
  CONSTRAINT `relacion` FOREIGN KEY (`pertenece`) REFERENCES `Categorias` (`idCategoria`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;;

-- ----------------------------
-- Records of Categorias
-- ----------------------------
BEGIN;
INSERT INTO `Categorias` VALUES (1, NULL, 'All in One', '1/', 1, 'A');
INSERT INTO `Categorias` VALUES (2, 1, 'Acer', '1/2/', 2, 'A');
INSERT INTO `Categorias` VALUES (3, 2, 'Teclados', '1/2/3/', 3, 'A');
INSERT INTO `Categorias` VALUES (4, 1, 'Asus', '1/4/', 2, 'A');
INSERT INTO `Categorias` VALUES (5, 4, 'Carcasas', '1/4/5/', 3, 'A');
INSERT INTO `Categorias` VALUES (6, 4, 'Mouses', '1/4/6/', 3, 'A');
INSERT INTO `Categorias` VALUES (7, 6, 'Inalambricos', '1/4/6/7/', 4, 'A');
INSERT INTO `Categorias` VALUES (8, 4, 'Fundas', '1/4/8/', 3, 'A');
INSERT INTO `Categorias` VALUES (9, 4, 'Telcados', '1/4/3/', 3, 'A');
INSERT INTO `Categorias` VALUES (10, 4, 'Baterias', '1/4/9/', 3, 'A');
INSERT INTO `Categorias` VALUES (11, NULL, 'Apple', '11/', 1, 'A');
INSERT INTO `Categorias` VALUES (12, 11, 'Apple TV', '11/17/', 2, 'A');
INSERT INTO `Categorias` VALUES (13, 11, 'Accesorios', '11/14/', 2, 'A');
COMMIT;

-- ----------------------------
-- Table structure for Ciudades
-- ----------------------------
DROP TABLE IF EXISTS `Ciudades`;
CREATE TABLE `Ciudades` (
  `idCiudad` int(11) NOT NULL,
  `idProvincia` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  PRIMARY KEY (`idCiudad`) USING BTREE,
  KEY `fk_idProvincia_idx` (`idProvincia`) USING BTREE,
  KEY `idCiudad` (`idCiudad`) USING BTREE,
  KEY `idCiudad_2` (`idCiudad`) USING BTREE,
  KEY `idCiudad_3` (`idCiudad`) USING BTREE,
  KEY `idCiudad_4` (`idCiudad`) USING BTREE,
  KEY `idCiudad_5` (`idCiudad`) USING BTREE,
  KEY `idCiudad_6` (`idCiudad`) USING BTREE,
  KEY `idCiudad_7` (`idCiudad`) USING BTREE,
  KEY `idCiudad_8` (`idCiudad`) USING BTREE,
  KEY `idCiudad_9` (`idCiudad`) USING BTREE,
  KEY `idCiudad_10` (`idCiudad`) USING BTREE,
  KEY `idCiudad_11` (`idCiudad`) USING BTREE,
  KEY `idCiudad_12` (`idCiudad`) USING BTREE,
  KEY `idCiudad_13` (`idCiudad`) USING BTREE,
  KEY `idCiudad_14` (`idCiudad`) USING BTREE,
  KEY `idCiudad_15` (`idCiudad`) USING BTREE,
  KEY `idCiudad_16` (`idCiudad`) USING BTREE,
  CONSTRAINT `fk_idProvincia` FOREIGN KEY (`idProvincia`) REFERENCES `Provincias` (`idProvincia`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;;

-- ----------------------------
-- Records of Ciudades
-- ----------------------------
BEGIN;
INSERT INTO `Ciudades` VALUES (1, 1, '25 de Mayo');
INSERT INTO `Ciudades` VALUES (2, 1, '3 de febrero');
INSERT INTO `Ciudades` VALUES (3, 1, 'A. Alsina');
INSERT INTO `Ciudades` VALUES (4, 1, 'A. Gonzáles Cháves');
INSERT INTO `Ciudades` VALUES (5, 1, 'Aguas Verdes');
INSERT INTO `Ciudades` VALUES (6, 1, 'Alberti');
INSERT INTO `Ciudades` VALUES (7, 1, 'Arrecifes');
INSERT INTO `Ciudades` VALUES (8, 1, 'Ayacucho');
INSERT INTO `Ciudades` VALUES (9, 1, 'Azul');
INSERT INTO `Ciudades` VALUES (10, 1, 'Bahía Blanca');
INSERT INTO `Ciudades` VALUES (11, 1, 'Balcarce');
INSERT INTO `Ciudades` VALUES (12, 1, 'Baradero');
INSERT INTO `Ciudades` VALUES (13, 1, 'Benito Juárez');
INSERT INTO `Ciudades` VALUES (14, 1, 'Berisso');
INSERT INTO `Ciudades` VALUES (15, 1, 'Bolívar');
INSERT INTO `Ciudades` VALUES (16, 1, 'Bragado');
INSERT INTO `Ciudades` VALUES (17, 1, 'Brandsen');
INSERT INTO `Ciudades` VALUES (18, 1, 'Campana');
INSERT INTO `Ciudades` VALUES (19, 1, 'Cañuelas');
INSERT INTO `Ciudades` VALUES (20, 1, 'Capilla del Señor');
INSERT INTO `Ciudades` VALUES (21, 1, 'Capitán Sarmiento');
INSERT INTO `Ciudades` VALUES (22, 1, 'Carapachay');
INSERT INTO `Ciudades` VALUES (23, 1, 'Carhue');
INSERT INTO `Ciudades` VALUES (24, 1, 'Cariló');
INSERT INTO `Ciudades` VALUES (25, 1, 'Carlos Casares');
INSERT INTO `Ciudades` VALUES (26, 1, 'Carlos Tejedor');
INSERT INTO `Ciudades` VALUES (27, 1, 'Carmen de Areco');
INSERT INTO `Ciudades` VALUES (28, 1, 'Carmen de Patagones');
INSERT INTO `Ciudades` VALUES (29, 1, 'Castelli');
INSERT INTO `Ciudades` VALUES (30, 1, 'Chacabuco');
INSERT INTO `Ciudades` VALUES (31, 1, 'Chascomús');
INSERT INTO `Ciudades` VALUES (32, 1, 'Chivilcoy');
INSERT INTO `Ciudades` VALUES (33, 1, 'Colón');
INSERT INTO `Ciudades` VALUES (34, 1, 'Coronel Dorrego');
INSERT INTO `Ciudades` VALUES (35, 1, 'Coronel Pringles');
INSERT INTO `Ciudades` VALUES (36, 1, 'Coronel Rosales');
INSERT INTO `Ciudades` VALUES (37, 1, 'Coronel Suarez');
INSERT INTO `Ciudades` VALUES (38, 1, 'Costa Azul');
INSERT INTO `Ciudades` VALUES (39, 1, 'Costa Chica');
INSERT INTO `Ciudades` VALUES (40, 1, 'Costa del Este');
INSERT INTO `Ciudades` VALUES (41, 1, 'Costa Esmeralda');
INSERT INTO `Ciudades` VALUES (42, 1, 'Daireaux');
INSERT INTO `Ciudades` VALUES (43, 1, 'Darregueira');
INSERT INTO `Ciudades` VALUES (44, 1, 'Del Viso');
INSERT INTO `Ciudades` VALUES (45, 1, 'Dolores');
INSERT INTO `Ciudades` VALUES (46, 1, 'Don Torcuato');
INSERT INTO `Ciudades` VALUES (47, 1, 'Ensenada');
INSERT INTO `Ciudades` VALUES (48, 1, 'Escobar');
INSERT INTO `Ciudades` VALUES (49, 1, 'Exaltación de la Cruz');
INSERT INTO `Ciudades` VALUES (50, 1, 'Florentino Ameghino');
INSERT INTO `Ciudades` VALUES (51, 1, 'Garín');
INSERT INTO `Ciudades` VALUES (52, 1, 'Gral. Alvarado');
INSERT INTO `Ciudades` VALUES (53, 1, 'Gral. Alvear');
INSERT INTO `Ciudades` VALUES (54, 1, 'Gral. Arenales');
INSERT INTO `Ciudades` VALUES (55, 1, 'Gral. Belgrano');
INSERT INTO `Ciudades` VALUES (56, 1, 'Gral. Guido');
INSERT INTO `Ciudades` VALUES (57, 1, 'Gral. Lamadrid');
INSERT INTO `Ciudades` VALUES (58, 1, 'Gral. Las Heras');
INSERT INTO `Ciudades` VALUES (59, 1, 'Gral. Lavalle');
INSERT INTO `Ciudades` VALUES (60, 1, 'Gral. Madariaga');
INSERT INTO `Ciudades` VALUES (61, 1, 'Gral. Pacheco');
INSERT INTO `Ciudades` VALUES (62, 1, 'Gral. Paz');
INSERT INTO `Ciudades` VALUES (63, 1, 'Gral. Pinto');
INSERT INTO `Ciudades` VALUES (64, 1, 'Gral. Pueyrredón');
INSERT INTO `Ciudades` VALUES (65, 1, 'Gral. Rodríguez');
INSERT INTO `Ciudades` VALUES (66, 1, 'Gral. Viamonte');
INSERT INTO `Ciudades` VALUES (67, 1, 'Gral. Villegas');
INSERT INTO `Ciudades` VALUES (68, 1, 'Guaminí');
INSERT INTO `Ciudades` VALUES (69, 1, 'Guernica');
INSERT INTO `Ciudades` VALUES (70, 1, 'Hipólito Yrigoyen');
INSERT INTO `Ciudades` VALUES (71, 1, 'Ing. Maschwitz');
INSERT INTO `Ciudades` VALUES (72, 1, 'Junín');
INSERT INTO `Ciudades` VALUES (73, 1, 'La Plata');
INSERT INTO `Ciudades` VALUES (74, 1, 'Laprida');
INSERT INTO `Ciudades` VALUES (75, 1, 'Las Flores');
INSERT INTO `Ciudades` VALUES (76, 1, 'Las Toninas');
INSERT INTO `Ciudades` VALUES (77, 1, 'Leandro N. Alem');
INSERT INTO `Ciudades` VALUES (78, 1, 'Lincoln');
INSERT INTO `Ciudades` VALUES (79, 1, 'Loberia');
INSERT INTO `Ciudades` VALUES (80, 1, 'Lobos');
INSERT INTO `Ciudades` VALUES (81, 1, 'Los Cardales');
INSERT INTO `Ciudades` VALUES (82, 1, 'Los Toldos');
INSERT INTO `Ciudades` VALUES (83, 1, 'Lucila del Mar');
INSERT INTO `Ciudades` VALUES (84, 1, 'Luján');
INSERT INTO `Ciudades` VALUES (85, 1, 'Magdalena');
INSERT INTO `Ciudades` VALUES (86, 1, 'Maipú');
INSERT INTO `Ciudades` VALUES (87, 1, 'Mar Chiquita');
INSERT INTO `Ciudades` VALUES (88, 1, 'Mar de Ajó');
INSERT INTO `Ciudades` VALUES (89, 1, 'Mar de las Pampas');
INSERT INTO `Ciudades` VALUES (90, 1, 'Mar del Plata');
INSERT INTO `Ciudades` VALUES (91, 1, 'Mar del Tuyú');
INSERT INTO `Ciudades` VALUES (92, 1, 'Marcos Paz');
INSERT INTO `Ciudades` VALUES (93, 1, 'Mercedes');
INSERT INTO `Ciudades` VALUES (94, 1, 'Miramar');
INSERT INTO `Ciudades` VALUES (95, 1, 'Monte');
INSERT INTO `Ciudades` VALUES (96, 1, 'Monte Hermoso');
INSERT INTO `Ciudades` VALUES (97, 1, 'Munro');
INSERT INTO `Ciudades` VALUES (98, 1, 'Navarro');
INSERT INTO `Ciudades` VALUES (99, 1, 'Necochea');
INSERT INTO `Ciudades` VALUES (100, 1, 'Olavarría');
INSERT INTO `Ciudades` VALUES (101, 1, 'Partido de la Costa');
INSERT INTO `Ciudades` VALUES (102, 1, 'Pehuajó');
INSERT INTO `Ciudades` VALUES (103, 1, 'Pellegrini');
INSERT INTO `Ciudades` VALUES (104, 1, 'Pergamino');
INSERT INTO `Ciudades` VALUES (105, 1, 'Pigüé');
INSERT INTO `Ciudades` VALUES (106, 1, 'Pila');
INSERT INTO `Ciudades` VALUES (107, 1, 'Pilar');
INSERT INTO `Ciudades` VALUES (108, 1, 'Pinamar');
INSERT INTO `Ciudades` VALUES (109, 1, 'Pinar del Sol');
INSERT INTO `Ciudades` VALUES (110, 1, 'Polvorines');
INSERT INTO `Ciudades` VALUES (111, 1, 'Pte. Perón');
INSERT INTO `Ciudades` VALUES (112, 1, 'Puán');
INSERT INTO `Ciudades` VALUES (113, 1, 'Punta Indio');
INSERT INTO `Ciudades` VALUES (114, 1, 'Ramallo');
INSERT INTO `Ciudades` VALUES (115, 1, 'Rauch');
INSERT INTO `Ciudades` VALUES (116, 1, 'Rivadavia');
INSERT INTO `Ciudades` VALUES (117, 1, 'Rojas');
INSERT INTO `Ciudades` VALUES (118, 1, 'Roque Pérez');
INSERT INTO `Ciudades` VALUES (119, 1, 'Saavedra');
INSERT INTO `Ciudades` VALUES (120, 1, 'Saladillo');
INSERT INTO `Ciudades` VALUES (121, 1, 'Salliqueló');
INSERT INTO `Ciudades` VALUES (122, 1, 'Salto');
INSERT INTO `Ciudades` VALUES (123, 1, 'San Andrés de Giles');
INSERT INTO `Ciudades` VALUES (124, 1, 'San Antonio de Areco');
INSERT INTO `Ciudades` VALUES (125, 1, 'San Antonio de Padua');
INSERT INTO `Ciudades` VALUES (126, 1, 'San Bernardo');
INSERT INTO `Ciudades` VALUES (127, 1, 'San Cayetano');
INSERT INTO `Ciudades` VALUES (128, 1, 'San Clemente del Tuyú');
INSERT INTO `Ciudades` VALUES (129, 1, 'San Nicolás');
INSERT INTO `Ciudades` VALUES (130, 1, 'San Pedro');
INSERT INTO `Ciudades` VALUES (131, 1, 'San Vicente');
INSERT INTO `Ciudades` VALUES (132, 1, 'Santa Teresita');
INSERT INTO `Ciudades` VALUES (133, 1, 'Suipacha');
INSERT INTO `Ciudades` VALUES (134, 1, 'Tandil');
INSERT INTO `Ciudades` VALUES (135, 1, 'Tapalqué');
INSERT INTO `Ciudades` VALUES (136, 1, 'Tordillo');
INSERT INTO `Ciudades` VALUES (137, 1, 'Tornquist');
INSERT INTO `Ciudades` VALUES (138, 1, 'Trenque Lauquen');
INSERT INTO `Ciudades` VALUES (139, 1, 'Tres Lomas');
INSERT INTO `Ciudades` VALUES (140, 1, 'Villa Gesell');
INSERT INTO `Ciudades` VALUES (141, 1, 'Villarino');
INSERT INTO `Ciudades` VALUES (142, 1, 'Zárate');
INSERT INTO `Ciudades` VALUES (143, 2, '11 de Septiembre');
INSERT INTO `Ciudades` VALUES (144, 2, '20 de Junio');
INSERT INTO `Ciudades` VALUES (145, 2, '25 de Mayo');
INSERT INTO `Ciudades` VALUES (146, 2, 'Acassuso');
INSERT INTO `Ciudades` VALUES (147, 2, 'Adrogué');
INSERT INTO `Ciudades` VALUES (148, 2, 'Aldo Bonzi');
INSERT INTO `Ciudades` VALUES (149, 2, 'Área Reserva Cinturón Ecológico');
INSERT INTO `Ciudades` VALUES (150, 2, 'Avellaneda');
INSERT INTO `Ciudades` VALUES (151, 2, 'Banfield');
INSERT INTO `Ciudades` VALUES (152, 2, 'Barrio Parque');
INSERT INTO `Ciudades` VALUES (153, 2, 'Barrio Santa Teresita');
INSERT INTO `Ciudades` VALUES (154, 2, 'Beccar');
INSERT INTO `Ciudades` VALUES (155, 2, 'Bella Vista');
INSERT INTO `Ciudades` VALUES (156, 2, 'Berazategui');
INSERT INTO `Ciudades` VALUES (157, 2, 'Bernal Este');
INSERT INTO `Ciudades` VALUES (158, 2, 'Bernal Oeste');
INSERT INTO `Ciudades` VALUES (159, 2, 'Billinghurst');
INSERT INTO `Ciudades` VALUES (160, 2, 'Boulogne');
INSERT INTO `Ciudades` VALUES (161, 2, 'Burzaco');
INSERT INTO `Ciudades` VALUES (162, 2, 'Carapachay');
INSERT INTO `Ciudades` VALUES (163, 2, 'Caseros');
INSERT INTO `Ciudades` VALUES (164, 2, 'Castelar');
INSERT INTO `Ciudades` VALUES (165, 2, 'Churruca');
INSERT INTO `Ciudades` VALUES (166, 2, 'Ciudad Evita');
INSERT INTO `Ciudades` VALUES (167, 2, 'Ciudad Madero');
INSERT INTO `Ciudades` VALUES (168, 2, 'Ciudadela');
INSERT INTO `Ciudades` VALUES (169, 2, 'Claypole');
INSERT INTO `Ciudades` VALUES (170, 2, 'Crucecita');
INSERT INTO `Ciudades` VALUES (171, 2, 'Dock Sud');
INSERT INTO `Ciudades` VALUES (172, 2, 'Don Bosco');
INSERT INTO `Ciudades` VALUES (173, 2, 'Don Orione');
INSERT INTO `Ciudades` VALUES (174, 2, 'El Jagüel');
INSERT INTO `Ciudades` VALUES (175, 2, 'El Libertador');
INSERT INTO `Ciudades` VALUES (176, 2, 'El Palomar');
INSERT INTO `Ciudades` VALUES (177, 2, 'El Tala');
INSERT INTO `Ciudades` VALUES (178, 2, 'El Trébol');
INSERT INTO `Ciudades` VALUES (179, 2, 'Ezeiza');
INSERT INTO `Ciudades` VALUES (180, 2, 'Ezpeleta');
INSERT INTO `Ciudades` VALUES (181, 2, 'Florencio Varela');
INSERT INTO `Ciudades` VALUES (182, 2, 'Florida');
INSERT INTO `Ciudades` VALUES (183, 2, 'Francisco Álvarez');
INSERT INTO `Ciudades` VALUES (184, 2, 'Gerli');
INSERT INTO `Ciudades` VALUES (185, 2, 'Glew');
INSERT INTO `Ciudades` VALUES (186, 2, 'González Catán');
INSERT INTO `Ciudades` VALUES (187, 2, 'Gral. Lamadrid');
INSERT INTO `Ciudades` VALUES (188, 2, 'Grand Bourg');
INSERT INTO `Ciudades` VALUES (189, 2, 'Gregorio de Laferrere');
INSERT INTO `Ciudades` VALUES (190, 2, 'Guillermo Enrique Hudson');
INSERT INTO `Ciudades` VALUES (191, 2, 'Haedo');
INSERT INTO `Ciudades` VALUES (192, 2, 'Hurlingham');
INSERT INTO `Ciudades` VALUES (193, 2, 'Ing. Sourdeaux');
INSERT INTO `Ciudades` VALUES (194, 2, 'Isidro Casanova');
INSERT INTO `Ciudades` VALUES (195, 2, 'Ituzaingó');
INSERT INTO `Ciudades` VALUES (196, 2, 'José C. Paz');
INSERT INTO `Ciudades` VALUES (197, 2, 'José Ingenieros');
INSERT INTO `Ciudades` VALUES (198, 2, 'José Marmol');
INSERT INTO `Ciudades` VALUES (199, 2, 'La Lucila');
INSERT INTO `Ciudades` VALUES (200, 2, 'La Reja');
INSERT INTO `Ciudades` VALUES (201, 2, 'La Tablada');
INSERT INTO `Ciudades` VALUES (202, 2, 'Lanús');
INSERT INTO `Ciudades` VALUES (203, 2, 'Llavallol');
INSERT INTO `Ciudades` VALUES (204, 2, 'Loma Hermosa');
INSERT INTO `Ciudades` VALUES (205, 2, 'Lomas de Zamora');
INSERT INTO `Ciudades` VALUES (206, 2, 'Lomas del Millón');
INSERT INTO `Ciudades` VALUES (207, 2, 'Lomas del Mirador');
INSERT INTO `Ciudades` VALUES (208, 2, 'Longchamps');
INSERT INTO `Ciudades` VALUES (209, 2, 'Los Polvorines');
INSERT INTO `Ciudades` VALUES (210, 2, 'Luis Guillón');
INSERT INTO `Ciudades` VALUES (211, 2, 'Malvinas Argentinas');
INSERT INTO `Ciudades` VALUES (212, 2, 'Martín Coronado');
INSERT INTO `Ciudades` VALUES (213, 2, 'Martínez');
INSERT INTO `Ciudades` VALUES (214, 2, 'Merlo');
INSERT INTO `Ciudades` VALUES (215, 2, 'Ministro Rivadavia');
INSERT INTO `Ciudades` VALUES (216, 2, 'Monte Chingolo');
INSERT INTO `Ciudades` VALUES (217, 2, 'Monte Grande');
INSERT INTO `Ciudades` VALUES (218, 2, 'Moreno');
INSERT INTO `Ciudades` VALUES (219, 2, 'Morón');
INSERT INTO `Ciudades` VALUES (220, 2, 'Muñiz');
INSERT INTO `Ciudades` VALUES (221, 2, 'Olivos');
INSERT INTO `Ciudades` VALUES (222, 2, 'Pablo Nogués');
INSERT INTO `Ciudades` VALUES (223, 2, 'Pablo Podestá');
INSERT INTO `Ciudades` VALUES (224, 2, 'Paso del Rey');
INSERT INTO `Ciudades` VALUES (225, 2, 'Pereyra');
INSERT INTO `Ciudades` VALUES (226, 2, 'Piñeiro');
INSERT INTO `Ciudades` VALUES (227, 2, 'Plátanos');
INSERT INTO `Ciudades` VALUES (228, 2, 'Pontevedra');
INSERT INTO `Ciudades` VALUES (229, 2, 'Quilmes');
INSERT INTO `Ciudades` VALUES (230, 2, 'Rafael Calzada');
INSERT INTO `Ciudades` VALUES (231, 2, 'Rafael Castillo');
INSERT INTO `Ciudades` VALUES (232, 2, 'Ramos Mejía');
INSERT INTO `Ciudades` VALUES (233, 2, 'Ranelagh');
INSERT INTO `Ciudades` VALUES (234, 2, 'Remedios de Escalada');
INSERT INTO `Ciudades` VALUES (235, 2, 'Sáenz Peña');
INSERT INTO `Ciudades` VALUES (236, 2, 'San Antonio de Padua');
INSERT INTO `Ciudades` VALUES (237, 2, 'San Fernando');
INSERT INTO `Ciudades` VALUES (238, 2, 'San Francisco Solano');
INSERT INTO `Ciudades` VALUES (239, 2, 'San Isidro');
INSERT INTO `Ciudades` VALUES (240, 2, 'San José');
INSERT INTO `Ciudades` VALUES (241, 2, 'San Justo');
INSERT INTO `Ciudades` VALUES (242, 2, 'San Martín');
INSERT INTO `Ciudades` VALUES (243, 2, 'San Miguel');
INSERT INTO `Ciudades` VALUES (244, 2, 'Santos Lugares');
INSERT INTO `Ciudades` VALUES (245, 2, 'Sarandí');
INSERT INTO `Ciudades` VALUES (246, 2, 'Sourigues');
INSERT INTO `Ciudades` VALUES (247, 2, 'Tapiales');
INSERT INTO `Ciudades` VALUES (248, 2, 'Temperley');
INSERT INTO `Ciudades` VALUES (249, 2, 'Tigre');
INSERT INTO `Ciudades` VALUES (250, 2, 'Tortuguitas');
INSERT INTO `Ciudades` VALUES (251, 2, 'Tristán Suárez');
INSERT INTO `Ciudades` VALUES (252, 2, 'Trujui');
INSERT INTO `Ciudades` VALUES (253, 2, 'Turdera');
INSERT INTO `Ciudades` VALUES (254, 2, 'Valentín Alsina');
INSERT INTO `Ciudades` VALUES (255, 2, 'Vicente López');
INSERT INTO `Ciudades` VALUES (256, 2, 'Villa Adelina');
INSERT INTO `Ciudades` VALUES (257, 2, 'Villa Ballester');
INSERT INTO `Ciudades` VALUES (258, 2, 'Villa Bosch');
INSERT INTO `Ciudades` VALUES (259, 2, 'Villa Caraza');
INSERT INTO `Ciudades` VALUES (260, 2, 'Villa Celina');
INSERT INTO `Ciudades` VALUES (261, 2, 'Villa Centenario');
INSERT INTO `Ciudades` VALUES (262, 2, 'Villa de Mayo');
INSERT INTO `Ciudades` VALUES (263, 2, 'Villa Diamante');
INSERT INTO `Ciudades` VALUES (264, 2, 'Villa Domínico');
INSERT INTO `Ciudades` VALUES (265, 2, 'Villa España');
INSERT INTO `Ciudades` VALUES (266, 2, 'Villa Fiorito');
INSERT INTO `Ciudades` VALUES (267, 2, 'Villa Guillermina');
INSERT INTO `Ciudades` VALUES (268, 2, 'Villa Insuperable');
INSERT INTO `Ciudades` VALUES (269, 2, 'Villa José León Suárez');
INSERT INTO `Ciudades` VALUES (270, 2, 'Villa La Florida');
INSERT INTO `Ciudades` VALUES (271, 2, 'Villa Luzuriaga');
INSERT INTO `Ciudades` VALUES (272, 2, 'Villa Martelli');
INSERT INTO `Ciudades` VALUES (273, 2, 'Villa Obrera');
INSERT INTO `Ciudades` VALUES (274, 2, 'Villa Progreso');
INSERT INTO `Ciudades` VALUES (275, 2, 'Villa Raffo');
INSERT INTO `Ciudades` VALUES (276, 2, 'Villa Sarmiento');
INSERT INTO `Ciudades` VALUES (277, 2, 'Villa Tesei');
INSERT INTO `Ciudades` VALUES (278, 2, 'Villa Udaondo');
INSERT INTO `Ciudades` VALUES (279, 2, 'Virrey del Pino');
INSERT INTO `Ciudades` VALUES (280, 2, 'Wilde');
INSERT INTO `Ciudades` VALUES (281, 2, 'William Morris');
INSERT INTO `Ciudades` VALUES (282, 3, 'Agronomía');
INSERT INTO `Ciudades` VALUES (283, 3, 'Almagro');
INSERT INTO `Ciudades` VALUES (284, 3, 'Balvanera');
INSERT INTO `Ciudades` VALUES (285, 3, 'Barracas');
INSERT INTO `Ciudades` VALUES (286, 3, 'Belgrano');
INSERT INTO `Ciudades` VALUES (287, 3, 'Boca');
INSERT INTO `Ciudades` VALUES (288, 3, 'Boedo');
INSERT INTO `Ciudades` VALUES (289, 3, 'Caballito');
INSERT INTO `Ciudades` VALUES (290, 3, 'Chacarita');
INSERT INTO `Ciudades` VALUES (291, 3, 'Coghlan');
INSERT INTO `Ciudades` VALUES (292, 3, 'Colegiales');
INSERT INTO `Ciudades` VALUES (293, 3, 'Constitución');
INSERT INTO `Ciudades` VALUES (294, 3, 'Flores');
INSERT INTO `Ciudades` VALUES (295, 3, 'Floresta');
INSERT INTO `Ciudades` VALUES (296, 3, 'La Paternal');
INSERT INTO `Ciudades` VALUES (297, 3, 'Liniers');
INSERT INTO `Ciudades` VALUES (298, 3, 'Mataderos');
INSERT INTO `Ciudades` VALUES (299, 3, 'Monserrat');
INSERT INTO `Ciudades` VALUES (300, 3, 'Monte Castro');
INSERT INTO `Ciudades` VALUES (301, 3, 'Nueva Pompeya');
INSERT INTO `Ciudades` VALUES (302, 3, 'Núñez');
INSERT INTO `Ciudades` VALUES (303, 3, 'Palermo');
INSERT INTO `Ciudades` VALUES (304, 3, 'Parque Avellaneda');
INSERT INTO `Ciudades` VALUES (305, 3, 'Parque Chacabuco');
INSERT INTO `Ciudades` VALUES (306, 3, 'Parque Chas');
INSERT INTO `Ciudades` VALUES (307, 3, 'Parque Patricios');
INSERT INTO `Ciudades` VALUES (308, 3, 'Puerto Madero');
INSERT INTO `Ciudades` VALUES (309, 3, 'Recoleta');
INSERT INTO `Ciudades` VALUES (310, 3, 'Retiro');
INSERT INTO `Ciudades` VALUES (311, 3, 'Saavedra');
INSERT INTO `Ciudades` VALUES (312, 3, 'San Cristóbal');
INSERT INTO `Ciudades` VALUES (313, 3, 'San Nicolás');
INSERT INTO `Ciudades` VALUES (314, 3, 'San Telmo');
INSERT INTO `Ciudades` VALUES (315, 3, 'Vélez Sársfield');
INSERT INTO `Ciudades` VALUES (316, 3, 'Versalles');
INSERT INTO `Ciudades` VALUES (317, 3, 'Villa Crespo');
INSERT INTO `Ciudades` VALUES (318, 3, 'Villa del Parque');
INSERT INTO `Ciudades` VALUES (319, 3, 'Villa Devoto');
INSERT INTO `Ciudades` VALUES (320, 3, 'Villa Gral. Mitre');
INSERT INTO `Ciudades` VALUES (321, 3, 'Villa Lugano');
INSERT INTO `Ciudades` VALUES (322, 3, 'Villa Luro');
INSERT INTO `Ciudades` VALUES (323, 3, 'Villa Ortúzar');
INSERT INTO `Ciudades` VALUES (324, 3, 'Villa Pueyrredón');
INSERT INTO `Ciudades` VALUES (325, 3, 'Villa Real');
INSERT INTO `Ciudades` VALUES (326, 3, 'Villa Riachuelo');
INSERT INTO `Ciudades` VALUES (327, 3, 'Villa Santa Rita');
INSERT INTO `Ciudades` VALUES (328, 3, 'Villa Soldati');
INSERT INTO `Ciudades` VALUES (329, 3, 'Villa Urquiza');
INSERT INTO `Ciudades` VALUES (330, 4, 'Aconquija');
INSERT INTO `Ciudades` VALUES (331, 4, 'Ancasti');
INSERT INTO `Ciudades` VALUES (332, 4, 'Andalgalá');
INSERT INTO `Ciudades` VALUES (333, 4, 'Antofagasta');
INSERT INTO `Ciudades` VALUES (334, 4, 'Belén');
INSERT INTO `Ciudades` VALUES (335, 4, 'Capayán');
INSERT INTO `Ciudades` VALUES (336, 4, 'Capital');
INSERT INTO `Ciudades` VALUES (337, 4, '4');
INSERT INTO `Ciudades` VALUES (338, 4, 'Corral Quemado');
INSERT INTO `Ciudades` VALUES (339, 4, 'El Alto');
INSERT INTO `Ciudades` VALUES (340, 4, 'El Rodeo');
INSERT INTO `Ciudades` VALUES (341, 4, 'F.Mamerto Esquiú');
INSERT INTO `Ciudades` VALUES (342, 4, 'Fiambalá');
INSERT INTO `Ciudades` VALUES (343, 4, 'Hualfín');
INSERT INTO `Ciudades` VALUES (344, 4, 'Huillapima');
INSERT INTO `Ciudades` VALUES (345, 4, 'Icaño');
INSERT INTO `Ciudades` VALUES (346, 4, 'La Puerta');
INSERT INTO `Ciudades` VALUES (347, 4, 'Las Juntas');
INSERT INTO `Ciudades` VALUES (348, 4, 'Londres');
INSERT INTO `Ciudades` VALUES (349, 4, 'Los Altos');
INSERT INTO `Ciudades` VALUES (350, 4, 'Los Varela');
INSERT INTO `Ciudades` VALUES (351, 4, 'Mutquín');
INSERT INTO `Ciudades` VALUES (352, 4, 'Paclín');
INSERT INTO `Ciudades` VALUES (353, 4, 'Poman');
INSERT INTO `Ciudades` VALUES (354, 4, 'Pozo de La Piedra');
INSERT INTO `Ciudades` VALUES (355, 4, 'Puerta de Corral');
INSERT INTO `Ciudades` VALUES (356, 4, 'Puerta San José');
INSERT INTO `Ciudades` VALUES (357, 4, 'Recreo');
INSERT INTO `Ciudades` VALUES (358, 4, 'S.F.V de Catamarca');
INSERT INTO `Ciudades` VALUES (359, 4, 'San Fernando');
INSERT INTO `Ciudades` VALUES (360, 4, 'San Fernando del Valle');
INSERT INTO `Ciudades` VALUES (361, 4, 'San José');
INSERT INTO `Ciudades` VALUES (362, 4, 'Santa María');
INSERT INTO `Ciudades` VALUES (363, 4, 'Santa Rosa');
INSERT INTO `Ciudades` VALUES (364, 4, 'Saujil');
INSERT INTO `Ciudades` VALUES (365, 4, 'Tapso');
INSERT INTO `Ciudades` VALUES (366, 4, 'Tinogasta');
INSERT INTO `Ciudades` VALUES (367, 4, 'Valle Viejo');
INSERT INTO `Ciudades` VALUES (368, 4, 'Villa Vil');
INSERT INTO `Ciudades` VALUES (369, 5, 'Aviá Teraí');
INSERT INTO `Ciudades` VALUES (370, 5, 'Barranqueras');
INSERT INTO `Ciudades` VALUES (371, 5, 'Basail');
INSERT INTO `Ciudades` VALUES (372, 5, 'Campo Largo');
INSERT INTO `Ciudades` VALUES (373, 5, 'Capital');
INSERT INTO `Ciudades` VALUES (374, 5, 'Capitán Solari');
INSERT INTO `Ciudades` VALUES (375, 5, 'Charadai');
INSERT INTO `Ciudades` VALUES (376, 5, 'Charata');
INSERT INTO `Ciudades` VALUES (377, 5, 'Chorotis');
INSERT INTO `Ciudades` VALUES (378, 5, 'Ciervo Petiso');
INSERT INTO `Ciudades` VALUES (379, 5, 'Cnel. Du Graty');
INSERT INTO `Ciudades` VALUES (380, 5, 'Col. Benítez');
INSERT INTO `Ciudades` VALUES (381, 5, 'Col. Elisa');
INSERT INTO `Ciudades` VALUES (382, 5, 'Col. Popular');
INSERT INTO `Ciudades` VALUES (383, 5, 'Colonias Unidas');
INSERT INTO `Ciudades` VALUES (384, 5, 'Concepción');
INSERT INTO `Ciudades` VALUES (385, 5, 'Corzuela');
INSERT INTO `Ciudades` VALUES (386, 5, 'Cote Lai');
INSERT INTO `Ciudades` VALUES (387, 5, 'El Sauzalito');
INSERT INTO `Ciudades` VALUES (388, 5, 'Enrique Urien');
INSERT INTO `Ciudades` VALUES (389, 5, 'Fontana');
INSERT INTO `Ciudades` VALUES (390, 5, 'Fte. Esperanza');
INSERT INTO `Ciudades` VALUES (391, 5, 'Gancedo');
INSERT INTO `Ciudades` VALUES (392, 5, 'Gral. Capdevila');
INSERT INTO `Ciudades` VALUES (393, 5, 'Gral. Pinero');
INSERT INTO `Ciudades` VALUES (394, 5, 'Gral. San Martín');
INSERT INTO `Ciudades` VALUES (395, 5, 'Gral. Vedia');
INSERT INTO `Ciudades` VALUES (396, 5, 'Hermoso Campo');
INSERT INTO `Ciudades` VALUES (397, 5, 'I. del Cerrito');
INSERT INTO `Ciudades` VALUES (398, 5, 'J.J. Castelli');
INSERT INTO `Ciudades` VALUES (399, 5, 'La Clotilde');
INSERT INTO `Ciudades` VALUES (400, 5, 'La Eduvigis');
INSERT INTO `Ciudades` VALUES (401, 5, 'La Escondida');
INSERT INTO `Ciudades` VALUES (402, 5, 'La Leonesa');
INSERT INTO `Ciudades` VALUES (403, 5, 'La Tigra');
INSERT INTO `Ciudades` VALUES (404, 5, 'La Verde');
INSERT INTO `Ciudades` VALUES (405, 5, 'Laguna Blanca');
INSERT INTO `Ciudades` VALUES (406, 5, 'Laguna Limpia');
INSERT INTO `Ciudades` VALUES (407, 5, 'Lapachito');
INSERT INTO `Ciudades` VALUES (408, 5, 'Las Breñas');
INSERT INTO `Ciudades` VALUES (409, 5, 'Las Garcitas');
INSERT INTO `Ciudades` VALUES (410, 5, 'Las Palmas');
INSERT INTO `Ciudades` VALUES (411, 5, 'Los Frentones');
INSERT INTO `Ciudades` VALUES (412, 5, 'Machagai');
INSERT INTO `Ciudades` VALUES (413, 5, 'Makallé');
INSERT INTO `Ciudades` VALUES (414, 5, 'Margarita Belén');
INSERT INTO `Ciudades` VALUES (415, 5, 'Miraflores');
INSERT INTO `Ciudades` VALUES (416, 5, 'Misión N. Pompeya');
INSERT INTO `Ciudades` VALUES (417, 5, 'Napenay');
INSERT INTO `Ciudades` VALUES (418, 5, 'Pampa Almirón');
INSERT INTO `Ciudades` VALUES (419, 5, 'Pampa del Indio');
INSERT INTO `Ciudades` VALUES (420, 5, 'Pampa del Infierno');
INSERT INTO `Ciudades` VALUES (421, 5, 'Pdcia. de La Plaza');
INSERT INTO `Ciudades` VALUES (422, 5, 'Pdcia. Roca');
INSERT INTO `Ciudades` VALUES (423, 5, 'Pdcia. Roque Sáenz Peña');
INSERT INTO `Ciudades` VALUES (424, 5, 'Pto. Bermejo');
INSERT INTO `Ciudades` VALUES (425, 5, 'Pto. Eva Perón');
INSERT INTO `Ciudades` VALUES (426, 5, 'Puero Tirol');
INSERT INTO `Ciudades` VALUES (427, 5, 'Puerto Vilelas');
INSERT INTO `Ciudades` VALUES (428, 5, 'Quitilipi');
INSERT INTO `Ciudades` VALUES (429, 5, 'Resistencia');
INSERT INTO `Ciudades` VALUES (430, 5, 'Sáenz Peña');
INSERT INTO `Ciudades` VALUES (431, 5, 'Samuhú');
INSERT INTO `Ciudades` VALUES (432, 5, 'San Bernardo');
INSERT INTO `Ciudades` VALUES (433, 5, 'Santa Sylvina');
INSERT INTO `Ciudades` VALUES (434, 5, 'Taco Pozo');
INSERT INTO `Ciudades` VALUES (435, 5, 'Tres Isletas');
INSERT INTO `Ciudades` VALUES (436, 5, 'Villa Ángela');
INSERT INTO `Ciudades` VALUES (437, 5, 'Villa Berthet');
INSERT INTO `Ciudades` VALUES (438, 5, 'Villa R. Bermejito');
INSERT INTO `Ciudades` VALUES (439, 6, 'Aldea Apeleg');
INSERT INTO `Ciudades` VALUES (440, 6, 'Aldea Beleiro');
INSERT INTO `Ciudades` VALUES (441, 6, 'Aldea Epulef');
INSERT INTO `Ciudades` VALUES (442, 6, 'Alto Río Sengerr');
INSERT INTO `Ciudades` VALUES (443, 6, 'Buen Pasto');
INSERT INTO `Ciudades` VALUES (444, 6, 'Camarones');
INSERT INTO `Ciudades` VALUES (445, 6, 'Carrenleufú');
INSERT INTO `Ciudades` VALUES (446, 6, 'Cholila');
INSERT INTO `Ciudades` VALUES (447, 6, 'Co. Centinela');
INSERT INTO `Ciudades` VALUES (448, 6, 'Colan Conhué');
INSERT INTO `Ciudades` VALUES (449, 6, 'Comodoro Rivadavia');
INSERT INTO `Ciudades` VALUES (450, 6, 'Corcovado');
INSERT INTO `Ciudades` VALUES (451, 6, 'Cushamen');
INSERT INTO `Ciudades` VALUES (452, 6, 'Dique F. Ameghino');
INSERT INTO `Ciudades` VALUES (453, 6, 'Dolavón');
INSERT INTO `Ciudades` VALUES (454, 6, 'Dr. R. Rojas');
INSERT INTO `Ciudades` VALUES (455, 6, 'El Hoyo');
INSERT INTO `Ciudades` VALUES (456, 6, 'El Maitén');
INSERT INTO `Ciudades` VALUES (457, 6, 'Epuyén');
INSERT INTO `Ciudades` VALUES (458, 6, 'Esquel');
INSERT INTO `Ciudades` VALUES (459, 6, 'Facundo');
INSERT INTO `Ciudades` VALUES (460, 6, 'Gaimán');
INSERT INTO `Ciudades` VALUES (461, 6, 'Gan Gan');
INSERT INTO `Ciudades` VALUES (462, 6, 'Gastre');
INSERT INTO `Ciudades` VALUES (463, 6, 'Gdor. Costa');
INSERT INTO `Ciudades` VALUES (464, 6, 'Gualjaina');
INSERT INTO `Ciudades` VALUES (465, 6, 'J. de San Martín');
INSERT INTO `Ciudades` VALUES (466, 6, 'Lago Blanco');
INSERT INTO `Ciudades` VALUES (467, 6, 'Lago Puelo');
INSERT INTO `Ciudades` VALUES (468, 6, 'Lagunita Salada');
INSERT INTO `Ciudades` VALUES (469, 6, 'Las Plumas');
INSERT INTO `Ciudades` VALUES (470, 6, 'Los Altares');
INSERT INTO `Ciudades` VALUES (471, 6, 'Paso de los Indios');
INSERT INTO `Ciudades` VALUES (472, 6, 'Paso del Sapo');
INSERT INTO `Ciudades` VALUES (473, 6, 'Pto. Madryn');
INSERT INTO `Ciudades` VALUES (474, 6, 'Pto. Pirámides');
INSERT INTO `Ciudades` VALUES (475, 6, 'Rada Tilly');
INSERT INTO `Ciudades` VALUES (476, 6, 'Rawson');
INSERT INTO `Ciudades` VALUES (477, 6, 'Río Mayo');
INSERT INTO `Ciudades` VALUES (478, 6, 'Río Pico');
INSERT INTO `Ciudades` VALUES (479, 6, 'Sarmiento');
INSERT INTO `Ciudades` VALUES (480, 6, 'Tecka');
INSERT INTO `Ciudades` VALUES (481, 6, 'Telsen');
INSERT INTO `Ciudades` VALUES (482, 6, 'Trelew');
INSERT INTO `Ciudades` VALUES (483, 6, 'Trevelin');
INSERT INTO `Ciudades` VALUES (484, 6, 'Veintiocho de Julio');
INSERT INTO `Ciudades` VALUES (485, 7, 'Achiras');
INSERT INTO `Ciudades` VALUES (486, 7, 'Adelia Maria');
INSERT INTO `Ciudades` VALUES (487, 7, 'Agua de Oro');
INSERT INTO `Ciudades` VALUES (488, 7, 'Alcira Gigena');
INSERT INTO `Ciudades` VALUES (489, 7, 'Aldea Santa Maria');
INSERT INTO `Ciudades` VALUES (490, 7, 'Alejandro Roca');
INSERT INTO `Ciudades` VALUES (491, 7, 'Alejo Ledesma');
INSERT INTO `Ciudades` VALUES (492, 7, 'Alicia');
INSERT INTO `Ciudades` VALUES (493, 7, 'Almafuerte');
INSERT INTO `Ciudades` VALUES (494, 7, 'Alpa Corral');
INSERT INTO `Ciudades` VALUES (495, 7, 'Alta Gracia');
INSERT INTO `Ciudades` VALUES (496, 7, 'Alto Alegre');
INSERT INTO `Ciudades` VALUES (497, 7, 'Alto de Los Quebrachos');
INSERT INTO `Ciudades` VALUES (498, 7, 'Altos de Chipion');
INSERT INTO `Ciudades` VALUES (499, 7, 'Amboy');
INSERT INTO `Ciudades` VALUES (500, 7, 'Ambul');
INSERT INTO `Ciudades` VALUES (501, 7, 'Ana Zumaran');
INSERT INTO `Ciudades` VALUES (502, 7, 'Anisacate');
INSERT INTO `Ciudades` VALUES (503, 7, 'Arguello');
INSERT INTO `Ciudades` VALUES (504, 7, 'Arias');
INSERT INTO `Ciudades` VALUES (505, 7, 'Arroyito');
INSERT INTO `Ciudades` VALUES (506, 7, 'Arroyo Algodon');
INSERT INTO `Ciudades` VALUES (507, 7, 'Arroyo Cabral');
INSERT INTO `Ciudades` VALUES (508, 7, 'Arroyo Los Patos');
INSERT INTO `Ciudades` VALUES (509, 7, 'Assunta');
INSERT INTO `Ciudades` VALUES (510, 7, 'Atahona');
INSERT INTO `Ciudades` VALUES (511, 7, 'Ausonia');
INSERT INTO `Ciudades` VALUES (512, 7, 'Avellaneda');
INSERT INTO `Ciudades` VALUES (513, 7, 'Ballesteros');
INSERT INTO `Ciudades` VALUES (514, 7, 'Ballesteros Sud');
INSERT INTO `Ciudades` VALUES (515, 7, 'Balnearia');
INSERT INTO `Ciudades` VALUES (516, 7, 'Bañado de Soto');
INSERT INTO `Ciudades` VALUES (517, 7, 'Bell Ville');
INSERT INTO `Ciudades` VALUES (518, 7, 'Bengolea');
INSERT INTO `Ciudades` VALUES (519, 7, 'Benjamin Gould');
INSERT INTO `Ciudades` VALUES (520, 7, 'Berrotaran');
INSERT INTO `Ciudades` VALUES (521, 7, 'Bialet Masse');
INSERT INTO `Ciudades` VALUES (522, 7, 'Bouwer');
INSERT INTO `Ciudades` VALUES (523, 7, 'Brinkmann');
INSERT INTO `Ciudades` VALUES (524, 7, 'Buchardo');
INSERT INTO `Ciudades` VALUES (525, 7, 'Bulnes');
INSERT INTO `Ciudades` VALUES (526, 7, 'Cabalango');
INSERT INTO `Ciudades` VALUES (527, 7, 'Calamuchita');
INSERT INTO `Ciudades` VALUES (528, 7, 'Calchin');
INSERT INTO `Ciudades` VALUES (529, 7, 'Calchin Oeste');
INSERT INTO `Ciudades` VALUES (530, 7, 'Calmayo');
INSERT INTO `Ciudades` VALUES (531, 7, 'Camilo Aldao');
INSERT INTO `Ciudades` VALUES (532, 7, 'Caminiaga');
INSERT INTO `Ciudades` VALUES (533, 7, 'Cañada de Luque');
INSERT INTO `Ciudades` VALUES (534, 7, 'Cañada de Machado');
INSERT INTO `Ciudades` VALUES (535, 7, 'Cañada de Rio Pinto');
INSERT INTO `Ciudades` VALUES (536, 7, 'Cañada del Sauce');
INSERT INTO `Ciudades` VALUES (537, 7, 'Canals');
INSERT INTO `Ciudades` VALUES (538, 7, 'Candelaria Sud');
INSERT INTO `Ciudades` VALUES (539, 7, 'Capilla de Remedios');
INSERT INTO `Ciudades` VALUES (540, 7, 'Capilla de Siton');
INSERT INTO `Ciudades` VALUES (541, 7, 'Capilla del Carmen');
INSERT INTO `Ciudades` VALUES (542, 7, 'Capilla del Monte');
INSERT INTO `Ciudades` VALUES (543, 7, 'Capital');
INSERT INTO `Ciudades` VALUES (544, 7, 'Capitan Gral B. O´Higgins');
INSERT INTO `Ciudades` VALUES (545, 7, 'Carnerillo');
INSERT INTO `Ciudades` VALUES (546, 7, 'Carrilobo');
INSERT INTO `Ciudades` VALUES (547, 7, 'Casa Grande');
INSERT INTO `Ciudades` VALUES (548, 7, 'Cavanagh');
INSERT INTO `Ciudades` VALUES (549, 7, 'Cerro Colorado');
INSERT INTO `Ciudades` VALUES (550, 7, 'Chaján');
INSERT INTO `Ciudades` VALUES (551, 7, 'Chalacea');
INSERT INTO `Ciudades` VALUES (552, 7, 'Chañar Viejo');
INSERT INTO `Ciudades` VALUES (553, 7, 'Chancaní');
INSERT INTO `Ciudades` VALUES (554, 7, 'Charbonier');
INSERT INTO `Ciudades` VALUES (555, 7, 'Charras');
INSERT INTO `Ciudades` VALUES (556, 7, 'Chazón');
INSERT INTO `Ciudades` VALUES (557, 7, 'Chilibroste');
INSERT INTO `Ciudades` VALUES (558, 7, 'Chucul');
INSERT INTO `Ciudades` VALUES (559, 7, 'Chuña');
INSERT INTO `Ciudades` VALUES (560, 7, 'Chuña Huasi');
INSERT INTO `Ciudades` VALUES (561, 7, 'Churqui Cañada');
INSERT INTO `Ciudades` VALUES (562, 7, 'Cienaga Del Coro');
INSERT INTO `Ciudades` VALUES (563, 7, 'Cintra');
INSERT INTO `Ciudades` VALUES (564, 7, 'Col. Almada');
INSERT INTO `Ciudades` VALUES (565, 7, 'Col. Anita');
INSERT INTO `Ciudades` VALUES (566, 7, 'Col. Barge');
INSERT INTO `Ciudades` VALUES (567, 7, 'Col. Bismark');
INSERT INTO `Ciudades` VALUES (568, 7, 'Col. Bremen');
INSERT INTO `Ciudades` VALUES (569, 7, 'Col. Caroya');
INSERT INTO `Ciudades` VALUES (570, 7, 'Col. Italiana');
INSERT INTO `Ciudades` VALUES (571, 7, 'Col. Iturraspe');
INSERT INTO `Ciudades` VALUES (572, 7, 'Col. Las Cuatro Esquinas');
INSERT INTO `Ciudades` VALUES (573, 7, 'Col. Las Pichanas');
INSERT INTO `Ciudades` VALUES (574, 7, 'Col. Marina');
INSERT INTO `Ciudades` VALUES (575, 7, 'Col. Prosperidad');
INSERT INTO `Ciudades` VALUES (576, 7, 'Col. San Bartolome');
INSERT INTO `Ciudades` VALUES (577, 7, 'Col. San Pedro');
INSERT INTO `Ciudades` VALUES (578, 7, 'Col. Tirolesa');
INSERT INTO `Ciudades` VALUES (579, 7, 'Col. Vicente Aguero');
INSERT INTO `Ciudades` VALUES (580, 7, 'Col. Videla');
INSERT INTO `Ciudades` VALUES (581, 7, 'Col. Vignaud');
INSERT INTO `Ciudades` VALUES (582, 7, 'Col. Waltelina');
INSERT INTO `Ciudades` VALUES (583, 7, 'Colazo');
INSERT INTO `Ciudades` VALUES (584, 7, 'Comechingones');
INSERT INTO `Ciudades` VALUES (585, 7, 'Conlara');
INSERT INTO `Ciudades` VALUES (586, 7, 'Copacabana');
INSERT INTO `Ciudades` VALUES (587, 7, 'Córdoba');
INSERT INTO `Ciudades` VALUES (588, 7, 'Coronel Baigorria');
INSERT INTO `Ciudades` VALUES (589, 7, 'Coronel Moldes');
INSERT INTO `Ciudades` VALUES (590, 7, 'Corral de Bustos');
INSERT INTO `Ciudades` VALUES (591, 7, 'Corralito');
INSERT INTO `Ciudades` VALUES (592, 7, 'Cosquín');
INSERT INTO `Ciudades` VALUES (593, 7, 'Costa Sacate');
INSERT INTO `Ciudades` VALUES (594, 7, 'Cruz Alta');
INSERT INTO `Ciudades` VALUES (595, 7, 'Cruz de Caña');
INSERT INTO `Ciudades` VALUES (596, 7, 'Cruz del Eje');
INSERT INTO `Ciudades` VALUES (597, 7, 'Cuesta Blanca');
INSERT INTO `Ciudades` VALUES (598, 7, 'Dean Funes');
INSERT INTO `Ciudades` VALUES (599, 7, 'Del Campillo');
INSERT INTO `Ciudades` VALUES (600, 7, 'Despeñaderos');
INSERT INTO `Ciudades` VALUES (601, 7, 'Devoto');
INSERT INTO `Ciudades` VALUES (602, 7, 'Diego de Rojas');
INSERT INTO `Ciudades` VALUES (603, 7, 'Dique Chico');
INSERT INTO `Ciudades` VALUES (604, 7, 'El Arañado');
INSERT INTO `Ciudades` VALUES (605, 7, 'El Brete');
INSERT INTO `Ciudades` VALUES (606, 7, 'El Chacho');
INSERT INTO `Ciudades` VALUES (607, 7, 'El Crispín');
INSERT INTO `Ciudades` VALUES (608, 7, 'El Fortín');
INSERT INTO `Ciudades` VALUES (609, 7, 'El Manzano');
INSERT INTO `Ciudades` VALUES (610, 7, 'El Rastreador');
INSERT INTO `Ciudades` VALUES (611, 7, 'El Rodeo');
INSERT INTO `Ciudades` VALUES (612, 7, 'El Tío');
INSERT INTO `Ciudades` VALUES (613, 7, 'Elena');
INSERT INTO `Ciudades` VALUES (614, 7, 'Embalse');
INSERT INTO `Ciudades` VALUES (615, 7, 'Esquina');
INSERT INTO `Ciudades` VALUES (616, 7, 'Estación Gral. Paz');
INSERT INTO `Ciudades` VALUES (617, 7, 'Estación Juárez Celman');
INSERT INTO `Ciudades` VALUES (618, 7, 'Estancia de Guadalupe');
INSERT INTO `Ciudades` VALUES (619, 7, 'Estancia Vieja');
INSERT INTO `Ciudades` VALUES (620, 7, 'Etruria');
INSERT INTO `Ciudades` VALUES (621, 7, 'Eufrasio Loza');
INSERT INTO `Ciudades` VALUES (622, 7, 'Falda del Carmen');
INSERT INTO `Ciudades` VALUES (623, 7, 'Freyre');
INSERT INTO `Ciudades` VALUES (624, 7, 'Gral. Baldissera');
INSERT INTO `Ciudades` VALUES (625, 7, 'Gral. Cabrera');
INSERT INTO `Ciudades` VALUES (626, 7, 'Gral. Deheza');
INSERT INTO `Ciudades` VALUES (627, 7, 'Gral. Fotheringham');
INSERT INTO `Ciudades` VALUES (628, 7, 'Gral. Levalle');
INSERT INTO `Ciudades` VALUES (629, 7, 'Gral. Roca');
INSERT INTO `Ciudades` VALUES (630, 7, 'Guanaco Muerto');
INSERT INTO `Ciudades` VALUES (631, 7, 'Guasapampa');
INSERT INTO `Ciudades` VALUES (632, 7, 'Guatimozin');
INSERT INTO `Ciudades` VALUES (633, 7, 'Gutenberg');
INSERT INTO `Ciudades` VALUES (634, 7, 'Hernando');
INSERT INTO `Ciudades` VALUES (635, 7, 'Huanchillas');
INSERT INTO `Ciudades` VALUES (636, 7, 'Huerta Grande');
INSERT INTO `Ciudades` VALUES (637, 7, 'Huinca Renanco');
INSERT INTO `Ciudades` VALUES (638, 7, 'Idiazabal');
INSERT INTO `Ciudades` VALUES (639, 7, 'Impira');
INSERT INTO `Ciudades` VALUES (640, 7, 'Inriville');
INSERT INTO `Ciudades` VALUES (641, 7, 'Isla Verde');
INSERT INTO `Ciudades` VALUES (642, 7, 'Italó');
INSERT INTO `Ciudades` VALUES (643, 7, 'James Craik');
INSERT INTO `Ciudades` VALUES (644, 7, 'Jesús María');
INSERT INTO `Ciudades` VALUES (645, 7, 'Jovita');
INSERT INTO `Ciudades` VALUES (646, 7, 'Justiniano Posse');
INSERT INTO `Ciudades` VALUES (647, 7, 'Km 658');
INSERT INTO `Ciudades` VALUES (648, 7, 'L. V. Mansilla');
INSERT INTO `Ciudades` VALUES (649, 7, 'La Batea');
INSERT INTO `Ciudades` VALUES (650, 7, 'La Calera');
INSERT INTO `Ciudades` VALUES (651, 7, 'La Carlota');
INSERT INTO `Ciudades` VALUES (652, 7, 'La Carolina');
INSERT INTO `Ciudades` VALUES (653, 7, 'La Cautiva');
INSERT INTO `Ciudades` VALUES (654, 7, 'La Cesira');
INSERT INTO `Ciudades` VALUES (655, 7, 'La Cruz');
INSERT INTO `Ciudades` VALUES (656, 7, 'La Cumbre');
INSERT INTO `Ciudades` VALUES (657, 7, 'La Cumbrecita');
INSERT INTO `Ciudades` VALUES (658, 7, 'La Falda');
INSERT INTO `Ciudades` VALUES (659, 7, 'La Francia');
INSERT INTO `Ciudades` VALUES (660, 7, 'La Granja');
INSERT INTO `Ciudades` VALUES (661, 7, 'La Higuera');
INSERT INTO `Ciudades` VALUES (662, 7, 'La Laguna');
INSERT INTO `Ciudades` VALUES (663, 7, 'La Paisanita');
INSERT INTO `Ciudades` VALUES (664, 7, 'La Palestina');
INSERT INTO `Ciudades` VALUES (665, 7, '12');
INSERT INTO `Ciudades` VALUES (666, 7, 'La Paquita');
INSERT INTO `Ciudades` VALUES (667, 7, 'La Para');
INSERT INTO `Ciudades` VALUES (668, 7, 'La Paz');
INSERT INTO `Ciudades` VALUES (669, 7, 'La Playa');
INSERT INTO `Ciudades` VALUES (670, 7, 'La Playosa');
INSERT INTO `Ciudades` VALUES (671, 7, 'La Población');
INSERT INTO `Ciudades` VALUES (672, 7, 'La Posta');
INSERT INTO `Ciudades` VALUES (673, 7, 'La Puerta');
INSERT INTO `Ciudades` VALUES (674, 7, 'La Quinta');
INSERT INTO `Ciudades` VALUES (675, 7, 'La Rancherita');
INSERT INTO `Ciudades` VALUES (676, 7, 'La Rinconada');
INSERT INTO `Ciudades` VALUES (677, 7, 'La Serranita');
INSERT INTO `Ciudades` VALUES (678, 7, 'La Tordilla');
INSERT INTO `Ciudades` VALUES (679, 7, 'Laborde');
INSERT INTO `Ciudades` VALUES (680, 7, 'Laboulaye');
INSERT INTO `Ciudades` VALUES (681, 7, 'Laguna Larga');
INSERT INTO `Ciudades` VALUES (682, 7, 'Las Acequias');
INSERT INTO `Ciudades` VALUES (683, 7, 'Las Albahacas');
INSERT INTO `Ciudades` VALUES (684, 7, 'Las Arrias');
INSERT INTO `Ciudades` VALUES (685, 7, 'Las Bajadas');
INSERT INTO `Ciudades` VALUES (686, 7, 'Las Caleras');
INSERT INTO `Ciudades` VALUES (687, 7, 'Las Calles');
INSERT INTO `Ciudades` VALUES (688, 7, 'Las Cañadas');
INSERT INTO `Ciudades` VALUES (689, 7, 'Las Gramillas');
INSERT INTO `Ciudades` VALUES (690, 7, 'Las Higueras');
INSERT INTO `Ciudades` VALUES (691, 7, 'Las Isletillas');
INSERT INTO `Ciudades` VALUES (692, 7, 'Las Junturas');
INSERT INTO `Ciudades` VALUES (693, 7, 'Las Palmas');
INSERT INTO `Ciudades` VALUES (694, 7, 'Las Peñas');
INSERT INTO `Ciudades` VALUES (695, 7, 'Las Peñas Sud');
INSERT INTO `Ciudades` VALUES (696, 7, 'Las Perdices');
INSERT INTO `Ciudades` VALUES (697, 7, 'Las Playas');
INSERT INTO `Ciudades` VALUES (698, 7, 'Las Rabonas');
INSERT INTO `Ciudades` VALUES (699, 7, 'Las Saladas');
INSERT INTO `Ciudades` VALUES (700, 7, 'Las Tapias');
INSERT INTO `Ciudades` VALUES (701, 7, 'Las Varas');
INSERT INTO `Ciudades` VALUES (702, 7, 'Las Varillas');
INSERT INTO `Ciudades` VALUES (703, 7, 'Las Vertientes');
INSERT INTO `Ciudades` VALUES (704, 7, 'Leguizamón');
INSERT INTO `Ciudades` VALUES (705, 7, 'Leones');
INSERT INTO `Ciudades` VALUES (706, 7, 'Los Cedros');
INSERT INTO `Ciudades` VALUES (707, 7, 'Los Cerrillos');
INSERT INTO `Ciudades` VALUES (708, 7, 'Los Chañaritos (C.E)');
INSERT INTO `Ciudades` VALUES (709, 7, 'Los Chanaritos (R.S)');
INSERT INTO `Ciudades` VALUES (710, 7, 'Los Cisnes');
INSERT INTO `Ciudades` VALUES (711, 7, 'Los Cocos');
INSERT INTO `Ciudades` VALUES (712, 7, 'Los Cóndores');
INSERT INTO `Ciudades` VALUES (713, 7, 'Los Hornillos');
INSERT INTO `Ciudades` VALUES (714, 7, 'Los Hoyos');
INSERT INTO `Ciudades` VALUES (715, 7, 'Los Mistoles');
INSERT INTO `Ciudades` VALUES (716, 7, 'Los Molinos');
INSERT INTO `Ciudades` VALUES (717, 7, 'Los Pozos');
INSERT INTO `Ciudades` VALUES (718, 7, 'Los Reartes');
INSERT INTO `Ciudades` VALUES (719, 7, 'Los Surgentes');
INSERT INTO `Ciudades` VALUES (720, 7, 'Los Talares');
INSERT INTO `Ciudades` VALUES (721, 7, 'Los Zorros');
INSERT INTO `Ciudades` VALUES (722, 7, 'Lozada');
INSERT INTO `Ciudades` VALUES (723, 7, 'Luca');
INSERT INTO `Ciudades` VALUES (724, 7, 'Luque');
INSERT INTO `Ciudades` VALUES (725, 7, 'Luyaba');
INSERT INTO `Ciudades` VALUES (726, 7, 'Malagueño');
INSERT INTO `Ciudades` VALUES (727, 7, 'Malena');
INSERT INTO `Ciudades` VALUES (728, 7, 'Malvinas Argentinas');
INSERT INTO `Ciudades` VALUES (729, 7, 'Manfredi');
INSERT INTO `Ciudades` VALUES (730, 7, 'Maquinista Gallini');
INSERT INTO `Ciudades` VALUES (731, 7, 'Marcos Juárez');
INSERT INTO `Ciudades` VALUES (732, 7, 'Marull');
INSERT INTO `Ciudades` VALUES (733, 7, 'Matorrales');
INSERT INTO `Ciudades` VALUES (734, 7, 'Mattaldi');
INSERT INTO `Ciudades` VALUES (735, 7, 'Mayu Sumaj');
INSERT INTO `Ciudades` VALUES (736, 7, 'Media Naranja');
INSERT INTO `Ciudades` VALUES (737, 7, 'Melo');
INSERT INTO `Ciudades` VALUES (738, 7, 'Mendiolaza');
INSERT INTO `Ciudades` VALUES (739, 7, 'Mi Granja');
INSERT INTO `Ciudades` VALUES (740, 7, 'Mina Clavero');
INSERT INTO `Ciudades` VALUES (741, 7, 'Miramar');
INSERT INTO `Ciudades` VALUES (742, 7, 'Morrison');
INSERT INTO `Ciudades` VALUES (743, 7, 'Morteros');
INSERT INTO `Ciudades` VALUES (744, 7, 'Mte. Buey');
INSERT INTO `Ciudades` VALUES (745, 7, 'Mte. Cristo');
INSERT INTO `Ciudades` VALUES (746, 7, 'Mte. De Los Gauchos');
INSERT INTO `Ciudades` VALUES (747, 7, 'Mte. Leña');
INSERT INTO `Ciudades` VALUES (748, 7, 'Mte. Maíz');
INSERT INTO `Ciudades` VALUES (749, 7, 'Mte. Ralo');
INSERT INTO `Ciudades` VALUES (750, 7, 'Nicolás Bruzone');
INSERT INTO `Ciudades` VALUES (751, 7, 'Noetinger');
INSERT INTO `Ciudades` VALUES (752, 7, 'Nono');
INSERT INTO `Ciudades` VALUES (753, 7, 'Nueva Córdoba');
INSERT INTO `Ciudades` VALUES (754, 7, 'Obispo Trejo');
INSERT INTO `Ciudades` VALUES (755, 7, 'Olaeta');
INSERT INTO `Ciudades` VALUES (756, 7, 'Oliva');
INSERT INTO `Ciudades` VALUES (757, 7, 'Olivares San Nicolás');
INSERT INTO `Ciudades` VALUES (758, 7, 'Onagolty');
INSERT INTO `Ciudades` VALUES (759, 7, 'Oncativo');
INSERT INTO `Ciudades` VALUES (760, 7, 'Ordoñez');
INSERT INTO `Ciudades` VALUES (761, 7, 'Pacheco De Melo');
INSERT INTO `Ciudades` VALUES (762, 7, 'Pampayasta N.');
INSERT INTO `Ciudades` VALUES (763, 7, 'Pampayasta S.');
INSERT INTO `Ciudades` VALUES (764, 7, 'Panaholma');
INSERT INTO `Ciudades` VALUES (765, 7, 'Pascanas');
INSERT INTO `Ciudades` VALUES (766, 7, 'Pasco');
INSERT INTO `Ciudades` VALUES (767, 7, 'Paso del Durazno');
INSERT INTO `Ciudades` VALUES (768, 7, 'Paso Viejo');
INSERT INTO `Ciudades` VALUES (769, 7, 'Pilar');
INSERT INTO `Ciudades` VALUES (770, 7, 'Pincén');
INSERT INTO `Ciudades` VALUES (771, 7, 'Piquillín');
INSERT INTO `Ciudades` VALUES (772, 7, 'Plaza de Mercedes');
INSERT INTO `Ciudades` VALUES (773, 7, 'Plaza Luxardo');
INSERT INTO `Ciudades` VALUES (774, 7, 'Porteña');
INSERT INTO `Ciudades` VALUES (775, 7, 'Potrero de Garay');
INSERT INTO `Ciudades` VALUES (776, 7, 'Pozo del Molle');
INSERT INTO `Ciudades` VALUES (777, 7, 'Pozo Nuevo');
INSERT INTO `Ciudades` VALUES (778, 7, 'Pueblo Italiano');
INSERT INTO `Ciudades` VALUES (779, 7, 'Puesto de Castro');
INSERT INTO `Ciudades` VALUES (780, 7, 'Punta del Agua');
INSERT INTO `Ciudades` VALUES (781, 7, 'Quebracho Herrado');
INSERT INTO `Ciudades` VALUES (782, 7, 'Quilino');
INSERT INTO `Ciudades` VALUES (783, 7, 'Rafael García');
INSERT INTO `Ciudades` VALUES (784, 7, 'Ranqueles');
INSERT INTO `Ciudades` VALUES (785, 7, 'Rayo Cortado');
INSERT INTO `Ciudades` VALUES (786, 7, 'Reducción');
INSERT INTO `Ciudades` VALUES (787, 7, 'Rincón');
INSERT INTO `Ciudades` VALUES (788, 7, 'Río Bamba');
INSERT INTO `Ciudades` VALUES (789, 7, 'Río Ceballos');
INSERT INTO `Ciudades` VALUES (790, 7, 'Río Cuarto');
INSERT INTO `Ciudades` VALUES (791, 7, 'Río de Los Sauces');
INSERT INTO `Ciudades` VALUES (792, 7, 'Río Primero');
INSERT INTO `Ciudades` VALUES (793, 7, 'Río Segundo');
INSERT INTO `Ciudades` VALUES (794, 7, 'Río Tercero');
INSERT INTO `Ciudades` VALUES (795, 7, 'Rosales');
INSERT INTO `Ciudades` VALUES (796, 7, 'Rosario del Saladillo');
INSERT INTO `Ciudades` VALUES (797, 7, 'Sacanta');
INSERT INTO `Ciudades` VALUES (798, 7, 'Sagrada Familia');
INSERT INTO `Ciudades` VALUES (799, 7, 'Saira');
INSERT INTO `Ciudades` VALUES (800, 7, 'Saladillo');
INSERT INTO `Ciudades` VALUES (801, 7, 'Saldán');
INSERT INTO `Ciudades` VALUES (802, 7, 'Salsacate');
INSERT INTO `Ciudades` VALUES (803, 7, 'Salsipuedes');
INSERT INTO `Ciudades` VALUES (804, 7, 'Sampacho');
INSERT INTO `Ciudades` VALUES (805, 7, 'San Agustín');
INSERT INTO `Ciudades` VALUES (806, 7, 'San Antonio de Arredondo');
INSERT INTO `Ciudades` VALUES (807, 7, 'San Antonio de Litín');
INSERT INTO `Ciudades` VALUES (808, 7, 'San Basilio');
INSERT INTO `Ciudades` VALUES (809, 7, 'San Carlos Minas');
INSERT INTO `Ciudades` VALUES (810, 7, 'San Clemente');
INSERT INTO `Ciudades` VALUES (811, 7, 'San Esteban');
INSERT INTO `Ciudades` VALUES (812, 7, 'San Francisco');
INSERT INTO `Ciudades` VALUES (813, 7, 'San Ignacio');
INSERT INTO `Ciudades` VALUES (814, 7, 'San Javier');
INSERT INTO `Ciudades` VALUES (815, 7, 'San Jerónimo');
INSERT INTO `Ciudades` VALUES (816, 7, 'San Joaquín');
INSERT INTO `Ciudades` VALUES (817, 7, 'San José de La Dormida');
INSERT INTO `Ciudades` VALUES (818, 7, 'San José de Las Salinas');
INSERT INTO `Ciudades` VALUES (819, 7, 'San Lorenzo');
INSERT INTO `Ciudades` VALUES (820, 7, 'San Marcos Sierras');
INSERT INTO `Ciudades` VALUES (821, 7, 'San Marcos Sud');
INSERT INTO `Ciudades` VALUES (822, 7, 'San Pedro');
INSERT INTO `Ciudades` VALUES (823, 7, 'San Pedro N.');
INSERT INTO `Ciudades` VALUES (824, 7, 'San Roque');
INSERT INTO `Ciudades` VALUES (825, 7, 'San Vicente');
INSERT INTO `Ciudades` VALUES (826, 7, 'Santa Catalina');
INSERT INTO `Ciudades` VALUES (827, 7, 'Santa Elena');
INSERT INTO `Ciudades` VALUES (828, 7, 'Santa Eufemia');
INSERT INTO `Ciudades` VALUES (829, 7, 'Santa Maria');
INSERT INTO `Ciudades` VALUES (830, 7, 'Sarmiento');
INSERT INTO `Ciudades` VALUES (831, 7, 'Saturnino M.Laspiur');
INSERT INTO `Ciudades` VALUES (832, 7, 'Sauce Arriba');
INSERT INTO `Ciudades` VALUES (833, 7, 'Sebastián Elcano');
INSERT INTO `Ciudades` VALUES (834, 7, 'Seeber');
INSERT INTO `Ciudades` VALUES (835, 7, 'Segunda Usina');
INSERT INTO `Ciudades` VALUES (836, 7, 'Serrano');
INSERT INTO `Ciudades` VALUES (837, 7, 'Serrezuela');
INSERT INTO `Ciudades` VALUES (838, 7, 'Sgo. Temple');
INSERT INTO `Ciudades` VALUES (839, 7, 'Silvio Pellico');
INSERT INTO `Ciudades` VALUES (840, 7, 'Simbolar');
INSERT INTO `Ciudades` VALUES (841, 7, 'Sinsacate');
INSERT INTO `Ciudades` VALUES (842, 7, 'Sta. Rosa de Calamuchita');
INSERT INTO `Ciudades` VALUES (843, 7, 'Sta. Rosa de Río Primero');
INSERT INTO `Ciudades` VALUES (844, 7, 'Suco');
INSERT INTO `Ciudades` VALUES (845, 7, 'Tala Cañada');
INSERT INTO `Ciudades` VALUES (846, 7, 'Tala Huasi');
INSERT INTO `Ciudades` VALUES (847, 7, 'Talaini');
INSERT INTO `Ciudades` VALUES (848, 7, 'Tancacha');
INSERT INTO `Ciudades` VALUES (849, 7, 'Tanti');
INSERT INTO `Ciudades` VALUES (850, 7, 'Ticino');
INSERT INTO `Ciudades` VALUES (851, 7, 'Tinoco');
INSERT INTO `Ciudades` VALUES (852, 7, 'Tío Pujio');
INSERT INTO `Ciudades` VALUES (853, 7, 'Toledo');
INSERT INTO `Ciudades` VALUES (854, 7, 'Toro Pujio');
INSERT INTO `Ciudades` VALUES (855, 7, 'Tosno');
INSERT INTO `Ciudades` VALUES (856, 7, 'Tosquita');
INSERT INTO `Ciudades` VALUES (857, 7, 'Tránsito');
INSERT INTO `Ciudades` VALUES (858, 7, 'Tuclame');
INSERT INTO `Ciudades` VALUES (859, 7, 'Tutti');
INSERT INTO `Ciudades` VALUES (860, 7, 'Ucacha');
INSERT INTO `Ciudades` VALUES (861, 7, 'Unquillo');
INSERT INTO `Ciudades` VALUES (862, 7, 'Valle de Anisacate');
INSERT INTO `Ciudades` VALUES (863, 7, 'Valle Hermoso');
INSERT INTO `Ciudades` VALUES (864, 7, 'Vélez Sarfield');
INSERT INTO `Ciudades` VALUES (865, 7, 'Viamonte');
INSERT INTO `Ciudades` VALUES (866, 7, 'Vicuña Mackenna');
INSERT INTO `Ciudades` VALUES (867, 7, 'Villa Allende');
INSERT INTO `Ciudades` VALUES (868, 7, 'Villa Amancay');
INSERT INTO `Ciudades` VALUES (869, 7, 'Villa Ascasubi');
INSERT INTO `Ciudades` VALUES (870, 7, 'Villa Candelaria N.');
INSERT INTO `Ciudades` VALUES (871, 7, 'Villa Carlos Paz');
INSERT INTO `Ciudades` VALUES (872, 7, 'Villa Cerro Azul');
INSERT INTO `Ciudades` VALUES (873, 7, 'Villa Ciudad de América');
INSERT INTO `Ciudades` VALUES (874, 7, 'Villa Ciudad Pque Los Reartes');
INSERT INTO `Ciudades` VALUES (875, 7, 'Villa Concepción del Tío');
INSERT INTO `Ciudades` VALUES (876, 7, 'Villa Cura Brochero');
INSERT INTO `Ciudades` VALUES (877, 7, 'Villa de Las Rosas');
INSERT INTO `Ciudades` VALUES (878, 7, 'Villa de María');
INSERT INTO `Ciudades` VALUES (879, 7, 'Villa de Pocho');
INSERT INTO `Ciudades` VALUES (880, 7, 'Villa de Soto');
INSERT INTO `Ciudades` VALUES (881, 7, 'Villa del Dique');
INSERT INTO `Ciudades` VALUES (882, 7, 'Villa del Prado');
INSERT INTO `Ciudades` VALUES (883, 7, 'Villa del Rosario');
INSERT INTO `Ciudades` VALUES (884, 7, 'Villa del Totoral');
INSERT INTO `Ciudades` VALUES (885, 7, 'Villa Dolores');
INSERT INTO `Ciudades` VALUES (886, 7, 'Villa El Chancay');
INSERT INTO `Ciudades` VALUES (887, 7, 'Villa Elisa');
INSERT INTO `Ciudades` VALUES (888, 7, 'Villa Flor Serrana');
INSERT INTO `Ciudades` VALUES (889, 7, 'Villa Fontana');
INSERT INTO `Ciudades` VALUES (890, 7, 'Villa Giardino');
INSERT INTO `Ciudades` VALUES (891, 7, 'Villa Gral. Belgrano');
INSERT INTO `Ciudades` VALUES (892, 7, 'Villa Gutierrez');
INSERT INTO `Ciudades` VALUES (893, 7, 'Villa Huidobro');
INSERT INTO `Ciudades` VALUES (894, 7, 'Villa La Bolsa');
INSERT INTO `Ciudades` VALUES (895, 7, 'Villa Los Aromos');
INSERT INTO `Ciudades` VALUES (896, 7, 'Villa Los Patos');
INSERT INTO `Ciudades` VALUES (897, 7, 'Villa María');
INSERT INTO `Ciudades` VALUES (898, 7, 'Villa Nueva');
INSERT INTO `Ciudades` VALUES (899, 7, 'Villa Pque. Santa Ana');
INSERT INTO `Ciudades` VALUES (900, 7, 'Villa Pque. Siquiman');
INSERT INTO `Ciudades` VALUES (901, 7, 'Villa Quillinzo');
INSERT INTO `Ciudades` VALUES (902, 7, 'Villa Rossi');
INSERT INTO `Ciudades` VALUES (903, 7, 'Villa Rumipal');
INSERT INTO `Ciudades` VALUES (904, 7, 'Villa San Esteban');
INSERT INTO `Ciudades` VALUES (905, 7, 'Villa San Isidro');
INSERT INTO `Ciudades` VALUES (906, 7, 'Villa 21');
INSERT INTO `Ciudades` VALUES (907, 7, 'Villa Sarmiento (G.R)');
INSERT INTO `Ciudades` VALUES (908, 7, 'Villa Sarmiento (S.A)');
INSERT INTO `Ciudades` VALUES (909, 7, 'Villa Tulumba');
INSERT INTO `Ciudades` VALUES (910, 7, 'Villa Valeria');
INSERT INTO `Ciudades` VALUES (911, 7, 'Villa Yacanto');
INSERT INTO `Ciudades` VALUES (912, 7, 'Washington');
INSERT INTO `Ciudades` VALUES (913, 7, 'Wenceslao Escalante');
INSERT INTO `Ciudades` VALUES (914, 7, 'Ycho Cruz Sierras');
INSERT INTO `Ciudades` VALUES (915, 8, 'Alvear');
INSERT INTO `Ciudades` VALUES (916, 8, 'Bella Vista');
INSERT INTO `Ciudades` VALUES (917, 8, 'Berón de Astrada');
INSERT INTO `Ciudades` VALUES (918, 8, 'Bonpland');
INSERT INTO `Ciudades` VALUES (919, 8, 'Caá Cati');
INSERT INTO `Ciudades` VALUES (920, 8, 'Capital');
INSERT INTO `Ciudades` VALUES (921, 8, 'Chavarría');
INSERT INTO `Ciudades` VALUES (922, 8, 'Col. C. Pellegrini');
INSERT INTO `Ciudades` VALUES (923, 8, 'Col. Libertad');
INSERT INTO `Ciudades` VALUES (924, 8, 'Col. Liebig');
INSERT INTO `Ciudades` VALUES (925, 8, 'Col. Sta Rosa');
INSERT INTO `Ciudades` VALUES (926, 8, 'Concepción');
INSERT INTO `Ciudades` VALUES (927, 8, 'Cruz de Los Milagros');
INSERT INTO `Ciudades` VALUES (928, 8, 'Curuzú-Cuatiá');
INSERT INTO `Ciudades` VALUES (929, 8, 'Empedrado');
INSERT INTO `Ciudades` VALUES (930, 8, 'Esquina');
INSERT INTO `Ciudades` VALUES (931, 8, 'Estación Torrent');
INSERT INTO `Ciudades` VALUES (932, 8, 'Felipe Yofré');
INSERT INTO `Ciudades` VALUES (933, 8, 'Garruchos');
INSERT INTO `Ciudades` VALUES (934, 8, 'Gdor. Agrónomo');
INSERT INTO `Ciudades` VALUES (935, 8, 'Gdor. Martínez');
INSERT INTO `Ciudades` VALUES (936, 8, 'Goya');
INSERT INTO `Ciudades` VALUES (937, 8, 'Guaviravi');
INSERT INTO `Ciudades` VALUES (938, 8, 'Herlitzka');
INSERT INTO `Ciudades` VALUES (939, 8, 'Ita-Ibate');
INSERT INTO `Ciudades` VALUES (940, 8, 'Itatí');
INSERT INTO `Ciudades` VALUES (941, 8, 'Ituzaingó');
INSERT INTO `Ciudades` VALUES (942, 8, 'José Rafael Gómez');
INSERT INTO `Ciudades` VALUES (943, 8, 'Juan Pujol');
INSERT INTO `Ciudades` VALUES (944, 8, 'La Cruz');
INSERT INTO `Ciudades` VALUES (945, 8, 'Lavalle');
INSERT INTO `Ciudades` VALUES (946, 8, 'Lomas de Vallejos');
INSERT INTO `Ciudades` VALUES (947, 8, 'Loreto');
INSERT INTO `Ciudades` VALUES (948, 8, 'Mariano I. Loza');
INSERT INTO `Ciudades` VALUES (949, 8, 'Mburucuyá');
INSERT INTO `Ciudades` VALUES (950, 8, 'Mercedes');
INSERT INTO `Ciudades` VALUES (951, 8, 'Mocoretá');
INSERT INTO `Ciudades` VALUES (952, 8, 'Mte. Caseros');
INSERT INTO `Ciudades` VALUES (953, 8, 'Nueve de Julio');
INSERT INTO `Ciudades` VALUES (954, 8, 'Palmar Grande');
INSERT INTO `Ciudades` VALUES (955, 8, 'Parada Pucheta');
INSERT INTO `Ciudades` VALUES (956, 8, 'Paso de La Patria');
INSERT INTO `Ciudades` VALUES (957, 8, 'Paso de Los Libres');
INSERT INTO `Ciudades` VALUES (958, 8, 'Pedro R. Fernandez');
INSERT INTO `Ciudades` VALUES (959, 8, 'Perugorría');
INSERT INTO `Ciudades` VALUES (960, 8, 'Pueblo Libertador');
INSERT INTO `Ciudades` VALUES (961, 8, 'Ramada Paso');
INSERT INTO `Ciudades` VALUES (962, 8, 'Riachuelo');
INSERT INTO `Ciudades` VALUES (963, 8, 'Saladas');
INSERT INTO `Ciudades` VALUES (964, 8, 'San Antonio');
INSERT INTO `Ciudades` VALUES (965, 8, 'San Carlos');
INSERT INTO `Ciudades` VALUES (966, 8, 'San Cosme');
INSERT INTO `Ciudades` VALUES (967, 8, 'San Lorenzo');
INSERT INTO `Ciudades` VALUES (968, 8, '20 del Palmar');
INSERT INTO `Ciudades` VALUES (969, 8, 'San Miguel');
INSERT INTO `Ciudades` VALUES (970, 8, 'San Roque');
INSERT INTO `Ciudades` VALUES (971, 8, 'Santa Ana');
INSERT INTO `Ciudades` VALUES (972, 8, 'Santa Lucía');
INSERT INTO `Ciudades` VALUES (973, 8, 'Santo Tomé');
INSERT INTO `Ciudades` VALUES (974, 8, 'Sauce');
INSERT INTO `Ciudades` VALUES (975, 8, 'Tabay');
INSERT INTO `Ciudades` VALUES (976, 8, 'Tapebicuá');
INSERT INTO `Ciudades` VALUES (977, 8, 'Tatacua');
INSERT INTO `Ciudades` VALUES (978, 8, 'Virasoro');
INSERT INTO `Ciudades` VALUES (979, 8, 'Yapeyú');
INSERT INTO `Ciudades` VALUES (980, 8, 'Yataití Calle');
INSERT INTO `Ciudades` VALUES (981, 9, 'Alarcón');
INSERT INTO `Ciudades` VALUES (982, 9, 'Alcaraz');
INSERT INTO `Ciudades` VALUES (983, 9, 'Alcaraz N.');
INSERT INTO `Ciudades` VALUES (984, 9, 'Alcaraz S.');
INSERT INTO `Ciudades` VALUES (985, 9, 'Aldea Asunción');
INSERT INTO `Ciudades` VALUES (986, 9, 'Aldea Brasilera');
INSERT INTO `Ciudades` VALUES (987, 9, 'Aldea Elgenfeld');
INSERT INTO `Ciudades` VALUES (988, 9, 'Aldea Grapschental');
INSERT INTO `Ciudades` VALUES (989, 9, 'Aldea Ma. Luisa');
INSERT INTO `Ciudades` VALUES (990, 9, 'Aldea Protestante');
INSERT INTO `Ciudades` VALUES (991, 9, 'Aldea Salto');
INSERT INTO `Ciudades` VALUES (992, 9, 'Aldea San Antonio (G)');
INSERT INTO `Ciudades` VALUES (993, 9, 'Aldea San Antonio (P)');
INSERT INTO `Ciudades` VALUES (994, 9, 'Aldea 19');
INSERT INTO `Ciudades` VALUES (995, 9, 'Aldea San Miguel');
INSERT INTO `Ciudades` VALUES (996, 9, 'Aldea San Rafael');
INSERT INTO `Ciudades` VALUES (997, 9, 'Aldea Spatzenkutter');
INSERT INTO `Ciudades` VALUES (998, 9, 'Aldea Sta. María');
INSERT INTO `Ciudades` VALUES (999, 9, 'Aldea Sta. Rosa');
INSERT INTO `Ciudades` VALUES (1000, 9, 'Aldea Valle María');
INSERT INTO `Ciudades` VALUES (1001, 9, 'Altamirano Sur');
INSERT INTO `Ciudades` VALUES (1002, 9, 'Antelo');
INSERT INTO `Ciudades` VALUES (1003, 9, 'Antonio Tomás');
INSERT INTO `Ciudades` VALUES (1004, 9, 'Aranguren');
INSERT INTO `Ciudades` VALUES (1005, 9, 'Arroyo Barú');
INSERT INTO `Ciudades` VALUES (1006, 9, 'Arroyo Burgos');
INSERT INTO `Ciudades` VALUES (1007, 9, 'Arroyo Clé');
INSERT INTO `Ciudades` VALUES (1008, 9, 'Arroyo Corralito');
INSERT INTO `Ciudades` VALUES (1009, 9, 'Arroyo del Medio');
INSERT INTO `Ciudades` VALUES (1010, 9, 'Arroyo Maturrango');
INSERT INTO `Ciudades` VALUES (1011, 9, 'Arroyo Palo Seco');
INSERT INTO `Ciudades` VALUES (1012, 9, 'Banderas');
INSERT INTO `Ciudades` VALUES (1013, 9, 'Basavilbaso');
INSERT INTO `Ciudades` VALUES (1014, 9, 'Betbeder');
INSERT INTO `Ciudades` VALUES (1015, 9, 'Bovril');
INSERT INTO `Ciudades` VALUES (1016, 9, 'Caseros');
INSERT INTO `Ciudades` VALUES (1017, 9, 'Ceibas');
INSERT INTO `Ciudades` VALUES (1018, 9, 'Cerrito');
INSERT INTO `Ciudades` VALUES (1019, 9, 'Chajarí');
INSERT INTO `Ciudades` VALUES (1020, 9, 'Chilcas');
INSERT INTO `Ciudades` VALUES (1021, 9, 'Clodomiro Ledesma');
INSERT INTO `Ciudades` VALUES (1022, 9, 'Col. Alemana');
INSERT INTO `Ciudades` VALUES (1023, 9, 'Col. Avellaneda');
INSERT INTO `Ciudades` VALUES (1024, 9, 'Col. Avigdor');
INSERT INTO `Ciudades` VALUES (1025, 9, 'Col. Ayuí');
INSERT INTO `Ciudades` VALUES (1026, 9, 'Col. Baylina');
INSERT INTO `Ciudades` VALUES (1027, 9, 'Col. Carrasco');
INSERT INTO `Ciudades` VALUES (1028, 9, 'Col. Celina');
INSERT INTO `Ciudades` VALUES (1029, 9, 'Col. Cerrito');
INSERT INTO `Ciudades` VALUES (1030, 9, 'Col. Crespo');
INSERT INTO `Ciudades` VALUES (1031, 9, 'Col. Elia');
INSERT INTO `Ciudades` VALUES (1032, 9, 'Col. Ensayo');
INSERT INTO `Ciudades` VALUES (1033, 9, 'Col. Gral. Roca');
INSERT INTO `Ciudades` VALUES (1034, 9, 'Col. La Argentina');
INSERT INTO `Ciudades` VALUES (1035, 9, 'Col. Merou');
INSERT INTO `Ciudades` VALUES (1036, 9, 'Col. Oficial Nª3');
INSERT INTO `Ciudades` VALUES (1037, 9, 'Col. Oficial Nº13');
INSERT INTO `Ciudades` VALUES (1038, 9, 'Col. Oficial Nº14');
INSERT INTO `Ciudades` VALUES (1039, 9, 'Col. Oficial Nº5');
INSERT INTO `Ciudades` VALUES (1040, 9, 'Col. Reffino');
INSERT INTO `Ciudades` VALUES (1041, 9, 'Col. Tunas');
INSERT INTO `Ciudades` VALUES (1042, 9, 'Col. Viraró');
INSERT INTO `Ciudades` VALUES (1043, 9, 'Colón');
INSERT INTO `Ciudades` VALUES (1044, 9, 'Concepción del Uruguay');
INSERT INTO `Ciudades` VALUES (1045, 9, 'Concordia');
INSERT INTO `Ciudades` VALUES (1046, 9, 'Conscripto Bernardi');
INSERT INTO `Ciudades` VALUES (1047, 9, 'Costa Grande');
INSERT INTO `Ciudades` VALUES (1048, 9, 'Costa San Antonio');
INSERT INTO `Ciudades` VALUES (1049, 9, 'Costa Uruguay N.');
INSERT INTO `Ciudades` VALUES (1050, 9, 'Costa Uruguay S.');
INSERT INTO `Ciudades` VALUES (1051, 9, 'Crespo');
INSERT INTO `Ciudades` VALUES (1052, 9, 'Crucecitas 3ª');
INSERT INTO `Ciudades` VALUES (1053, 9, 'Crucecitas 7ª');
INSERT INTO `Ciudades` VALUES (1054, 9, 'Crucecitas 8ª');
INSERT INTO `Ciudades` VALUES (1055, 9, 'Cuchilla Redonda');
INSERT INTO `Ciudades` VALUES (1056, 9, 'Curtiembre');
INSERT INTO `Ciudades` VALUES (1057, 9, 'Diamante');
INSERT INTO `Ciudades` VALUES (1058, 9, 'Distrito 6º');
INSERT INTO `Ciudades` VALUES (1059, 9, 'Distrito Chañar');
INSERT INTO `Ciudades` VALUES (1060, 9, 'Distrito Chiqueros');
INSERT INTO `Ciudades` VALUES (1061, 9, 'Distrito Cuarto');
INSERT INTO `Ciudades` VALUES (1062, 9, 'Distrito Diego López');
INSERT INTO `Ciudades` VALUES (1063, 9, 'Distrito Pajonal');
INSERT INTO `Ciudades` VALUES (1064, 9, 'Distrito Sauce');
INSERT INTO `Ciudades` VALUES (1065, 9, 'Distrito Tala');
INSERT INTO `Ciudades` VALUES (1066, 9, 'Distrito Talitas');
INSERT INTO `Ciudades` VALUES (1067, 9, 'Don Cristóbal 1ª Sección');
INSERT INTO `Ciudades` VALUES (1068, 9, 'Don Cristóbal 2ª Sección');
INSERT INTO `Ciudades` VALUES (1069, 9, 'Durazno');
INSERT INTO `Ciudades` VALUES (1070, 9, 'El Cimarrón');
INSERT INTO `Ciudades` VALUES (1071, 9, 'El Gramillal');
INSERT INTO `Ciudades` VALUES (1072, 9, 'El Palenque');
INSERT INTO `Ciudades` VALUES (1073, 9, 'El Pingo');
INSERT INTO `Ciudades` VALUES (1074, 9, 'El Quebracho');
INSERT INTO `Ciudades` VALUES (1075, 9, 'El Redomón');
INSERT INTO `Ciudades` VALUES (1076, 9, 'El Solar');
INSERT INTO `Ciudades` VALUES (1077, 9, 'Enrique Carbo');
INSERT INTO `Ciudades` VALUES (1078, 9, 'Entre Ríos');
INSERT INTO `Ciudades` VALUES (1079, 9, 'Espinillo N.');
INSERT INTO `Ciudades` VALUES (1080, 9, 'Estación Campos');
INSERT INTO `Ciudades` VALUES (1081, 9, 'Estación Escriña');
INSERT INTO `Ciudades` VALUES (1082, 9, 'Estación Lazo');
INSERT INTO `Ciudades` VALUES (1083, 9, 'Estación Raíces');
INSERT INTO `Ciudades` VALUES (1084, 9, 'Estación Yerúa');
INSERT INTO `Ciudades` VALUES (1085, 9, 'Estancia Grande');
INSERT INTO `Ciudades` VALUES (1086, 9, 'Estancia Líbaros');
INSERT INTO `Ciudades` VALUES (1087, 9, 'Estancia Racedo');
INSERT INTO `Ciudades` VALUES (1088, 9, 'Estancia Solá');
INSERT INTO `Ciudades` VALUES (1089, 9, 'Estancia Yuquerí');
INSERT INTO `Ciudades` VALUES (1090, 9, 'Estaquitas');
INSERT INTO `Ciudades` VALUES (1091, 9, 'Faustino M. Parera');
INSERT INTO `Ciudades` VALUES (1092, 9, 'Febre');
INSERT INTO `Ciudades` VALUES (1093, 9, 'Federación');
INSERT INTO `Ciudades` VALUES (1094, 9, 'Federal');
INSERT INTO `Ciudades` VALUES (1095, 9, 'Gdor. Echagüe');
INSERT INTO `Ciudades` VALUES (1096, 9, 'Gdor. Mansilla');
INSERT INTO `Ciudades` VALUES (1097, 9, 'Gilbert');
INSERT INTO `Ciudades` VALUES (1098, 9, 'González Calderón');
INSERT INTO `Ciudades` VALUES (1099, 9, 'Gral. Almada');
INSERT INTO `Ciudades` VALUES (1100, 9, 'Gral. Alvear');
INSERT INTO `Ciudades` VALUES (1101, 9, 'Gral. Campos');
INSERT INTO `Ciudades` VALUES (1102, 9, 'Gral. Galarza');
INSERT INTO `Ciudades` VALUES (1103, 9, 'Gral. Ramírez');
INSERT INTO `Ciudades` VALUES (1104, 9, 'Gualeguay');
INSERT INTO `Ciudades` VALUES (1105, 9, 'Gualeguaychú');
INSERT INTO `Ciudades` VALUES (1106, 9, 'Gualeguaycito');
INSERT INTO `Ciudades` VALUES (1107, 9, 'Guardamonte');
INSERT INTO `Ciudades` VALUES (1108, 9, 'Hambis');
INSERT INTO `Ciudades` VALUES (1109, 9, 'Hasenkamp');
INSERT INTO `Ciudades` VALUES (1110, 9, 'Hernandarias');
INSERT INTO `Ciudades` VALUES (1111, 9, 'Hernández');
INSERT INTO `Ciudades` VALUES (1112, 9, 'Herrera');
INSERT INTO `Ciudades` VALUES (1113, 9, 'Hinojal');
INSERT INTO `Ciudades` VALUES (1114, 9, 'Hocker');
INSERT INTO `Ciudades` VALUES (1115, 9, 'Ing. Sajaroff');
INSERT INTO `Ciudades` VALUES (1116, 9, 'Irazusta');
INSERT INTO `Ciudades` VALUES (1117, 9, 'Isletas');
INSERT INTO `Ciudades` VALUES (1118, 9, 'J.J De Urquiza');
INSERT INTO `Ciudades` VALUES (1119, 9, 'Jubileo');
INSERT INTO `Ciudades` VALUES (1120, 9, 'La Clarita');
INSERT INTO `Ciudades` VALUES (1121, 9, 'La Criolla');
INSERT INTO `Ciudades` VALUES (1122, 9, 'La Esmeralda');
INSERT INTO `Ciudades` VALUES (1123, 9, 'La Florida');
INSERT INTO `Ciudades` VALUES (1124, 9, 'La Fraternidad');
INSERT INTO `Ciudades` VALUES (1125, 9, 'La Hierra');
INSERT INTO `Ciudades` VALUES (1126, 9, 'La Ollita');
INSERT INTO `Ciudades` VALUES (1127, 9, 'La Paz');
INSERT INTO `Ciudades` VALUES (1128, 9, 'La Picada');
INSERT INTO `Ciudades` VALUES (1129, 9, 'La Providencia');
INSERT INTO `Ciudades` VALUES (1130, 9, 'La Verbena');
INSERT INTO `Ciudades` VALUES (1131, 9, 'Laguna Benítez');
INSERT INTO `Ciudades` VALUES (1132, 9, 'Larroque');
INSERT INTO `Ciudades` VALUES (1133, 9, 'Las Cuevas');
INSERT INTO `Ciudades` VALUES (1134, 9, 'Las Garzas');
INSERT INTO `Ciudades` VALUES (1135, 9, 'Las Guachas');
INSERT INTO `Ciudades` VALUES (1136, 9, 'Las Mercedes');
INSERT INTO `Ciudades` VALUES (1137, 9, 'Las Moscas');
INSERT INTO `Ciudades` VALUES (1138, 9, 'Las Mulitas');
INSERT INTO `Ciudades` VALUES (1139, 9, 'Las Toscas');
INSERT INTO `Ciudades` VALUES (1140, 9, 'Laurencena');
INSERT INTO `Ciudades` VALUES (1141, 9, 'Libertador San Martín');
INSERT INTO `Ciudades` VALUES (1142, 9, 'Loma Limpia');
INSERT INTO `Ciudades` VALUES (1143, 9, 'Los Ceibos');
INSERT INTO `Ciudades` VALUES (1144, 9, 'Los Charruas');
INSERT INTO `Ciudades` VALUES (1145, 9, 'Los Conquistadores');
INSERT INTO `Ciudades` VALUES (1146, 9, 'Lucas González');
INSERT INTO `Ciudades` VALUES (1147, 9, 'Lucas N.');
INSERT INTO `Ciudades` VALUES (1148, 9, 'Lucas S. 1ª');
INSERT INTO `Ciudades` VALUES (1149, 9, 'Lucas S. 2ª');
INSERT INTO `Ciudades` VALUES (1150, 9, 'Maciá');
INSERT INTO `Ciudades` VALUES (1151, 9, 'María Grande');
INSERT INTO `Ciudades` VALUES (1152, 9, 'María Grande 2ª');
INSERT INTO `Ciudades` VALUES (1153, 9, 'Médanos');
INSERT INTO `Ciudades` VALUES (1154, 9, 'Mojones N.');
INSERT INTO `Ciudades` VALUES (1155, 9, 'Mojones S.');
INSERT INTO `Ciudades` VALUES (1156, 9, 'Molino Doll');
INSERT INTO `Ciudades` VALUES (1157, 9, 'Monte Redondo');
INSERT INTO `Ciudades` VALUES (1158, 9, 'Montoya');
INSERT INTO `Ciudades` VALUES (1159, 9, 'Mulas Grandes');
INSERT INTO `Ciudades` VALUES (1160, 9, 'Ñancay');
INSERT INTO `Ciudades` VALUES (1161, 9, 'Nogoyá');
INSERT INTO `Ciudades` VALUES (1162, 9, 'Nueva Escocia');
INSERT INTO `Ciudades` VALUES (1163, 9, 'Nueva Vizcaya');
INSERT INTO `Ciudades` VALUES (1164, 9, 'Ombú');
INSERT INTO `Ciudades` VALUES (1165, 9, 'Oro Verde');
INSERT INTO `Ciudades` VALUES (1166, 9, 'Paraná');
INSERT INTO `Ciudades` VALUES (1167, 9, 'Pasaje Guayaquil');
INSERT INTO `Ciudades` VALUES (1168, 9, 'Pasaje Las Tunas');
INSERT INTO `Ciudades` VALUES (1169, 9, 'Paso de La Arena');
INSERT INTO `Ciudades` VALUES (1170, 9, 'Paso de La Laguna');
INSERT INTO `Ciudades` VALUES (1171, 9, 'Paso de Las Piedras');
INSERT INTO `Ciudades` VALUES (1172, 9, 'Paso Duarte');
INSERT INTO `Ciudades` VALUES (1173, 9, 'Pastor Britos');
INSERT INTO `Ciudades` VALUES (1174, 9, 'Pedernal');
INSERT INTO `Ciudades` VALUES (1175, 9, 'Perdices');
INSERT INTO `Ciudades` VALUES (1176, 9, 'Picada Berón');
INSERT INTO `Ciudades` VALUES (1177, 9, 'Piedras Blancas');
INSERT INTO `Ciudades` VALUES (1178, 9, 'Primer Distrito Cuchilla');
INSERT INTO `Ciudades` VALUES (1179, 9, 'Primero de Mayo');
INSERT INTO `Ciudades` VALUES (1180, 9, 'Pronunciamiento');
INSERT INTO `Ciudades` VALUES (1181, 9, 'Pto. Algarrobo');
INSERT INTO `Ciudades` VALUES (1182, 9, 'Pto. Ibicuy');
INSERT INTO `Ciudades` VALUES (1183, 9, 'Pueblo Brugo');
INSERT INTO `Ciudades` VALUES (1184, 9, 'Pueblo Cazes');
INSERT INTO `Ciudades` VALUES (1185, 9, 'Pueblo Gral. Belgrano');
INSERT INTO `Ciudades` VALUES (1186, 9, 'Pueblo Liebig');
INSERT INTO `Ciudades` VALUES (1187, 9, 'Puerto Yeruá');
INSERT INTO `Ciudades` VALUES (1188, 9, 'Punta del Monte');
INSERT INTO `Ciudades` VALUES (1189, 9, 'Quebracho');
INSERT INTO `Ciudades` VALUES (1190, 9, 'Quinto Distrito');
INSERT INTO `Ciudades` VALUES (1191, 9, 'Raices Oeste');
INSERT INTO `Ciudades` VALUES (1192, 9, 'Rincón de Nogoyá');
INSERT INTO `Ciudades` VALUES (1193, 9, 'Rincón del Cinto');
INSERT INTO `Ciudades` VALUES (1194, 9, 'Rincón del Doll');
INSERT INTO `Ciudades` VALUES (1195, 9, 'Rincón del Gato');
INSERT INTO `Ciudades` VALUES (1196, 9, 'Rocamora');
INSERT INTO `Ciudades` VALUES (1197, 9, 'Rosario del Tala');
INSERT INTO `Ciudades` VALUES (1198, 9, 'San Benito');
INSERT INTO `Ciudades` VALUES (1199, 9, 'San Cipriano');
INSERT INTO `Ciudades` VALUES (1200, 9, 'San Ernesto');
INSERT INTO `Ciudades` VALUES (1201, 9, 'San Gustavo');
INSERT INTO `Ciudades` VALUES (1202, 9, 'San Jaime');
INSERT INTO `Ciudades` VALUES (1203, 9, 'San José');
INSERT INTO `Ciudades` VALUES (1204, 9, 'San José de Feliciano');
INSERT INTO `Ciudades` VALUES (1205, 9, 'San Justo');
INSERT INTO `Ciudades` VALUES (1206, 9, 'San Marcial');
INSERT INTO `Ciudades` VALUES (1207, 9, 'San Pedro');
INSERT INTO `Ciudades` VALUES (1208, 9, 'San Ramírez');
INSERT INTO `Ciudades` VALUES (1209, 9, 'San Ramón');
INSERT INTO `Ciudades` VALUES (1210, 9, 'San Roque');
INSERT INTO `Ciudades` VALUES (1211, 9, 'San Salvador');
INSERT INTO `Ciudades` VALUES (1212, 9, 'San Víctor');
INSERT INTO `Ciudades` VALUES (1213, 9, 'Santa Ana');
INSERT INTO `Ciudades` VALUES (1214, 9, 'Santa Anita');
INSERT INTO `Ciudades` VALUES (1215, 9, 'Santa Elena');
INSERT INTO `Ciudades` VALUES (1216, 9, 'Santa Lucía');
INSERT INTO `Ciudades` VALUES (1217, 9, 'Santa Luisa');
INSERT INTO `Ciudades` VALUES (1218, 9, 'Sauce de Luna');
INSERT INTO `Ciudades` VALUES (1219, 9, 'Sauce Montrull');
INSERT INTO `Ciudades` VALUES (1220, 9, 'Sauce Pinto');
INSERT INTO `Ciudades` VALUES (1221, 9, 'Sauce Sur');
INSERT INTO `Ciudades` VALUES (1222, 9, 'Seguí');
INSERT INTO `Ciudades` VALUES (1223, 9, 'Sir Leonard');
INSERT INTO `Ciudades` VALUES (1224, 9, 'Sosa');
INSERT INTO `Ciudades` VALUES (1225, 9, 'Tabossi');
INSERT INTO `Ciudades` VALUES (1226, 9, 'Tezanos Pinto');
INSERT INTO `Ciudades` VALUES (1227, 9, 'Ubajay');
INSERT INTO `Ciudades` VALUES (1228, 9, 'Urdinarrain');
INSERT INTO `Ciudades` VALUES (1229, 9, 'Veinte de Septiembre');
INSERT INTO `Ciudades` VALUES (1230, 9, 'Viale');
INSERT INTO `Ciudades` VALUES (1231, 9, 'Victoria');
INSERT INTO `Ciudades` VALUES (1232, 9, 'Villa Clara');
INSERT INTO `Ciudades` VALUES (1233, 9, 'Villa del Rosario');
INSERT INTO `Ciudades` VALUES (1234, 9, 'Villa Domínguez');
INSERT INTO `Ciudades` VALUES (1235, 9, 'Villa Elisa');
INSERT INTO `Ciudades` VALUES (1236, 9, 'Villa Fontana');
INSERT INTO `Ciudades` VALUES (1237, 9, 'Villa Gdor. Etchevehere');
INSERT INTO `Ciudades` VALUES (1238, 9, 'Villa Mantero');
INSERT INTO `Ciudades` VALUES (1239, 9, 'Villa Paranacito');
INSERT INTO `Ciudades` VALUES (1240, 9, 'Villa Urquiza');
INSERT INTO `Ciudades` VALUES (1241, 9, 'Villaguay');
INSERT INTO `Ciudades` VALUES (1242, 9, 'Walter Moss');
INSERT INTO `Ciudades` VALUES (1243, 9, 'Yacaré');
INSERT INTO `Ciudades` VALUES (1244, 9, 'Yeso Oeste');
INSERT INTO `Ciudades` VALUES (1245, 10, 'Buena Vista');
INSERT INTO `Ciudades` VALUES (1246, 10, 'Clorinda');
INSERT INTO `Ciudades` VALUES (1247, 10, 'Col. Pastoril');
INSERT INTO `Ciudades` VALUES (1248, 10, 'Cte. Fontana');
INSERT INTO `Ciudades` VALUES (1249, 10, 'El Colorado');
INSERT INTO `Ciudades` VALUES (1250, 10, 'El Espinillo');
INSERT INTO `Ciudades` VALUES (1251, 10, 'Estanislao Del Campo');
INSERT INTO `Ciudades` VALUES (1252, 10, 'Formosa');
INSERT INTO `Ciudades` VALUES (1253, 10, 'Fortín Lugones');
INSERT INTO `Ciudades` VALUES (1254, 10, 'Gral. Lucio V. Mansilla');
INSERT INTO `Ciudades` VALUES (1255, 10, 'Gral. Manuel Belgrano');
INSERT INTO `Ciudades` VALUES (1256, 10, 'Gral. Mosconi');
INSERT INTO `Ciudades` VALUES (1257, 10, 'Gran Guardia');
INSERT INTO `Ciudades` VALUES (1258, 10, 'Herradura');
INSERT INTO `Ciudades` VALUES (1259, 10, 'Ibarreta');
INSERT INTO `Ciudades` VALUES (1260, 10, 'Ing. Juárez');
INSERT INTO `Ciudades` VALUES (1261, 10, 'Laguna Blanca');
INSERT INTO `Ciudades` VALUES (1262, 10, 'Laguna Naick Neck');
INSERT INTO `Ciudades` VALUES (1263, 10, 'Laguna Yema');
INSERT INTO `Ciudades` VALUES (1264, 10, 'Las Lomitas');
INSERT INTO `Ciudades` VALUES (1265, 10, 'Los Chiriguanos');
INSERT INTO `Ciudades` VALUES (1266, 10, 'Mayor V. Villafañe');
INSERT INTO `Ciudades` VALUES (1267, 10, 'Misión San Fco.');
INSERT INTO `Ciudades` VALUES (1268, 10, 'Palo Santo');
INSERT INTO `Ciudades` VALUES (1269, 10, 'Pirané');
INSERT INTO `Ciudades` VALUES (1270, 10, 'Pozo del Maza');
INSERT INTO `Ciudades` VALUES (1271, 10, 'Riacho He-He');
INSERT INTO `Ciudades` VALUES (1272, 10, 'San Hilario');
INSERT INTO `Ciudades` VALUES (1273, 10, 'San Martín II');
INSERT INTO `Ciudades` VALUES (1274, 10, 'Siete Palmas');
INSERT INTO `Ciudades` VALUES (1275, 10, 'Subteniente Perín');
INSERT INTO `Ciudades` VALUES (1276, 10, 'Tres Lagunas');
INSERT INTO `Ciudades` VALUES (1277, 10, 'Villa Dos Trece');
INSERT INTO `Ciudades` VALUES (1278, 10, 'Villa Escolar');
INSERT INTO `Ciudades` VALUES (1279, 10, 'Villa Gral. Güemes');
INSERT INTO `Ciudades` VALUES (1280, 11, 'Abdon Castro Tolay');
INSERT INTO `Ciudades` VALUES (1281, 11, 'Abra Pampa');
INSERT INTO `Ciudades` VALUES (1282, 11, 'Abralaite');
INSERT INTO `Ciudades` VALUES (1283, 11, 'Aguas Calientes');
INSERT INTO `Ciudades` VALUES (1284, 11, 'Arrayanal');
INSERT INTO `Ciudades` VALUES (1285, 11, 'Barrios');
INSERT INTO `Ciudades` VALUES (1286, 11, 'Caimancito');
INSERT INTO `Ciudades` VALUES (1287, 11, 'Calilegua');
INSERT INTO `Ciudades` VALUES (1288, 11, 'Cangrejillos');
INSERT INTO `Ciudades` VALUES (1289, 11, 'Caspala');
INSERT INTO `Ciudades` VALUES (1290, 11, 'Catuá');
INSERT INTO `Ciudades` VALUES (1291, 11, 'Cieneguillas');
INSERT INTO `Ciudades` VALUES (1292, 11, 'Coranzulli');
INSERT INTO `Ciudades` VALUES (1293, 11, 'Cusi-Cusi');
INSERT INTO `Ciudades` VALUES (1294, 11, 'El Aguilar');
INSERT INTO `Ciudades` VALUES (1295, 11, 'El Carmen');
INSERT INTO `Ciudades` VALUES (1296, 11, 'El Cóndor');
INSERT INTO `Ciudades` VALUES (1297, 11, 'El Fuerte');
INSERT INTO `Ciudades` VALUES (1298, 11, 'El Piquete');
INSERT INTO `Ciudades` VALUES (1299, 11, 'El Talar');
INSERT INTO `Ciudades` VALUES (1300, 11, 'Fraile Pintado');
INSERT INTO `Ciudades` VALUES (1301, 11, 'Hipólito Yrigoyen');
INSERT INTO `Ciudades` VALUES (1302, 11, 'Huacalera');
INSERT INTO `Ciudades` VALUES (1303, 11, 'Humahuaca');
INSERT INTO `Ciudades` VALUES (1304, 11, 'La Esperanza');
INSERT INTO `Ciudades` VALUES (1305, 11, 'La Mendieta');
INSERT INTO `Ciudades` VALUES (1306, 11, 'La Quiaca');
INSERT INTO `Ciudades` VALUES (1307, 11, 'Ledesma');
INSERT INTO `Ciudades` VALUES (1308, 11, 'Libertador Gral. San Martin');
INSERT INTO `Ciudades` VALUES (1309, 11, 'Maimara');
INSERT INTO `Ciudades` VALUES (1310, 11, 'Mina Pirquitas');
INSERT INTO `Ciudades` VALUES (1311, 11, 'Monterrico');
INSERT INTO `Ciudades` VALUES (1312, 11, 'Palma Sola');
INSERT INTO `Ciudades` VALUES (1313, 11, 'Palpalá');
INSERT INTO `Ciudades` VALUES (1314, 11, 'Pampa Blanca');
INSERT INTO `Ciudades` VALUES (1315, 11, 'Pampichuela');
INSERT INTO `Ciudades` VALUES (1316, 11, 'Perico');
INSERT INTO `Ciudades` VALUES (1317, 11, 'Puesto del Marqués');
INSERT INTO `Ciudades` VALUES (1318, 11, 'Puesto Viejo');
INSERT INTO `Ciudades` VALUES (1319, 11, 'Pumahuasi');
INSERT INTO `Ciudades` VALUES (1320, 11, 'Purmamarca');
INSERT INTO `Ciudades` VALUES (1321, 11, 'Rinconada');
INSERT INTO `Ciudades` VALUES (1322, 11, 'Rodeitos');
INSERT INTO `Ciudades` VALUES (1323, 11, 'Rosario de Río Grande');
INSERT INTO `Ciudades` VALUES (1324, 11, 'San Antonio');
INSERT INTO `Ciudades` VALUES (1325, 11, 'San Francisco');
INSERT INTO `Ciudades` VALUES (1326, 11, 'San Pedro');
INSERT INTO `Ciudades` VALUES (1327, 11, 'San Rafael');
INSERT INTO `Ciudades` VALUES (1328, 11, 'San Salvador');
INSERT INTO `Ciudades` VALUES (1329, 11, 'Santa Ana');
INSERT INTO `Ciudades` VALUES (1330, 11, 'Santa Catalina');
INSERT INTO `Ciudades` VALUES (1331, 11, 'Santa Clara');
INSERT INTO `Ciudades` VALUES (1332, 11, 'Susques');
INSERT INTO `Ciudades` VALUES (1333, 11, 'Tilcara');
INSERT INTO `Ciudades` VALUES (1334, 11, 'Tres Cruces');
INSERT INTO `Ciudades` VALUES (1335, 11, 'Tumbaya');
INSERT INTO `Ciudades` VALUES (1336, 11, 'Valle Grande');
INSERT INTO `Ciudades` VALUES (1337, 11, 'Vinalito');
INSERT INTO `Ciudades` VALUES (1338, 11, 'Volcán');
INSERT INTO `Ciudades` VALUES (1339, 11, 'Yala');
INSERT INTO `Ciudades` VALUES (1340, 11, 'Yaví');
INSERT INTO `Ciudades` VALUES (1341, 11, 'Yuto');
INSERT INTO `Ciudades` VALUES (1342, 12, 'Abramo');
INSERT INTO `Ciudades` VALUES (1343, 12, 'Adolfo Van Praet');
INSERT INTO `Ciudades` VALUES (1344, 12, 'Agustoni');
INSERT INTO `Ciudades` VALUES (1345, 12, 'Algarrobo del Aguila');
INSERT INTO `Ciudades` VALUES (1346, 12, 'Alpachiri');
INSERT INTO `Ciudades` VALUES (1347, 12, 'Alta Italia');
INSERT INTO `Ciudades` VALUES (1348, 12, 'Anguil');
INSERT INTO `Ciudades` VALUES (1349, 12, 'Arata');
INSERT INTO `Ciudades` VALUES (1350, 12, 'Ataliva Roca');
INSERT INTO `Ciudades` VALUES (1351, 12, 'Bernardo Larroude');
INSERT INTO `Ciudades` VALUES (1352, 12, 'Bernasconi');
INSERT INTO `Ciudades` VALUES (1353, 12, 'Caleufú');
INSERT INTO `Ciudades` VALUES (1354, 12, 'Carro Quemado');
INSERT INTO `Ciudades` VALUES (1355, 12, 'Catriló');
INSERT INTO `Ciudades` VALUES (1356, 12, 'Ceballos');
INSERT INTO `Ciudades` VALUES (1357, 12, 'Chacharramendi');
INSERT INTO `Ciudades` VALUES (1358, 12, 'Col. Barón');
INSERT INTO `Ciudades` VALUES (1359, 12, 'Col. Santa María');
INSERT INTO `Ciudades` VALUES (1360, 12, 'Conhelo');
INSERT INTO `Ciudades` VALUES (1361, 12, 'Coronel Hilario Lagos');
INSERT INTO `Ciudades` VALUES (1362, 12, 'Cuchillo-Có');
INSERT INTO `Ciudades` VALUES (1363, 12, 'Doblas');
INSERT INTO `Ciudades` VALUES (1364, 12, 'Dorila');
INSERT INTO `Ciudades` VALUES (1365, 12, 'Eduardo Castex');
INSERT INTO `Ciudades` VALUES (1366, 12, 'Embajador Martini');
INSERT INTO `Ciudades` VALUES (1367, 12, 'Falucho');
INSERT INTO `Ciudades` VALUES (1368, 12, 'Gral. Acha');
INSERT INTO `Ciudades` VALUES (1369, 12, 'Gral. Manuel Campos');
INSERT INTO `Ciudades` VALUES (1370, 12, 'Gral. Pico');
INSERT INTO `Ciudades` VALUES (1371, 12, 'Guatraché');
INSERT INTO `Ciudades` VALUES (1372, 12, 'Ing. Luiggi');
INSERT INTO `Ciudades` VALUES (1373, 12, 'Intendente Alvear');
INSERT INTO `Ciudades` VALUES (1374, 12, 'Jacinto Arauz');
INSERT INTO `Ciudades` VALUES (1375, 12, 'La Adela');
INSERT INTO `Ciudades` VALUES (1376, 12, 'La Humada');
INSERT INTO `Ciudades` VALUES (1377, 12, 'La Maruja');
INSERT INTO `Ciudades` VALUES (1378, 12, 'La Pampa');
INSERT INTO `Ciudades` VALUES (1379, 12, 'La Reforma');
INSERT INTO `Ciudades` VALUES (1380, 12, 'Limay Mahuida');
INSERT INTO `Ciudades` VALUES (1381, 12, 'Lonquimay');
INSERT INTO `Ciudades` VALUES (1382, 12, 'Loventuel');
INSERT INTO `Ciudades` VALUES (1383, 12, 'Luan Toro');
INSERT INTO `Ciudades` VALUES (1384, 12, 'Macachín');
INSERT INTO `Ciudades` VALUES (1385, 12, 'Maisonnave');
INSERT INTO `Ciudades` VALUES (1386, 12, 'Mauricio Mayer');
INSERT INTO `Ciudades` VALUES (1387, 12, 'Metileo');
INSERT INTO `Ciudades` VALUES (1388, 12, 'Miguel Cané');
INSERT INTO `Ciudades` VALUES (1389, 12, 'Miguel Riglos');
INSERT INTO `Ciudades` VALUES (1390, 12, 'Monte Nievas');
INSERT INTO `Ciudades` VALUES (1391, 12, 'Parera');
INSERT INTO `Ciudades` VALUES (1392, 12, 'Perú');
INSERT INTO `Ciudades` VALUES (1393, 12, 'Pichi-Huinca');
INSERT INTO `Ciudades` VALUES (1394, 12, 'Puelches');
INSERT INTO `Ciudades` VALUES (1395, 12, 'Puelén');
INSERT INTO `Ciudades` VALUES (1396, 12, 'Quehue');
INSERT INTO `Ciudades` VALUES (1397, 12, 'Quemú Quemú');
INSERT INTO `Ciudades` VALUES (1398, 12, 'Quetrequén');
INSERT INTO `Ciudades` VALUES (1399, 12, 'Rancul');
INSERT INTO `Ciudades` VALUES (1400, 12, 'Realicó');
INSERT INTO `Ciudades` VALUES (1401, 12, 'Relmo');
INSERT INTO `Ciudades` VALUES (1402, 12, 'Rolón');
INSERT INTO `Ciudades` VALUES (1403, 12, 'Rucanelo');
INSERT INTO `Ciudades` VALUES (1404, 12, 'Sarah');
INSERT INTO `Ciudades` VALUES (1405, 12, 'Speluzzi');
INSERT INTO `Ciudades` VALUES (1406, 12, 'Sta. Isabel');
INSERT INTO `Ciudades` VALUES (1407, 12, 'Sta. Rosa');
INSERT INTO `Ciudades` VALUES (1408, 12, 'Sta. Teresa');
INSERT INTO `Ciudades` VALUES (1409, 12, 'Telén');
INSERT INTO `Ciudades` VALUES (1410, 12, 'Toay');
INSERT INTO `Ciudades` VALUES (1411, 12, 'Tomas M. de Anchorena');
INSERT INTO `Ciudades` VALUES (1412, 12, 'Trenel');
INSERT INTO `Ciudades` VALUES (1413, 12, 'Unanue');
INSERT INTO `Ciudades` VALUES (1414, 12, 'Uriburu');
INSERT INTO `Ciudades` VALUES (1415, 12, 'Veinticinco de Mayo');
INSERT INTO `Ciudades` VALUES (1416, 12, 'Vertiz');
INSERT INTO `Ciudades` VALUES (1417, 12, 'Victorica');
INSERT INTO `Ciudades` VALUES (1418, 12, 'Villa Mirasol');
INSERT INTO `Ciudades` VALUES (1419, 12, 'Winifreda');
INSERT INTO `Ciudades` VALUES (1420, 13, 'Arauco');
INSERT INTO `Ciudades` VALUES (1421, 13, 'Capital');
INSERT INTO `Ciudades` VALUES (1422, 13, 'Castro Barros');
INSERT INTO `Ciudades` VALUES (1423, 13, 'Chamical');
INSERT INTO `Ciudades` VALUES (1424, 13, 'Chilecito');
INSERT INTO `Ciudades` VALUES (1425, 13, 'Coronel F. Varela');
INSERT INTO `Ciudades` VALUES (1426, 13, 'Famatina');
INSERT INTO `Ciudades` VALUES (1427, 13, 'Gral. A.V.Peñaloza');
INSERT INTO `Ciudades` VALUES (1428, 13, 'Gral. Belgrano');
INSERT INTO `Ciudades` VALUES (1429, 13, 'Gral. J.F. Quiroga');
INSERT INTO `Ciudades` VALUES (1430, 13, 'Gral. Lamadrid');
INSERT INTO `Ciudades` VALUES (1431, 13, 'Gral. Ocampo');
INSERT INTO `Ciudades` VALUES (1432, 13, 'Gral. San Martín');
INSERT INTO `Ciudades` VALUES (1433, 13, 'Independencia');
INSERT INTO `Ciudades` VALUES (1434, 13, 'Rosario Penaloza');
INSERT INTO `Ciudades` VALUES (1435, 13, 'San Blas de Los Sauces');
INSERT INTO `Ciudades` VALUES (1436, 13, 'Sanagasta');
INSERT INTO `Ciudades` VALUES (1437, 13, 'Vinchina');
INSERT INTO `Ciudades` VALUES (1438, 14, 'Capital');
INSERT INTO `Ciudades` VALUES (1439, 14, 'Chacras de Coria');
INSERT INTO `Ciudades` VALUES (1440, 14, 'Dorrego');
INSERT INTO `Ciudades` VALUES (1441, 14, 'Gllen');
INSERT INTO `Ciudades` VALUES (1442, 14, 'Godoy Cruz');
INSERT INTO `Ciudades` VALUES (1443, 14, 'Gral. Alvear');
INSERT INTO `Ciudades` VALUES (1444, 14, 'Guaymallén');
INSERT INTO `Ciudades` VALUES (1445, 14, 'Junín');
INSERT INTO `Ciudades` VALUES (1446, 14, 'La Paz');
INSERT INTO `Ciudades` VALUES (1447, 14, 'Las Heras');
INSERT INTO `Ciudades` VALUES (1448, 14, 'Lavalle');
INSERT INTO `Ciudades` VALUES (1449, 14, 'Luján');
INSERT INTO `Ciudades` VALUES (1450, 14, 'Luján De Cuyo');
INSERT INTO `Ciudades` VALUES (1451, 14, 'Maipú');
INSERT INTO `Ciudades` VALUES (1452, 14, 'Malargüe');
INSERT INTO `Ciudades` VALUES (1453, 14, 'Rivadavia');
INSERT INTO `Ciudades` VALUES (1454, 14, 'San Carlos');
INSERT INTO `Ciudades` VALUES (1455, 14, 'San Martín');
INSERT INTO `Ciudades` VALUES (1456, 14, 'San Rafael');
INSERT INTO `Ciudades` VALUES (1457, 14, 'Sta. Rosa');
INSERT INTO `Ciudades` VALUES (1458, 14, 'Tunuyán');
INSERT INTO `Ciudades` VALUES (1459, 14, 'Tupungato');
INSERT INTO `Ciudades` VALUES (1460, 14, 'Villa Nueva');
INSERT INTO `Ciudades` VALUES (1461, 15, 'Alba Posse');
INSERT INTO `Ciudades` VALUES (1462, 15, 'Almafuerte');
INSERT INTO `Ciudades` VALUES (1463, 15, 'Apóstoles');
INSERT INTO `Ciudades` VALUES (1464, 15, 'Aristóbulo Del Valle');
INSERT INTO `Ciudades` VALUES (1465, 15, 'Arroyo Del Medio');
INSERT INTO `Ciudades` VALUES (1466, 15, 'Azara');
INSERT INTO `Ciudades` VALUES (1467, 15, 'Bdo. De Irigoyen');
INSERT INTO `Ciudades` VALUES (1468, 15, 'Bonpland');
INSERT INTO `Ciudades` VALUES (1469, 15, 'Caá Yari');
INSERT INTO `Ciudades` VALUES (1470, 15, 'Campo Grande');
INSERT INTO `Ciudades` VALUES (1471, 15, 'Campo Ramón');
INSERT INTO `Ciudades` VALUES (1472, 15, 'Campo Viera');
INSERT INTO `Ciudades` VALUES (1473, 15, 'Candelaria');
INSERT INTO `Ciudades` VALUES (1474, 15, 'Capioví');
INSERT INTO `Ciudades` VALUES (1475, 15, 'Caraguatay');
INSERT INTO `Ciudades` VALUES (1476, 15, 'Cdte. Guacurarí');
INSERT INTO `Ciudades` VALUES (1477, 15, 'Cerro Azul');
INSERT INTO `Ciudades` VALUES (1478, 15, 'Cerro Corá');
INSERT INTO `Ciudades` VALUES (1479, 15, 'Col. Alberdi');
INSERT INTO `Ciudades` VALUES (1480, 15, 'Col. Aurora');
INSERT INTO `Ciudades` VALUES (1481, 15, 'Col. Delicia');
INSERT INTO `Ciudades` VALUES (1482, 15, 'Col. Polana');
INSERT INTO `Ciudades` VALUES (1483, 15, 'Col. Victoria');
INSERT INTO `Ciudades` VALUES (1484, 15, 'Col. Wanda');
INSERT INTO `Ciudades` VALUES (1485, 15, 'Concepción De La Sierra');
INSERT INTO `Ciudades` VALUES (1486, 15, 'Corpus');
INSERT INTO `Ciudades` VALUES (1487, 15, 'Dos Arroyos');
INSERT INTO `Ciudades` VALUES (1488, 15, 'Dos de Mayo');
INSERT INTO `Ciudades` VALUES (1489, 15, 'El Alcázar');
INSERT INTO `Ciudades` VALUES (1490, 15, 'El Dorado');
INSERT INTO `Ciudades` VALUES (1491, 15, 'El Soberbio');
INSERT INTO `Ciudades` VALUES (1492, 15, 'Esperanza');
INSERT INTO `Ciudades` VALUES (1493, 15, 'F. Ameghino');
INSERT INTO `Ciudades` VALUES (1494, 15, 'Fachinal');
INSERT INTO `Ciudades` VALUES (1495, 15, 'Garuhapé');
INSERT INTO `Ciudades` VALUES (1496, 15, 'Garupá');
INSERT INTO `Ciudades` VALUES (1497, 15, 'Gdor. López');
INSERT INTO `Ciudades` VALUES (1498, 15, 'Gdor. Roca');
INSERT INTO `Ciudades` VALUES (1499, 15, 'Gral. Alvear');
INSERT INTO `Ciudades` VALUES (1500, 15, 'Gral. Urquiza');
INSERT INTO `Ciudades` VALUES (1501, 15, 'Guaraní');
INSERT INTO `Ciudades` VALUES (1502, 15, 'H. Yrigoyen');
INSERT INTO `Ciudades` VALUES (1503, 15, 'Iguazú');
INSERT INTO `Ciudades` VALUES (1504, 15, 'Itacaruaré');
INSERT INTO `Ciudades` VALUES (1505, 15, 'Jardín América');
INSERT INTO `Ciudades` VALUES (1506, 15, 'Leandro N. Alem');
INSERT INTO `Ciudades` VALUES (1507, 15, 'Libertad');
INSERT INTO `Ciudades` VALUES (1508, 15, 'Loreto');
INSERT INTO `Ciudades` VALUES (1509, 15, 'Los Helechos');
INSERT INTO `Ciudades` VALUES (1510, 15, 'Mártires');
INSERT INTO `Ciudades` VALUES (1511, 15, 'Misiones');
INSERT INTO `Ciudades` VALUES (1512, 15, 'Mojón Grande');
INSERT INTO `Ciudades` VALUES (1513, 15, 'Montecarlo');
INSERT INTO `Ciudades` VALUES (1514, 15, 'Nueve de Julio');
INSERT INTO `Ciudades` VALUES (1515, 15, 'Oberá');
INSERT INTO `Ciudades` VALUES (1516, 15, 'Olegario V. Andrade');
INSERT INTO `Ciudades` VALUES (1517, 15, 'Panambí');
INSERT INTO `Ciudades` VALUES (1518, 15, 'Posadas');
INSERT INTO `Ciudades` VALUES (1519, 15, 'Profundidad');
INSERT INTO `Ciudades` VALUES (1520, 15, 'Pto. Iguazú');
INSERT INTO `Ciudades` VALUES (1521, 15, 'Pto. Leoni');
INSERT INTO `Ciudades` VALUES (1522, 15, 'Pto. Piray');
INSERT INTO `Ciudades` VALUES (1523, 15, 'Pto. Rico');
INSERT INTO `Ciudades` VALUES (1524, 15, 'Ruiz de Montoya');
INSERT INTO `Ciudades` VALUES (1525, 15, 'San Antonio');
INSERT INTO `Ciudades` VALUES (1526, 15, 'San Ignacio');
INSERT INTO `Ciudades` VALUES (1527, 15, 'San Javier');
INSERT INTO `Ciudades` VALUES (1528, 15, 'San José');
INSERT INTO `Ciudades` VALUES (1529, 15, 'San Martín');
INSERT INTO `Ciudades` VALUES (1530, 15, 'San Pedro');
INSERT INTO `Ciudades` VALUES (1531, 15, 'San Vicente');
INSERT INTO `Ciudades` VALUES (1532, 15, 'Santiago De Liniers');
INSERT INTO `Ciudades` VALUES (1533, 15, 'Santo Pipo');
INSERT INTO `Ciudades` VALUES (1534, 15, 'Sta. Ana');
INSERT INTO `Ciudades` VALUES (1535, 15, 'Sta. María');
INSERT INTO `Ciudades` VALUES (1536, 15, 'Tres Capones');
INSERT INTO `Ciudades` VALUES (1537, 15, 'Veinticinco de Mayo');
INSERT INTO `Ciudades` VALUES (1538, 15, 'Wanda');
INSERT INTO `Ciudades` VALUES (1539, 16, 'Aguada San Roque');
INSERT INTO `Ciudades` VALUES (1540, 16, 'Aluminé');
INSERT INTO `Ciudades` VALUES (1541, 16, 'Andacollo');
INSERT INTO `Ciudades` VALUES (1542, 16, 'Añelo');
INSERT INTO `Ciudades` VALUES (1543, 16, 'Bajada del Agrio');
INSERT INTO `Ciudades` VALUES (1544, 16, 'Barrancas');
INSERT INTO `Ciudades` VALUES (1545, 16, 'Buta Ranquil');
INSERT INTO `Ciudades` VALUES (1546, 16, 'Capital');
INSERT INTO `Ciudades` VALUES (1547, 16, 'Caviahué');
INSERT INTO `Ciudades` VALUES (1548, 16, 'Centenario');
INSERT INTO `Ciudades` VALUES (1549, 16, 'Chorriaca');
INSERT INTO `Ciudades` VALUES (1550, 16, 'Chos Malal');
INSERT INTO `Ciudades` VALUES (1551, 16, 'Cipolletti');
INSERT INTO `Ciudades` VALUES (1552, 16, 'Covunco Abajo');
INSERT INTO `Ciudades` VALUES (1553, 16, 'Coyuco Cochico');
INSERT INTO `Ciudades` VALUES (1554, 16, 'Cutral Có');
INSERT INTO `Ciudades` VALUES (1555, 16, 'El Cholar');
INSERT INTO `Ciudades` VALUES (1556, 16, 'El Huecú');
INSERT INTO `Ciudades` VALUES (1557, 16, 'El Sauce');
INSERT INTO `Ciudades` VALUES (1558, 16, 'Guañacos');
INSERT INTO `Ciudades` VALUES (1559, 16, 'Huinganco');
INSERT INTO `Ciudades` VALUES (1560, 16, 'Las Coloradas');
INSERT INTO `Ciudades` VALUES (1561, 16, 'Las Lajas');
INSERT INTO `Ciudades` VALUES (1562, 16, 'Las Ovejas');
INSERT INTO `Ciudades` VALUES (1563, 16, 'Loncopué');
INSERT INTO `Ciudades` VALUES (1564, 16, 'Los Catutos');
INSERT INTO `Ciudades` VALUES (1565, 16, 'Los Chihuidos');
INSERT INTO `Ciudades` VALUES (1566, 16, 'Los Miches');
INSERT INTO `Ciudades` VALUES (1567, 16, 'Manzano Amargo');
INSERT INTO `Ciudades` VALUES (1568, 16, 'Neuquén');
INSERT INTO `Ciudades` VALUES (1569, 16, 'Octavio Pico');
INSERT INTO `Ciudades` VALUES (1570, 16, 'Paso Aguerre');
INSERT INTO `Ciudades` VALUES (1571, 16, 'Picún Leufú');
INSERT INTO `Ciudades` VALUES (1572, 16, 'Piedra del Aguila');
INSERT INTO `Ciudades` VALUES (1573, 16, 'Pilo Lil');
INSERT INTO `Ciudades` VALUES (1574, 16, 'Plaza Huincul');
INSERT INTO `Ciudades` VALUES (1575, 16, 'Plottier');
INSERT INTO `Ciudades` VALUES (1576, 16, 'Quili Malal');
INSERT INTO `Ciudades` VALUES (1577, 16, 'Ramón Castro');
INSERT INTO `Ciudades` VALUES (1578, 16, 'Rincón de Los Sauces');
INSERT INTO `Ciudades` VALUES (1579, 16, 'San Martín de Los Andes');
INSERT INTO `Ciudades` VALUES (1580, 16, 'San Patricio del Chañar');
INSERT INTO `Ciudades` VALUES (1581, 16, 'Santo Tomás');
INSERT INTO `Ciudades` VALUES (1582, 16, 'Sauzal Bonito');
INSERT INTO `Ciudades` VALUES (1583, 16, 'Senillosa');
INSERT INTO `Ciudades` VALUES (1584, 16, 'Taquimilán');
INSERT INTO `Ciudades` VALUES (1585, 16, 'Tricao Malal');
INSERT INTO `Ciudades` VALUES (1586, 16, 'Varvarco');
INSERT INTO `Ciudades` VALUES (1587, 16, 'Villa Curí Leuvu');
INSERT INTO `Ciudades` VALUES (1588, 16, 'Villa del Nahueve');
INSERT INTO `Ciudades` VALUES (1589, 16, 'Villa del Puente Picún Leuvú');
INSERT INTO `Ciudades` VALUES (1590, 16, 'Villa El Chocón');
INSERT INTO `Ciudades` VALUES (1591, 16, 'Villa La Angostura');
INSERT INTO `Ciudades` VALUES (1592, 16, 'Villa Pehuenia');
INSERT INTO `Ciudades` VALUES (1593, 16, 'Villa Traful');
INSERT INTO `Ciudades` VALUES (1594, 16, 'Vista Alegre');
INSERT INTO `Ciudades` VALUES (1595, 16, 'Zapala');
INSERT INTO `Ciudades` VALUES (1596, 17, 'Aguada Cecilio');
INSERT INTO `Ciudades` VALUES (1597, 17, 'Aguada de Guerra');
INSERT INTO `Ciudades` VALUES (1598, 17, 'Allén');
INSERT INTO `Ciudades` VALUES (1599, 17, 'Arroyo de La Ventana');
INSERT INTO `Ciudades` VALUES (1600, 17, 'Arroyo Los Berros');
INSERT INTO `Ciudades` VALUES (1601, 17, 'Bariloche');
INSERT INTO `Ciudades` VALUES (1602, 17, 'Calte. Cordero');
INSERT INTO `Ciudades` VALUES (1603, 17, 'Campo Grande');
INSERT INTO `Ciudades` VALUES (1604, 17, 'Catriel');
INSERT INTO `Ciudades` VALUES (1605, 17, 'Cerro Policía');
INSERT INTO `Ciudades` VALUES (1606, 17, 'Cervantes');
INSERT INTO `Ciudades` VALUES (1607, 17, 'Chelforo');
INSERT INTO `Ciudades` VALUES (1608, 17, 'Chimpay');
INSERT INTO `Ciudades` VALUES (1609, 17, 'Chinchinales');
INSERT INTO `Ciudades` VALUES (1610, 17, 'Chipauquil');
INSERT INTO `Ciudades` VALUES (1611, 17, 'Choele Choel');
INSERT INTO `Ciudades` VALUES (1612, 17, 'Cinco Saltos');
INSERT INTO `Ciudades` VALUES (1613, 17, 'Cipolletti');
INSERT INTO `Ciudades` VALUES (1614, 17, 'Clemente Onelli');
INSERT INTO `Ciudades` VALUES (1615, 17, 'Colán Conhue');
INSERT INTO `Ciudades` VALUES (1616, 17, 'Comallo');
INSERT INTO `Ciudades` VALUES (1617, 17, 'Comicó');
INSERT INTO `Ciudades` VALUES (1618, 17, 'Cona Niyeu');
INSERT INTO `Ciudades` VALUES (1619, 17, 'Coronel Belisle');
INSERT INTO `Ciudades` VALUES (1620, 17, 'Cubanea');
INSERT INTO `Ciudades` VALUES (1621, 17, 'Darwin');
INSERT INTO `Ciudades` VALUES (1622, 17, 'Dina Huapi');
INSERT INTO `Ciudades` VALUES (1623, 17, 'El Bolsón');
INSERT INTO `Ciudades` VALUES (1624, 17, 'El Caín');
INSERT INTO `Ciudades` VALUES (1625, 17, 'El Manso');
INSERT INTO `Ciudades` VALUES (1626, 17, 'Gral. Conesa');
INSERT INTO `Ciudades` VALUES (1627, 17, 'Gral. Enrique Godoy');
INSERT INTO `Ciudades` VALUES (1628, 17, 'Gral. Fernandez Oro');
INSERT INTO `Ciudades` VALUES (1629, 17, 'Gral. Roca');
INSERT INTO `Ciudades` VALUES (1630, 17, 'Guardia Mitre');
INSERT INTO `Ciudades` VALUES (1631, 17, 'Ing. Huergo');
INSERT INTO `Ciudades` VALUES (1632, 17, 'Ing. Jacobacci');
INSERT INTO `Ciudades` VALUES (1633, 17, 'Laguna Blanca');
INSERT INTO `Ciudades` VALUES (1634, 17, 'Lamarque');
INSERT INTO `Ciudades` VALUES (1635, 17, 'Las Grutas');
INSERT INTO `Ciudades` VALUES (1636, 17, 'Los Menucos');
INSERT INTO `Ciudades` VALUES (1637, 17, 'Luis Beltrán');
INSERT INTO `Ciudades` VALUES (1638, 17, 'Mainqué');
INSERT INTO `Ciudades` VALUES (1639, 17, 'Mamuel Choique');
INSERT INTO `Ciudades` VALUES (1640, 17, 'Maquinchao');
INSERT INTO `Ciudades` VALUES (1641, 17, 'Mencué');
INSERT INTO `Ciudades` VALUES (1642, 17, 'Mtro. Ramos Mexia');
INSERT INTO `Ciudades` VALUES (1643, 17, 'Nahuel Niyeu');
INSERT INTO `Ciudades` VALUES (1644, 17, 'Naupa Huen');
INSERT INTO `Ciudades` VALUES (1645, 17, 'Ñorquinco');
INSERT INTO `Ciudades` VALUES (1646, 17, 'Ojos de Agua');
INSERT INTO `Ciudades` VALUES (1647, 17, 'Paso de Agua');
INSERT INTO `Ciudades` VALUES (1648, 17, 'Paso Flores');
INSERT INTO `Ciudades` VALUES (1649, 17, 'Peñas Blancas');
INSERT INTO `Ciudades` VALUES (1650, 17, 'Pichi Mahuida');
INSERT INTO `Ciudades` VALUES (1651, 17, 'Pilcaniyeu');
INSERT INTO `Ciudades` VALUES (1652, 17, 'Pomona');
INSERT INTO `Ciudades` VALUES (1653, 17, 'Prahuaniyeu');
INSERT INTO `Ciudades` VALUES (1654, 17, 'Rincón Treneta');
INSERT INTO `Ciudades` VALUES (1655, 17, 'Río Chico');
INSERT INTO `Ciudades` VALUES (1656, 17, 'Río Colorado');
INSERT INTO `Ciudades` VALUES (1657, 17, 'Roca');
INSERT INTO `Ciudades` VALUES (1658, 17, 'San Antonio Oeste');
INSERT INTO `Ciudades` VALUES (1659, 17, 'San Javier');
INSERT INTO `Ciudades` VALUES (1660, 17, 'Sierra Colorada');
INSERT INTO `Ciudades` VALUES (1661, 17, 'Sierra Grande');
INSERT INTO `Ciudades` VALUES (1662, 17, 'Sierra Pailemán');
INSERT INTO `Ciudades` VALUES (1663, 17, 'Valcheta');
INSERT INTO `Ciudades` VALUES (1664, 17, 'Valle Azul');
INSERT INTO `Ciudades` VALUES (1665, 17, 'Viedma');
INSERT INTO `Ciudades` VALUES (1666, 17, 'Villa Llanquín');
INSERT INTO `Ciudades` VALUES (1667, 17, 'Villa Mascardi');
INSERT INTO `Ciudades` VALUES (1668, 17, 'Villa Regina');
INSERT INTO `Ciudades` VALUES (1669, 17, 'Yaminué');
INSERT INTO `Ciudades` VALUES (1670, 18, 'A. Saravia');
INSERT INTO `Ciudades` VALUES (1671, 18, 'Aguaray');
INSERT INTO `Ciudades` VALUES (1672, 18, 'Angastaco');
INSERT INTO `Ciudades` VALUES (1673, 18, 'Animaná');
INSERT INTO `Ciudades` VALUES (1674, 18, 'Cachi');
INSERT INTO `Ciudades` VALUES (1675, 18, 'Cafayate');
INSERT INTO `Ciudades` VALUES (1676, 18, 'Campo Quijano');
INSERT INTO `Ciudades` VALUES (1677, 18, 'Campo Santo');
INSERT INTO `Ciudades` VALUES (1678, 18, 'Capital');
INSERT INTO `Ciudades` VALUES (1679, 18, 'Cerrillos');
INSERT INTO `Ciudades` VALUES (1680, 18, 'Chicoana');
INSERT INTO `Ciudades` VALUES (1681, 18, 'Col. Sta. Rosa');
INSERT INTO `Ciudades` VALUES (1682, 18, 'Coronel Moldes');
INSERT INTO `Ciudades` VALUES (1683, 18, 'El Bordo');
INSERT INTO `Ciudades` VALUES (1684, 18, 'El Carril');
INSERT INTO `Ciudades` VALUES (1685, 18, 'El Galpón');
INSERT INTO `Ciudades` VALUES (1686, 18, 'El Jardín');
INSERT INTO `Ciudades` VALUES (1687, 18, 'El Potrero');
INSERT INTO `Ciudades` VALUES (1688, 18, 'El Quebrachal');
INSERT INTO `Ciudades` VALUES (1689, 18, 'El Tala');
INSERT INTO `Ciudades` VALUES (1690, 18, 'Embarcación');
INSERT INTO `Ciudades` VALUES (1691, 18, 'Gral. Ballivian');
INSERT INTO `Ciudades` VALUES (1692, 18, 'Gral. Güemes');
INSERT INTO `Ciudades` VALUES (1693, 18, 'Gral. Mosconi');
INSERT INTO `Ciudades` VALUES (1694, 18, 'Gral. Pizarro');
INSERT INTO `Ciudades` VALUES (1695, 18, 'Guachipas');
INSERT INTO `Ciudades` VALUES (1696, 18, 'Hipólito Yrigoyen');
INSERT INTO `Ciudades` VALUES (1697, 18, 'Iruyá');
INSERT INTO `Ciudades` VALUES (1698, 18, 'Isla De Cañas');
INSERT INTO `Ciudades` VALUES (1699, 18, 'J. V. Gonzalez');
INSERT INTO `Ciudades` VALUES (1700, 18, 'La Caldera');
INSERT INTO `Ciudades` VALUES (1701, 18, 'La Candelaria');
INSERT INTO `Ciudades` VALUES (1702, 18, 'La Merced');
INSERT INTO `Ciudades` VALUES (1703, 18, 'La Poma');
INSERT INTO `Ciudades` VALUES (1704, 18, 'La Viña');
INSERT INTO `Ciudades` VALUES (1705, 18, 'Las Lajitas');
INSERT INTO `Ciudades` VALUES (1706, 18, 'Los Toldos');
INSERT INTO `Ciudades` VALUES (1707, 18, 'Metán');
INSERT INTO `Ciudades` VALUES (1708, 18, 'Molinos');
INSERT INTO `Ciudades` VALUES (1709, 18, 'Nazareno');
INSERT INTO `Ciudades` VALUES (1710, 18, 'Orán');
INSERT INTO `Ciudades` VALUES (1711, 18, 'Payogasta');
INSERT INTO `Ciudades` VALUES (1712, 18, 'Pichanal');
INSERT INTO `Ciudades` VALUES (1713, 18, 'Prof. S. Mazza');
INSERT INTO `Ciudades` VALUES (1714, 18, 'Río Piedras');
INSERT INTO `Ciudades` VALUES (1715, 18, 'Rivadavia Banda Norte');
INSERT INTO `Ciudades` VALUES (1716, 18, 'Rivadavia Banda Sur');
INSERT INTO `Ciudades` VALUES (1717, 18, 'Rosario de La Frontera');
INSERT INTO `Ciudades` VALUES (1718, 18, 'Rosario de Lerma');
INSERT INTO `Ciudades` VALUES (1719, 18, 'Saclantás');
INSERT INTO `Ciudades` VALUES (1720, 18, 'Salta');
INSERT INTO `Ciudades` VALUES (1721, 18, 'San Antonio');
INSERT INTO `Ciudades` VALUES (1722, 18, 'San Carlos');
INSERT INTO `Ciudades` VALUES (1723, 18, 'San José De Metán');
INSERT INTO `Ciudades` VALUES (1724, 18, 'San Ramón');
INSERT INTO `Ciudades` VALUES (1725, 18, 'Santa Victoria E.');
INSERT INTO `Ciudades` VALUES (1726, 18, 'Santa Victoria O.');
INSERT INTO `Ciudades` VALUES (1727, 18, 'Tartagal');
INSERT INTO `Ciudades` VALUES (1728, 18, 'Tolar Grande');
INSERT INTO `Ciudades` VALUES (1729, 18, 'Urundel');
INSERT INTO `Ciudades` VALUES (1730, 18, 'Vaqueros');
INSERT INTO `Ciudades` VALUES (1731, 18, 'Villa San Lorenzo');
INSERT INTO `Ciudades` VALUES (1732, 19, 'Albardón');
INSERT INTO `Ciudades` VALUES (1733, 19, 'Angaco');
INSERT INTO `Ciudades` VALUES (1734, 19, 'Calingasta');
INSERT INTO `Ciudades` VALUES (1735, 19, 'Capital');
INSERT INTO `Ciudades` VALUES (1736, 19, 'Caucete');
INSERT INTO `Ciudades` VALUES (1737, 19, 'Chimbas');
INSERT INTO `Ciudades` VALUES (1738, 19, 'Iglesia');
INSERT INTO `Ciudades` VALUES (1739, 19, 'Jachal');
INSERT INTO `Ciudades` VALUES (1740, 19, 'Nueve de Julio');
INSERT INTO `Ciudades` VALUES (1741, 19, 'Pocito');
INSERT INTO `Ciudades` VALUES (1742, 19, 'Rawson');
INSERT INTO `Ciudades` VALUES (1743, 19, 'Rivadavia');
INSERT INTO `Ciudades` VALUES (1744, 19, 'San Juan');
INSERT INTO `Ciudades` VALUES (1745, 19, 'San Martín');
INSERT INTO `Ciudades` VALUES (1746, 19, 'Santa Lucía');
INSERT INTO `Ciudades` VALUES (1747, 19, 'Sarmiento');
INSERT INTO `Ciudades` VALUES (1748, 19, 'Ullum');
INSERT INTO `Ciudades` VALUES (1749, 19, 'Valle Fértil');
INSERT INTO `Ciudades` VALUES (1750, 19, 'Veinticinco de Mayo');
INSERT INTO `Ciudades` VALUES (1751, 19, 'Zonda');
INSERT INTO `Ciudades` VALUES (1752, 20, 'Alto Pelado');
INSERT INTO `Ciudades` VALUES (1753, 20, 'Alto Pencoso');
INSERT INTO `Ciudades` VALUES (1754, 20, 'Anchorena');
INSERT INTO `Ciudades` VALUES (1755, 20, 'Arizona');
INSERT INTO `Ciudades` VALUES (1756, 20, 'Bagual');
INSERT INTO `Ciudades` VALUES (1757, 20, 'Balde');
INSERT INTO `Ciudades` VALUES (1758, 20, 'Batavia');
INSERT INTO `Ciudades` VALUES (1759, 20, 'Beazley');
INSERT INTO `Ciudades` VALUES (1760, 20, 'Buena Esperanza');
INSERT INTO `Ciudades` VALUES (1761, 20, 'Candelaria');
INSERT INTO `Ciudades` VALUES (1762, 20, 'Capital');
INSERT INTO `Ciudades` VALUES (1763, 20, 'Carolina');
INSERT INTO `Ciudades` VALUES (1764, 20, 'Carpintería');
INSERT INTO `Ciudades` VALUES (1765, 20, 'Concarán');
INSERT INTO `Ciudades` VALUES (1766, 20, 'Cortaderas');
INSERT INTO `Ciudades` VALUES (1767, 20, 'El Morro');
INSERT INTO `Ciudades` VALUES (1768, 20, 'El Trapiche');
INSERT INTO `Ciudades` VALUES (1769, 20, 'El Volcán');
INSERT INTO `Ciudades` VALUES (1770, 20, 'Fortín El Patria');
INSERT INTO `Ciudades` VALUES (1771, 20, 'Fortuna');
INSERT INTO `Ciudades` VALUES (1772, 20, 'Fraga');
INSERT INTO `Ciudades` VALUES (1773, 20, 'Juan Jorba');
INSERT INTO `Ciudades` VALUES (1774, 20, 'Juan Llerena');
INSERT INTO `Ciudades` VALUES (1775, 20, 'Juana Koslay');
INSERT INTO `Ciudades` VALUES (1776, 20, 'Justo Daract');
INSERT INTO `Ciudades` VALUES (1777, 20, 'La Calera');
INSERT INTO `Ciudades` VALUES (1778, 20, 'La Florida');
INSERT INTO `Ciudades` VALUES (1779, 20, 'La Punilla');
INSERT INTO `Ciudades` VALUES (1780, 20, 'La Toma');
INSERT INTO `Ciudades` VALUES (1781, 20, 'Lafinur');
INSERT INTO `Ciudades` VALUES (1782, 20, 'Las Aguadas');
INSERT INTO `Ciudades` VALUES (1783, 20, 'Las Chacras');
INSERT INTO `Ciudades` VALUES (1784, 20, 'Las Lagunas');
INSERT INTO `Ciudades` VALUES (1785, 20, 'Las Vertientes');
INSERT INTO `Ciudades` VALUES (1786, 20, 'Lavaisse');
INSERT INTO `Ciudades` VALUES (1787, 20, 'Leandro N. Alem');
INSERT INTO `Ciudades` VALUES (1788, 20, 'Los Molles');
INSERT INTO `Ciudades` VALUES (1789, 20, 'Luján');
INSERT INTO `Ciudades` VALUES (1790, 20, 'Mercedes');
INSERT INTO `Ciudades` VALUES (1791, 20, 'Merlo');
INSERT INTO `Ciudades` VALUES (1792, 20, 'Naschel');
INSERT INTO `Ciudades` VALUES (1793, 20, 'Navia');
INSERT INTO `Ciudades` VALUES (1794, 20, 'Nogolí');
INSERT INTO `Ciudades` VALUES (1795, 20, 'Nueva Galia');
INSERT INTO `Ciudades` VALUES (1796, 20, 'Papagayos');
INSERT INTO `Ciudades` VALUES (1797, 20, 'Paso Grande');
INSERT INTO `Ciudades` VALUES (1798, 20, 'Potrero de Los Funes');
INSERT INTO `Ciudades` VALUES (1799, 20, 'Quines');
INSERT INTO `Ciudades` VALUES (1800, 20, 'Renca');
INSERT INTO `Ciudades` VALUES (1801, 20, 'Saladillo');
INSERT INTO `Ciudades` VALUES (1802, 20, 'San Francisco');
INSERT INTO `Ciudades` VALUES (1803, 20, 'San Gerónimo');
INSERT INTO `Ciudades` VALUES (1804, 20, 'San Martín');
INSERT INTO `Ciudades` VALUES (1805, 20, 'San Pablo');
INSERT INTO `Ciudades` VALUES (1806, 20, 'Santa Rosa de Conlara');
INSERT INTO `Ciudades` VALUES (1807, 20, 'Talita');
INSERT INTO `Ciudades` VALUES (1808, 20, 'Tilisarao');
INSERT INTO `Ciudades` VALUES (1809, 20, 'Unión');
INSERT INTO `Ciudades` VALUES (1810, 20, 'Villa de La Quebrada');
INSERT INTO `Ciudades` VALUES (1811, 20, 'Villa de Praga');
INSERT INTO `Ciudades` VALUES (1812, 20, 'Villa del Carmen');
INSERT INTO `Ciudades` VALUES (1813, 20, 'Villa Gral. Roca');
INSERT INTO `Ciudades` VALUES (1814, 20, 'Villa Larca');
INSERT INTO `Ciudades` VALUES (1815, 20, 'Villa Mercedes');
INSERT INTO `Ciudades` VALUES (1816, 20, 'Zanjitas');
INSERT INTO `Ciudades` VALUES (1817, 21, 'Calafate');
INSERT INTO `Ciudades` VALUES (1818, 21, 'Caleta Olivia');
INSERT INTO `Ciudades` VALUES (1819, 21, 'Cañadón Seco');
INSERT INTO `Ciudades` VALUES (1820, 21, 'Comandante Piedrabuena');
INSERT INTO `Ciudades` VALUES (1821, 21, 'El Calafate');
INSERT INTO `Ciudades` VALUES (1822, 21, 'El Chaltén');
INSERT INTO `Ciudades` VALUES (1823, 21, 'Gdor. Gregores');
INSERT INTO `Ciudades` VALUES (1824, 21, 'Hipólito Yrigoyen');
INSERT INTO `Ciudades` VALUES (1825, 21, 'Jaramillo');
INSERT INTO `Ciudades` VALUES (1826, 21, 'Koluel Kaike');
INSERT INTO `Ciudades` VALUES (1827, 21, 'Las Heras');
INSERT INTO `Ciudades` VALUES (1828, 21, 'Los Antiguos');
INSERT INTO `Ciudades` VALUES (1829, 21, 'Perito Moreno');
INSERT INTO `Ciudades` VALUES (1830, 21, 'Pico Truncado');
INSERT INTO `Ciudades` VALUES (1831, 21, 'Pto. Deseado');
INSERT INTO `Ciudades` VALUES (1832, 21, 'Pto. San Julián');
INSERT INTO `Ciudades` VALUES (1833, 21, 'Pto. Santa Cruz');
INSERT INTO `Ciudades` VALUES (1834, 21, 'Río Cuarto');
INSERT INTO `Ciudades` VALUES (1835, 21, 'Río Gallegos');
INSERT INTO `Ciudades` VALUES (1836, 21, 'Río Turbio');
INSERT INTO `Ciudades` VALUES (1837, 21, 'Tres Lagos');
INSERT INTO `Ciudades` VALUES (1838, 21, 'Veintiocho De Noviembre');
INSERT INTO `Ciudades` VALUES (1839, 22, 'Aarón Castellanos');
INSERT INTO `Ciudades` VALUES (1840, 22, 'Acebal');
INSERT INTO `Ciudades` VALUES (1841, 22, 'Aguará Grande');
INSERT INTO `Ciudades` VALUES (1842, 22, 'Albarellos');
INSERT INTO `Ciudades` VALUES (1843, 22, 'Alcorta');
INSERT INTO `Ciudades` VALUES (1844, 22, 'Aldao');
INSERT INTO `Ciudades` VALUES (1845, 22, 'Alejandra');
INSERT INTO `Ciudades` VALUES (1846, 22, 'Álvarez');
INSERT INTO `Ciudades` VALUES (1847, 22, 'Ambrosetti');
INSERT INTO `Ciudades` VALUES (1848, 22, 'Amenábar');
INSERT INTO `Ciudades` VALUES (1849, 22, 'Angélica');
INSERT INTO `Ciudades` VALUES (1850, 22, 'Angeloni');
INSERT INTO `Ciudades` VALUES (1851, 22, 'Arequito');
INSERT INTO `Ciudades` VALUES (1852, 22, 'Arminda');
INSERT INTO `Ciudades` VALUES (1853, 22, 'Armstrong');
INSERT INTO `Ciudades` VALUES (1854, 22, 'Arocena');
INSERT INTO `Ciudades` VALUES (1855, 22, 'Arroyo Aguiar');
INSERT INTO `Ciudades` VALUES (1856, 22, 'Arroyo Ceibal');
INSERT INTO `Ciudades` VALUES (1857, 22, 'Arroyo Leyes');
INSERT INTO `Ciudades` VALUES (1858, 22, 'Arroyo Seco');
INSERT INTO `Ciudades` VALUES (1859, 22, 'Arrufó');
INSERT INTO `Ciudades` VALUES (1860, 22, 'Arteaga');
INSERT INTO `Ciudades` VALUES (1861, 22, 'Ataliva');
INSERT INTO `Ciudades` VALUES (1862, 22, 'Aurelia');
INSERT INTO `Ciudades` VALUES (1863, 22, 'Avellaneda');
INSERT INTO `Ciudades` VALUES (1864, 22, 'Barrancas');
INSERT INTO `Ciudades` VALUES (1865, 22, 'Bauer Y Sigel');
INSERT INTO `Ciudades` VALUES (1866, 22, 'Bella Italia');
INSERT INTO `Ciudades` VALUES (1867, 22, 'Berabevú');
INSERT INTO `Ciudades` VALUES (1868, 22, 'Berna');
INSERT INTO `Ciudades` VALUES (1869, 22, 'Bernardo de Irigoyen');
INSERT INTO `Ciudades` VALUES (1870, 22, 'Bigand');
INSERT INTO `Ciudades` VALUES (1871, 22, 'Bombal');
INSERT INTO `Ciudades` VALUES (1872, 22, 'Bouquet');
INSERT INTO `Ciudades` VALUES (1873, 22, 'Bustinza');
INSERT INTO `Ciudades` VALUES (1874, 22, 'Cabal');
INSERT INTO `Ciudades` VALUES (1875, 22, 'Cacique Ariacaiquin');
INSERT INTO `Ciudades` VALUES (1876, 22, 'Cafferata');
INSERT INTO `Ciudades` VALUES (1877, 22, 'Calchaquí');
INSERT INTO `Ciudades` VALUES (1878, 22, 'Campo Andino');
INSERT INTO `Ciudades` VALUES (1879, 22, 'Campo Piaggio');
INSERT INTO `Ciudades` VALUES (1880, 22, 'Cañada de Gómez');
INSERT INTO `Ciudades` VALUES (1881, 22, 'Cañada del Ucle');
INSERT INTO `Ciudades` VALUES (1882, 22, 'Cañada Rica');
INSERT INTO `Ciudades` VALUES (1883, 22, 'Cañada Rosquín');
INSERT INTO `Ciudades` VALUES (1884, 22, 'Candioti');
INSERT INTO `Ciudades` VALUES (1885, 22, 'Capital');
INSERT INTO `Ciudades` VALUES (1886, 22, 'Capitán Bermúdez');
INSERT INTO `Ciudades` VALUES (1887, 22, 'Capivara');
INSERT INTO `Ciudades` VALUES (1888, 22, 'Carcarañá');
INSERT INTO `Ciudades` VALUES (1889, 22, 'Carlos Pellegrini');
INSERT INTO `Ciudades` VALUES (1890, 22, 'Carmen');
INSERT INTO `Ciudades` VALUES (1891, 22, 'Carmen Del Sauce');
INSERT INTO `Ciudades` VALUES (1892, 22, 'Carreras');
INSERT INTO `Ciudades` VALUES (1893, 22, 'Carrizales');
INSERT INTO `Ciudades` VALUES (1894, 22, 'Casalegno');
INSERT INTO `Ciudades` VALUES (1895, 22, 'Casas');
INSERT INTO `Ciudades` VALUES (1896, 22, 'Casilda');
INSERT INTO `Ciudades` VALUES (1897, 22, 'Castelar');
INSERT INTO `Ciudades` VALUES (1898, 22, 'Castellanos');
INSERT INTO `Ciudades` VALUES (1899, 22, 'Cayastá');
INSERT INTO `Ciudades` VALUES (1900, 22, 'Cayastacito');
INSERT INTO `Ciudades` VALUES (1901, 22, 'Centeno');
INSERT INTO `Ciudades` VALUES (1902, 22, 'Cepeda');
INSERT INTO `Ciudades` VALUES (1903, 22, 'Ceres');
INSERT INTO `Ciudades` VALUES (1904, 22, 'Chabás');
INSERT INTO `Ciudades` VALUES (1905, 22, 'Chañar Ladeado');
INSERT INTO `Ciudades` VALUES (1906, 22, 'Chapuy');
INSERT INTO `Ciudades` VALUES (1907, 22, 'Chovet');
INSERT INTO `Ciudades` VALUES (1908, 22, 'Christophersen');
INSERT INTO `Ciudades` VALUES (1909, 22, 'Classon');
INSERT INTO `Ciudades` VALUES (1910, 22, 'Cnel. Arnold');
INSERT INTO `Ciudades` VALUES (1911, 22, 'Cnel. Bogado');
INSERT INTO `Ciudades` VALUES (1912, 22, 'Cnel. Dominguez');
INSERT INTO `Ciudades` VALUES (1913, 22, 'Cnel. Fraga');
INSERT INTO `Ciudades` VALUES (1914, 22, 'Col. Aldao');
INSERT INTO `Ciudades` VALUES (1915, 22, 'Col. Ana');
INSERT INTO `Ciudades` VALUES (1916, 22, 'Col. Belgrano');
INSERT INTO `Ciudades` VALUES (1917, 22, 'Col. Bicha');
INSERT INTO `Ciudades` VALUES (1918, 22, 'Col. Bigand');
INSERT INTO `Ciudades` VALUES (1919, 22, 'Col. Bossi');
INSERT INTO `Ciudades` VALUES (1920, 22, 'Col. Cavour');
INSERT INTO `Ciudades` VALUES (1921, 22, 'Col. Cello');
INSERT INTO `Ciudades` VALUES (1922, 22, 'Col. Dolores');
INSERT INTO `Ciudades` VALUES (1923, 22, 'Col. Dos Rosas');
INSERT INTO `Ciudades` VALUES (1924, 22, 'Col. Durán');
INSERT INTO `Ciudades` VALUES (1925, 22, 'Col. Iturraspe');
INSERT INTO `Ciudades` VALUES (1926, 22, 'Col. Margarita');
INSERT INTO `Ciudades` VALUES (1927, 22, 'Col. Mascias');
INSERT INTO `Ciudades` VALUES (1928, 22, 'Col. Raquel');
INSERT INTO `Ciudades` VALUES (1929, 22, 'Col. Rosa');
INSERT INTO `Ciudades` VALUES (1930, 22, 'Col. San José');
INSERT INTO `Ciudades` VALUES (1931, 22, 'Constanza');
INSERT INTO `Ciudades` VALUES (1932, 22, 'Coronda');
INSERT INTO `Ciudades` VALUES (1933, 22, 'Correa');
INSERT INTO `Ciudades` VALUES (1934, 22, 'Crispi');
INSERT INTO `Ciudades` VALUES (1935, 22, 'Cululú');
INSERT INTO `Ciudades` VALUES (1936, 22, 'Curupayti');
INSERT INTO `Ciudades` VALUES (1937, 22, 'Desvio Arijón');
INSERT INTO `Ciudades` VALUES (1938, 22, 'Diaz');
INSERT INTO `Ciudades` VALUES (1939, 22, 'Diego de Alvear');
INSERT INTO `Ciudades` VALUES (1940, 22, 'Egusquiza');
INSERT INTO `Ciudades` VALUES (1941, 22, 'El Arazá');
INSERT INTO `Ciudades` VALUES (1942, 22, 'El Rabón');
INSERT INTO `Ciudades` VALUES (1943, 22, 'El Sombrerito');
INSERT INTO `Ciudades` VALUES (1944, 22, 'El Trébol');
INSERT INTO `Ciudades` VALUES (1945, 22, 'Elisa');
INSERT INTO `Ciudades` VALUES (1946, 22, 'Elortondo');
INSERT INTO `Ciudades` VALUES (1947, 22, 'Emilia');
INSERT INTO `Ciudades` VALUES (1948, 22, 'Empalme San Carlos');
INSERT INTO `Ciudades` VALUES (1949, 22, 'Empalme Villa Constitucion');
INSERT INTO `Ciudades` VALUES (1950, 22, 'Esmeralda');
INSERT INTO `Ciudades` VALUES (1951, 22, 'Esperanza');
INSERT INTO `Ciudades` VALUES (1952, 22, 'Estación Alvear');
INSERT INTO `Ciudades` VALUES (1953, 22, 'Estacion Clucellas');
INSERT INTO `Ciudades` VALUES (1954, 22, 'Esteban Rams');
INSERT INTO `Ciudades` VALUES (1955, 22, 'Esther');
INSERT INTO `Ciudades` VALUES (1956, 22, 'Esustolia');
INSERT INTO `Ciudades` VALUES (1957, 22, 'Eusebia');
INSERT INTO `Ciudades` VALUES (1958, 22, 'Felicia');
INSERT INTO `Ciudades` VALUES (1959, 22, 'Fidela');
INSERT INTO `Ciudades` VALUES (1960, 22, 'Fighiera');
INSERT INTO `Ciudades` VALUES (1961, 22, 'Firmat');
INSERT INTO `Ciudades` VALUES (1962, 22, 'Florencia');
INSERT INTO `Ciudades` VALUES (1963, 22, 'Fortín Olmos');
INSERT INTO `Ciudades` VALUES (1964, 22, 'Franck');
INSERT INTO `Ciudades` VALUES (1965, 22, 'Fray Luis Beltrán');
INSERT INTO `Ciudades` VALUES (1966, 22, 'Frontera');
INSERT INTO `Ciudades` VALUES (1967, 22, 'Fuentes');
INSERT INTO `Ciudades` VALUES (1968, 22, 'Funes');
INSERT INTO `Ciudades` VALUES (1969, 22, 'Gaboto');
INSERT INTO `Ciudades` VALUES (1970, 22, 'Galisteo');
INSERT INTO `Ciudades` VALUES (1971, 22, 'Gálvez');
INSERT INTO `Ciudades` VALUES (1972, 22, 'Garabalto');
INSERT INTO `Ciudades` VALUES (1973, 22, 'Garibaldi');
INSERT INTO `Ciudades` VALUES (1974, 22, 'Gato Colorado');
INSERT INTO `Ciudades` VALUES (1975, 22, 'Gdor. Crespo');
INSERT INTO `Ciudades` VALUES (1976, 22, 'Gessler');
INSERT INTO `Ciudades` VALUES (1977, 22, 'Godoy');
INSERT INTO `Ciudades` VALUES (1978, 22, 'Golondrina');
INSERT INTO `Ciudades` VALUES (1979, 22, 'Gral. Gelly');
INSERT INTO `Ciudades` VALUES (1980, 22, 'Gral. Lagos');
INSERT INTO `Ciudades` VALUES (1981, 22, 'Granadero Baigorria');
INSERT INTO `Ciudades` VALUES (1982, 22, 'Gregoria Perez De Denis');
INSERT INTO `Ciudades` VALUES (1983, 22, 'Grutly');
INSERT INTO `Ciudades` VALUES (1984, 22, 'Guadalupe N.');
INSERT INTO `Ciudades` VALUES (1985, 22, 'Gödeken');
INSERT INTO `Ciudades` VALUES (1986, 22, 'Helvecia');
INSERT INTO `Ciudades` VALUES (1987, 22, 'Hersilia');
INSERT INTO `Ciudades` VALUES (1988, 22, 'Hipatía');
INSERT INTO `Ciudades` VALUES (1989, 22, 'Huanqueros');
INSERT INTO `Ciudades` VALUES (1990, 22, 'Hugentobler');
INSERT INTO `Ciudades` VALUES (1991, 22, 'Hughes');
INSERT INTO `Ciudades` VALUES (1992, 22, 'Humberto 1º');
INSERT INTO `Ciudades` VALUES (1993, 22, 'Humboldt');
INSERT INTO `Ciudades` VALUES (1994, 22, 'Ibarlucea');
INSERT INTO `Ciudades` VALUES (1995, 22, 'Ing. Chanourdie');
INSERT INTO `Ciudades` VALUES (1996, 22, 'Intiyaco');
INSERT INTO `Ciudades` VALUES (1997, 22, 'Ituzaingó');
INSERT INTO `Ciudades` VALUES (1998, 22, 'Jacinto L. Aráuz');
INSERT INTO `Ciudades` VALUES (1999, 22, 'Josefina');
INSERT INTO `Ciudades` VALUES (2000, 22, 'Juan B. Molina');
INSERT INTO `Ciudades` VALUES (2001, 22, 'Juan de Garay');
INSERT INTO `Ciudades` VALUES (2002, 22, 'Juncal');
INSERT INTO `Ciudades` VALUES (2003, 22, 'La Brava');
INSERT INTO `Ciudades` VALUES (2004, 22, 'La Cabral');
INSERT INTO `Ciudades` VALUES (2005, 22, 'La Camila');
INSERT INTO `Ciudades` VALUES (2006, 22, 'La Chispa');
INSERT INTO `Ciudades` VALUES (2007, 22, 'La Clara');
INSERT INTO `Ciudades` VALUES (2008, 22, 'La Criolla');
INSERT INTO `Ciudades` VALUES (2009, 22, 'La Gallareta');
INSERT INTO `Ciudades` VALUES (2010, 22, 'La Lucila');
INSERT INTO `Ciudades` VALUES (2011, 22, 'La Pelada');
INSERT INTO `Ciudades` VALUES (2012, 22, 'La Penca');
INSERT INTO `Ciudades` VALUES (2013, 22, 'La Rubia');
INSERT INTO `Ciudades` VALUES (2014, 22, 'La Sarita');
INSERT INTO `Ciudades` VALUES (2015, 22, 'La Vanguardia');
INSERT INTO `Ciudades` VALUES (2016, 22, 'Labordeboy');
INSERT INTO `Ciudades` VALUES (2017, 22, 'Laguna Paiva');
INSERT INTO `Ciudades` VALUES (2018, 22, 'Landeta');
INSERT INTO `Ciudades` VALUES (2019, 22, 'Lanteri');
INSERT INTO `Ciudades` VALUES (2020, 22, 'Larrechea');
INSERT INTO `Ciudades` VALUES (2021, 22, 'Las Avispas');
INSERT INTO `Ciudades` VALUES (2022, 22, 'Las Bandurrias');
INSERT INTO `Ciudades` VALUES (2023, 22, 'Las Garzas');
INSERT INTO `Ciudades` VALUES (2024, 22, 'Las Palmeras');
INSERT INTO `Ciudades` VALUES (2025, 22, 'Las Parejas');
INSERT INTO `Ciudades` VALUES (2026, 22, 'Las Petacas');
INSERT INTO `Ciudades` VALUES (2027, 22, 'Las Rosas');
INSERT INTO `Ciudades` VALUES (2028, 22, 'Las Toscas');
INSERT INTO `Ciudades` VALUES (2029, 22, 'Las Tunas');
INSERT INTO `Ciudades` VALUES (2030, 22, 'Lazzarino');
INSERT INTO `Ciudades` VALUES (2031, 22, 'Lehmann');
INSERT INTO `Ciudades` VALUES (2032, 22, 'Llambi Campbell');
INSERT INTO `Ciudades` VALUES (2033, 22, 'Logroño');
INSERT INTO `Ciudades` VALUES (2034, 22, 'Loma Alta');
INSERT INTO `Ciudades` VALUES (2035, 22, 'López');
INSERT INTO `Ciudades` VALUES (2036, 22, 'Los Amores');
INSERT INTO `Ciudades` VALUES (2037, 22, 'Los Cardos');
INSERT INTO `Ciudades` VALUES (2038, 22, 'Los Laureles');
INSERT INTO `Ciudades` VALUES (2039, 22, 'Los Molinos');
INSERT INTO `Ciudades` VALUES (2040, 22, 'Los Quirquinchos');
INSERT INTO `Ciudades` VALUES (2041, 22, 'Lucio V. Lopez');
INSERT INTO `Ciudades` VALUES (2042, 22, 'Luis Palacios');
INSERT INTO `Ciudades` VALUES (2043, 22, 'Ma. Juana');
INSERT INTO `Ciudades` VALUES (2044, 22, 'Ma. Luisa');
INSERT INTO `Ciudades` VALUES (2045, 22, 'Ma. Susana');
INSERT INTO `Ciudades` VALUES (2046, 22, 'Ma. Teresa');
INSERT INTO `Ciudades` VALUES (2047, 22, 'Maciel');
INSERT INTO `Ciudades` VALUES (2048, 22, 'Maggiolo');
INSERT INTO `Ciudades` VALUES (2049, 22, 'Malabrigo');
INSERT INTO `Ciudades` VALUES (2050, 22, 'Marcelino Escalada');
INSERT INTO `Ciudades` VALUES (2051, 22, 'Margarita');
INSERT INTO `Ciudades` VALUES (2052, 22, 'Matilde');
INSERT INTO `Ciudades` VALUES (2053, 22, 'Mauá');
INSERT INTO `Ciudades` VALUES (2054, 22, 'Máximo Paz');
INSERT INTO `Ciudades` VALUES (2055, 22, 'Melincué');
INSERT INTO `Ciudades` VALUES (2056, 22, 'Miguel Torres');
INSERT INTO `Ciudades` VALUES (2057, 22, 'Moisés Ville');
INSERT INTO `Ciudades` VALUES (2058, 22, 'Monigotes');
INSERT INTO `Ciudades` VALUES (2059, 22, 'Monje');
INSERT INTO `Ciudades` VALUES (2060, 22, 'Monte Obscuridad');
INSERT INTO `Ciudades` VALUES (2061, 22, 'Monte Vera');
INSERT INTO `Ciudades` VALUES (2062, 22, 'Montefiore');
INSERT INTO `Ciudades` VALUES (2063, 22, 'Montes de Oca');
INSERT INTO `Ciudades` VALUES (2064, 22, 'Murphy');
INSERT INTO `Ciudades` VALUES (2065, 22, 'Ñanducita');
INSERT INTO `Ciudades` VALUES (2066, 22, 'Naré');
INSERT INTO `Ciudades` VALUES (2067, 22, 'Nelson');
INSERT INTO `Ciudades` VALUES (2068, 22, 'Nicanor E. Molinas');
INSERT INTO `Ciudades` VALUES (2069, 22, 'Nuevo Torino');
INSERT INTO `Ciudades` VALUES (2070, 22, 'Oliveros');
INSERT INTO `Ciudades` VALUES (2071, 22, 'Palacios');
INSERT INTO `Ciudades` VALUES (2072, 22, 'Pavón');
INSERT INTO `Ciudades` VALUES (2073, 22, 'Pavón Arriba');
INSERT INTO `Ciudades` VALUES (2074, 22, 'Pedro Gómez Cello');
INSERT INTO `Ciudades` VALUES (2075, 22, 'Pérez');
INSERT INTO `Ciudades` VALUES (2076, 22, 'Peyrano');
INSERT INTO `Ciudades` VALUES (2077, 22, 'Piamonte');
INSERT INTO `Ciudades` VALUES (2078, 22, 'Pilar');
INSERT INTO `Ciudades` VALUES (2079, 22, 'Piñero');
INSERT INTO `Ciudades` VALUES (2080, 22, 'Plaza Clucellas');
INSERT INTO `Ciudades` VALUES (2081, 22, 'Portugalete');
INSERT INTO `Ciudades` VALUES (2082, 22, 'Pozo Borrado');
INSERT INTO `Ciudades` VALUES (2083, 22, 'Progreso');
INSERT INTO `Ciudades` VALUES (2084, 22, 'Providencia');
INSERT INTO `Ciudades` VALUES (2085, 22, 'Pte. Roca');
INSERT INTO `Ciudades` VALUES (2086, 22, 'Pueblo Andino');
INSERT INTO `Ciudades` VALUES (2087, 22, 'Pueblo Esther');
INSERT INTO `Ciudades` VALUES (2088, 22, 'Pueblo Gral. San Martín');
INSERT INTO `Ciudades` VALUES (2089, 22, 'Pueblo Irigoyen');
INSERT INTO `Ciudades` VALUES (2090, 22, 'Pueblo Marini');
INSERT INTO `Ciudades` VALUES (2091, 22, 'Pueblo Muñoz');
INSERT INTO `Ciudades` VALUES (2092, 22, 'Pueblo Uranga');
INSERT INTO `Ciudades` VALUES (2093, 22, 'Pujato');
INSERT INTO `Ciudades` VALUES (2094, 22, 'Pujato N.');
INSERT INTO `Ciudades` VALUES (2095, 22, 'Rafaela');
INSERT INTO `Ciudades` VALUES (2096, 22, 'Ramayón');
INSERT INTO `Ciudades` VALUES (2097, 22, 'Ramona');
INSERT INTO `Ciudades` VALUES (2098, 22, 'Reconquista');
INSERT INTO `Ciudades` VALUES (2099, 22, 'Recreo');
INSERT INTO `Ciudades` VALUES (2100, 22, 'Ricardone');
INSERT INTO `Ciudades` VALUES (2101, 22, 'Rivadavia');
INSERT INTO `Ciudades` VALUES (2102, 22, 'Roldán');
INSERT INTO `Ciudades` VALUES (2103, 22, 'Romang');
INSERT INTO `Ciudades` VALUES (2104, 22, 'Rosario');
INSERT INTO `Ciudades` VALUES (2105, 22, 'Rueda');
INSERT INTO `Ciudades` VALUES (2106, 22, 'Rufino');
INSERT INTO `Ciudades` VALUES (2107, 22, 'Sa Pereira');
INSERT INTO `Ciudades` VALUES (2108, 22, 'Saguier');
INSERT INTO `Ciudades` VALUES (2109, 22, 'Saladero M. Cabal');
INSERT INTO `Ciudades` VALUES (2110, 22, 'Salto Grande');
INSERT INTO `Ciudades` VALUES (2111, 22, 'San Agustín');
INSERT INTO `Ciudades` VALUES (2112, 22, 'San Antonio de Obligado');
INSERT INTO `Ciudades` VALUES (2113, 22, 'San Bernardo (N.J.)');
INSERT INTO `Ciudades` VALUES (2114, 22, 'San Bernardo (S.J.)');
INSERT INTO `Ciudades` VALUES (2115, 22, 'San Carlos Centro');
INSERT INTO `Ciudades` VALUES (2116, 22, 'San Carlos N.');
INSERT INTO `Ciudades` VALUES (2117, 22, 'San Carlos S.');
INSERT INTO `Ciudades` VALUES (2118, 22, 'San Cristóbal');
INSERT INTO `Ciudades` VALUES (2119, 22, 'San Eduardo');
INSERT INTO `Ciudades` VALUES (2120, 22, 'San Eugenio');
INSERT INTO `Ciudades` VALUES (2121, 22, 'San Fabián');
INSERT INTO `Ciudades` VALUES (2122, 22, 'San Fco. de Santa Fé');
INSERT INTO `Ciudades` VALUES (2123, 22, 'San Genaro');
INSERT INTO `Ciudades` VALUES (2124, 22, 'San Genaro N.');
INSERT INTO `Ciudades` VALUES (2125, 22, 'San Gregorio');
INSERT INTO `Ciudades` VALUES (2126, 22, 'San Guillermo');
INSERT INTO `Ciudades` VALUES (2127, 22, 'San Javier');
INSERT INTO `Ciudades` VALUES (2128, 22, 'San Jerónimo del Sauce');
INSERT INTO `Ciudades` VALUES (2129, 22, 'San Jerónimo N.');
INSERT INTO `Ciudades` VALUES (2130, 22, 'San Jerónimo S.');
INSERT INTO `Ciudades` VALUES (2131, 22, 'San Jorge');
INSERT INTO `Ciudades` VALUES (2132, 22, 'San José de La Esquina');
INSERT INTO `Ciudades` VALUES (2133, 22, 'San José del Rincón');
INSERT INTO `Ciudades` VALUES (2134, 22, 'San Justo');
INSERT INTO `Ciudades` VALUES (2135, 22, 'San Lorenzo');
INSERT INTO `Ciudades` VALUES (2136, 22, 'San Mariano');
INSERT INTO `Ciudades` VALUES (2137, 22, 'San Martín de Las Escobas');
INSERT INTO `Ciudades` VALUES (2138, 22, 'San Martín N.');
INSERT INTO `Ciudades` VALUES (2139, 22, 'San Vicente');
INSERT INTO `Ciudades` VALUES (2140, 22, 'Sancti Spititu');
INSERT INTO `Ciudades` VALUES (2141, 22, 'Sanford');
INSERT INTO `Ciudades` VALUES (2142, 22, 'Santo Domingo');
INSERT INTO `Ciudades` VALUES (2143, 22, 'Santo Tomé');
INSERT INTO `Ciudades` VALUES (2144, 22, 'Santurce');
INSERT INTO `Ciudades` VALUES (2145, 22, 'Sargento Cabral');
INSERT INTO `Ciudades` VALUES (2146, 22, 'Sarmiento');
INSERT INTO `Ciudades` VALUES (2147, 22, 'Sastre');
INSERT INTO `Ciudades` VALUES (2148, 22, 'Sauce Viejo');
INSERT INTO `Ciudades` VALUES (2149, 22, 'Serodino');
INSERT INTO `Ciudades` VALUES (2150, 22, 'Silva');
INSERT INTO `Ciudades` VALUES (2151, 22, 'Soldini');
INSERT INTO `Ciudades` VALUES (2152, 22, 'Soledad');
INSERT INTO `Ciudades` VALUES (2153, 22, 'Soutomayor');
INSERT INTO `Ciudades` VALUES (2154, 22, 'Sta. Clara de Buena Vista');
INSERT INTO `Ciudades` VALUES (2155, 22, 'Sta. Clara de Saguier');
INSERT INTO `Ciudades` VALUES (2156, 22, 'Sta. Isabel');
INSERT INTO `Ciudades` VALUES (2157, 22, 'Sta. Margarita');
INSERT INTO `Ciudades` VALUES (2158, 22, 'Sta. Maria Centro');
INSERT INTO `Ciudades` VALUES (2159, 22, 'Sta. María N.');
INSERT INTO `Ciudades` VALUES (2160, 22, 'Sta. Rosa');
INSERT INTO `Ciudades` VALUES (2161, 22, 'Sta. Teresa');
INSERT INTO `Ciudades` VALUES (2162, 22, 'Suardi');
INSERT INTO `Ciudades` VALUES (2163, 22, 'Sunchales');
INSERT INTO `Ciudades` VALUES (2164, 22, 'Susana');
INSERT INTO `Ciudades` VALUES (2165, 22, 'Tacuarendí');
INSERT INTO `Ciudades` VALUES (2166, 22, 'Tacural');
INSERT INTO `Ciudades` VALUES (2167, 22, 'Tartagal');
INSERT INTO `Ciudades` VALUES (2168, 22, 'Teodelina');
INSERT INTO `Ciudades` VALUES (2169, 22, 'Theobald');
INSERT INTO `Ciudades` VALUES (2170, 22, 'Timbúes');
INSERT INTO `Ciudades` VALUES (2171, 22, 'Toba');
INSERT INTO `Ciudades` VALUES (2172, 22, 'Tortugas');
INSERT INTO `Ciudades` VALUES (2173, 22, 'Tostado');
INSERT INTO `Ciudades` VALUES (2174, 22, 'Totoras');
INSERT INTO `Ciudades` VALUES (2175, 22, 'Traill');
INSERT INTO `Ciudades` VALUES (2176, 22, 'Venado Tuerto');
INSERT INTO `Ciudades` VALUES (2177, 22, 'Vera');
INSERT INTO `Ciudades` VALUES (2178, 22, 'Vera y Pintado');
INSERT INTO `Ciudades` VALUES (2179, 22, 'Videla');
INSERT INTO `Ciudades` VALUES (2180, 22, 'Vila');
INSERT INTO `Ciudades` VALUES (2181, 22, 'Villa Amelia');
INSERT INTO `Ciudades` VALUES (2182, 22, 'Villa Ana');
INSERT INTO `Ciudades` VALUES (2183, 22, 'Villa Cañas');
INSERT INTO `Ciudades` VALUES (2184, 22, 'Villa Constitución');
INSERT INTO `Ciudades` VALUES (2185, 22, 'Villa Eloísa');
INSERT INTO `Ciudades` VALUES (2186, 22, 'Villa Gdor. Gálvez');
INSERT INTO `Ciudades` VALUES (2187, 22, 'Villa Guillermina');
INSERT INTO `Ciudades` VALUES (2188, 22, 'Villa Minetti');
INSERT INTO `Ciudades` VALUES (2189, 22, 'Villa Mugueta');
INSERT INTO `Ciudades` VALUES (2190, 22, 'Villa Ocampo');
INSERT INTO `Ciudades` VALUES (2191, 22, 'Villa San José');
INSERT INTO `Ciudades` VALUES (2192, 22, 'Villa Saralegui');
INSERT INTO `Ciudades` VALUES (2193, 22, 'Villa Trinidad');
INSERT INTO `Ciudades` VALUES (2194, 22, 'Villada');
INSERT INTO `Ciudades` VALUES (2195, 22, 'Virginia');
INSERT INTO `Ciudades` VALUES (2196, 22, 'Wheelwright');
INSERT INTO `Ciudades` VALUES (2197, 22, 'Zavalla');
INSERT INTO `Ciudades` VALUES (2198, 22, 'Zenón Pereira');
INSERT INTO `Ciudades` VALUES (2199, 23, 'Añatuya');
INSERT INTO `Ciudades` VALUES (2200, 23, 'Árraga');
INSERT INTO `Ciudades` VALUES (2201, 23, 'Bandera');
INSERT INTO `Ciudades` VALUES (2202, 23, 'Bandera Bajada');
INSERT INTO `Ciudades` VALUES (2203, 23, 'Beltrán');
INSERT INTO `Ciudades` VALUES (2204, 23, 'Brea Pozo');
INSERT INTO `Ciudades` VALUES (2205, 23, 'Campo Gallo');
INSERT INTO `Ciudades` VALUES (2206, 23, 'Capital');
INSERT INTO `Ciudades` VALUES (2207, 23, 'Chilca Juliana');
INSERT INTO `Ciudades` VALUES (2208, 23, 'Choya');
INSERT INTO `Ciudades` VALUES (2209, 23, 'Clodomira');
INSERT INTO `Ciudades` VALUES (2210, 23, 'Col. Alpina');
INSERT INTO `Ciudades` VALUES (2211, 23, 'Col. Dora');
INSERT INTO `Ciudades` VALUES (2212, 23, 'Col. El Simbolar Robles');
INSERT INTO `Ciudades` VALUES (2213, 23, 'El Bobadal');
INSERT INTO `Ciudades` VALUES (2214, 23, 'El Charco');
INSERT INTO `Ciudades` VALUES (2215, 23, 'El Mojón');
INSERT INTO `Ciudades` VALUES (2216, 23, 'Estación Atamisqui');
INSERT INTO `Ciudades` VALUES (2217, 23, 'Estación Simbolar');
INSERT INTO `Ciudades` VALUES (2218, 23, 'Fernández');
INSERT INTO `Ciudades` VALUES (2219, 23, 'Fortín Inca');
INSERT INTO `Ciudades` VALUES (2220, 23, 'Frías');
INSERT INTO `Ciudades` VALUES (2221, 23, 'Garza');
INSERT INTO `Ciudades` VALUES (2222, 23, 'Gramilla');
INSERT INTO `Ciudades` VALUES (2223, 23, 'Guardia Escolta');
INSERT INTO `Ciudades` VALUES (2224, 23, 'Herrera');
INSERT INTO `Ciudades` VALUES (2225, 23, 'Icaño');
INSERT INTO `Ciudades` VALUES (2226, 23, 'Ing. Forres');
INSERT INTO `Ciudades` VALUES (2227, 23, 'La Banda');
INSERT INTO `Ciudades` VALUES (2228, 23, 'La Cañada');
INSERT INTO `Ciudades` VALUES (2229, 23, 'Laprida');
INSERT INTO `Ciudades` VALUES (2230, 23, 'Lavalle');
INSERT INTO `Ciudades` VALUES (2231, 23, 'Loreto');
INSERT INTO `Ciudades` VALUES (2232, 23, 'Los Juríes');
INSERT INTO `Ciudades` VALUES (2233, 23, 'Los Núñez');
INSERT INTO `Ciudades` VALUES (2234, 23, 'Los Pirpintos');
INSERT INTO `Ciudades` VALUES (2235, 23, 'Los Quiroga');
INSERT INTO `Ciudades` VALUES (2236, 23, 'Los Telares');
INSERT INTO `Ciudades` VALUES (2237, 23, 'Lugones');
INSERT INTO `Ciudades` VALUES (2238, 23, 'Malbrán');
INSERT INTO `Ciudades` VALUES (2239, 23, 'Matara');
INSERT INTO `Ciudades` VALUES (2240, 23, 'Medellín');
INSERT INTO `Ciudades` VALUES (2241, 23, 'Monte Quemado');
INSERT INTO `Ciudades` VALUES (2242, 23, 'Nueva Esperanza');
INSERT INTO `Ciudades` VALUES (2243, 23, 'Nueva Francia');
INSERT INTO `Ciudades` VALUES (2244, 23, 'Palo Negro');
INSERT INTO `Ciudades` VALUES (2245, 23, 'Pampa de Los Guanacos');
INSERT INTO `Ciudades` VALUES (2246, 23, 'Pinto');
INSERT INTO `Ciudades` VALUES (2247, 23, 'Pozo Hondo');
INSERT INTO `Ciudades` VALUES (2248, 23, 'Quimilí');
INSERT INTO `Ciudades` VALUES (2249, 23, 'Real Sayana');
INSERT INTO `Ciudades` VALUES (2250, 23, 'Sachayoj');
INSERT INTO `Ciudades` VALUES (2251, 23, 'San Pedro de Guasayán');
INSERT INTO `Ciudades` VALUES (2252, 23, 'Selva');
INSERT INTO `Ciudades` VALUES (2253, 23, 'Sol de Julio');
INSERT INTO `Ciudades` VALUES (2254, 23, 'Sumampa');
INSERT INTO `Ciudades` VALUES (2255, 23, 'Suncho Corral');
INSERT INTO `Ciudades` VALUES (2256, 23, 'Taboada');
INSERT INTO `Ciudades` VALUES (2257, 23, 'Tapso');
INSERT INTO `Ciudades` VALUES (2258, 23, 'Termas de Rio Hondo');
INSERT INTO `Ciudades` VALUES (2259, 23, 'Tintina');
INSERT INTO `Ciudades` VALUES (2260, 23, 'Tomas Young');
INSERT INTO `Ciudades` VALUES (2261, 23, 'Vilelas');
INSERT INTO `Ciudades` VALUES (2262, 23, 'Villa Atamisqui');
INSERT INTO `Ciudades` VALUES (2263, 23, 'Villa La Punta');
INSERT INTO `Ciudades` VALUES (2264, 23, 'Villa Ojo de Agua');
INSERT INTO `Ciudades` VALUES (2265, 23, 'Villa Río Hondo');
INSERT INTO `Ciudades` VALUES (2266, 23, 'Villa Salavina');
INSERT INTO `Ciudades` VALUES (2267, 23, 'Villa Unión');
INSERT INTO `Ciudades` VALUES (2268, 23, 'Vilmer');
INSERT INTO `Ciudades` VALUES (2269, 23, 'Weisburd');
INSERT INTO `Ciudades` VALUES (2270, 24, 'Río Grande');
INSERT INTO `Ciudades` VALUES (2271, 24, 'Tolhuin');
INSERT INTO `Ciudades` VALUES (2272, 24, 'Ushuaia');
INSERT INTO `Ciudades` VALUES (2273, 25, 'Acheral');
INSERT INTO `Ciudades` VALUES (2274, 25, 'Agua Dulce');
INSERT INTO `Ciudades` VALUES (2275, 25, 'Aguilares');
INSERT INTO `Ciudades` VALUES (2276, 25, 'Alderetes');
INSERT INTO `Ciudades` VALUES (2277, 25, 'Alpachiri');
INSERT INTO `Ciudades` VALUES (2278, 25, 'Alto Verde');
INSERT INTO `Ciudades` VALUES (2279, 25, 'Amaicha del Valle');
INSERT INTO `Ciudades` VALUES (2280, 25, 'Amberes');
INSERT INTO `Ciudades` VALUES (2281, 25, 'Ancajuli');
INSERT INTO `Ciudades` VALUES (2282, 25, 'Arcadia');
INSERT INTO `Ciudades` VALUES (2283, 25, 'Atahona');
INSERT INTO `Ciudades` VALUES (2284, 25, 'Banda del Río Sali');
INSERT INTO `Ciudades` VALUES (2285, 25, 'Bella Vista');
INSERT INTO `Ciudades` VALUES (2286, 25, 'Buena Vista');
INSERT INTO `Ciudades` VALUES (2287, 25, 'Burruyacú');
INSERT INTO `Ciudades` VALUES (2288, 25, 'Capitán Cáceres');
INSERT INTO `Ciudades` VALUES (2289, 25, 'Cevil Redondo');
INSERT INTO `Ciudades` VALUES (2290, 25, 'Choromoro');
INSERT INTO `Ciudades` VALUES (2291, 25, 'Ciudacita');
INSERT INTO `Ciudades` VALUES (2292, 25, 'Colalao del Valle');
INSERT INTO `Ciudades` VALUES (2293, 25, 'Colombres');
INSERT INTO `Ciudades` VALUES (2294, 25, 'Concepción');
INSERT INTO `Ciudades` VALUES (2295, 25, 'Delfín Gallo');
INSERT INTO `Ciudades` VALUES (2296, 25, 'El Bracho');
INSERT INTO `Ciudades` VALUES (2297, 25, 'El Cadillal');
INSERT INTO `Ciudades` VALUES (2298, 25, 'El Cercado');
INSERT INTO `Ciudades` VALUES (2299, 25, 'El Chañar');
INSERT INTO `Ciudades` VALUES (2300, 25, 'El Manantial');
INSERT INTO `Ciudades` VALUES (2301, 25, 'El Mojón');
INSERT INTO `Ciudades` VALUES (2302, 25, 'El Mollar');
INSERT INTO `Ciudades` VALUES (2303, 25, 'El Naranjito');
INSERT INTO `Ciudades` VALUES (2304, 25, 'El Naranjo');
INSERT INTO `Ciudades` VALUES (2305, 25, 'El Polear');
INSERT INTO `Ciudades` VALUES (2306, 25, 'El Puestito');
INSERT INTO `Ciudades` VALUES (2307, 25, 'El Sacrificio');
INSERT INTO `Ciudades` VALUES (2308, 25, 'El Timbó');
INSERT INTO `Ciudades` VALUES (2309, 25, 'Escaba');
INSERT INTO `Ciudades` VALUES (2310, 25, 'Esquina');
INSERT INTO `Ciudades` VALUES (2311, 25, 'Estación Aráoz');
INSERT INTO `Ciudades` VALUES (2312, 25, 'Famaillá');
INSERT INTO `Ciudades` VALUES (2313, 25, 'Gastone');
INSERT INTO `Ciudades` VALUES (2314, 25, 'Gdor. Garmendia');
INSERT INTO `Ciudades` VALUES (2315, 25, 'Gdor. Piedrabuena');
INSERT INTO `Ciudades` VALUES (2316, 25, 'Graneros');
INSERT INTO `Ciudades` VALUES (2317, 25, 'Huasa Pampa');
INSERT INTO `Ciudades` VALUES (2318, 25, 'J. B. Alberdi');
INSERT INTO `Ciudades` VALUES (2319, 25, 'La Cocha');
INSERT INTO `Ciudades` VALUES (2320, 25, 'La Esperanza');
INSERT INTO `Ciudades` VALUES (2321, 25, 'La Florida');
INSERT INTO `Ciudades` VALUES (2322, 25, 'La Ramada');
INSERT INTO `Ciudades` VALUES (2323, 25, 'La Trinidad');
INSERT INTO `Ciudades` VALUES (2324, 25, 'Lamadrid');
INSERT INTO `Ciudades` VALUES (2325, 25, 'Las Cejas');
INSERT INTO `Ciudades` VALUES (2326, 25, 'Las Talas');
INSERT INTO `Ciudades` VALUES (2327, 25, 'Las Talitas');
INSERT INTO `Ciudades` VALUES (2328, 25, 'Los Bulacio');
INSERT INTO `Ciudades` VALUES (2329, 25, 'Los Gómez');
INSERT INTO `Ciudades` VALUES (2330, 25, 'Los Nogales');
INSERT INTO `Ciudades` VALUES (2331, 25, 'Los Pereyra');
INSERT INTO `Ciudades` VALUES (2332, 25, 'Los Pérez');
INSERT INTO `Ciudades` VALUES (2333, 25, 'Los Puestos');
INSERT INTO `Ciudades` VALUES (2334, 25, 'Los Ralos');
INSERT INTO `Ciudades` VALUES (2335, 25, 'Los Sarmientos');
INSERT INTO `Ciudades` VALUES (2336, 25, 'Los Sosa');
INSERT INTO `Ciudades` VALUES (2337, 25, 'Lules');
INSERT INTO `Ciudades` VALUES (2338, 25, 'M. García Fernández');
INSERT INTO `Ciudades` VALUES (2339, 25, 'Manuela Pedraza');
INSERT INTO `Ciudades` VALUES (2340, 25, 'Medinas');
INSERT INTO `Ciudades` VALUES (2341, 25, 'Monte Bello');
INSERT INTO `Ciudades` VALUES (2342, 25, 'Monteagudo');
INSERT INTO `Ciudades` VALUES (2343, 25, 'Monteros');
INSERT INTO `Ciudades` VALUES (2344, 25, 'Padre Monti');
INSERT INTO `Ciudades` VALUES (2345, 25, 'Pampa Mayo');
INSERT INTO `Ciudades` VALUES (2346, 25, 'Quilmes');
INSERT INTO `Ciudades` VALUES (2347, 25, 'Raco');
INSERT INTO `Ciudades` VALUES (2348, 25, 'Ranchillos');
INSERT INTO `Ciudades` VALUES (2349, 25, 'Río Chico');
INSERT INTO `Ciudades` VALUES (2350, 25, 'Río Colorado');
INSERT INTO `Ciudades` VALUES (2351, 25, 'Río Seco');
INSERT INTO `Ciudades` VALUES (2352, 25, 'Rumi Punco');
INSERT INTO `Ciudades` VALUES (2353, 25, 'San Andrés');
INSERT INTO `Ciudades` VALUES (2354, 25, 'San Felipe');
INSERT INTO `Ciudades` VALUES (2355, 25, 'San Ignacio');
INSERT INTO `Ciudades` VALUES (2356, 25, 'San Javier');
INSERT INTO `Ciudades` VALUES (2357, 25, 'San José');
INSERT INTO `Ciudades` VALUES (2359, 25, 'San Pedro');
INSERT INTO `Ciudades` VALUES (2360, 25, 'San Pedro de Colalao');
INSERT INTO `Ciudades` VALUES (2361, 25, 'Santa Rosa de Leales');
INSERT INTO `Ciudades` VALUES (2362, 25, 'Sgto. Moya');
INSERT INTO `Ciudades` VALUES (2363, 25, 'Siete de Abril');
INSERT INTO `Ciudades` VALUES (2364, 25, 'Simoca');
INSERT INTO `Ciudades` VALUES (2365, 25, 'Soldado Maldonado');
INSERT INTO `Ciudades` VALUES (2366, 25, 'Sta. Ana');
INSERT INTO `Ciudades` VALUES (2367, 25, 'Sta. Cruz');
INSERT INTO `Ciudades` VALUES (2368, 25, 'Sta. Lucía');
INSERT INTO `Ciudades` VALUES (2369, 25, 'Taco Ralo');
INSERT INTO `Ciudades` VALUES (2370, 25, 'Tafí del Valle');
INSERT INTO `Ciudades` VALUES (2371, 25, 'Tafí Viejo');
INSERT INTO `Ciudades` VALUES (2372, 25, 'Tapia');
INSERT INTO `Ciudades` VALUES (2373, 25, 'Teniente Berdina');
INSERT INTO `Ciudades` VALUES (2374, 25, 'Trancas');
INSERT INTO `Ciudades` VALUES (2375, 25, 'Villa Belgrano');
INSERT INTO `Ciudades` VALUES (2376, 25, 'Villa Benjamín Araoz');
INSERT INTO `Ciudades` VALUES (2377, 25, 'Villa Chiligasta');
INSERT INTO `Ciudades` VALUES (2378, 25, 'Villa de Leales');
INSERT INTO `Ciudades` VALUES (2379, 25, 'Villa Quinteros');
INSERT INTO `Ciudades` VALUES (2380, 25, 'Yánima');
INSERT INTO `Ciudades` VALUES (2384, 25, 'Lastenia');
INSERT INTO `Ciudades` VALUES (2385, 25, 'Lules');
INSERT INTO `Ciudades` VALUES (2386, 25, 'San Miguel de Tucumán');
INSERT INTO `Ciudades` VALUES (2387, 25, 'Yerba Buena');
COMMIT;

-- ----------------------------
-- Table structure for DiasHabiles
-- ----------------------------
DROP TABLE IF EXISTS `DiasHabiles`;
CREATE TABLE `DiasHabiles` (
  `fecha` date NOT NULL,
  PRIMARY KEY (`fecha`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;;

-- ----------------------------
-- Records of DiasHabiles
-- ----------------------------
BEGIN;
INSERT INTO `DiasHabiles` VALUES ('2017-01-02');
INSERT INTO `DiasHabiles` VALUES ('2017-01-03');
INSERT INTO `DiasHabiles` VALUES ('2017-01-04');
INSERT INTO `DiasHabiles` VALUES ('2017-01-05');
INSERT INTO `DiasHabiles` VALUES ('2017-01-06');
INSERT INTO `DiasHabiles` VALUES ('2017-01-09');
INSERT INTO `DiasHabiles` VALUES ('2017-01-10');
INSERT INTO `DiasHabiles` VALUES ('2017-01-11');
INSERT INTO `DiasHabiles` VALUES ('2017-01-12');
INSERT INTO `DiasHabiles` VALUES ('2017-01-13');
INSERT INTO `DiasHabiles` VALUES ('2017-01-16');
INSERT INTO `DiasHabiles` VALUES ('2017-01-17');
INSERT INTO `DiasHabiles` VALUES ('2017-01-18');
INSERT INTO `DiasHabiles` VALUES ('2017-01-19');
INSERT INTO `DiasHabiles` VALUES ('2017-01-20');
INSERT INTO `DiasHabiles` VALUES ('2017-01-23');
INSERT INTO `DiasHabiles` VALUES ('2017-01-24');
INSERT INTO `DiasHabiles` VALUES ('2017-01-25');
INSERT INTO `DiasHabiles` VALUES ('2017-01-26');
INSERT INTO `DiasHabiles` VALUES ('2017-01-27');
INSERT INTO `DiasHabiles` VALUES ('2017-01-30');
INSERT INTO `DiasHabiles` VALUES ('2017-01-31');
INSERT INTO `DiasHabiles` VALUES ('2017-02-01');
INSERT INTO `DiasHabiles` VALUES ('2017-02-02');
INSERT INTO `DiasHabiles` VALUES ('2017-02-03');
INSERT INTO `DiasHabiles` VALUES ('2017-02-06');
INSERT INTO `DiasHabiles` VALUES ('2017-02-07');
INSERT INTO `DiasHabiles` VALUES ('2017-02-08');
INSERT INTO `DiasHabiles` VALUES ('2017-02-09');
INSERT INTO `DiasHabiles` VALUES ('2017-02-10');
INSERT INTO `DiasHabiles` VALUES ('2017-02-13');
INSERT INTO `DiasHabiles` VALUES ('2017-02-14');
INSERT INTO `DiasHabiles` VALUES ('2017-02-15');
INSERT INTO `DiasHabiles` VALUES ('2017-02-16');
INSERT INTO `DiasHabiles` VALUES ('2017-02-17');
INSERT INTO `DiasHabiles` VALUES ('2017-02-20');
INSERT INTO `DiasHabiles` VALUES ('2017-02-21');
INSERT INTO `DiasHabiles` VALUES ('2017-02-22');
INSERT INTO `DiasHabiles` VALUES ('2017-02-23');
INSERT INTO `DiasHabiles` VALUES ('2017-02-24');
INSERT INTO `DiasHabiles` VALUES ('2017-03-01');
INSERT INTO `DiasHabiles` VALUES ('2017-03-02');
INSERT INTO `DiasHabiles` VALUES ('2017-03-03');
INSERT INTO `DiasHabiles` VALUES ('2017-03-06');
INSERT INTO `DiasHabiles` VALUES ('2017-03-07');
INSERT INTO `DiasHabiles` VALUES ('2017-03-08');
INSERT INTO `DiasHabiles` VALUES ('2017-03-09');
INSERT INTO `DiasHabiles` VALUES ('2017-03-10');
INSERT INTO `DiasHabiles` VALUES ('2017-03-13');
INSERT INTO `DiasHabiles` VALUES ('2017-03-14');
INSERT INTO `DiasHabiles` VALUES ('2017-03-15');
INSERT INTO `DiasHabiles` VALUES ('2017-03-16');
INSERT INTO `DiasHabiles` VALUES ('2017-03-17');
INSERT INTO `DiasHabiles` VALUES ('2017-03-20');
INSERT INTO `DiasHabiles` VALUES ('2017-03-21');
INSERT INTO `DiasHabiles` VALUES ('2017-03-22');
INSERT INTO `DiasHabiles` VALUES ('2017-03-23');
INSERT INTO `DiasHabiles` VALUES ('2017-03-27');
INSERT INTO `DiasHabiles` VALUES ('2017-03-28');
INSERT INTO `DiasHabiles` VALUES ('2017-03-29');
INSERT INTO `DiasHabiles` VALUES ('2017-03-30');
INSERT INTO `DiasHabiles` VALUES ('2017-03-31');
INSERT INTO `DiasHabiles` VALUES ('2017-04-03');
INSERT INTO `DiasHabiles` VALUES ('2017-04-04');
INSERT INTO `DiasHabiles` VALUES ('2017-04-05');
INSERT INTO `DiasHabiles` VALUES ('2017-04-06');
INSERT INTO `DiasHabiles` VALUES ('2017-04-07');
INSERT INTO `DiasHabiles` VALUES ('2017-04-10');
INSERT INTO `DiasHabiles` VALUES ('2017-04-11');
INSERT INTO `DiasHabiles` VALUES ('2017-04-12');
INSERT INTO `DiasHabiles` VALUES ('2017-04-17');
INSERT INTO `DiasHabiles` VALUES ('2017-04-18');
INSERT INTO `DiasHabiles` VALUES ('2017-04-19');
INSERT INTO `DiasHabiles` VALUES ('2017-04-20');
INSERT INTO `DiasHabiles` VALUES ('2017-04-21');
INSERT INTO `DiasHabiles` VALUES ('2017-04-24');
INSERT INTO `DiasHabiles` VALUES ('2017-04-25');
INSERT INTO `DiasHabiles` VALUES ('2017-04-26');
INSERT INTO `DiasHabiles` VALUES ('2017-04-27');
INSERT INTO `DiasHabiles` VALUES ('2017-04-28');
INSERT INTO `DiasHabiles` VALUES ('2017-05-02');
INSERT INTO `DiasHabiles` VALUES ('2017-05-03');
INSERT INTO `DiasHabiles` VALUES ('2017-05-04');
INSERT INTO `DiasHabiles` VALUES ('2017-05-05');
INSERT INTO `DiasHabiles` VALUES ('2017-05-08');
INSERT INTO `DiasHabiles` VALUES ('2017-05-09');
INSERT INTO `DiasHabiles` VALUES ('2017-05-10');
INSERT INTO `DiasHabiles` VALUES ('2017-05-11');
INSERT INTO `DiasHabiles` VALUES ('2017-05-12');
INSERT INTO `DiasHabiles` VALUES ('2017-05-15');
INSERT INTO `DiasHabiles` VALUES ('2017-05-16');
INSERT INTO `DiasHabiles` VALUES ('2017-05-17');
INSERT INTO `DiasHabiles` VALUES ('2017-05-18');
INSERT INTO `DiasHabiles` VALUES ('2017-05-19');
INSERT INTO `DiasHabiles` VALUES ('2017-05-22');
INSERT INTO `DiasHabiles` VALUES ('2017-05-23');
INSERT INTO `DiasHabiles` VALUES ('2017-05-24');
INSERT INTO `DiasHabiles` VALUES ('2017-05-26');
INSERT INTO `DiasHabiles` VALUES ('2017-05-29');
INSERT INTO `DiasHabiles` VALUES ('2017-05-30');
INSERT INTO `DiasHabiles` VALUES ('2017-05-31');
INSERT INTO `DiasHabiles` VALUES ('2017-06-01');
INSERT INTO `DiasHabiles` VALUES ('2017-06-02');
INSERT INTO `DiasHabiles` VALUES ('2017-06-05');
INSERT INTO `DiasHabiles` VALUES ('2017-06-06');
INSERT INTO `DiasHabiles` VALUES ('2017-06-07');
INSERT INTO `DiasHabiles` VALUES ('2017-06-08');
INSERT INTO `DiasHabiles` VALUES ('2017-06-09');
INSERT INTO `DiasHabiles` VALUES ('2017-06-12');
INSERT INTO `DiasHabiles` VALUES ('2017-06-13');
INSERT INTO `DiasHabiles` VALUES ('2017-06-14');
INSERT INTO `DiasHabiles` VALUES ('2017-06-15');
INSERT INTO `DiasHabiles` VALUES ('2017-06-16');
INSERT INTO `DiasHabiles` VALUES ('2017-06-19');
INSERT INTO `DiasHabiles` VALUES ('2017-06-21');
INSERT INTO `DiasHabiles` VALUES ('2017-06-22');
INSERT INTO `DiasHabiles` VALUES ('2017-06-23');
INSERT INTO `DiasHabiles` VALUES ('2017-06-26');
INSERT INTO `DiasHabiles` VALUES ('2017-06-27');
INSERT INTO `DiasHabiles` VALUES ('2017-06-28');
INSERT INTO `DiasHabiles` VALUES ('2017-06-29');
INSERT INTO `DiasHabiles` VALUES ('2017-06-30');
INSERT INTO `DiasHabiles` VALUES ('2017-07-03');
INSERT INTO `DiasHabiles` VALUES ('2017-07-04');
INSERT INTO `DiasHabiles` VALUES ('2017-07-05');
INSERT INTO `DiasHabiles` VALUES ('2017-07-06');
INSERT INTO `DiasHabiles` VALUES ('2017-07-07');
INSERT INTO `DiasHabiles` VALUES ('2017-07-10');
INSERT INTO `DiasHabiles` VALUES ('2017-07-11');
INSERT INTO `DiasHabiles` VALUES ('2017-07-12');
INSERT INTO `DiasHabiles` VALUES ('2017-07-13');
INSERT INTO `DiasHabiles` VALUES ('2017-07-14');
INSERT INTO `DiasHabiles` VALUES ('2017-07-17');
INSERT INTO `DiasHabiles` VALUES ('2017-07-18');
INSERT INTO `DiasHabiles` VALUES ('2017-07-19');
INSERT INTO `DiasHabiles` VALUES ('2017-07-20');
INSERT INTO `DiasHabiles` VALUES ('2017-07-21');
INSERT INTO `DiasHabiles` VALUES ('2017-07-24');
INSERT INTO `DiasHabiles` VALUES ('2017-07-25');
INSERT INTO `DiasHabiles` VALUES ('2017-07-26');
INSERT INTO `DiasHabiles` VALUES ('2017-07-27');
INSERT INTO `DiasHabiles` VALUES ('2017-07-28');
INSERT INTO `DiasHabiles` VALUES ('2017-07-31');
INSERT INTO `DiasHabiles` VALUES ('2017-08-01');
INSERT INTO `DiasHabiles` VALUES ('2017-08-02');
INSERT INTO `DiasHabiles` VALUES ('2017-08-03');
INSERT INTO `DiasHabiles` VALUES ('2017-08-04');
INSERT INTO `DiasHabiles` VALUES ('2017-08-07');
INSERT INTO `DiasHabiles` VALUES ('2017-08-08');
INSERT INTO `DiasHabiles` VALUES ('2017-08-09');
INSERT INTO `DiasHabiles` VALUES ('2017-08-10');
INSERT INTO `DiasHabiles` VALUES ('2017-08-11');
INSERT INTO `DiasHabiles` VALUES ('2017-08-14');
INSERT INTO `DiasHabiles` VALUES ('2017-08-15');
INSERT INTO `DiasHabiles` VALUES ('2017-08-16');
INSERT INTO `DiasHabiles` VALUES ('2017-08-17');
INSERT INTO `DiasHabiles` VALUES ('2017-08-18');
INSERT INTO `DiasHabiles` VALUES ('2017-08-22');
INSERT INTO `DiasHabiles` VALUES ('2017-08-23');
INSERT INTO `DiasHabiles` VALUES ('2017-08-24');
INSERT INTO `DiasHabiles` VALUES ('2017-08-25');
INSERT INTO `DiasHabiles` VALUES ('2017-08-28');
INSERT INTO `DiasHabiles` VALUES ('2017-08-29');
INSERT INTO `DiasHabiles` VALUES ('2017-08-30');
INSERT INTO `DiasHabiles` VALUES ('2017-08-31');
INSERT INTO `DiasHabiles` VALUES ('2017-09-01');
INSERT INTO `DiasHabiles` VALUES ('2017-09-04');
INSERT INTO `DiasHabiles` VALUES ('2017-09-05');
INSERT INTO `DiasHabiles` VALUES ('2017-09-06');
INSERT INTO `DiasHabiles` VALUES ('2017-09-07');
INSERT INTO `DiasHabiles` VALUES ('2017-09-08');
INSERT INTO `DiasHabiles` VALUES ('2017-09-11');
INSERT INTO `DiasHabiles` VALUES ('2017-09-12');
INSERT INTO `DiasHabiles` VALUES ('2017-09-13');
INSERT INTO `DiasHabiles` VALUES ('2017-09-14');
INSERT INTO `DiasHabiles` VALUES ('2017-09-15');
INSERT INTO `DiasHabiles` VALUES ('2017-09-18');
INSERT INTO `DiasHabiles` VALUES ('2017-09-19');
INSERT INTO `DiasHabiles` VALUES ('2017-09-20');
INSERT INTO `DiasHabiles` VALUES ('2017-09-21');
INSERT INTO `DiasHabiles` VALUES ('2017-09-22');
INSERT INTO `DiasHabiles` VALUES ('2017-09-25');
INSERT INTO `DiasHabiles` VALUES ('2017-09-26');
INSERT INTO `DiasHabiles` VALUES ('2017-09-27');
INSERT INTO `DiasHabiles` VALUES ('2017-09-28');
INSERT INTO `DiasHabiles` VALUES ('2017-09-29');
INSERT INTO `DiasHabiles` VALUES ('2017-10-02');
INSERT INTO `DiasHabiles` VALUES ('2017-10-03');
INSERT INTO `DiasHabiles` VALUES ('2017-10-04');
INSERT INTO `DiasHabiles` VALUES ('2017-10-05');
INSERT INTO `DiasHabiles` VALUES ('2017-10-06');
INSERT INTO `DiasHabiles` VALUES ('2017-10-10');
INSERT INTO `DiasHabiles` VALUES ('2017-10-11');
INSERT INTO `DiasHabiles` VALUES ('2017-10-12');
INSERT INTO `DiasHabiles` VALUES ('2017-10-13');
INSERT INTO `DiasHabiles` VALUES ('2017-10-16');
INSERT INTO `DiasHabiles` VALUES ('2017-10-17');
INSERT INTO `DiasHabiles` VALUES ('2017-10-18');
INSERT INTO `DiasHabiles` VALUES ('2017-10-19');
INSERT INTO `DiasHabiles` VALUES ('2017-10-20');
INSERT INTO `DiasHabiles` VALUES ('2017-10-23');
INSERT INTO `DiasHabiles` VALUES ('2017-10-24');
INSERT INTO `DiasHabiles` VALUES ('2017-10-25');
INSERT INTO `DiasHabiles` VALUES ('2017-10-26');
INSERT INTO `DiasHabiles` VALUES ('2017-10-27');
INSERT INTO `DiasHabiles` VALUES ('2017-10-30');
INSERT INTO `DiasHabiles` VALUES ('2017-10-31');
INSERT INTO `DiasHabiles` VALUES ('2017-11-01');
INSERT INTO `DiasHabiles` VALUES ('2017-11-02');
INSERT INTO `DiasHabiles` VALUES ('2017-11-03');
INSERT INTO `DiasHabiles` VALUES ('2017-11-06');
INSERT INTO `DiasHabiles` VALUES ('2017-11-07');
INSERT INTO `DiasHabiles` VALUES ('2017-11-08');
INSERT INTO `DiasHabiles` VALUES ('2017-11-09');
INSERT INTO `DiasHabiles` VALUES ('2017-11-10');
INSERT INTO `DiasHabiles` VALUES ('2017-11-13');
INSERT INTO `DiasHabiles` VALUES ('2017-11-14');
INSERT INTO `DiasHabiles` VALUES ('2017-11-15');
INSERT INTO `DiasHabiles` VALUES ('2017-11-16');
INSERT INTO `DiasHabiles` VALUES ('2017-11-17');
INSERT INTO `DiasHabiles` VALUES ('2017-11-21');
INSERT INTO `DiasHabiles` VALUES ('2017-11-22');
INSERT INTO `DiasHabiles` VALUES ('2017-11-23');
INSERT INTO `DiasHabiles` VALUES ('2017-11-24');
INSERT INTO `DiasHabiles` VALUES ('2017-11-27');
INSERT INTO `DiasHabiles` VALUES ('2017-11-28');
INSERT INTO `DiasHabiles` VALUES ('2017-11-29');
INSERT INTO `DiasHabiles` VALUES ('2017-11-30');
INSERT INTO `DiasHabiles` VALUES ('2017-12-01');
INSERT INTO `DiasHabiles` VALUES ('2017-12-04');
INSERT INTO `DiasHabiles` VALUES ('2017-12-05');
INSERT INTO `DiasHabiles` VALUES ('2017-12-06');
INSERT INTO `DiasHabiles` VALUES ('2017-12-07');
INSERT INTO `DiasHabiles` VALUES ('2017-12-11');
INSERT INTO `DiasHabiles` VALUES ('2017-12-12');
INSERT INTO `DiasHabiles` VALUES ('2017-12-13');
INSERT INTO `DiasHabiles` VALUES ('2017-12-14');
INSERT INTO `DiasHabiles` VALUES ('2017-12-15');
INSERT INTO `DiasHabiles` VALUES ('2017-12-18');
INSERT INTO `DiasHabiles` VALUES ('2017-12-19');
INSERT INTO `DiasHabiles` VALUES ('2017-12-20');
INSERT INTO `DiasHabiles` VALUES ('2017-12-21');
INSERT INTO `DiasHabiles` VALUES ('2017-12-22');
INSERT INTO `DiasHabiles` VALUES ('2017-12-26');
INSERT INTO `DiasHabiles` VALUES ('2017-12-27');
INSERT INTO `DiasHabiles` VALUES ('2017-12-28');
INSERT INTO `DiasHabiles` VALUES ('2017-12-29');
COMMIT;

-- ----------------------------
-- Table structure for Operaciones
-- ----------------------------
DROP TABLE IF EXISTS `Operaciones`;
CREATE TABLE `Operaciones` (
  `idOperacion` int(11) NOT NULL,
  `dniProfesional` bigint(20) NOT NULL COMMENT 'DNI o CUIT = 11 numeros max\n',
  `apellidoProfesional` varchar(45) NOT NULL,
  `nombreProfesional` varchar(45) NOT NULL,
  `mailProfesional` varchar(45) NOT NULL,
  `fechaTransaccion` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `fechaPago` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `dniCliente` bigint(20) NOT NULL,
  `apellidoCliente` varchar(45) NOT NULL,
  `nombreCliente` varchar(45) NOT NULL,
  `telefonoCliente` varchar(20) DEFAULT '-',
  `mailCliente` varchar(45) DEFAULT '-',
  `tarjeta` enum('VISA','MASTER','AMEX','MP') NOT NULL,
  `importeVenta` decimal(10,2) NOT NULL,
  `importeCobrar` decimal(10,2) NOT NULL,
  `cuotas` tinyint(4) NOT NULL,
  `importeCarga` decimal(10,2) NOT NULL,
  `importeCuota` decimal(10,2) NOT NULL,
  `codigoAuto` int(11) NOT NULL,
  `cupon` bigint(20) NOT NULL,
  `fechaOperacion` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `tipoTarjeta` char(1) NOT NULL DEFAULT 'C',
  PRIMARY KEY (`idOperacion`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;;

-- ----------------------------
-- Records of Operaciones
-- ----------------------------
BEGIN;
INSERT INTO `Operaciones` VALUES (50001, 30117313, 'LOBO QUINTEROS', 'RAMIRO', 'RELQ@CLUBHONORARIOS.COM', '2017-08-14 21:09:43', '2017-08-18 00:00:00', 30117313, 'LOBO QUINTEROS', 'RAMIRO', '0381156022450', 'RELQ@CLUBHONORARIOS.COM', 'VISA', 10.00, 9.50, 12, 15.08, 1.26, 984845, 2744, '2017-08-14 21:09:43', 'C');
INSERT INTO `Operaciones` VALUES (50002, 36585617, 'Ferreyra', 'pablo gabriel', 'pablogferreyra@gmail.com', '2017-08-22 21:03:52', '2017-08-28 00:00:00', 30117313, 'lobo quinteros ', 'ramiro', '3816022450', 'relq@clubhonorarios.com', 'VISA', 50.00, 47.50, 2, 59.76, 29.88, 5523, 8083, '2017-08-22 21:03:52', 'C');
INSERT INTO `Operaciones` VALUES (50003, 23931702, 'Villlafañe', 'Nieves', 'nieves4774@hotmail.com', '2017-08-22 21:06:01', '2017-08-28 00:00:00', 30117313, 'lobo quinteros', 'ramiro', '3816022450', 'relq@clubhonoraios.com', 'MASTER', 50.00, 47.50, 3, 61.02, 20.34, 698100, 0, '2017-08-22 21:06:01', 'C');
INSERT INTO `Operaciones` VALUES (50004, 30807633, 'MARTEL', 'Maria Jose', 'aaa@aaa.com', '2017-08-23 10:14:14', '2017-08-28 00:00:00', 10645417, 'MARTINEZ', 'Raquel Elvira', '0381154168077', 'aaa@aaa.com', 'VISA', 230.00, 218.50, 3, 280.70, 93.57, 11339, 691, '2017-08-23 10:14:14', 'C');
INSERT INTO `Operaciones` VALUES (50005, 22387989, 'abregu', 'sergio', 'sergioabreguj@gmail.com', '2017-08-23 11:04:29', '2017-08-28 00:00:00', 22930783, 'duran', 'marta', '03815538026', '', 'VISA', 625.00, 593.75, 3, 762.77, 254.26, 3855, 1658, '2017-08-23 11:04:29', 'C');
INSERT INTO `Operaciones` VALUES (50006, 22387989, 'abregu', 'sergio', 'sergioabreguj@gmail.com', '2017-08-24 16:27:36', '2017-08-29 00:00:00', 29628871, 'paez', 'mabel', '03816528779', 'vmabelpez@hotmail.com', 'VISA', 460.00, 437.00, 3, 561.40, 187.13, 919974, 8451, '2017-08-24 16:27:36', 'C');
INSERT INTO `Operaciones` VALUES (50007, 23069266, 'APAZA', 'ADRIAN ESTEBAN', 'op@clubhonorarios.com', '2017-08-28 09:42:58', '2017-08-31 00:00:00', 7082040, 'GOMEZ', 'Carlos Alberto', '3814361556', '', 'VISA', 1496.00, 1421.20, 6, 1943.58, 323.93, 4698, 270, '2017-08-28 09:42:58', 'C');
INSERT INTO `Operaciones` VALUES (50008, 21978616, 'REVOLLO', 'HECTOR CARLOS', 'nacarbincinco@gmail.com', '2017-08-28 19:24:06', '2017-08-31 00:00:00', 13180939, 'NOCEDA', 'ANTONIA', '0381156328717', 'op@clubhonorarios.com', 'MASTER', 2170.00, 2061.50, 12, 3253.63, 271.14, 688691, 0, '2017-08-28 19:24:06', 'C');
INSERT INTO `Operaciones` VALUES (50009, 38115851, 'Andrade', 'Maico', 'Andrademaico794@gmail.com', '2017-09-02 18:05:36', '2017-09-07 00:00:00', 33090428, 'Velasquez', 'Elizabeth', '3815765076', 'Karinaevelasquez@gmail.com', 'VISA', 1500.00, 1425.00, 2, 1792.75, 896.38, 5433, 602, '2017-09-02 18:05:36', 'C');
INSERT INTO `Operaciones` VALUES (50010, 28292581, 'frete', 'luciana pamela', 'pamefrete@hotmail.com', '2017-09-02 19:20:48', '2017-09-07 00:00:00', 26028397, 'Marquez', 'Rosa Silvia ', '3815180007', 'pamefrete@hotmail.com', 'VISA', 1300.00, 1235.00, 6, 1688.94, 281.49, 1, 1, '2017-09-02 19:20:48', 'C');
INSERT INTO `Operaciones` VALUES (50011, 22387989, 'abregu', 'sergio', 'sergioabreguj@gmail.com', '2017-09-05 12:15:18', '2017-09-08 00:00:00', 22664598, 'zerpa', 'monica', '03814174578', 'paolazerpa@hotmail.com', 'VISA', 470.00, 446.50, 6, 610.62, 101.77, 929515, 7623, '2017-09-05 12:15:18', 'C');
INSERT INTO `Operaciones` VALUES (50012, 31052970, 'Paz', 'Claudia', 'roldan-ale@hotmail.com', '2017-09-06 18:49:56', '2017-09-11 00:00:00', 27364862, 'albarracin', 'andrea', '0381154689759', 'andrea79albarracin@gmail.com', 'VISA', 209.00, 198.55, 3, 255.07, 85.02, 6836, 2523, '2017-09-06 18:49:56', 'C');
INSERT INTO `Operaciones` VALUES (50013, 36231458, 'PEREYRA', 'RICARDO DAVID', 'david345.samaritano@gmail.com', '2017-09-07 20:25:34', '2017-09-12 00:00:00', 29391106, 'ZURITA', 'DAVID PABLO', '0381154987346', 'depezeta529@gmail.com', 'VISA', 10065.00, 9561.75, 6, 13076.30, 2179.38, 5634, 9624, '2017-09-07 20:25:34', 'C');
INSERT INTO `Operaciones` VALUES (50014, 31323213, 'rodriguez', 'rodrigo', 'ceromania@gmail.live', '2017-09-09 11:12:58', '2017-09-14 00:00:00', 6033369, 'terraffino', 'juan carlos', '03411553628088', 'tersenior@live.com.ar', 'VISA', 689.00, 654.55, 6, 895.14, 149.19, 7159, 8872, '2017-09-09 11:12:58', 'C');
INSERT INTO `Operaciones` VALUES (50015, 29532661, 'TORAÑO', 'MARIA GRACIELA', 'grat_df@hotmail.com', '2017-09-09 11:20:20', '2017-09-14 00:00:00', 14352313, 'flores', 'adolfo', '03412500546', 'adolfoflores13@yahoo.com.ar', 'VISA', 4250.00, 4037.50, 6, 5521.54, 920.26, 4962, 8960, '2017-09-09 11:20:20', 'C');
INSERT INTO `Operaciones` VALUES (50016, 30496747, 'CARO', 'LUIS', 'aaa@aa.com', '2017-09-09 11:35:48', '2017-09-14 00:00:00', 21744789, 'carabajal', 'carlos alberto', '0381156059090', 'aaa@asd.com', 'VISA', 660.00, 627.00, 12, 995.22, 82.94, 9124, 8442, '2017-09-09 11:35:48', 'C');
INSERT INTO `Operaciones` VALUES (50017, 18873444, 'gaRRIDO', 'VIVIANA', 'garridoviviana@hotmail.es', '2017-09-09 13:29:05', '2017-09-14 00:00:00', 30389337, 'CHAVARRIA', 'SILVIA RAQUEL', '0381154804595', '', 'MASTER', 700.00, 665.00, 2, 836.62, 418.31, 595189, 0, '2017-09-09 13:29:05', 'C');
INSERT INTO `Operaciones` VALUES (50018, 22387989, 'abregu', 'sergio', 'sergioabreguj@gmail.com', '2017-09-09 15:20:42', '2017-09-14 00:00:00', 16995485, 'zjaria', 'elvira', '03816544455', 'zjcamila1@hotmail.com', 'VISA', 920.00, 874.00, 2, 1099.56, 549.78, 5319, 1340, '2017-09-09 15:20:42', 'C');
INSERT INTO `Operaciones` VALUES (50019, 38115851, 'andrade', 'maico', 'aaaa@jkhagsdf.com', '2017-09-09 18:06:52', '2017-09-14 00:00:00', 26029776, 'juarez', 'paula', '0381155978961', 'paulalbana1@gmail.com', 'VISA', 1500.00, 1425.00, 2, 1792.75, 896.38, 12421, 2349, '2017-09-09 18:06:52', 'C');
INSERT INTO `Operaciones` VALUES (50020, 35521870, 'farias', 'claudia yanina', 'aaa@aa.com', '2017-09-09 18:47:45', '2017-09-14 00:00:00', 33615919, 'romano', 'rafael', '0381153040835', '', 'VISA', 2100.00, 1995.00, 3, 2562.91, 854.30, 5973, 2621, '2017-09-09 18:47:45', 'C');
INSERT INTO `Operaciones` VALUES (50021, 34603504, 'gioia', 'maira', 'Maira@asd.com', '2017-09-09 20:15:27', '2017-09-14 00:00:00', 23019320, 'Coronel', 'Felisa', '391154459133', '', 'VISA', 2800.00, 2660.00, 6, 3637.72, 606.29, 22464, 3168, '2017-09-09 20:15:27', 'C');
INSERT INTO `Operaciones` VALUES (50022, 25502069, 'Funes', 'ivonne', 'lorena_moria@hotmail', '2017-09-09 20:52:22', '2017-09-14 00:00:00', 31588545, 'varela', 'maria dolores', '0381154762764', '', 'VISA', 600.00, 570.00, 6, 779.51, 129.92, 730630, 3402, '2017-09-09 20:52:22', 'C');
INSERT INTO `Operaciones` VALUES (50023, 35521870, 'FARIAS', 'YANINA', 'aaa@aaa.com', '2017-09-12 13:06:24', '2017-09-15 00:00:00', 17041877, 'MONTENEGRO', 'MIRTA ELIZABETH', '0381154723918', 'maxijul@hotmail.com', 'MASTER', 3990.00, 3790.50, 9, 5596.41, 621.82, 642985, 0, '2017-09-12 13:06:24', 'C');
INSERT INTO `Operaciones` VALUES (50024, 34242941, 'ARGAÑARAZ', 'ELENA', 'tiendabruny@gmail.com', '2017-09-13 11:51:32', '2017-09-18 00:00:00', 23239205, 'GOMEZ', 'MARIA EUGENIA', '3815128675', 'euge073@gmail.com', 'VISA', 1650.00, 1567.50, 6, 2143.66, 357.28, 534548, 2959, '2017-09-13 11:51:32', 'C');
INSERT INTO `Operaciones` VALUES (50025, 22387989, 'abregu', 'sergio', 'sergioabreguj@gmail.com', '2017-09-14 19:40:12', '2017-09-19 00:00:00', 23795359, 'apaza', 'delia', '03816487266', '', 'VISA', 950.00, 902.50, 4, 1183.88, 295.97, 5987, 3702, '2017-09-14 19:40:12', 'C');
INSERT INTO `Operaciones` VALUES (50026, 36743974, 'ibañez', 'damian', 'damianybz@gmail', '2017-09-18 19:10:57', '2017-09-21 00:00:00', 37484642, 'PEREIRA', 'PAULO MATIAS', '3813279209', 'aaa@aaa.com', 'VISA', 3700.10, 3515.10, 6, 4807.12, 801.19, 15927, 5639, '2017-09-18 19:10:57', 'C');
INSERT INTO `Operaciones` VALUES (50027, 29744826, 'gutierrez', 'juan carlos', 'gutierrezjuanc@hotmail.com', '2017-09-18 19:20:43', '2017-09-21 00:00:00', 30994421, 'REISING', 'JORGE MATIAS', '3815885237', 'reisingg@gmail.com', 'VISA', 10000.00, 9500.00, 2, 11951.69, 5975.85, 6480, 5744, '2017-09-18 19:20:43', 'C');
INSERT INTO `Operaciones` VALUES (50028, 34603504, 'GIOIA', 'MAIRA', 'mairagioia@gmail', '2017-09-18 19:51:38', '2017-09-21 00:00:00', 24349194, 'PAEZ', 'LUIS EDUARDO', '381154050112', 'aaa@aaa.com', 'VISA', 1050.00, 997.50, 2, 1254.93, 627.47, 7682, 6064, '2017-09-18 19:51:38', 'C');
INSERT INTO `Operaciones` VALUES (50029, 7653190, 'LOBO', 'LUIS', 'RAMIROELOBOQ@HOTMAIL.COM', '2017-09-21 17:09:28', '2017-09-26 00:00:00', 30117313, 'LOBO QUINTEROS', 'RAMIRO', '0381156022450', 'INFO@CLUBHONORARIOS.COM', 'VISA', 100.00, 95.00, 3, 122.04, 40.68, 5771, 8492, '2017-09-21 17:09:28', 'C');
INSERT INTO `Operaciones` VALUES (50030, 7653190, 'LOBO', 'LUIS', 'RAMIROELOBOQ@HOTMAIL.COM', '2017-09-21 17:20:07', '2017-09-26 00:00:00', 30117313, 'LOBO QUINTEROS', 'RAMIRO', '0381156022450', 'INFO@CLUBHONORARIOS.COM', 'MASTER', 100.00, 95.00, 3, 122.04, 40.68, 627292, 0, '2017-09-21 17:20:07', 'C');
INSERT INTO `Operaciones` VALUES (50031, 31323213, 'RODRIGUEZ', 'Rodrigo Luis ', 'rodrigorodriguez140@hotmail.com', '2017-09-23 10:39:50', '2017-09-28 00:00:00', 13279765, 'JUAREZ', 'DANIEL', '3816118510', 'rodrigorodriguez140@hotmail.com', 'VISA', 670.00, 636.50, 6, 870.45, 145.08, 9307, 6575, '2017-09-23 10:39:50', 'C');
INSERT INTO `Operaciones` VALUES (50032, 26782634, 'lepn', 'Vanesa', 'vanelepen@hotmail.com', '2017-09-23 11:35:15', '2017-09-28 00:00:00', 25498330, 'nuñez campero', 'ana sofia', '4256184', 'anasofianc@gmail.com', 'VISA', 1600.00, 1520.00, 2, 1912.27, 956.14, 597820, 7096, '2017-09-23 11:35:15', 'C');
INSERT INTO `Operaciones` VALUES (50033, 35517220, 'BRITO', 'Gerardo Rafael', 'gerardobrito@yahoo.com.ar', '2017-09-23 12:18:52', '2017-09-28 00:00:00', 25740048, 'ARAGÒN', 'ANALIA', '4369615', 'aaa@aaa.com', 'VISA', 304.00, 288.80, 2, 363.33, 181.67, 5269, 7575, '2017-09-23 12:18:52', 'C');
INSERT INTO `Operaciones` VALUES (50034, 26782634, 'LEPEN', 'VANESA', 'vanelepen@hotmail.com', '2017-09-23 12:46:16', '2017-09-28 00:00:00', 23245048, 'AGUERO', 'MARISA', '3814407843', 'vanelepen@hotmail.com', 'VISA', 1770.00, 1681.50, 6, 2299.56, 383.26, 7800, 7902, '2017-09-23 12:46:16', 'C');
INSERT INTO `Operaciones` VALUES (50035, 32110466, 'IOTTI', 'Raul Romualdo', 'raulsipi@gmail.com', '2017-09-23 13:11:49', '2017-09-28 00:00:00', 35811121, 'GONZALEZ', 'VICTOR HUGO', '3815931394', 'gonzalezxz@hotmail.com', 'VISA', 680.00, 646.00, 6, 883.45, 147.24, 803358, 8116, '2017-09-23 13:11:49', 'C');
INSERT INTO `Operaciones` VALUES (50036, 35521870, 'FARIAS', 'Yanina', 'johana123.456@hotmail.com', '2017-09-23 13:24:39', '2017-09-28 00:00:00', 17714806, 'MOYANO', 'MANUEL', '3815771614', 'johana123.456@hotmail.com', 'VISA', 2572.50, 2443.88, 6, 3342.15, 557.03, 5898, 8213, '2017-09-23 13:24:39', 'C');
INSERT INTO `Operaciones` VALUES (50037, 32132760, 'GUASI', 'NOELIA CAROLINA', 'aledelnol@gmail.com', '2017-09-23 19:14:04', '2017-09-28 00:00:00', 8134833, 'GEREZ', 'HECTOR', '03814340544', 'AAA@AAA.com', 'VISA', 1200.00, 1140.00, 6, 1559.02, 259.84, 6442, 9753, '2017-09-23 19:14:04', 'C');
INSERT INTO `Operaciones` VALUES (50038, 22574951, 'quiroga', 'dario', 'darioemilianoquiroga@hotmail.com', '2017-09-23 19:20:49', '2017-09-28 00:00:00', 17755759, 'arias', 'ramon', '3814246847', 'aa.aaa@aa.com', 'VISA', 2100.00, 1995.00, 4, 2616.99, 654.25, 6102, 9786, '2017-09-23 19:20:49', 'C');
INSERT INTO `Operaciones` VALUES (50039, 24750862, 'gordillo', 'jose luis', 'bc.telefonia@hotmail.com', '2017-09-26 18:16:01', '2017-09-29 00:00:00', 11501999, 'cruz', 'miguel alberto', '3537446661', '', 'VISA', 420.00, 399.00, 6, 545.66, 90.94, 819046, 7915, '2017-09-26 18:16:01', 'C');
INSERT INTO `Operaciones` VALUES (50040, 24750862, 'gordillo', 'jose luis', 'bc.telefonia@hotmail.com', '2017-09-27 10:16:52', '2017-10-02 00:00:00', 17784595, 'guardia', 'jose antonio', '3816568290', '', 'VISA', 6530.00, 6203.50, 6, 8483.68, 1413.95, 511540, 2674, '2017-09-27 10:16:52', 'C');
INSERT INTO `Operaciones` VALUES (50041, 29430217, 'UTRERA', 'Juan Manuel ', 'juanmutrera@hotmail.com', '2017-09-29 13:26:04', '2017-10-04 00:00:00', 28223652, 'Teran', 'Rodolfo', '0381155016144', 'rodolfoteran80@gmail.com', 'VISA', 800.00, 760.00, 3, 976.35, 325.45, 619, 4037, '2017-09-29 13:26:04', 'C');
INSERT INTO `Operaciones` VALUES (50042, 34603504, 'GIOIA', 'Maira Yanina', 'mairagioia@gmail.com', '2017-09-30 11:26:07', '2017-10-05 00:00:00', 31046517, 'iñigo', 'damian emilio', '381418693', 'damianemilio@gmail.com', 'VISA', 1550.00, 1472.50, 6, 2013.74, 335.62, 14886, 5920, '2017-09-30 11:26:07', 'C');
INSERT INTO `Operaciones` VALUES (50043, 35192768, 'BELTRAN', 'Rosana Carolina', 'aaa@aaa.com', '2017-09-30 11:53:28', '2017-10-05 00:00:00', 34867888, 'alvarez', 'eliana', '3865329854', 'fgd@jkhg.com', 'VISA', 600.00, 570.00, 6, 779.51, 129.92, 936261, 6412, '2017-09-30 11:53:28', 'C');
INSERT INTO `Operaciones` VALUES (50044, 26782634, 'LEPEN', 'Vanesa', 'vanelepen@hotmail.com', '2017-09-30 12:08:10', '2017-10-05 00:00:00', 24750796, 'cheble', 'marcela', '3816092999', 'marceche72@hotmail.com', 'VISA', 1200.00, 1140.00, 2, 1434.20, 717.10, 7367, 6645, '2017-09-30 12:08:10', 'C');
INSERT INTO `Operaciones` VALUES (50045, 29640381, 'GARCIA ROQUE', 'Carolina', 'angelesdekro@hotmail.com', '2017-09-30 18:40:46', '2017-10-05 00:00:00', 29943593, 'ROLDAN ', 'MARIA ELINA', '3816399431', 'aaa@aaa.com', 'VISA', 630.00, 598.50, 3, 768.87, 256.29, 6501, 9831, '2017-09-30 18:40:46', 'C');
INSERT INTO `Operaciones` VALUES (50046, 26782634, 'LEPEN', 'Vanesa', 'vanelepen@hotmail.com', '2017-09-30 18:55:34', '2017-10-05 00:00:00', 25735485, 'COSENTINO', 'MARCO', '3814146737', 'marcocosentino@residenciacebil.org.ar', 'VISA', 585.00, 555.75, 2, 699.17, 349.59, 8414, 9935, '2017-09-30 18:55:34', 'C');
INSERT INTO `Operaciones` VALUES (50047, 27370086, 'GOYTIA', 'Claudia Beatriz', 'claudiagoytiaindumentaria@gmail.com', '2017-09-30 19:31:36', '2017-10-05 00:00:00', 22620606, 'BENITEZ', 'MARCELA', '3816588479', 'claudiagoytiaindumentaria@gmail.com', 'VISA', 2000.00, 1900.00, 2, 2390.34, 1195.17, 10486, 260, '2017-09-30 19:31:36', 'C');
INSERT INTO `Operaciones` VALUES (50048, 27735740, 'ARROYO', 'Claudio Eduardo', 'claudiocaetta2@gmail.com', '2017-10-03 12:23:28', '2017-10-06 00:00:00', 28920590, 'DIAZ', 'Sergio Osvaldo', '0386515692438', 'sdiaz5311@gmail.com', 'VISA', 800.00, 760.00, 3, 976.35, 325.45, 950354, 5729, '2017-10-03 12:23:28', 'C');
INSERT INTO `Operaciones` VALUES (50049, 20692198, 'RIVERO', 'Oscar Hilario ', 'oxcarivery@gmail.com', '2017-10-03 14:10:23', '2017-10-06 00:00:00', 29997439, 'FORTE', 'Luis Rodrigo', '0381155815604', 'oxcarivery@gmail.com', 'VISA', 3000.00, 2850.00, 3, 3661.30, 1220.43, 6145, 8057, '2017-10-03 14:10:23', 'C');
INSERT INTO `Operaciones` VALUES (50050, 38115851, 'ANDRADE', 'Maico Hugo', 'andrademaico794@gmail.com', '2017-10-03 16:59:28', '2017-10-06 00:00:00', 35548045, 'ZABALO', 'Natalia', '0381156590586', 'natalia_8778@hotmail.com', 'VISA', 650.00, 617.50, 3, 793.28, 264.43, 16344, 464, '2017-10-03 16:59:28', 'C');
INSERT INTO `Operaciones` VALUES (50051, 26782634, 'LEPEN', 'Vanesa', 'vanelepen@hotmail.com', '2017-10-03 18:04:33', '2017-10-06 00:00:00', 26446072, 'ROSSI', 'melania ines', '3814174122', 'melaniarossi0409@gmail.com', 'VISA', 395.00, 375.25, 2, 472.09, 236.05, 37182, 3097, '2017-10-03 18:04:33', 'C');
INSERT INTO `Operaciones` VALUES (50052, 40238310, 'MIGNONE', 'Fabricio Italo', 'aaa@aaa.com', '2017-10-03 19:21:25', '2017-10-06 00:00:00', 13203417, 'ZARATE', 'Juan carlos', '3816814321', '', 'VISA', 22000.00, 20900.00, 12, 33174.13, 2764.51, 989023, 4345, '2017-10-03 19:21:25', 'C');
INSERT INTO `Operaciones` VALUES (50053, 22805091, 'MEONE', 'Norma Beatriz', 'tibitty@hotmail.com', '2017-10-03 19:41:17', '2017-10-06 00:00:00', 5476555, 'CANO. ', 'lastenia', '3813285843', 'op@clubhonorarios.com', 'VISA', 820.00, 779.00, 3, 1000.76, 333.59, 5885, 4612, '2017-10-03 19:41:17', 'C');
INSERT INTO `Operaciones` VALUES (50054, 25844025, 'PALOMO', 'Ana Carolina', 'anacarolinapalomo@gmail.com', '2017-10-03 20:35:00', '2017-10-10 00:00:00', 32853000, 'risso paz', 'cristian ', '3814488913', '', 'VISA', 3300.00, 3135.00, 3, 4027.43, 1342.48, 78672, 5399, '2017-10-03 20:35:00', 'C');
INSERT INTO `Operaciones` VALUES (50055, 36584371, 'CASTILLO', 'Gustavo German', 'castillogustavo3442@gmail.com', '2017-10-03 20:42:18', '2017-10-10 00:00:00', 34953555, 'zilman', 'norberto', '3816226171', 'norberto.zilman@hotmail.com', 'VISA', 1400.00, 1330.00, 3, 1708.61, 569.54, 6177, 5459, '2017-10-03 20:42:18', 'C');
INSERT INTO `Operaciones` VALUES (50056, 24750862, 'GORDILLO', 'Jose Luis', 'bc.telefonia@hotmail.com', '2017-10-04 12:07:13', '2017-10-10 00:00:00', 20889182, 'gil', 'maria angela ', '3813303111', 'gil.mariaangela@gmail.com', 'VISA', 265.00, 251.75, 2, 316.72, 158.36, 5471, 2871, '2017-10-04 12:07:13', 'C');
INSERT INTO `Operaciones` VALUES (50057, 31323213, 'RODRIGUEZ', 'Rodrigo Luis ', 'rodrigorodriguez140@hotmail.com', '2017-10-04 12:13:10', '2017-10-10 00:00:00', 32853555, 'CABRERA', 'Mario Jesus', '0381153871100', 'cabreraj555.jc@gmail.com', 'VISA', 6413.00, 6092.35, 6, 8331.68, 1388.61, 9334, 3000, '2017-10-04 12:13:10', 'C');
INSERT INTO `Operaciones` VALUES (50058, 14661176, 'ANDRADA', 'Luis Humberto', 'acsetec@hotmail.com', '2017-10-04 13:25:16', '2017-10-10 00:00:00', 20285014, 'PLAZA', 'Pablo Esteban ', '0381155860860', 'op@clubhonorarios.com', 'MASTER', 2000.00, 1900.00, 6, 2598.37, 433.06, 607371, 0, '2017-10-04 13:25:16', 'C');
INSERT INTO `Operaciones` VALUES (50059, 20707143, 'OBELAR ', 'Ana Cristina ', 'anaobelar8@hotmail.com.ar', '2017-10-04 20:19:41', '2017-10-10 00:00:00', 4749856, 'cruz', 'inocencia', '3815330358', 'op@clubhonorarios.com', 'VISA', 3600.00, 3420.00, 12, 5428.49, 452.37, 12822, 1788, '2017-10-04 20:19:41', 'C');
INSERT INTO `Operaciones` VALUES (50060, 38115851, 'ANDRADE', 'Maico Hugo', 'andrademaico794@gmail.com', '2017-10-04 21:35:27', '2017-10-11 00:00:00', 34604051, 'zelaive', 'camila', '3816908516', 'camyzelaide@gmail.com', 'VISA', 1000.00, 950.00, 6, 1299.19, 216.53, 9561, 2522, '2017-10-04 21:35:27', 'C');
INSERT INTO `Operaciones` VALUES (50061, 27735882, 'GONZALEZ', 'Maria Jose ', 'mariajo-1980@hotmail.com', '2017-10-05 10:51:03', '2017-10-11 00:00:00', 27179923, 'chavez', 'andrea', '3815852024', '', 'VISA', 300.00, 285.00, 2, 358.55, 179.28, 6673, 7416, '2017-10-05 10:51:03', 'C');
INSERT INTO `Operaciones` VALUES (50062, 24750862, 'GORDILLO', 'Jose Luis', 'bc.telefonia@hotmail.com', '2017-10-05 13:15:35', '2017-10-11 00:00:00', 4761894, 'Villarreal', 'lilia angelica', '3813282353', '', 'VISA', 6560.00, 6232.00, 12, 9891.92, 824.33, 514595, 827, '2017-10-05 13:15:35', 'C');
INSERT INTO `Operaciones` VALUES (50063, 24750862, 'GORDILLO', 'Jose Luis', 'bc.telefonia@hotmail.com', '2017-10-05 13:31:50', '2017-10-11 00:00:00', 4761894, 'Villarreal', 'lilia angelica', '3813282353', '', 'VISA', 270.00, 256.50, 6, 350.78, 58.46, 823962, 1088, '2017-10-05 13:31:50', 'C');
INSERT INTO `Operaciones` VALUES (50064, 34064283, 'ALBORNOZ', 'Adrian René', 'albornozadrianrene@gmail.com', '2017-10-05 18:45:01', '2017-10-11 00:00:00', 17614667, 'PALACIOS', 'CLAUDIA ', '4930255', 'palaciosclaudiamaria@yahoo.com.ar', 'VISA', 2544.00, 2416.80, 3, 3104.79, 1034.93, 85784, 7275, '2017-10-05 18:45:01', 'C');
INSERT INTO `Operaciones` VALUES (50065, 36224331, 'GANIM', 'Rocio Celina', 'rocioganim@gmail.com', '2017-10-05 19:38:00', '2017-10-11 00:00:00', 20496958, 'HERRERA', 'SILVIA FABIANA', '4965030', 'aaa@aaa.com', 'VISA', 950.00, 902.50, 3, 1159.41, 386.47, 16316, 7730, '2017-10-05 19:38:00', 'C');
INSERT INTO `Operaciones` VALUES (50066, 16933577, 'ARCE', 'Pio Roque', 'pioroquearce@hotmail.com', '2017-10-05 19:51:01', '2017-10-11 00:00:00', 18471282, 'moya.', 'silvia', '4942039', 'silviamoya_426@hotmail.com', 'VISA', 3580.00, 3401.00, 6, 4651.08, 775.18, 93356, 8074, '2017-10-05 19:51:01', 'C');
INSERT INTO `Operaciones` VALUES (50067, 22832991, 'DE LA VEGA', 'Eliana', 'eliandelavega@gmail.com', '2017-10-05 20:04:44', '2017-10-11 00:00:00', 28367664, 'HERRERA', 'NORMA VANESA', '153407057', 'vanihumma12@hotmail.com', 'VISA', 750.00, 712.50, 2, 896.38, 448.19, 6947, 8048, '2017-10-05 20:04:44', 'C');
INSERT INTO `Operaciones` VALUES (50068, 39972759, 'MOYANO', 'Daniela Alicia', 'moyano240@gmail.com', '2017-10-05 20:11:05', '2017-10-11 00:00:00', 35816079, 'LOBO', 'MATIAS', '3816538310', 'aaa@aaa.com', 'VISA', 2650.00, 2517.50, 6, 3442.84, 573.81, 636909, 8326, '2017-10-05 20:11:05', 'C');
INSERT INTO `Operaciones` VALUES (50069, 16933577, 'ARCE', 'Pio Roque', 'pioroquearce@hotmail.com', '2017-10-05 20:17:11', '2017-10-11 00:00:00', 37937154, 'silva', 'leonardo', '3816170590', 'op@clubhonorarios.com', 'VISA', 1785.00, 1695.75, 6, 2319.05, 386.51, 6025, 8363, '2017-10-05 20:17:11', 'C');
INSERT INTO `Operaciones` VALUES (50070, 16933577, 'ARCE', 'Pio Roque', 'pioroquearce@hotmail.com', '2017-10-05 20:30:18', '2017-10-11 00:00:00', 17972638, 'ROJOS', 'SEGUNDO ALFONSO', '154010948', 'aaa@aaa.com', 'VISA', 1785.00, 1695.75, 6, 2319.05, 386.51, 6041, 8519, '2017-10-05 20:30:18', 'C');
INSERT INTO `Operaciones` VALUES (50071, 38115851, 'ANDRADE', 'Maico Hugo', 'andrademaico794@gmail.com', '2017-10-05 20:34:09', '2017-10-12 00:00:00', 42008117, 'salinas', 'lourdes', '3815210096', 'op@clubhonorarios.com', 'VISA', 400.00, 380.00, 2, 478.07, 239.04, 15268, 8530, '2017-10-05 20:34:09', 'C');
INSERT INTO `Operaciones` VALUES (50072, 16933577, 'ARCE', 'Pio Roque', 'pioroquearce@hotmail.com', '2017-10-05 20:48:37', '2017-10-12 00:00:00', 20496699, 'ACOSTA', 'ANA SUSANA', '4942979', 'aaa@aaa.com', 'VISA', 1785.00, 1695.75, 6, 2319.05, 386.51, 17186, 8633, '2017-10-05 20:48:37', 'C');
INSERT INTO `Operaciones` VALUES (50073, 16933577, 'ARCE', 'Pio Roque', 'pioroquearce@hotmail.com', '2017-10-05 20:56:26', '2017-10-12 00:00:00', 26832336, 'SANTUCHO', 'MAGDALENA', '155172533', 'aaa@aa.com', 'MASTER', 1785.00, 1695.75, 6, 2319.05, 386.51, 618020, 0, '2017-10-05 20:56:26', 'C');
INSERT INTO `Operaciones` VALUES (50074, 29430217, 'UTRERA', 'Juan Manuel ', 'juanmutrera@hotmail.com', '2017-10-06 10:10:26', '2017-10-12 00:00:00', 26531844, 'Amaya', 'Jorge Daniel', '038155378628 ', 'juanmutrera@hotmail.com', 'VISA', 1600.00, 1520.00, 3, 1952.69, 650.90, 736928, 2703, '2017-10-06 10:10:26', 'C');
INSERT INTO `Operaciones` VALUES (50075, 35521870, 'FARIAS', 'Yanina', 'johana123.456@hotmail.com', '2017-10-06 10:55:33', '2017-10-12 00:00:00', 37937118, 'BOLAÑEZ', 'Angel David', '0381152017258', 'op@clubhonorarios.com', 'VISA', 7350.00, 6982.50, 2, 8784.49, 4392.25, 629994, 3826, '2017-10-06 10:55:33', 'C');
INSERT INTO `Operaciones` VALUES (50076, 22805091, 'MEONE', 'Norma Beatriz', 'tibitty@hotmail.com', '2017-10-06 11:32:32', '2017-10-12 00:00:00', 38572366, 'troncoso', 'mariana', '0385153208383', 'guille_troncoso@hotmail.com', 'VISA', 600.00, 570.00, 3, 732.26, 244.09, 5469, 4826, '2017-10-06 11:32:32', 'C');
INSERT INTO `Operaciones` VALUES (50077, 22387989, 'ABREGU', 'Juan Sergio', 'sergioabreguj@gmail.com', '2017-10-06 16:18:29', '2017-10-12 00:00:00', 36339367, 'Avila', 'Silvia', '', '', 'VISA', 360.00, 342.00, 2, 430.26, 215.13, 2467, 534, '2017-10-06 16:18:29', 'C');
INSERT INTO `Operaciones` VALUES (50078, 12148317, 'PALACIOS', 'Victor Hugo', 'aaa@aaa.com', '2017-10-06 17:10:41', '2017-10-12 00:00:00', 36585617, 'FERREYRA', 'Pablo', '0381154450230', 'pablogferreyra@gmail.com', 'VISA', 525.00, 498.75, 2, 627.46, 313.73, 69925, 1598, '2017-10-06 17:10:41', 'C');
INSERT INTO `Operaciones` VALUES (50079, 31040067, 'SANDOVAL', 'Hector Luis ', 'hectorlsandoval@hotmail.com', '2017-10-06 17:26:07', '2017-10-12 00:00:00', 18102858, 'REINOSO', 'Ricardo', '038115429412', 'op@clubhonorarios.com', 'VISA', 9000.00, 8550.00, 6, 11692.67, 1948.78, 6700, 1827, '2017-10-06 17:26:07', 'C');
INSERT INTO `Operaciones` VALUES (50080, 14488271, 'PEDRINI', 'Lucia Ester', 'luciaepedrini@gmail.com', '2017-10-06 18:02:59', '2017-10-12 00:00:00', 28476369, 'ANDUJAR', 'Luis Fernando', '0381155348142', 'aaa@aaa.com', 'VISA', 1260.00, 1197.00, 3, 1537.75, 512.58, 6449, 2640, '2017-10-06 18:02:59', 'C');
INSERT INTO `Operaciones` VALUES (50081, 24750862, 'GORDILLO', 'Jose Luis', 'bc.telefonia@hotmail.com', '2017-10-06 18:07:23', '2017-10-12 00:00:00', 29599263, 'medina', 'sandra', '3815069422', 'sandralilianamedina82@hotmail.com', 'VISA', 1155.00, 1097.25, 6, 1500.56, 250.09, 6070, 2686, '2017-10-06 18:07:23', 'C');
INSERT INTO `Operaciones` VALUES (50082, 14488271, 'PEDRINI', 'Lucia Ester', 'luciaepedrini@gmail.com', '2017-10-06 18:39:28', '2017-10-12 00:00:00', 17860423, 'acosta', 'maria', '3813569014', 'tucucelu250@gmail.com', 'VISA', 735.00, 698.25, 3, 897.02, 299.01, 542350, 3234, '2017-10-06 18:39:28', 'C');
INSERT INTO `Operaciones` VALUES (50083, 34603504, 'GIOIA', 'Maira Yanina', 'mairagioia@gmail.com', '2017-10-06 19:56:25', '2017-10-12 00:00:00', 23680111, 'leal', 'estela.', '3814046771', 'op@clubhonorarios.com', 'VISA', 1550.00, 1472.50, 3, 1891.67, 630.56, 6532, 4490, '2017-10-06 19:56:25', 'C');
INSERT INTO `Operaciones` VALUES (50084, 31323213, 'RODRIGUEZ', 'Rodrigo Luis ', 'rodrigorodriguez140@hotmail.com', '2017-10-06 20:17:01', '2017-10-12 00:00:00', 11476538, 'martinez', 'carlos', '3814303850', 'cargimar@hotmail.com', 'MASTER', 530.00, 503.50, 6, 688.57, 114.76, 695215, 0, '2017-10-06 20:17:01', 'C');
INSERT INTO `Operaciones` VALUES (50085, 35521870, 'FARIAS', 'Yanina', 'johana123.456@hotmail.com', '2017-10-07 10:17:56', '2017-10-13 00:00:00', 10858789, 'acosta', 'federico', '3814135859', 'johana123.456@hotmail.com', 'VISA', 13000.00, 12350.00, 6, 16889.41, 2814.90, 5786, 7615, '2017-10-07 10:17:56', 'C');
INSERT INTO `Operaciones` VALUES (50086, 35521870, 'FARIAS', 'Yanina', 'johana123.456@hotmail.com', '2017-10-07 10:25:47', '2017-10-13 00:00:00', 10305686, 'CRUZ', 'JORGE', '3816121246', 'cruzjorge706@gmail.com', 'VISA', 945.00, 897.75, 3, 1153.31, 384.44, 753537, 7692, '2017-10-07 10:25:47', 'C');
INSERT INTO `Operaciones` VALUES (50087, 36584371, 'CASTILLO', 'Gustavo German', 'castillogustavo3442@gmail.com', '2017-10-07 10:59:58', '2017-10-13 00:00:00', 38741690, 'pihuala', 'cristian', '3816582650', 'ep.cristianpihuala@gmail.com', 'VISA', 2200.00, 2090.00, 3, 2684.96, 894.99, 5504, 8040, '2017-10-07 10:59:58', 'C');
INSERT INTO `Operaciones` VALUES (50088, 36224331, 'GANIM', 'Rocio Celina', 'rocioganim@gmail.com', '2017-10-07 11:16:55', '2017-10-13 00:00:00', 26805803, 'morales', 'maria', '3815501365', 'alemorales443@gmail.com', 'VISA', 1000.00, 950.00, 3, 1220.43, 406.81, 12921, 8238, '2017-10-07 11:16:55', 'C');
INSERT INTO `Operaciones` VALUES (50089, 14488271, 'PEDRINI', 'Lucia Ester', 'luciaepedrini@gmail.com', '2017-10-07 11:22:30', '2017-10-13 00:00:00', 28721786, 'HEREDIA', 'SERGIO', '3816420305', 'sergioheredia81@hotmail.com', 'VISA', 350.00, 332.50, 6, 454.71, 75.79, 10646, 8306, '2017-10-07 11:22:30', 'C');
INSERT INTO `Operaciones` VALUES (50090, 16458365, 'PITA', 'Jorge Horacio', 'rajota2001@yahoo.com.ar', '2017-10-07 11:36:36', '2017-10-13 00:00:00', 20759898, 'bazan', 'miguel', '3814065509', 'rajota2001@yahoo.com.ar', 'VISA', 4000.00, 3800.00, 6, 5196.74, 866.12, 10648, 8376, '2017-10-07 11:36:36', 'C');
INSERT INTO `Operaciones` VALUES (50091, 37725553, 'ELIAS', 'Maria Florencia', 'florelias@live.com', '2017-10-07 12:12:13', '2017-10-13 00:00:00', 26428001, 'CUELLO', 'DAVID', '03816657411', 'tiziano010101@gmail.com', 'VISA', 297.70, 282.82, 3, 363.32, 121.11, 200008, 8920, '2017-10-07 12:12:13', 'C');
INSERT INTO `Operaciones` VALUES (50092, 14488271, 'PEDRINI', 'Lucia Ester', 'luciaepedrini@gmail.com', '2017-10-07 13:11:36', '2017-10-13 00:00:00', 22672745, 'paez da silva', 'manuel', '3814562555', 'julio-paezdasilva@hotmail.com', 'VISA', 880.00, 836.00, 3, 1073.98, 357.99, 7331, 9554, '2017-10-07 13:11:36', 'C');
INSERT INTO `Operaciones` VALUES (50093, 14488271, 'PEDRINI', 'Lucia Ester', 'luciaepedrini@gmail.com', '2017-10-07 13:57:18', '2017-10-13 00:00:00', 23239950, 'TERZI', 'SILVANA', '3816239128', 'silfater0873@hotmail.com', 'VISA', 218.00, 207.10, 3, 266.05, 88.68, 559, 9854, '2017-10-07 13:57:18', 'C');
INSERT INTO `Operaciones` VALUES (50094, 34603504, 'GIOIA', 'Maira Yanina', 'mairagioia@gmail.com', '2017-10-07 18:09:39', '2017-10-13 00:00:00', 21333055, 'FUENSALIDA', 'ENZO WALTER', '154675577', 'aaa@aaa.com', 'VISA', 750.00, 712.50, 6, 974.39, 162.40, 1530, 1125, '2017-10-07 18:09:39', 'C');
INSERT INTO `Operaciones` VALUES (50095, 35521870, 'FARIAS', 'Yanina', 'johana123.456@hotmail.com', '2017-10-07 19:23:33', '2017-10-13 00:00:00', 35522514, 'NAVARRO', 'CARLOS', '3813048844', 'johana123.456@hotmail.com', 'VISA', 1155.00, 1097.25, 6, 1500.56, 250.09, 8246, 1538, '2017-10-07 19:23:33', 'C');
INSERT INTO `Operaciones` VALUES (50096, 34133394, 'MARRAZA', 'Mayra Daiana ', 'marraza_daiana@hotmail.com.ar', '2017-10-09 12:09:58', '2017-10-13 00:00:00', 25741396, 'MARTINEZ', 'Liliana', '0381156606853', '', 'MASTER', 1945.00, 1847.75, 6, 2526.92, 421.15, 602179, 0, '2017-10-09 12:09:58', 'C');
INSERT INTO `Operaciones` VALUES (50097, 22832991, 'DE LA VEGA', 'Eliana', 'eliandelavega@gmail.com', '2017-10-09 12:35:38', '2017-10-13 00:00:00', 16122961, 'CARRIZO', 'Marta', '0381155280699', 'aaa@aaa.com', 'VISA', 605.00, 574.75, 3, 738.36, 246.12, 7451, 3851, '2017-10-09 12:35:38', 'C');
INSERT INTO `Operaciones` VALUES (50098, 34133394, 'MARRAZA', 'Mayra Daiana ', 'marraza_daiana@hotmail.com.ar', '2017-10-09 13:08:56', '2017-10-13 00:00:00', 25642476, 'ROMANO NANNI', 'Leticia', '0381154770998', 'aaa@aaa.com', 'VISA', 389.00, 369.55, 3, 474.75, 158.25, 4240, 4543, '2017-10-09 13:08:56', 'C');
INSERT INTO `Operaciones` VALUES (50102, 30117313, 'Lobo Quinteros', 'Ramiro ', 'relq@clubhonorarios.com', '2017-10-09 13:48:59', '2017-10-13 00:00:00', 36584446, 'ARIAS', 'ASTRID', '0381155089443', 'op@clubhonorarios.com', 'VISA', 10.00, 9.50, 2, 11.95, 5.98, 1234, 1111, '2017-10-09 13:48:59', 'C');
INSERT INTO `Operaciones` VALUES (50103, 14488271, 'PEDRINI', 'Lucia Ester', 'luciaepedrini@gmail.com', '2017-10-09 19:41:32', '2017-10-13 00:00:00', 23519550, 'VAQUERA', 'Alejandra', '3814785868', 'op@clubhonorarios.com', 'VISA', 550.00, 522.50, 3, 671.24, 223.75, 18954, 1856, '2017-10-09 19:41:32', 'C');
INSERT INTO `Operaciones` VALUES (50104, 38115851, 'ANDRADE', 'Maico Hugo', 'andrademaico794@gmail.com', '2017-10-09 20:05:45', '2017-10-13 00:00:00', 43364071, 'suarez', 'pamela', '03815124898', 'op@clubhonorarios.com', 'VISA', 750.00, 712.50, 2, 896.38, 448.19, 6433, 2223, '2017-10-09 20:05:45', 'C');
INSERT INTO `Operaciones` VALUES (50105, 38115851, 'ANDRADE', 'Maico Hugo', 'andrademaico794@gmail.com', '2017-10-09 21:20:50', '2017-10-13 00:00:00', 37423755, 'PERALTA', 'MARIANA', '155748892', 'mariana_dkna_16@hotmail.com', 'MASTER', 1300.00, 1235.00, 6, 1688.94, 281.49, 600922, 0, '2017-10-09 21:20:50', 'C');
INSERT INTO `Operaciones` VALUES (50106, 24750862, 'GORDILLO', 'Jose Luis', 'bc.telefonia@hotmail.com', '2017-10-10 10:22:17', '2017-10-13 00:00:00', 12449540, 'vizcarra', 'miguel hugo', '3814796793', '', 'VISA', 1905.00, 1809.75, 3, 2324.93, 774.98, 10991, 7149, '2017-10-10 10:22:17', 'C');
INSERT INTO `Operaciones` VALUES (50107, 17696977, 'ROMERO', 'Julio Cesar ', 'fernandoromero09@hotmail.com', '2017-10-10 10:38:04', '2017-10-13 00:00:00', 33755624, 'BULACIO', 'Gabriel', '0381156799617', 'aaa@aaa.com', 'VISA', 1400.00, 1330.00, 3, 1708.61, 569.54, 6173, 7578, '2017-10-10 10:38:04', 'C');
INSERT INTO `Operaciones` VALUES (50108, 29640381, 'GARCIA ROQUE', 'Carolina', 'angelesdekro@hotmail.com', '2017-10-10 11:24:30', '2017-10-13 00:00:00', 39144865, 'GALVAN', 'Anonella', '0381155104636', 'aaa@aaa.com', 'VISA', 630.00, 598.50, 3, 768.87, 256.29, 10832, 8623, '2017-10-10 11:24:30', 'C');
INSERT INTO `Operaciones` VALUES (50109, 26783306, 'PALOMO', 'Brenda Ivana ', 'centrodestudiostucuman@hotmail.com', '2017-10-10 11:30:29', '2017-10-13 00:00:00', 24802038, 'MOISES', 'M Isabel', '0381156427128', 'dramoisesisabel@gmail.com', 'VISA', 2000.00, 1900.00, 3, 2440.87, 813.62, 7394, 8865, '2017-10-10 11:30:29', 'C');
INSERT INTO `Operaciones` VALUES (50110, 34064283, 'ALBORNOZ', 'Adrian René', 'albornozadrianrene@gmail.com', '2017-10-10 13:27:19', '2017-10-13 00:00:00', 12679397, 'DELGADO', 'Pedro', '0381155687874', 'aaa@aaa.com', 'VISA', 5512.00, 5236.40, 12, 8311.63, 692.64, 7003, 1152, '2017-10-10 13:27:19', 'C');
INSERT INTO `Operaciones` VALUES (50111, 38115851, 'ANDRADE', 'Maico Hugo', 'andrademaico794@gmail.com', '2017-10-10 17:03:01', '2017-10-13 00:00:00', 36839697, 'SANTUCHO', 'Nadia', '0381155628460', 'nadiasantucho@hotmail.com', 'VISA', 550.00, 522.50, 3, 671.24, 223.75, 7050, 5112, '2017-10-10 17:03:01', 'C');
INSERT INTO `Operaciones` VALUES (50112, 22387989, 'ABREGU', 'Juan Sergio', 'sergioabreguj@gmail.com', '2017-10-10 17:52:44', '2017-10-13 00:00:00', 40112697, 'Rocha', 'Nicolas', '', '', 'VISA', 180.00, 171.00, 2, 215.13, 107.57, 858061, 5984, '2017-10-10 17:52:44', 'C');
INSERT INTO `Operaciones` VALUES (50113, 39972759, 'MOYANO', 'Daniela Alicia', 'moyano240@gmail.com', '2017-10-10 19:42:47', '2017-10-13 00:00:00', 30117441, 'velardez', 'rodrigo', '3814290838', 'rodri_v@hotmail.com', 'VISA', 1900.00, 1805.00, 6, 2468.45, 411.41, 5991, 7633, '2017-10-10 19:42:47', 'C');
INSERT INTO `Operaciones` VALUES (50114, 34064283, 'ALBORNOZ', 'Adrian René', 'albornozadrianrene@gmail.com', '2017-10-10 20:16:05', '2017-10-13 00:00:00', 25212681, 'CORREA', 'Blanca', '3816445365', 'vallecorrea@hotmail.om', 'MASTER', 5502.00, 5226.90, 12, 8249.52, 687.46, 654295, 0, '2017-10-10 20:16:05', 'C');
INSERT INTO `Operaciones` VALUES (50115, 34064283, 'ALBORNOZ', 'Adrian René', 'albornozadrianrene@gmail.com', '2017-10-10 20:20:45', '2017-10-13 00:00:00', 25212681, 'CORREA', 'BLANCA', '3816445365', 'vallecorrea@hotmail.com', 'MASTER', 5502.00, 5226.90, 12, 8249.52, 687.46, 657653, 0, '2017-10-10 20:20:45', 'C');
INSERT INTO `Operaciones` VALUES (50116, 14488271, 'PEDRINI', 'Lucia Ester', 'luciaepedrini@gmail.com', '2017-10-10 20:35:34', '2017-10-16 00:00:00', 22869267, 'RALLE', 'ARIEL', '156425920', 'aaa@aaa.com', 'VISA', 180.00, 171.00, 2, 215.13, 107.57, 14021, 7625, '2017-10-10 20:35:34', 'C');
INSERT INTO `Operaciones` VALUES (50117, 14488271, 'PEDRINI', 'Lucia Ester', 'luciaepedrini@gmail.com', '2017-10-10 20:46:21', '2017-10-16 00:00:00', 32626685, 'paez', 'miguel', '3815076259', 'miguelpaez_69@hotmail.com', 'VISA', 300.00, 285.00, 3, 366.13, 122.04, 726, 8303, '2017-10-10 20:46:21', 'C');
INSERT INTO `Operaciones` VALUES (50118, 14023759, 'APAS', 'Ana Maria', 'aaa@aaa.com', '2017-10-11 10:39:16', '2017-10-16 00:00:00', 4647605, 'BARRIONUEVO', 'Hilda', '03814377379', 'aaa@aaa.com', 'VISA', 869.00, 825.55, 3, 1060.56, 353.52, 9068, 2104, '2017-10-11 10:39:16', 'C');
INSERT INTO `Operaciones` VALUES (50119, 31323213, 'RODRIGUEZ', 'Rodrigo Luis ', 'rodrigorodriguez140@hotmail.com', '2017-10-11 11:37:18', '2017-10-16 00:00:00', 24622386, 'PICON', 'Cecilia', '0381155934351', 'aaa@aaa.com', 'VISA', 509.00, 483.55, 2, 608.34, 304.17, 6054, 3256, '2017-10-11 11:37:18', 'C');
INSERT INTO `Operaciones` VALUES (50120, 32110466, 'IOTTI', 'Raul Romualdo', 'raulsipi@gmail.com', '2017-10-11 12:07:37', '2017-10-16 00:00:00', 36839722, 'ROLDAN', 'Hugo E', '0381155951690', 'hugoeroldan608@hotmail.com', 'VISA', 4770.00, 4531.50, 6, 6197.12, 1032.85, 7546, 3888, '2017-10-11 12:07:37', 'C');
INSERT INTO `Operaciones` VALUES (50121, 14488271, 'PEDRINI', 'Lucia Ester', 'luciaepedrini@gmail.com', '2017-10-11 19:00:04', '2017-10-16 00:00:00', 39480973, 'CHIAPPETA', 'MAURO', '3815112550', 'mauro_chiappeta@hotmail.com', 'VISA', 280.00, 266.00, 3, 341.72, 113.91, 680996, 857, '2017-10-11 19:00:04', 'C');
INSERT INTO `Operaciones` VALUES (50122, 26782634, 'LEPEN', 'Vanesa', 'vanelepen@hotmail.com', '2017-10-11 19:19:29', '2017-10-16 00:00:00', 17085514, 'BONILLA', 'MARIA LUISA', '3813549960', 'marialuisabonilla189@gmail.com', 'VISA', 575.00, 546.25, 6, 747.03, 124.51, 13513, 1072, '2017-10-11 19:19:29', 'C');
INSERT INTO `Operaciones` VALUES (50123, 28101464, 'NICOLETTI', 'Marisa del Carmen', 'aaa@aaa.com', '2017-10-11 20:09:10', '2017-10-16 00:00:00', 29310786, 'AUTERI', 'PAOLA DEL VALLE', '4619191', 'aaa@aaa.com', 'VISA', 3024.00, 2872.80, 6, 3928.74, 654.79, 10858, 1613, '2017-10-11 20:09:10', 'C');
INSERT INTO `Operaciones` VALUES (50124, 25844025, 'PALOMO', 'Ana Carolina', 'anacarolinapalomo@gmail.com', '2017-10-11 20:15:48', '2017-10-16 00:00:00', 14984796, 'GARCIA', 'ALICIA', '4282234', 'aaa@aaa.com', 'VISA', 4000.00, 3800.00, 2, 4780.68, 2390.34, 6695, 1694, '2017-10-11 20:15:48', 'C');
INSERT INTO `Operaciones` VALUES (50125, 22387989, 'ABREGU', 'Juan Sergio', 'sergioabreguj@gmail.com', '2017-10-11 20:23:31', '2017-10-16 00:00:00', 16314411, 'taboada', 'claudia', '', '', 'VISA', 1480.00, 1406.00, 3, 1806.24, 602.08, 10468, 1758, '2017-10-11 20:23:31', 'C');
INSERT INTO `Operaciones` VALUES (50126, 31323213, 'RODRIGUEZ', 'Rodrigo Luis ', 'rodrigorodriguez140@hotmail.com', '2017-10-11 21:02:02', '2017-10-17 00:00:00', 29082513, 'VILLAREAL', 'OMAR SEBASTIAN', '4374214', 'aaa@aaa.com', 'VISA', 742.00, 704.90, 2, 886.82, 443.41, 6671, 2067, '2017-10-11 21:02:02', 'C');
INSERT INTO `Operaciones` VALUES (50127, 29430217, 'UTRERA', 'Juan Manuel ', 'juanmutrera@hotmail.com', '2017-10-11 21:13:49', '2017-10-17 00:00:00', 30268776, 'CUEVAS', 'SERGIO', '156514773', 'aaa@aaa.com', 'VISA', 380.00, 361.00, 3, 463.77, 154.59, 7898, 3, '2017-10-11 21:13:49', 'C');
INSERT INTO `Operaciones` VALUES (50128, 31323213, 'RODRIGUEZ', 'Rodrigo Luis ', 'rodrigorodriguez140@hotmail.com', '2017-10-12 10:37:30', '2017-10-17 00:00:00', 39986407, 'HACK', 'Ezequiel', '0381153401868', 'ezequielhack0@gmail.com', 'VISA', 212.00, 201.40, 2, 253.38, 126.69, 8308, 5934, '2017-10-12 10:37:30', 'C');
INSERT INTO `Operaciones` VALUES (50129, 38115851, 'ANDRADE', 'Maico Hugo', 'andrademaico794@gmail.com', '2017-10-12 14:01:41', '2017-10-17 00:00:00', 28681307, 'ROJAS', 'Flavia ', '0381156037657', 'flavirojas@gmail.com', 'VISA', 1050.00, 997.50, 3, 1281.46, 427.15, 5813, 14, '2017-10-12 14:01:41', 'C');
INSERT INTO `Operaciones` VALUES (50130, 41496740, 'GRAMAJO', 'Guillermo Federico', 'aaa@aaa.com', '2017-10-12 17:00:40', '2017-10-17 00:00:00', 29081853, 'MINIGGIO', 'MARIA CARLA', '154748682', 'carla-miniggio@hotmail.com', 'VISA', 12500.00, 11875.00, 12, 18848.94, 1570.75, 25205, 3277, '2017-10-12 17:00:40', 'C');
INSERT INTO `Operaciones` VALUES (50131, 36224331, 'GANIM', 'Rocio Celina', 'rocioganim@gmail.com', '2017-10-12 17:38:51', '2017-10-17 00:00:00', 17136747, 'FERREIRA', 'Pedro H', '0386315400150', 'aaa@aaa.com', 'VISA', 1000.00, 950.00, 3, 1220.43, 406.81, 727559, 3910, '2017-10-12 17:38:51', 'C');
INSERT INTO `Operaciones` VALUES (50132, 16458365, 'PITA', 'Jorge Horacio', 'rajota2001@yahoo.com.ar', '2017-10-12 18:01:53', '2017-10-17 00:00:00', 21880004, 'ROMANO', 'JAVIER', '154670397', 'javierromano895@gmail.com', 'VISA', 1500.00, 1425.00, 2, 1792.75, 896.38, 502980, 4208, '2017-10-12 18:01:53', 'C');
INSERT INTO `Operaciones` VALUES (50133, 30807633, 'MARTEL', 'Maria Jose', 'aaa@aaa.com', '2017-10-12 18:12:28', '2017-10-17 00:00:00', 16932897, 'ALVAREZ', 'NELIDA', '3813531625', 'aaa@aaa.com', 'VISA', 308.00, 292.60, 3, 375.89, 125.30, 6033, 4364, '2017-10-12 18:12:28', 'C');
INSERT INTO `Operaciones` VALUES (50134, 34603504, 'GIOIA', 'Maira Yanina', 'mairagioia@gmail.com', '2017-10-12 20:48:48', '2017-10-18 00:00:00', 31900729, 'meija', 'raul', '3815989967', 'op@clubhonorrioscom', 'VISA', 1800.00, 1710.00, 6, 2338.53, 389.76, 17285, 5909, '2017-10-12 20:48:48', 'C');
INSERT INTO `Operaciones` VALUES (50135, 35192768, 'BELTRAN', 'Rosana Carolina', 'aaa@aaa.com', '2017-10-12 20:51:52', '2017-10-18 00:00:00', 6521545, 'ALCARAZ', 'MARIA ESTER', '381538184', 'aaa@aaa.com', 'VISA', 700.00, 665.00, 3, 854.30, 284.77, 8105, 5948, '2017-10-12 20:51:52', 'C');
INSERT INTO `Operaciones` VALUES (50136, 35521870, 'FARIAS', 'Yanina', 'johana123.456@hotmail.com', '2017-10-12 21:08:49', '2017-10-18 00:00:00', 37937169, 'ledesma', 'edson dario. ', '03816218296', 'op@clubhonorarios.com', 'VISA', 11000.00, 10450.00, 6, 14291.04, 2381.84, 966553, 6030, '2017-10-12 21:08:49', 'C');
INSERT INTO `Operaciones` VALUES (50137, 32201404, 'CALVO CHAVARRÍA', 'María Belén', 'belu2086@gmail.com', '2017-10-13 10:31:13', '2017-10-18 00:00:00', 42270038, 'larazarte', 'antonella', '3815119941', 'antolazarte2017h0tmail@gmail.com', 'VISA', 518.00, 492.10, 2, 619.10, 309.55, 6955, 8650, '2017-10-13 10:31:13', 'C');
INSERT INTO `Operaciones` VALUES (50138, 34603504, 'GIOIA', 'Maira Yanina', 'mairagioia@gmail.com', '2017-10-13 11:40:23', '2017-10-18 00:00:00', 21176058, 'HUIZZI', 'Paula F', '0381154404044', 'aaa@aaa.com', 'MASTER', 550.00, 522.50, 3, 671.24, 223.75, 670479, 0, '2017-10-13 11:40:23', 'C');
INSERT INTO `Operaciones` VALUES (50139, 34763807, 'PAZ', 'Francisco Rodrigo', 'franciscoolpaz@hotmail.com', '2017-10-13 11:54:49', '2017-10-18 00:00:00', 33051706, 'VEGA', 'Patricia R', '0381156029677', 'roxanavega135@gmail.com', 'VISA', 4050.00, 3847.50, 4, 5047.05, 1261.76, 19062, 9980, '2017-10-13 11:54:49', 'C');
INSERT INTO `Operaciones` VALUES (50140, 24750862, 'GORDILLO', 'Jose Luis', 'bc.telefonia@hotmail.com', '2017-10-13 12:22:31', '2017-10-18 00:00:00', 16540248, 'perez andersch', 'hector ruben', '3814267260', '', 'VISA', 430.00, 408.50, 2, 513.92, 256.96, 321, 693, '2017-10-13 12:22:31', 'C');
INSERT INTO `Operaciones` VALUES (50141, 36224331, 'GANIM', 'Rocio Celina', 'rocioganim@gmail.com', '2017-10-13 16:15:32', '2017-10-18 00:00:00', 41374017, 'LAZARTE', 'Oriana', '03814391580', 'aaa@aaa.com', 'VISA', 800.00, 760.00, 3, 976.35, 325.45, 955916, 5104, '2017-10-13 16:15:32', 'C');
INSERT INTO `Operaciones` VALUES (50142, 36584371, 'CASTILLO', 'Gustavo German', 'castillogustavo3442@gmail.com', '2017-10-13 17:57:50', '2017-10-18 00:00:00', 34910844, 'ACOSTA', 'JUAN PABLO', '3816439083', 'acostabrocker@gmail.com', 'MASTER', 3200.00, 3040.00, 3, 3905.39, 1301.80, 623047, 0, '2017-10-13 17:57:50', 'C');
INSERT INTO `Operaciones` VALUES (50143, 38247053, 'PRADO', 'Exequiel José Manuel', 'fundacionparticipando@gmail.com', '2017-10-13 18:20:43', '2017-10-18 00:00:00', 17182815, 'BERNACHI', 'GRACIELA', '153005988', 'gracielabernachi@hotmail.com', 'VISA', 4770.00, 4531.50, 2, 5700.96, 2850.48, 810454, 7896, '2017-10-13 18:20:43', 'C');
INSERT INTO `Operaciones` VALUES (50144, 35521870, 'FARIAS', 'Yanina', 'johana123.456@hotmail.com', '2017-10-13 18:23:17', '2017-10-18 00:00:00', 35044232, 'RUEDA', 'Ana laura', '0387154071222', 'anitalr_20@hotmail.com', 'VISA', 6247.50, 5935.13, 9, 8804.86, 978.32, 587974, 8004, '2017-10-13 18:23:17', 'C');
INSERT INTO `Operaciones` VALUES (50145, 36224331, 'GANIM', 'Rocio Celina', 'rocioganim@gmail.com', '2017-10-13 18:27:18', '2017-10-18 00:00:00', 34067308, 'ARGAÑARAZ', 'LUCIANA', '154482416', 'aaa@aaa.com', 'VISA', 1000.00, 950.00, 6, 1299.19, 216.53, 588742, 8118, '2017-10-13 18:27:18', 'C');
INSERT INTO `Operaciones` VALUES (50146, 35192768, 'BELTRAN', 'Rosana Carolina', 'aaa@aaa.com', '2017-10-13 18:33:43', '2017-10-18 00:00:00', 24538493, 'SALOMON', 'HAIDEE', '03865 422191', 'aaa@aaa.com', 'VISA', 500.00, 475.00, 2, 597.58, 298.79, 80506, 8237, '2017-10-13 18:33:43', 'C');
INSERT INTO `Operaciones` VALUES (50147, 24750862, 'GORDILLO', 'Jose Luis', 'bc.telefonia@hotmail.com', '2017-10-13 18:54:52', '2017-10-18 00:00:00', 12247165, 'SOSA', 'RAMON', '4266190', 'aaa@aaa.com', 'VISA', 3885.00, 3690.75, 4, 4841.43, 1210.36, 6304, 8553, '2017-10-13 18:54:52', 'C');
INSERT INTO `Operaciones` VALUES (50148, 27371984, 'BUSTO', 'Carlos Jose Maria', 'jose.patoba@gmail.com', '2017-10-13 19:06:28', '2017-10-18 00:00:00', 37188330, 'GALVAN', 'EMILIANO', '154676377', 'aaa@aaa.com', 'VISA', 3200.00, 3040.00, 3, 3905.39, 1301.80, 39152, 8734, '2017-10-13 19:06:28', 'C');
INSERT INTO `Operaciones` VALUES (50149, 22805091, 'MEONE', 'Norma Beatriz', 'tibitty@hotmail.com', '2017-10-13 20:00:16', '2017-10-18 00:00:00', 24671033, 'ALVAREZ', 'VIVIANA', '3816384132', 'vivianafabianaalvarez@gmail.com', 'VISA', 400.00, 380.00, 3, 488.17, 162.72, 606399, 9434, '2017-10-13 20:00:16', 'C');
INSERT INTO `Operaciones` VALUES (50150, 36224331, 'GANIM', 'Rocio Celina', 'rocioganim@gmail.com', '2017-10-13 20:06:00', '2017-10-18 00:00:00', 33884178, 'JUAREZ', 'LISANDRO', '3815721320', 'lisandrojuarez@hotmail.com', 'VISA', 950.00, 902.50, 3, 1159.41, 386.47, 5712, 9486, '2017-10-13 20:06:00', 'C');
INSERT INTO `Operaciones` VALUES (50151, 34064283, 'ALBORNOZ', 'Adrian René', 'albornozadrianrene@gmail.com', '2017-10-13 20:27:56', '2017-10-18 00:00:00', 25372387, 'vargas', 'arturo', '03816218435', 'op@clubhonorarios.com', 'MASTER', 5512.00, 5236.40, 6, 7161.11, 1193.52, 656643, 0, '2017-10-13 20:27:56', 'C');
INSERT INTO `Operaciones` VALUES (50152, 29743658, 'VELIZ', 'Julio Rafael ', 'rafaelveliz1983@gmail.com', '2017-10-13 20:47:11', '2017-10-19 00:00:00', 34067828, 'VERA', 'RUBEN LUIS', '154806975', 'veraluis.r@gmail.com', 'VISA', 950.00, 902.50, 3, 1159.41, 386.47, 958478, 9921, '2017-10-13 20:47:11', 'C');
INSERT INTO `Operaciones` VALUES (50153, 36584371, 'CASTILLO', 'Gustavo German', 'castillogustavo3442@gmail.com', '2017-10-13 20:55:51', '2017-10-19 00:00:00', 16784359, 'VILLAGRAN', 'carlos', '03814696760', 'op@clubhonorarios.com', 'VISA', 950.00, 902.50, 3, 1159.41, 386.47, 650716, 9977, '2017-10-13 20:55:51', 'C');
INSERT INTO `Operaciones` VALUES (50154, 38115851, 'ANDRADE', 'Maico Hugo', 'andrademaico794@gmail.com', '2017-10-13 21:02:32', '2017-10-19 00:00:00', 30357612, 'VILLAGRA', 'Estela Judith', '', '', 'VISA', 750.00, 712.50, 6, 974.39, 162.40, 18, 7767, '2017-10-13 21:02:32', 'C');
INSERT INTO `Operaciones` VALUES (50155, 36224331, 'GANIM', 'Rocio Celina', 'rocioganim@gmail.com', '2017-10-13 21:19:11', '2017-10-19 00:00:00', 38216290, 'LOBO', 'ROCIO', '155391924', 'ro.lobo94@gmail.com', 'VISA', 1000.00, 950.00, 6, 1299.19, 216.53, 24032, 146, '2017-10-13 21:19:11', 'C');
INSERT INTO `Operaciones` VALUES (50156, 35192768, 'BELTRAN', 'Rosana Carolina', 'aaa@aaa.com', '2017-10-14 10:17:44', '2017-10-19 00:00:00', 33973540, 'SOSA', 'IVANA', '3865447652', 'aaa@aaa.com', 'VISA', 450.00, 427.50, 3, 549.20, 183.07, 709956, 2069, '2017-10-14 10:17:44', 'C');
INSERT INTO `Operaciones` VALUES (50157, 38115851, 'ANDRADE', 'Maico Hugo', 'andrademaico794@gmail.com', '2017-10-14 10:20:07', '2017-10-19 00:00:00', 36584900, 'medina', 'nicolas', '3816662537', 'asd@gasd.com', 'VISA', 1400.00, 1330.00, 3, 1708.61, 569.54, 5909, 2092, '2017-10-14 10:20:07', 'C');
INSERT INTO `Operaciones` VALUES (50158, 35192768, 'BELTRAN', 'Rosana Carolina', 'aaa@aaa.com', '2017-10-14 10:45:30', '2017-10-19 00:00:00', 30117393, 'ruiz', 'celso', '3865209427', 'asd.asd@asdf.com', 'VISA', 610.00, 579.50, 2, 729.05, 364.53, 909483, 2324, '2017-10-14 10:45:30', 'C');
INSERT INTO `Operaciones` VALUES (50159, 30117313, 'Lobo Quinteros', 'Ramiro ', 'relq@clubhonorarios.com', '2017-10-14 11:27:15', '2017-10-19 00:00:00', 34202641, 'REYNAGA', 'HECTOR', '3815996971', 'gabrielreynaga44@gmail.com', 'VISA', 770.00, 731.50, 2, 920.28, 460.14, 6120, 2752, '2017-10-14 11:27:15', 'C');
INSERT INTO `Operaciones` VALUES (50160, 29532661, 'TORAÑO', 'Maria Graciela', 'grat_df@hotmail.com', '2017-10-14 11:46:17', '2017-10-19 00:00:00', 41480110, 'GOMEZ', 'MILAGROS', '154957512', 'milygomez@hotmail.es', 'VISA', 700.00, 665.00, 3, 854.30, 284.77, 10133, 2900, '2017-10-14 11:46:17', 'C');
INSERT INTO `Operaciones` VALUES (50161, 36743974, 'YBAÑEZ', 'Damian Exequiel', 'damianybz@gmail.com', '2017-10-14 12:01:41', '2017-10-19 00:00:00', 16692009, 'JIMENEZ', 'IVAN', '4922410', 'aaa@aaa.com', 'VISA', 4900.00, 4655.00, 6, 6366.01, 1061.00, 583928, 3159, '2017-10-14 12:01:41', 'C');
INSERT INTO `Operaciones` VALUES (50162, 24750862, 'GORDILLO', 'Jose Luis', 'bc.telefonia@hotmail.com', '2017-10-14 12:02:48', '2017-10-19 00:00:00', 17139942, 'Jimenez', 'ruben enrique', '381491843', '', 'VISA', 1200.00, 1140.00, 6, 1559.02, 259.84, 507458, 3187, '2017-10-14 12:02:48', 'C');
INSERT INTO `Operaciones` VALUES (50163, 18873444, 'GARRIDO', 'Viviana', 'vivianagarrido@hotmail.es', '2017-10-14 12:12:29', '2017-10-19 00:00:00', 10219089, 'sanchez', 'mercedes', '', '', 'VISA', 800.00, 760.00, 6, 1039.35, 173.23, 7455, 3298, '2017-10-14 12:12:29', 'C');
INSERT INTO `Operaciones` VALUES (50164, 24750862, 'GORDILLO', 'Jose Luis', 'bc.telefonia@hotmail.com', '2017-10-14 12:22:34', '2017-10-19 00:00:00', 4761894, 'villarreal', 'lilia angelica', '3813534941', '', 'VISA', 4800.00, 4560.00, 3, 5858.08, 1952.69, 558311, 3351, '2017-10-14 12:22:34', 'C');
INSERT INTO `Operaciones` VALUES (50165, 26242421, 'SALGADO', 'Maria Laura', 'laura_tizi@hotmail.com', '2017-10-14 12:28:19', '2017-10-19 00:00:00', 20306089, 'aguirre', 'ramona', '386515578589', 'asd@gas.com', 'VISA', 320.00, 304.00, 2, 382.45, 191.23, 512184, 3483, '2017-10-14 12:28:19', 'C');
INSERT INTO `Operaciones` VALUES (50166, 25502069, 'FUNES', 'Ivonne Lorena', 'lorena_moria@hotmail.com', '2017-10-14 12:46:16', '2017-10-19 00:00:00', 23711139, 'leal', 'maria marcela', '3815107699', 'marceleal081275@gmail.com', 'VISA', 780.00, 741.00, 6, 1013.36, 168.89, 15801, 3708, '2017-10-14 12:46:16', 'C');
INSERT INTO `Operaciones` VALUES (50167, 24750862, 'GORDILLO', 'Jose Luis', 'bc.telefonia@hotmail.com', '2017-10-14 13:55:09', '2017-10-19 00:00:00', 18510035, 'NAVARRO', 'BEATRIZ', '155606042', 'bc.telefonia@hotmail.com', 'VISA', 262.50, 249.38, 2, 313.73, 156.87, 6117, 3, '2017-10-14 13:55:09', 'C');
INSERT INTO `Operaciones` VALUES (50168, 26980606, 'GOMEZ', 'Maria Manuela', 'manuindumentaria@gmail.com', '2017-10-14 17:24:22', '2017-10-19 00:00:00', 34356513, 'FERREIRA', 'YESSICA ', '156212596', 'yessicadvf@hotmail.com', 'VISA', 2250.00, 2137.50, 12, 3392.81, 282.73, 7109, 5239, '2017-10-14 17:24:22', 'C');
INSERT INTO `Operaciones` VALUES (50169, 33538746, 'JIMENEZ', 'Rene Alberto', 'renealbertojimenez7@gmail.com', '2017-10-14 17:44:50', '2017-10-19 00:00:00', 11354149, 'BRITO', 'MERCEDES ANGELA', '3813438938', 'aaa@aaa.com', 'MASTER', 4000.00, 3800.00, 3, 4881.74, 1627.25, 663683, 0, '2017-10-14 17:44:50', 'C');
INSERT INTO `Operaciones` VALUES (50170, 36584371, 'CASTILLO', 'Gustavo German', 'castillogustavo3442@gmail.com', '2017-10-14 17:51:17', '2017-10-19 00:00:00', 26446542, 'MILLAN', 'RAUL', '3814248360', 'castillogustavo3442@gmail.com', 'MASTER', 700.00, 665.00, 3, 854.30, 284.77, 672125, 0, '2017-10-14 17:51:17', 'C');
INSERT INTO `Operaciones` VALUES (50171, 28567276, 'Sosa', 'Paola Natalia', 'rocio-bustos20@hotmail.com', '2017-10-14 17:58:59', '2017-10-19 00:00:00', 16332737, 'CORONEL', 'FRANCISCO', '3865674051', 'aaa@aaa.com', 'VISA', 680.00, 646.00, 3, 829.90, 276.63, 699422, 5391, '2017-10-14 17:58:59', 'C');
INSERT INTO `Operaciones` VALUES (50172, 26783347, 'ALBARRACIN ', 'Maria Andrea', 'mariandrea932@gmail.com', '2017-10-14 18:57:31', '2017-10-19 00:00:00', 17312644, 'REINOSO', 'IRMA BEATRIZ', '3813516476', 'mariandrea932@gmail.com', 'VISA', 1800.00, 1710.00, 6, 2338.53, 389.76, 6770, 5714, '2017-10-14 18:57:31', 'C');
INSERT INTO `Operaciones` VALUES (50173, 38244869, 'LEDESMA', 'Jose Augusto', 'jr_motorepuestos@hotmail.com.ar', '2017-10-14 19:16:28', '2017-10-19 00:00:00', 38119422, 'BULACIO', 'JULIO EZEQUIEL', '3814908566', 'braian_bulacio_1994@outlook.es', 'VISA', 1350.00, 1282.50, 6, 1753.90, 292.32, 6911, 5799, '2017-10-14 19:16:28', 'C');
INSERT INTO `Operaciones` VALUES (50174, 38247053, 'PRADO', 'Exequiel José Manuel', 'fundacionparticipando@gmail.com', '2017-10-17 16:19:23', '2017-10-20 00:00:00', 25588305, 'ALESSI', 'Arturo Gaston', '0381155690061', 'alessiarturo@gmail.com', 'VISA', 7200.00, 6840.00, 6, 9354.14, 1559.02, 80998, 180, '2017-10-17 16:19:23', 'C');
INSERT INTO `Operaciones` VALUES (50175, 23930165, 'GONZALES', 'Victor Heraldo', 'victorheraldogonzales@yahoo.com.ar', '2017-10-17 16:51:56', '2017-10-20 00:00:00', 23931570, 'PASSIMI', 'Jose A', '038154424950', '', 'VISA', 1311.00, 1245.45, 3, 1599.99, 533.33, 6169, 5, '2017-10-17 16:51:56', 'C');
INSERT INTO `Operaciones` VALUES (50176, 36584371, 'CASTILLO', 'Gustavo German', 'castillogustavo3442@gmail.com', '2017-10-17 18:49:33', '2017-10-20 00:00:00', 34953131, 'Luciano', 'Benjamin', '0381155906873', 'lucianobertrand@hotmail.com', 'VISA', 450.00, 427.50, 3, 549.20, 183.07, 6254, 181, '2017-10-17 18:49:33', 'C');
INSERT INTO `Operaciones` VALUES (50177, 27371984, 'BUSTO', 'Carlos Jose Maria', 'jose.patoba@gmail.com', '2017-10-17 20:15:05', '2017-10-20 00:00:00', 28898439, 'CEJAS', 'NATALIA', '3816114733', 'aaa@aaa.com', 'VISA', 3200.00, 3040.00, 3, 3905.39, 1301.80, 905148, 6385, '2017-10-17 20:15:05', 'C');
INSERT INTO `Operaciones` VALUES (50178, 35521870, 'FARIAS', 'Yanina', 'johana123.456@hotmail.com', '2017-10-17 20:57:58', '2017-10-23 00:00:00', 29242308, 'ALDERETES', 'FATIMA', '1111111', 'aaa@aaa.com', 'VISA', 1260.00, 1197.00, 6, 1636.97, 272.83, 862889, 10, '2017-10-17 20:57:58', 'C');
INSERT INTO `Operaciones` VALUES (50179, 35806481, 'LUCERO', 'Maria Belen', 'belen_ml34@hotmail.com', '2017-10-18 10:39:38', '2017-10-23 00:00:00', 14080413, 'CARREÑO', 'Maria J', '0381155846923', '', 'VISA', 1793.00, 1703.35, 6, 2329.44, 388.24, 915244, 854, '2017-10-18 10:39:38', 'C');
INSERT INTO `Operaciones` VALUES (50180, 31052970, 'PAZ', 'Claudia Elizabeth', 'aaa@aaa.com', '2017-10-18 10:44:11', '2017-10-23 00:00:00', 12870917, 'GALLARDO', 'Maria rosa', '0381156679743', 'op@clubhonorarios.com', 'VISA', 275.00, 261.25, 2, 328.67, 164.34, 6185, 915, '2017-10-18 10:44:11', 'C');
INSERT INTO `Operaciones` VALUES (50181, 23930165, 'GONZALES', 'Victor Heraldo', 'victorheraldogonzales@yahoo.com.ar', '2017-10-18 11:15:18', '2017-10-23 00:00:00', 27205511, 'REINA', 'Dario Manuel', '0381156410630', '', 'VISA', 415.00, 394.25, 2, 496.00, 248.00, 13572, 7, '2017-10-18 11:15:18', 'C');
INSERT INTO `Operaciones` VALUES (50182, 24750862, 'GORDILLO', 'Jose Luis', 'bc.telefonia@hotmail.com', '2017-10-18 11:26:01', '2017-10-23 00:00:00', 21867415, 'MEDINA', 'Agustina Isabel', '0381153877741', '', 'VISA', 1180.00, 1121.00, 6, 1533.04, 255.51, 912527, 4, '2017-10-18 11:26:01', 'C');
INSERT INTO `Operaciones` VALUES (50183, 34064283, 'ALBORNOZ', 'Adrian René', 'albornozadrianrene@gmail.com', '2017-10-18 11:41:34', '2017-10-23 00:00:00', 8583519, 'ZOTELO', 'Clara', '0381155669840', '', 'MASTER', 2940.00, 2793.00, 6, 3819.61, 636.60, 634661, 0, '2017-10-18 11:41:34', 'C');
INSERT INTO `Operaciones` VALUES (50184, 22622010, 'TORRES', 'Diego Fabian', 'torresdie123@gmail.com', '2017-10-18 12:55:58', '2017-10-23 00:00:00', 34287658, 'RODRIGUEZ', 'Jackelin', '0381154540475', '', 'VISA', 2730.00, 2593.50, 12, 4116.61, 343.05, 764062, 3339, '2017-10-18 12:55:58', 'C');
INSERT INTO `Operaciones` VALUES (50185, 40275984, 'CHAPA', 'Matias Alejandro', 'paranatecno@gmail.com', '2017-10-18 13:22:22', '2017-10-23 00:00:00', 35813544, 'BRIZUELA', 'Ruben Jeremias', '0381155731499', '', 'VISA', 400.00, 380.00, 2, 478.07, 239.04, 50307, 3062, '2017-10-18 13:22:22', 'C');
INSERT INTO `Operaciones` VALUES (50186, 17239380, 'HERRERA', 'Hector Eduardo', 'eduardoherre@hotmail.com', '2017-10-18 14:40:35', '2017-10-23 00:00:00', 23517341, 'CALDERON', 'Marta', '0381153372589', '', 'VISA', 1000.00, 950.00, 3, 1220.43, 406.81, 6309, 4591, '2017-10-18 14:40:35', 'C');
INSERT INTO `Operaciones` VALUES (50187, 23930014, 'HAMAKERS', 'Maria Cristina ', 'crishamakers@gmail.com', '2017-10-18 16:27:13', '2017-10-23 00:00:00', 31426321, 'PONCE', 'Susana', '03814941036', '', 'VISA', 1100.00, 1045.00, 6, 1429.10, 238.18, 521330, 6165, '2017-10-18 16:27:13', 'C');
INSERT INTO `Operaciones` VALUES (50188, 14661176, 'ANDRADA', 'Luis Humberto', 'acsetec@hotmail.com', '2017-10-18 17:28:38', '2017-10-23 00:00:00', 26412800, 'VARELA', 'Veronica', '0381155447223', '', 'VISA', 1500.00, 1425.00, 6, 1948.78, 324.80, 10652, 7284, '2017-10-18 17:28:38', 'C');
INSERT INTO `Operaciones` VALUES (50189, 22805091, 'MEONE', 'Norma Beatriz', 'tibitty@hotmail.com', '2017-10-18 19:17:27', '2017-10-23 00:00:00', 33483019, 'MARTINEZ', 'OSCAR', '3815149042', 'oscarmn420@gmail.com', 'VISA', 500.00, 475.00, 3, 610.22, 203.41, 6420, 8759, '2017-10-18 19:17:27', 'C');
INSERT INTO `Operaciones` VALUES (50190, 34603504, 'GIOIA', 'Maira Yanina', 'mairagioia@gmail.com', '2017-10-18 20:37:03', '2017-10-24 00:00:00', 40227315, 'CORDOBA', 'FERNANDO', '4891390', 'mairagioia@gmail.com', 'VISA', 800.00, 760.00, 3, 976.35, 325.45, 6292, 9505, '2017-10-18 20:37:03', 'C');
INSERT INTO `Operaciones` VALUES (50191, 39480118, 'DIAZ', 'Cesar Exequiel', 'exequieldiaz144@gmail.com', '2017-10-18 20:43:18', '2017-10-24 00:00:00', 21338882, 'Reinara', 'ricardo hugo.', '03814387685', '', 'VISA', 1650.00, 1567.50, 3, 2013.72, 671.24, 815376, 9527, '2017-10-18 20:43:18', 'C');
INSERT INTO `Operaciones` VALUES (50192, 33971673, 'DIAZ CABRERA GARCIA', 'Flavia Maria Lidia', 'elmayordemisdefectos@gmail.com', '2017-10-19 12:38:25', '2017-10-24 00:00:00', 36420541, 'RIMAYHUAMAN ', 'Eloy Alfredo', '0381156265263', 'eloy.rimay.91@gmail.com', 'VISA', 635.00, 603.25, 4, 791.33, 197.83, 944182, 182, '2017-10-19 12:38:25', 'C');
INSERT INTO `Operaciones` VALUES (50193, 38115851, 'ANDRADE', 'Maico Hugo', 'andrademaico794@gmail.com', '2017-10-19 17:05:44', '2017-10-24 00:00:00', 41090114, 'PONCE DIAZ', 'Ariana ', '0381154433903', '', 'VISA', 450.00, 427.50, 3, 549.20, 183.07, 11784, 183, '2017-10-19 17:05:44', 'C');
INSERT INTO `Operaciones` VALUES (50194, 29836129, 'FAUO', 'Walter Fabian', 'aaa@aaa.com', '2017-10-19 17:57:42', '2017-10-24 00:00:00', 13415151, 'CORTEZ', 'SUSANA', '4296623', '', 'VISA', 5300.00, 5035.00, 6, 6885.68, 1147.61, 306, 697, '2017-10-19 17:57:42', 'C');
INSERT INTO `Operaciones` VALUES (50195, 29836129, 'FAUO', 'Walter Fabian', 'aaa@aaa.com', '2017-10-19 19:40:09', '2017-10-24 00:00:00', 13415151, 'CORTEZ', 'SUSANA', '156493213', 'aaa@aaa.com', 'VISA', 4853.00, 4610.35, 3, 5922.77, 1974.26, 10448, 2007, '2017-10-19 19:40:09', 'C');
INSERT INTO `Operaciones` VALUES (50196, 35521870, 'FARIAS', 'Yanina', 'johana123.456@hotmail.com', '2017-10-19 20:13:14', '2017-10-24 00:00:00', 27371555, 'GOITIA', 'CARLOS', '4346919', 'aaa@aaa.com', 'VISA', 1417.50, 1346.63, 3, 1729.97, 576.66, 8994, 2424, '2017-10-19 20:13:14', 'C');
INSERT INTO `Operaciones` VALUES (50197, 36584371, 'CASTILLO', 'Gustavo German', 'castillogustavo3442@gmail.com', '2017-10-19 20:27:52', '2017-10-24 00:00:00', 27843039, 'MAZA', 'JUAN SEBASTIAN', '156618357', 'aaa@aaa.com', 'MASTER', 450.00, 427.50, 3, 549.20, 183.07, 628480, 0, '2017-10-19 20:27:52', 'C');
INSERT INTO `Operaciones` VALUES (50198, 14488271, 'PEDRINI', 'Lucia Ester', 'luciaepedrini@gmail.com', '2017-10-20 11:11:30', '2017-10-25 00:00:00', 16784376, 'JUAREZ', 'Gloria A ', '0381154191390', '', 'VISA', 550.00, 522.50, 3, 671.24, 223.75, 6365, 8566, '2017-10-20 11:11:30', 'C');
INSERT INTO `Operaciones` VALUES (50199, 31323213, 'RODRIGUEZ', 'Rodrigo Luis ', 'rodrigorodriguez140@hotmail.com', '2017-10-20 11:20:39', '2017-10-25 00:00:00', 25542431, 'PALOMINO', 'Augusto E', '0381155155142', '', 'VISA', 403.00, 382.85, 2, 481.65, 240.83, 32671, 8689, '2017-10-20 11:20:39', 'C');
INSERT INTO `Operaciones` VALUES (50200, 26783306, 'PALOMO', 'Brenda Ivana ', 'centrodestudiostucuman@hotmail.com', '2017-10-20 14:42:06', '2017-10-25 00:00:00', 25212583, 'SARVERRY', 'Monica Paola', '0381155366750', '', 'VISA', 3750.00, 3562.50, 6, 4871.95, 811.99, 57662, 2630, '2017-10-20 14:42:06', 'C');
INSERT INTO `Operaciones` VALUES (50201, 30807633, 'MARTEL', 'Maria Jose', 'aaa@aaa.com', '2017-10-20 17:50:12', '2017-10-25 00:00:00', 37723271, 'LEAL', 'YONATAN EMANUEL', '3876499866', 'aaa@aaa.com', 'VISA', 132.00, 125.40, 3, 161.10, 53.70, 11417, 184, '2017-10-20 17:50:12', 'C');
INSERT INTO `Operaciones` VALUES (50202, 7708841, 'ARMANDO', 'Miguel Angel', 'aberturadelnorte12@gmail.com', '2017-10-20 18:02:40', '2017-10-25 00:00:00', 11397337, 'cabrera', 'maria isolina', '3816457702', 'op@clubhonorarios.com', 'VISA', 3800.00, 3610.00, 6, 4936.91, 822.82, 14238, 6845, '2017-10-20 18:02:40', 'C');
INSERT INTO `Operaciones` VALUES (50203, 25844025, 'PALOMO', 'Ana Carolina', 'anacarolinapalomo@gmail.com', '2017-10-20 18:50:15', '2017-10-25 00:00:00', 30319042, 'GUTIERREZ', 'GABRIELA', '156890518', 'aaa@aaa.com', 'VISA', 600.00, 570.00, 3, 732.26, 244.09, 957164, 7684, '2017-10-20 18:50:15', 'C');
INSERT INTO `Operaciones` VALUES (50204, 31323213, 'RODRIGUEZ', 'Rodrigo Luis ', 'rodrigorodriguez140@hotmail.com', '2017-10-20 19:09:20', '2017-10-25 00:00:00', 34911391, 'ROSALES', 'MELISA', '4296810', 'rosalesmelisa.mr@gmail.com', 'VISA', 615.00, 584.25, 2, 735.03, 367.52, 6304, 7997, '2017-10-20 19:09:20', 'C');
INSERT INTO `Operaciones` VALUES (50205, 22805091, 'MEONE', 'Norma Beatriz', 'tibitty@hotmail.com', '2017-10-20 19:42:58', '2017-10-25 00:00:00', 24671033, 'Alvarez', 'viviana fabiola', '03816384132', 'vivianafabiolalvarez@gmail.com', 'VISA', 400.00, 380.00, 2, 478.07, 239.04, 6549, 8384, '2017-10-20 19:42:58', 'C');
INSERT INTO `Operaciones` VALUES (50206, 30117313, 'Lobo Quinteros', 'Ramiro ', 'relq@clubhonorarios.com', '2017-10-20 20:06:22', '2017-10-25 00:00:00', 22429329, 'PACHECO', 'HILDA', '154058043', 'hildapacheco@live.com', 'VISA', 3100.00, 2945.00, 3, 3783.35, 1261.12, 7015, 8514, '2017-10-20 20:06:22', 'C');
INSERT INTO `Operaciones` VALUES (50207, 37725553, 'ELIAS', 'Maria Florencia', 'florelias@live.com', '2017-10-20 20:21:11', '2017-10-25 00:00:00', 11930694, 'BARRERAS', 'GRACIELA', '111111', 'aaa@aaa.com', 'VISA', 351.00, 333.45, 3, 428.37, 142.79, 8830, 8856, '2017-10-20 20:21:11', 'C');
INSERT INTO `Operaciones` VALUES (50208, 20366891, 'MEDINA', 'Silvia Rosa', 'op@clubhonorarios.com', '2017-10-20 20:56:08', '2017-10-26 00:00:00', 18229545, 'DIAZ', 'CLAUDIA', '156367509', 'aaa@aaa.com', 'VISA', 880.00, 836.00, 3, 1073.98, 357.99, 7990, 9183, '2017-10-20 20:56:08', 'C');
INSERT INTO `Operaciones` VALUES (50209, 28567276, 'Sosa', 'Paola Natalia', 'rocio-bustos20@hotmail.com', '2017-10-21 10:07:31', '2017-10-26 00:00:00', 22383027, 'zurita', 'graciela', '3834224698', 'asd.asd@asdf', 'VISA', 450.00, 427.50, 3, 549.20, 183.07, 6880, 1261, '2017-10-21 10:07:31', 'C');
INSERT INTO `Operaciones` VALUES (50210, 17239380, 'HERRERA', 'Hector Eduardo', 'eduardoherre@hotmail.com', '2017-10-21 11:22:13', '2017-10-26 00:00:00', 30598283, 'castilla', 'jose', '3816295572', 'castilla1@hotmail.com.ar', 'VISA', 630.00, 598.50, 3, 768.87, 256.29, 5866, 2082, '2017-10-21 11:22:13', 'C');
INSERT INTO `Operaciones` VALUES (50211, 26782634, 'LEPEN', 'Vanesa', 'vanelepen@hotmail.com', '2017-10-21 13:25:19', '2017-10-26 00:00:00', 13629000, 'nuñez', 'irma', '3815203110', 'irmanunez60@hotmail.com', 'VISA', 385.00, 365.75, 3, 469.87, 156.62, 8210, 3316, '2017-10-21 13:25:19', 'C');
INSERT INTO `Operaciones` VALUES (50212, 18404811, 'TORRES', 'Graciela Claudia', 'aaa@aaa.com', '2017-10-21 16:19:49', '2017-10-26 00:00:00', 28790096, 'OCARANZA', 'CAROLINA', '4280116', 'carolinaocaranza@hotmail.com', 'MASTER', 350.00, 332.50, 2, 418.31, 209.16, 642453, 0, '2017-10-21 16:19:49', 'C');
INSERT INTO `Operaciones` VALUES (50213, 23930165, 'GONZALES', 'Victor Heraldo', 'victorheraldogonzales@yahoo.com.ar', '2017-10-21 18:10:25', '2017-10-26 00:00:00', 5960100, 'FANJUL', 'MARIA CECILIA', '156209510', 'victorheraldogonzales@yahoo.com.ar', 'VISA', 4666.50, 4433.18, 3, 5695.16, 1898.39, 5844, 8, '2017-10-21 18:10:25', 'C');
INSERT INTO `Operaciones` VALUES (50214, 31589604, 'AGUIRRE', 'Diego Martin', 'diegoaguirre39@gmail.com', '2017-10-21 19:07:39', '2017-10-26 00:00:00', 40355445, 'GOMEZ', 'MARIA PILAR', '4372156', 'pilar_gomez_97@hotmail.com', 'VISA', 1640.00, 1558.00, 2, 1960.08, 980.04, 441018, 4914, '2017-10-21 19:07:39', 'C');
INSERT INTO `Operaciones` VALUES (50215, 23930165, 'GONZALES', 'Victor Heraldo', 'victorheraldogonzales@yahoo.com.ar', '2017-10-21 19:41:39', '2017-10-26 00:00:00', 33163301, 'MARTINEZ', 'GUSTAVO', '154950329', 'victorheraldogonzales@yahoo.com.ar', 'VISA', 75.00, 71.25, 2, 89.64, 44.82, 19086, 9, '2017-10-21 19:41:39', 'C');
INSERT INTO `Operaciones` VALUES (50216, 34133394, 'MARRAZA', 'Mayra Daiana ', 'marraza_daiana@hotmail.com.ar', '2017-10-23 11:31:30', '2017-10-26 00:00:00', 37457724, 'Carillo Sal', 'luciana', '3813021866', 'lu_sac@hotmail.com', 'VISA', 389.00, 369.55, 2, 464.92, 232.46, 7322, 3374, '2017-10-23 11:31:30', 'C');
INSERT INTO `Operaciones` VALUES (50217, 29081406, 'VIZCARRA', 'Marisa Viviana ', 'aaa@aaa.com', '2017-10-23 12:01:36', '2017-10-26 00:00:00', 29599263, 'Medina', 'sandra liliana', '3815069422', 'sandralilinamedina82@gmail.com', 'VISA', 1310.00, 1244.50, 6, 1701.93, 283.66, 3551, 4050, '2017-10-23 12:01:36', 'C');
INSERT INTO `Operaciones` VALUES (50218, 36668537, 'DIAZ', 'Diego Franco Javier', 'diegofjdiaz284@gmail.com', '2017-10-23 12:08:22', '2017-10-26 00:00:00', 37194081, 'Sosa', 'jose nicolas', '3865308356', 'nicoso93@hotmail.com', 'VISA', 1800.00, 1710.00, 6, 2338.53, 389.76, 5998, 4163, '2017-10-23 12:08:22', 'C');
INSERT INTO `Operaciones` VALUES (50219, 21724685, 'FERNANDEZ', 'Isidro de Jesus', 'aaa@aaa.com', '2017-10-23 12:44:03', '2017-10-26 00:00:00', 14144921, 'RUIZ MILANO', 'Hugo Walter', '038115478205', 'ing.hugoruizmilano@gmail.com', 'VISA', 2600.00, 2470.00, 3, 3173.13, 1057.71, 11546, 4798, '2017-10-23 12:44:03', 'C');
INSERT INTO `Operaciones` VALUES (50220, 20366891, 'MEDINA', 'Silvia Rosa', 'op@clubhonorarios.com', '2017-10-23 13:42:31', '2017-10-26 00:00:00', 40696630, 'ROLDAN', 'Mariana', '0381153366470', '', 'VISA', 1980.00, 1881.00, 3, 2416.46, 805.49, 6325, 5644, '2017-10-23 13:42:31', 'C');
INSERT INTO `Operaciones` VALUES (50221, 33971673, 'DIAZ CABRERA GARCIA', 'Flavia Maria Lidia', 'elmayordemisdefectos@gmail.com', '2017-10-23 19:04:26', '2017-10-26 00:00:00', 34603345, 'ARANCIBIA AZCUY', 'GABRIELA', '3816596299', 'gabylu1089@gmail.com', 'VISA', 735.00, 698.25, 2, 878.45, 439.23, 14777, 458, '2017-10-23 19:04:26', 'C');
INSERT INTO `Operaciones` VALUES (50222, 34133394, 'MARRAZA', 'Mayra Daiana ', 'marraza_daiana@hotmail.com.ar', '2017-10-23 19:14:19', '2017-10-26 00:00:00', 32016260, 'CARRIZO', 'MARIA NOELIA', '155776239', 'noep_16@hotmail.com', 'VISA', 550.00, 522.50, 3, 671.24, 223.75, 6288, 682, '2017-10-23 19:14:19', 'C');
INSERT INTO `Operaciones` VALUES (50223, 35192768, 'BELTRAN', 'Rosana Carolina', 'aaa@aaa.com', '2017-10-23 19:18:47', '2017-10-26 00:00:00', 22557098, 'Sanchez', 'maria geronima', '3814661425', 'op@clubhonorarios.com', 'VISA', 650.00, 617.50, 6, 844.47, 140.75, 202125, 717, '2017-10-23 19:18:47', 'C');
INSERT INTO `Operaciones` VALUES (50224, 24504751, 'GARCIA', 'Cesar Ariel', 'aaa@aaa.com', '2017-10-23 19:21:33', '2017-10-26 00:00:00', 27365187, 'MAJOREL', 'CECILIA', '154693220', 'ceciliamajorel@hotmail.com', 'VISA', 8800.00, 8360.00, 9, 12402.21, 1378.02, 8052, 744, '2017-10-23 19:21:33', 'C');
INSERT INTO `Operaciones` VALUES (50225, 16458365, 'PITA', 'Jorge Horacio', 'rajota2001@yahoo.com.ar', '2017-10-23 19:30:40', '2017-10-26 00:00:00', 24553113, 'VILLAGRA', 'MARTIN RAMIRO', '3814635341', 'ramiro.rrpp@hotmail.com', 'VISA', 1455.00, 1382.25, 3, 1775.73, 591.91, 182302, 857, '2017-10-23 19:30:40', 'C');
INSERT INTO `Operaciones` VALUES (50226, 24200388, 'SIUFI', 'Maria Nora', 'norasiufi@hotmail.com', '2017-10-23 21:01:10', '2017-10-27 00:00:00', 37658728, 'MUÑOZ', 'MARIANA', '3814544641', 'MARUMG4@HOTMAIL.COM', 'VISA', 830.00, 788.50, 2, 991.99, 496.00, 6289, 1834, '2017-10-23 21:01:10', 'C');
INSERT INTO `Operaciones` VALUES (50227, 31323213, 'RODRIGUEZ', 'Rodrigo Luis ', 'rodrigorodriguez140@hotmail.com', '2017-10-23 21:10:36', '2017-10-27 00:00:00', 34309758, 'PEREZ LAYUS', 'Rocio', '0381155982772', '', 'MASTER', 402.00, 381.90, 2, 480.46, 240.23, 634929, 0, '2017-10-23 21:10:36', 'C');
INSERT INTO `Operaciones` VALUES (50228, 28292581, 'FRETE ', 'Luciana Pamela ', 'pamelafrete@hotmail.com.ar', '2017-10-24 11:33:52', '2017-10-27 00:00:00', 32206755, 'arrieta', 'cintia ', '3816669345', 'romina_arrieta21@hotmail.com', 'VISA', 750.00, 712.50, 6, 974.39, 162.40, 471426, 6630, '2017-10-24 11:33:52', 'C');
INSERT INTO `Operaciones` VALUES (50229, 27364223, 'FRESCO', 'Gonzalo Fernando', 'gonzalo.fresco@yahoo.com.ar', '2017-10-24 11:58:11', '2017-10-27 00:00:00', 14023425, 'SALVATIERRA', 'JUAN ALBERTO', '0381156975087', '', 'MASTER', 4600.00, 4370.00, 12, 6897.09, 574.76, 693589, 0, '2017-10-24 11:58:11', 'C');
INSERT INTO `Operaciones` VALUES (50230, 24504751, 'GARCIA', 'Cesar Ariel', 'aaa@aaa.com', '2017-10-24 12:31:49', '2017-10-27 00:00:00', 27365187, 'MAJOREL', 'CECILIA', '0381154693220', '', 'VISA', 8800.00, 8360.00, 9, 12402.21, 1378.02, 6469, 7460, '2017-10-24 12:31:49', 'C');
INSERT INTO `Operaciones` VALUES (50231, 23930165, 'GONZALES', 'Victor Heraldo', 'victorheraldogonzales@yahoo.com.ar', '2017-10-24 12:52:02', '2017-10-27 00:00:00', 23931570, 'PASSINI', 'Jose Antonio ', '038154424950', '', 'VISA', 164.00, 155.80, 3, 200.15, 66.72, 5986, 6, '2017-10-24 12:52:02', 'C');
INSERT INTO `Operaciones` VALUES (50232, 38247053, 'PRADO', 'Exequiel José Manuel', 'fundacionparticipando@gmail.com', '2017-10-24 14:02:58', '2017-10-27 00:00:00', 12247740, 'ORELLANA', 'Tomasa Elva', '0381156007367', 'acostalorena@hotmail.com', 'VISA', 6316.20, 6000.39, 6, 8205.92, 1367.65, 6776, 185, '2017-10-24 14:02:58', 'C');
INSERT INTO `Operaciones` VALUES (50233, 14488271, 'PEDRINI', 'Lucia Ester', 'luciaepedrini@gmail.com', '2017-10-24 17:55:18', '2017-10-27 00:00:00', 30442994, 'RIVADENEIRA ', 'SILVIA CAROLINA', '15507435', 'AAA@AAA.COM', 'VISA', 370.00, 351.50, 3, 451.56, 150.52, 604515, 2211, '2017-10-24 17:55:18', 'C');
INSERT INTO `Operaciones` VALUES (50234, 16933577, 'ARCE', 'Pio Roque', 'pioroquearce@hotmail.com', '2017-10-24 19:37:25', '2017-10-27 00:00:00', 30030740, 'ROBLES', 'GUSTAVO', '154035391', 'aaa@aaa.com', 'VISA', 1785.00, 1695.75, 6, 2319.05, 386.51, 689820, 3500, '2017-10-24 19:37:25', 'C');
INSERT INTO `Operaciones` VALUES (50235, 35813615, 'ROBLEDO', 'Gerardo Gabriel', 'robledog637@gmail.com', '2017-10-24 19:55:10', '2017-10-27 00:00:00', 23566609, 'ARREYES', 'ALEJANDRA', '4345108', 'aaa@aaa.com', 'VISA', 1125.00, 1068.75, 6, 1461.58, 243.60, 959097, 3691, '2017-10-24 19:55:10', 'C');
INSERT INTO `Operaciones` VALUES (50236, 16933577, 'ARCE', 'Pio Roque', 'pioroquearce@hotmail.com', '2017-10-24 20:07:32', '2017-10-27 00:00:00', 22369831, 'LEGUIZAMON', 'JOSE OMAR', '156522665', 'omarleguizamon@gmail.com', 'VISA', 3570.00, 3391.50, 12, 5383.26, 448.61, 521466, 3829, '2017-10-24 20:07:32', 'C');
INSERT INTO `Operaciones` VALUES (50237, 24750862, 'GORDILLO', 'Jose Luis', 'bc.telefonia@hotmail.com', '2017-10-25 10:51:25', '2017-10-30 00:00:00', 27365899, 'DIAZ', 'Angelina', '0381155441603', '', 'VISA', 261.58, 248.50, 11, 385.67, 35.06, 750260, 5, '2017-10-25 10:51:25', 'C');
INSERT INTO `Operaciones` VALUES (50238, 31323213, 'RODRIGUEZ', 'Rodrigo Luis ', 'rodrigorodriguez140@hotmail.com', '2017-10-25 11:29:42', '2017-10-30 00:00:00', 28681749, 'LEZCANO POSSE', 'Roberto gustavo', '0381156291115', '', 'MASTER', 785.00, 745.75, 2, 938.21, 469.11, 648888, 0, '2017-10-25 11:29:42', 'C');
INSERT INTO `Operaciones` VALUES (50239, 39976680, 'GIMENEZ SARAVIA ', 'Florencia', 'flormgimenez@hotmail.com', '2017-10-25 17:04:55', '2017-10-30 00:00:00', 35209359, 'LOBO', 'Andrea Fabiana', '0381155958139', 'las04@hotmail.com', 'VISA', 2200.00, 2090.00, 6, 2858.21, 476.37, 6158, 3728, '2017-10-25 17:04:55', 'C');
INSERT INTO `Operaciones` VALUES (50240, 31323213, 'RODRIGUEZ', 'Rodrigo Luis ', 'rodrigorodriguez140@hotmail.com', '2017-10-25 19:21:00', '2017-10-30 00:00:00', 31619368, 'LOPEZ', 'ANDRES', '3815525937', 'aaa@aaa.com', 'VISA', 4028.00, 3826.60, 6, 5233.12, 872.19, 74606, 5694, '2017-10-25 19:21:00', 'C');
INSERT INTO `Operaciones` VALUES (50241, 34064283, 'ALBORNOZ', 'Adrian René', 'albornozadrianrene@gmail.com', '2017-10-25 19:35:29', '2017-10-30 00:00:00', 17613413, 'IBAÑEZ', 'TOMAS', '4972543', 'aaa@aaa.com', 'VISA', 2650.00, 2517.50, 4, 3302.39, 825.60, 10911, 5804, '2017-10-25 19:35:29', 'C');
INSERT INTO `Operaciones` VALUES (50242, 17239380, 'HERRERA', 'Hector Eduardo', 'eduardoherre@hotmail.com', '2017-10-25 19:42:29', '2017-10-30 00:00:00', 32513829, 'DAVILA ARAOZ', 'PABLO', '155849408', 'pabloalejandrodavila1986@gmail.com', 'MASTER', 948.00, 900.60, 3, 1156.97, 385.66, 600301, 0, '2017-10-25 19:42:29', 'C');
INSERT INTO `Operaciones` VALUES (50243, 32132760, 'GUAZZI', 'Noelia Carolina ', 'aledelnol@gmail.com', '2017-10-25 19:58:26', '2017-10-30 00:00:00', 33755831, 'ORTIZ', 'CRISTIAN', '3815077624', 'chinocc10@hot,aol.com', 'VISA', 1200.00, 1140.00, 3, 1464.52, 488.17, 811578, 6055, '2017-10-25 19:58:26', 'C');
INSERT INTO `Operaciones` VALUES (50244, 29836129, 'FAUO', 'Walter Fabian', 'aaa@aaa.com', '2017-10-25 20:05:23', '2017-10-30 00:00:00', 20759932, 'ZELAYA', 'WALTER', '4293853', 'aaa@aaa.com', 'VISA', 3600.00, 3420.00, 3, 4393.56, 1464.52, 14081, 6109, '2017-10-25 20:05:23', 'C');
INSERT INTO `Operaciones` VALUES (50245, 25502069, 'FUNES', 'Ivonne Lorena', 'lorena_moria@hotmail.com', '2017-10-25 20:09:21', '2017-10-30 00:00:00', 25735091, 'CORNEJO', 'Lucia del C', '0381153574534', 'lucia.cornejo212@hotmail.es', 'MASTER', 600.00, 570.00, 2, 717.10, 358.55, 619504, 0, '2017-10-25 20:09:21', 'C');
INSERT INTO `Operaciones` VALUES (50246, 25844025, 'PALOMO', 'Ana Carolina', 'anacarolinapalomo@gmail.com', '2017-10-25 20:17:36', '2017-10-30 00:00:00', 32853000, 'RISSO PAZ', 'CRISTIAN ', '3814488913', 'AAA@AAA.COM', 'VISA', 3000.00, 2850.00, 3, 3661.30, 1220.43, 10673, 6219, '2017-10-25 20:17:36', 'C');
INSERT INTO `Operaciones` VALUES (50247, 31323213, 'RODRIGUEZ', 'Rodrigo Luis ', 'rodrigorodriguez140@hotmail.com', '2017-10-26 10:25:54', '2017-10-31 00:00:00', 13474808, 'LOPEZ PINNA', 'Sandra', '0381155052825', '', 'MASTER', 742.00, 704.90, 2, 886.82, 443.41, 658836, 0, '2017-10-26 10:25:54', 'C');
INSERT INTO `Operaciones` VALUES (50248, 16175500, 'ALDERETES', 'Omar Anibal', 'aaa@aa.com', '2017-10-26 11:14:04', '2017-10-31 00:00:00', 6990474, 'LOBO', 'Antonio', '0386515609308', '', 'VISA', 931.00, 884.45, 3, 1136.22, 378.74, 25183, 944, '2017-10-26 11:14:04', 'C');
INSERT INTO `Operaciones` VALUES (50249, 21326598, 'MENA MOYANO', 'Maria Andrea ', 'andreina_stamaria@yahoo.com', '2017-10-26 13:50:42', '2017-10-31 00:00:00', 20958804, 'GATTI', 'Norma E', '011159921452', '', 'VISA', 350.00, 332.50, 2, 418.31, 209.16, 10051, 3681, '2017-10-26 13:50:42', 'C');
INSERT INTO `Operaciones` VALUES (50250, 17239380, 'HERRERA', 'Hector Eduardo', 'eduardoherre@hotmail.com', '2017-10-26 16:38:35', '2017-10-31 00:00:00', 30539891, 'SELIS', 'Enzo Sebastian', '0381154562380', '', 'VISA', 1895.00, 1800.25, 2, 2264.84, 1132.42, 6948, 6202, '2017-10-26 16:38:35', 'C');
INSERT INTO `Operaciones` VALUES (50251, 14488271, 'PEDRINI', 'Lucia Ester', 'luciaepedrini@gmail.com', '2017-10-26 18:15:48', '2017-10-31 00:00:00', 30268377, 'SIERRA', 'MARIA SOLEDAD', '154491705', 'sols83@hotmail.com', 'VISA', 990.00, 940.50, 3, 1208.23, 402.74, 6297, 7799, '2017-10-26 18:15:48', 'C');
INSERT INTO `Operaciones` VALUES (50252, 22387989, 'ABREGU', 'Juan Sergio', 'sergioabreguj@gmail.com', '2017-10-26 18:20:52', '2017-10-31 00:00:00', 14410594, 'Katz', 'Monica', '', '', 'VISA', 950.00, 902.50, 2, 1135.41, 567.71, 6182, 7925, '2017-10-26 18:20:52', 'C');
INSERT INTO `Operaciones` VALUES (50253, 34603504, 'GIOIA', 'Maira Yanina', 'mairagioia@gmail.com', '2017-10-26 19:09:06', '2017-10-31 00:00:00', 33047949, 'DIAZ', 'YOANA', '156551224', 'aaa@aaa.com', 'VISA', 1400.00, 1330.00, 12, 2111.08, 175.92, 477193, 8513, '2017-10-26 19:09:06', 'C');
INSERT INTO `Operaciones` VALUES (50254, 32459896, 'ARGAÑARAZ', 'Walter Gabriel ', 'walter2004280@hotmail.com', '2017-10-26 19:59:41', '2017-10-31 00:00:00', 25373012, 'REYNA', 'MARIA ALEJANDRA', '153314863', 'aaa@aaa.com', 'VISA', 2255.00, 2142.25, 3, 2752.08, 917.36, 7847, 9194, '2017-10-26 19:59:41', 'C');
INSERT INTO `Operaciones` VALUES (50255, 26446363, 'RIBO MURUAGA ', 'Natalia', 'natyribo@hotmail.com', '2017-10-26 20:15:11', '2017-10-31 00:00:00', 13817689, 'MARCIAL', 'ANGELICA', '155637916', 'angelicamarcial7@gmail.com', 'VISA', 5800.00, 5510.00, 12, 8745.91, 728.83, 6735, 9331, '2017-10-26 20:15:11', 'C');
INSERT INTO `Operaciones` VALUES (50256, 31323213, 'RODRIGUEZ', 'Rodrigo Luis ', 'rodrigorodriguez140@hotmail.com', '2017-10-26 20:48:02', '2017-11-01 00:00:00', 14073078, 'Arias', 'Ramon', '3814742880', 'ramonarias_lms2010@hotmai.com', 'VISA', 732.00, 695.40, 3, 893.36, 297.79, 11879, 9629, '2017-10-26 20:48:02', 'C');
INSERT INTO `Operaciones` VALUES (50257, 22832991, 'DE LA VEGA', 'Eliana', 'eliandelavega@gmail.com', '2017-10-26 20:59:12', '2017-11-01 00:00:00', 24622656, 'MEDINA', 'MABEL', '156685307', 'mabelmedina07@yahoo.com.ar', 'VISA', 1590.00, 1510.50, 2, 1900.32, 950.16, 6686, 9691, '2017-10-26 20:59:12', 'C');
INSERT INTO `Operaciones` VALUES (50259, 38247053, 'PRADO', 'Exequiel José Manuel', 'fundacionparticipando@gmail.com', '2017-10-27 13:07:13', '2017-11-01 00:00:00', 32408515, 'ALCOBA', 'Silvia LLucia', '0388154465272', '', 'VISA', 1060.00, 1007.00, 3, 1293.66, 431.22, 6665, 186, '2017-10-27 13:07:13', 'C');
INSERT INTO `Operaciones` VALUES (50260, 29836129, 'FAUO', 'Walter Fabian', 'aaa@aaa.com', '2017-10-27 14:44:22', '2017-11-01 00:00:00', 12389744, 'VILLAGRA', 'Julio Zenon ', '', '', 'MASTER', 3850.00, 3657.50, 6, 5001.86, 833.64, 618117, 0, '2017-10-27 14:44:22', 'C');
INSERT INTO `Operaciones` VALUES (50261, 29836129, 'FAUO', 'Walter Fabian', 'aaa@aaa.com', '2017-10-27 15:00:18', '2017-11-01 00:00:00', 24340424, 'JIMENEZ', 'Ana Maria', '', '', 'VISA', 2500.00, 2375.00, 3, 3051.09, 1017.03, 11554, 6592, '2017-10-27 15:00:18', 'C');
INSERT INTO `Operaciones` VALUES (50262, 32134226, 'LUCENA', 'Gonzalo', 'recorcholis_519@hotmail.com', '2017-10-27 16:16:15', '2017-11-01 00:00:00', 33974431, 'JAIME', 'Manuel Roberto', '0381156431838', '', 'VISA', 2200.00, 2090.00, 12, 3317.41, 276.45, 11593, 750, '2017-10-27 16:16:15', 'C');
INSERT INTO `Operaciones` VALUES (50263, 36224331, 'GANIM', 'Rocio Celina', 'rocioganim@gmail.com', '2017-10-27 16:49:00', '2017-11-01 00:00:00', 35523739, 'AUAD VILLEGAS', 'MARIA DEL ROSARIO', '155346232', 'roauadvillegas@hotmail.com.ar', 'VISA', 900.00, 855.00, 3, 1098.39, 366.13, 8456, 1439, '2017-10-27 16:49:00', 'C');
INSERT INTO `Operaciones` VALUES (50264, 24671050, 'MONTEAGUDO', 'Luis Osvaldo', 'drluismonteagudo@gmail.com', '2017-10-27 16:49:10', '2017-11-01 00:00:00', 26783691, 'LORETTO', 'NILDA', '4341334', '', 'MASTER', 18900.00, 17955.00, 12, 28338.05, 2361.50, 653494, 0, '2017-10-27 16:49:10', 'C');
INSERT INTO `Operaciones` VALUES (50265, 25318614, 'MAI', 'Cristian Sebastian', 'cristianmai40@gmail.com', '2017-10-27 17:27:02', '2017-11-01 00:00:00', 35193634, 'NAVARRO', 'Leandro', '0381156422445', '', 'VISA', 2650.00, 2517.50, 12, 3995.97, 333.00, 6590, 2130, '2017-10-27 17:27:02', 'C');
INSERT INTO `Operaciones` VALUES (50266, 33431922, 'FAUO', 'Sergio Emmanuel', 'sergiofauo@hotmail.com', '2017-10-27 17:49:43', '2017-11-01 00:00:00', 12869470, 'FERNANDEZ OLMOS', 'JOSE LUIS', '3816340600', 'aaa@aaa.com', 'VISA', 1305.00, 1239.75, 3, 1592.67, 530.89, 69120, 2592, '2017-10-27 17:49:43', 'C');
INSERT INTO `Operaciones` VALUES (50267, 16458365, 'PITA', 'Jorge Horacio', 'rajota2001@yahoo.com.ar', '2017-10-27 18:07:26', '2017-11-01 00:00:00', 6184375, 'DIAZ', 'LUCIA DEL CARMEN', '4342111', 'AAA@AAA.COM', 'VISA', 1368.55, 1300.12, 6, 1778.00, 296.33, 18108, 2959, '2017-10-27 18:07:26', 'C');
INSERT INTO `Operaciones` VALUES (50268, 30399351, 'COPA', 'Matias Pedro Armando', 'matiascopa@hotmail.com', '2017-10-27 20:13:28', '2017-11-01 00:00:00', 32827674, 'PEREZ', 'MARCO ANTONIO', '154192548', 'aaa@aaa.com', 'VISA', 787.87, 748.48, 3, 961.54, 320.51, 477526, 4, '2017-10-27 20:13:28', 'C');
INSERT INTO `Operaciones` VALUES (50269, 7708841, 'ARMANDO', 'Miguel Angel', 'aberturadelnorte12@gmail.com', '2017-10-28 10:05:53', '2017-11-02 00:00:00', 38509803, 'salinas', 'tamara yohanna', '', '', 'VISA', 1650.00, 1567.50, 3, 2013.72, 671.24, 103950, 7514, '2017-10-28 10:05:53', 'C');
INSERT INTO `Operaciones` VALUES (50270, 14488271, 'PEDRINI', 'Lucia Ester', 'luciaepedrini@gmail.com', '2017-10-28 11:12:33', '2017-11-02 00:00:00', 12607612, 'MORALES', 'DELICIA', '3815465876', 'deliciam2@gmail.com', 'VISA', 630.00, 598.50, 6, 818.49, 136.42, 6867, 8249, '2017-10-28 11:12:33', 'C');
INSERT INTO `Operaciones` VALUES (50271, 29532661, 'TORAÑO', 'Maria Graciela', 'grat_df@hotmail.com', '2017-10-28 11:20:58', '2017-11-02 00:00:00', 31353925, 'diaz', 'alejandra', '381156611244', 'lalu_22creazy@hotmail.com', 'VISA', 630.00, 598.50, 6, 818.49, 136.42, 82767, 8347, '2017-10-28 11:20:58', 'C');
INSERT INTO `Operaciones` VALUES (50272, 12576317, 'ALINCASTRO', 'Pedro Daniel', 'daniellincastro12@gmail.com', '2017-10-28 11:54:24', '2017-11-02 00:00:00', 14039248, 'casado', 'viviana', '3815106862', 'asd.asdf@asdf', 'VISA', 1500.00, 1425.00, 3, 1830.65, 610.22, 6271, 8752, '2017-10-28 11:54:24', 'C');
INSERT INTO `Operaciones` VALUES (50273, 37725553, 'ELIAS', 'Maria Florencia', 'florelias@live.com', '2017-10-28 12:30:38', '2017-11-02 00:00:00', 26428001, 'cuello', 'david', '3816657411', 'tiziano010101@gmail.com', 'VISA', 145.00, 137.75, 6, 188.38, 31.40, 636696, 9220, '2017-10-28 12:30:38', 'C');
INSERT INTO `Operaciones` VALUES (50274, 31323213, 'RODRIGUEZ', 'Rodrigo Luis ', 'rodrigorodriguez140@hotmail.com', '2017-10-28 12:46:19', '2017-11-02 00:00:00', 28124674, 'castro', 'jose maria', '3813024854', 'chemajujuenio@gmail.com.ar', 'VISA', 255.00, 242.25, 6, 331.29, 55.22, 116084, 9396, '2017-10-28 12:46:19', 'C');
INSERT INTO `Operaciones` VALUES (50275, 14488271, 'PEDRINI', 'Lucia Ester', 'luciaepedrini@gmail.com', '2017-10-28 13:25:11', '2017-11-02 00:00:00', 27652513, 'palacios', 'safia', '8316570704', 'sofia_hostory79@hotmail.com', 'VISA', 630.00, 598.50, 2, 752.96, 376.48, 7951, 9713, '2017-10-28 13:25:11', 'C');
INSERT INTO `Operaciones` VALUES (50276, 36583926, 'MANSILLA', 'Franco Luis', 'francodiosesamor@gmail.com', '2017-10-28 17:06:12', '2017-11-02 00:00:00', 33973896, 'PISTAN', 'MARIA GISELE', '154773430', 'aaa@aaa.com', 'VISA', 3100.00, 2945.00, 12, 4674.54, 389.55, 424536, 1075, '2017-10-28 17:06:12', 'C');
INSERT INTO `Operaciones` VALUES (50277, 38244869, 'LEDESMA', 'Jose Augusto', 'jr_motorepuestos@hotmail.com.ar', '2017-10-28 17:49:30', '2017-11-02 00:00:00', 38119422, 'BULACIO', 'BRAIAN', '154908566', 'aaa@aaa.com', 'VISA', 810.60, 770.07, 3, 989.28, 329.76, 9337, 1281, '2017-10-28 17:49:30', 'C');
INSERT INTO `Operaciones` VALUES (50278, 35521870, 'FARIAS', 'Yanina', 'johana123.456@hotmail.com', '2017-10-28 19:47:45', '2017-11-02 00:00:00', 38015374, 'SORIA', 'GERMAN', '153407184', 'johana123.456@hotmail.com', 'VISA', 1470.00, 1396.50, 6, 1909.80, 318.30, 94765, 16, '2017-10-28 19:47:45', 'C');
INSERT INTO `Operaciones` VALUES (50279, 28883528, 'AGÜERO', 'Natalia Del Lujan', 'nataliadellujana@gmail.com', '2017-10-28 20:02:30', '2017-11-02 00:00:00', 25530877, 'VILLAGRA', 'PATRICIA', '4264648', 'aaa@aaa.com', 'VISA', 850.00, 807.50, 2, 1015.89, 507.95, 7227, 2006, '2017-10-28 20:02:30', 'C');
INSERT INTO `Operaciones` VALUES (50280, 26782634, 'LEPEN', 'Vanesa', 'vanelepen@hotmail.com', '2017-10-28 20:08:33', '2017-11-02 00:00:00', 34953458, 'LOPEZ', 'LUCIA', '155456581', 'luuh.a.lopez@gmail.com', 'VISA', 1450.00, 1377.50, 12, 2186.48, 182.21, 29424, 2055, '2017-10-28 20:08:33', 'C');
INSERT INTO `Operaciones` VALUES (50281, 28101464, 'NICOLETTI', 'Marisa del Carmen', 'aaa@aaa.com', '2017-10-28 20:47:58', '2017-11-02 00:00:00', 16074384, 'ZAMORA', 'ANA MARIA', '15641534', 'aaa@aaa.com', 'VISA', 1579.00, 1500.05, 3, 1927.07, 642.36, 164690, 2281, '2017-10-28 20:47:58', 'C');
INSERT INTO `Operaciones` VALUES (50282, 7708841, 'ARMANDO', 'Miguel Angel', 'aberturadelnorte12@gmail.com', '2017-10-30 12:37:02', '2017-11-02 00:00:00', 10742545, 'CASTAÑARES', 'VICTORIA DEL VALLE', '4217378', '', 'VISA', 7500.00, 7125.00, 6, 9743.89, 1623.98, 66534, 5241, '2017-10-30 12:37:02', 'C');
INSERT INTO `Operaciones` VALUES (50283, 22336910, 'LEANDRINI', 'Silvina Elizabeth', 'leandrinisilvina@hotmail.com', '2017-10-30 17:16:46', '2017-11-02 00:00:00', 26682680, 'DIAZ', 'Soledad Elizabeth', '0381156430845', '', 'VISA', 3685.00, 3500.75, 3, 4497.30, 1499.10, 6965, 128, '2017-10-30 17:16:46', 'C');
INSERT INTO `Operaciones` VALUES (50284, 24750862, 'GORDILLO', 'Jose Luis', 'bc.telefonia@hotmail.com', '2017-10-30 18:29:06', '2017-11-02 00:00:00', 35721685, 'HERRERA', 'SANDRO', '155311212', 'bc.telefonia@hotmail.com', 'VISA', 790.00, 750.50, 3, 964.14, 321.38, 6942, 6, '2017-10-30 18:29:06', 'C');
INSERT INTO `Operaciones` VALUES (50285, 26454469, 'JUAREZ', 'Franco Luciano', 'francoju2009@hotmail.com', '2017-10-30 19:01:48', '2017-11-02 00:00:00', 28742089, 'RODRIGUEZ', 'JOSE ALBERTO', '156243313', 'aaa@aaa.com', 'VISA', 598.00, 568.10, 3, 729.82, 243.27, 9156, 4372, '2017-10-30 19:01:48', 'C');
INSERT INTO `Operaciones` VALUES (50286, 21978616, 'REVOLLO', 'Hector Carlos', 'macarbims@gmail.com', '2017-10-30 19:47:47', '2017-11-02 00:00:00', 18159060, 'Agustin', 'juan ramon', '', 'op@clubhonorarios.com', 'MASTER', 990.00, 940.50, 2, 1183.22, 591.61, 564445, 0, '2017-10-30 19:47:47', 'C');
INSERT INTO `Operaciones` VALUES (50287, 33431922, 'FAUO', 'Sergio Emmanuel', 'sergiofauo@hotmail.com', '2017-10-30 20:10:40', '2017-11-02 00:00:00', 30260624, 'SOTOMAYOR', 'JORGE ALEJANDRO', '155908363', 'aaa@aaa.com', 'VISA', 575.00, 546.25, 6, 747.03, 124.51, 6512, 5264, '2017-10-30 20:10:40', 'C');
INSERT INTO `Operaciones` VALUES (50288, 36584371, 'CASTILLO', 'Gustavo German', 'castillogustavo3442@gmail.com', '2017-10-30 20:19:44', '2017-11-02 00:00:00', 35548400, 'MOREIRA', 'LUCIANA', '3814656645', 'lu_251@hotmail.com', 'VISA', 450.00, 427.50, 3, 549.20, 183.07, 6609, 5844, '2017-10-30 20:19:44', 'C');
INSERT INTO `Operaciones` VALUES (50289, 34064283, 'ALBORNOZ', 'Adrian René', 'albornozadrianrene@gmail.com', '2017-10-30 20:38:27', '2017-11-03 00:00:00', 32493400, 'CAMPOS', 'MARIA', '156629923', 'aaa@aaa.com', 'VISA', 3710.00, 3524.50, 12, 5594.36, 466.20, 6856, 3, '2017-10-30 20:38:27', 'C');
INSERT INTO `Operaciones` VALUES (50290, 16458365, 'PITA', 'Jorge Horacio', 'rajota2001@yahoo.com.ar', '2017-10-31 10:36:39', '2017-11-03 00:00:00', 32411821, 'CAPETTA', 'NATALIA', '0381154196089', 'nataliacapetta@gmail.com', 'VISA', 6317.00, 6001.15, 6, 8206.96, 1367.83, 5927, 2808, '2017-10-31 10:36:39', 'C');
INSERT INTO `Operaciones` VALUES (50291, 14488271, 'PEDRINI', 'Lucia Ester', 'luciaepedrini@gmail.com', '2017-10-31 11:47:51', '2017-11-03 00:00:00', 33818484, 'HERNANDEZ', 'IVANNA', '0381153876715', 'luciaepedrini@gmail.com', 'VISA', 590.00, 560.50, 3, 720.06, 240.02, 10461, 189, '2017-10-31 11:47:51', 'C');
INSERT INTO `Operaciones` VALUES (50292, 7708841, 'ARMANDO', 'Miguel Angel', 'aberturadelnorte12@gmail.com', '2017-10-31 11:58:09', '2017-11-03 00:00:00', 33819217, 'ORELLANA', 'Soledad del carmen', '0381155930283', 'aberturadelnorte12@gmail.com', 'VISA', 2100.00, 1995.00, 12, 3166.62, 263.89, 745189, 4917, '2017-10-31 11:58:09', 'C');
INSERT INTO `Operaciones` VALUES (50293, 40275984, 'CHAPA', 'Matias Alejandro', 'paranatecno@gmail.com', '2017-10-31 12:06:14', '2017-11-03 00:00:00', 23253491, 'ELISEO', 'Isabel del Carmen', '0381154626134', 'paranatecno@gmail.com', 'VISA', 1212.00, 1151.40, 3, 1479.17, 493.06, 596513, 5, '2017-10-31 12:06:14', 'C');
INSERT INTO `Operaciones` VALUES (50294, 35517220, 'BRITO', 'Gerardo Rafael', 'gerardobrito@yahoo.com.ar', '2017-10-31 12:14:19', '2017-11-03 00:00:00', 17947519, 'ABREGU', 'Dardo Miguel', '155225961', 'gerardobrito@yahoo.com.ar', 'VISA', 1180.00, 1121.00, 2, 1410.30, 705.15, 633143, 5507, '2017-10-31 12:14:19', 'C');
INSERT INTO `Operaciones` VALUES (50295, 29836129, 'FAUO', 'Walter Fabian', 'aaa@aaa.com', '2017-10-31 13:49:37', '2017-11-03 00:00:00', 26743911, 'QUIPILDOR', 'Eliana Valeria', '0381154884001', '', 'VISA', 4600.00, 4370.00, 12, 6936.41, 578.03, 7418, 7732, '2017-10-31 13:49:37', 'C');
INSERT INTO `Operaciones` VALUES (50296, 31053217, 'VEGA HERRERA', 'Maria Jose', 'mariajosevegaherrera@hotmail.com', '2017-10-31 15:22:34', '2017-11-03 00:00:00', 17494056, 'PEREZ', 'Maria Ines', '0381155084549', 'mariajosevegaherrera@hotmail.com', 'VISA', 4500.00, 4275.00, 6, 5846.33, 974.39, 6406, 9640, '2017-10-31 15:22:34', 'C');
INSERT INTO `Operaciones` VALUES (50297, 32134226, 'LUCENA', 'Gonzalo', 'recorcholis_519@hotmail.com', '2017-10-31 19:09:54', '2017-11-03 00:00:00', 37927331, 'BRITO', 'ROCIO BELEN', '155243732', 'roo-b@hotmail.com', 'VISA', 2100.00, 1995.00, 3, 2562.91, 854.30, 14502, 4232, '2017-10-31 19:09:54', 'C');
INSERT INTO `Operaciones` VALUES (50298, 30204059, 'GALVAN', 'Nestor Matias', 'galvan-matias@hotmail.com', '2017-10-31 20:11:09', '2017-11-03 00:00:00', 23519103, 'Vizgarra', 'Paula Andre', '3815635640', 'pvizgarra@grupoflores.com.ar', 'VISA', 5250.00, 4987.50, 6, 6820.72, 1136.79, 7171, 6216, '2017-10-31 20:11:09', 'C');
INSERT INTO `Operaciones` VALUES (50299, 34603504, 'GIOIA', 'Maira Yanina', 'mairagioia@gmail.com', '2017-10-31 20:36:12', '2017-11-06 00:00:00', 14359427, 'JEREZ', 'MIRTA DEL VALLE', '4281925', 'mairagioia@gmail.com', 'VISA', 950.00, 902.50, 3, 1159.41, 386.47, 6709, 6725, '2017-10-31 20:36:12', 'C');
INSERT INTO `Operaciones` VALUES (50300, 29081406, 'VIZCARRA', 'Marisa Viviana ', 'aaa@aaa.com', '2017-10-31 20:46:23', '2017-11-06 00:00:00', 17171529, 'cardenes', 'Maria Alejandra', '3816426280', 'op@clubhonorarios.com', 'VISA', 800.00, 760.00, 3, 976.35, 325.45, 7359, 6852, '2017-10-31 20:46:23', 'C');
INSERT INTO `Operaciones` VALUES (50301, 7708841, 'ARMANDO', 'Miguel Angel', 'aberturadelnorte12@gmail.com', '2017-11-01 09:11:40', '2017-11-06 00:00:00', 5641567, 'CRESPO', 'Ana Maria', '0381154193923', 'aberturadelnorte12@gmail.com', 'VISA', 1800.00, 1710.00, 3, 2196.78, 732.26, 5736, 36, '2017-11-01 09:11:40', 'C');
INSERT INTO `Operaciones` VALUES (50302, 22394847, 'ARRIETA ', 'Marta Nancy', 'nancyarrieta40@gmail.com', '2017-11-01 10:58:12', '2017-11-06 00:00:00', 40437203, 'RASUK', 'Gabriela Gesica', '0381155073087', 'nancyarrieta40@gmail.com', 'VISA', 527.00, 500.65, 3, 643.17, 214.39, 44115, 3020, '2017-11-01 10:58:12', 'C');
INSERT INTO `Operaciones` VALUES (50303, 29532661, 'TORAÑO', 'Maria Graciela', 'grat_df@hotmail.com', '2017-11-01 11:16:07', '2017-11-06 00:00:00', 5246161, 'LEGUIZAMON', 'Elba Del Valle', '0381156309871', '', 'VISA', 200.00, 190.00, 2, 239.03, 119.52, 940648, 3496, '2017-11-01 11:16:07', 'C');
INSERT INTO `Operaciones` VALUES (50304, 28093773, 'OLEA ', 'Carina', 'carinaolea@gmail.com', '2017-11-01 12:05:35', '2017-11-06 00:00:00', 30497850, 'MONTENEGRO', 'Gabriela', '0381156298331', 'gabriela454@hotmail.com', 'VISA', 2150.00, 2042.50, 6, 2793.25, 465.54, 6391, 4961, '2017-11-01 12:05:35', 'C');
INSERT INTO `Operaciones` VALUES (50305, 20273649493, 'ESTUDIO', 'CERVANTES', 'gustavo.gonzalez@soramus.com', '2017-11-01 12:57:03', '2017-11-06 00:00:00', 18829427, 'SANCHEZ CALIZAYA', 'Humberto', '0381156373516', 'maria_cirelli@hotmail.com.ar', 'VISA', 6000.00, 5700.00, 12, 9047.49, 753.96, 950430, 6036, '2017-11-01 12:57:03', 'C');
INSERT INTO `Operaciones` VALUES (50306, 25318614, 'MAI', 'Cristian Sebastian', 'cristianmai40@gmail.com', '2017-11-01 14:03:27', '2017-11-06 00:00:00', 25305641, 'ORELLANA', 'MARCELO ENRIQUE', '0381153353103', 'cristianmai40@gmail.com', 'VISA', 795.00, 755.25, 3, 970.25, 323.42, 531233, 7404, '2017-11-01 14:03:27', 'C');
INSERT INTO `Operaciones` VALUES (50307, 41496740, 'GRAMAJO', 'Guillermo Federico', 'aaa@aaa.com', '2017-11-01 15:06:27', '2017-11-06 00:00:00', 12414970, 'SEGUER', 'Guillermo', '0381154962707', '', 'VISA', 10000.00, 9500.00, 6, 12991.86, 2165.31, 10603, 8759, '2017-11-01 15:06:27', 'C');
INSERT INTO `Operaciones` VALUES (50308, 34064283, 'ALBORNOZ', 'Adrian René', 'albornozadrianrene@gmail.com', '2017-11-01 19:43:53', '2017-11-06 00:00:00', 32853363, 'Santillan', 'maria daniela', '3816656928', 'op@clubhonorarios.com', 'VISA', 1409.80, 1339.31, 3, 1720.57, 573.52, 601096, 4821, '2017-11-01 19:43:53', 'C');
INSERT INTO `Operaciones` VALUES (50309, 34603504, 'GIOIA', 'Maira Yanina', 'mairagioia@gmail.com', '2017-11-01 20:25:23', '2017-11-06 00:00:00', 32109884, 'Carrazan', 'Lorena paola', '3816074252', 'lore_carrazan@hotmail.com', 'VISA', 1500.00, 1425.00, 3, 1830.65, 610.22, 9258, 5439, '2017-11-01 20:25:23', 'C');
INSERT INTO `Operaciones` VALUES (50310, 28292581, 'FRETE ', 'Luciana Pamela ', 'pamelafrete@hotmail.com.ar', '2017-11-01 20:25:57', '2017-11-06 00:00:00', 26783900, 'ALBORNOZ', 'PAOLA', '153558494', 'paolaalbornoz692@gmail.com', 'MASTER', 2100.00, 1995.00, 6, 2728.29, 454.72, 698134, 0, '2017-11-01 20:25:57', 'C');
INSERT INTO `Operaciones` VALUES (50311, 32110863, 'GRAMAJO', 'Hector Gabriel ', 'hectorgramajo93@gmail.com', '2017-11-01 20:39:42', '2017-11-07 00:00:00', 11657285, 'fuensalida', 'norma', '3816664086', 'op@clubhonorarios.com', 'VISA', 2500.00, 2375.00, 6, 3247.96, 541.33, 6730, 5644, '2017-11-01 20:39:42', 'C');
INSERT INTO `Operaciones` VALUES (50312, 20366891, 'MEDINA', 'Silvia Rosa', 'op@clubhonorarios.com', '2017-11-02 16:31:03', '2017-11-07 00:00:00', 25734665, 'MARTIN', 'Mariangeles', '0381154190359', '', 'VISA', 2890.00, 2745.50, 2, 3454.04, 1727.02, 11788, 8690, '2017-11-02 16:31:03', 'C');
INSERT INTO `Operaciones` VALUES (50313, 34064283, 'ALBORNOZ', 'Adrian René', 'albornozadrianrene@gmail.com', '2017-11-02 21:00:38', '2017-11-08 00:00:00', 32132902, 'SORIA', 'NICOLAS', '156079657', 'albornozadrianrene@gmail.com', 'VISA', 1590.66, 1511.13, 3, 1941.30, 647.10, 7414, 4, '2017-11-02 21:00:38', 'C');
INSERT INTO `Operaciones` VALUES (50314, 14488271, 'PEDRINI', 'Lucia Ester', 'luciaepedrini@gmail.com', '2017-11-03 10:22:22', '2017-11-08 00:00:00', 28883621, 'ARROYO', 'Juana', '0381156271912', 'luciaepedrini@gmail.com', 'VISA', 900.00, 855.00, 2, 1075.65, 537.83, 8927, 7400, '2017-11-03 10:22:22', 'C');
INSERT INTO `Operaciones` VALUES (50315, 29532661, 'TORAÑO', 'Maria Graciela', 'grat_df@hotmail.com', '2017-11-03 10:50:25', '2017-11-08 00:00:00', 17947394, 'AYUSA', 'Hugo Alberto', '0381155104566', '', 'VISA', 200.00, 190.00, 2, 239.03, 119.52, 6430, 7601, '2017-11-03 10:50:25', 'C');
INSERT INTO `Operaciones` VALUES (50316, 25741072, 'RODRIGUEZ', 'Roberto Orlando', 'op@clubhonorios.com', '2017-11-03 12:10:05', '2017-11-08 00:00:00', 18622367, 'MORAN', 'MERCEDES', '0381155178932', '', 'VISA', 300.00, 285.00, 3, 366.13, 122.04, 22500, 9853, '2017-11-03 12:10:05', 'C');
INSERT INTO `Operaciones` VALUES (50317, 27017232, 'HERRERA ', 'Rosa Ester ', 'matiasherrera165@gmail.com', '2017-11-03 12:10:36', '2017-11-08 00:00:00', 21773365, 'gomez', 'mariana', '3813021554', 'matiasherrera165@gmail.com', 'VISA', 1850.00, 1757.50, 12, 2789.64, 232.47, 13967, 9902, '2017-11-03 12:10:36', 'C');
INSERT INTO `Operaciones` VALUES (50318, 38115851, 'ANDRADE', 'Maico Hugo', 'andrademaico794@gmail.com', '2017-11-03 18:41:58', '2017-11-08 00:00:00', 29430141, 'SANCHEZ', 'MARIELA CAROLINA', '3816268408', 'marielaparajon@gmail.com', 'VISA', 850.00, 807.50, 2, 1015.89, 507.95, 27619, 7775, '2017-11-03 18:41:58', 'C');
INSERT INTO `Operaciones` VALUES (50319, 23930014, 'HAMAKERS', 'Maria Cristina ', 'crishamakers@gmail.com', '2017-11-03 19:00:47', '2017-11-08 00:00:00', 31426321, 'PONCE CISNEROS', 'SUSANA', '4941036', 'crishamakers@gmail.com', 'VISA', 1700.00, 1615.00, 6, 2208.62, 368.10, 566017, 8108, '2017-11-03 19:00:47', 'C');
INSERT INTO `Operaciones` VALUES (50320, 31052970, 'PAZ', 'Claudia Elizabeth', 'aaa@aaa.com', '2017-11-03 20:16:46', '2017-11-08 00:00:00', 22429689, 'VIZCARRA', 'WALTER', '4232397', 'aaa@aaa.com', 'VISA', 220.00, 209.00, 2, 262.94, 131.47, 6770, 9038, '2017-11-03 20:16:46', 'C');
INSERT INTO `Operaciones` VALUES (50321, 6391762, 'BILLONE', 'Graciela Elisa', 'colegiobolivar@arnetbiz.com.ar', '2017-11-03 21:04:01', '2017-11-09 00:00:00', 32201549, 'PALAVECINO', 'LUIS', '4294287', 'colegiobolivar@arnetbiz.com.ar', 'VISA', 1500.00, 1425.00, 6, 1948.78, 324.80, 9204, 9514, '2017-11-03 21:04:01', 'C');
INSERT INTO `Operaciones` VALUES (50322, 33538746, 'JIMENEZ', 'Rene Alberto', 'renealbertojimenez7@gmail.com', '2017-11-03 21:07:43', '2017-11-09 00:00:00', 36421141, 'albarracin', 'Maria Laura', '0381153497835', 'lauraalbaracin@hotmail.com', 'VISA', 3600.00, 3420.00, 12, 5428.49, 452.37, 517849, 9502, '2017-11-03 21:07:43', 'C');
INSERT INTO `Operaciones` VALUES (50323, 6391762, 'BILLONE', 'Graciela Elisa', 'colegiobolivar@arnetbiz.com.ar', '2017-11-03 21:08:12', '2017-11-09 00:00:00', 32201549, 'PALAVECINO', 'LUIS', '4294287', 'colegiobolivar@arnetbiz.com.ar', 'VISA', 2500.00, 2375.00, 12, 3769.79, 314.15, 11062, 9530, '2017-11-03 21:08:12', 'C');
INSERT INTO `Operaciones` VALUES (50324, 33884602, 'CORTES', 'Fabiola Roxana', 'fabiolarocortes@gmail.com', '2017-11-04 11:53:01', '2017-11-09 00:00:00', 31771560, 'cruz', 'zulma', '03838422055', 'fabiolarocortes@gmail.com', 'VISA', 490.00, 465.50, 6, 636.60, 106.10, 6374, 2779, '2017-11-04 11:53:01', 'C');
INSERT INTO `Operaciones` VALUES (50325, 35517220, 'BRITO', 'Gerardo Rafael', 'gerardobrito220@gmail.com', '2017-11-04 12:00:09', '2017-11-09 00:00:00', 25740048, 'aragon', 'analia', '381153560984', 'fernanda21_aragon@hitmail.com', 'VISA', 200.00, 190.00, 2, 239.03, 119.52, 6096, 2978, '2017-11-04 12:00:09', 'C');
INSERT INTO `Operaciones` VALUES (50326, 29532892, 'SORIA', 'Rodolfo Maximiliano', 'maxitomy.ms@gmail.com', '2017-11-04 12:29:00', '2017-11-09 00:00:00', 29685929, 'albornoz', 'luis', '381155182118', 'lfaisa55@gmail.com', 'VISA', 2500.00, 2375.00, 6, 3247.96, 541.33, 628045, 3384, '2017-11-04 12:29:00', 'C');
INSERT INTO `Operaciones` VALUES (50327, 28093773, 'OLEA ', 'Carina', 'carinaolea@gmail.com', '2017-11-04 13:42:18', '2017-11-09 00:00:00', 36584201, 'veliz', 'maria jose', '3815881856', 'jooveliz1410@hotmail.com', 'VISA', 1270.00, 1206.50, 6, 1649.97, 275.00, 6995, 4082, '2017-11-04 13:42:18', 'C');
INSERT INTO `Operaciones` VALUES (50328, 26782634, 'LEPEN', 'Vanesa', 'vanelepen@hotmail.com', '2017-11-04 14:12:16', '2017-11-09 00:00:00', 34953458, 'lopez', 'lucia', '3815456581', 'luuh.a,lopez@gmail.com', 'VISA', 1315.00, 1249.25, 12, 1982.91, 165.24, 539859, 4242, '2017-11-04 14:12:16', 'C');
INSERT INTO `Operaciones` VALUES (50329, 35521870, 'FARIAS', 'Yanina', 'johana123.456@hotmail.com', '2017-11-04 17:29:59', '2017-11-09 00:00:00', 22780764, 'LAGORIA', 'LILIANA', '4946358', 'johana123.456@hotmail.com', 'VISA', 1837.00, 1745.15, 6, 2386.60, 397.77, 8332, 6, '2017-11-04 17:29:59', 'C');
INSERT INTO `Operaciones` VALUES (50330, 35521870, 'FARIAS', 'Yanina', 'johana123.456@hotmail.com', '2017-11-04 17:39:14', '2017-11-09 00:00:00', 30919678, 'BUSTOS', 'YANINA MARIA', '15561234', 'johana123.456@hotmail.com', 'VISA', 500.00, 475.00, 1, 500.00, 0.00, 2, 5, '2017-11-04 17:39:14', 'D');
INSERT INTO `Operaciones` VALUES (50331, 27650867, 'GUTIERREZ', 'Romina Alejandra', 'gutierrez2013@gmail.com', '2017-11-04 18:42:25', '2017-11-09 00:00:00', 27561668, 'NARANJO', 'MELINA', '4350241', 'gutierrez2013@gmail.com', 'VISA', 480.00, 456.00, 2, 573.68, 286.84, 605452, 5707, '2017-11-04 18:42:25', 'C');
INSERT INTO `Operaciones` VALUES (50332, 35521870, 'FARIAS', 'Yanina', 'johana123.456@hotmail.com', '2017-11-04 19:49:30', '2017-11-09 00:00:00', 32201092, 'BOGGIO', 'GLADYS', '155689704', 'johana123.456@hotmail.com', 'VISA', 500.31, 475.29, 6, 650.00, 108.33, 6634, 21, '2017-11-04 19:49:30', 'C');
INSERT INTO `Operaciones` VALUES (50333, 28101464, 'NICOLETTI', 'Marisa del Carmen', 'aaa@aaa.com', '2017-11-04 20:00:21', '2017-11-09 00:00:00', 17844040, 'TEJEDA', 'SILVIA', '4615491', 'aaa@aaa.com', 'VISA', 380.00, 361.00, 2, 454.16, 227.08, 766472, 6190, '2017-11-04 20:00:21', 'C');
INSERT INTO `Operaciones` VALUES (50334, 14488271, 'PEDRINI', 'Lucia Ester', 'luciaepedrini@gmail.com', '2017-11-06 09:47:21', '2017-11-09 00:00:00', 20218516, 'SENRRA', 'RODOLFO FABIAN', '4380866', '', 'MASTER', 200.00, 190.00, 2, 239.03, 119.52, 665561, 0, '2017-11-06 09:47:21', 'C');
INSERT INTO `Operaciones` VALUES (50335, 16458365, 'PITA', 'Jorge Horacio', 'rajota2001@yahoo.com.ar', '2017-11-06 10:54:02', '2017-11-09 00:00:00', 17549998, 'GARCIA', 'NESTOR HORACIO', '155050958', 'rajota2001@yahoo.com.ar', 'VISA', 4095.00, 3890.25, 3, 4997.68, 1665.89, 5918, 5657, '2017-11-06 10:54:02', 'C');
INSERT INTO `Operaciones` VALUES (50336, 14661176, 'ANDRADA', 'Luis Humberto', 'acsetec@hotmail.com', '2017-11-06 13:30:34', '2017-11-09 00:00:00', 28367555, 'JIMENEZ', 'ANDREA', '0381155101282', '', 'AMEX', 800.00, 760.00, 2, 953.40, 476.70, 99, 34, '2017-11-06 13:30:34', 'C');
INSERT INTO `Operaciones` VALUES (50337, 22612803, 'AGÜERO', 'Ariel Fernando', 'sandraveronicavelardez23@gmail.com', '2017-11-06 16:08:26', '2017-11-09 00:00:00', 27211228, 'LEON', 'Ruben', '0381154657718', 'sandraveronicavelardez23@gmail.com', 'VISA', 2500.00, 2375.00, 6, 3247.96, 541.33, 543836, 2544, '2017-11-06 16:08:26', 'C');
INSERT INTO `Operaciones` VALUES (50338, 26445638, 'COLOMBRES GARMENDIA', 'Francisco', 'franciscocolombresgarmendia@gmail.com', '2017-11-06 18:19:47', '2017-11-09 00:00:00', 28476369, 'ANDUJAR', 'LUIS ', '3815348142', 'andujarluifa00@hotmail.com', 'VISA', 1579.00, 1500.05, 3, 1927.07, 642.36, 612994, 5137, '2017-11-06 18:19:47', 'C');
INSERT INTO `Operaciones` VALUES (50339, 32110466, 'IOTTI', 'Raul Romualdo', 'raulsipi@gmail.com', '2017-11-06 18:25:19', '2017-11-09 00:00:00', 27964935, 'ALE', 'EMILIO', '3813560910', 'mafud81@hotmail.com', 'VISA', 5200.00, 4940.00, 6, 6755.76, 1125.96, 6593, 5388, '2017-11-06 18:25:19', 'C');
INSERT INTO `Operaciones` VALUES (50340, 26980606, 'GOMEZ', 'Maria Manuela', 'manuindumentaria@gmail.com', '2017-11-06 19:08:48', '2017-11-09 00:00:00', 30476247, 'PONCE', 'MARIA FERNANDA', '4263617', 'polyferchuzoe@gmail.com', 'VISA', 450.00, 427.50, 3, 549.20, 183.07, 241376, 6053, '2017-11-06 19:08:48', 'C');
INSERT INTO `Operaciones` VALUES (50341, 22336910, 'LEANDRINI', 'Silvina Elizabeth', 'leandrinisilvina@hotmail.com', '2017-11-06 19:24:29', '2017-11-09 00:00:00', 27657248, 'VARGAS', 'MARIA BELEN', '154463428', 'bell-vargas@hotmail.com', 'VISA', 4738.00, 4501.10, 12, 7144.50, 595.38, 28350, 6161, '2017-11-06 19:24:29', 'C');
INSERT INTO `Operaciones` VALUES (50342, 26242421, 'SALGADO', 'Maria Laura', 'laura_tizi@hotmail.com', '2017-11-06 20:42:18', '2017-11-10 00:00:00', 31543382, 'CARABAJAL', 'RAQUEL', '3865208130', 'AAA@AAA.COM', 'VISA', 400.00, 380.00, 3, 488.17, 162.72, 9646, 7479, '2017-11-06 20:42:18', 'C');
INSERT INTO `Operaciones` VALUES (50343, 22622010, 'TORRES', 'Diego Fabian', 'torresdie123@gmail.com', '2017-11-07 09:44:35', '2017-11-10 00:00:00', 7025668, 'USLENGHI', 'ANGEL JOAQUIN', '4248678', '', 'VISA', 1020.00, 969.00, 12, 1538.07, 128.17, 14002, 1080, '2017-11-07 09:44:35', 'C');
INSERT INTO `Operaciones` VALUES (50344, 35548734, 'POU', 'Carolina Veronica', 'carolinavpou@hotmail.com', '2017-11-07 12:38:29', '2017-11-10 00:00:00', 39975578, 'LUNA', 'ESTELA FRANCISCA', '0381153417127', '', 'VISA', 550.00, 522.50, 2, 657.34, 328.67, 7172, 5163, '2017-11-07 12:38:29', 'C');
INSERT INTO `Operaciones` VALUES (50345, 26783306, 'PALOMO', 'Brenda Ivana ', 'centrodestudiostucuman@hotmail.com', '2017-11-07 13:27:19', '2017-11-10 00:00:00', 25719530, 'ESCUDERO', 'MARIA BELEN', '0381155771980', '', 'VISA', 3600.00, 3420.00, 6, 4677.07, 779.51, 8993, 6186, '2017-11-07 13:27:19', 'C');
INSERT INTO `Operaciones` VALUES (50346, 20273649493, 'ESTUDIO', 'CERVANTES', 'gustavo.gonzalez@soramus.com', '2017-11-07 13:47:14', '2017-11-10 00:00:00', 10219141, 'CIRELLI', 'Miguel Angel', '154746479', '', 'VISA', 5000.00, 4750.00, 6, 6495.93, 1082.66, 6202, 190, '2017-11-07 13:47:14', 'C');
INSERT INTO `Operaciones` VALUES (50347, 20273649493, 'ESTUDIO', 'CERVANTES', 'gustavo.gonzalez@soramus.com', '2017-11-07 13:55:55', '2017-11-10 00:00:00', 10219141, 'CIRELLI', 'Miguel Angel', '154746479', '', 'MASTER', 5000.00, 4750.00, 6, 6495.93, 1082.66, 620390, 0, '2017-11-07 13:55:55', 'C');
INSERT INTO `Operaciones` VALUES (50348, 32134226, 'LUCENA', 'Gonzalo', 'recorcholis_519@hotmail.com', '2017-11-07 14:23:34', '2017-11-10 00:00:00', 25476450, 'MARTINEZ', 'MELLINA FLAVIA', '0381156426130', '', 'VISA', 1600.00, 1520.00, 3, 1952.69, 650.90, 7499, 6906, '2017-11-07 14:23:34', 'C');
INSERT INTO `Operaciones` VALUES (50349, 29101193, 'VILLAREAL', 'Raul Oscar', 'oscar2003201@hotmail.com', '2017-11-07 16:09:43', '2017-11-10 00:00:00', 38781886, 'JIMENEZ', 'Johana  Alejandra', '0385815425741', '', 'VISA', 3460.00, 3287.00, 6, 4495.18, 749.20, 669633, 9104, '2017-11-07 16:09:43', 'C');
INSERT INTO `Operaciones` VALUES (50350, 23069266, 'APAZA', 'Adrian Esteban ', 'aaa@aaa.com', '2017-11-07 17:26:57', '2017-11-10 00:00:00', 23311199, 'PAZ', 'Oscar Omar', '03815683062', '', 'VISA', 2570.00, 2441.50, 3, 3136.52, 1045.51, 10087, 675, '2017-11-07 17:26:57', 'C');
INSERT INTO `Operaciones` VALUES (50351, 23069266, 'APAZA', 'Adrian Esteban ', 'aaa@aaa.com', '2017-11-07 17:33:20', '2017-11-10 00:00:00', 23311199, 'PAZ', 'Oscar ', '0381155683062', '', 'VISA', 136.00, 129.20, 2, 162.54, 81.27, 10087, 675, '2017-11-07 17:33:20', 'C');
INSERT INTO `Operaciones` VALUES (50352, 22832991, 'DE LA VEGA', 'Eliana', 'eliandelavega@gmail.com', '2017-11-07 17:45:56', '2017-11-10 00:00:00', 7653716, 'GANO', 'SILVIO HORACIO', '3815759216', '', 'VISA', 4900.00, 4655.00, 12, 7388.78, 615.73, 522381, 1068, '2017-11-07 17:45:56', 'C');
INSERT INTO `Operaciones` VALUES (50353, 26445638, 'COLOMBRES GARMENDIA', 'Francisco', 'franciscocolombresgarmendia@gmail.com', '2017-11-07 17:48:28', '2017-11-10 00:00:00', 38487450, 'CASTILLO', 'BRAIAN LEONARDO', '3815438920', 'franciscocolombresgarmendia@gmail.com', 'VISA', 1579.00, 1500.05, 4, 1967.73, 491.93, 958961, 8, '2017-11-07 17:48:28', 'C');
INSERT INTO `Operaciones` VALUES (50354, 26783306, 'PALOMO', 'Brenda Ivana ', 'centrodestudiostucuman@hotmail.com', '2017-11-07 18:32:54', '2017-11-10 00:00:00', 32412844, 'LOFREDO', 'MARIA VICTORIA', '3815154110', 'vickyloff.vl@gmail.com', 'VISA', 6000.00, 5700.00, 12, 9047.49, 753.96, 13612, 1996, '2017-11-07 18:32:54', 'C');
INSERT INTO `Operaciones` VALUES (50355, 26445638, 'COLOMBRES GARMENDIA', 'Francisco', 'franciscocolombresgarmendia@gmail.com', '2017-11-07 18:48:05', '2017-11-10 00:00:00', 20285574, 'PACHECO', 'RAMON', '3816978258', 'jrp.ecuador@live.com.ar', 'VISA', 3158.00, 3000.10, 6, 4102.83, 683.81, 9030, 2235, '2017-11-07 18:48:05', 'C');
INSERT INTO `Operaciones` VALUES (50356, 14488271, 'PEDRINI', 'Lucia Ester', 'luciaepedrini@gmail.com', '2017-11-07 18:53:30', '2017-11-10 00:00:00', 37455968, 'Peralta paez', 'maira luciana', '3815705258', 'mayralt.paez@gmail.com', 'MASTER', 300.00, 285.00, 2, 358.55, 179.28, 669913, 0, '2017-11-07 18:53:30', 'C');
INSERT INTO `Operaciones` VALUES (50357, 16458365, 'PITA', 'Jorge Horacio', 'rajota2001@yahoo.com.ar', '2017-11-07 19:02:08', '2017-11-10 00:00:00', 31906332, 'PALINA', 'JOSE ADRIAN', '156270767', 'adrianpalina@gmail.com', 'VISA', 1158.00, 1100.10, 3, 1413.26, 471.09, 6594, 2410, '2017-11-07 19:02:08', 'C');
INSERT INTO `Operaciones` VALUES (50358, 29430217, 'UTRERA', 'Juan Manuel ', 'juanmutrera@hotmail.com', '2017-11-07 19:37:01', '2017-11-10 00:00:00', 41736514, 'IÑIGO', 'NELSON', '11111111', 'juanmutrera@hotmail.com', 'VISA', 210.00, 199.50, 3, 256.29, 85.43, 7842, 4, '2017-11-07 19:37:01', 'C');
INSERT INTO `Operaciones` VALUES (50359, 36942873, 'BOUNAR', 'Estefania Elizabeth', 'esthefaniabounar2@gmail.com', '2017-11-07 20:12:08', '2017-11-10 00:00:00', 23617114, 'RUIZ', 'KARINA', '3816516454', 'esthefaniabounar2@gmail.com', 'VISA', 826.50, 785.18, 6, 1073.78, 178.96, 11870, 3414, '2017-11-07 20:12:08', 'C');
INSERT INTO `Operaciones` VALUES (50360, 26782634, 'LEPEN', 'Vanesa', 'vanelepen@hotmail.com', '2017-11-07 20:16:38', '2017-11-10 00:00:00', 18427661, 'atim', 'silvia adriana', '3816047314', '', 'VISA', 1055.00, 1002.25, 2, 1260.90, 630.45, 7713, 3494, '2017-11-07 20:16:38', 'C');
INSERT INTO `Operaciones` VALUES (50361, 33541620, 'GALLO', 'Alejandro', 'yo.ale.jandro.gallo@gmail.com', '2017-11-07 20:27:03', '2017-11-10 00:00:00', 31425766, 'SANCHEZ', 'JUAN GABRIEL', '3814685516', 'gabriel1184@hotmail.com', 'VISA', 800.00, 760.00, 3, 976.35, 325.45, 10183, 3630, '2017-11-07 20:27:03', 'C');
INSERT INTO `Operaciones` VALUES (50362, 35521870, 'FARIAS', 'Yanina', 'johana123.456@hotmail.com', '2017-11-07 20:33:17', '2017-11-13 00:00:00', 31911843, 'LUNA', 'JUAN REINALDO', '156583260', 'johana123.456@hotmail.com', 'VISA', 1200.00, 1140.00, 1, 1200.00, 0.00, 971972, 22, '2017-11-07 20:33:17', 'D');
INSERT INTO `Operaciones` VALUES (50363, 29836129, 'FAUO', 'Walter Fabian', 'aaa@aaa.com', '2017-11-08 10:18:20', '2017-11-13 00:00:00', 40436142, 'FUENSALIDA', 'ROMINA', '0381153337069', '', 'VISA', 5500.00, 5225.00, 6, 7145.52, 1190.92, 799063, 8022, '2017-11-08 10:18:20', 'C');
INSERT INTO `Operaciones` VALUES (50364, 26445638, 'COLOMBRES GARMENDIA', 'Francisco', 'franciscocolombresgarmendia@gmail.com', '2017-11-08 12:32:27', '2017-11-13 00:00:00', 21027426, 'BUSTILLO', 'Pedro Walter', '0381155738429', 'pwb_tuc@hotmail.com', 'VISA', 1579.00, 1500.05, 6, 2051.41, 341.90, 635466, 66, '2017-11-08 12:32:27', 'C');
INSERT INTO `Operaciones` VALUES (50365, 25318614, 'MAI', 'Cristian Sebastian', 'cristianmai40@gmail.com', '2017-11-08 13:39:57', '2017-11-13 00:00:00', 32775349, 'CORDOBA', 'Roberto A', '0381155515335', '', 'VISA', 1700.00, 1615.00, 6, 2208.62, 368.10, 8809, 2261, '2017-11-08 13:39:57', 'C');
INSERT INTO `Operaciones` VALUES (50366, 36224331, 'GANIM', 'Rocio Celina', 'rocioganim@gmail.com', '2017-11-08 15:04:02', '2017-11-13 00:00:00', 10552854, 'PALOMINO', 'Raquel Francisca', '155751615', '', 'VISA', 2350.00, 2232.50, 3, 2868.02, 956.01, 6643, 3457, '2017-11-08 15:04:02', 'C');
INSERT INTO `Operaciones` VALUES (50367, 32134226, 'LUCENA', 'Gonzalo', 'recorcholis_519@hotmail.com', '2017-11-08 15:39:06', '2017-11-13 00:00:00', 30541225, 'GUTIERREZ', 'LUCIANA GRACIELA', '155686456', '', 'VISA', 700.00, 665.00, 3, 854.30, 284.77, 347454, 4225, '2017-11-08 15:39:06', 'C');
INSERT INTO `Operaciones` VALUES (50368, 29430217, 'UTRERA', 'Juan Manuel ', 'juanmutrera@hotmail.com', '2017-11-08 16:11:04', '2017-11-13 00:00:00', 22414119, 'PARACHE CHAVEZ', 'JUANA ', '0381153284122', '', 'MASTER', 400.00, 380.00, 1, 400.00, 0.00, 1, 0, '2017-11-08 16:11:04', 'D');
INSERT INTO `Operaciones` VALUES (50369, 35521870, 'FARIAS', 'Yanina', 'johana123.456@hotmail.com', '2017-11-08 16:53:45', '2017-11-13 00:00:00', 25735904, 'LAZARTE', 'Carmen M', '155307575', '', 'VISA', 600.00, 570.00, 1, 600.00, 0.00, 877880, 19, '2017-11-08 16:53:45', 'D');
INSERT INTO `Operaciones` VALUES (50370, 29430217, 'UTRERA', 'Juan Manuel ', 'juanmutrera@hotmail.com', '2017-11-08 17:55:42', '2017-11-13 00:00:00', 45126410, 'PONCE', 'RAMON JESUS', '154424511', 'juanmutrera@hotmail.com', 'MASTER', 937.11, 890.25, 2, 1120.00, 560.00, 622559, 0, '2017-11-08 17:55:42', 'C');
INSERT INTO `Operaciones` VALUES (50371, 27650867, 'GUTIERREZ', 'Romina Alejandra', 'gutierrez2013@gmail.com', '2017-11-08 19:09:03', '2017-11-13 00:00:00', 41817338, 'LEIVA', 'ANA PAULA', '3815204621', 'pauuuleiva@gmail.com', 'VISA', 1500.00, 1425.00, 6, 1948.78, 324.80, 7067, 8075, '2017-11-08 19:09:03', 'C');
INSERT INTO `Operaciones` VALUES (50372, 35521870, 'FARIAS', 'Yanina', 'johana123.456@hotmail.com', '2017-11-08 19:28:57', '2017-11-13 00:00:00', 38117907, 'CARRASCO SANZ', 'SANTIAGO', '155734546', 'johana123.456@hotmail.com', 'MASTER', 300.00, 285.00, 1, 300.00, 0.00, 4, 0, '2017-11-08 19:28:57', 'D');
INSERT INTO `Operaciones` VALUES (50373, 29060533, 'MOHAMED', 'Amanda Antonia', 'aamandamohamed2012@gmail.com', '2017-11-08 20:16:48', '2017-11-13 00:00:00', 22429930, 'HERNANDEZ', 'STELLA MARYS', '4274514', 'hernandezstellamarys@gmail.com', 'MASTER', 3425.00, 3253.75, 12, 5135.33, 427.94, 681511, 0, '2017-11-08 20:16:48', 'C');
INSERT INTO `Operaciones` VALUES (50374, 29060533, 'MOHAMED', 'Amanda Antonia', 'aamandamohamed2012@gmail.com', '2017-11-08 20:25:36', '2017-11-13 00:00:00', 22429930, 'HERNANDEZ', 'STELLA MARYS', '4275414', 'hernandezstellamarys@gmail.com', 'MASTER', 4000.00, 3800.00, 12, 5997.47, 499.79, 686211, 0, '2017-11-08 20:25:36', 'C');
INSERT INTO `Operaciones` VALUES (50375, 36584371, 'CASTILLO', 'Gustavo German', 'castillogustavo3442@gmail.com', '2017-11-09 12:21:54', '2017-11-14 00:00:00', 35195089, 'DIARTE', 'RAUL ALEJANDRO', '3814458677', '', 'VISA', 850.00, 807.50, 3, 1037.37, 345.79, 930389, 6632, '2017-11-09 12:21:54', 'C');
INSERT INTO `Operaciones` VALUES (50376, 26445638, 'COLOMBRES GARMENDIA', 'Francisco', 'franciscocolombresgarmendia@gmail.com', '2017-11-09 12:43:05', '2017-11-14 00:00:00', 25212738, 'ZELAYA', 'Roberto Alvaro', '3815766014', 'cachi_zelaya@hotmail.com', 'VISA', 1579.00, 1500.05, 3, 1927.07, 642.36, 6180, 191, '2017-11-09 12:43:05', 'C');
INSERT INTO `Operaciones` VALUES (50377, 26783306, 'PALOMO', 'Brenda Ivana ', 'centrodestudiostucuman@hotmail.com', '2017-11-09 14:23:34', '2017-11-14 00:00:00', 27730175, 'MEDINA', 'ANA MABEL', '3815018888', '', 'VISA', 6000.00, 5700.00, 3, 7322.61, 2440.87, 8493, 8734, '2017-11-09 14:23:34', 'C');
INSERT INTO `Operaciones` VALUES (50378, 35521870, 'FARIAS', 'Yanina', 'johana123.456@hotmail.com', '2017-11-09 14:53:16', '2017-11-14 00:00:00', 5460138, 'HERRERA', 'Norberta', '156574505', '', 'VISA', 1154.57, 1096.84, 6, 1500.00, 250.00, 405602, 24, '2017-11-09 14:53:16', 'C');
INSERT INTO `Operaciones` VALUES (50379, 31129288, 'SUAREZ MOYANO', 'Adriana Natividad', 'natividad_suarez@hotmail.com', '2017-11-09 18:02:24', '2017-11-14 00:00:00', 24253587, 'GRAMAJO', 'ENRIQUE', '1167502562', 'enriquegramajo@gmail.com', 'VISA', 4800.00, 4560.00, 2, 5736.81, 2868.41, 12527, 3069, '2017-11-09 18:02:24', 'C');
INSERT INTO `Operaciones` VALUES (50380, 36231458, 'PEREYRA', 'Ricardo David', 'david345.samaritano@gmail.com', '2017-11-09 18:36:09', '2017-11-14 00:00:00', 27561659, 'RUIZ', 'CRISTIAN DANIEL', '3816696167', 'david345.samaritano@gmail.com', 'MASTER', 2600.00, 2470.00, 3, 3173.13, 1057.71, 666059, 0, '2017-11-09 18:36:09', 'C');
INSERT INTO `Operaciones` VALUES (50381, 36231458, 'PEREYRA', 'Ricardo David', 'david345.samaritano@gmail.com', '2017-11-09 18:42:14', '2017-11-14 00:00:00', 27561659, 'RUIZ', 'CRISTIAN', '156696167', 'david345.samaritano@gmail.com', 'VISA', 13628.00, 12946.60, 3, 16632.08, 5544.03, 7353, 3606, '2017-11-09 18:42:14', 'C');
INSERT INTO `Operaciones` VALUES (50382, 30399351, 'COPA', 'Matias Pedro Armando', 'matiascopa@hotmail.com', '2017-11-09 18:49:08', '2017-11-14 00:00:00', 24510993, 'VEGA', 'ELIO CARLOS', '4263244', 'matiascopa@hotmail.com', 'VISA', 3046.41, 2894.09, 3, 3717.94, 1239.31, 591487, 5, '2017-11-09 18:49:08', 'C');
INSERT INTO `Operaciones` VALUES (50383, 35521870, 'FARIAS', 'Yanina', 'johana123.456@hotmail.com', '2017-11-09 20:38:13', '2017-11-15 00:00:00', 35518033, 'PIOVESAN', 'LEANDRO', '4922052', 'johana123.456@hotmail.com', 'VISA', 1638.00, 1556.10, 6, 2128.07, 354.68, 537199, 5006, '2017-11-09 20:38:13', 'C');
INSERT INTO `Operaciones` VALUES (50384, 35192768, 'BELTRAN', 'Rosana Carolina', 'aaa@aaa.com', '2017-11-09 20:55:43', '2017-11-15 00:00:00', 18574684, 'wilde', 'monica', '38168303513', '', 'VISA', 275.00, 261.25, 2, 328.67, 164.34, 7670, 5179, '2017-11-09 20:55:43', 'C');
INSERT INTO `Operaciones` VALUES (50385, 22832991, 'DE LA VEGA', 'Eliana', 'eliandelavega@gmail.com', '2017-11-09 20:58:08', '2017-11-15 00:00:00', 17924435, 'ALDERETES', 'MARIA', '4265687', 'eliandelavega@gmail.com', 'VISA', 490.00, 465.50, 2, 585.63, 292.82, 672754, 2, '2017-11-09 20:58:08', 'C');
INSERT INTO `Operaciones` VALUES (50386, 34133394, 'MARRAZA', 'Mayra Daiana ', 'marraza_daiana@hotmail.com.ar', '2017-11-10 10:44:45', '2017-11-15 00:00:00', 17958846, 'VERA', 'Sonia', '03815794737', '', 'VISA', 661.00, 627.95, 2, 790.01, 395.01, 876949, 9765, '2017-11-10 10:44:45', 'C');
INSERT INTO `Operaciones` VALUES (50387, 35192768, 'BELTRAN', 'Rosana Carolina', 'aaa@aaa.com', '2017-11-10 11:40:18', '2017-11-15 00:00:00', 20580653, 'LAJUD', 'Liliana Patricia', '386515651571', '', 'VISA', 400.00, 380.00, 3, 488.17, 162.72, 464260, 1277, '2017-11-10 11:40:18', 'C');
INSERT INTO `Operaciones` VALUES (50388, 29430217, 'UTRERA', 'Juan Manuel ', 'juanmutrera@hotmail.com', '2017-11-10 14:53:51', '2017-11-15 00:00:00', 21324965, 'PANTOJA', 'Gabriela', '3815897936', 'aaa@aaa.com', 'VISA', 2000.00, 1900.00, 1, 2000.00, 0.00, 375931, 5, '2017-11-10 14:53:51', 'D');
INSERT INTO `Operaciones` VALUES (50389, 23069266, 'APAZA', 'Adrian Esteban ', 'aaa@aaa.com', '2017-11-10 15:56:27', '2017-11-15 00:00:00', 38740853, 'MANSILLA', 'Marta', '', '', 'VISA', 1134.78, 1078.04, 2, 1356.25, 678.13, 46893, 9, '2017-11-10 15:56:27', 'C');
INSERT INTO `Operaciones` VALUES (50390, 33971673, 'DIAZ CABRERA GARCIA', 'Flavia Maria Lidia', 'elmayordemisdefectos@gmail.com', '2017-11-10 17:01:28', '2017-11-15 00:00:00', 39154887, 'DOMININO', 'Maria Gabriela', '3815524789', 'gadominino789@gmail.com', 'VISA', 527.00, 500.65, 2, 629.85, 314.93, 8892, 192, '2017-11-10 17:01:28', 'C');
INSERT INTO `Operaciones` VALUES (50391, 37655939, 'JUAREZ', 'Carla Florencia', 'david_alba2011@hotmail.com', '2017-11-10 17:34:39', '2017-11-15 00:00:00', 34326889, 'andrada', 'cynthya', '3816275160', 'andradacitia09@gmail.com', 'VISA', 1420.00, 1349.00, 6, 1844.84, 307.47, 9829, 8108, '2017-11-10 17:34:39', 'C');
INSERT INTO `Operaciones` VALUES (50392, 23930165, 'GONZALES', 'Victor Heraldo', 'victorheraldogonzales@yahoo.com.ar', '2017-11-10 18:06:00', '2017-11-15 00:00:00', 33474660, 'BERTARELI', 'ROBERTO', '153567536', 'victorheraldogonzales@yahoo.com.ar', 'VISA', 200.81, 190.77, 2, 240.00, 120.00, 11681, 4, '2017-11-10 18:06:00', 'C');
INSERT INTO `Operaciones` VALUES (50393, 35192768, 'BELTRAN', 'Rosana Carolina', 'aaa@aaa.com', '2017-11-10 20:19:41', '2017-11-15 00:00:00', 26246394, 'NIEVA', 'GLADYS', '3865327701', 'aaa@aaa.com', 'VISA', 800.00, 760.00, 6, 1039.35, 173.23, 719819, 614, '2017-11-10 20:19:41', 'C');
INSERT INTO `Operaciones` VALUES (50394, 29430217, 'UTRERA', 'Juan Manuel ', 'juanmutrera@hotmail.com', '2017-11-10 20:39:15', '2017-11-16 00:00:00', 26455197, 'NORIEGA', 'LUIS', '155793731', 'juanmutrera@hotmail.com', 'VISA', 485.07, 460.82, 3, 592.00, 197.33, 6626, 6, '2017-11-10 20:39:15', 'C');
INSERT INTO `Operaciones` VALUES (50395, 17239380, 'HERRERA', 'Hector Eduardo', 'eduardoherre@hotmail.com', '2017-11-10 20:55:15', '2017-11-16 00:00:00', 23517341, 'CALDERON', 'MARTA', '153372589', 'eduardoherre@hotmail.com', 'VISA', 1052.80, 1000.16, 3, 1284.87, 428.29, 7687, 982, '2017-11-10 20:55:15', 'C');
INSERT INTO `Operaciones` VALUES (50396, 25318614, 'MAI', 'Cristian Sebastian', 'cristianmai40@gmail.com', '2017-11-11 11:00:27', '2017-11-16 00:00:00', 21805588, 'cecanti', 'Andrea', '3865243464', 'cristianmai40@gmail.com', 'VISA', 1060.00, 1007.00, 4, 1320.96, 330.24, 509421, 3540, '2017-11-11 11:00:27', 'C');
INSERT INTO `Operaciones` VALUES (50397, 17696977, 'ROMERO', 'Julio Cesar ', 'fernandoromero09@hotmail.com', '2017-11-11 11:46:20', '2017-11-16 00:00:00', 4244431, 'epe', 'magdalena', '381154123562', '', 'MASTER', 3290.00, 3125.50, 12, 4932.92, 411.08, 663927, 0, '2017-11-11 11:46:20', 'C');
INSERT INTO `Operaciones` VALUES (50398, 36943104, 'CORDOBA', 'Luciana', 'lu_frinchy@hotmail.com', '2017-11-11 13:04:33', '2017-11-16 00:00:00', 39480311, 'juarez', 'vanina', '381154461273', 'vanina_dela96@hotmail.com', 'MASTER', 700.00, 665.00, 3, 854.30, 284.77, 635637, 0, '2017-11-11 13:04:33', 'C');
INSERT INTO `Operaciones` VALUES (50399, 26782634, 'LEPEN', 'Vanesa', 'vanelepen@hotmail.com', '2017-11-11 13:33:21', '2017-11-16 00:00:00', 12870965, 'cuenca', 'nilda', '381155296223', 'vanelepen@hotmail.com', 'VISA', 1000.00, 950.00, 2, 1195.17, 597.59, 8603, 5049, '2017-11-11 13:33:21', 'C');
INSERT INTO `Operaciones` VALUES (50400, 23069266, 'APAZA', 'Adrian Esteban ', 'aaa@aaa.com', '2017-11-11 17:30:16', '2017-11-16 00:00:00', 21561034, 'LEGUIZAMON', 'MANUEL', '156269803', 'aaa@aaa.com', 'VISA', 172.81, 164.17, 2, 206.54, 103.27, 7089, 11, '2017-11-11 17:30:16', 'C');
INSERT INTO `Operaciones` VALUES (50401, 35521870, 'FARIAS', 'Yanina', 'johana123.456@hotmail.com', '2017-11-11 17:45:35', '2017-11-16 00:00:00', 21027670, 'ORTIZ', 'NORMA BEATRIZ', '155477671', 'johana123.456@hotmail.com', 'VISA', 1884.58, 1790.35, 3, 2300.01, 766.67, 806760, 26, '2017-11-11 17:45:35', 'C');
INSERT INTO `Operaciones` VALUES (50402, 36943104, 'CORDOBA', 'Luciana', 'lu_frinchy@hotmail.com', '2017-11-11 18:58:51', '2017-11-16 00:00:00', 21747441, 'ROMANO', 'SANDRA', '153268490', 'aaa@aaa.com', 'VISA', 700.00, 665.00, 3, 854.30, 284.77, 6665, 6484, '2017-11-11 18:58:51', 'C');
INSERT INTO `Operaciones` VALUES (50403, 40238310, 'MIGNONE', 'Fabricio Italo', 'aaa@aaa.com', '2017-11-13 09:46:22', '2017-11-16 00:00:00', 17240771, 'ROJAS', 'Luis Alberto', '153313119', '', 'VISA', 6850.00, 6507.50, 6, 8899.42, 1483.24, 14104, 2121, '2017-11-13 09:46:22', 'C');
INSERT INTO `Operaciones` VALUES (50404, 14023759, 'APAS', 'Ana Maria', 'aaa@aaa.com', '2017-11-13 10:11:36', '2017-11-16 00:00:00', 17077430, 'CRUZ', 'MIRIAM MARINA', '0381156238533', '', 'VISA', 730.00, 693.50, 2, 872.47, 436.24, 10609, 2478, '2017-11-13 10:11:36', 'C');
INSERT INTO `Operaciones` VALUES (50405, 23930165, 'GONZALES', 'Victor Heraldo', 'victorheraldogonzales@yahoo.com.ar', '2017-11-13 10:37:30', '2017-11-16 00:00:00', 18186680, 'OLIVA', 'Claudia', '', 'victorheraldogonzales@yahoo.com.ar', 'VISA', 590.00, 560.50, 4, 735.25, 183.81, 306284, 10, '2017-11-13 10:37:30', 'C');
INSERT INTO `Operaciones` VALUES (50406, 31323213, 'RODRIGUEZ', 'Rodrigo Luis ', 'rodrigorodriguez140@hotmail.com', '2017-11-13 11:40:52', '2017-11-16 00:00:00', 40533017, 'PERNIGOTTI', 'VALENTINA', '381156975096', '', 'VISA', 540.60, 513.57, 3, 659.77, 219.92, 12379, 4604, '2017-11-13 11:40:52', 'C');
INSERT INTO `Operaciones` VALUES (50407, 33431922, 'FAUO', 'Sergio Emmanuel', 'sergiofauo@hotmail.com', '2017-11-13 13:05:06', '2017-11-16 00:00:00', 10942541, 'Soria', 'Mercedes del Valle', '3816983077', '', 'VISA', 1840.00, 1748.00, 2, 2199.11, 1099.56, 6257, 6013, '2017-11-13 13:05:06', 'C');
INSERT INTO `Operaciones` VALUES (50408, 35521870, 'FARIAS', 'Yanina', 'johana123.456@hotmail.com', '2017-11-13 17:15:22', '2017-11-16 00:00:00', 35026204, 'CARRISO', 'Maximiliano', '3815392636', '', 'VISA', 2800.00, 2660.00, 1, 2800.00, 0.00, 738880, 27, '2017-11-13 17:15:22', 'D');
INSERT INTO `Operaciones` VALUES (50409, 35521870, 'FARIAS', 'Yanina', 'johana123.456@hotmail.com', '2017-11-13 17:21:50', '2017-11-16 00:00:00', 21027670, 'ORTIZ', 'Norma Beatriz', '3815477671', '', 'VISA', 1884.57, 1790.34, 3, 2299.99, 766.66, 806760, 26, '2017-11-13 17:21:50', 'C');
INSERT INTO `Operaciones` VALUES (50410, 7708841, 'ARMANDO', 'Miguel Angel', 'aberturadelnorte12@gmail.com', '2017-11-13 17:30:51', '2017-11-16 00:00:00', 33974841, 'MONTE DE OCA', 'Paola', '153430863', '', 'VISA', 1575.00, 1496.25, 6, 2046.22, 341.04, 7417, 548, '2017-11-13 17:30:51', 'C');
INSERT INTO `Operaciones` VALUES (50411, 7708841, 'ARMANDO', 'Miguel Angel', 'aberturadelnorte12@gmail.com', '2017-11-14 12:43:22', '2017-11-17 00:00:00', 39078883, 'Pereyra', 'Pablo Nicolas', '153584690', '', 'VISA', 2420.00, 2299.00, 6, 3144.03, 524.01, 8256, 9750, '2017-11-14 12:43:22', 'C');
INSERT INTO `Operaciones` VALUES (50412, 35521870, 'FARIAS', 'Yanina', 'johana123.456@hotmail.com', '2017-11-14 13:28:27', '2017-11-17 00:00:00', 17861249, 'PERDIGON', 'Patricia A', '153502760', '', 'VISA', 1539.42, 1462.45, 6, 1999.99, 333.33, 12086, 29, '2017-11-14 13:28:27', 'C');
INSERT INTO `Operaciones` VALUES (50413, 6391762, 'BILLONE', 'Graciela Elisa', 'colegiobolivar@arnetbiz.com.ar', '2017-11-14 17:37:54', '2017-11-17 00:00:00', 35484387, 'GARCIA', 'Jessica Alejandra', '0381153014649', 'jesicagarcia.jg@gmail.com', 'VISA', 1500.00, 1425.00, 3, 1830.65, 610.22, 727750, 4454, '2017-11-14 17:37:54', 'C');
INSERT INTO `Operaciones` VALUES (50414, 26782634, 'LEPEN', 'Vanesa', 'vanelepen@hotmail.com', '2017-11-14 18:09:15', '2017-11-17 00:00:00', 27652348, 'ALLENDEZ', 'MARIA INES', '3814421437', 'allendezmines@gmail.com', 'VISA', 1900.00, 1805.00, 6, 2468.45, 411.41, 6602, 4454, '2017-11-14 18:09:15', 'C');
INSERT INTO `Operaciones` VALUES (50415, 41496740, 'GRAMAJO', 'Guillermo Federico', 'aaa@aaa.com', '2017-11-14 18:14:39', '2017-11-17 00:00:00', 34325658, 'GOMEZ MURO', 'DARDO VALENTIN', '4230219', 'dardog3@gmail.com', 'VISA', 3700.00, 3515.00, 6, 4806.99, 801.17, 13603, 5060, '2017-11-14 18:14:39', 'C');
INSERT INTO `Operaciones` VALUES (50416, 26783306, 'PALOMO', 'Brenda Ivana ', 'centrodestudiostucuman@hotmail.com', '2017-11-14 18:20:08', '2017-11-17 00:00:00', 17215439, 'LAZARTE', 'JUANA DEL VALLE', '4347330', 'juanalazarte2543@hotmail.com', 'VISA', 4800.00, 4560.00, 12, 7237.99, 603.17, 71346, 5125, '2017-11-14 18:20:08', 'C');
INSERT INTO `Operaciones` VALUES (50417, 22336910, 'LEANDRINI', 'Silvina Elizabeth', 'leandrinisilvina@hotmail.com', '2017-11-14 18:52:18', '2017-11-17 00:00:00', 30759673, 'CHIMIRRI', 'MARIA NATALIA', '155390920', 'natuchimirri@outlook.com.ar', 'VISA', 2738.00, 2601.10, 3, 3341.55, 1113.85, 732868, 5347, '2017-11-14 18:52:18', 'C');
INSERT INTO `Operaciones` VALUES (50418, 32459896, 'ARGAÑARAZ', 'Walter Gabriel ', 'walter2004280@hotmail.com', '2017-11-14 19:22:18', '2017-11-17 00:00:00', 17458951, 'ROLDAN', 'DORA MARGARITA', '155019310', 'walter2004280@hotmail.com', 'VISA', 2178.00, 2069.10, 12, 3284.24, 273.69, 7453, 5772, '2017-11-14 19:22:18', 'C');
INSERT INTO `Operaciones` VALUES (50419, 26980606, 'GOMEZ', 'Maria Manuela', 'manuindumentaria@gmail.com', '2017-11-14 19:45:45', '2017-11-17 00:00:00', 14716842, 'PONCE', 'MARTA', '153569751', 'manuindumentaria@gmail.com', 'VISA', 1280.00, 1216.00, 6, 1662.96, 277.16, 739378, 193, '2017-11-14 19:45:45', 'C');
INSERT INTO `Operaciones` VALUES (50420, 28292581, 'FRETE ', 'Luciana Pamela ', 'pamelafrete@hotmail.com.ar', '2017-11-14 20:08:22', '2017-11-17 00:00:00', 26013290, 'Aguero', 'enzo alejandro', '4263735', '', 'VISA', 650.00, 617.50, 3, 793.28, 264.43, 741845, 6163, '2017-11-14 20:08:22', 'C');
INSERT INTO `Operaciones` VALUES (50421, 38247053, 'PRADO', 'Exequiel José Manuel', 'fundacionparticipando@gmail.com', '2017-11-14 20:08:42', '2017-11-17 00:00:00', 21334645, 'RESOLA', 'NORMA BEATRIZ', '155490976', 'beatrixresola@gmail.com', 'VISA', 1900.00, 1805.00, 1, 1900.00, 0.00, 959074, 194, '2017-11-14 20:08:42', 'D');
INSERT INTO `Operaciones` VALUES (50422, 24770712, 'BUSTAMANTE ', 'Antonio Ismael ', 'playrecismael@gmail.com', '2017-11-14 20:16:50', '2017-11-17 00:00:00', 34127540, 'RUIZ', 'Bruno Gonzalo', '0381156550330', 'ruizbrunog@gmail.com', 'VISA', 4730.00, 4493.50, 6, 6145.15, 1024.19, 6886, 6222, '2017-11-14 20:16:50', 'C');
INSERT INTO `Operaciones` VALUES (50423, 39480118, 'DIAZ', 'Cesar Exequiel', 'exequieldiaz144@gmail.com', '2017-11-14 20:21:17', '2017-11-17 00:00:00', 20692255, 'GONZALEZ QUINTEROS', 'SERGIO MARTIN', '3816929766', 'martinchus@gmail.com', 'VISA', 5000.00, 4750.00, 6, 6495.93, 1082.66, 11032, 6303, '2017-11-14 20:21:17', 'C');
INSERT INTO `Operaciones` VALUES (50424, 23069266, 'APAZA', 'Adrian Esteban ', 'aaa@aaa.com', '2017-11-14 20:42:07', '2017-11-20 00:00:00', 30760593, 'CASTILLO', 'NOEMI', '4367255', 'aaa@aaa.com', 'VISA', 1318.35, 1252.43, 3, 1608.96, 536.32, 7384, 12, '2017-11-14 20:42:07', 'C');
INSERT INTO `Operaciones` VALUES (50425, 32134226, 'LUCENA', 'Gonzalo', 'recorcholis_519@hotmail.com', '2017-11-15 10:28:00', '2017-11-20 00:00:00', 36534631, 'Rivadeneira', 'Daniel Alejandro', '155982662', '', 'VISA', 1200.00, 1140.00, 6, 1559.02, 259.84, 7259, 9341, '2017-11-15 10:28:00', 'C');
INSERT INTO `Operaciones` VALUES (50426, 29836129, 'FAUO', 'Walter Fabian', 'aaa@aaa.com', '2017-11-15 11:13:47', '2017-11-20 00:00:00', 29650838, 'LEAL', 'Cristian Marcelo', '3815455455', 'lealcrist82@yahoo.com.ar', 'MASTER', 5743.00, 5455.85, 12, 8610.87, 717.57, 685640, 0, '2017-11-15 11:13:47', 'C');
INSERT INTO `Operaciones` VALUES (50427, 38115851, 'ANDRADE', 'Maico Hugo', 'andrademaico794@gmail.com', '2017-11-15 14:19:20', '2017-11-21 00:00:00', 38115373, 'LOPEZ JUAREZ', 'Soraya W', '3815824001', '', 'MASTER', 1750.00, 1662.50, 6, 2273.57, 378.93, 682886, 0, '2017-11-15 14:19:20', 'C');
INSERT INTO `Operaciones` VALUES (50428, 38115851, 'ANDRADE', 'Maico Hugo', 'andrademaico794@gmail.com', '2017-11-15 17:52:22', '2017-11-21 00:00:00', 12597982, 'AVELLANA', 'CLARISA', '154774969', 'andrademaico794@gmail.com', 'VISA', 1050.00, 997.50, 6, 1364.14, 227.36, 7255, 6882, '2017-11-15 17:52:22', 'C');
INSERT INTO `Operaciones` VALUES (50429, 6391762, 'BILLONE', 'Graciela Elisa', 'colegiobolivar@arnetbiz.com.ar', '2017-11-15 18:18:22', '2017-11-21 00:00:00', 26028791, 'DORADO', 'MIRIAM', '153331036', 'colegiobolivar@arnetbiz.com.ar', 'VISA', 1500.00, 1425.00, 3, 1830.65, 610.22, 7415, 7272, '2017-11-15 18:18:22', 'C');
INSERT INTO `Operaciones` VALUES (50430, 22387989, 'ABREGU', 'Juan Sergio', 'sergioabreguj@gmail.com', '2017-11-16 13:07:31', '2017-11-22 00:00:00', 24092035, 'Paez', 'Karina', '', '', 'VISA', 1100.00, 1045.00, 3, 1342.48, 447.49, 795565, 5092, '2017-11-16 13:07:31', 'C');
INSERT INTO `Operaciones` VALUES (50431, 21338747, 'DIAZ HADAD ', 'Maria Ines ', 'aaa@aaa.com', '2017-11-16 13:19:55', '2017-11-22 00:00:00', 37312460, 'RISSO', 'Gabriela', '03815264159', 'rissogaby3@gmail.com', 'VISA', 525.00, 498.75, 3, 640.73, 213.58, 13420, 5290, '2017-11-16 13:19:55', 'C');
INSERT INTO `Operaciones` VALUES (50432, 33541620, 'GALLO', 'Alejandro', 'yo.ale.jandro.gallo@gmail.com', '2017-11-16 16:04:24', '2017-11-22 00:00:00', 11768665, 'ARROYO', 'ALICIA DE JESUS', '4271566', 'aliciaarroyo07@gmail.com', 'VISA', 1000.00, 950.00, 2, 1195.17, 597.59, 6505, 7729, '2017-11-16 16:04:24', 'C');
INSERT INTO `Operaciones` VALUES (50433, 23069266, 'APAZA', 'Adrian Esteban ', 'aaa@aaa.com', '2017-11-16 17:22:27', '2017-11-22 00:00:00', 4573606, 'OVANDO', 'Rodolfo', '', '', 'VISA', 220.05, 209.05, 2, 263.00, 131.50, 6530, 14, '2017-11-16 17:22:27', 'C');
INSERT INTO `Operaciones` VALUES (50434, 21338747, 'DIAZ HADAD ', 'Maria Ines ', 'aaa@aaa.com', '2017-11-16 19:14:22', '2017-11-22 00:00:00', 21796414, 'ORTIZ', 'PAULA', '156484673', '', 'VISA', 3000.00, 2850.00, 12, 4523.74, 376.98, 7124, 945, '2017-11-16 19:14:22', 'C');
INSERT INTO `Operaciones` VALUES (50435, 38115851, 'ANDRADE', 'Maico Hugo', 'andrademaico794@gmail.com', '2017-11-16 20:03:59', '2017-11-22 00:00:00', 31946478, 'FERNANDEZ', 'NATALIA', '3815528824', 'nataliafernandezconsul@gmail.com', 'VISA', 850.00, 807.50, 4, 1059.26, 264.82, 531029, 1541, '2017-11-16 20:03:59', 'C');
INSERT INTO `Operaciones` VALUES (50436, 23069266, 'APAZA', 'Adrian Esteban ', 'aaa@aaa.com', '2017-11-16 20:20:42', '2017-11-22 00:00:00', 18256068, 'ARMOA', 'JOSE EMANUEL', '156688962', 'aaa@aaa.com', 'VISA', 229.90, 218.41, 2, 274.77, 137.39, 619635, 15, '2017-11-16 20:20:42', 'C');
INSERT INTO `Operaciones` VALUES (50437, 28416944, 'LOBO', 'Andrea Mariana', 'andemar944@gmail.com', '2017-11-16 20:32:49', '2017-11-23 00:00:00', 31180235, 'LOBO', 'JOSE RICARDO', '3816980240', 'pepewols_18@hotmail.com', 'AMEX', 18000.00, 17100.00, 12, 27344.21, 2278.68, 77, 37, '2017-11-16 20:32:49', 'C');
INSERT INTO `Operaciones` VALUES (50438, 32341261, 'BRUSCHI', 'Mario Alberto', 'mabbruschi@gmail.com', '2017-11-16 20:58:00', '2017-11-23 00:00:00', 32853701, 'JUAREZ', 'CHRISTIAN', '3815128536', 'christianjuarez87@gmail.com', 'MASTER', 2350.00, 2232.50, 3, 2868.02, 956.01, 650408, 0, '2017-11-16 20:58:00', 'C');
INSERT INTO `Operaciones` VALUES (50439, 16175500, 'ALDERETES', 'Omar Anibal', 'aaa@aa.com', '2017-11-17 09:34:03', '2017-11-23 00:00:00', 16146715, 'PALOMINO', 'Margarita', '', '', 'VISA', 440.00, 418.00, 3, 536.99, 179.00, 893829, 4254, '2017-11-17 09:34:03', 'C');
INSERT INTO `Operaciones` VALUES (50440, 36584371, 'CASTILLO', 'Gustavo German', 'castillogustavo3442@gmail.com', '2017-11-17 11:31:00', '2017-11-23 00:00:00', 37456421, 'BRAVO', 'LUCAS RAUL', '156782295', '', 'VISA', 500.00, 475.00, 2, 597.58, 298.79, 6144, 6824, '2017-11-17 11:31:00', 'C');
INSERT INTO `Operaciones` VALUES (50441, 35521870, 'FARIAS', 'Yanina', 'johana123.456@hotmail.com', '2017-11-17 11:50:28', '2017-11-23 00:00:00', 16222306, 'MIRAUDA', 'HUGO', '4924032', '', 'VISA', 2000.00, 1900.00, 6, 2598.37, 433.06, 6454, 31, '2017-11-17 11:50:28', 'C');
INSERT INTO `Operaciones` VALUES (50442, 10925548, 'GONZALEZ', 'Azucena Virginia', 'azuvigonzalez@yahoo.com.ar', '2017-11-17 12:04:35', '2017-11-23 00:00:00', 9989874, 'REISSCHNEIDER', 'JESUS CANDELARIA', '156094523', '', 'VISA', 560.00, 532.00, 2, 669.29, 334.65, 959183, 7508, '2017-11-17 12:04:35', 'C');
INSERT INTO `Operaciones` VALUES (50443, 35521870, 'FARIAS', 'Yanina', 'johana123.456@hotmail.com', '2017-11-17 13:16:04', '2017-11-23 00:00:00', 21838987, 'ROJA', 'Roberto Martin', '', '', 'VISA', 1900.00, 1805.00, 6, 2468.45, 411.41, 732871, 30, '2017-11-17 13:16:04', 'C');
INSERT INTO `Operaciones` VALUES (50444, 35521870, 'FARIAS', 'Yanina', 'johana123.456@hotmail.com', '2017-11-17 13:22:17', '2017-11-23 00:00:00', 12654670, 'SANCHEZ', 'Juan Carlos ', '155184585', '', 'VISA', 2000.00, 1900.00, 6, 2598.37, 433.06, 908252, 32, '2017-11-17 13:22:17', 'C');
INSERT INTO `Operaciones` VALUES (50445, 20366891, 'MEDINA', 'Silvia Rosa', 'silviamedina@outlook.com', '2017-11-17 14:16:35', '2017-11-23 00:00:00', 21028030, 'SALINAS', 'ADRIANA', '156366011', '', 'VISA', 280.00, 266.00, 2, 334.65, 167.33, 6401, 9643, '2017-11-17 14:16:35', 'C');
INSERT INTO `Operaciones` VALUES (50446, 32134226, 'LUCENA', 'Gonzalo', 'recorcholis_519@hotmail.com', '2017-11-17 14:42:19', '2017-11-23 00:00:00', 39477400, 'FUNES', 'Jorge Emanuel', '3813528794', '', 'VISA', 1300.00, 1235.00, 6, 1688.94, 281.49, 12057, 47, '2017-11-17 14:42:19', 'C');
INSERT INTO `Operaciones` VALUES (50447, 18187695, 'PALAZZO', 'Adriana Margarita', 'adripalazzo@yahoo.com.ar', '2017-11-17 15:43:05', '2017-11-23 00:00:00', 43499252, 'SORIA', 'ANA VALENTINA', '3816460667', 'valee.soria@gmail.com', 'VISA', 4000.00, 3800.00, 12, 6031.66, 502.64, 6517, 1016, '2017-11-17 15:43:05', 'C');
INSERT INTO `Operaciones` VALUES (50448, 20366891, 'MEDINA', 'Silvia Rosa', 'silviamedina@outlook.com', '2017-11-17 15:59:49', '2017-11-23 00:00:00', 38036333, 'SOSA', 'Maria Lujan', '156051514', 'lujam_94@yahoo.com.ar', 'VISA', 1050.00, 997.50, 2, 1254.93, 627.47, 7307, 1354, '2017-11-17 15:59:49', 'C');
INSERT INTO `Operaciones` VALUES (50449, 25922441, 'CASEY', 'Elina', 'elinacasey@hotmail.com', '2017-11-17 19:02:47', '2017-11-23 00:00:00', 28124369, 'Gerez ', 'Maria Fernanda', '0386315693980', 'mfernandagerez80@gmail.com', 'VISA', 8300.00, 7885.00, 12, 12515.69, 1042.97, 585321, 4726, '2017-11-17 19:02:47', 'C');
INSERT INTO `Operaciones` VALUES (50450, 35192768, 'BELTRAN', 'Rosana Carolina', 'aaa@aaa.com', '2017-11-17 19:12:27', '2017-11-23 00:00:00', 24262007, 'Dip', 'Nicolas', '0386515576242', 'nicolasdip_14@hotmail.com', 'VISA', 900.00, 855.00, 3, 1098.39, 366.13, 778774, 4866, '2017-11-17 19:12:27', 'C');
INSERT INTO `Operaciones` VALUES (50451, 25843612, 'SUAREZ', 'Sergio Javier', 'sergiosuarez10@gmail.com', '2017-11-17 20:12:49', '2017-11-23 00:00:00', 29085164, 'CORDOBA', 'Martin', '0381155396964', 'tines_1981@hotmail.com', 'VISA', 8330.00, 7913.50, 12, 12560.93, 1046.74, 7527, 5477, '2017-11-17 20:12:49', 'C');
INSERT INTO `Operaciones` VALUES (50452, 34603504, 'GIOIA', 'Maira Yanina', 'mairagioia@gmail.com', '2017-11-17 20:43:29', '2017-11-24 00:00:00', 38184780, 'PARODI', 'MERCEDES', '3815089993', 'mercedesparodi@hotmail.com', 'VISA', 750.00, 712.50, 3, 915.33, 305.11, 8323, 5781, '2017-11-17 20:43:29', 'C');
INSERT INTO `Operaciones` VALUES (50453, 16458365, 'PITA', 'Jorge Horacio', 'rajota2001@yahoo.com.ar', '2017-11-18 11:41:25', '2017-11-24 00:00:00', 16541007, 'muro', 'jose david', '155458851', 'rajota2001@yahoo.com.ar', 'VISA', 3740.00, 3553.00, 6, 4858.95, 809.83, 10701, 8547, '2017-11-18 11:41:25', 'C');
INSERT INTO `Operaciones` VALUES (50454, 17859299, 'ALBORNOZ ', 'Manuel', 'manuelalbornoz157@gmail.com', '2017-11-18 12:43:59', '2017-11-24 00:00:00', 222631761, 'TRIVIÑO ESCAÑO', 'MONICA', '3815849268', 'manuelalbornoz157@gmail.com', 'VISA', 600.00, 570.00, 3, 732.26, 244.09, 878378, 9219, '2017-11-18 12:43:59', 'C');
INSERT INTO `Operaciones` VALUES (50455, 38115851, 'ANDRADE', 'Maico Hugo', 'andrademaico794@gmail.com', '2017-11-18 12:52:19', '2017-11-24 00:00:00', 26423388, 'MARTINI', 'JIMENA', '381154454220', 'jimenamartini2@hotmail.com', 'VISA', 2200.00, 2090.00, 3, 2684.96, 894.99, 9679, 9305, '2017-11-18 12:52:19', 'C');
INSERT INTO `Operaciones` VALUES (50456, 27017232, 'HERRERA ', 'Rosa Ester ', 'matiasherrera165@gmail.com', '2017-11-18 13:01:09', '2017-11-24 00:00:00', 31548902, 'MAIHUB', 'MIRTA', '3815241638', 'mirmaihub@gmail.com', 'VISA', 586.00, 556.70, 2, 700.37, 350.19, 844716, 9376, '2017-11-18 13:01:09', 'C');
INSERT INTO `Operaciones` VALUES (50457, 10925548, 'GONZALEZ', 'Azucena Virginia', 'azuvigonzalez@yahoo.com.ar', '2017-11-18 14:05:56', '2017-11-24 00:00:00', 17615024, 'heredia', 'claudia', '4552585', 'azuvigonzalez@yahoo.com.ar', 'VISA', 682.00, 647.90, 3, 832.34, 277.45, 56174, 9762, '2017-11-18 14:05:56', 'C');
INSERT INTO `Operaciones` VALUES (50458, 27370086, 'GOYTIA', 'Claudia Beatriz', 'claudiagoytiaindumentaria@gmail.com', '2017-11-18 14:23:59', '2017-11-24 00:00:00', 27370863, 'CASTRO', 'KARINA', '3813041699', 'claudiagoytiaindumentaria@gmail.com', 'VISA', 2300.00, 2185.00, 6, 2988.13, 498.02, 6411, 9819, '2017-11-18 14:23:59', 'C');
INSERT INTO `Operaciones` VALUES (50459, 20366891, 'MEDINA', 'Silvia Rosa', 'silviamedina@outlook.com', '2017-11-18 17:06:22', '2017-11-24 00:00:00', 27727290, 'MALDONADO', 'MARIA CECILIA', '381154137222', 'cecyymumy17@gmail.com', 'VISA', 550.00, 522.50, 2, 657.34, 328.67, 903844, 472, '2017-11-18 17:06:22', 'C');
INSERT INTO `Operaciones` VALUES (50460, 33971507, 'LOPEZ OJEDA', 'Leandro Gabriel', 'mailenvelazquez.mv@gmail.com', '2017-11-18 17:25:20', '2017-11-24 00:00:00', 32348891, 'JUAREZ ', 'RITA VERA LUCIA', '3865589538', '', 'VISA', 3000.00, 2850.00, 6, 3897.56, 649.59, 11163, 549, '2017-11-18 17:25:20', 'C');
INSERT INTO `Operaciones` VALUES (50461, 25502069, 'FUNES', 'Ivonne Lorena', 'lorena_moria@hotmail.com', '2017-11-18 18:40:30', '2017-11-24 00:00:00', 18187709, 'HERRERA', 'CLARA', '155161169', '', 'VISA', 700.00, 665.00, 2, 836.62, 418.31, 7954, 856, '2017-11-18 18:40:30', 'C');
INSERT INTO `Operaciones` VALUES (50462, 35521870, 'FARIAS', 'Yanina', 'johana123.456@hotmail.com', '2017-11-18 19:34:19', '2017-11-24 00:00:00', 32775553, 'ECCLI ', 'Rocio G', '3815170008', '', 'VISA', 945.00, 897.75, 6, 1227.73, 204.62, 6924, 33, '2017-11-18 19:34:19', 'C');
INSERT INTO `Operaciones` VALUES (50463, 31228333, 'SORUCO', 'Antonio Francisco Ariel', 'sorucoantonio@gmail.com', '2017-11-18 20:02:59', '2017-11-24 00:00:00', 12569957, 'JAIMES', 'CARLOS A', '155794677', '', 'VISA', 1700.00, 1615.00, 6, 2208.62, 368.10, 7005, 1185, '2017-11-18 20:02:59', 'C');
INSERT INTO `Operaciones` VALUES (50464, 38115851, 'ANDRADE', 'Maico Hugo', 'andrademaico794@gmail.com', '2017-11-18 20:15:29', '2017-11-24 00:00:00', 33703118, 'MORALES', 'CLAUDIA C', '154626135', '', 'VISA', 400.00, 380.00, 2, 478.07, 239.04, 6879, 1164, '2017-11-18 20:15:29', 'C');
INSERT INTO `Operaciones` VALUES (50465, 32341261, 'BRUSCHI', 'Mario Alberto', 'mabbruschi@gmail.com', '2017-11-18 20:20:57', '2017-11-24 00:00:00', 28617925, 'FRIAS', 'Gustavo', '156134521', '', 'VISA', 380.00, 361.00, 2, 454.16, 227.08, 676163, 1250, '2017-11-18 20:20:57', 'C');
INSERT INTO `Operaciones` VALUES (50466, 38115851, 'ANDRADE', 'Maico Hugo', 'andrademaico794@gmail.com', '2017-11-20 18:15:26', '2017-11-24 00:00:00', 26045581, 'Quiroga', 'Soledad petrona', '', 'Pitra29@hotmail.com', 'VISA', 350.00, 332.50, 2, 418.31, 209.16, 12794, 8184, '2017-11-20 18:15:26', 'C');
INSERT INTO `Operaciones` VALUES (50467, 38115851, 'ANDRADE', 'Maico Hugo', 'andrademaico794@gmail.com', '2017-11-20 20:06:45', '2017-11-24 00:00:00', 34066640, 'Elias', 'Maria josefina', '', 'Andrademaico794@gmail.com', 'VISA', 1350.00, 1282.50, 2, 1613.48, 806.74, 11488, 8809, '2017-11-20 20:06:45', 'C');
INSERT INTO `Operaciones` VALUES (50468, 16458365, 'PITA', 'Jorge Horacio', 'rajota2001@yahoo.com.ar', '2017-11-21 10:31:08', '2017-11-24 00:00:00', 11135573, 'Dioli', 'Walter Ivan', '3834926396', '', 'VISA', 2631.75, 2500.16, 12, 3968.46, 330.71, 144588, 2409, '2017-11-21 10:31:08', 'C');
INSERT INTO `Operaciones` VALUES (50469, 22622010, 'TORRES', 'Diego Fabian', 'torresdie123@gmail.com', '2017-11-21 11:43:44', '2017-11-24 00:00:00', 24533500, 'ROMANO', 'Arnaldo Rafael', '0386715608243', '', 'AMEX', 2480.00, 2356.00, 2, 2955.55, 1477.78, 13, 39, '2017-11-21 11:43:44', 'C');
INSERT INTO `Operaciones` VALUES (50470, 14488271, 'PEDRINI', 'Lucia Ester', 'luciaepedrini@gmail.com', '2017-11-21 12:17:20', '2017-11-24 00:00:00', 23238854, 'GUZMAN', 'Juan Marcelo', '154492115', '', 'VISA', 700.00, 665.00, 3, 854.30, 284.77, 7730, 4838, '2017-11-21 12:17:20', 'C');
INSERT INTO `Operaciones` VALUES (50471, 17696977, 'ROMERO', 'Julio Cesar ', 'fernandoromero09@hotmail.com', '2017-11-21 18:35:35', '2017-11-24 00:00:00', 25543260, 'ROMANO', 'NOELIA DE LAS MERCEDES', '4275342', 'noelia0676@gmail.com', 'VISA', 1926.00, 1829.70, 12, 2904.24, 242.02, 6916, 1022, '2017-11-21 18:35:35', 'C');
INSERT INTO `Operaciones` VALUES (50472, 32134226, 'LUCENA', 'Gonzalo', 'recorcholis_519@hotmail.com', '2017-11-21 19:45:36', '2017-11-24 00:00:00', 38488182, 'HEREDIA', 'JOSE LUIS', '152035473', 'recorcholis_519@hotmail.com', 'VISA', 1800.00, 1710.00, 3, 2196.78, 732.26, 9263, 1815, '2017-11-21 19:45:36', 'C');
INSERT INTO `Operaciones` VALUES (50473, 26011536, 'MOLINA', 'Alejandra Beatriz', 'alejandraunika647@gmail.com', '2017-11-21 20:38:20', '2017-11-27 00:00:00', 26883649, 'BARALO', 'MARIA LILIANA', '3815686991', 'lbaralo@gmail.com', 'VISA', 485.00, 460.75, 3, 591.91, 197.30, 690441, 2305, '2017-11-21 20:38:20', 'C');
INSERT INTO `Operaciones` VALUES (50474, 34604124, 'GONZALEZ', 'Diego Augusto', 'sttecnico535@hotmail.com', '2017-11-21 20:49:00', '2017-11-27 00:00:00', 25844451, 'TOLEDO CARABAJAL', 'PABLO JAVIER', '3815905148', 'drpablotoledo@gmail.com', 'VISA', 1895.00, 1800.25, 6, 2461.96, 410.33, 6879, 195, '2017-11-21 20:49:00', 'C');
INSERT INTO `Operaciones` VALUES (50475, 35521870, 'FARIAS', 'Yanina', 'johana123.456@hotmail.com', '2017-11-22 11:21:40', '2017-11-27 00:00:00', 29877184, 'GONZALES', 'Agustin J', '153539981', '', 'VISA', 1800.00, 1710.00, 3, 2196.78, 732.26, 6423, 34, '2017-11-22 11:21:40', 'C');
INSERT INTO `Operaciones` VALUES (50476, 32110466, 'IOTTI', 'Raul Romualdo', 'raulsipi@gmail.com', '2017-11-22 14:45:46', '2017-11-27 00:00:00', 34077579, 'LERA', 'Ramiro Rafael', '3812004406', '', 'VISA', 1485.00, 1410.75, 6, 1929.29, 321.55, 229207, 9845, '2017-11-22 14:45:46', 'C');
INSERT INTO `Operaciones` VALUES (50477, 29640381, 'GARCIA ROQUE', 'Carolina', 'angelesdekro@hotmail.com', '2017-11-22 14:59:13', '2017-11-27 00:00:00', 28680623, 'GARNICA', 'ALEJANDRO PABLO', '155784345', '', 'VISA', 625.00, 593.75, 3, 762.77, 254.26, 957810, 111, '2017-11-22 14:59:13', 'C');
INSERT INTO `Operaciones` VALUES (50478, 24750862, 'GORDILLO', 'Jose Luis', 'bc.telefonia@hotmail.com', '2017-11-22 15:26:06', '2017-11-27 00:00:00', 37455141, 'RABY', 'Alfredo Pablo', '3815039803', '', 'VISA', 1060.00, 1007.00, 12, 1598.39, 133.20, 6530, 7, '2017-11-22 15:26:06', 'C');
INSERT INTO `Operaciones` VALUES (50479, 39976680, 'GIMENEZ SARAVIA ', 'Florencia', 'flormgimenez@hotmail.com', '2017-11-22 16:18:36', '2017-11-27 00:00:00', 32853102, 'RODRIGUEZ', 'MARIANELA', '154747037', '', 'VISA', 2200.00, 2090.00, 6, 2858.21, 476.37, 6872, 1225, '2017-11-22 16:18:36', 'C');
INSERT INTO `Operaciones` VALUES (50480, 35521870, 'FARIAS', 'Yanina', 'johana123.456@hotmail.com', '2017-11-22 19:02:22', '2017-11-27 00:00:00', 27732352, 'ALTAMIRANDA', 'JOSE', '155141401', 'johana123.456@hotmail.com', 'MASTER', 3100.00, 2945.00, 6, 4027.48, 671.25, 616363, 0, '2017-11-22 19:02:22', 'C');
INSERT INTO `Operaciones` VALUES (50481, 28567276, 'Sosa', 'Paola Natalia', 'rocio-bustos20@hotmail.com', '2017-11-22 20:28:57', '2017-11-27 00:00:00', 27430326, 'GUASH', 'RITA DANIELA', '03865472508', 'rocio-bustos20@hotmail.com', 'VISA', 1680.00, 1596.00, 6, 2182.63, 363.77, 7336, 4758, '2017-11-22 20:28:57', 'C');
INSERT INTO `Operaciones` VALUES (50482, 30117313, 'Lobo Quinteros', 'Ramiro ', 'relq@clubhonorarios.com', '2017-11-22 20:51:19', '2017-11-28 00:00:00', 14660668, 'MOYA', 'FERNANDO', '4931886', 'AAA@AAA.COM', 'VISA', 3800.00, 3610.00, 3, 4637.65, 1545.88, 9692, 4901, '2017-11-22 20:51:19', 'C');
INSERT INTO `Operaciones` VALUES (50483, 35192768, 'BELTRAN', 'Rosana Carolina', 'aaa@aaa.com', '2017-11-22 21:25:35', '2017-11-28 00:00:00', 23132400, 'ROBLES.', 'Mabel', '0386515373143', '', 'VISA', 300.00, 285.00, 2, 358.55, 179.28, 598403, 5128, '2017-11-22 21:25:35', 'C');
INSERT INTO `Operaciones` VALUES (50484, 33431922, 'FAUO', 'Sergio Emmanuel', 'sergiofauo@hotmail.com', '2017-11-23 11:00:48', '2017-11-28 00:00:00', 17041557, 'GALLARDO', 'JOSE TEODORO', '155477588', '', 'MASTER', 4850.07, 4607.57, 6, 6301.14, 1050.19, 619591, 0, '2017-11-23 11:00:48', 'C');
INSERT INTO `Operaciones` VALUES (50485, 34133394, 'MARRAZA', 'Mayra Daiana ', 'marraza_daiana@hotmail.com.ar', '2017-11-23 11:42:28', '2017-11-28 00:00:00', 17958846, 'VERA', 'SONIA DEL CARMEN', '3815794737', '', 'VISA', 1556.00, 1478.20, 6, 2021.53, 336.92, 650314, 9560, '2017-11-23 11:42:28', 'C');
INSERT INTO `Operaciones` VALUES (50486, 32110466, 'IOTTI', 'Raul Romualdo', 'raulsipi@gmail.com', '2017-11-23 11:45:32', '2017-11-28 00:00:00', 20231665, 'RODRIGUEZ', 'gustavo alejandro', '0381155099314', 'gusal03@hotmail.com', 'VISA', 848.00, 805.60, 6, 1101.71, 183.62, 696810, 9581, '2017-11-23 11:45:32', 'C');
INSERT INTO `Operaciones` VALUES (50487, 38115851, 'ANDRADE', 'Maico Hugo', 'andrademaico794@gmail.com', '2017-11-23 14:59:49', '2017-11-28 00:00:00', 34186777, 'VILLAFAÑE', 'RITA MARIA FLORENCIA', '3815464346', '', 'VISA', 1500.00, 1425.00, 3, 1830.65, 610.22, 6756, 2584, '2017-11-23 14:59:49', 'C');
INSERT INTO `Operaciones` VALUES (50488, 16458365, 'PITA', 'Jorge Horacio', 'rajota2001@yahoo.com.ar', '2017-11-23 17:38:12', '2017-11-28 00:00:00', 20941664, 'VELARDES', 'Fabian', '0381154123391', '', 'VISA', 6000.00, 5700.00, 6, 7795.11, 1299.19, 7905, 5223, '2017-11-23 17:38:12', 'C');
INSERT INTO `Operaciones` VALUES (50489, 11909675, 'RAMAYO', 'Maria Teresa ', 'mariatramayo@gmail.com', '2017-11-23 18:48:30', '2017-11-28 00:00:00', 33703902, 'IBARRA', 'PAMELA', '156664054', 'pame.19-06@hotmail.com', 'VISA', 4433.00, 4211.35, 12, 6684.59, 557.05, 307189, 6327, '2017-11-23 18:48:30', 'C');
INSERT INTO `Operaciones` VALUES (50490, 33971507, 'LOPEZ OJEDA', 'Leandro Gabriel', 'mailenvelazquez.mv@gmail.com', '2017-11-23 18:53:46', '2017-11-28 00:00:00', 33974211, 'CAMPERO', 'Rita', '03814292801', 'campero488@gmail.com', 'VISA', 3300.00, 3135.00, 2, 3944.06, 1972.03, 12345, 6402, '2017-11-23 18:53:46', 'C');
INSERT INTO `Operaciones` VALUES (50491, 38115851, 'ANDRADE', 'Maico Hugo', 'andrademaico794@gmail.com', '2017-11-23 19:07:31', '2017-11-28 00:00:00', 41060101, 'OLEA BURGOS', 'ANDREA', '3865472939', 'belenolea96@gmail.com', 'VISA', 1200.00, 1140.00, 2, 1434.20, 717.10, 6879, 6614, '2017-11-23 19:07:31', 'C');
INSERT INTO `Operaciones` VALUES (50492, 33971673, 'DIAZ CABRERA GARCIA', 'Flavia Maria Lidia', 'elmayordemisdefectos@gmail.com', '2017-11-23 19:31:20', '2017-11-28 00:00:00', 33715693, 'GUTIERREZ', 'JESICA', '155751997', 'jesicavgutierrez@gmailcom', 'VISA', 740.00, 703.00, 2, 884.42, 442.21, 310305, 196, '2017-11-23 19:31:20', 'C');
INSERT INTO `Operaciones` VALUES (50493, 28290812, 'OLEA', 'Franco Sebastian', 'francoolea17@gmail.com', '2017-11-23 20:19:23', '2017-11-28 00:00:00', 36866709, 'ROMERO', 'DIEGO HERNAN', '155820285', 'francoolea17@gmail.com', 'VISA', 2750.00, 2612.50, 3, 3356.19, 1118.73, 318150, 7609, '2017-11-23 20:19:23', 'C');
INSERT INTO `Operaciones` VALUES (50494, 29430217, 'UTRERA', 'Juan Manuel ', 'juanmutrera@hotmail.com', '2017-11-23 21:12:32', '2017-11-29 00:00:00', 34327519, ' ARAOZ MARTINEZ', 'MARIANA', '155345840', 'marianaaraoz90@gmail.com', 'VISA', 1350.00, 1282.50, 3, 1647.59, 549.20, 757909, 8256, '2017-11-23 21:12:32', 'C');
INSERT INTO `Operaciones` VALUES (50495, 36584371, 'CASTILLO', 'Gustavo German', 'castillogustavo3442@gmail.com', '2017-11-24 12:19:19', '2017-11-29 00:00:00', 22932940, 'JAIMES', 'EDUARDO ALBERTO', '3814176635', '', 'VISA', 1400.00, 1330.00, 3, 1708.61, 569.54, 354250, 4432, '2017-11-24 12:19:19', 'C');
INSERT INTO `Operaciones` VALUES (50496, 30068297, 'MARTINEZ', 'Viviana Elizabeth', 'viviana_martinez00@hotmail.com', '2017-11-24 12:41:39', '2017-11-29 00:00:00', 29640435, 'DIFARTO', 'Veronica T', '156359767', '', 'VISA', 600.00, 570.00, 3, 732.26, 244.09, 6910, 5490, '2017-11-24 12:41:39', 'C');
INSERT INTO `Operaciones` VALUES (50497, 35521870, 'FARIAS', 'Yanina', 'johana123.456@hotmail.com', '2017-11-24 12:52:54', '2017-11-29 00:00:00', 23444057, 'NIEVA', 'Ariel Horacio', '3814171151', '', 'VISA', 6500.00, 6175.00, 6, 8444.71, 1407.45, 6808, 35, '2017-11-24 12:52:54', 'C');
INSERT INTO `Operaciones` VALUES (50498, 22387989, 'ABREGU', 'Juan Sergio', 'sergioabreguj@gmail.com', '2017-11-24 12:55:55', '2017-11-29 00:00:00', 23930783, 'Duran', 'Marta', '', 'mariaduran07@hotmail.com', 'VISA', 1150.00, 1092.50, 3, 1403.50, 467.83, 18111, 5882, '2017-11-24 12:55:55', 'C');
INSERT INTO `Operaciones` VALUES (50499, 29640381, 'GARCIA ROQUE', 'Carolina', 'angelesdekro@hotmail.com', '2017-11-24 13:05:55', '2017-11-29 00:00:00', 23302921, 'Fernandez', 'Silvia M', '3863502726', '', 'VISA', 2727.00, 2590.65, 3, 3328.12, 1109.37, 10802, 6116, '2017-11-24 13:05:55', 'C');
INSERT INTO `Operaciones` VALUES (50500, 14488271, 'PEDRINI', 'Lucia Ester', 'luciaepedrini@gmail.com', '2017-11-24 13:33:22', '2017-11-29 00:00:00', 33431102, 'rodriguez', 'claudia karina', '3813540326', 'luciaepedrini@gmail.com', 'VISA', 150.00, 142.50, 2, 179.28, 89.64, 363311, 6652, '2017-11-24 13:33:22', 'C');
INSERT INTO `Operaciones` VALUES (50501, 28222969, 'VITORGAN', 'Eliana Celeste', 'modapertuttitalles@gmail.com', '2017-11-24 14:36:31', '2017-11-29 00:00:00', 33050575, 'MERCADO', 'ANDREA PAOLA', '381154653522', '', 'VISA', 1000.00, 950.00, 1, 1000.00, 0.00, 5347, 1, '2017-11-24 14:36:31', 'D');
INSERT INTO `Operaciones` VALUES (50502, 22612803, 'AGÜERO', 'Ariel Fernando', 'sandraveronicavelardez23@gmail.com', '2017-11-24 14:55:20', '2017-11-29 00:00:00', 25736140, 'AGUIRRESARODEB', 'WALTER', '3816546783', '', 'VISA', 2800.00, 2660.00, 3, 3417.22, 1139.07, 663325, 8196, '2017-11-24 14:55:20', 'C');
INSERT INTO `Operaciones` VALUES (50503, 33541620, 'GALLO', 'Alejandro', 'yo.ale.jandro.gallo@gmail.com', '2017-11-24 16:13:22', '2017-11-29 00:00:00', 25217492, 'LOPEZ', 'MARIA DEL CARMEN', '3815050936', 'pitylopez77@gmail.com', 'VISA', 3000.00, 2850.00, 3, 3661.30, 1220.43, 8006, 9991, '2017-11-24 16:13:22', 'C');
INSERT INTO `Operaciones` VALUES (50504, 37503294, 'YAPURA LENCINAS', 'Arturo Emir ', 'emir040893@gmail.com', '2017-11-24 16:19:09', '2017-11-29 00:00:00', 36219784, 'CRUZ', 'PABLO', '155649862', 'pablocruz31.08@gmail.com', 'VISA', 2800.00, 2660.00, 6, 3637.72, 606.29, 6565, 33, '2017-11-24 16:19:09', 'C');
INSERT INTO `Operaciones` VALUES (50505, 37725553, 'ELIAS', 'Maria Florencia', 'florelias@live.com', '2017-11-24 18:14:46', '2017-11-29 00:00:00', 11930694, 'BARRERAS', 'GRACIELA', '154187968', 'florelias@live.com', 'VISA', 250.00, 237.50, 3, 305.11, 101.70, 10256, 2585, '2017-11-24 18:14:46', 'C');
INSERT INTO `Operaciones` VALUES (50506, 28292581, 'FRETE ', 'Luciana Pamela ', 'pamelafrete@hotmail.com.ar', '2017-11-24 19:27:21', '2017-11-29 00:00:00', 25498475, 'ROMERO', 'SUSANA', '4263838', 'pamelafrete@hotmail.com.ar', 'VISA', 1785.00, 1695.75, 3, 2178.48, 726.16, 9452, 3666, '2017-11-24 19:27:21', 'C');
INSERT INTO `Operaciones` VALUES (50507, 25843612, 'SUAREZ', 'Sergio Javier', 'sergiosuarez10@gmail.com', '2017-11-24 19:43:57', '2017-11-29 00:00:00', 21829087, 'MARTINEZ', 'SILVANA', '155743115', 'sofi99pettorossi@gmail.com', 'VISA', 6150.00, 5842.50, 12, 9273.68, 772.81, 764237, 3929, '2017-11-24 19:43:57', 'C');
INSERT INTO `Operaciones` VALUES (50508, 36839331, 'AGUILERA', 'Carlos Eduardo', 'carlon.aguileraok@gmail.com', '2017-11-24 20:07:49', '2017-11-29 00:00:00', 36866748, 'JUAREZ', 'MATIAS', '156340728', 'matiasa.juarez@gmail.com', 'VISA', 1780.00, 1691.00, 3, 2172.37, 724.12, 9194, 4202, '2017-11-24 20:07:49', 'C');
INSERT INTO `Operaciones` VALUES (50509, 27370086, 'GOYTIA', 'Claudia Beatriz', 'claudiagoytiaindumentaria@gmail.com', '2017-11-24 20:22:40', '2017-11-29 00:00:00', 13067214, 'FARRONI', 'ANA MARIA', '1111111', 'claudiagoytiaindumentaria@gmail.com', 'VISA', 500.00, 475.00, 3, 610.22, 203.41, 9768, 4004, '2017-11-24 20:22:40', 'C');
INSERT INTO `Operaciones` VALUES (50510, 39730885, 'VILLA', 'Micaela Constanza', 'micaelaconstanzavilla@hotmail.com', '2017-11-24 20:59:39', '2017-11-30 00:00:00', 5151331, 'NIEVA', 'CLARA ROSA', '3815600849', 'micaelaconstanzavilla@hotmail.com', 'VISA', 990.00, 940.50, 3, 1208.23, 402.74, 7934, 4684, '2017-11-24 20:59:39', 'C');
INSERT INTO `Operaciones` VALUES (50511, 25502069, 'FUNES', 'Ivonne Lorena', 'lorena_moria@hotmail.com', '2017-11-24 21:06:18', '2017-11-30 00:00:00', 27364909, 'CASTRO', 'Silvia', '038115568976', 'castrosilvia011@gmail.com', 'VISA', 330.00, 313.50, 2, 394.41, 197.21, 7004, 4714, '2017-11-24 21:06:18', 'C');
INSERT INTO `Operaciones` VALUES (50512, 28884237, 'QUINTANA', 'Marcos Antonio', 'aaa@aaa.com', '2017-11-24 21:14:32', '2017-11-30 00:00:00', 10738032, 'LEILA', 'ANTONIA DEL VALLE', '155627184', 'aaa@aaa.com', 'VISA', 400.00, 380.00, 2, 478.07, 239.04, 6868, 4792, '2017-11-24 21:14:32', 'C');
INSERT INTO `Operaciones` VALUES (50513, 30597908, 'FUENSALIDA', 'Luis Ricardo', 'fuensalidaluis@gmail.com', '2017-11-24 21:31:01', '2017-11-30 00:00:00', 33755523, 'ruiz', 'rita giselle', '0381156392121', '', 'VISA', 220.00, 209.00, 2, 262.94, 131.47, 4545, 1, '2017-11-24 21:31:01', 'C');
INSERT INTO `Operaciones` VALUES (50514, 38115851, 'ANDRADE', 'Maico Hugo', 'andrademaico794@gmail.com', '2017-11-25 11:39:07', '2017-11-30 00:00:00', 37915372, 'LEAL', 'ANAHI MARIA', '155494978', 'anahileal_15@hotmail.com', 'VISA', 650.00, 617.50, 2, 776.86, 388.43, 6353, 8021, '2017-11-25 11:39:07', 'C');
INSERT INTO `Operaciones` VALUES (50515, 38115851, 'ANDRADE', 'Maico Hugo', 'andrademaico794@gmail.com', '2017-11-25 11:41:07', '2017-11-30 00:00:00', 37915372, 'LEAL', 'ANAHI MARIA', '155494978', 'anahileal_15@hotmail.com', 'VISA', 650.00, 617.50, 2, 776.86, 388.43, 6353, 8021, '2017-11-25 11:41:07', 'C');
INSERT INTO `Operaciones` VALUES (50516, 24617728, 'OLIVERO', 'Amelia Esther', 'alejaureguina@hotmail.com', '2017-11-25 11:46:03', '2017-11-30 00:00:00', 25380712, 'LOBO', 'ANA', '155211232', 'alejaureguina@hotmail.com', 'VISA', 400.00, 380.00, 1, 400.00, 0.00, 218014, 6, '2017-11-25 11:46:03', 'D');
INSERT INTO `Operaciones` VALUES (50517, 26782634, 'LEPEN', 'Vanesa', 'vanelepen@hotmail.com', '2017-11-25 12:21:21', '2017-11-30 00:00:00', 18383978, 'BASCARY', 'MARIA CRISTINA', '155044286', 'crisbascary@hotmail.com', 'VISA', 450.00, 427.50, 3, 549.20, 183.07, 8364, 8652, '2017-11-25 12:21:21', 'C');
INSERT INTO `Operaciones` VALUES (50518, 29060533, 'MOHAMED', 'Amanda Antonia', 'aamandamohamed2012@gmail.com', '2017-11-25 12:31:44', '2017-11-30 00:00:00', 24813028, 'CANCHI', 'CRISTINA', '3816439415', 'CCCANCHI@HOTMAIL.COM', 'VISA', 3400.00, 3230.00, 6, 4417.23, 736.21, 8401, 8788, '2017-11-25 12:31:44', 'C');
INSERT INTO `Operaciones` VALUES (50519, 25741072, 'RODRIGUEZ', 'Roberto Orlando', 'op@clubhonorios.com', '2017-11-25 12:45:26', '2017-11-30 00:00:00', 27017267, 'GRECO', 'ADRIANA PAULINA', '153328379', 'op@clubhonorios.com', 'VISA', 205.00, 194.75, 2, 245.01, 122.51, 6439, 8930, '2017-11-25 12:45:26', 'C');
INSERT INTO `Operaciones` VALUES (50520, 24617728, 'OLIVERO', 'Amelia Esther', 'alejaureguina@hotmail.com', '2017-11-25 12:47:47', '2017-11-30 00:00:00', 21028859, 'DECIMA', 'PATRICIA', '156778177', 'alejaureguina@hotmail.com', 'VISA', 700.00, 665.00, 1, 700.00, 0.00, 221283, 7, '2017-11-25 12:47:47', 'D');
INSERT INTO `Operaciones` VALUES (50521, 38115851, 'ANDRADE', 'Maico Hugo', 'andrademaico794@gmail.com', '2017-11-25 13:04:32', '2017-11-30 00:00:00', 34867994, 'TIZON', 'MARIA VIRGINIA', '3815395668', 'mvir.tizon@outlook.com', 'VISA', 1850.00, 1757.50, 3, 2257.80, 752.60, 569327, 9117, '2017-11-25 13:04:32', 'C');
INSERT INTO `Operaciones` VALUES (50522, 25843612, 'SUAREZ', 'Sergio Javier', 'sergiosuarez10@gmail.com', '2017-11-25 13:24:22', '2017-11-30 00:00:00', 20580443, 'VILDOZA', 'MONICA ADRIANA', '155406875', 'monivildoza@gmail.com', 'MASTER', 2670.00, 2536.50, 6, 3468.83, 578.14, 630891, 0, '2017-11-25 13:24:22', 'C');
INSERT INTO `Operaciones` VALUES (50523, 29640381, 'GARCIA ROQUE', 'Carolina', 'angelesdekro@hotmail.com', '2017-11-25 13:36:46', '2017-11-30 00:00:00', 25923048, 'RODRIGUEZ', 'FATIMA GABRIELA', '3814156918', 'angelesdekro@hotmail.com', 'VISA', 579.00, 550.05, 3, 706.63, 235.54, 6757, 9348, '2017-11-25 13:36:46', 'C');
INSERT INTO `Operaciones` VALUES (50524, 22387989, 'ABREGU', 'Juan Sergio', 'sergioabreguj@gmail.com', '2017-11-25 15:16:53', '2017-11-30 00:00:00', 32249375, 'Cruz', 'Natalia', '', '', 'VISA', 1160.00, 1102.00, 3, 1415.70, 471.90, 11686, 9943, '2017-11-25 15:16:53', 'C');
INSERT INTO `Operaciones` VALUES (50525, 31053217, 'VEGA HERRERA', 'Maria Jose', 'mariajosevegaherrera@hotmail.com', '2017-11-25 15:29:26', '2017-11-30 00:00:00', 28222351, 'Gordillo', 'Gilda Lorena', '3815365723', 'chuecagordillo@hotmail.com', 'VISA', 950.00, 902.50, 2, 1135.41, 567.71, 471065, 11, '2017-11-25 15:29:26', 'C');
INSERT INTO `Operaciones` VALUES (50526, 32341261, 'BRUSCHI', 'Mario Alberto', 'mabbruschi@gmail.com', '2017-11-25 16:20:00', '2017-11-30 00:00:00', 32164180, 'GONZALEZ', 'JOSE LUIS', '381156041632', 'laurisso@hotmail.com', 'VISA', 2100.00, 1995.00, 12, 3166.62, 263.89, 7178, 281, '2017-11-25 16:20:00', 'C');
INSERT INTO `Operaciones` VALUES (50527, 29836129, 'FAUO', 'Walter Fabian', 'aaa@aaa.com', '2017-11-25 16:23:50', '2017-11-30 00:00:00', 14084801, 'carrizo', 'liliana', '381155190686', 'aaa@aaa', 'VISA', 9135.00, 8678.25, 12, 13774.80, 1147.90, 6684, 302, '2017-11-25 16:23:50', 'C');
INSERT INTO `Operaciones` VALUES (50528, 23749118, 'ROMANO', 'Alicia Susana ', 'pcclubtucuman@hotmail.com', '2017-11-25 18:02:01', '2017-11-30 00:00:00', 40237216, 'DIMENZA', 'MARIA JOSE', '3865448801', 'majodimenza97@gmail.com', 'MASTER', 448.00, 425.60, 2, 535.44, 267.72, 693796, 0, '2017-11-25 18:02:01', 'C');
INSERT INTO `Operaciones` VALUES (50529, 25318614, 'MAI', 'Cristian Sebastian', 'cristianmai40@gmail.com', '2017-11-25 19:57:40', '2017-11-30 00:00:00', 27730740, 'REYES', 'MERCEDES', '3816588240', 'mercedesdelvalle276@gmail.com.ar', 'VISA', 2544.00, 2416.80, 6, 3305.13, 550.86, 496342, 1401, '2017-11-25 19:57:40', 'C');
INSERT INTO `Operaciones` VALUES (50530, 27370086, 'GOYTIA', 'Claudia Beatriz', 'claudiagoytiaindumentaria@gmail.com', '2017-11-25 20:09:24', '2017-11-30 00:00:00', 25009038, 'jerez', 'liliana', '3814486465', 'claudiagoytiaindumentaria@gmail.com', 'VISA', 1370.00, 1301.50, 6, 1779.88, 296.65, 8181, 1493, '2017-11-25 20:09:24', 'C');
INSERT INTO `Operaciones` VALUES (50531, 18203556, 'BALZARETTI', 'Claudio', 'balzaretticlaudio@hotmail.com', '2017-11-26 14:29:21', '2017-11-30 00:00:00', 24098249, 'GANATIOS', 'Walter Ruben', '0386515612059', 'balzaretticlaudio@hotmail.com', 'VISA', 500.00, 475.00, 1, 500.00, 0.00, 752425, 3, '2017-11-27 21:02:21', 'D');
INSERT INTO `Operaciones` VALUES (50532, 18203556, 'BALZARETTI', 'Claudio', 'balzaretticlaudio@hotmail.com', '2017-11-26 14:51:00', '2017-11-30 00:00:00', 22556080, 'Garbushian', 'Ana Patricia', '', '', 'VISA', 579.84, 550.84, 2, 693.00, 346.50, 6470, 4, '2017-11-27 20:35:35', 'C');
INSERT INTO `Operaciones` VALUES (50533, 17268293, 'GUZMAN', 'Magdalena del Valle', 'magdalenaguzman@hotmail.com', '2017-11-27 09:23:22', '2017-11-30 00:00:00', 27963922, 'ABREGU', 'Amanda Liliana', '0381156977106', '', 'VISA', 1056.00, 1003.20, 3, 1288.78, 429.59, 6408, 8421, '2017-11-27 09:23:22', 'C');
INSERT INTO `Operaciones` VALUES (50534, 25741072, 'RODRIGUEZ', 'Roberto Orlando', 'op@clubhonorios.com', '2017-11-27 10:14:11', '2017-11-30 00:00:00', 12288900, 'SANCHEZ', 'Hoba del Carmen', '4374072', '', 'VISA', 300.00, 285.00, 3, 366.13, 122.04, 7436, 9489, '2017-11-27 10:14:11', 'C');
INSERT INTO `Operaciones` VALUES (50535, 35521870, 'FARIAS', 'Yanina', 'johana123.456@hotmail.com', '2017-11-27 10:51:44', '2017-11-30 00:00:00', 35809466, 'ALBARRACIN', 'DANIEL', '3813538031', 'johana123.456@hotmail.com', 'VISA', 5300.00, 5035.00, 1, 5300.00, 0.00, 276905, 23, '2017-11-27 10:51:44', 'D');
INSERT INTO `Operaciones` VALUES (50536, 35521870, 'FARIAS', 'Yanina', 'johana123.456@hotmail.com', '2017-11-27 10:54:16', '2017-11-30 00:00:00', 31911843, 'LUNA', 'JUAN REINALDO', '3816583260', 'johana123.456@hotmail.com', 'VISA', 1200.00, 1140.00, 1, 1200.00, 0.00, 971972, 22, '2017-11-27 10:54:16', 'D');
INSERT INTO `Operaciones` VALUES (50537, 17752369, 'ALVAREZ', 'Monica Mabel', 'mabelmamani369@gmail.com', '2017-11-27 11:41:26', '2017-11-30 00:00:00', 25923048, 'Rodriguez', 'Fatima Gabriela', '154156918', '', 'VISA', 480.00, 456.00, 2, 573.68, 286.84, 40011, 2192, '2017-11-27 11:41:26', 'C');
INSERT INTO `Operaciones` VALUES (50538, 17040718, 'NAON', 'Victor Fabian ', 'naon65@gmail.com', '2017-11-27 12:15:09', '2017-11-30 00:00:00', 16540766, 'MEDINA', 'Mercedes', '154192012', '', 'VISA', 1060.00, 1007.00, 3, 1293.66, 431.22, 8189, 2793, '2017-11-27 12:15:09', 'C');
INSERT INTO `Operaciones` VALUES (50539, 36668537, 'DIAZ', 'Diego Franco Javier', 'diegofjdiaz284@gmail.com', '2017-11-27 12:54:54', '2017-11-30 00:00:00', 36701020, 'BUSTOS', 'Nahuel Nicolas', '0386515392318', '', 'VISA', 2400.00, 2280.00, 3, 2929.04, 976.35, 6677, 3799, '2017-11-27 12:54:54', 'C');
INSERT INTO `Operaciones` VALUES (50540, 22612803, 'AGÜERO', 'Ariel Fernando', 'sandraveronicavelardez23@gmail.com', '2017-11-27 13:02:51', '2017-11-30 00:00:00', 26684414, 'HERRERO', 'Hector Horacio', '156539627', '', 'VISA', 1070.00, 1016.50, 3, 1305.86, 435.29, 610549, 3956, '2017-11-27 13:02:51', 'C');
INSERT INTO `Operaciones` VALUES (50541, 36231458, 'PEREYRA', 'Ricardo David', 'david345.samaritano@gmail.com', '2017-11-27 17:45:59', '2017-11-30 00:00:00', 6261368, 'PEREZ', 'Mercedes Ines', '0381153039121', 'david345.samaritano@gmail.com', 'VISA', 12880.00, 12236.00, 12, 19421.94, 1618.50, 6853, 8738, '2017-11-27 17:45:59', 'C');
INSERT INTO `Operaciones` VALUES (50542, 22612803, 'AGÜERO', 'Ariel Fernando', 'sandraveronicavelardez23@gmail.com', '2017-11-27 18:00:37', '2017-11-30 00:00:00', 30117004, 'CASTRO', 'AUGUSTO', '3813190992', 'castromartin992@gmail.com', 'VISA', 1070.00, 1016.50, 3, 1305.86, 435.29, 75448, 197, '2017-11-27 18:00:37', 'C');
INSERT INTO `Operaciones` VALUES (50543, 36231458, 'PEREYRA', 'Ricardo David', 'david345.samaritano@gmail.com', '2017-11-27 18:04:16', '2017-11-30 00:00:00', 26454263, 'ARQUEZ', 'Julio cesar', '0381153039121', 'david345.samaritano@gmail.com', 'VISA', 5250.00, 4987.50, 12, 7916.55, 659.71, 7038, 9107, '2017-11-27 18:04:16', 'C');
INSERT INTO `Operaciones` VALUES (50544, 22612803, 'AGÜERO', 'Ariel Fernando', 'sandraveronicavelardez23@gmail.com', '2017-11-27 18:06:13', '2017-11-30 00:00:00', 27210314, 'ARGAÑARAZ', 'DIEGO SEBASTIAN', '3815945319', 'arganarazfochi@yahoo.com.ar', 'VISA', 3160.00, 3002.00, 6, 4105.43, 684.24, 8035, 9139, '2017-11-27 18:06:13', 'C');
INSERT INTO `Operaciones` VALUES (50545, 25844025, 'PALOMO', 'Ana Carolina', 'anacarolinapalomo@gmail.com', '2017-11-27 18:23:13', '2017-11-30 00:00:00', 33755082, 'LEIVA', 'MARIA LAURA', '156049319', 'marialaura.leiva88@gmail.com', 'VISA', 2000.00, 1900.00, 6, 2598.37, 433.06, 7061, 9412, '2017-11-27 18:23:13', 'C');
INSERT INTO `Operaciones` VALUES (50546, 22222222, 'CLIENTE', 'Provisorio', 'op@clubhonorarios.com', '2017-11-27 20:20:26', '2017-11-30 00:00:00', 26782253, 'JIMENEZ', 'OLGA BEATRIZ', '154898684', 'op@clubhonorarios.com', 'MASTER', 2178.00, 2069.10, 6, 2829.63, 471.61, 614451, 0, '2017-11-27 20:20:26', 'C');
INSERT INTO `Operaciones` VALUES (50547, 30068297, 'MARTINEZ', 'Viviana Elizabeth', 'viviana_martinez00@hotmail.com', '2017-11-28 11:16:35', '2017-12-01 00:00:00', 25272890, 'valdez', 'natalia', '381155277442', 'viviana_martinez00@hotmail.com', 'VISA', 350.00, 332.50, 2, 418.31, 209.16, 682594, 6741, '2017-11-28 11:16:35', 'C');
INSERT INTO `Operaciones` VALUES (50548, 26446363, 'RIBO MURUAGA ', 'Natalia', 'natyribo@hotmail.com', '2017-11-28 11:52:24', '2017-12-01 00:00:00', 10013319, 'Pucci', 'Clara Rosario', '0381155225340', '', 'VISA', 3100.00, 2945.00, 6, 4027.48, 671.25, 6658, 7552, '2017-11-28 11:52:24', 'C');
INSERT INTO `Operaciones` VALUES (50549, 36584371, 'CASTILLO', 'Gustavo German', 'castillogustavo3442@gmail.com', '2017-11-28 12:16:36', '2017-12-01 00:00:00', 26982313, 'TOLABA DELGADO', 'SEBASTIAN HERNAN', '154021396', 'seba_24td@hotmail.com', 'VISA', 1500.00, 1425.00, 6, 1948.78, 324.80, 8584, 8121, '2017-11-28 12:16:36', 'C');
INSERT INTO `Operaciones` VALUES (50550, 26445638, 'COLOMBRES GARMENDIA', 'Francisco', 'franciscocolombresgarmendia@gmail.com', '2017-11-28 13:18:29', '2017-12-01 00:00:00', 33756471, 'RUIZ ORELLANA', 'Jose Alberto', '156436521', 'ruizorellanajose@outlook.com', 'VISA', 2310.00, 2194.50, 3, 2819.20, 939.73, 547425, 198, '2017-11-28 13:18:29', 'C');
INSERT INTO `Operaciones` VALUES (50551, 26445638, 'COLOMBRES GARMENDIA', 'Francisco', 'franciscocolombresgarmendia@gmail.com', '2017-11-28 13:50:47', '2017-12-01 00:00:00', 34764232, 'NIEVA ORELLANA', 'Pablo Andres', '154191132', 'pandresnieva@gmail.com', 'VISA', 2316.00, 2200.20, 3, 2826.53, 942.18, 6976, 199, '2017-11-28 13:50:47', 'C');
INSERT INTO `Operaciones` VALUES (50552, 30712465650, 'YUBRIN', 'Carlos', 'jorgelinanicastro@estudioyubrin.com.ar', '2017-11-28 17:53:40', '2017-12-01 00:00:00', 29446159, 'SILVA', 'Alexia Raquel', '0381156574436', 'jorgelinanicastro@estudioyubrin.com.ar', 'VISA', 2835.00, 2693.25, 5, 3607.35, 721.47, 7919, 4084, '2017-11-28 17:53:40', 'C');
INSERT INTO `Operaciones` VALUES (50553, 38115851, 'ANDRADE', 'Maico Hugo', 'andrademaico794@gmail.com', '2017-11-28 19:15:08', '2017-12-01 00:00:00', 35485265, 'SANTILLAN', 'ROCIO', '3815443838', 'rocio-5588@hotmail.com', 'VISA', 650.00, 617.50, 2, 776.86, 388.43, 772372, 4656, '2017-11-28 19:15:08', 'C');
INSERT INTO `Operaciones` VALUES (50554, 25502069, 'FUNES', 'Ivonne Lorena', 'lorena_moria@hotmail.com', '2017-11-28 19:25:06', '2017-12-01 00:00:00', 25844658, 'BICK', 'MARIA SOLEDAD', '156259971', 'mariasoledadbick@hotmail.com', 'MASTER', 1000.00, 950.00, 6, 1299.19, 216.53, 674993, 0, '2017-11-28 19:25:06', 'C');
INSERT INTO `Operaciones` VALUES (50555, 22612803, 'AGÜERO', 'Ariel Fernando', 'sandraveronicavelardez23@gmail.com', '2017-11-28 19:47:27', '2017-12-01 00:00:00', 32416625, 'ARGAÑARAZ AGUIRRE', 'LEANDRO DANIEL', '3815794745', 'leadaniel86@gmail.com', 'VISA', 3160.00, 3002.00, 6, 4105.43, 684.24, 558699, 5937, '2017-11-28 19:47:27', 'C');
INSERT INTO `Operaciones` VALUES (50556, 30597908, 'FUENSALIDA', 'Luis Ricardo', 'fuensalidaluis@gmail.com', '2017-11-28 19:55:30', '2017-12-01 00:00:00', 24068177, 'HERNANDEZ', 'MONICA', '3813329447', 'monicamariana.h@gmail.com', 'VISA', 1100.00, 1045.00, 4, 1370.80, 342.70, 6878, 6042, '2017-11-28 19:55:30', 'C');
INSERT INTO `Operaciones` VALUES (50557, 25922441, 'CASEY', 'Elina', 'elinacasey@hotmail.com', '2017-11-28 19:57:23', '2017-12-01 00:00:00', 16691781, 'CANSECO', 'Sylvia Ines', '0381155059829', 'sylviainescanseco@hotmail.com', 'VISA', 11800.00, 11210.00, 12, 17793.40, 1482.78, 7022, 6077, '2017-11-28 19:57:23', 'C');
INSERT INTO `Operaciones` VALUES (50558, 25922441, 'CASEY', 'Elina', 'elinacasey@hotmail.com', '2017-11-28 20:20:04', '2017-12-01 00:00:00', 16691781, 'CANSECO', 'Sylvia Ines', '0381155059829', 'sylviainescanseco@hotmail.com', 'VISA', 4150.00, 3942.50, 12, 6257.85, 521.49, 599450, 6297, '2017-11-28 20:20:04', 'C');
INSERT INTO `Operaciones` VALUES (50559, 27962200, 'MANSILLA', 'Diego Julian', 'diegomansilla678@hotmail.com', '2017-11-28 20:46:57', '2017-12-04 00:00:00', 14820730, 'NUÑEZ', 'ANGEL VICENTE', '153477493', 'diegomansilla678@hotmail.com', 'VISA', 1650.00, 1567.50, 3, 2013.72, 671.24, 11869, 6596, '2017-11-28 20:46:57', 'C');
INSERT INTO `Operaciones` VALUES (50560, 28222969, 'VITORGAN', 'Eliana Celeste', 'modapertuttitalles@gmail.com', '2017-11-28 20:50:49', '2017-12-04 00:00:00', 5148975, 'TULA', 'DELIA', '153016960', 'modapertuttitalles@gmail.com', 'MASTER', 2175.00, 2066.25, 1, 2175.00, 0.00, 2, 0, '2017-11-28 20:50:49', 'D');
INSERT INTO `Operaciones` VALUES (50561, 35521870, 'FARIAS', 'Yanina', 'johana123.456@hotmail.com', '2017-11-28 20:57:36', '2017-12-04 00:00:00', 34138921, 'PEDRO', 'JUAN LISANDRO', '3815837325', 'johana123.456@hotmail.com', 'VISA', 1800.00, 1710.00, 6, 2338.53, 389.76, 865788, 37, '2017-11-28 20:57:36', 'C');
INSERT INTO `Operaciones` VALUES (50562, 23930165, 'GONZALES', 'Victor Heraldo', 'victorheraldogonzales@yahoo.com.ar', '2017-11-28 21:28:52', '2017-12-04 00:00:00', 34295305, 'MANINO', 'NATALIA', '3815230951', 'victorheraldogonzales@yahoo.com.ar', 'VISA', 836.70, 794.87, 2, 1000.00, 500.00, 7006, 12, '2017-11-28 21:28:52', 'C');
INSERT INTO `Operaciones` VALUES (50563, 38247053, 'PRADO', 'Exequiel José Manuel', 'fundacionparticipando@gmail.com', '2017-11-29 09:58:50', '2017-12-04 00:00:00', 32858075, 'JIMENEZ', 'Luciana Etelvina', '3815677845', 'luetelvina@gmail.com', 'MASTER', 4210.80, 4000.26, 6, 5470.61, 911.77, 645957, 0, '2017-11-29 09:58:50', 'C');
INSERT INTO `Operaciones` VALUES (50564, 14661176, 'ANDRADA', 'Luis Humberto', 'acsetec@hotmail.com', '2017-11-29 10:48:21', '2017-12-04 00:00:00', 33703721, 'DIAZ', 'Eliana Vanesa', '154472732', '', 'VISA', 900.00, 855.00, 2, 1075.65, 537.83, 8633, 654, '2017-11-29 10:48:21', 'C');
INSERT INTO `Operaciones` VALUES (50565, 36668537, 'DIAZ', 'Diego Franco Javier', 'diegofjdiaz284@gmail.com', '2017-11-29 13:45:29', '2017-12-04 00:00:00', 37188578, 'SALAS', 'Estella Belen', '3815261955', '', 'VISA', 2300.00, 2185.00, 6, 2988.13, 498.02, 7560, 3910, '2017-11-29 13:45:29', 'C');
INSERT INTO `Operaciones` VALUES (50566, 25843612, 'SUAREZ', 'Sergio Javier', 'sergiosuarez10@gmail.com', '2017-11-29 15:31:52', '2017-12-04 00:00:00', 23517831, 'CAMPERO', 'Olga Elizabeth', '153546488', '', 'VISA', 5940.00, 5643.00, 12, 8957.01, 746.42, 781631, 5459, '2017-11-29 15:31:52', 'C');
INSERT INTO `Operaciones` VALUES (50567, 29640381, 'GARCIA ROQUE', 'Carolina', 'angelesdekro@hotmail.com', '2017-11-29 15:57:59', '2017-12-04 00:00:00', 12469724, 'BURGOS', 'ANTONIA', '3815871937', '', 'VISA', 947.50, 900.13, 3, 1156.36, 385.45, 551528, 6010, '2017-11-29 15:57:59', 'C');
INSERT INTO `Operaciones` VALUES (50568, 31053217, 'VEGA HERRERA', 'Maria Jose', 'mariajosevegaherrera@hotmail.com', '2017-11-29 18:04:53', '2017-12-04 00:00:00', 28742149, 'SORIA', 'MARIA FLAVIANA', '153007053', 'mariajosevegaherrera@hotmail.com', 'VISA', 860.00, 817.00, 6, 1117.30, 186.22, 6786, 4, '2017-11-29 18:04:53', 'C');
INSERT INTO `Operaciones` VALUES (50569, 27364682, 'RODRIGUEZ', 'Marcela Noelia ', 'noeliarodriguez707@gmail.com', '2017-11-29 18:33:39', '2017-12-04 00:00:00', 10791534, 'AVELLANEDA', 'JULIA DEL VALLE', '156316784', 'ceciliaromero381@hotmail.com', 'VISA', 3140.00, 2983.00, 6, 4079.44, 679.91, 8026, 8574, '2017-11-29 18:33:39', 'C');
INSERT INTO `Operaciones` VALUES (50570, 32341261, 'BRUSCHI', 'Mario Alberto', 'mabbruschi@gmail.com', '2017-11-29 18:45:09', '2017-12-04 00:00:00', 28617823, 'DELGADO', 'ROSALIA', '3814563800', 'rosaliadelgado086@hotmail.com', 'VISA', 835.00, 793.25, 3, 1019.06, 339.69, 7642, 8812, '2017-11-29 18:45:09', 'C');
INSERT INTO `Operaciones` VALUES (50571, 25843612, 'SUAREZ', 'Sergio Javier', 'sergiosuarez10@gmail.com', '2017-11-29 18:52:17', '2017-12-04 00:00:00', 36584432, 'BAZAN', 'JOHANA ', '153300034', 'johanasbazan@gmail.com', 'VISA', 1360.00, 1292.00, 6, 1766.89, 294.48, 7273, 8904, '2017-11-29 18:52:17', 'C');
INSERT INTO `Operaciones` VALUES (50572, 27650867, 'GUTIERREZ', 'Romina Alejandra', 'gutierrez2013@gmail.com', '2017-11-29 18:56:15', '2017-12-04 00:00:00', 17376072, 'QUIROGA', 'Marcela Beatriz', '0381154561261', 'marceq64@hotmail.com', 'VISA', 1725.00, 1638.75, 3, 2105.25, 701.75, 9663, 8970, '2017-11-29 18:56:15', 'C');
INSERT INTO `Operaciones` VALUES (50573, 27650867, 'GUTIERREZ', 'Romina Alejandra', 'gutierrez2013@gmail.com', '2017-11-29 19:04:12', '2017-12-04 00:00:00', 27400335, 'HIDALGO', 'NANCY ISABEL', '4348502', 'gutierrez2013@gmail.com', 'VISA', 1200.00, 1140.00, 4, 1495.42, 373.86, 8108, 9076, '2017-11-29 19:04:12', 'C');
INSERT INTO `Operaciones` VALUES (50574, 29430088, 'MONTI', 'Gonzalo Dario', 'gonzalom1313@gmail.com', '2017-11-29 20:07:06', '2017-12-04 00:00:00', 27189940, 'CORIA', 'RAMON ERNESTO', '03876642301', 'gonzalom1313@gmail.com', 'VISA', 704.00, 668.80, 3, 859.19, 286.40, 9103, 9724, '2017-11-29 20:07:06', 'C');
INSERT INTO `Operaciones` VALUES (50575, 31052970, 'PAZ', 'Claudia Elizabeth', 'aaa@aaa.com', '2017-11-29 20:18:11', '2017-12-04 00:00:00', 21894189, 'MEJIAS', 'MARIA EUGENIA', '154490482', 'marieugeniamejias1970@gmail.com', 'VISA', 187.00, 177.65, 2, 223.50, 111.75, 8093, 9817, '2017-11-29 20:18:11', 'C');
INSERT INTO `Operaciones` VALUES (50576, 38244869, 'LEDESMA', 'Jose Augusto', 'jr_motorepuestos@hotmail.com.ar', '2017-11-29 20:31:23', '2017-12-05 00:00:00', 38119422, 'BULACIO', 'BRAIAN', '154908566', 'braian-bulacio_1994@outlook.es', 'VISA', 3500.00, 3325.00, 2, 4183.09, 2091.55, 7893, 9971, '2017-11-29 20:31:23', 'C');
INSERT INTO `Operaciones` VALUES (50577, 35521870, 'FARIAS', 'Yanina', 'johana123.456@hotmail.com', '2017-11-29 20:38:28', '2017-12-05 00:00:00', 23238763, 'CHEUAN', 'FRANCISCO', '154427781', 'johana123.456@hotmail.com', 'VISA', 1300.00, 1235.00, 6, 1688.94, 281.49, 6986, 38, '2017-11-29 20:38:28', 'C');
INSERT INTO `Operaciones` VALUES (50578, 36224331, 'GANIM', 'Rocio Celina', 'rocioganim@gmail.com', '2017-11-29 20:53:26', '2017-12-05 00:00:00', 34286672, 'TOLEDO', 'ULISES', '3815710752', 'rocioganim@gmail.com', 'VISA', 1000.00, 950.00, 3, 1220.43, 406.81, 978289, 230, '2017-11-29 20:53:26', 'C');
INSERT INTO `Operaciones` VALUES (50579, 38115851, 'ANDRADE', 'Maico Hugo', 'andrademaico794@gmail.com', '2017-11-29 21:05:49', '2017-12-05 00:00:00', 32366933, 'CARRIZO', 'NOELIA ROMINA', '154643978', 'solmiabellas@gmail.com', 'VISA', 1100.00, 1045.00, 3, 1342.48, 447.49, 7710, 353, '2017-11-29 21:05:49', 'C');
INSERT INTO `Operaciones` VALUES (50580, 33756660, 'NUÑES', 'Elena Luisa de Fatima ', 'elena_nunes_2008@yahoo.com.ar', '2017-11-29 21:33:50', '2017-12-05 00:00:00', 35808611, 'NUÑEZ', 'Noemi Elizabeth', '0381155174126', 'elena_nunes_2008@yahoo.com.ar', 'VISA', 1590.00, 1510.50, 6, 2065.71, 344.29, 7344, 563, '2017-11-29 21:33:50', 'C');
INSERT INTO `Operaciones` VALUES (50581, 26445638, 'COLOMBRES GARMENDIA', 'Francisco', 'franciscocolombresgarmendia@gmail.com', '2017-11-30 10:31:59', '2017-12-05 00:00:00', 13279867, 'BULACIO', 'Raul Eduardo', '154988955', 'raul_bolacio@yahoo.com.ar', 'MASTER', 4632.00, 4400.40, 12, 6945.07, 578.76, 629311, 0, '2017-11-30 10:31:59', 'C');
INSERT INTO `Operaciones` VALUES (50582, 32134226, 'LUCENA', 'Gonzalo', 'recorcholis_519@hotmail.com', '2017-11-30 11:34:32', '2017-12-05 00:00:00', 38185372, 'Tames', 'Fabricio enzo', '3814015177', 'enzitotames@gmail.com', 'VISA', 2000.00, 1900.00, 2, 2390.34, 1195.17, 9818, 5916, '2017-11-30 11:34:32', 'C');
INSERT INTO `Operaciones` VALUES (50583, 24617728, 'OLIVERO', 'Amelia Esther', 'alejaureguina@hotmail.com', '2017-11-30 12:24:25', '2017-12-05 00:00:00', 13475473, 'RIVADENEIRA', 'Patricia', '154675884', '', 'MASTER', 393.30, 373.64, 3, 480.00, 160.00, 620107, 0, '2017-11-30 12:24:25', 'C');
INSERT INTO `Operaciones` VALUES (50584, 29836129, 'FAUO', 'Walter Fabian', 'aaa@aaa.com', '2017-11-30 13:34:53', '2017-12-05 00:00:00', 38509806, 'DURAN', 'FRANCISCO ANTONIO', '156342023', '', 'VISA', 2069.00, 1965.55, 12, 3119.88, 259.99, 7793, 8197, '2017-11-30 13:34:53', 'C');
INSERT INTO `Operaciones` VALUES (50585, 29836129, 'FAUO', 'Walter Fabian', 'aaa@aaa.com', '2017-11-30 14:07:25', '2017-12-05 00:00:00', 38509806, 'DURAN', 'Francisco Antonio', '0381156342023', 'op@clubhonorarios.com', 'VISA', 6150.00, 5842.50, 12, 9273.68, 772.81, 804403, 8129, '2017-11-30 14:07:25', 'C');
INSERT INTO `Operaciones` VALUES (50586, 23930165, 'GONZALEZ', 'Victor Heraldo', 'victorheraldogonzales@yahoo.com.ar', '2017-11-30 15:31:21', '2017-12-05 00:00:00', 31857390, 'LUCERO', 'Hugo Daniel', '3813376949', '', 'VISA', 288.66, 274.23, 2, 345.00, 172.50, 19665, 14, '2017-11-30 15:31:21', 'C');
INSERT INTO `Operaciones` VALUES (50587, 38247053, 'PRADO', 'Exequiel José Manuel', 'fundacionparticipando@gmail.com', '2017-11-30 16:23:58', '2017-12-05 00:00:00', 29943575, 'HEREDIA', 'Maria Jose', '156256873', 'mariajoseheredia15@gmail.com', 'VISA', 5263.50, 5000.33, 6, 6838.26, 1139.71, 17330, 200, '2017-11-30 16:23:58', 'C');
INSERT INTO `Operaciones` VALUES (50588, 25318614, 'MAI', 'Cristian Sebastian', 'cristianmai40@gmail.com', '2017-11-30 16:33:43', '2017-12-05 00:00:00', 37927757, 'SANCHEZ', 'Matias Emmanuel', '3816206053', '', 'VISA', 1900.00, 1805.00, 3, 2318.83, 772.94, 859171, 1339, '2017-11-30 16:33:43', 'C');
INSERT INTO `Operaciones` VALUES (50589, 26445638, 'COLOMBRES GARMENDIA', 'Francisco', 'franciscocolombresgarmendia@gmail.com', '2017-11-30 17:59:35', '2017-12-05 00:00:00', 23931798, 'MASCARO', 'Victor Daniel', '3814124749', 'vicmascaro@gmail.com', 'VISA', 2316.00, 2200.20, 6, 3008.91, 501.48, 701060, 201, '2017-11-30 17:59:35', 'C');
INSERT INTO `Operaciones` VALUES (50590, 21335137, 'JIMENEZ', 'Silvia Viviana', 'licvivianajimenez@gmail.com', '2017-11-30 18:22:12', '2017-12-05 00:00:00', 31001127, 'KOLTAN', 'BEATRIZ', '155617487', 'beakoltan@gmail.com', 'VISA', 1895.00, 1800.25, 6, 2461.96, 410.33, 6898, 3436, '2017-11-30 18:22:12', 'C');
INSERT INTO `Operaciones` VALUES (50591, 14488271, 'PEDRINI', 'Lucia Ester', 'luciaepedrini@gmail.com', '2017-11-30 18:26:39', '2017-12-05 00:00:00', 32459304, 'PAEZ', 'Eduardo Antonio', '0381155470440', 'ledu_24@hotmail.com', 'MASTER', 300.00, 285.00, 2, 358.55, 179.28, 691630, 0, '2017-11-30 18:26:39', 'C');
INSERT INTO `Operaciones` VALUES (50592, 35548734, 'POU', 'Carolina Veronica', 'carolinavpou@hotmail.com', '2017-11-30 19:04:58', '2017-12-05 00:00:00', 27731161, 'LEDESMA', 'VIVIANA', '3815496298', 'vivianaledesama1979@hotmail.com', 'VISA', 800.00, 760.00, 2, 956.14, 478.07, 7815, 4064, '2017-11-30 19:04:58', 'C');
INSERT INTO `Operaciones` VALUES (50593, 14023759, 'APAS', 'Ana Maria', 'aaa@aaa.com', '2017-11-30 19:17:49', '2017-12-05 00:00:00', 29745332, 'VILLALBA', 'CRISTINA', '156880264', 'aaa@aaa.com', 'VISA', 748.00, 710.60, 3, 912.88, 304.29, 11983, 4252, '2017-11-30 19:17:49', 'C');
INSERT INTO `Operaciones` VALUES (50594, 35521870, 'FARIAS', 'Yanina', 'johana123.456@hotmail.com', '2017-11-30 19:41:05', '2017-12-05 00:00:00', 17600370, 'MARTINEZ', 'LUIS', '3815230804', 'johana123.456@hotmail.com', 'VISA', 1800.00, 1710.00, 3, 2196.78, 732.26, 17358, 39, '2017-11-30 19:41:05', 'C');
INSERT INTO `Operaciones` VALUES (50595, 30399351, 'COPA', 'Matias Pedro Armando', 'matiascopa@hotmail.com', '2017-11-30 19:53:10', '2017-12-05 00:00:00', 24981922, 'REINOSO', 'LIDIA', '3815744943', 'matiascopa@hotmail.com', 'VISA', 11130.00, 10573.50, 6, 14459.94, 2409.99, 11754, 6, '2017-11-30 19:53:10', 'C');
INSERT INTO `Operaciones` VALUES (50596, 18404811, 'TORRES', 'Graciela Claudia', 'aaa@aaa.com', '2017-11-30 20:11:58', '2017-12-05 00:00:00', 22042384, 'GERK', 'MARIA ELENA', '3816718758', 'melenaherk@hotmail.com', 'VISA', 380.00, 361.00, 2, 454.16, 227.08, 15725, 5344, '2017-11-30 20:11:58', 'C');
INSERT INTO `Operaciones` VALUES (50597, 35521870, 'FARIAS', 'Yanina', 'johana123.456@hotmail.com', '2017-11-30 21:01:35', '2017-12-06 00:00:00', 20556349, 'SAHIAN', 'VICTOR DANIEL', '4858231', 'aaa@aaa.com', 'MASTER', 1200.00, 1140.00, 1, 1200.00, 0.00, 9, 0, '2017-11-30 21:01:35', 'D');
INSERT INTO `Operaciones` VALUES (50598, 39143788, 'JORRAT', 'Agustina', 'agustinajorrat@gmail.com', '2017-12-01 09:29:11', '2017-12-06 00:00:00', 39575843, 'CHRESTIA', 'Maria Ines', '3815944106', 'marinechrestia@hotmail.com', 'VISA', 500.00, 475.00, 1, 500.00, 0.00, 347435, 202, '2017-12-01 09:29:11', 'D');
INSERT INTO `Operaciones` VALUES (50599, 38364982, 'LOPEZ', 'Maira Micaela', 'micaelalopez.tec@gmail.com', '2017-12-01 10:26:40', '2017-12-06 00:00:00', 37310781, 'MAMANI', 'Silvia', '155072183', '', 'VISA', 290.00, 275.50, 3, 353.93, 117.98, 523010, 1689, '2017-12-01 10:26:40', 'C');
INSERT INTO `Operaciones` VALUES (50600, 16458365, 'PITA', 'Jorge Horacio', 'rajota2001@yahoo.com.ar', '2017-12-01 11:11:52', '2017-12-06 00:00:00', 8097136, 'argañaraz', 'cesar', '03813556762', 'rajota2001@yahoo.com.ar', 'MASTER', 2625.00, 2493.75, 2, 3137.32, 1568.66, 655010, 0, '2017-12-01 11:11:52', 'C');
INSERT INTO `Operaciones` VALUES (50601, 29430217, 'UTRERA', 'Juan Manuel ', 'juanmutrera@hotmail.com', '2017-12-01 11:13:56', '2017-12-06 00:00:00', 29818746, 'CASTRO FERNANDEZ', 'Angel Manuel', '03812023503', '', 'MASTER', 260.00, 247.00, 3, 317.31, 105.77, 657089, 0, '2017-12-01 11:13:56', 'C');
INSERT INTO `Operaciones` VALUES (50602, 25741072, 'RODRIGUEZ', 'Roberto Orlando', 'op@clubhonorios.com', '2017-12-01 13:56:37', '2017-12-06 00:00:00', 14226392, 'UNCOS', 'Victor hugo', '3816520063', '', 'VISA', 1650.00, 1567.50, 3, 2013.72, 671.24, 758661, 7376, '2017-12-01 13:56:37', 'C');
INSERT INTO `Operaciones` VALUES (50603, 35521870, 'FARIAS', 'Yanina', 'johana123.456@hotmail.com', '2017-12-01 17:46:57', '2017-12-06 00:00:00', 37927588, 'ALDERETE', 'FRANCO', '3813931806', 'johana123.456@hotmail.com', 'VISA', 2950.00, 2802.50, 3, 3600.28, 1200.09, 937695, 40, '2017-12-01 17:46:57', 'C');
INSERT INTO `Operaciones` VALUES (50604, 23930165, 'GONZALEZ', 'Victor Heraldo', 'victorheraldogonzales@yahoo.com.ar', '2017-12-01 18:32:28', '2017-12-06 00:00:00', 17041455, 'AGUERO', 'MABEL', '154688000', 'victorheraldogonzales@yahoo.com.ar', 'VISA', 2208.00, 2097.60, 3, 2694.72, 898.24, 8959, 16, '2017-12-01 18:32:28', 'C');
INSERT INTO `Operaciones` VALUES (50605, 32341261, 'BRUSCHI', 'Mario Alberto', 'mabbruschi@gmail.com', '2017-12-01 18:47:11', '2017-12-06 00:00:00', 33165645, 'GONZALEZ', 'MARCOS ANTONIO', '3863493245', 'mabbruschi@gmail.com', 'VISA', 1720.00, 1634.00, 6, 2234.60, 372.43, 39475, 3526, '2017-12-01 18:47:11', 'C');
INSERT INTO `Operaciones` VALUES (50606, 35521870, 'FARIAS', 'Yanina', 'johana123.456@hotmail.com', '2017-12-01 18:49:00', '2017-12-06 00:00:00', 22613238, 'GARCIA', 'Luis Alberto', '0381156415785', 'johana123.456@hotmail.com', 'MASTER', 1900.00, 1805.00, 6, 2468.45, 411.41, 624363, 0, '2017-12-01 18:49:00', 'C');
INSERT INTO `Operaciones` VALUES (50607, 32341261, 'BRUSCHI', 'Mario Alberto', 'mabbruschi@gmail.com', '2017-12-01 19:29:00', '2017-12-06 00:00:00', 30271149, 'ZELAYA', 'PABLO', '3813002518', 'pabloezelaya@live.com.ar', 'VISA', 945.00, 897.75, 3, 1153.31, 384.44, 785960, 4125, '2017-12-01 19:29:00', 'C');
INSERT INTO `Operaciones` VALUES (50608, 35548734, 'POU', 'Carolina Veronica', 'carolinavpou@hotmail.com', '2017-12-01 19:54:27', '2017-12-06 00:00:00', 38488327, 'JULIA', 'SOL', '3814022172', 'solcjs34@gmail.com', 'VISA', 250.00, 237.50, 2, 298.79, 149.40, 12202, 4476, '2017-12-01 19:54:27', 'C');
INSERT INTO `Operaciones` VALUES (50609, 25882800, 'AURORA', 'Daniel Horacio', 'tatianaulises@hotmail.com', '2017-12-01 20:04:32', '2017-12-06 00:00:00', 16973260, 'SORIA', 'MARIA VICTORIA', '3813597980', 'tatianaulises@hotmail.com', 'VISA', 2400.00, 2280.00, 6, 3118.05, 519.68, 8099, 4604, '2017-12-01 20:04:32', 'C');
INSERT INTO `Operaciones` VALUES (50610, 35521870, 'FARIAS', 'Yanina', 'johana123.456@hotmail.com', '2017-12-01 20:05:15', '2017-12-06 00:00:00', 30692362, 'SIFUENTES', 'JURI', '3814655298', 'johana123.456@hotmail.com', 'VISA', 4100.00, 3895.00, 6, 5326.66, 887.78, 8617, 41, '2017-12-01 20:05:15', 'C');
INSERT INTO `Operaciones` VALUES (50611, 22612803, 'AGÜERO', 'Ariel Fernando', 'sandraveronicavelardez23@gmail.com', '2017-12-01 20:36:50', '2017-12-07 00:00:00', 24553817, 'CASTILLO', 'CRISTIAN', '4369256 - 154787058', 'cristiancastle@hotmail.com', 'VISA', 3160.00, 3002.00, 6, 4105.43, 684.24, 7874, 4938, '2017-12-01 20:36:50', 'C');
INSERT INTO `Operaciones` VALUES (50612, 16458365, 'PITA', 'Jorge Horacio', 'rajota2001@yahoo.com.ar', '2017-12-02 11:59:13', '2017-12-07 00:00:00', 32602538, 'SALVATIERRA', 'DANIEL', '3814234497', 'rajota2001@yahoo.com.ar', 'VISA', 1800.00, 1710.00, 3, 2196.78, 732.26, 736836, 9511, '2017-12-02 11:59:13', 'C');
INSERT INTO `Operaciones` VALUES (50613, 29836129, 'FAUO', 'Walter Fabian', 'aaa@aaa.com', '2017-12-02 12:12:56', '2017-12-07 00:00:00', 37309314, 'PLAVECINO', 'HECTOR', '381153039191', 'AAA@AA.COM', 'VISA', 3465.00, 3291.75, 2, 4141.26, 2070.63, 974656, 9680, '2017-12-02 12:12:56', 'C');
INSERT INTO `Operaciones` VALUES (50614, 14488271, 'PEDRINI', 'Lucia Ester', 'luciaepedrini@gmail.com', '2017-12-02 12:19:07', '2017-12-07 00:00:00', 28965727, 'JURADO', 'GERARDO', '3816657531', 'danieljurado19@GMAIL.COM', 'VISA', 340.00, 323.00, 3, 414.95, 138.32, 14568, 9778, '2017-12-02 12:19:07', 'C');
INSERT INTO `Operaciones` VALUES (50615, 17268293, 'GUZMAN', 'Magdalena del Valle', 'magdalenaguzman@hotmail.com', '2017-12-02 12:25:38', '2017-12-07 00:00:00', 39077770, 'fernandez', 'karen', '3865620584', 'ks15645@gmail.com', 'VISA', 430.00, 408.50, 3, 524.79, 174.93, 7064, 9885, '2017-12-02 12:25:38', 'C');
INSERT INTO `Operaciones` VALUES (50616, 38115851, 'ANDRADE', 'Maico Hugo', 'andrademaico794@gmail.com', '2017-12-02 18:55:20', '2017-12-07 00:00:00', 33540313, 'TATTALARDO', 'MARIA PAULA', '3814761132', 'marialauratattalardo@gmail.com', 'VISA', 1250.00, 1187.50, 3, 1525.54, 508.51, 7044, 2594, '2017-12-02 18:55:20', 'C');
INSERT INTO `Operaciones` VALUES (50617, 30597908, 'FUENSALIDA', 'Luis Ricardo', 'fuensalidaluis@gmail.com', '2017-12-02 19:00:47', '2017-12-07 00:00:00', 11226964, 'ACUÑA', 'JOSEFINA INES', '155013477', '', 'VISA', 600.00, 570.00, 3, 732.26, 244.09, 8963, 2626, '2017-12-02 19:00:47', 'C');
INSERT INTO `Operaciones` VALUES (50618, 31053217, 'VEGA HERRERA', 'Maria Jose', 'mariajosevegaherrera@hotmail.com', '2017-12-02 19:02:59', '2017-12-07 00:00:00', 24843517, 'ALFARO', 'SANDRA ELIZA', '156819835', 'mariajosevegaherrera@hotmail.com', 'VISA', 450.00, 427.50, 1, 450.00, 0.00, 896951, 5, '2017-12-02 19:02:59', 'D');
INSERT INTO `Operaciones` VALUES (50619, 28222969, 'VITORGAN', 'Eliana Celeste', 'modapertuttitalles@gmail.com', '2017-12-02 19:14:15', '2017-12-07 00:00:00', 27804642, 'GONZALEZ', 'ELIANA DEL VALLE', '3815339618', 'modapertuttitalles@gmail.com', 'MASTER', 3500.00, 3325.00, 1, 3500.00, 0.00, 3, 0, '2017-12-02 19:14:15', 'D');
INSERT INTO `Operaciones` VALUES (50620, 38115851, 'ANDRADE', 'Maico Hugo', 'andrademaico794@gmail.com', '2017-12-02 19:45:50', '2017-12-07 00:00:00', 28476984, 'SANCHEZ', 'NATALIA', '4377044', 'nataliafatimamg@hotmail.com', 'VISA', 1400.00, 1330.00, 2, 1673.24, 836.62, 7364, 2933, '2017-12-02 19:45:50', 'C');
INSERT INTO `Operaciones` VALUES (50621, 14488271, 'PEDRINI', 'Lucia Ester', 'luciaepedrini@gmail.com', '2017-12-04 10:25:11', '2017-12-07 00:00:00', 30268377, 'TIERRA', ';a<ria Soledad', '038154491705', 'sols83@hotmail.com', 'VISA', 1640.00, 1558.00, 6, 2130.66, 355.11, 8851, 4285, '2017-12-04 10:25:11', 'C');
INSERT INTO `Operaciones` VALUES (50622, 16458022, 'CASCIOTTA', 'Sergio Daniel', 's.casciotta@yahoo.com.ar', '2017-12-04 10:25:44', '2017-12-07 00:00:00', 26445473, 'vizcarra', 'santos eduardo', '3816259903', 's.casciotta@yahoo.com.ar', 'VISA', 660.00, 627.00, 3, 805.49, 268.50, 815317, 4384, '2017-12-04 10:25:44', 'C');
INSERT INTO `Operaciones` VALUES (50623, 38247053, 'PRADO', 'Exequiel José Manuel', 'fundacionparticipando@gmail.com', '2017-12-04 10:38:27', '2017-12-07 00:00:00', 32371882, 'CARRIZO', 'Carla Jesica', '0381153635772', 'carlacarrizo.cc@gmail.com', 'VISA', 4737.00, 4500.15, 6, 6154.24, 1025.71, 745556, 4723, '2017-12-04 10:38:27', 'C');
INSERT INTO `Operaciones` VALUES (50624, 34133394, 'MARRAZA', 'Mayra Daiana ', 'marraza_daiana@hotmail.com.ar', '2017-12-04 10:49:42', '2017-12-07 00:00:00', 17958846, 'VERA', 'Sonia del Carmen', '038115794737', '', 'VISA', 1517.00, 1441.15, 3, 1851.40, 617.13, 953310, 5245, '2017-12-04 10:49:42', 'C');
INSERT INTO `Operaciones` VALUES (50625, 27962200, 'MANSILLA', 'Diego Julian', 'diegomansilla678@hotmail.com', '2017-12-04 11:28:10', '2017-12-07 00:00:00', 5474925, 'PAZ', 'Mecedes del Carmen', '0381156889813', '', 'VISA', 715.00, 679.25, 3, 872.61, 290.87, 101898, 6434, '2017-12-04 11:28:10', 'C');
INSERT INTO `Operaciones` VALUES (50626, 34064283, 'ALBORNOZ', 'Adrian René', 'albornozadrianrene@gmail.com', '2017-12-04 13:27:59', '2017-12-07 00:00:00', 36042702, 'TABUADA', 'Roque Exequiel', '155896267', '', 'VISA', 22324.00, 21207.80, 6, 29003.02, 4833.84, 6576, 56, '2017-12-04 13:27:59', 'C');
INSERT INTO `Operaciones` VALUES (50627, 34064283, 'ALBORNOZ', 'Adrian René', 'albornozadrianrene@gmail.com', '2017-12-04 13:34:31', '2017-12-07 00:00:00', 36042702, 'TABUADA', 'Exequiel R', '155896267', '', 'VISA', 4175.00, 3966.25, 6, 5424.10, 904.02, 8182, 201, '2017-12-04 13:34:31', 'C');
INSERT INTO `Operaciones` VALUES (50628, 27017576, 'RUIZ', 'Guillermo Daniel ', 'gdanielgymr@hotmail.com', '2017-12-04 14:31:13', '2017-12-07 00:00:00', 28883893, 'MORENO', 'Erika Julieta', '154584143', '', 'VISA', 460.00, 437.00, 3, 561.40, 187.13, 8347, 1664, '2017-12-04 14:31:13', 'C');
INSERT INTO `Operaciones` VALUES (50629, 40783094, 'BELLAVILLA', 'Kevin Alejandro', 'aaa@aaa.com', '2017-12-04 17:53:55', '2017-12-07 00:00:00', 36838167, 'FERNANDEZ', 'PATRICIO', '3816270948', 'paf_santo_10@hotmail.com', 'VISA', 1263.50, 1200.33, 6, 1641.52, 273.59, 760571, 203, '2017-12-04 17:53:55', 'C');
INSERT INTO `Operaciones` VALUES (50630, 23069266, 'APAZA', 'Adrian Esteban ', 'aaa@aaa.com', '2017-12-04 18:25:08', '2017-12-07 00:00:00', 28966731, 'LIEBANO', 'DANIEL', '3813518506', 'aaa@aaa.com', 'VISA', 504.00, 478.80, 2, 602.37, 301.19, 6923, 28, '2017-12-04 18:25:08', 'C');
INSERT INTO `Operaciones` VALUES (50631, 26242421, 'SALGADO', 'Maria Laura', 'laura_tizi@hotmail.com', '2017-12-04 19:29:45', '2017-12-07 00:00:00', 14716817, 'GUZMAN', 'AZUCENA', '38665511720', 'laura_tizi@hotmail.com', 'VISA', 700.00, 665.00, 3, 854.30, 284.77, 964720, 8825, '2017-12-04 19:29:45', 'C');
INSERT INTO `Operaciones` VALUES (50632, 27370086, 'GOYTIA', 'Claudia Beatriz', 'claudiagoytiaindumentaria@gmail.com', '2017-12-04 19:37:32', '2017-12-07 00:00:00', 36867591, 'ANDRADA', 'CRISTIAN', '153304163', 'claudiagoytiaindumentaria@gmail.com', 'VISA', 870.55, 827.02, 6, 1131.01, 188.50, 7884, 8969, '2017-12-04 19:37:32', 'C');
INSERT INTO `Operaciones` VALUES (50633, 14488271, 'PEDRINI', 'Lucia Ester', 'luciaepedrini@gmail.com', '2017-12-04 19:58:37', '2017-12-07 00:00:00', 28721786, 'HEREDIA', 'SERGIO RENE', '3814830190', 'sergioheredia81@hotmail.com', 'VISA', 260.00, 247.00, 3, 317.31, 105.77, 8311, 9315, '2017-12-04 19:58:37', 'C');
INSERT INTO `Operaciones` VALUES (50634, 6391762, 'BILLONE', 'Graciela Elisa', 'colegiobolivar@arnetbiz.com.ar', '2017-12-04 20:20:18', '2017-12-07 00:00:00', 32583887, 'rodriguez', 'cintia', '3815393291', 'colegiobolivar@arnetbiz.com.ar', 'MASTER', 3100.00, 2945.00, 6, 4027.48, 671.25, 620853, 0, '2017-12-04 20:20:18', 'C');
INSERT INTO `Operaciones` VALUES (50635, 38247053, 'PRADO', 'Exequiel José Manuel', 'fundacionparticipando@gmail.com', '2017-12-04 20:48:42', '2017-12-11 00:00:00', 14351771, 'LOPEZ', 'Clara Alicia', '0381153528018', 'andreaveronica.gomez2017@gmail.com', 'MASTER', 8421.05, 8000.00, 12, 12626.25, 1052.19, 634446, 0, '2017-12-04 20:48:42', 'C');
INSERT INTO `Operaciones` VALUES (50636, 35521870, 'FARIAS', 'Yanina', 'johana123.456@hotmail.com', '2017-12-04 21:17:11', '2017-12-11 00:00:00', 18507219, 'GALVAN', 'SERGIO', '155274594', 'johana123.456@hotmail.com', 'VISA', 1800.00, 1710.00, 6, 2338.53, 389.76, 597514, 42, '2017-12-04 21:17:11', 'C');
INSERT INTO `Operaciones` VALUES (50637, 30712465650, 'YUBRIN', 'Carlos', 'jorgelinanicastro@estudioyubrin.com.ar', '2017-12-05 10:53:47', '2017-12-11 00:00:00', 12921953, 'CABRERA', 'Dora del Valle', '', '', 'VISA', 1579.05, 1500.10, 3, 1927.13, 642.38, 6495, 204, '2017-12-05 10:53:47', 'C');
INSERT INTO `Operaciones` VALUES (50638, 30807633, 'MARTEL', 'Maria Jose', 'aaa@aaa.com', '2017-12-05 10:59:52', '2017-12-11 00:00:00', 17442165, 'ARAGON', 'MARIA CRISTINA', '4291220', 'aaa@aaa.com', 'VISA', 330.00, 313.50, 2, 394.41, 197.21, 10110, 6214, '2017-12-05 10:59:52', 'C');
INSERT INTO `Operaciones` VALUES (50639, 20366891, 'MEDINA', 'Silvia Rosa', 'silviamedina@outlook.com', '2017-12-05 12:55:26', '2017-12-11 00:00:00', 33051721, 'GEORGIESS', 'LUCIANA', '154621971', 'lucianageorgiess@gmail.com', 'VISA', 550.00, 522.50, 2, 657.34, 328.67, 6690, 9394, '2017-12-05 12:55:26', 'C');
INSERT INTO `Operaciones` VALUES (50640, 38115851, 'ANDRADE', 'Maico Hugo', 'andrademaico794@gmail.com', '2017-12-05 12:58:32', '2017-12-11 00:00:00', 41650496, 'ALMIRON NAVARRO', 'Maria Itati', '3813841990', '', 'VISA', 1000.00, 950.00, 3, 1220.43, 406.81, 934675, 9408, '2017-12-05 12:58:32', 'C');
INSERT INTO `Operaciones` VALUES (50641, 23069266, 'APAZA', 'Adrian Esteban ', 'aaa@aaa.com', '2017-12-05 15:29:04', '2017-12-11 00:00:00', 26139610, 'PEREZ', 'Carlos Daniel', '154492448', '', 'VISA', 1050.85, 998.31, 3, 1282.49, 427.50, 960013, 29, '2017-12-05 15:29:04', 'C');
INSERT INTO `Operaciones` VALUES (50642, 40238310, 'MIGNONE', 'Fabricio Italo', 'aaa@aaa.com', '2017-12-05 17:15:22', '2017-12-11 00:00:00', 28150813, 'ROMANO', 'Pablo Daniel', '3815902345', '', 'VISA', 7000.00, 6650.00, 9, 9865.39, 1096.15, 180366, 4509, '2017-12-05 17:15:22', 'C');
INSERT INTO `Operaciones` VALUES (50643, 27371984, 'BUSTO', 'Carlos Jose Maria', 'jose.patoba@gmail.com', '2017-12-05 19:12:06', '2017-12-11 00:00:00', 32322020, 'CASAL', 'MARIA STAFANIA', '381153035081', 'casalmariastefania@gmail.com', 'VISA', 6000.00, 5700.00, 12, 9047.49, 753.96, 664830, 6737, '2017-12-05 19:12:06', 'C');
INSERT INTO `Operaciones` VALUES (50644, 35521870, 'FARIAS', 'Yanina', 'johana123.456@hotmail.com', '2017-12-05 19:20:10', '2017-12-11 00:00:00', 27016751, 'Cobos', 'Sergio Roberto', '381156377151', 'johana123.456@hotmail.com', 'MASTER', 1400.00, 1330.00, 6, 1818.86, 303.14, 613791, 0, '2017-12-05 19:20:10', 'C');
INSERT INTO `Operaciones` VALUES (50645, 35521870, 'FARIAS', 'Yanina', 'johana123.456@hotmail.com', '2017-12-05 19:26:52', '2017-12-11 00:00:00', 27945370, 'Albarracin', 'Juan', '3815826482', 'johana123.456@hotmail.com', 'VISA', 1282.00, 1217.90, 3, 1564.60, 521.53, 572990, 43, '2017-12-05 19:26:52', 'C');
INSERT INTO `Operaciones` VALUES (50646, 34603589, 'GALOVARD', 'Natasha', 'galovard_natasha@hotmail.com', '2017-12-05 20:18:22', '2017-12-11 00:00:00', 14410506, 'CEJAS', 'JUANA ROSA', '4355071', 'galovard_natasha@hotmail.com', 'VISA', 21100.00, 20045.00, 6, 27412.82, 4568.80, 7039, 8119, '2017-12-05 20:18:22', 'C');
INSERT INTO `Operaciones` VALUES (50647, 14408859, 'CHAIJALE', 'Miriam Elizabeth', 'miriamcba5@hotmail.com', '2017-12-05 20:47:12', '2017-12-12 00:00:00', 35784953, 'ZURITA', 'NATALIA', '3815751999', 'n.sol.25.17@gmail.com', 'VISA', 170.00, 161.50, 2, 203.18, 101.59, 9477, 8579, '2017-12-05 20:47:12', 'C');
INSERT INTO `Operaciones` VALUES (50648, 30399351, 'COPA', 'Matias Pedro Armando', 'matiascopa@hotmail.com', '2017-12-05 21:01:59', '2017-12-12 00:00:00', 12832723, 'DIAZ', 'AZUCENA DEL VALLE', '3814292558', 'matiascopa@hotmail.com', 'VISA', 2205.00, 2094.75, 12, 3324.95, 277.08, 6967, 7, '2017-12-05 21:01:59', 'C');
INSERT INTO `Operaciones` VALUES (50649, 24750862, 'GORDILLO', 'Jose Luis', 'bc.telefonia@hotmail.com', '2017-12-06 11:18:35', '2017-12-12 00:00:00', 32409850, 'ZURITA', 'Stella Maris', '155933110', '', 'VISA', 640.00, 608.00, 3, 781.08, 260.36, 225464, 4871, '2017-12-06 11:18:35', 'C');
INSERT INTO `Operaciones` VALUES (50650, 35517220, 'BRITO', 'Gerardo Rafael', 'gerardobrito220@gmail.com', '2017-12-06 12:03:22', '2017-12-12 00:00:00', 24611616, 'GUZMAN', 'Carlos', '3812026626', '', 'VISA', 1200.00, 1140.00, 6, 1559.02, 259.84, 783683, 5910, '2017-12-06 12:03:22', 'C');
INSERT INTO `Operaciones` VALUES (50651, 27735740, 'ARROYO', 'Claudio Eduardo', 'claudiocaetta2@gmail.com', '2017-12-06 12:38:52', '2017-12-12 00:00:00', 28139968, 'SUAREZ', 'Silvina Mariana', '0381155199060', 'niquel_22@hotmail.com', 'VISA', 600.00, 570.00, 3, 732.26, 244.09, 11341, 6771, '2017-12-06 12:38:52', 'C');
INSERT INTO `Operaciones` VALUES (50652, 30807633, 'MARTEL', 'Maria Jose', 'aaa@aaa.com', '2017-12-06 12:53:26', '2017-12-12 00:00:00', 25318739, 'BUSTOS', 'PATRICIA ADRIANA', '153190775', 'aaa@aaa.com', 'VISA', 742.00, 704.90, 3, 905.56, 301.85, 901511, 205, '2017-12-06 12:53:26', 'C');
INSERT INTO `Operaciones` VALUES (50653, 27370086, 'GOYTIA', 'Claudia Beatriz', 'claudiagoytiaindumentaria@gmail.com', '2017-12-06 13:38:11', '2017-12-12 00:00:00', 24803783, 'GOMEZ', 'Carlos Alberto', '156431924', '', 'VISA', 1300.00, 1235.00, 2, 1553.72, 776.86, 12757, 7815, '2017-12-06 13:38:11', 'C');
INSERT INTO `Operaciones` VALUES (50654, 23930165, 'GONZALEZ', 'Victor Heraldo', 'victorheraldogonzales@yahoo.com.ar', '2017-12-06 19:36:53', '2017-12-12 00:00:00', 12598203, 'RUBIO', 'Maria Cristina', '4245909', '', 'VISA', 522.94, 496.79, 2, 625.00, 312.50, 19919, 18, '2017-12-06 19:36:53', 'C');
INSERT INTO `Operaciones` VALUES (50655, 29430217, 'UTRERA', 'Juan Manuel ', 'juanmutrera@hotmail.com', '2017-12-06 19:51:27', '2017-12-12 00:00:00', 31323830, 'LIX KLETT', 'Maximo Jose', '3816374707', '', 'VISA', 780.00, 741.00, 1, 780.00, 0.00, 228076, 7, '2017-12-06 19:51:27', 'D');
INSERT INTO `Operaciones` VALUES (50656, 34603504, 'GIOIA', 'Maira Yanina', 'mairagioia@gmail.com', '2017-12-06 20:03:44', '2017-12-12 00:00:00', 33703666, 'NANTERNE GIACCHINO ', 'CLAUDIO FEDERICO', '3813603816', '', 'MASTER', 800.00, 760.00, 3, 976.35, 325.45, 653411, 0, '2017-12-06 20:03:44', 'C');
INSERT INTO `Operaciones` VALUES (50657, 36839331, 'AGUILERA', 'Carlos Eduardo', 'carlon.aguileraok@gmail.com', '2017-12-06 20:09:05', '2017-12-12 00:00:00', 40358239, 'SAID', 'Sergio Exequiel', '0381155327157', 'sair.exequiel@gmail.com', 'VISA', 1100.00, 1045.00, 3, 1342.48, 447.49, 722374, 4511, '2017-12-06 20:09:05', 'C');
INSERT INTO `Operaciones` VALUES (50658, 36839331, 'AGUILERA', 'Carlos Eduardo', 'carlon.aguileraok@gmail.com', '2017-12-06 20:11:05', '2017-12-12 00:00:00', 40358239, 'SAID', 'Sergio Exequiel', '0381155327157', 'sair.exequiel@gmail.com', 'VISA', 1100.00, 1045.00, 3, 1342.48, 447.49, 722374, 4511, '2017-12-06 20:11:05', 'C');
INSERT INTO `Operaciones` VALUES (50659, 10925548, 'GONZALEZ', 'Azucena Virginia', 'azuvigonzalez@yahoo.com.ar', '2017-12-06 20:11:41', '2017-12-12 00:00:00', 33844333, 'CALDERON', 'Alejandro', '3815097467', '', 'VISA', 200.00, 190.00, 2, 239.03, 119.52, 7980, 4543, '2017-12-06 20:11:41', 'C');
INSERT INTO `Operaciones` VALUES (50660, 36839331, 'AGUILERA', 'Carlos Eduardo', 'carlon.aguileraok@gmail.com', '2017-12-06 20:16:00', '2017-12-12 00:00:00', 32460673, 'FERREYRA', 'LUCAS', '155084655', '', 'VISA', 1100.00, 1045.00, 3, 1342.48, 447.49, 7035, 4605, '2017-12-06 20:16:00', 'C');
INSERT INTO `Operaciones` VALUES (50661, 26454469, 'JUAREZ', 'Franco Luciano', 'francoju2009@hotmail.com', '2017-12-06 20:27:44', '2017-12-12 00:00:00', 21142803, 'PINELLI', 'Maria Lys', '', '', 'VISA', 640.00, 608.00, 3, 781.08, 260.36, 7184, 4640, '2017-12-06 20:27:44', 'C');
INSERT INTO `Operaciones` VALUES (50662, 37503294, 'YAPURA LENCINAS', 'Arturo Emir ', 'emir040893@gmail.com', '2017-12-06 20:53:45', '2017-12-13 00:00:00', 39140719, 'CORONEL', 'Juan carlos', '0381155986117', 'juabcoronel513@gmail.com', 'VISA', 3000.00, 2850.00, 6, 3897.56, 649.59, 11141, 4976, '2017-12-06 20:53:45', 'C');
INSERT INTO `Operaciones` VALUES (50663, 25502069, 'FUNES', 'Ivonne Lorena', 'lorena_moria@hotmail.com', '2017-12-06 21:09:37', '2017-12-13 00:00:00', 10950117, 'CORDOBA', 'Olga Graciela', '0381155282713', 'nenaco@live.com.ar', 'VISA', 1000.00, 950.00, 6, 1299.19, 216.53, 271057, 5154, '2017-12-06 21:09:37', 'C');
INSERT INTO `Operaciones` VALUES (50664, 34133394, 'MARRAZA', 'Mayra Daiana ', 'marraza_daiana@hotmail.com.ar', '2017-12-07 11:17:53', '2017-12-13 00:00:00', 31409806, 'ORTIZ', 'JORGELINA', '154724583', 'jorgelina25@outlook.com', 'VISA', 1467.00, 1393.65, 2, 1753.31, 876.66, 8037, 752, '2017-12-07 11:17:53', 'C');
INSERT INTO `Operaciones` VALUES (50665, 14488271, 'PEDRINI', 'Lucia Ester', 'luciaepedrini@gmail.com', '2017-12-07 11:53:11', '2017-12-13 00:00:00', 30268377, 'SIERRA', 'MARIA SOLEDAD', '0381154491705', '', 'MASTER', 1380.00, 1311.00, 3, 1684.20, 561.40, 670688, 0, '2017-12-07 11:53:11', 'C');
INSERT INTO `Operaciones` VALUES (50666, 30712465650, 'YUBRIN', 'Carlos', 'jorgelinanicastro@estudioyubrin.com.ar', '2017-12-07 12:44:18', '2017-12-13 00:00:00', 31761826, 'ROJAS CARLA. ', 'MARIA EMILIA', '0386315413584', 'op@clubhonorarios.com', 'AMEX', 6420.00, 6099.00, 3, 7816.48, 2605.49, 65, 2, '2017-12-07 12:44:18', 'C');
INSERT INTO `Operaciones` VALUES (50667, 38115851, 'ANDRADE', 'Maico Hugo', 'andrademaico794@gmail.com', '2017-12-07 15:19:02', '2017-12-13 00:00:00', 28151285, 'ROBLES', 'SILVINA', '3816538888', '', 'VISA', 1350.00, 1282.50, 3, 1647.59, 549.20, 721570, 6102, '2017-12-07 15:19:02', 'C');
INSERT INTO `Operaciones` VALUES (50668, 34067498, 'AYDAR', 'Benjamin Rodolfo ', 'rbnaydar@gmail.com', '2017-12-07 16:11:58', '2017-12-13 00:00:00', 26981010, 'ZARATE', 'RUBEN FIDEL', '3813356561', '', 'VISA', 1895.00, 1800.25, 9, 2670.70, 296.74, 777339, 7094, '2017-12-07 16:11:58', 'C');
INSERT INTO `Operaciones` VALUES (50669, 26446363, 'RIBO MURUAGA ', 'Natalia', 'natyribo@hotmail.com', '2017-12-07 17:56:19', '2017-12-13 00:00:00', 33755948, 'VACA', 'Juan Andres', '03815685060', 'natyribo@hotmail.com', 'VISA', 3200.00, 3040.00, 6, 4157.39, 692.90, 714655, 9514, '2017-12-07 17:56:19', 'C');
INSERT INTO `Operaciones` VALUES (50670, 33431922, 'FAUO', 'Sergio Emmanuel', 'sergiofauo@hotmail.com', '2017-12-07 18:25:11', '2017-12-13 00:00:00', 34279841, 'GOMEZ', 'SILVANA', '3816607304', 'sergiofauo@hotmail.com', 'VISA', 1050.00, 997.50, 3, 1281.46, 427.15, 648911, 46, '2017-12-07 18:25:11', 'C');
INSERT INTO `Operaciones` VALUES (50671, 17696977, 'ROMERO', 'Julio Cesar ', 'fernandoromero09@hotmail.com', '2017-12-07 18:30:36', '2017-12-13 00:00:00', 32133691, 'FLORES', 'SERGIO', '1151191059', 'sergin_saef@hotmail.com', 'VISA', 4000.00, 3800.00, 2, 4780.68, 2390.34, 850150, 142, '2017-12-07 18:30:36', 'C');
INSERT INTO `Operaciones` VALUES (50672, 22222222, 'Provisorio', 'N', 'op@cluubhonorarios.com', '2017-12-07 18:51:25', '2017-12-13 00:00:00', 23238764, 'noriega', 'celina', '3814032880', 'celinanfonhotmail.com', 'VISA', 1700.00, 1615.00, 3, 2074.74, 691.58, 633345, 532, '2017-12-07 18:51:25', 'C');
INSERT INTO `Operaciones` VALUES (50673, 27962200, 'MANSILLA', 'Diego Julian', 'diegomansilla678@hotmail.com', '2017-12-07 19:13:27', '2017-12-13 00:00:00', 27977581, 'MONTENEGRO', 'Natalia', '03814891691', 'diegomansilla678@hotmail.com', 'VISA', 1320.00, 1254.00, 12, 1990.45, 165.87, 7481, 856, '2017-12-07 19:13:27', 'C');
INSERT INTO `Operaciones` VALUES (50674, 27371984, 'BUSTO', 'Carlos Jose Maria', 'jose.patoba@gmail.com', '2017-12-07 19:41:46', '2017-12-13 00:00:00', 24059835, 'AGUIRRE', 'ADRIANA DEL CARMEN', '155156056', 'jose.patoba@gmail.com', 'VISA', 6000.00, 5700.00, 3, 7322.61, 2440.87, 7818, 1220, '2017-12-07 19:41:46', 'C');
INSERT INTO `Operaciones` VALUES (50675, 36839331, 'AGUILERA', 'Carlos Eduardo', 'carlon.aguileraok@gmail.com', '2017-12-07 20:09:43', '2017-12-13 00:00:00', 35192225, 'HASHIGUCHI', 'KEIKO PATRICIA', '3816630100', 'keikohashiguchi@gmail.com', 'AMEX', 2095.00, 1990.25, 3, 2550.70, 850.23, 83, 41, '2017-12-07 20:09:43', 'C');
INSERT INTO `Operaciones` VALUES (50676, 23069266, 'APAZA', 'Adrian Esteban ', 'aaa@aaa.com', '2017-12-07 21:05:56', '2017-12-14 00:00:00', 6437012, 'PODAZA', 'MARTA', '4364751', 'aaa@aaa.com', 'VISA', 650.99, 618.44, 2, 778.05, 389.03, 979551, 32, '2017-12-07 21:05:56', 'C');
INSERT INTO `Operaciones` VALUES (50677, 34603504, 'GIOIA', 'Maira Yanina', 'mairagioia@gmail.com', '2017-12-07 21:40:47', '2017-12-14 00:00:00', 27945414, 'ARGAÑARAZ', 'Julio cesar', '0381154645614', 'op@clubhonorarios.com', 'VISA', 3350.00, 3182.50, 3, 4088.46, 1362.82, 8023, 2298, '2017-12-07 21:40:47', 'C');
INSERT INTO `Operaciones` VALUES (50678, 30807633, 'MARTEL', 'Maria Jose', 'aaa@aaa.com', '2017-12-09 10:59:17', '2017-12-14 00:00:00', 14358484, 'DIAZ', 'Ines Beatriz', '3814447638', '', 'VISA', 220.00, 209.00, 2, 262.94, 131.47, 7092, 655, '2017-12-09 10:59:17', 'C');
INSERT INTO `Operaciones` VALUES (50679, 17268293, 'GUZMAN', 'Magdalena del Valle', 'magdalenaguzman@hotmail.com', '2017-12-09 12:17:52', '2017-12-14 00:00:00', 39973237, 'CARRIZO', 'DAIANA', '3865642814', '', 'VISA', 520.00, 494.00, 3, 634.63, 211.54, 560018, 1518, '2017-12-09 12:17:52', 'C');
INSERT INTO `Operaciones` VALUES (50680, 29101193, 'VILLAREAL', 'Raul Oscar', 'oscar2003201@hotmail.com', '2017-12-09 12:50:44', '2017-12-14 00:00:00', 22917378, 'GOMEZ', 'Asuncion E', '3858525479', '', 'VISA', 1915.00, 1819.25, 3, 2337.13, 779.04, 815601, 1896, '2017-12-09 12:50:44', 'C');
INSERT INTO `Operaciones` VALUES (50681, 12597266, 'MALDONADO', 'SARA SUSANA', 'op@clubhonorarios.com', '2017-12-09 13:24:21', '2017-12-14 00:00:00', 33374679, 'FERNANDEZ', 'Noelia', '3816058852', '', 'VISA', 420.00, 399.00, 3, 512.58, 170.86, 7667, 2155, '2017-12-09 13:24:21', 'C');
INSERT INTO `Operaciones` VALUES (50682, 30399351, 'COPA', 'Matias Pedro Armando', 'matiascopa@hotmail.com', '2017-12-09 16:20:34', '2017-12-14 00:00:00', 17615120, 'POVINA', 'JOSE AGUSTIN', '156092051', 'matiascopa@hotmail.com', 'VISA', 3960.00, 3762.00, 12, 5971.34, 497.61, 8383, 8, '2017-12-09 16:20:34', 'C');
INSERT INTO `Operaciones` VALUES (50683, 28292581, 'FRETE ', 'Luciana Pamela ', 'pamelafrete@hotmail.com.ar', '2017-12-09 17:01:05', '2017-12-14 00:00:00', 26783900, 'ALBORNOZ', 'PAOLA', '153558494', 'paolaalbornoz692@gmail.com', 'VISA', 760.00, 722.00, 3, 927.53, 309.18, 583450, 3337, '2017-12-09 17:01:05', 'C');
INSERT INTO `Operaciones` VALUES (50684, 33333333, 'PROVISORIO', 'G', 'op@clubhonorarios.com', '2017-12-09 17:40:30', '2017-12-14 00:00:00', 35301321, 'SILVA', 'CRISTIAN', '155239404', 'cancinomricardo@gmail.com', 'VISA', 2250.00, 2137.50, 12, 3392.81, 282.73, 7883, 3, '2017-12-09 17:40:30', 'C');
INSERT INTO `Operaciones` VALUES (50685, 23930165, 'GONZALEZ', 'Victor Heraldo', 'victorheraldogonzales@yahoo.com.ar', '2017-12-09 17:55:19', '2017-12-14 00:00:00', 22284883, 'SIMON', 'NANCY BEATRIZ', '111111111', 'victorheraldogonzales@yahoo.com.ar', 'VISA', 1088.15, 1033.74, 3, 1328.02, 442.67, 28811, 21, '2017-12-09 17:55:19', 'C');
INSERT INTO `Operaciones` VALUES (50686, 35521870, 'FARIAS', 'Yanina', 'johana123.456@hotmail.com', '2017-12-09 17:57:44', '2017-12-14 00:00:00', 38064707, 'GOMEZ', 'MATIAS DAVID', '155071233', 'johana123.456@hotmail.com', 'VISA', 7000.00, 6650.00, 6, 9094.30, 1515.72, 877160, 44, '2017-12-09 17:57:44', 'C');
INSERT INTO `Operaciones` VALUES (50687, 23930165, 'GONZALEZ', 'Victor Heraldo', 'victorheraldogonzales@yahoo.com.ar', '2017-12-09 18:42:16', '2017-12-14 00:00:00', 12734519, 'SOTELO', 'GUILLERMO', '4202973', 'victorheraldogonzales@yahoo.com.ar', 'VISA', 283.00, 268.85, 2, 338.23, 169.12, 6409, 19, '2017-12-09 18:42:16', 'C');
INSERT INTO `Operaciones` VALUES (50688, 23930165, 'GONZALEZ', 'Victor Heraldo', 'victorheraldogonzales@yahoo.com.ar', '2017-12-09 18:46:58', '2017-12-14 00:00:00', 12414114, 'RENTA', 'PATRICIA EUGENIA', '111111111', 'victorheraldogonzales@yahoo.com.ar', 'VISA', 130.00, 123.50, 2, 155.37, 77.69, 8712, 20, '2017-12-09 18:46:58', 'C');
INSERT INTO `Operaciones` VALUES (50689, 34603504, 'GIOIA', 'Maira Yanina', 'mairagioia@gmail.com', '2017-12-09 19:17:43', '2017-12-14 00:00:00', 23518344, 'WILLIAMS', 'ELIZABETH', '154760700', 'mairagioia@gmail.com', 'MASTER', 1600.00, 1520.00, 3, 1952.69, 650.90, 629609, 0, '2017-12-09 19:17:43', 'C');
INSERT INTO `Operaciones` VALUES (50690, 28680767, 'FERREYRA', 'Andrea Elizabeth', 'arnea1981@gmail.com', '2017-12-09 19:44:24', '2017-12-14 00:00:00', 20171801, 'ROMERO', 'CLARISA', '154155525', 'arnea1981@gmail.com', 'VISA', 550.00, 522.50, 2, 657.34, 328.67, 9380, 4266, '2017-12-09 19:44:24', 'C');
INSERT INTO `Operaciones` VALUES (50691, 36839331, 'AGUILERA', 'Carlos Eduardo', 'carlon.aguileraok@gmail.com', '2017-12-09 20:05:26', '2017-12-14 00:00:00', 22264805, 'ROSAS', 'GUSTAVO FABIAN', '4617201', 'grosas483@gmail.com', 'AMEX', 2100.00, 1995.00, 3, 2556.79, 852.26, 31, 43, '2017-12-09 20:05:26', 'C');
INSERT INTO `Operaciones` VALUES (50692, 30702340558, 'MUTUAL ', 'CONGRESO', 'relq@clubhonorarios.com', '2017-12-11 10:40:14', '2017-12-14 00:00:00', 28883839, 'YBARRA', 'Maria Florencia', '3815523303', 'mf_ybarra@hotmail.com', 'MASTER', 16528.00, 15701.60, 12, 24781.55, 2065.13, 663268, 0, '2017-12-11 10:40:14', 'C');
INSERT INTO `Operaciones` VALUES (50693, 14488271, 'PEDRINI', 'Lucia Ester', 'luciaepedrini@gmail.com', '2017-12-11 12:49:03', '2017-12-14 00:00:00', 18721253, 'BRUNA', 'Silvia Amada', '4364362', '', 'VISA', 650.00, 617.50, 3, 793.28, 264.43, 6957, 7049, '2017-12-11 12:49:03', 'C');
INSERT INTO `Operaciones` VALUES (50694, 35548734, 'POU', 'Carolina Veronica', 'carolinavpou@hotmail.com', '2017-12-11 18:26:22', '2017-12-14 00:00:00', 14073161, 'TORREJON', 'OCADIO', '4273241', '', 'VISA', 600.00, 570.00, 3, 732.26, 244.09, 567432, 4625, '2017-12-11 18:26:22', 'C');
INSERT INTO `Operaciones` VALUES (50695, 29430217, 'UTRERA', 'Juan Manuel ', 'juanmutrera@hotmail.com', '2017-12-11 19:18:09', '2017-12-14 00:00:00', 31324964, 'MACARRO', 'LARA DAIANA', '3816468398', 'a@a..com', 'VISA', 1700.00, 1615.00, 1, 1700.00, 0.00, 87450, 8, '2017-12-11 19:18:09', 'D');
INSERT INTO `Operaciones` VALUES (50696, 35521870, 'FARIAS', 'Yanina', 'johana123.456@hotmail.com', '2017-12-11 19:29:14', '2017-12-14 00:00:00', 36042088, 'MARIANI', 'EDUARDO', '1134438955', 'johana123.456@hotmail.com', 'VISA', 1600.00, 1520.00, 3, 1952.69, 650.90, 877870, 45, '2017-12-11 19:29:14', 'C');
INSERT INTO `Operaciones` VALUES (50697, 34133394, 'MARRAZA', 'Mayra Daiana ', 'marraza_daiana@hotmail.com.ar', '2017-12-11 20:19:48', '2017-12-14 00:00:00', 35549920, 'LESCANO', 'VANESA SOLEDAD', '3815605952', 'marraza_daiana@hotmail.com.ar', 'VISA', 756.00, 718.20, 3, 922.65, 307.55, 621078, 6473, '2017-12-11 20:19:48', 'C');
INSERT INTO `Operaciones` VALUES (50698, 27324124255, 'CHAUD DANIEL', 'Vanesa Daniela', 'vanesachaud_tuc@hotmail.com.ar', '2017-12-11 20:31:12', '2017-12-15 00:00:00', 33372687, 'AGUILERA MARTINEZ', 'ANTONIO LEON', '3876638243', 'leonmartinez120288@gmail.com', 'VISA', 1500.00, 1425.00, 6, 1948.78, 324.80, 7181, 6659, '2017-12-11 20:31:12', 'C');
INSERT INTO `Operaciones` VALUES (50699, 23069266, 'APAZA', 'Adrian Esteban ', 'aaa@aaa.com', '2017-12-11 20:32:13', '2017-12-15 00:00:00', 30498495, 'GONZALEZ', 'JUAN D', 'Fijo: 4367255', 'aaa@aaa.com', 'VISA', 719.58, 683.60, 3, 878.20, 292.73, 871929, 33, '2017-12-11 20:32:13', 'C');
INSERT INTO `Operaciones` VALUES (50700, 33333333, 'PROVISORIO', 'G', 'op@clubhonorarios.com', '2017-12-11 20:41:33', '2017-12-15 00:00:00', 34953522, 'SOSA', 'AGUSTINA', '155239404', 'op@clubhonorarios.com', 'VISA', 2250.00, 2137.50, 12, 3392.81, 282.73, 7044, 4, '2017-12-11 20:41:33', 'C');
INSERT INTO `Operaciones` VALUES (50701, 33333333, 'PROVISORIO', 'G', 'op@clubhonorarios.com', '2017-12-11 20:45:30', '2017-12-15 00:00:00', 33715693, 'GUTIERREZ', 'JESICA', '3815751997', 'op@clubhonorarios.com', 'VISA', 2850.00, 2707.50, 12, 4297.56, 358.13, 559054, 5, '2017-12-11 20:45:30', 'C');
INSERT INTO `Operaciones` VALUES (50702, 30597908, 'FUENSALIDA', 'Luis Ricardo', 'fuensalidaluis@gmail.com', '2017-12-11 20:58:27', '2017-12-15 00:00:00', 35522377, 'FRANCO', 'MIGUEL ALEJANDRO', '155357178', 'obesinlolo@gmail.com', 'VISA', 1220.00, 1159.00, 2, 1458.11, 729.06, 8465, 7001, '2017-12-11 20:58:27', 'C');
INSERT INTO `Operaciones` VALUES (50703, 24617728, 'OLIVERO', 'Amelia Esther', 'alejaureguina@hotmail.com', '2017-12-11 21:08:18', '2017-12-15 00:00:00', 32932053, 'LONGO', 'MARIA LOURDES', '2604596389', 'alejaureguina@hotmail.com', 'VISA', 589.95, 560.45, 3, 720.00, 240.00, 7310, 2, '2017-12-11 21:08:18', 'C');
INSERT INTO `Operaciones` VALUES (50704, 25922441, 'CASEY', 'Elina', 'elinacasey@hotmail.com', '2017-12-12 11:59:30', '2017-12-15 00:00:00', 30177743, 'FLORES', 'Ana Carolina', '3863514587', '', 'VISA', 3600.00, 3420.00, 6, 4677.07, 779.51, 8886, 3436, '2017-12-12 11:59:30', 'C');
INSERT INTO `Operaciones` VALUES (50705, 17696977, 'ROMERO', 'Julio Cesar ', 'fernandoromero09@hotmail.com', '2017-12-12 12:49:16', '2017-12-15 00:00:00', 32460992, 'PERALTA', 'Fatima', '155479829', '', 'VISA', 1200.00, 1140.00, 3, 1464.52, 488.17, 967819, 4698, '2017-12-12 12:49:16', 'C');
INSERT INTO `Operaciones` VALUES (50706, 23069266, 'APAZA', 'Adrian Esteban ', 'aaa@aaa.com', '2017-12-12 14:45:33', '2017-12-15 00:00:00', 174173111, 'ESCOBAR', 'JUAN CARLOS', '155175628', 'aaa@aaa.com', 'VISA', 738.66, 701.73, 2, 882.82, 441.41, 6996, 27, '2017-12-12 14:45:33', 'C');
INSERT INTO `Operaciones` VALUES (50707, 23069266, 'APAZA', 'Adrian Esteban ', 'aaa@aaa.com', '2017-12-12 14:50:23', '2017-12-15 00:00:00', 32827696, 'ALVAREZ', 'SILVANA', '4361249', 'aaa@aaa.com', 'VISA', 2531.67, 2405.09, 3, 3089.74, 1029.91, 74823, 30, '2017-12-12 14:50:23', 'C');
INSERT INTO `Operaciones` VALUES (50708, 27650867, 'GUTIERREZ', 'Romina Alejandra', 'gutierrez2013@gmail.com', '2017-12-12 17:34:43', '2017-12-15 00:00:00', 34873033, 'NEME', 'Monica Elizabeth', '153621901', '', 'VISA', 1160.00, 1102.00, 6, 1507.06, 251.18, 8890, 9755, '2017-12-12 17:34:43', 'C');
INSERT INTO `Operaciones` VALUES (50709, 20366891, 'MEDINA', 'Silvia Rosa', 'silviamedina@outlook.com', '2017-12-12 17:37:42', '2017-12-15 00:00:00', 13338641, 'SALVATIERRA', 'Ana cristina', '0381154010586', 'cristinasalvatierra17@hotmail.com', 'VISA', 1323.00, 1256.85, 2, 1581.21, 790.61, 7464, 9795, '2017-12-12 17:37:42', 'C');
INSERT INTO `Operaciones` VALUES (50712, 22222222, 'Provisorio', 'N', 'op@cluubhonorarios.com', '2017-12-12 18:25:21', '2017-12-15 00:00:00', 21631006, 'GOMEZ MITRE', 'Delma Violeta', '0381155723455', 'mishisumaj@hotmail.com', 'VISA', 17794.00, 16904.30, 12, 26831.84, 2235.99, 7080, 516, '2017-12-12 18:25:21', 'C');
INSERT INTO `Operaciones` VALUES (50713, 33051978, 'CAJAL', 'Romina Analia', 'rominacajal1@gmail.com', '2017-12-12 19:41:18', '2017-12-15 00:00:00', 32206731, 'CASTRO', 'DEBORA GISELL', '4261716', 'rominacajal1@gmail.com', 'VISA', 2700.00, 2565.00, 6, 3507.80, 584.63, 7295, 1605, '2017-12-12 19:41:18', 'C');
INSERT INTO `Operaciones` VALUES (50714, 35521870, 'FARIAS', 'Yanina', 'johana123.456@hotmail.com', '2017-12-12 20:02:07', '2017-12-15 00:00:00', 29669063, 'LEDESMA', 'GUSTAVO', '3815444118', 'johana123.456@hotmail.com', 'VISA', 1200.00, 1140.00, 3, 1464.52, 488.17, 928716, 46, '2017-12-12 20:02:07', 'C');
INSERT INTO `Operaciones` VALUES (50715, 27370086, 'GOYTIA', 'Claudia Beatriz', 'claudiagoytiaindumentaria@gmail.com', '2017-12-12 21:43:29', '2017-12-18 00:00:00', 25922967, 'ANDRADA', 'ESTELA ALEJANDRA', '3814292356', 'claudiagoytiaindumentaria@gmail.com', 'VISA', 2000.00, 1900.00, 6, 2598.37, 433.06, 31902, 3269, '2017-12-12 21:43:29', 'C');
COMMIT;

-- ----------------------------
-- Table structure for Profesional_Categoria
-- ----------------------------
DROP TABLE IF EXISTS `Profesional_Categoria`;
CREATE TABLE `Profesional_Categoria` (
  `idProfesional` int(11) NOT NULL,
  `idCategoria` int(11) NOT NULL,
  PRIMARY KEY (`idProfesional`,`idCategoria`),
  KEY `fk_profesional_idx` (`idProfesional`),
  KEY `fk_categoria_idx` (`idCategoria`),
  CONSTRAINT `fk_categoria` FOREIGN KEY (`idCategoria`) REFERENCES `Categorias` (`idCategoria`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_profesional` FOREIGN KEY (`idProfesional`) REFERENCES `Profesionales` (`idProfesional`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;;

-- ----------------------------
-- Records of Profesional_Categoria
-- ----------------------------
BEGIN;
INSERT INTO `Profesional_Categoria` VALUES (1, 1);
INSERT INTO `Profesional_Categoria` VALUES (1, 2);
INSERT INTO `Profesional_Categoria` VALUES (1, 3);
INSERT INTO `Profesional_Categoria` VALUES (2, 4);
INSERT INTO `Profesional_Categoria` VALUES (2, 5);
INSERT INTO `Profesional_Categoria` VALUES (3, 6);
COMMIT;

-- ----------------------------
-- Table structure for Profesionales
-- ----------------------------
DROP TABLE IF EXISTS `Profesionales`;
CREATE TABLE `Profesionales` (
  `idProfesional` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `apellido` varchar(45) NOT NULL,
  `domicilio` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `telefono` varchar(45) DEFAULT NULL,
  `celular` varchar(45) DEFAULT NULL,
  `estado` char(1) DEFAULT NULL,
  `idProvincia` int(11) NOT NULL,
  `idCiudad` int(11) NOT NULL,
  PRIMARY KEY (`idProfesional`),
  UNIQUE KEY `email_UNIQUE` (`email`),
  KEY `fkidProvincia_idx` (`idProvincia`),
  KEY `fkidCiudad_idx` (`idCiudad`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;;

-- ----------------------------
-- Records of Profesionales
-- ----------------------------
BEGIN;
INSERT INTO `Profesionales` VALUES (1, 'asdasdas', 'Bruno', 'Balcarce 32', 'rbrunount@gmail.com', '4307331', '3816168291', 'A', 0, 0);
INSERT INTO `Profesionales` VALUES (2, 'Kevin', 'Gomez', 'Corrientes 4332', 'kevingomez@gmail.com', '4123123', '381777666', 'A', 0, 0);
INSERT INTO `Profesionales` VALUES (3, 'Jorge', 'Moreno', 'AV. Roca 4332', 'jmoreno@gmail.com', '4444444', '3333333', 'A', 0, 0);
COMMIT;

-- ----------------------------
-- Table structure for ProfesionalesTemp
-- ----------------------------
DROP TABLE IF EXISTS `ProfesionalesTemp`;
CREATE TABLE `ProfesionalesTemp` (
  `idProfesional` int(11) NOT NULL,
  `fechaImpresion` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `dni` bigint(20) NOT NULL,
  `apellido` varchar(45) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `especialidad` text,
  `domicilio` varchar(200) NOT NULL,
  `localidad` int(100) NOT NULL,
  `provincia` int(45) NOT NULL,
  `telefono` varchar(100) NOT NULL,
  `fechaAlta` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `profesion` varchar(45) NOT NULL,
  `mail` varchar(45) DEFAULT NULL,
  `vendedor` varchar(45) NOT NULL,
  `autorizado` varchar(100) DEFAULT NULL,
  `dniAutorizado` bigint(20) DEFAULT NULL,
  `estado` char(1) DEFAULT 'A',
  PRIMARY KEY (`idProfesional`) USING BTREE,
  UNIQUE KEY `dni_UNIQUE` (`dni`) USING BTREE,
  KEY `prov` (`provincia`) USING BTREE,
  KEY `ciudad` (`localidad`) USING BTREE,
  CONSTRAINT `ciudad` FOREIGN KEY (`localidad`) REFERENCES `Ciudades` (`idCiudad`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `prov` FOREIGN KEY (`provincia`) REFERENCES `Provincias` (`idProvincia`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;;

-- ----------------------------
-- Records of ProfesionalesTemp
-- ----------------------------
BEGIN;
INSERT INTO `ProfesionalesTemp` VALUES (0, '2017-01-01 00:00:00', 11111111, 'Club', 'Honorario', 'Prueba', 'pruebá 123', 2386, 25, '123456', '2017-01-01 00:00:00', 'prueba', 'prueba@prueba.com', '6', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1, '2017-09-25 00:00:00', 30709866725, 'PREFERENCIAL', '-', 'Gestion de Cobranzas ', 'General Paz 576', 2386, 25, 'Cel.:153300715', '2017-09-25 00:00:00', 'Abogacia', 'analia.paz@preferencial.com', '6', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (2, '2017-09-22 00:00:00', 25844025, 'PALOMO', 'Ana Carolina', 'Cosmetologia', 'Mexico 3516', 2386, 25, 'Cel : 154694300', '2017-09-22 00:00:00', 'Esteticista', 'anacarolinapalomo@gmail.com', '3', 'MAROTTOLI Eva Antonella', 41276160, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (3, '2017-09-21 00:00:00', 27345458, 'ECHENIQUE', 'Claudia Valeria', 'Optica', 'Republica 110 ', 2384, 25, 'Cel.:156250028', '2017-09-21 00:00:00', 'Comerciante', 'aaa@aaa.com', '3', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (4, '2017-09-20 00:00:00', 21326541, 'OCHOA', 'Monica Del Valle', 'Vta. De Cosmeticos - Tratamientos de Belleza', 'Av. Circunvalacion Esq. Islas Malvinas', 362, 4, 'Cel.:03838-15600397', '2017-09-20 00:00:00', 'Vendedor', 'capricornio_8av@hotmail.com', '3', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (5, '2017-09-20 00:00:00', 13628636, 'VILLAFAÑE', 'Antonia Del Carmen ', 'Vta. De cosmeticos - Tratamientos de Belleza', 'Pje. Boulogne Sourmer 2927', 2386, 25, 'Cel.:156901328', '2017-09-20 00:00:00', 'Vendedor', 'negritacosme.medina@hotmail.com', '3', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (6, '2017-09-21 00:00:00', 28883528, 'AGÜERO', 'Natalia Del Lujan', 'Vta. De Indumentaria - Calzados - Juguetes - etc', 'Av. Santo Cristo 810', 2284, 25, 'Cel.:154543170', '2017-09-21 00:00:00', 'Comerciante', 'nataliadellujana@gmail.com', '1', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (7, '2017-09-20 00:00:00', 36668537, 'DIAZ', 'Diego Franco Javier', 'Vta. De Anteojos', '\"Bernabe Araoz 140 - 2º \"\"4\"\"\"', 2386, 25, 'Cel.:155830836 ', '2017-09-20 00:00:00', 'Vendedor', 'diegofjdiaz284@gmail.com', '1', 'GIRAUDO Johana Marisel', 35914146, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (8, '2017-09-20 00:00:00', 6072896, 'BARBOZA', 'Elba Alicia', 'Vta. De Productos - Perfumes  - Tratamientos de Belleza', 'Bolivar 756', 2371, 25, 'Cel.:154581731 - Fijo:4619228', '2017-09-20 00:00:00', 'Vendedor', 'aaa@aaa.com', '3', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (9, '2017-09-20 00:00:00', 18404811, 'TORRES', 'Graciela Claudia', 'Vta de cosmeticos - Peluqueria - Tratamientos de Belleza', 'Bolivar 1146', 2386, 25, 'Cel.:155524725', '2017-09-20 00:00:00', 'Vendedor', 'aaa@aaa.com', '3', 'TERRAS Nadia Maria', 37503212, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (10, '2017-09-20 00:00:00', 20163090, 'TORRES', 'Roxana', 'Vta. De cosmeticos ', 'Bº Los Platanos Mza.:4 Lote:25', 2386, 25, 'Cel.:156006789', '2017-09-20 00:00:00', 'Vendedor', 'roxanatorres_14@hotmail.com', '3', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (11, '2017-09-20 00:00:00', 13474463, 'MARCHETTI', 'Dolores', 'Vta. De Perfumes - Maquillaje - Accesorios ', 'Rivadavia 1972 - PB', 2386, 25, 'Cel.:155823789 - Fijo.:4276924', '2017-09-20 00:00:00', 'Vendedor', 'aaa@aaa.com', '3', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (12, '2017-09-20 00:00:00', 37927694, 'DOMINGUEZ', 'Mayra Daniela ', 'Vta. De cosmeticos ', 'Bº  La Ceramica Mza.:H Lote:10                       ', 2384, 25, 'Cel.:154122734', '2017-09-20 00:00:00', 'Vendedor', 'dominguezdaniela355442@gmail.com', '3', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (13, '2017-09-19 00:00:00', 10218709, 'PALOMINO', 'Hugo Fernando', 'Chapa y Pintura', 'Mejico 435', 2386, 25, 'Cel: 3814437213 Fijo: 4278821', '2017-09-19 00:00:00', 'Chapista', 'francopalomino@hotmail.com', '1', 'PALOMINO Franco', 32775263, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (14, '2017-09-19 00:00:00', 22574951, 'QUIROGA', 'Dario Emiliano', 'Vta de Lubricentro', 'Alsina 294', 2386, 25, 'Cel: 3814122130 - Fijo: 4246581', '2017-09-19 00:00:00', 'Mecanica de Atomotor', 'darioemilianoquiroga@hotmail.com', '1', 'PETERSON Mariela Alejandra', 22769088, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (15, '2017-09-18 00:00:00', 35816092, 'VARELA', 'Gonzalo Jesus ', 'Tapiceria en gral. ', 'Pje. Wurschmidt 1198', 2386, 25, 'Cel.:156682508', '2017-09-18 00:00:00', 'Tapiceria', 'gonzalovarela54@gmail.com', '4', 'ALMIRON Luciana', 38245631, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (16, '2017-09-19 00:00:00', 33051953, 'MERCADO', 'Maria Paula Betsabe', 'Belleza - Tratamientos corporales - Vta. De productos - pilates ', 'Av. Independencia 471', 2284, 25, 'Cel.:155814676', '2017-09-19 00:00:00', 'Esteticista', 'paula_mercado32@hotmail.ccom', '2', 'ALVAREZ Berta Graciela', 13203539, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (17, '2017-01-01 00:00:00', 30708549807, 'MUTUAL', 'DE A Y P RUAH', 'Cobranza', '9 de Julio 485', 2386, 25, '-', '2017-01-01 00:00:00', '-', '-', '6', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (18, '2017-09-19 00:00:00', 20252270869, 'TARJETA', 'MORADA', 'Cobranza', 'San Martin 839', 2386, 25, '4210304', '2017-09-19 00:00:00', 'Gestoria', 'analia.paz@preferencial.com', '5', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (19, '2017-09-19 00:00:00', 20418397, 'CEGADA', 'Silvia Susana', 'Vta. De Indumentaria y Acc. - Peluqueria ', 'Congreso 944 - Depto.:7º', 2386, 25, 'Cel.:155013227', '2017-09-19 00:00:00', 'Vendedor', 'susanacegada@hotmail.com', '3', 'SORIA Stella Maris', 39480953, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (20, '2017-09-18 00:00:00', 36839724, 'FENINO', 'Jorge Exequiel', 'Vta. De Celulares y servicio tecnico ', 'Lavalle 3185', 2386, 25, 'Cel.:154743840', '2017-09-18 00:00:00', 'Comerciante', 'jfenino@gmail.com', '3', 'GOMEZ Yamila', 38797447, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (21, '2017-09-18 00:00:00', 30710903464, 'OSTENGO', 'Raul', 'Cobros Extrajudiciales - Judiciales ', 'San Martin 839 - 3º A', 2386, 25, 'Fijo:4531400', '2017-09-18 00:00:00', 'Abogacia', 'tarjetas@recuperocrediticio.com.ar', '5', 'FERNANDEZ Miguel Angel ', 20128904, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (22, '2017-09-18 00:00:00', 41534280, 'RUIZ', 'Luis Eduardo', 'Macanica de motos - Vtas. Eventuales ', 'Pje. Vieytes 1884', 2386, 25, 'Cel.:155618171', '2017-09-18 00:00:00', 'Mecanica de Atomotor', 'aaa@aaa.com', '3', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (23, '2017-09-14 00:00:00', 31620085, 'ZELARAYAN', 'Ruben Sebastian ', 'Vta. Y Distribucion de productos de Limpieza', 'Bº Tiro Federal  - Mza.:P Casa:11', 2386, 25, 'Cel.:156158637', '2017-09-14 00:00:00', 'Vendedor', 'sebanzelarayan@gmail.com', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (24, '2017-09-08 00:00:00', 24803437, 'APICHELA', 'Osvaldo Federico', 'Herreria y aberturas ', 'Pje. Falucho 887 ', 2386, 25, 'Cel.:156280643 - Hijo:154098444', '2017-09-08 00:00:00', 'Metalurgia ', 'aberturastucumanfran@gmail.com', '1', 'DIAZ Daniela', 30760073, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (25, '2017-09-14 00:00:00', 31856589, 'ALMARAZ', 'Federico Emanuel', 'Vta. De amoblamiento en MDF', 'Blas Parera 145 ', 2276, 25, 'Cel.:153313565', '2017-09-14 00:00:00', 'Vendedor', 'aaa@aaa.com', '3', 'LEDESMA RICARDO', 32240568, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (26, '2017-09-18 00:00:00', 26028839, 'LIACOPLO', 'Lorena Valentina ', 'Abogada', '\"9 de Julio 485 - 4º \"\"A\"\"\"', 2386, 25, 'Cel.:154457665', '2017-09-18 00:00:00', 'Abogacia', 'loreliacoplo@gmail.com', '4', 'RENGEL Federico Tulio', 12870414, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (27, '2017-09-18 00:00:00', 12870414, 'RENGEL', 'Federico Tulio', 'Abogado ', '\"9 de Julio 485 - 4º \"\"A\"\"\"', 2386, 25, 'Cel.:154145313', '2017-09-18 00:00:00', 'Abogacia', 'ftrengel@gmail.com', '4', 'LIACOPLO Lorena Valentina', 26028839, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (28, '2017-09-13 00:00:00', 32907207, 'SALVI', 'Marianela', 'coach Ontologico', 'Corrientes 961 - 5to Depto.:7', 2386, 25, 'Cel.:154784910 - Fijo:4304951', '2017-09-13 00:00:00', 'Capacitacion', 'maru_s.b@hotmail.com', '4', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (29, '2017-09-15 00:00:00', 30770272, 'SANDEZ', 'Fátima Alejandra', 'Vta. De Calzados. Esteticista-Maquilladora', 'Piedras 570 1º C', 2386, 25, 'Cel: 155490765', '2017-09-15 00:00:00', 'Vendedor', 'candemai1217@gmail.com', '4', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (30, '2017-09-15 00:00:00', 39138396, 'GALLARDO', 'Maria de la Paz', 'Vta de Indumentaria Femenina', 'Santiago 298', 2386, 25, 'Cel: 156757006', '2017-09-15 00:00:00', 'Comerciante', 'mariadelapaz.gallardo95@hotmail.com', '1', 'RODRIGUEZ PERALTA Lourdes', 37657637, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (31, '2017-09-13 00:00:00', 27960637, 'SANAGUA', 'Marcos Elias', 'Alquiler de Salon de Fiestas - Fabrica de Aberturas en aluminio ', 'Constancio Vigil 3500', 2387, 25, 'Cel.:156630555', '2017-09-13 00:00:00', 'Servicios para fiesta', 'msanagua@hotmail.com', '2', 'SANAGUA Sergio Antonio ', 10982391, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (32, '2017-09-13 00:00:00', 22612431, 'LUIS', 'Veronica', 'Gestoria del Automotor - Polirrubro ', 'Rafael Obligado 1147', 2386, 25, 'Cel.:153343082', '2017-09-13 00:00:00', 'Gestor', 'veronicavalentie@gmail.com', '3', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (33, '2017-09-13 00:00:00', 36839331, 'AGUILERA', 'Carlos Eduardo', 'Vta. De Ropa Masculina ', 'Frias Silva 123 ', 2387, 25, 'Cel.:155690602', '2017-09-13 00:00:00', 'Showroom', 'carlon.aguileraok@gmail.com', '1', 'AGUILERA Jose Gaston ', 40533015, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (34, '2017-09-07 00:00:00', 32134226, 'LUCENA', 'Gonzalo', 'Tatuajes y Perforaciones', 'Congreso 215', 2386, 25, 'Cel.:156679234', '2017-09-07 00:00:00', 'Artesanias', 'recorcholis_519@hotmail.com', '3', 'LUCENA Daniela', 39138296, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (35, '2017-09-07 00:00:00', 30117178, 'ZELAYA REINOSO', 'Pablo Santiago', 'Abogado - Vta de Autos ', 'Av. Aconquija 1251', 2387, 25, 'Cel.:155119758', '2017-09-07 00:00:00', 'Abogacia', 'pabloszelaya@gmail.com', '3', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (36, '2017-09-12 00:00:00', 26722175, 'CHAILE', 'Eliana Elizabeth', 'Vta de Ropa - Calzado - Accesorios - Art. De temporada', 'Pje. Jose Aragon 878 - Bº Santo Cristo', 2284, 25, 'Cel.:153517104', '2017-09-12 00:00:00', 'Vendedor', 'aaa@aaa.com', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (37, '2017-09-05 00:00:00', 31992410, 'JUAREZ', 'Juan Pablo', 'Empresa de Servicio (Medicina, Salud, Funebre)', 'Bº La Merced - Benigno Vallejo 3934', 2386, 25, 'Cel.:155745036 - Socio:154015750', '2017-09-05 00:00:00', 'Medicina ', 'juanpy_jpj@hotmail.com', '3', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (38, '2017-09-12 00:00:00', 23239549, 'ALBARRACIN', 'Hector Eduardo', 'Carteleria - Imprenta - Ploteo ', 'Pje. La Pampa 573 ', 2387, 25, 'Cel.:155157393', '2017-09-12 00:00:00', 'Comerciante', 'hector.tecnofix@gmail.com', '3', 'ALBARRACIN Sergio Alberto', 23931231, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (39, '2017-09-05 00:00:00', 18203537, 'FIGUEROA', 'Miguel Ramon Raul', 'Vta. De Bicicletas - Accesorios - Mecanica', 'Galvez Cotta 53', 2387, 25, 'Cel.:155451706', '2017-09-05 00:00:00', 'Comerciante', 'ines666@hotmail.com', '1', 'FIGUEROA Jose Facundo ', 38115704, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (40, '2017-09-12 00:00:00', 25844142, 'WERCHOW', 'Gerardo', 'Organización de Eventos - Talleres - Alquiler de Salones - Etc.', 'Chacabuco 77', 2386, 25, 'Cel.:156097056', '2017-09-12 00:00:00', 'Servicios para fiesta', 'buro.coworking@gmail.com', '4', 'SOLORZANO Eduardo Alfredo ', 33431085, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (41, '2017-09-11 00:00:00', 33884602, 'CORTES', 'Fabiola Roxana', 'Vta de Indumentaria y Calzados', 'Av. Adolfo de la Vega 572', 2386, 25, 'Cel.:154962183', '2017-09-11 00:00:00', 'Comerciante', 'fabiolarocortes@gmail.com', '3', 'MENDEZ  Adriana Patricia ', 18612958, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (42, '2017-09-11 00:00:00', 37457025, 'BARBONA', 'Rocio Mariel', 'Vta. De Ropa femenina', '\"9 de Julio 388 - 1º \"\"A\"\"\"', 2386, 25, 'Cel.:154660574', '2017-09-11 00:00:00', 'Showroom', 'rocio.barbona@hotmail.com', '1', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (43, '2017-09-12 00:00:00', 27370292, 'TAPIA', 'Claudia Analia', 'Vta. De Productos de Nutricion OMNILIFE - Reposteria', 'Calle 25 - Casa:550', 2327, 25, 'Cel.:154724838', '2017-09-12 00:00:00', 'Vendedor', 'claudiaanalia1979@gmail.com', '4', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (44, '2017-09-09 00:00:00', 38364982, 'LOPEZ', 'Maira Micaela', 'Vta. En gral. (Ropa - Calzados - Merceria- Regaleria)', 'Bº Elena Wyth Mza.:F Casa:2', 2386, 25, 'Cel.:153916232', '2017-09-09 00:00:00', 'Comerciante', 'micaelalopez.tec@gmail.com', '2', 'CORDOBA Beatriz', 21748025, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (45, '2017-09-11 00:00:00', 24355221, 'BULACIO', 'Marta Maria ', 'Vta. De Ropa - Calzados - Juguetes - Merceria - etc.', 'Eugenio Mendez y Flening - San Cayetano', 2386, 25, 'Cel.:155333157', '2017-09-11 00:00:00', 'Comerciante', 'aaa@aaa.com', '2', 'VELAZQUEZ Juan Pedro ', 21336633, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (46, '2017-09-11 00:00:00', 26783347, 'ALBARRACIN ', 'Maria Andrea', 'Trabajos a domicilio de Peluqueria', '\"Lavalle 262 - Block \"\"D\"\" Depto.:5 - Piso:1\"', 2386, 25, 'Cel.:153301063 Fijo:4266971', '2017-09-11 00:00:00', 'Peluqueria', 'mariandrea932@gmail.com', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (47, '2017-09-11 00:00:00', 8564569, 'SALIM', 'Luis Manuel ', 'Vta de art. Para el hogar (bazar, electrodomesticos) vta. de vehiculos ', 'Inca Garcilaso 630', 2386, 25, 'Cel.:155475117', '2017-09-11 00:00:00', 'Vendedor', 'luissalim51@hotmail.com', '2', 'SALIM Luis Cayetano', 43363138, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (48, '2017-09-08 00:00:00', 26782466, 'SORAIRE', 'Javier  Patricio', 'Trabajos de herreria en gral.', 'San Miguel 734', 2386, 25, 'Cel.:155170403 - Fijo:4361795', '2017-09-08 00:00:00', 'Herreria', 'javierps78@hotmail.com', '4', 'MONTEROS Nancy Patricia', 28039126, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (49, '2017-09-11 00:00:00', 34285947, 'VILLAGRA', 'Maria Emilia ', 'Vta. De accesorios', 'Av. Roca 1063', 2386, 25, 'Cel.:156362853', '2017-09-11 00:00:00', 'Artesanias', 'emi.villagra@hotmail.com', '3', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (50, '2017-09-08 00:00:00', 34287175, 'CASCO', 'Rodrigo Alexis', 'Tatto y Perforaciones', 'Saavedra 2185', 2386, 25, 'Cel.:154684925', '2017-09-08 00:00:00', 'Artesanias', 'rodrigoeltoro17@gmail.com', '3', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (51, '2017-09-07 00:00:00', 40357917, 'DIAZ', 'Fernanda', 'Vta. De Indumemtaria ', '24 de Septiembre 233 - Local:I9', 2386, 25, 'Cel.:155541243 - Alt.:155242519', '2017-09-07 00:00:00', 'Comerciante', 'ferysan.20@gmail.com', '3', 'DIAZ Mariano ', 39480021, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (52, '2017-09-07 00:00:00', 34603504, 'GIOIA', 'Maira Yanina', 'Vta. De indumentaria y calzados', '24 de Septiembre 233 - Local:L7', 2386, 25, 'Cel.:154808541', '2017-09-07 00:00:00', 'Comerciante', 'mairagioia@gmail.com', '3', 'PALOMINO Marco Gabriel', 29640261, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (53, '2017-09-07 00:00:00', 30496747, 'CARO', 'Luis Alberto', 'Vta. De Indumentaria ', 'Av. Saenz Peña 99 - Local: 9 y 12 ', 2386, 25, 'Cel.:154984586 Alt.:155025447', '2017-09-07 00:00:00', 'Comerciante', 'aaa@aaa.com', '3', 'SALINAS Alejandra del Valle', 30110368, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (54, '2017-09-05 00:00:00', 28721242, 'RODRIGUEZ', 'Dario Ruben ', 'Vta. De Muebles y Electrodomesticos', 'Delfin Gallo 3279', 2386, 25, 'Cel.:154466861', '2017-09-05 00:00:00', 'Vendedor', 'aaa@aaa.com', '3', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (55, '2017-09-07 00:00:00', 36183040, 'CARDOZO', 'selva Estela', 'Sex shop - Vta. De ropa y accesorios relacionados ', 'Miguel Lillo 40 - Piso:2 Dpto.:E', 2386, 25, 'Cel.:155904116', '2017-09-07 00:00:00', 'Vendedor', 'selvicard20@hotmail.com', '2', 'ABREGU Analia Adriana', 28223583, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (56, '2017-09-05 00:00:00', 27886389, 'CALIVA', 'Walter Manuel', 'Vta. De Indumentaria', '24 de Septiempre 233 - Local:K2', 2386, 25, 'Cel.:154621670', '2017-09-05 00:00:00', 'Comerciante', 'aaa@aaa.com', '3', 'OJEDA Yohana Carolina', 28476982, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (57, '2017-09-06 00:00:00', 21334190, 'ALBARRACIN', 'Carlos Alberto', 'Gasista - Plomero - Construccion en gral. ', 'Rivadavia 500 ', 2276, 25, 'Cel.:156093638', '2017-09-06 00:00:00', 'Gasista', 'aaa@aaa.com', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (58, '2017-09-05 00:00:00', 29430731, 'GUTIERREZ TISEIRA', 'Maria Silvia', 'Vta. De ropa - Calzados - Accesorios  - Celulares y tecnologia ', 'Rivadavia 2230 - Piso:6 Dpto.:A Torre:A', 2386, 25, 'Cel.:155503957', '2017-09-05 00:00:00', 'Vendedor', 'msgtinseira@gmail.com', '2', 'SANCHEZ OÑATE Juan Pablo ', 29639659, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (59, '2017-09-06 00:00:00', 16175752, 'GRAMAJO', 'Hector Daniel ', 'Electro-medicina - Soporte tecnico en maquinaria de salud ', 'Amador Lucero 1812', 2386, 25, 'Cel.:156091811', '2017-09-06 00:00:00', 'Ingenieria', 'hdgramajo@gmail.com', '3', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (60, '2017-09-06 00:00:00', 18873467, 'SILVA', 'Veronica Ruth', 'Vta. Indumentarias - Calzados - Art. Varios - Peluqueria ', 'Torquin s/n ', 2321, 25, 'Cel.:155053132', '2017-09-06 00:00:00', 'Vendedor', 'rutzsilva8@gmail.com', '2', 'ALTAMIRANDA Antonia del Valle', 12658951, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (61, '2017-09-05 00:00:00', 31487424, 'PUMARA', 'Sebastian Emanuel', 'Abogado Penal - General', '9 de Julio 379 - Piso: 2º Of.:8', 2386, 25, 'Cel.:156658838', '2017-09-05 00:00:00', 'Abogacia', 'sebastianpumara@hotmail.com', '5', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (62, '2017-09-05 00:00:00', 34647087, 'GOMEZ', 'Lorena Paola', 'Vta. De indumentaria - Esteticista', 'Ayacucho 1779', 2386, 25, 'Cel.:155244756', '2017-09-05 00:00:00', 'Showroom', 'loly142.lg@gmail.com', '4', 'ARIAS Jorge Francisco Alvaro ', 40698823, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (63, '2017-09-04 00:00:00', 30711149070, 'CENTRO DE ESTUDIOS GESTALTICOS', 'SAN ISIDRO', 'Cursos - Postgrados - Capacitaciones', 'Piedras 551', 2386, 25, 'Fijo.:4307372', '2017-09-04 00:00:00', 'Capacitacion', 'infonoa@cgsi.com.ar', '3', 'FARES Daniel', 33099744, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (64, '2017-08-31 00:00:00', 36943104, 'CORDOBA', 'Luciana', 'Vta. De indumentaria - Cosmeticos - Joyas', 'Av. Solano Vera 1059', 2387, 25, 'Cel.:156309853 - Fijo:4254722', '2017-08-31 00:00:00', 'Showroom', 'lu_frinchy@hotmail.com', '3', 'SALVADOR Javier', 36420672, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (65, '2017-08-30 00:00:00', 17268293, 'GUZMAN', 'Magdalena del Valle', 'Vta de Indumentaria', 'Roca 171', 2294, 25, 'Cel.: 3865627698', '2017-08-30 00:00:00', 'Comerciante', 'magdalenaguzman@hotmail.com', '3', 'ALDERETES Omar', 16175500, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (66, '2017-08-31 00:00:00', 10708721, 'GARCIA CARRASCO', 'Silvia del Valle', 'Pintura de Vidrio y Madera', 'Av. Belgrano 4500 - Block 1 - Depto 46 - Piso 2', 2386, 25, 'Cel.: 155675773 - Fijo: 4346409', '2017-08-31 00:00:00', 'Artesanias', 'silgaca@gmail.com', '4', 'GOMEZ GARCIA Julio German', 31588876, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (67, '2017-09-01 00:00:00', 28079700, 'RODRIGUEZ', 'Cintia Lorena', 'Vta de Indumentaria femenina y Calzados.', 'Justo de la Vega 1130', 2386, 25, 'Cel.: 154903391', '2017-09-01 00:00:00', 'Vendedor', 'laclandestinaboutique@hotmail.com', '3', 'MEDINA Ricardo Horacio', 23171302, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (68, '2017-08-31 00:00:00', 24981759, 'GORDILLO', 'Maria Fernanda ', 'Pinturas - Bijou en Piedras - Artesanias ', 'Pje. Agustin Garcia 2359', 2386, 25, 'Cel.:154023180', '2017-08-31 00:00:00', 'Artesanias', 'fernandagordillo4@gmail.com', '4', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (69, '2017-08-31 00:00:00', 41772444, 'MOLINA', 'Dahiana Elizabeth', 'Tratamientos corporales - Depilacion - manos y piez', 'Bº Ex Aeropuerto - Mza.:J Lote:21', 2386, 25, 'Cel.:153418399', '2017-08-31 00:00:00', 'Esteticista', 'aaa@aaa.com', '3', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (70, '2017-08-31 00:00:00', 28476300, 'RAMOS', 'Cecilia del Valle', 'Tratamientos esteticos - Maquillaje - Artesanias ', 'Benjamin Villafañe 1175', 2386, 25, 'Cel.:156010158', '2017-08-31 00:00:00', 'Esteticista', 'cecyramos1980@gmail.com', '3', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (71, '2017-08-31 00:00:00', 94170012, 'ESCARATE', 'Rafael', 'Vta. De Perfumes ', 'Bº San Martin - Mza.:W Casa:5', 2386, 25, 'Cel.:156075600', '2017-08-31 00:00:00', 'Vendedor', 'rafaelvaldemar@hotmail.com', '3', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (72, '2017-08-31 00:00:00', 17269547, 'CACERES', 'Liliana del Valle', 'Vta. De Indumentaria ', 'Bº San Javier - Mza.:D Casa:17', 2387, 25, 'Cel.:156991220 - Fijo:4931737', '2017-08-31 00:00:00', 'Vendedor', 'aaa@aaa.com', '3', 'PERALTA Hugo', 14083136, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (73, '2017-08-31 00:00:00', 33973667, 'MANSILLA', 'Miguel Angel', 'Vta. De Calzado y Productos Electronicos', 'Bº 360 Viviendas - Mz D - Casa 25', 2386, 25, 'Cel.: 152024829', '2017-08-31 00:00:00', 'Comerciante', 'mansillatuckson@gmail.com', '5', 'ROMANO Marcela Alejandra', 17858739, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (74, '2017-08-31 00:00:00', 20219888, 'LUDUEÑA', 'Juan Gustavo', 'Mecanica general de Motos', 'Francisco de Aguirre 1462', 2386, 25, 'Cel.: 154634842', '2017-08-31 00:00:00', 'Mecanica de Atomotor', 'gusygp@hotmail.com', '1', 'Barrionuevo Erica Paola', 21744337, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (75, '2017-08-31 00:00:00', 33971911, 'SALVATIERRA', 'Noelia Maria', 'Ortodoncia', 'Av. Raya 700 - Mza.:10 Lote:2 Cs.:1 sector 10 - Bº Lomas de tafi', 2386, 25, 'Cel.:155007510', '2017-08-31 00:00:00', 'Odontologia', 'marianoeliasalvatierra@gmail.com', '3', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (76, '2017-08-25 00:00:00', 35816235, 'ABELLA', 'Julieta Daniela', 'Peluqueria ', 'Bº Batalla de Tucuman - Mza:Z Lote:12', 2386, 25, 'Cel.:156339679', '2017-08-25 00:00:00', 'Peluqueria', 'abellajulieta64@gmail.com', '1', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (77, '2017-08-30 00:00:00', 12318399, 'MARTIN', 'Juan Carlos', 'Tratamientos en gral. ', 'Bolivar 2006', 2386, 25, 'Cel.:156297370', '2017-08-30 00:00:00', 'Odontologia', 'carlosmartin12318399@gmail.com', '4', 'MARTIN Noelia Karina', 30835295, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (78, '2017-08-30 00:00:00', 29918993, 'YSLAS', 'Malena Marisol', 'Tratamientos en general ', 'Piedras 680', 2386, 25, 'Cel.:155199479', '2017-08-30 00:00:00', 'Odontologia', 'marisolyslas@gmail.com', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (79, '2017-08-31 00:00:00', 25502069, 'FUNES', 'Ivonne Lorena', 'Peluqueria unisex', 'Ecuador 1002', 2386, 25, 'Cel.:155265421', '2017-08-31 00:00:00', 'Estilista', 'lorena_moria@hotmail.com', '3', 'PEREZ Claudio', 23199234, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (80, '2017-08-30 00:00:00', 27371574, 'SEVERO', 'Eduardo Daniel ', 'Tec. En refrigeracion - Instalacion y Reparacion ', 'Juan A. Carrizo 430 - Bº San Cayetano', 2386, 25, 'Cel.:155876227', '2017-08-30 00:00:00', 'Tecnico/a', 'aaa@aaa.com', '4', 'CASTRO Graciela Elizabeth', 27400186, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (81, '2017-08-30 00:00:00', 38741794, 'ALOMO ARAOZ', 'Nicolas Esteban ', 'Vta. De productos nutricionales OMNILFE', 'Anta Muerta 2333', 2387, 25, 'Cel.:156441752', '2017-08-30 00:00:00', 'Vendedor', 'esteban.alomo1995@gmail.com', '4', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (82, '2017-08-29 00:00:00', 40238524, 'PEREZ', 'Lucas Natanael', 'Vta. De Celulares y Art. De tecnologia', 'Ituzaingo 670', 2387, 25, 'Cel.:154762379', '2017-08-29 00:00:00', 'Vendedor', 'aaa@aaa.com', '1', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (83, '2017-08-30 00:00:00', 37309655, 'LLAVE', 'Carlos Exequiel', 'Vta. De Productos de nutricion OMNILIFE', 'Aragon y Pje. Iramain', 2387, 25, 'Cel.:153903252 - Fijo:4255421', '2017-08-30 00:00:00', 'Vendedor', 'carlos_20_yb@hotmail.com', '4', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (84, '2017-08-30 00:00:00', 38023516, 'HARO', 'Franco David', 'Vta. De productos de nutricion OMNILIFE', 'Facundo Quiroga 425', 2387, 25, 'Cel.:155955430 - Fijo:4252079', '2017-08-30 00:00:00', 'Vendedor', 'francoharo4@gmail.com', '4', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (85, '2017-08-30 00:00:00', 41533593, 'HERRERA', 'Cristian Miguel', 'Vta. De Productos Omnilife', 'Bª Parque Sur - Mz L - Casa 17 ', 2386, 25, 'Cel.: 154667859', '2017-08-30 00:00:00', 'Vendedor', 'criskpo-13@hotmail.com', '4', 'HERRERA Miguel Angel', 14300223, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (86, '2017-08-29 00:00:00', 31310742, 'ALDERETES', 'Maria Janet', 'Vta de Indumentaria, Calzados y Carteras.', 'España 1310', 2294, 25, 'Cel.: 03865-15453448 - 03865- 15749696', '2017-08-29 00:00:00', 'Comerciante', 'janetalderetes7@hotmail.com', '3', 'VELAZQUEZ Carolina', 29750265, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (87, '2017-08-30 00:00:00', 35813615, 'ROBLEDO', 'Gerardo Gabriel', 'Mecanica de motos - Vta. De motos y repuestos', 'Don Oriono 2746', 2386, 25, 'Cel.:156449629', '2017-08-30 00:00:00', 'Mecanica de Atomotor', 'robledog637@gmail.com', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (88, '2017-08-30 00:00:00', 29430274, 'SUELDO', 'Maria Eugenia', 'Vta. De Calzados - Indumentaria y cosmeticos por catalago', 'Bº Lomas de Tafi - Mz.:10 Cs.:17 Sector:18', 2386, 25, 'Cel.:154185777', '2017-08-30 00:00:00', 'Vendedor', 'eugeigolo@gmail.com', '4', 'VILLA Jose Benito', 26446805, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (89, '2017-08-29 00:00:00', 26514891, 'QUIPILDOR', 'Martin Ricardo', 'Taller mecanico - Compra y vta. De vehiculos', 'Pje. Baltazar Aguirre 1295', 2386, 25, 'Cel.:155154524', '2017-08-29 00:00:00', 'Mecanica de Atomotor', 'aaa@aaa.com', '3', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (90, '2017-08-29 00:00:00', 17859299, 'ALBORNOZ ', 'Manuel', 'Estilista - Servicio de peluqueria en gral. ', 'Bolivar 490', 2386, 25, 'Cel.:156690094', '2017-08-29 00:00:00', 'Peluqueria', 'manuelalbornoz157@gmail.com', '2', 'ALBORNOZ Lourdes Marlene', 35517230, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (91, '2017-08-29 00:00:00', 33137798, 'CARABAJAL', 'Eliana', 'Vta. De indumentaria', 'Roca 170', 2294, 25, 'Cel.:03865-15549015', '2017-08-29 00:00:00', 'Comerciante', 'nachotiziseba@gmail.com', '3', 'ALDERETES Omar Anibal', 16175500, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (92, '2017-08-29 00:00:00', 27594318, 'OVEJERO QUIROGA', 'Luis Francisco', 'Forrajeria - Por Mayor y Menor', 'Pje. Lucia Araoz 2758', 2386, 25, 'Cel.: 154630172', '2017-08-29 00:00:00', 'Comerciante', 'aaa@aaa.com', '3', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (93, '2017-08-29 00:00:00', 28919914, 'GUILLEN', 'Pamela Susana', 'Vta de Indumentaria', 'Roca 172', 2294, 25, 'Cel.: 3865663418', '2017-08-29 00:00:00', 'Comerciante', 'pamelaguillen@hotmail.com', '3', 'CARABAJAL Eliana', 33137798, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (94, '2017-08-28 00:00:00', 13339141, 'VALDEZ', 'Ramon Felix', 'Vta. De Indumentaria y Calzado', 'Belisario Roldan 1171', 2386, 25, 'Cel.: 156014294 - 153071698', '2017-08-28 00:00:00', 'Comerciante', 'alina.f.ramon.v@gmail.com', '1', 'VALDEZ Ramon Felix', 26584832, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (95, '2017-08-29 00:00:00', 31842627, 'GIMENEZ', 'Christian Eduardo', 'Taller mecanico - Vta de insumos y repuestos', 'Pje Parana 1717', 2386, 25, 'Cel.:154544949 - Alt.:155222334', '2017-08-29 00:00:00', 'Mecanica de Atomotor', 'cristian_gimenez2@hotmail.com', '5', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (96, '2017-08-25 00:00:00', 33538629, 'SILVA', 'Mariano Elias', 'Vta. De Indumentaria - Celulares - Calzados - Art. Varios', 'Lola Mora 59 ', 2384, 25, 'Cel.:153870057', '2017-08-25 00:00:00', 'Vendedor', 'mariano45_4@outlook.com', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (97, '2017-08-28 00:00:00', 14408859, 'CHAIJALE', 'Miriam Elizabeth', 'Vta. de celulares - Accesorios - Servicio Tecnico ', 'Av. Solano Vera 360', 2387, 25, 'Cel.:156523636', '2017-08-28 00:00:00', 'Comerciante', 'miriamcba5@hotmail.com', '1', 'DEL CIANCIO Orlando Ruben ', 14084674, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (98, '2017-08-29 00:00:00', 14961492, 'CORDOBA ', 'Domingo Benjamin', 'Taller mecanico - Frenos y embragues', 'Av. Coronel Suarez y EE.UU. ', 2386, 25, 'Cel.:154179230', '2017-08-29 00:00:00', 'Mecanica de Atomotor', 'domingobenjamincordoba@hotmail.com', '2', 'CORDOBA Domingo', 31505989, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (99, '2017-08-25 00:00:00', 32413406, 'BARBIERI', 'Nicolas Hipolito', 'Abogado - Vta de celulares y accesorios', 'Santa Fe 968', 2386, 25, 'Cel.:154669912', '2017-08-25 00:00:00', 'Abogacia', 'nicolashipolitobarbieri@gmail.com', '1', 'MOYANO Gabriela del Valle', 30068159, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (100, '2017-08-24 00:00:00', 27496933, 'CORDOBA', 'Gustavo Napolion', 'Tecnico en reparacion y vta de electrodomesticos', 'Santiago 1873', 2386, 25, 'Cel.:156092318', '2017-08-24 00:00:00', 'Tecnico/a', 'tuchocordoba@hotmail.com', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (101, '2017-08-25 00:00:00', 14023759, 'APAS', 'Ana Maria', 'Vta de ropa para niños', 'Junin 270 - Local:7', 2386, 25, 'Cel.:154560584', '2017-08-25 00:00:00', 'Comerciante', 'aaa@aaa.com', '3', 'SAAVEDRA Jimena', 36049694, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (102, '2017-08-28 00:00:00', 37957890, 'SANDOVAL', 'Franco Nahuel', 'Vta. De celulares y tablets - Servicio tecnico - Accesorios - Vta de insumos de tecnologia', 'Cordoba 155', 2384, 25, 'Cel.:155307767', '2017-08-28 00:00:00', 'Comerciante', 'fran3217co@gmail.com', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (103, '2017-08-25 00:00:00', 32202893, 'DURAN LEDESMA', 'Jessica Noelia', 'Trabajo en gral.', 'Lamadrid 253 - 1º Piso', 2386, 25, 'Cel.:154458959', '2017-08-25 00:00:00', 'Odontologia', 'noeduran86@gmail.com', '2', 'CANELADA Maria Celina', 32853580, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (104, '2017-08-24 00:00:00', 30919869, 'IÑIGO', 'Luis Eduardo', 'Vta. Y reparacion de Celulares, tablets - Accesorios - Vta de Indumentaria', 'Av. Alfredo Guzman 9 - El Corte', 2276, 25, 'Cel.:156055285', '2017-08-24 00:00:00', 'Vendedor', 'luchinito_2012@hotmail.com', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (105, '2017-08-24 00:00:00', 38249892, 'SANAGUA', 'Maria Belen ', 'Vta de Indumentaria ', 'Junin 270 Local:45 - Mercado Persia', 2386, 25, 'Cel.:153327332', '2017-08-24 00:00:00', 'Comerciante', 'gonzaleiva_75@gmail.com', '3', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (106, '2017-08-24 00:00:00', 30204059, 'GALVAN', 'Nestor Matias', 'Servico Tecnico y Reparacion de articulos Electronicos.', 'San Lorenzo 942', 2386, 25, 'Cel.: 156662233', '2017-08-24 00:00:00', 'Comerciante', 'galvan-matias@hotmail.com', '1', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (107, '2017-08-24 00:00:00', 35920930, 'ORESTE MALICA', 'Carlos Javier', 'Civil - Penal - Laboral - En Gral.', '9 de Julio 368', 2371, 25, 'Cel.: 155896191 - Fijo: 4619047', '2017-08-24 00:00:00', 'Abogacia', 'carlosoreste1191@gmail.com', '1', 'ORESTE Aldo Atilio', 16074136, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (108, '2017-08-23 00:00:00', 24409160, 'FERREYRA', 'Carolina Sonia', 'Vta. De Calzado Femenino', 'Calle 27 y 2  Mz. A Casa 4 ', 2327, 25, 'Cel.: 154771089', '2017-08-23 00:00:00', 'Vendedor', 'soniacarol74@hotmail.com', '1', 'GONZALEZ Diego', 21833544, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (109, '2017-08-24 00:00:00', 36587481, 'BARRIONUEVO', 'Franco Marcelo', 'Vta de Celulares y Accesorios - Servicios de Reparacion', 'Buenos Aires 72 - Local 41', 2386, 25, 'Cel.: 154647751', '2017-08-24 00:00:00', 'Comerciante', 'frankus59@gmail.com', '3', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (110, '2017-08-24 00:00:00', 27562093, 'ESCOBAR', 'Juan Marcelo', 'Tecnico en reparacion en linea blanca - Vta de electrodomesticos', 'Diego de Rojas 1053 ', 2386, 25, 'Cel.:155301781', '2017-08-24 00:00:00', 'Tecnico/a', 'pachu_tucu@hotmail.com', '4', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (111, '2017-08-24 00:00:00', 33824461, 'ROMANO', 'Angel Esteban', 'Instalacion y vta. De Piscinas - trabajos de albañileria', 'Nuestra sra. Del pilar 14 -Punta del Monte - San Pablo - ', 2385, 25, 'Cel.:156316309', '2017-08-24 00:00:00', 'Construccion', 'aaa@aaa.com', '1', 'MATURANO Valeria Elizabeth ', 31430523, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (112, '2017-08-11 00:00:00', 26722725, 'PONCE', 'Martin Hugo', 'Vta. De Indumentaria y Calzados', 'Buenos Aires 61 - Local:15', 2386, 25, 'Cel.:155266699', '2017-08-11 00:00:00', 'Comerciante', 'poncehugomartin2016@gmail.com', '3', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (113, '2017-08-23 00:00:00', 24200388, 'SIUFI', 'Maria Nora', 'Abogada - Boutique Organica', 'Av. Peron y Salta - Bº Buena vista', 2386, 25, 'Cel.:155494442', '2017-08-23 00:00:00', 'Abogacia', 'norasiufi@hotmail.com', '1', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (114, '2017-08-23 00:00:00', 30310002, 'LEDESMA', 'Lidia Veronica', 'Vta de Indumentaria y Calzados', 'Ruta 304 - Km 22', 2287, 25, 'Cel.: 155060413', '2017-08-23 00:00:00', 'Showroom', 'ledesmavero12@gmail.com', '5', 'COSTILLA Pablo Sebastian', 28292537, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (115, '2017-08-23 00:00:00', 36584802, 'TALASSINO', 'Patricio Ernesto', 'Lutheria - Construccion y restauracion de instrumentos', 'San Martin 2047', 2386, 25, 'Cel.:156970258', '2017-08-23 00:00:00', 'Artesanias', 'patousou23@gmail.com', '2', 'GALLOZO Liliana', 13710878, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (116, '2017-08-23 00:00:00', 29183539, 'CZYSEZON', 'Eva Victoria', 'Vta. De ropa para bebe', '24 de Septiembre 233 Local: i 1', 2386, 25, 'Cel.:156818695', '2017-08-23 00:00:00', 'Comerciante', 'bebedeamor@tucgmail.com', '3', 'CZYSEZON Melisa', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (117, '2017-08-23 00:00:00', 20179205, 'RODRIGUEZ', 'Marcela Ines', 'Tratamientos en gral. ', 'Av. Pedro Riera 298', 2285, 25, 'Cel.:155762159', '2017-08-23 00:00:00', 'Odontologia', 'marodontl@hotmail.com', '5', 'PAZ Augusto Edmundo', 12733408, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (118, '2017-08-22 00:00:00', 36420321, 'LOPEZ FIGUEROA', 'Facundo', 'Alquiler de Salon para Eventos - Canchas de Futbol', 'San Luis Y Guemes', 2387, 25, 'Cel.: 154765927', '2017-08-22 00:00:00', 'Servicios para fiesta', 'facundolopezfigueroa@gmail.com', '1', 'LOPEZ FIGUEROA Mariano', 33540358, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (119, '2017-08-17 00:00:00', 28147479, 'PEDRAZA', 'Francisco Ruben', 'Imprenta - Fotografia', 'Pje. Roca 3997', 2386, 25, 'Cel.: 155692028', '2017-08-17 00:00:00', 'Servicios para fiesta', 'tucumano77@gmail.com', '3', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (120, '2017-08-18 00:00:00', 31323072, 'CENA ROBLES', 'Priscilla', 'Tratamientos en gral.', 'General Paz 587', 2386, 25, 'Cel.:155623298 - Fijo:4506727', '2017-08-18 00:00:00', 'Odontologia', 'priscillacena@gmail.com', '3', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (121, '2017-08-17 00:00:00', 26029003, 'RAMASCO', 'Maria', 'Vta. De indumentaria', 'Don Bosco 4795', 2386, 25, 'Cel.:156400024', '2017-08-17 00:00:00', 'Vendedor', 'fausta4@hotmail.com', '3', 'NICOLOSI Flavia Jessica', 25843182, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (122, '2017-08-17 00:00:00', 37727989, 'TORRES', 'Daniela', 'Vta. De indumentaria femenina', 'Emilio Castelar 2672', 2386, 25, 'Cel.:154548172', '2017-08-17 00:00:00', 'Vendedor', 'daniela.torres093@gmail.com', '3', 'TORRES Daniel', 22073795, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (123, '2017-08-16 00:00:00', 37727510, 'ROBLEDO ', 'Fernanda Natalia', 'Vta de indumentaria - calzados  - accesorios - juguetes - Art. De temporada', 'Bº SMATA 2 - Mza.:J Cs.:16', 2386, 25, 'Cel.:153243051', '2017-08-16 00:00:00', 'Comerciante', 'aaa@aaa.com', '1', 'REYNOSO Alexander ', 34201154, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (124, '2017-08-18 00:00:00', 29878436, 'ROSAS', 'Hugo ', 'Abogado Penal ', 'Pje. 2 de Abril 315 - Of.:91', 2386, 25, 'Cel.:154161655', '2017-08-18 00:00:00', 'Abogacia', 'har2711@hotmail.com', '5', 'VELIZ Natalia Cristina', 27843060, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (125, '2017-08-11 00:00:00', 30069340, 'CAROL', 'Cristian David', 'Vta. De celulares - Accesorios - Servicio tecnico ', 'Saenz Peña 158', 2386, 25, 'Cel.:155126735', '2017-08-11 00:00:00', 'Comerciante', 'davidcarol1983@gmail.com', '3', 'HAAR Geraldines', 28883521, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (126, '2017-08-16 00:00:00', 36585694, 'MERCADO', 'Jorge Eduardo', 'Vta y reparacion de celulares - Tablet y PC', 'Salta 251 - Local:28', 2386, 25, 'Cel.:156319916', '2017-08-16 00:00:00', 'Comerciante', 'mercadojorge0@gmail.com', '3', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (127, '2017-08-17 00:00:00', 22664753, 'AGUIRRE', 'Gustavo Martin', 'Vta. De celulares y accesorios', 'Bº ATE - Mza.:15  Lote:7', 2386, 25, 'Cel.:153387567', '2017-08-17 00:00:00', 'Vendedor', 'martinfedericoaguirre@gmail.com', '1', 'AGUIRRE Martin Federico', 38489279, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (128, '2017-08-17 00:00:00', 32846410, 'JAIME', 'Cecilia Alejandra', 'Vta. de Indumentaria', '24 de Septiembre 233 - Local Nº 2', 2386, 25, 'Cel.: 155801760', '2017-08-17 00:00:00', 'Comerciante', 'aaa@aaa.com', '3', 'VALDEZ Ricardo Omar', 31857734, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (129, '2017-08-17 00:00:00', 34764736, 'GONZALEZ', 'Luciana', 'Vta. De Ropa Femenina', '24 de Septiembre 233 - Local Nº 7', 2386, 25, 'Cel.: 155521463', '2017-08-17 00:00:00', 'Comerciante', 'aaa@aaa.com', '3', 'ACOSTA Federico', 30807475, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (130, '2017-08-17 00:00:00', 35813961, 'ARANDA', 'Rafaela Gabriela', 'Vta. De lenceria - Indumentaria - Bazar', '24 de Septiembre 233 - Local: 6 ', 2386, 25, 'Cel.:156527998 - Fijo.:4298647', '2017-08-17 00:00:00', 'Comerciante', 'rafaela9ya@gmail.com', '3', 'ZELAYA Franco Rodrigo', 32460478, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (131, '2017-08-16 00:00:00', 29075050, 'VICTOR', 'Patricia Veronica', 'Alquiler y vta. De disfraces', 'Cordoba 152 - Piso:6 Dpto.:B', 2386, 25, 'Cel.:155492873', '2017-08-16 00:00:00', 'Comerciante', 'patriciav.victor@gmail.com', '4', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (132, '2017-08-16 00:00:00', 36231458, 'PEREYRA', 'Ricardo David', 'Vta. Varia - Prefabricadas - Aberturas - celulares - electrodomesticos', 'Av. Independencia y Colon ', 2386, 25, 'Cel.:153920567 - Alt.:153413354', '2017-08-16 00:00:00', 'Comerciante', 'david345.samaritano@gmail.com', '4', 'OJEDA Yessica Gissel', 35257263, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (133, '2017-08-15 00:00:00', 33974939, 'BAZAN', 'Noelia Alejandra ', 'Vta de indumentaria - Calzados - Jugueteria', 'Muñecas 2357', 2386, 25, 'Cel.:153190219', '2017-08-15 00:00:00', 'Vendedor', 'noeliaalejandrabazan@gmail.com', '2', 'BAZAN Luciana Elizabeth', 38244101, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (134, '2017-08-16 00:00:00', 38184815, 'MERCADO', 'Facundo Gabriel', 'Vta. de indumentaria', 'Av. Aconquija 2030', 2387, 25, 'Cel.:156178088', '2017-08-16 00:00:00', 'Comerciante', 'mercadofacu94@gmail.com', '3', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (135, '2017-08-16 00:00:00', 32110589, 'GOMEZ', 'Patricio Ruben ', 'Vta y reparacion de celulares', 'Av. Ejercito del Norte 2256', 2386, 25, 'Cel.:156805265', '2017-08-16 00:00:00', 'Comerciante', 'patriktuc@gmail.com', '3', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (136, '2017-08-16 00:00:00', 28681535, 'POLITI', 'Raul Augusto', 'Vta y reparacion de celulares', 'Junin 271 - Local: 8', 2386, 25, 'Cel.:155260220', '2017-08-16 00:00:00', 'Comerciante', 'raul_politi@hotmail.com', '3', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (137, '2017-08-08 00:00:00', 33978803, 'PALIZA', 'Martin', 'Vta. De Suplementos deportivos ', 'Av. Belgrano 2323', 2386, 25, 'Cel.:156450624', '2017-08-08 00:00:00', 'Vendedor', 'martin_cng@hotmail.com', '3', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (138, '2017-08-16 00:00:00', 37997396, 'VIZCARRA', 'Micaela Daniela', 'Vta. De Ropa - Jugueteria - Accesorios - Zapatos', 'America y La Plata', 2384, 25, 'Cel.: 156738000', '2017-08-16 00:00:00', 'Comerciante', 'miicaviizcarra@gmail.com', '2', 'SUAREZ Sergio Marcelo', 36585201, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (139, '2017-08-15 00:00:00', 25736143, 'GRAMAJO', 'Nancy Rosana', 'Vta. De indumentaria femenina ', 'Av. Mitre 2268', 2386, 25, 'Cel.:156368126', '2017-08-15 00:00:00', 'Comerciante', 'nancygramajo@hotmail.com.ar', '3', 'SORIA Esteban Matias', 42665025, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (140, '2017-08-15 00:00:00', 25217574, 'ROCHA', 'Claudia Elizabeth', 'Peluqueria - Belleza de manos y piez - Tratamientos de belleza en gral.', 'Manuel Estoquin 491', 2284, 25, 'Cel.:155686262', '2017-08-15 00:00:00', 'Estilista', 'elyrochacr@gmail.com', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (141, '2017-08-16 00:00:00', 33977243, 'JODAR', 'Victor Eduardo', 'Vta. De sommier - Colchones ', 'Mendoza 1609', 2386, 25, 'Cel.:156496193 - Fijo:4256366', '2017-08-16 00:00:00', 'Comerciante', 'vic_edujodar@hotmail.com', '4', 'HERRERA CHEHUAN Milca', 35921892, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (142, '2017-08-15 00:00:00', 37656213, 'GALVEZ', 'Cintia Daiana', 'Vta. De Calzados', 'Vicente Gallo 2327', 2386, 25, 'Cel.: 154495731 - Fijo: 4394783', '2017-08-15 00:00:00', 'Showroom', 'cin932@gmail.com', '1', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (143, '2017-08-14 00:00:00', 20204332887, 'RAIDEN', 'Virgilio Guillermo', 'Gestion Inmobiliaria', '25 de Mayo 685', 2386, 25, 'Cel.: 156786173 - Fijo: 4227252', '2017-08-14 00:00:00', 'Gestor', 'vraiden@hotmail.com', '1', 'BARRERA Celeste', 32235586, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (144, '2017-08-11 00:00:00', 25542027, 'CARDENAS', 'Cesar Augusto', 'Vta y reparacion de celulares - Accesorios', 'Crisostomo nº 1 - Feria el Bajo', 2386, 25, 'Cel.:155413337', '2017-08-11 00:00:00', 'Comerciante', 'cardenascesar089@gmail.com', '3', 'TELLO Jessica A.', 40533242, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (145, '2017-08-14 00:00:00', 35733118, 'RODRIGUEZ', 'Jose Ramon', 'Vta de Celulares y Accesorios', 'Jujuy 321 - El Chañar', 2287, 25, 'Cel.:155740101', '2017-08-14 00:00:00', 'Comerciante', 'tucuman.tucuman@gmail.com', '4', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (146, '2017-08-11 00:00:00', 27730819, 'VIZUR', 'Carina Valeria', 'Peluqueria - Belleza de manos y piez - Maquillaje etc', 'Av. Ejercito del Norte 369', 2386, 25, 'Cel.:156089900', '2017-08-11 00:00:00', 'Estilista', 'cvizur@gmail.com', '2', 'ALCORTA David Humberto', 31588069, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (147, '2017-08-10 00:00:00', 28884226, 'PALERMO', 'Juan Manuel', 'Reparacion y Venta de Celulares', 'Jujuy 162', 2386, 25, 'Cel.: 155390968', '2017-08-10 00:00:00', 'Comerciante', 'juanmpalermo@gmail.com', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (148, '2017-08-11 00:00:00', 29438613, 'OLEA', 'Roberto Emmanuel', 'Electronica - Service y Venta', 'San Martin esq. Las Lanzas', 2387, 25, 'Cel.: 156158424', '2017-08-11 00:00:00', 'Tecnico/a', 'aaa@aaa.com', '3', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (149, '2017-08-10 00:00:00', 36219796, 'MAMANI', 'Jonatan', 'Vta. De Motos Usadas', 'Av. Colon 1365', 2386, 25, 'Cel.: 156542818', '2017-08-10 00:00:00', 'Vendedor', 'cinthus77@hotmail.com', '3', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (150, '2017-08-14 00:00:00', 94748006, 'JARAMILLO', 'Angela Maria', 'Vta. De productos nutricionales OMNILIFE - Bordados de alta costura', 'Alberdi 774', 2386, 25, 'Cel.:155516667', '2017-08-14 00:00:00', 'Vendedor', 'barrotienda@hotmail.com', '4', 'ORTIZ Juan Manuel ', 94748742, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (151, '2017-08-08 00:00:00', 22664070, 'HINOJOSA', 'Ernesto Fabian', 'Apoyo educacional en Quimica', 'Lamadrid 350', 2386, 25, 'Cel.:154695115', '2017-08-08 00:00:00', 'Docencia', 'fabianhinojosa2@hotmail.com', '1', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (152, '2017-08-10 00:00:00', 21724685, 'FERNANDEZ', 'Isidro de Jesus', 'Vta de muebles y aberturas de madera', 'Av. Siria 1836', 2386, 25, 'Cel.:155405020', '2017-08-10 00:00:00', 'Carpinteria', 'aaa@aaa.com', '1', 'ALZOGARAY Maria Cristina', 26400154, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (153, '2017-08-10 00:00:00', 22263863, 'TULA', 'Hugo Alfredo', 'Polirubro - Regaleria - Librería', 'Av. Alem 314', 2371, 25, 'Cel.:155110532', '2017-08-10 00:00:00', 'Comerciante', 'aumal314tafiviejo@gmail.com', '3', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (154, '2017-08-10 00:00:00', 34999007, 'VALENZUELA', 'Stella Maris', 'Vta de indumentaria - Calzados y accesorios', 'La Rioja S/N - Bº Sur - Garmendia', 2287, 25, 'Cel.:153660075 ', '2017-08-10 00:00:00', 'Showroom', 'stellamaris_valenzuela@hotmail.com', '4', 'ROJAS Mercedes', 37484249, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (155, '2017-08-10 00:00:00', 32741786, 'CORIA', 'Nelson Carlos Jose', 'Tatuador - Tallado en vidrio', 'Pje. 24 de Septiembre 29 - Bº Belgrano - Cruz Alta', 2294, 25, 'Cel.:155101694', '2017-08-10 00:00:00', 'Artesanias', 'americanstile666@gmail.com', '4', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (156, '2017-08-09 00:00:00', 27123073, 'MALDONADO', 'Laura Patricia', 'Tratamientos Faciales y corporales ', 'Santa Fe 124 - Planta Baja - Dpto.:3', 2386, 25, 'Cel.:155563615', '2017-08-09 00:00:00', 'Cosmeatra', 'laura_pm_78@yahoo.com.ar', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (157, '2017-08-09 00:00:00', 32134654, 'RAZU', 'Sebastian Jesus', 'Albañileria - gasista - Plomeria - electricidad - Etc.', 'Bº San Martin - Mza.:C Cs.:3', 2386, 25, 'Cel.:155160311', '2017-08-09 00:00:00', 'Construccion', 'sebarazu86@outlook.com', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (158, '2017-08-09 00:00:00', 36743974, 'YBAÑEZ', 'Damian Exequiel', 'Tecnico en reparacion de celulares y pc - Vta de celulares, insumos y accesorios', 'Hipolio Yrigoyen 288 - Ing. La Florida', 2321, 25, 'Cel.:156573339 - Fijo:4922206', '2017-08-09 00:00:00', 'Tecnico/a', 'damianybz@gmail.com', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (159, '2017-08-09 00:00:00', 18464040, 'TADDEI', 'Gabriela Constanza', 'Odontologia en Gral.', 'Pje. Raul Galan 4363', 2386, 25, 'Cel.:154652705', '2017-08-09 00:00:00', 'Odontologia', 'gctaddei@yahoo.com.ar', '5', 'LANGELLA Juan Carlos', 14966959, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (160, '2017-08-07 00:00:00', 32513762, 'GUASTAVINO', 'Julio', 'Vta. Y fabrica de muebles ', 'San Martin 570', 2387, 25, 'Cel.:155725756', '2017-08-07 00:00:00', 'Carpinteria', 'julioguastavino@hotmail.com', '3', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (161, '2017-08-07 00:00:00', 14073441, 'JORGE', 'Mabel del Valle', 'Vta. De indumentaria para Dama ', 'Bs. As. 62 - Local:14', 2386, 25, 'Cel.:154198247', '2017-08-07 00:00:00', 'Comerciante', 'lucianaindumentaria@gmail.com', '3', 'LASTRA Roberto', 12161977, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (162, '2017-08-07 00:00:00', 27017127, 'FERRER', 'Mariana Beatriz', 'Diseño, Fabricacion y Colocacion de Muebles', 'Honduras 484', 2387, 25, 'Cel.: 156588777 - Fijo: 4381684', '2017-08-07 00:00:00', 'Arquitectura', 'marianaferrer3@gmail.com', '5', 'AGUIRRE Edgardo Gustavo', 25090116, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (163, '2017-08-04 00:00:00', 28093773, 'OLEA ', 'Carina', 'Vta. De Ropa y Accesorios', 'Av. Aconquija 1996', 2387, 25, 'Cel.: 154982884', '2017-08-04 00:00:00', 'Comerciante', 'carinaolea@gmail.com', '3', 'AGUILERA Francisco', 14661263, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (164, '2017-08-04 00:00:00', 39138900, 'FARA', 'Juan Martin', 'Proyectos y Direccion Tecnica', 'Av. Belgrano 2848 - 2º B', 2386, 25, 'Cel.: 154757387 - Fijo: 4232920', '2017-08-04 00:00:00', 'Arquitectura', 'juanmartin1308@gmail.com', '5', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (165, '2017-08-07 00:00:00', 36612666, 'DIAZ', 'Carolina del Valle', 'Vta. De Lenceria ', 'Libertador 365 ', 2384, 25, 'Cel.:154981588', '2017-08-07 00:00:00', 'Vendedor', 'carittodiaz36@gmail.com', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (166, '2017-08-03 00:00:00', 17239097, 'DELGADINO', 'Jorge Jose', 'Vta. De Motos y Autos', 'Belgrano 60', 2385, 25, 'Cel.:155727196 - Fijo.:4812985', '2017-08-03 00:00:00', 'Comerciante', 'jd_delgadino@hotmail.com.ar', '3', 'ROJAS Gabriel ', 33819023, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (167, '2017-08-04 00:00:00', 32749962, 'IBARRA', 'Antonio Jose ', 'Servicio tecnico para celulares y PC - Vta de insumos y accesorios', 'Pellegrini 1750', 2386, 25, 'Cel.:155220494 - Alt.:156697882', '2017-08-04 00:00:00', 'Tecnico/a', 'josekapo63@gmail.com', '4', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (168, '2017-08-01 00:00:00', 17041976, 'TAPIA', 'Angelica Del Valle', 'Autopartes', 'Colombia 945', 2386, 25, 'Cel.:156812536 - Fijo:4279274', '2017-08-01 00:00:00', 'Comerciante', 'autopartestucuman@gmail.com', '1', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (169, '2017-08-03 00:00:00', 41345355, 'BULVA ', 'Marcelo Patricio', 'Maestro mayor de obras ', 'Av. Avellaneda 322', 2386, 25, 'Cel.:156009855', '2017-08-03 00:00:00', 'Construccion', 'marbetobul@gmail.com', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (170, '2017-08-03 00:00:00', 31868686, 'SZKOLKA', 'Jonatan Eduardo', 'Taller mecanico ', 'Av. Belgrano 2428', 2386, 25, 'Cel.:155055226', '2017-08-03 00:00:00', 'Mecanica de Atomotor', 'jonatansz@hotmail.com', '2', 'MOYANO Lorena Soledad ', 33429204, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (171, '2017-08-01 00:00:00', 29024399, 'LOPEZ', 'Julio Gabriel', 'Regaleria - Imprenta - Filmaciones', 'Urquiza 240 ', 2276, 25, 'CEL.:155802552 - Fijo:4946830', '2017-08-01 00:00:00', 'Comerciante', 'jglopez_@live.com', '3', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (172, '2017-08-03 00:00:00', 34604124, 'GONZALEZ', 'Diego Augusto', 'Tecnico Electromecanico - Refrigeracion y electricidad', 'Pje. Caseros 137 ', 2284, 25, '0381-155074776 ', '2017-08-03 00:00:00', 'Tecnico/a', 'sttecnico535@hotmail.com', '4', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (173, '2017-08-02 00:00:00', 16734929, 'MOYANO NAYAR', 'Maria Elena ', 'Peluqueria - Regaleria ', 'Laprida 1583', 2386, 25, 'Cel.:156681548 - Fijo:4304762', '2017-08-02 00:00:00', 'Peluqueria', 'mlopezaragon2014@gmail.com', '5', 'ROJAS Hector Emilio ', 12870594, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (174, '2017-08-02 00:00:00', 40696501, 'JAIMES', 'Juan Sebastian', 'Servicio tecnico y reparacion de PC - Vta. De artefactos de tecnologia.', 'Bº Alejandro Heredia - Mza.:26 Lote:4', 2386, 25, 'Cel.:154423224 - Alt.:154034509', '2017-08-02 00:00:00', 'Tecnico/a', 'juan.sebastian.jaimes19@gmail.com', '4', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (175, '2017-08-01 00:00:00', 26981142, 'CASTRO', 'Leonardo Fabian ', 'Musica,luces. Vta.electrod,celulares', 'Bº Güemes - Mz 1 Cs 22', 2284, 25, '0381-156788506', '2017-08-01 00:00:00', 'Servicios para fiesta', 'kstrostudio@hotmail.com', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (176, '2017-08-01 00:00:00', 25857381, 'CASTRO', 'Fabian Alberto', 'Construccion en gral - fotografia para eventos', 'Bº Güemes - Mza.:1 Cs.:22', 2284, 25, 'Cel.:156781806 - Fijo:4265762', '2017-08-01 00:00:00', 'Construccion', 'fabian_27_9@hotmail.com', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (177, '2017-07-27 00:00:00', 35192768, 'BELTRAN', 'Rosana Carolina', 'Regaleria - Marroquineria', 'Italia 1216', 2294, 25, 'Cel.:0386515692008', '2017-07-27 00:00:00', 'Comerciante', 'aaa@aaa.com', '3', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (178, '2017-08-01 00:00:00', 39143788, 'JORRAT', 'Agustina', 'Maquilladora', '25 de mayo 545 - Piso:9 Dpto.:C', 2386, 25, 'Cel.:154743132', '2017-08-01 00:00:00', 'Esteticista', 'agustinajorrat@gmail.com', '1', 'HOSTUN Agustin', 37497562, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (179, '2017-07-26 00:00:00', 28965998, 'OLIVERA', 'Lorena Beatriz', 'Venta Prod. Omnilife - Artesania - Tejidos', 'Ruta 304 Km 21 - El Espinillo', 2299, 25, '0381-156669624', '2017-07-26 00:00:00', 'Vendedor', 'lorena81.olivera@gmail.com', '4', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (180, '2017-07-27 00:00:00', 16021928, 'SOBERON', 'Teresa Fortunata', 'Vta. De Ropa, regaleria, Juguetes', 'Colon 109', 2294, 25, '03865-15544375', '2017-07-27 00:00:00', 'Comerciante', 'aaa@aaa.com', '3', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (181, '2017-07-27 00:00:00', 30070487, 'GRAMAJO', 'Maximiliano', 'Vta y Servicio Tecnico de Celulares', '24 de Septiembre 1259', 2386, 25, '03865-15687522', '2017-07-27 00:00:00', 'Comerciante', 'aaa@aaa.com', '3', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (182, '2017-07-25 00:00:00', 32687406, 'MENDOZA', 'Natalia Veronica', 'Venta de celulares y Accesorios', 'Av. San Martin 215', 2312, 25, '03863- 15466858', '2017-07-25 00:00:00', 'Comerciante', 'nataliaveronmendoza@hotmail.com', '3', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (183, '2017-07-28 00:00:00', 23304517, 'DORFMULLER', 'Vanina de Lourdes', 'Diseño y confeccion de interior y blanco', 'Fermin Cariola 1111', 2387, 25, 'Cel.:155559615', '2017-07-28 00:00:00', 'Modista', 'vaninadorfmuller@yahoo.com.ar', '1', 'BACHI Facundo Ezequiel', 41059006, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (184, '2017-07-31 00:00:00', 14190739, 'ARRASCAETA', 'Jorge Mario', 'Arquitecto - Planos - Albañileria - Plomeria - electricidad etc', 'Marcos Paz 2612 - Block: 1 PB - Dpto.:E', 2386, 25, 'Cel.:154466194', '2017-07-31 00:00:00', 'Construccion', 'jomarras@gmail.com', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (185, '2017-07-26 00:00:00', 37527213, 'TORRES', 'Yohana Graciela', 'Vta de Indumentaria y Calzados', 'Rivadavia 379', 2312, 25, 'Cel.:155690809', '2017-07-26 00:00:00', 'Comerciante', 'yoha_10@hotmail.com', '3', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (186, '2017-07-31 00:00:00', 37504208, 'CAMPO', 'Andrea Estefania ', 'Vta. de indumentaria femenina ', 'Apolo 13 y San Juan ', 2387, 25, 'Cel.:155613009', '2017-07-31 00:00:00', 'Vendedor', 'campoandrea67@gmail.com', '1', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (187, '2017-07-31 00:00:00', 24553379, 'JEREZ', 'Eduardo Daniel', 'Construcion en seco - Instalacion de cielo raso y Blotting', 'Bº Loma Alta - Mza.:K Lote:1', 2327, 25, 'Cel.:155624071', '2017-07-31 00:00:00', 'Construccion', 'danieledueardojerez@gmail.com', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (188, '2017-07-27 00:00:00', 12576317, 'ALINCASTRO', 'Pedro Daniel', 'Talabartero - Artesanias en cuero', 'Bº Lomas de Tafi - Sector 600 Viv. - Mza.:19 Cs.:2', 2386, 25, 'Cel.:156328624 - Fijo:4613075', '2017-07-27 00:00:00', 'Artesanias', 'daniellincastro12@gmail.com', '4', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (189, '2017-07-28 00:00:00', 35548734, 'POU', 'Carolina Veronica', 'Cursos de estetica - vta. De Insumos ', 'Chacabuco 77 - 1º P', 2386, 25, 'Cel.:154624384', '2017-07-28 00:00:00', 'Esteticista', 'carolinavpou@hotmail.com', '2', 'GALLARDO Cynthia', 31619455, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (190, '2017-07-28 00:00:00', 27732352, 'ALTAMIRANDA ', 'Jose Domingo', 'Vta de electrodomesticos nvo. Y usado - serv. Tecnico', 'Av. Alfredo Guzman 352', 2386, 25, 'Cel.:155141401', '2017-07-28 00:00:00', 'Comerciante', 'josealtamiranda-1980@hotmail.com', '3', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (191, '2017-07-28 00:00:00', 26454040, 'RUNCO', 'Walter Jose', 'Taller mecanico', 'Av. Rivadavia 314', 2276, 25, 'Cel.:153012044', '2017-07-28 00:00:00', 'Mecanica de Atomotor', 'wrunco@gmail.com', '3', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (192, '2017-07-27 00:00:00', 16175500, 'ALDERETES', 'Omar Anibal', 'Talabarteria - Marroquineria - Trabajas en cuero - Vta de ropa', 'Av. Roca 171', 2294, 25, 'Cel.:03865-15586205', '2017-07-27 00:00:00', 'Vendedor', 'aaa@aa.com', '3', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (193, '2017-07-27 00:00:00', 20179091, 'LEDESMA', 'Claudia Cecilia', 'Vta. De produc. Nutricionales  OMNILIFE - Peluqueria', 'Bº Virgen del Huerto - Mza.:A Cs.:7', 2327, 25, 'Cel.:156866850', '2017-07-27 00:00:00', 'Vendedor', 'cecyledesma1968@gmail.com', '1', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (194, '2017-07-26 00:00:00', 33430155, 'SALOMON', 'Gustavo Adolfo', 'Vta de de indumentaria - Elementos de tecnologia (celulares - acc. - pendrive - ect)', '9 de julio 679', 2284, 25, 'Cel.:153597140', '2017-07-26 00:00:00', 'Vendedor', 'gustavosalomon1987@hotmail.com', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (195, '2017-07-27 00:00:00', 32413153, 'SALAS', 'Maria del Milagro', 'Odontologia en Gral. - protesis ', 'Crisostomo Alvarez 973 ', 2386, 25, 'Cel.:155641826', '2017-07-27 00:00:00', 'Odontologia', 'mariadelmilagrosalas@hotmail.com', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (196, '2017-07-27 00:00:00', 29666863, 'REINOSO', 'Nancy Veronica', 'Vta. De ropa y Artesanias ', 'Bº 1ero de Noviembre - Mza.:B Lote:30 ', 2327, 25, 'Cel.:153023538', '2017-07-27 00:00:00', 'Vendedor', 'veromocha@hotmail.com', '1', 'SALAS Ema Paula', 26783435, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (197, '2017-07-27 00:00:00', 27652095, 'SANCHEZ', 'Patricia Beatriz', 'Vta. De ropa y calzados ', 'Ramirez de Velazco 1711', 2386, 25, 'Cel.:155247816 - Fijo:4552481', '2017-07-27 00:00:00', 'Vendedor', 'aaa@aaa.com', '1', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (198, '2017-07-27 00:00:00', 17376829, 'GOMEZ', 'Griselda Fatima ', 'Comunicadora Social - Dictado de curos y capacitaciones - Vta de ropa ', 'Peru 1598 ', 2387, 25, 'Cel.:155526159', '2017-07-27 00:00:00', 'Docencia', 'griseldafgomez@gmail.com', '2', 'LEMOS Juan Carlos', 14966222, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (199, '2017-07-28 00:00:00', 41495536, 'ARAGON', 'Monica', 'Vta. De Ropa', 'Buenos Aires 681', 2386, 25, 'Cel.: 153556600', '2017-07-28 00:00:00', 'Comerciante', 'monicadearagon@hotmail.com', '2', 'LLANOS Domingo', 14410324, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (200, '2017-07-28 00:00:00', 26446937, 'SOSA', 'Jose Manuel', 'Vta. De Celulares', 'Av. Rivadavia 439', 2276, 25, 'Fijo: 4942227', '2017-07-28 00:00:00', 'Comerciante', 'jose_manuel_sosa@hotmail.com', '3', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (201, '2017-07-27 00:00:00', 36869832, 'ALE', 'Erika Natalia', 'Vta. Y Reparaciones de Celulares - Accesorios', 'Colon 91', 2294, 25, 'Cel.: 153387924', '2017-07-27 00:00:00', 'Comerciante', 'erika_ale09@hotmail.com', '3', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (202, '2017-07-25 00:00:00', 14226607, 'ALLEGRI', 'Ana Maria Patricia', 'Auxiliar en Cosmeatria - Maquillaje', 'Rivadavia 850 - Block 2', 2386, 25, 'Cel.: 156814432 - Fijo: 4211984', '2017-07-25 00:00:00', 'Estilista', 'anaanzorenacosmetics@gmail.com', '1', 'GARCIA FOUCAULT Julio', 23473898, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (203, '2017-07-28 00:00:00', 29240722, 'FLORES', 'Luis Gustavo', 'Polirubro - Reparacion y Vta. De Celulares', 'Av. San Martin 28 - San Pablo', 2385, 25, 'Cel.: 156988653 - Fijo: 4917920', '2017-07-28 00:00:00', 'Comerciante', 'luigiflores888@gmail.com', '2', 'ZARATE Daniela Carina', 30766926, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (204, '2017-07-26 00:00:00', 22180003, 'CONTRERAS', 'Manuel Alberto', 'Diseñador de Ropa - Vestidos', 'Bernabe Araoz 140 - Piso 4 - Depto 17', 2386, 25, 'Cel.: 155272918', '2017-07-26 00:00:00', 'Diseño', 'manuelcontreras40@yahoo.com.ar', '1', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (205, '2017-07-27 00:00:00', 14896556, 'SILVA', 'Luis Alberto', 'Servicio Integral', 'Marco Avellaneda 2201', 2386, 25, 'Cel.: 154133412', '2017-07-27 00:00:00', 'Mecanica de Atomotor', 'aaa@aaa.com', '1', 'SILVA Andrea', 40215644, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (206, '2017-07-26 00:00:00', 28290246, 'PERALTA', 'Natalia Gabriela', 'Vta. De Ropa y Calzado', 'Blas Parera 1600', 2386, 25, 'Cel.: 155985212', '2017-07-26 00:00:00', 'Vendedor', 'natalia.peralta.np@gmail.com', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (207, '2017-07-27 00:00:00', 20284775, 'HUACOLLO', 'Jorge', 'Eventos - Luces y Musica para Fiestas', 'Congreso 1298', 2386, 25, 'Cel.: 154170925', '2017-07-27 00:00:00', 'Servicios para fiesta', 'huacollo4@hotmail.com', '4', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (208, '2017-07-27 00:00:00', 31770532, 'HELGUERO', 'Maria del Carmen', 'Vta. De Ropa y Calzado', 'Rivadavia 470', 2312, 25, 'Cel.: 155071345', '2017-07-27 00:00:00', 'Comerciante', 'helgueromaria@yahoo.com.ar', '3', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (209, '2017-07-28 00:00:00', 34356567, 'AMADO', 'Mauro Esteban', 'Vta. De Ropa de Temporada y Celulares', 'Antartida Argentina 987', 2284, 25, 'Cel.: 155499549', '2017-07-28 00:00:00', 'Vendedor', 'mauro_2_4@hotmail.com', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (210, '2017-07-19 00:00:00', 31323215, 'FERRARI', 'Marcela Maria', 'Odontologia en gral. ', 'Jose colombres 369', 2386, 25, 'Cel.:154159154 ', '2017-07-19 00:00:00', 'Odontologia', 'marferrari17@hotmail.com', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (211, '2017-07-27 00:00:00', 26981738, 'CABRERA', 'Maria de las Mercedes', 'Pasteleria - Reposteria - Mesas dulces', 'Martin Fierro 839', 2284, 25, 'Cel.:156821083', '2017-07-27 00:00:00', 'Gastronomia', 'kikumatta-1979@hotmail.com', '2', 'MATTA Luis Eduardo', 25380993, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (212, '2017-07-25 00:00:00', 34953835, 'LEDESMA', 'Franco Rafael', 'Lubricentro', 'Francisco de Aguirre 1540', 2386, 25, 'Cel.: 153578861', '2017-07-25 00:00:00', 'Comerciante', 'frafa0791@gmail.com', '1', 'ROSALES Santiago', 38745341, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (213, '2017-07-26 00:00:00', 33977060, 'ANSONNAUD', 'Martin Alejandro', 'Vta de Ceculares - Accesorios y Calzados Deportivos. Venta On line.', 'Pje. Payro 3149', 2386, 25, 'Cel.: 155982099', '2017-07-26 00:00:00', 'Vendedor', 'tincho_3k3_taam@hotmail.com', '1', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (214, '2017-07-26 00:00:00', 16588555, 'SILVA', 'Gerardo Alfredo', 'Trabajos en general', 'Rivadavia 1678', 2386, 25, 'Cel.: 155106739', '2017-07-26 00:00:00', 'Mecanica de Atomotor', 'alfredo.silva64@hotmail.com', '4', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (215, '2017-07-26 00:00:00', 25843812, 'QUINTEROS', 'Walter Eduardo', 'Reparacion y Venta de Celulares y Accesorios - Informatica - Instalaciones de Cam. De Seguridad y Cableados de Red', 'Av. Siria 1365', 2386, 25, 'Cel.: 154153482', '2017-07-26 00:00:00', 'Comerciante', 'walterequinteros@gmail.com', '1', 'DIAZ Maria Margarita', 29788961, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (216, '2017-07-27 00:00:00', 34285014, 'AGÜERO', 'Maria Jose', 'Diseñadora de Ropa de Mujer - Pintura sobre jeans', 'Marcos Paz 913 - 2do Piso - Depto 7', 2386, 25, 'Cel.: 155857919', '2017-07-27 00:00:00', 'Showroom', 'mjaguero90@gmail.com', '3', 'LOPEZ DILASCIO Lourdes', 34287708, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (217, '2017-07-26 00:00:00', 35484662, 'MANSILLA', 'Mariana Denise', 'Agencia - Vta de Autos y Motos', 'Av. Roca 2400', 2386, 25, 'Cel.: 156408434', '2017-07-26 00:00:00', 'Comerciante', 'aaa@aaa.com', '3', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (218, '2017-07-25 00:00:00', 26869327, 'ALBORNOZ', 'Silvia Alejandra', 'Vta de Ropa - Calzados ', 'Rivadavia 470', 2312, 25, 'Cel.:03863-15411004', '2017-07-25 00:00:00', 'Comerciante', 'aaa@aaa.com', '3', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (219, '2017-07-25 00:00:00', 34719506, 'MARCHESE', 'Jose Nicolas', 'Vta de Celulares - Serv. Tecnico - Vta de accesorios', 'Salta 78 - Pje. Lugones 206', 2386, 25, 'Cel.:156677799 - Fijo:4209318', '2017-07-25 00:00:00', 'Comerciante', 'nico.marhese@hotmail.com', '3', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (220, '2017-07-10 00:00:00', 8285083, 'BRICEÑO', 'Alberto Francisco', 'Plomero - Gasista Matriculado', 'Madrid 776', 2386, 25, 'Cel.:154734961', '2017-07-10 00:00:00', 'Construccion', 'aaa@aaa.com', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (221, '2017-07-26 00:00:00', 21336091, 'LOPEZ', 'Miguel Angel', 'Vta. De Motos y Autos Usados', 'Av. Independencia 1564', 2386, 25, 'Cel.: 156954838', '2017-07-26 00:00:00', 'Comerciante', 'lopezmiguelangel515@gmail.com', '3', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (222, '2017-07-26 00:00:00', 31353316, 'BAZAN', 'Pedro Rene', 'Vta de Neumaticos Nuevos y Usados', 'San Martin 413', 2312, 25, 'Cel.: 154676067 - Fijo Local: 03863-466757 - Casa: 03863-466941', '2017-07-26 00:00:00', 'Comerciante', 'locoporlosfierros_rene@hotmail.com', '3', 'BAZAN Pedro Rene', 12346462, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (223, '2017-07-26 00:00:00', 29835712, 'ESPARSA', 'Lorena', 'Vta. De Celulares', 'San Martin 272', 2312, 25, 'Cel.: 156511129', '2017-07-26 00:00:00', 'Comerciante', 'dragon.gsm@hotmail.com', '3', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (224, '2017-07-26 00:00:00', 30807633, 'MARTEL', 'Maria Jose', 'Vta. De Ropa Femenina y de Niños por Mayor y Menor', 'Salta 214', 2386, 25, '154-661810', '2017-07-26 00:00:00', 'Comerciante', 'aaa@aaa.com', '3', 'GOMEZ Carolina de los Angeles', 36838867, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (225, '2017-07-25 00:00:00', 22429881, 'SORIA', 'Corina Cecilia', 'Diseñadora - Elaboracion y Venta de Perfumes y Tejidos', 'Lamadrid 450', 2386, 25, 'Cel.: 155664336 - Fijo: 4343765', '2017-07-25 00:00:00', 'Comerciante', 'marquezzaccesorios@hotmail.com', '3', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (226, '2017-07-26 00:00:00', 26973809, 'RUISEÑOR', 'Monica Analia', 'Vta de Ropa y Calzados', 'Rivadavia 447', 2312, 25, 'Fijo: 3863-462649', '2017-07-26 00:00:00', 'Comerciante', 'bettyanamodas@gmail.com', '3', 'HERRERA Ariel', 25632474, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (227, '2017-07-25 00:00:00', 25740879, 'AVILA', 'Martin Armando', 'Herreria - Carpinteria - Pintura - Electricidad', 'Paso de los Andes 241', 2386, 25, 'Cel.: 154646776', '2017-07-25 00:00:00', 'Construccion', 'aaa@aaa.com', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (228, '2017-07-25 00:00:00', 35806481, 'LUCERO', 'Maria Belen', 'Vta de Ropa', 'Rivadavia 470 - Local 12', 2312, 25, 'Cel.: 03865-15320673', '2017-07-25 00:00:00', 'Comerciante', 'belen_ml34@hotmail.com', '3', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (229, '2017-07-25 00:00:00', 22394847, 'ARRIETA ', 'Marta Nancy', 'Tratamientos corporales - Vta de ropa - Accesorios ', 'Bolivar 849 - Planta baja - Depto.:4', 2386, 25, 'Cel.:153562625', '2017-07-25 00:00:00', 'Esteticista', 'nancyarrieta40@gmail.com', '3', 'CARRIZO Julieta', 35195462, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (230, '2017-07-25 00:00:00', 40827721, 'VALLEJO', 'Lucia', 'Vta. De ropa - Calzados - Accesorios', 'Roca 391', 2384, 25, 'Cel.:154464929', '2017-07-25 00:00:00', 'Vendedor', 'lucia_04@hotmail.com', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (231, '2017-07-25 00:00:00', 32206642, 'LOSSI', 'Adriana Emilse', 'Vta de Ropa - Calzados - Accesorios - Joyas', 'Paso de los Andes 158', 2284, 25, 'Cel.:156591766', '2017-07-25 00:00:00', 'Vendedor', 'aaa@aaa.com', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (232, '2017-07-26 00:00:00', 26137758, 'JEREZ', 'Marcela del Valle', 'Vta de ropa - Calzados - Accesorios - Marroquineria - Cosmetologia - Maquillaje', 'Crisostomo Alvares 1591', 2386, 25, 'Cel.:155742211', '2017-07-26 00:00:00', 'Showroom', 'marceaynitom@hotmail.com', '4', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (233, '2017-07-25 00:00:00', 14359113, 'AVILA', 'Mario Oscar', 'Vta. De cachorros - accesorios para mascotas ', 'Pje. Rizzato 765', 2386, 25, 'Cel.:155309865', '2017-07-25 00:00:00', 'Vendedor', 'moatonio@yahoo.com.ar', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (234, '2017-07-24 00:00:00', 14225191, 'PACHECO VILLAREAL', 'Honorio Ricardo', 'Gasista Matriculado - Trabajos en General ', 'Bº Los Positos - Mza.:C Cs.:49', 2386, 25, 'Cel.:154490278', '2017-07-24 00:00:00', 'Construccion', 'aaa@aaa.com', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (235, '2017-07-25 00:00:00', 38115851, 'ANDRADE', 'Maico Hugo', 'Peluqueria - masajes - belleza de manos y  pies - Vta de poductos de estetica y accesorios', 'Chacabuco 585 - Muñecas 469', 2386, 25, 'Cel.:156176428 ', '2017-07-25 00:00:00', 'Estilista', 'andrademaico794@gmail.com', '2', 'ANDRADE Josefina Noemi', 30540956, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (236, '2017-07-25 00:00:00', 23519719, 'PEREZ ACOSTA', 'Leonardo Gabriel', 'Herreria - Durlock - Electricidad - Vta de Artesanias de Hierro y Madera', 'Colombia 1531', 2386, 25, 'Cel.: 155390047 - Fijo: 4330115', '2017-07-25 00:00:00', 'Construccion', 'leogpacosta@hotmail.com', '4', 'ROGER Julieta Amanda', 24982635, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (237, '2017-07-25 00:00:00', 33230682, 'INFANTE', 'Juan Salvador', 'Vta. De Calzados - Botines Nike y Adidas', 'Ernesto Padilla 40 - Torre Central 1 - Depto L', 2386, 25, 'Cel.: 155669416', '2017-07-25 00:00:00', 'Showroom', 'juaninfante455@hotmail.com', '1', 'CARRIZO Jessica Jacqueline', 29183986, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (238, '2017-07-24 00:00:00', 20179267, 'ROTONDO', 'Silvia del Valle', 'Trabajos en gral.', 'Av. Ejercito del Norte 429', 2386, 25, 'Cel.: 156303833', '2017-07-24 00:00:00', 'Odontologia', 'silvia_rotondo@hotmail.com', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (239, '2017-07-24 00:00:00', 31052657, 'RODRIGUEZ', 'Soledad Cecilia', 'Vta. De Indumentaria y Calzados', 'Blas Parera 1182', 2386, 25, 'Cel.: 153891612', '2017-07-24 00:00:00', 'Comerciante', 'aaa@aaa.com', '1', 'COMANDONA Walter Alejandro', 29081879, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (240, '2017-07-24 00:00:00', 28291717, 'LAZARTE', 'Federido Alejo', 'Vta. de Muebles de Algarrobo', 'Gobernador del Campo 85', 2386, 25, 'Cel.: 156615694', '2017-07-24 00:00:00', 'Comerciante', 'alejo.lazt@gmail.com', '1', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (241, '2017-07-19 00:00:00', 23564965, 'COLOMBO', 'Monica Lucia', 'Vta. De Ropa - Regaleria', 'Juan B. Justo 2940', 2327, 25, 'Cel.: 153278554 - Fijo: 4272242', '2017-07-19 00:00:00', 'Comerciante', 'rosio1998molina@gmail.com', '3', 'RIVAS Rosa del Valle', 11065912, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (242, '2017-07-20 00:00:00', 30841105, 'KAUFMANN', 'Federico Juan', 'Limpieza de Tapizados en gral.', 'Federico Elguera 480', 2386, 25, 'Cel.: 153275075', '2017-07-20 00:00:00', 'Tapiceria', 'kaufmannfede@gmail.com', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (243, '2017-07-24 00:00:00', 14480594, 'FIGUEROA', 'Carlos Humberto', 'Trabajos de Construccion en gral.', 'Pje. Martin Fierro 725', 2300, 25, 'Cel.: 154069376', '2017-07-24 00:00:00', 'Construccion', 'aaa@aaa.com', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (244, '2017-07-20 00:00:00', 92973066, 'MENDOZA', 'Juan', 'Vta. De Ropa y Calzados', 'San Martin 35', 2385, 25, 'Ce.: 155-815201 - Fijo: 4813278', '2017-07-20 00:00:00', 'Comerciante', 'jm.calzado@hotmail.com', '3', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (245, '2017-07-20 00:00:00', 13338011, 'ARACENA', 'Daniel Alfredo', 'Venta por Mayor y Menor de Productos Odontologicos', 'Baltazar Aguirre 520', 2386, 25, 'Cel.: 153495051', '2017-07-20 00:00:00', 'Distribuidor de Productos', 'alfredoaracena@hotmail.com', '2', 'CANTO Ester Graciela', 13045521, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (246, '2017-07-19 00:00:00', 28742236, 'LOPEZ', 'Fabiana del Valle', 'Vta de Ropa - Perfumes - Regaleria', 'Bº 140 Viv. - Mzn E - Casa 20', 2384, 25, 'Cel.: 156757227', '2017-07-19 00:00:00', 'Comerciante', 'fabianalopez252@gmail.com', '2', 'RESOLA Juan Ramon', 28038441, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (247, '2017-07-21 00:00:00', 25503908, 'CHINCHILLA DE ROLDAN', 'Natalia Nerina', 'Textiles - Decoracion de Hogar - Ferias', 'Los Crespones 432 - Bº Apen', 2327, 25, 'Cel.: 155065048', '2017-07-21 00:00:00', 'Artesanias', 'natalitatuc76.nr@gmail.com', '3', 'POMA Marcos Adrian', 26676090, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (248, '2017-07-20 00:00:00', 16483423, 'CARVAJAL', 'Mario', 'Vta de muebles ', 'Chiclana 1357 ', 2386, 25, 'Cel.:153656109', '2017-07-20 00:00:00', 'Vendedor', 'aaa@aaa.com', '3', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (249, '2017-07-20 00:00:00', 33920566, 'ALVARO', 'Jose Luis', 'Servicio Tecnico para Celulares y Vta de accesorios', 'San Martin 48', 2385, 25, 'Cel.:155294916 - Fijo:4813236', '2017-07-20 00:00:00', 'Tecnico/a', 'jorge162534@hotmail.com', '3', 'RUIZ Gabriela Veronica', 37104380, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (250, '2017-07-20 00:00:00', 29430777, 'PALOMINO', 'Rafael Eduardo', 'Proveedor de  Celulares - Bazar - Indumentaria - Juguetes y art. De temporada', 'Las Heras 1243', 2386, 25, 'Cel.:155532097', '2017-07-20 00:00:00', 'Vendedor', 'palominorafael123@gmail.com', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (251, '2017-07-20 00:00:00', 94078521, 'YANAGE CONDORI', 'Elizabeth', 'Vta de Ropa y Calzado', 'San Martin 114', 2385, 25, 'Cel: 156242023', '2017-07-20 00:00:00', 'Comerciante', 'aaa@aaa.com', '3', 'CORDOBA Maria Rosa', 28093647, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (252, '2017-07-18 00:00:00', 41534789, 'RODRIGUEZ', 'Gabriela Josefina', 'Vta de Indumentaria - Calzados - Accesorios', 'Bº Soldado Tucumano - Mza.:A Lote:13', 2284, 25, 'Cel.:156837367', '2017-07-18 00:00:00', 'Vendedor', 'aaa@aaa.com', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (253, '2017-07-19 00:00:00', 28790224, 'JIMENEZ', 'Carlos Alberto', 'Mecanico de Motos', 'Av. Alem 1345', 2386, 25, 'Cel: 156485235', '2017-07-19 00:00:00', 'Mecanica de Atomotor', 'aaa@aaa.com', '1', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (254, '2017-07-19 00:00:00', 18873444, 'GARRIDO', 'Viviana', 'Vta. de Indumentaria', 'Av. Juan B. Justo 3048', 2386, 25, 'Cel: 155754129', '2017-07-19 00:00:00', 'Comerciante', 'vivianagarrido@hotmail.es', '3', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (255, '2017-07-19 00:00:00', 14410098, 'ACOSTA', 'Graciela Delina', 'Vta. De Indumentaria de Niños', 'Juan B. Justo 3215', 2386, 25, 'Cel: 155120240', '2017-07-19 00:00:00', 'Comerciante', 'aaa@aaa.com', '3', 'VILLAFAÑE ACOSTA Milagro', 39355900, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (256, '2017-07-18 00:00:00', 28958241, 'FERRARE', 'Ruben Ivan', 'Vta. De Indumentaria, Calzados y Accesorios.', 'Diego de Roja 60', 2284, 25, 'Cel: 155706688', '2017-07-18 00:00:00', 'Vendedor', 'transporteferrare@hotmail.com', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (257, '2017-07-18 00:00:00', 37502326, 'SALAZAR', 'Daiana Gissel', 'Vta. De Indumentaria, Calzados y Accesorios', 'Congreso 143', 2284, 25, 'Cel: 152002809', '2017-07-18 00:00:00', 'Comerciante', 'giisselsalazarr@gmail.com', '2', 'VALDEZ Gustavo David', 37502086, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (258, '2017-07-18 00:00:00', 29338596, 'SORIA', 'Marco Rodolfo', 'Vta. De Productos de Peluqueria', 'Pje. La Pampa Nº27', 2386, 25, 'Cel: 156041816 - Fijo: 4245992', '2017-07-18 00:00:00', 'Vendedor', 'marcoso03@hotmail.com', '3', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (259, '2017-07-18 00:00:00', 16541951, 'RODRIGUEZ', 'Francisco Daniel ', 'Vta de Productos Omnilife', 'Choele Choel 687 - Bº Luz y Fuerza - Los positos', 2386, 25, 'Cel.:156040081 ', '2017-07-18 00:00:00', 'Vendedor', 'fdr713@gmail.com', '1', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (260, '2017-07-18 00:00:00', 41496740, 'GRAMAJO', 'Guillermo Federico', 'Tapizados - Vta de muebles - Trabajos en Durlock', 'Bº El Sol - Mza.:J Cs.:21', 2327, 25, 'Cel.:156361416 - Fijo:4370333', '2017-07-18 00:00:00', 'Vendedor', 'aaa@aaa.com', '1', 'GRAMAJO Luciano Emanuel', 38216359, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (261, '2017-07-14 00:00:00', 31809198, 'CASTRO', 'Carlos Alberto', 'Trabajos en gral.', 'Pje William 2527 - Bº Echeverria', 2386, 25, 'Cel: 154433841', '2017-07-14 00:00:00', 'Mecanica de Atomotor', 'carlosk_33@hotmail.com', '1', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (262, '2017-07-17 00:00:00', 17752369, 'ALVAREZ', 'Monica Mabel', 'Vta. De productos OMNILIFE - NUTRILIFE - TUPPERWARE', 'Pje D Andrea 3461', 2386, 25, 'Cel.:155175694 - Fijo:4330693', '2017-07-17 00:00:00', 'Vendedor', 'mabelmamani369@gmail.com', '4', 'ALVAREZ Jorge Augusto', 26455762, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (263, '2017-07-14 00:00:00', 38246327, 'RODRIGUEZ', 'Gonzalo EDUARDO', 'Tecnico en Refrigeracion Industrial - trabajos en gral. ', 'Bº Teran - Inca Garcilazo 2231', 2386, 25, 'Cel.:156172561', '2017-07-14 00:00:00', 'Tecnico/a', 'gonzarojo1994@gmail.com', '3', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (264, '2017-07-13 00:00:00', 27370689, 'FERNANDEZ', 'David Fernando', 'Trabajos en gral. - Electricidad - Pintura', 'Uruguay 1847', 2386, 25, 'Cel: 154650162', '2017-07-13 00:00:00', 'Construccion', 'davidfernandez231@gmail.com', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (265, '2017-07-17 00:00:00', 21978616, 'REVOLLO', 'Hector Carlos', 'Reparacion y Venta de Celulares y Accesorios', 'Libertad 190 - Local 8', 2385, 25, 'Cel: 155788883', '2017-07-17 00:00:00', 'Tecnico/a', 'macarbims@gmail.com', '2', 'PEREYRA Olga Elizabeth', 22612454, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (266, '2017-07-14 00:00:00', 33825789, 'AUFREDE', 'Fernando Nicolas', 'Plomeria - Gasista - Instalaciones electricas - Albañileria - ', 'Bº 240 Viv. Mza.:L Cs.:10', 2386, 25, 'Cel.:153484883', '2017-07-14 00:00:00', 'Construccion', 'nicolaaufrede@hotmail.com', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (267, '2017-07-15 00:00:00', 30835386, 'BOJANICH', 'Maria Emilia', 'Tejidos artesanales ', 'Matheu 2160', 2386, 25, 'Cel.:155502239 - Fijo:4363451', '2017-07-15 00:00:00', 'Artesanias', 'emilia.bojanich@gmail.com', '3', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (268, '2017-07-13 00:00:00', 37499587, 'RAPETTI', 'Erik Maximiliano', 'Calzados Hombre y Mujer', 'Florida 2661', 2386, 25, 'Cel: 153482661', '2017-07-13 00:00:00', 'Showroom', 'erikrapetti@gmail.com', '1', 'ROMERO Graciela Marta', 16811556, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (269, '2017-07-14 00:00:00', 36037837, 'RODRIGUEZ', 'Leila Belen', 'Artesana - Accesorios de Bebe - Ferias', 'Bº Lapacho Sur - Mz L - Casa 4', 2386, 25, 'Cel: 155050532', '2017-07-14 00:00:00', 'Showroom', 'leilarodriguez87@hotmail.com', '3', 'DIAZ Damian Ramiro', 30531318, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (270, '2017-07-13 00:00:00', 28884237, 'QUINTANA', 'Marcos Antonio', 'Trabajos en gral.', 'Las Piedras 990', 2386, 25, 'Cel: 155614197', '2017-07-13 00:00:00', 'Peluqueria', 'aaa@aaa.com', '3', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (271, '2017-07-14 00:00:00', 33165559, 'PEREZ', 'Marianela del Carmen', 'Polirubro - Mini service - Merceria - Bazar', 'Bº Santa Ines - Mz K - Lote 9 - Cruz Alta', 2293, 25, 'Cel: 156116513 - Fijo: 4916191', '2017-07-14 00:00:00', 'Comerciante', 'marianelaperez2016@gmail.com', '3', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (272, '2017-07-14 00:00:00', 26676074, 'MATURANA', 'Susana Cecilia', 'Esteticista - Cosmetologia - Masajes', 'Las Heras 270', 2386, 25, 'Cel: 153035208', '2017-07-14 00:00:00', 'Esteticista', 'su.matu@hotmail.com.ar', '5', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (273, '2017-07-13 00:00:00', 95495700, 'CORTES', 'Jhoan Sebastian', 'Tecnico Electronico - Reparacion y Vta. de equipos tecnologicos - LUTHIER ', 'Florida 570', 2386, 25, 'Cel.:155097202', '2017-07-13 00:00:00', 'Tecnico/a', 'jscortes25@hotmail.com', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (274, '2017-07-13 00:00:00', 34725620, 'SILES', 'Juan Ignacio', 'Centro de estetica - Alquiler de maquinaria para estetica', 'Junin 605 / Las Heras 516 - 1º A', 2386, 25, 'Cel.:0388-154305433', '2017-07-13 00:00:00', 'Comerciante', 'juanignaciosiles@gmail.com', '3', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (275, '2017-07-12 00:00:00', 23069266, 'APAZA', 'Adrian Esteban ', 'Corralon - Ferreteria', 'Av. Americo Vespucio y Pelegrini ', 2386, 25, 'Fijo: 4367255', '2017-07-12 00:00:00', 'Comerciante', 'aaa@aaa.com', '3', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (276, '2017-07-12 00:00:00', 33404112, 'RAMAYO DIP', 'Maria Celeste', 'Odontologia en gral.', 'Av. Mate de Luna 1620', 2386, 25, 'Cel: 154069198', '2017-07-12 00:00:00', 'Odontologia', 'chelus47@hotmail.com', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (277, '2017-07-13 00:00:00', 24932318, 'VALDEZ OCAMPO', 'Carlos Eduardo Andres', 'Tasaciones', 'Av. Ejercito del Norte 487', 2386, 25, 'Cel: 155936375 - Fijo: 4518812', '2017-07-13 00:00:00', 'Martillero Publico', 'valdezocampomarti@gmail.com', '5', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (278, '2017-07-12 00:00:00', 29082157, 'OLASSO MEDICI', 'Armando Rafael', 'Mecanica en gral', 'Calle 4 - Nº70 - Villa Mariano Moreno', 2327, 25, 'Cel: 155840989', '2017-07-12 00:00:00', 'Mecanica de Atomotor', 'armando.olassomedici@gmail.com', '1', 'OLASSO MEDICI Pablo Daniel', 26982312, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (279, '2017-07-13 00:00:00', 18465871, 'ARAGON', 'Hector Antonio', 'Publicidad en Radio y Eventos Empresariales', 'San Martin 285 - 4 B - Frente', 2386, 25, 'Cel: 154663797', '2017-07-13 00:00:00', 'Publicidad', 'impactoproduccionesjh@gmail.com', '4', 'ANDREA DE VEGA Violeta', 37313403, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (280, '2017-07-12 00:00:00', 33538746, 'JIMENEZ', 'Rene Alberto', 'Tecnico en rep. De celulares - Vta de acc. Y equipos ', 'Bº Finca San Luis - Pje. Gilda s/n - CRUZ ALTA', 2384, 25, 'Cel.:153875814', '2017-07-12 00:00:00', 'Tecnico/a', 'renealbertojimenez7@gmail.com', '3', 'RODRIGUEZ Erika Judith ', 35322516, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (281, '2017-07-12 00:00:00', 35813697, 'CORONEL', 'Oscar Alberto', 'Durlock - Electricidad - Pintura', 'Malavia 856', 2386, 25, 'Cel: 153567442', '2017-07-12 00:00:00', 'Construccion', 'aaa@aaa.com', '4', 'NUÑEZ Mario', 22558311, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (282, '2017-07-11 00:00:00', 10925548, 'GONZALEZ', 'Azucena Virginia', 'Peluqueria - Depilacion - Manicura', 'Galeria Mendoza - Local 15', 2386, 25, 'Cel: 155179445', '2017-07-11 00:00:00', 'Estilista', 'azuvigonzalez@yahoo.com.ar', '3', 'CAINZO Julia', 27594980, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (283, '2017-07-12 00:00:00', 27324124255, 'CHAUD DANIEL', 'Vanesa Daniela', 'Familia - Civil - Cobros Ejecutivos', 'Melchora F. de Cornejo 577 - Rosario de la Frontera - Salta', 2386, 25, 'Cel: 155341646 - 156844599', '2017-07-12 00:00:00', 'Abogacia', 'vanesachaud_tuc@hotmail.com.ar', '5', 'CHAUD DANIEL Silvia G.', 31425772, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (284, '2017-07-11 00:00:00', 17268977, 'TOLEDO', 'Victor Hugo', 'Gasista matriculado - Instalaciones electricas - Trabajos de construccion en gral. ', 'Pje. Francisco de Lamadrid 841 ', 2386, 25, 'Cel.:154805875', '2017-07-11 00:00:00', 'Construccion', 'victorht40@hotmail.com', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (285, '2017-07-10 00:00:00', 32731559, 'ALVARADO', 'Jose Manuel', 'Vta. De celulares - accesorios - Electrodomesticos - Ropa - Calzados - Art. De temporada', 'Esquina San Cayetano y San Martin - El Chañar', 2287, 25, 'Cel.:155504395', '2017-07-10 00:00:00', 'Vendedor', 'alvarado.jmanuel@gmail.com', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (286, '2017-06-28 00:00:00', 25318614, 'MAI', 'Cristian Sebastian', 'Vta de Celulares y Lubricentro', 'Av. Roca 551', 2386, 25, 'Cel: 155720078', '2017-06-28 00:00:00', 'Comerciante', 'cristianmai40@gmail.com', '1', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (287, '2017-07-07 00:00:00', 24802837, 'FUENSALIDA', 'Gustavo Ariel', 'Taller mecanico - servicio y reparacion en camiones y vehiculos de menor porte ', 'william Cross 276 - El Colmenar ', 2327, 25, 'Cel.:155580102', '2017-07-07 00:00:00', 'Mecanica de Atomotor', 'aaa@aaa.com', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (288, '2017-07-07 00:00:00', 26455603, 'BRITO', 'Maria Jose', 'Peluqueria canina - Vta de accesorios para mascotas - vta varia.', 'Obispo Colombres 500', 2284, 25, 'Cel.:155865098', '2017-07-07 00:00:00', 'Comerciante', 'majobri5@gmail.com', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (289, '2017-06-30 00:00:00', 27371984, 'BUSTO', 'Carlos Jose Maria', 'Serv. Tecnico de Cel. - Turismo: Viajes a Cancha de River', 'Av. Alem 1710', 2386, 25, 'Cel: 156060303', '2017-06-30 00:00:00', 'Tecnico/a', 'jose.patoba@gmail.com', '1', 'BUSTO Jose Nahuel', 44478878, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (290, '2017-07-07 00:00:00', 29430088, 'MONTI', 'Gonzalo Dario', 'Vta de Ropa - Calzados y Accesorios para celulares', '25 de Mayo 314 - El Galpon - Salta', 2386, 25, 'Cel: 155477560 - 03876-15412613', '2017-07-07 00:00:00', 'Comerciante', 'gonzalom1313@gmail.com', '5', 'TREJO Paola Carolina', 26914247, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (291, '2017-07-06 00:00:00', 29081698, 'ROA', 'Antonia Victoria', 'Vta. De Indumentaria - Accesorios - Calzados - Plomeria y gas', 'Pje. Gaona 900 - Bº Sibantos', 2327, 25, 'Cel.:154665797 - Fijo: 4277410', '2017-07-06 00:00:00', 'Vendedor', 'vikiroa_2@hotmail.com', '4', 'VILLALBA Franco Alfredo', 27944403, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (292, '2017-06-04 00:00:00', 27370086, 'GOYTIA', 'Claudia Beatriz', 'Indumentaria - Merceria - Regaleria y articulos varios', 'Las Heras 2300', 2386, 25, 'Cel: 156686974 Fijo: 4292618', '2017-06-04 00:00:00', 'Comerciante', 'claudiagoytiaindumentaria@gmail.com', '3', 'SORIA Rodolfo Maximiliano', 29532892, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (293, '2017-07-05 00:00:00', 29836129, 'FAUO', 'Walter Fabian', 'Corralon - Materiales para Construccion', 'Av. Democracia 342', 2386, 25, 'Cel: 154177827', '2017-07-05 00:00:00', 'Comerciante', 'aaa@aaa.com', '3', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (294, '2017-07-05 00:00:00', 33431922, 'FAUO', 'Sergio Emmanuel', 'Vta. De Vigas - Portones - Rejas', 'Eudoro Araoz 310', 2386, 25, 'Cel: 156790620', '2017-07-05 00:00:00', 'Herreria', 'sergiofauo@hotmail.com', '3', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (295, '2017-06-27 00:00:00', 32602505, 'RISSO', 'Anabella Lucia', 'Peluqueria en gral.', 'Pellegrini 52 - PB', 2386, 25, 'Cel: 153340077', '2017-06-27 00:00:00', 'Peluqueria', 'anabval23@hotmail.com', '4', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (296, '2017-07-04 00:00:00', 29532892, 'SORIA', 'Rodolfo Maximiliano', 'Electricidad ', 'La Plata 455', 2386, 25, 'Cel: 154684045 - Fijo: 3074960', '2017-07-04 00:00:00', 'Mecanica de Atomotor', 'maxitomy.ms@gmail.com', '3', 'GOYTIA Claudia', 27370086, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (297, '2017-06-29 00:00:00', 34186624, 'PIAMONTE', 'Maria Laura', 'Vta de Ropa - Accesorios', 'Don Bosco 4790', 2386, 25, 'Cel: 153399839', '2017-06-29 00:00:00', 'Showroom', 'domingohugobarbieri@gmail.com', '1', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (298, '2017-06-30 00:00:00', 30760123, 'CANCECO', 'Javier Gerardo', 'Motos - Ensambles', 'Miguel Lillo 468', 2386, 25, 'Cel: 155150510', '2017-06-30 00:00:00', 'Mecanica de Atomotor', 'aaa@aaa.com', '1', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (299, '2017-07-03 00:00:00', 26139007, 'CARDOZO', 'Sebastian', 'Vta de Ropa Femenina', 'Cristo Rey 184', 2300, 25, 'Cel: 156571922', '2017-07-03 00:00:00', 'Comerciante', 'aaa@aaa.com', '3', 'ESCUDERO, Cinthya Dorela', 33978923, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (300, '2017-07-03 00:00:00', 18203090, 'FERNANDEZ', 'Jose David', 'Vta de Autos y Motos', 'Juan Jose Paso 834', 2386, 25, 'Cel: 155035288', '2017-07-03 00:00:00', 'Comerciante', 'josedavidelgallego@gmail.com', '3', 'MONTENEGRO, Ricardo', 24253296, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (301, '2017-06-30 00:00:00', 41446590, 'BARCELLONA', 'Ana Sophia', 'Venta de Joyas - Accesorios', '25 de Mayo 1966', 2386, 25, 'Cel: 154190983', '2017-06-30 00:00:00', 'Showroom', 'sophiabarcellona98@gmail.com', '4', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (302, '2017-06-27 00:00:00', 14359041, 'DIP', 'Carlos Ruben', 'Lubricentro - Taller Mecanico', 'Colon y Matheu', 2386, 25, 'Cel: 156410813 - Fijo: 4232413', '2017-06-27 00:00:00', 'Mecanica de Atomotor', 'aaa@aaa.com', '3', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (303, '2017-06-30 00:00:00', 30835150, 'LO RE', 'Carla Vanina', 'Viajes de club Natacion y Gimnasia', 'Marcos Paz 2277 / Benjamin Araoz 400', 2386, 25, 'Cel.:155652756', '2017-06-30 00:00:00', 'Vendedor', 'aaa@aaa.com', '3', 'LEANDRINI Silvina ', 22336910, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (304, '2017-06-30 00:00:00', 32589486, 'DI CLEMENTE', 'Debora Noelia', 'Vta. de calzados', 'Constitucion 817', 2371, 25, 'Cel.:156125682', '2017-06-30 00:00:00', 'Vendedor', 'debo17gonz@gmail.com', '5', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (305, '2017-06-30 00:00:00', 11475676, 'GUTIERREZ', 'Josefa Mercedes', 'Vta. De ropa - cosmeticos - joyas en Oro y Plata', 'Ruta 305 - Km. 6 1/2', 2327, 25, 'Cel.:156416421', '2017-06-30 00:00:00', 'Vendedor', 'aaa@aaa.com', '5', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (306, '2017-06-30 00:00:00', 32412428, 'CANTARELLA', 'Noelia Romina', 'Vta de Joyas - Plata y oro - Acero', 'Ruta 305 - Km. 6 1/2 ', 2327, 25, 'Cel.:155504080', '2017-06-30 00:00:00', 'Vendedor', 'romicant86@gmail.com', '5', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (307, '2017-06-30 00:00:00', 32115953, 'VILLEGAS', 'Javier Nicolas', 'Reparacion de pc - Instalacion de redes - Vta. De insumos informaticos', 'Pje. Esperanza 1035', 2386, 25, 'Cel.:153045007', '2017-06-30 00:00:00', 'Tecnico/a', 'jnvillegas86@gmail.com', '4', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (308, '2017-06-09 00:00:00', 22877642, 'PUERTAS', 'Patricia del Carmen', 'Familia - Previsional ', 'Lamadrid 456 Piso:4 Dpto.:D / Bulnes 301 - Torre: C Piso:9º Dpto.:B', 2386, 25, 'Cel.:155604614', '2017-06-09 00:00:00', 'Abogacia', 'colbricchio@hotmail.com', '4', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (309, '2017-06-06 00:00:00', 28221967, 'COSTAZ', 'Aurora del Valle', 'Diseño Grafico - Diseñadora de interiores - Reposteria', 'Las Piedras 346 - Piso:2º Dpto.: C', 2386, 25, 'Cel.:155086809', '2017-06-06 00:00:00', 'Diseño', 'auroracostaz2013@hotmail.com', '4', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (310, '2017-06-30 00:00:00', 30117558, 'SORIA', 'Luis Daniel', 'Vta. De Casas Prefabricadas', 'Av. Roca 2937', 2386, 25, 'Cel: 155585179 - Fijo: 3075727', '2017-06-30 00:00:00', 'Comerciante', 'aaa@aaa.com', '4', 'SORIA Americo Luis', 13067157, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (311, '2017-06-28 00:00:00', 40357850, 'MORALES', 'Rene Alfredo', 'Gimnasio - Vta. De Suplemento Deportivos.', 'Calle 43 Nº270', 2327, 25, 'Cel: 156444054', '2017-06-28 00:00:00', 'Vendedor', 'aaa@aaa.com', '3', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (312, '2017-06-29 00:00:00', 14503558, 'GOMEZ', 'Ramon Aristobulo', 'Construccion en gral - Gasista matriculado', 'Bº Los Alamos - Mz B - Lote 42', 2276, 25, 'Cel: 154407376', '2017-06-29 00:00:00', 'Construccion', 'aaa@aaa.com', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (313, '2017-06-30 00:00:00', 39730885, 'VILLA', 'Micaela Constanza', 'Ropa y Calzado', 'Americo Vespucio 312', 2386, 25, 'Cel: 156681020 - Fijo: 4295712', '2017-06-30 00:00:00', 'Showroom', 'micaelaconstanzavilla@hotmail.com', '5', 'CAJAL Nestor Matias', 37457680, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (314, '2017-06-30 00:00:00', 27696909, 'MORALES', 'Italo Leonardo', 'Tecnico en refrigeracion - Instalacian - Reparacion y Mantenimiento de AA. Lavarropas y Heladeras', 'Av. Mitre y Santiago / Alberdi 2268', 2386, 25, 'Cel.:155281915 - Fijo:4290940', '2017-06-30 00:00:00', 'Tecnico/a', 'leonardomorales35@hotmail.com', '5', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (315, '2017-06-29 00:00:00', 34766122, 'MORHILL', 'Ivan Jose Francisco', 'Vta de Ladrillos y materiales para la construccion', 'Pje. Fray Manuel Perez 50 ', 2276, 25, 'Cel.:153313000', '2017-06-29 00:00:00', 'Vendedor', 'morhill66@gmail.com', '3', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (316, '2017-06-28 00:00:00', 31644399, 'MARCIGLIA', 'Diego', 'Vta. De elecetrodomesticos - muebles y art. Para el hogar', 'Santa fe 1250 / Av. Belgrano 2726', 2386, 25, 'Cel.:155841686', '2017-06-28 00:00:00', 'Comerciante', 'reciklamossh@hotmail.com', '3', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (317, '2017-06-29 00:00:00', 18187000, 'CORREA ZANETTA', 'Maria Belen', 'Medicina clinica y dermatologica - Tratamientos - Academia de REIKI (cursos,vta de libros e insumos)', 'Alberdi 201', 2386, 25, 'Cel.:153562271', '2017-06-29 00:00:00', 'Medicina ', 'cmaria_belen@hotmail.com', '3', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (318, '2017-06-29 00:00:00', 34873044, 'HOYOS', 'Ana Sofia', 'Vta. De Ropa - Calzados - Accesorios', 'Cordoba 285', 2386, 25, 'Cel: 155110378', '2017-06-29 00:00:00', 'Comerciante', 'sofiahoyos@live.com', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (319, '2017-06-27 00:00:00', 28101464, 'NICOLETTI', 'Marisa del Carmen', 'Vta de ropa femenina y articulos de bazar.', 'Laprida 116', 2386, 25, 'Cel: 154167491 - Fijo: 4617290', '2017-06-27 00:00:00', 'Comerciante', 'aaa@aaa.com', '5', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (320, '2017-06-29 00:00:00', 30000006, 'REINOSO', 'Natalia Paola', 'Indumentaria Deportiva - Palos de Hockey', 'Av. Marino Alfaro 960', 2386, 25, 'Cel: 155517959', '2017-06-29 00:00:00', 'Vendedor', 'natyreinoso83@hotmail.com.ar', '3', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (321, '2017-06-29 00:00:00', 41184252, 'HERRERA', 'Deborah Abigail Luciana', 'Ropa Femenina y Calzados', 'Villa Muñeca III - Mz. C - Lote 9', 2386, 25, 'Cel: 153652026', '2017-06-29 00:00:00', 'Showroom', 'aaa@aaa.com', '5', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (322, '2017-06-29 00:00:00', 23828074, 'ALVAREZ', 'Jose Benito', 'Alquiler de Salones de Fiesta y Serv. De Catering', 'Pje. Montserrat 2534', 2386, 25, 'Cel: 155716444 - Fijo: 4342234', '2017-06-29 00:00:00', 'Servicios para fiesta', 'josealvarez4317@gmail.com', '4', 'ALDERETE Claudia Cristina', 25735193, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (323, '2017-06-28 00:00:00', 33091133, 'LOBO', 'Walter Marcelo', 'Reparacion de Computadoras y Celulares . Vta. de Equipos', 'Fortunato Garcia 263', 2386, 25, 'Cel: 155760043', '2017-06-28 00:00:00', 'Comerciante', 'wal17011985@gmail.com', '4', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (324, '2017-06-21 00:00:00', 20273649493, 'ESTUDIO', 'CERVANTES', 'Estudio Juridico - Gestion de Cobranzas ', '9 de Julio 485 - Piso:4º  Of.: B / Lamadrid 456 - Piso:3º Of.: A', 2386, 25, 'Fijo:4202234', '2017-06-21 00:00:00', 'Abogacia', 'gustavo.gonzalez@soramus.com', '5', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (325, '2017-06-27 00:00:00', 28222969, 'VITORGAN', 'Eliana Celeste', 'Vta. De Indumentaria femenida en talles especiales - Accesorios', '\"Chacabuco 77 - Piso: 1º  / Av. Mate de Luna 1850 3º \"\"B\"\"\"', 2386, 25, 'Cel.:154540856', '2017-06-27 00:00:00', 'Showroom', 'modapertuttitalles@gmail.com', '4', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (326, '2017-06-28 00:00:00', 20498106, 'LESANO', 'Ricardo Pastor', 'Gasista - Construccion en gral.', 'Calle 21 Num. 260 - Villa Mariano Moreno', 2386, 25, 'Cel: 156712596', '2017-06-28 00:00:00', 'Construccion', 'aaa@aaa.com', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (327, '2017-06-28 00:00:00', 17312759, 'RODRIGUEZ', 'Abraham Julio', 'Gasista - Vta y Reparac. de Quemadores Industriales - Construccion en gral.', 'Justo B Teran 972', 2284, 25, 'Cel: 156432169', '2017-06-28 00:00:00', 'Construccion', 'cronosquem@gmail.com', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (328, '2017-06-28 00:00:00', 22877148, 'SUAREZ', 'Sergio David', 'Gasista - Electricista - Construccion en gral.', 'Justo de la Vega 1064', 2386, 25, 'Cel: 154699944', '2017-06-28 00:00:00', 'Construccion', 'sergiosuarez148@gmail.com', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (329, '2017-06-28 00:00:00', 29878468, 'OCAMPO', 'Nicolas Alberto', 'Alquiler de Salon de Fiestas', 'Corrientes 2363', 2386, 25, 'Cel: 154692247', '2017-06-28 00:00:00', 'Servicios para fiesta', 'nicolas783@hotmail.com', '4', 'COSTILLA Cynthia Giselle', 28221248, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (330, '2017-06-21 00:00:00', 16458022, 'CASCIOTTA', 'Sergio Daniel', 'Direccion Hidraulica - Tren delantero', 'San Luis 151', 2386, 25, 'Cel: 156080858', '2017-06-21 00:00:00', 'Mecanica de Atomotor', 's.casciotta@yahoo.com.ar', '1', 'RIGAZZIO Maria Jose', 16176644, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (331, '2017-06-28 00:00:00', 33374696, 'SALAZAR', 'Pablo Maximiliano', 'Taller de Herreria y Hojalateria', 'Bº Las Tipas - Mz 4 - Lote 17', 2327, 25, 'Cel: 155063802', '2017-06-28 00:00:00', 'Herreria', 'aaa@aaa.com', '2', 'NAVARRO Valeria del Valle', 26139965, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (332, '2017-06-15 00:00:00', 22073732, 'HERNANDEZ', 'Cesar Augusto', 'Instituto Tecnologico Tucuman - Capacitaciones Laborales', 'Lavalle 1341', 2386, 25, 'Fijos: 4204444 - 4243006 Cel: 156425547', '2017-06-15 00:00:00', 'Docencia', 'csaraugher@hotmail.com', '1', 'ALBA Antonio Ariel', 26827185, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (333, '2017-06-27 00:00:00', 23517055, 'CASAS', 'Carlos Manuel', 'Compra y Venta de Motos Usadas', 'Av. Roca 263', 2386, 25, 'Cel: 154482432', '2017-06-27 00:00:00', 'Comerciante', 'aaa@aaa.com', '5', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (334, '2017-06-28 00:00:00', 28221248, 'COSTILLA NAAMAN', 'Cynthia Giselle', 'Salon de Fiestas - Academia de Danzas', '24 de Septiembre 1085', 2386, 25, 'Cel: 155562926', '2017-06-28 00:00:00', 'Servicios para fiesta', 'academiayomilaty@hotmail.com', '4', 'OCAMPO Nicolas Alberto', 29878468, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (335, '2017-06-28 00:00:00', 20324122827, 'MAGLI', 'Gonzalo Victor Benjamin', 'Familia - Civil', '9 de Julio 485 - 4to G', 2386, 25, 'Cel: 155079371 - Fijo: 4200349', '2017-06-28 00:00:00', 'Abogacia', 'conchi_magli@hotmail.com', '4', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (336, '2017-06-26 00:00:00', 11638389, 'HOYOS', 'Miguel Angel', 'Alquiler de Salon de Fiestas', 'Antartida Argentina 314', 2284, 25, 'Cel: 153192598', '2017-06-26 00:00:00', 'Servicios para fiesta', 'miguelhoyos1@hotmail.com', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (337, '2017-06-27 00:00:00', 27751115, 'GONZALEZ', 'Alejandro Agustin ', 'Ferreteria - Serv. De Plomeria y Electricidad ', 'Av. Colon 1502 / Bº Helena White Mza.:C Lote:1', 2386, 25, 'Cel.:156327714', '2017-06-27 00:00:00', 'Comerciante', 'alejandro2006@live.com.ar', '3', 'GONZALEZ Jesus Raul', 42499675, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (338, '2017-06-27 00:00:00', 22613174, 'SALEH', 'Roxana Carolina', 'Vta. De ropa - Calzados -Accesorios - Lamparas - Blanco', 'Entre Rios 1097', 2386, 25, 'Cel.:154633693', '2017-06-27 00:00:00', 'Vendedor', 'roxanasaleh68@gmail.com', '2', 'VIRGILLITO Raul ', 22030856, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (339, '2017-06-27 00:00:00', 18467124, 'APASA', 'Mercedes de Valle', 'Corralon', 'Lavaisse 1071', 2386, 25, 'Fijo:4856630', '2017-06-27 00:00:00', 'Comerciante', 'mercedesapasa18@hotmail.com', '3', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (340, '2017-06-21 00:00:00', 36866216, 'ZELARAYAN', 'Santiago Jose ', 'Servicio de catering para fiesta y eventos ', 'San Lorenzo 325 - Planta Baja ', 2386, 25, 'Cel.:154567573 - Fijo:4711853', '2017-06-21 00:00:00', 'Gastronomia', 'zelarayansantiago92@gmail.com', '5', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (341, '2017-06-27 00:00:00', 16132306, 'PEREZ', 'Carlos Romualdo', 'Gas - Plomeria - Mamposteria ', 'Moreno 1446', 2386, 25, 'Cel.:154726512', '2017-06-27 00:00:00', 'Construccion', 'carloromualdo@live.com.ar', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (342, '2017-06-27 00:00:00', 28658180, 'MEDINA ', 'Jorge Mario', 'Alquiler de peloteros y juegos infantiles para fiestas - Vta. De ropa', 'Catamaca 752', 2343, 25, 'Cel.:155128070', '2017-06-27 00:00:00', 'Servicios para fiesta', 'anymar_chm@hotmail.com', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (343, '2017-06-27 00:00:00', 20160725, 'MEDINA', 'Pablo Rodolfo', 'Gasista - Plomeria - Pintura - Albañileria ', '24 de Septiembre 150', 2285, 25, 'Cel.:155944996', '2017-06-27 00:00:00', 'Construccion', 'aaa@aaa.com', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (344, '2017-06-27 00:00:00', 21822155, 'CORONEL', 'Ricardo Adrian ', 'Plomeria - Inst. electricas - Albañileria - Gas - Trab. En herreria', 'Bº San Miguel - Mza.:L Lote:15', 2386, 25, 'Cel:156510028', '2017-06-27 00:00:00', 'Construccion', 'ricardocmel@yahoo.com.ar', '2', 'ABREGU Mariela Amanda ', 28038037, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (345, '2017-06-27 00:00:00', 29243871, 'PACHECO', 'Cristian Orlando', 'Gasista - Construccion en gral.', 'Bº Los Positos - Mz. D - Casa 155', 2327, 25, 'Cel: 156646424', '2017-06-27 00:00:00', 'Construccion', 'aaa@aaa.com', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (346, '2017-06-27 00:00:00', 23565913, 'GARGIULO', 'Jose Esteban', 'Construccion en general', '25 de Mayo 2644 - Depto 2', 2386, 25, 'Cel: 155404750', '2017-06-27 00:00:00', 'Construccion', 'esteban.gargiulo010@gmail.com', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (347, '2017-06-27 00:00:00', 14412882, 'JUAREZ', 'Guido Dante', 'Gasista - Construccion en gral.', 'Mario Bravo 1090', 2284, 25, 'Cel: 154187607', '2017-06-27 00:00:00', 'Construccion', 'juarezguidodante@hotmail.com', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (348, '2017-06-27 00:00:00', 26914270, 'CASAL', 'Cristian Daniel', 'Gasista - Construccion en gral.', 'San Juan 354 - 2do F', 2386, 25, 'Cel: 156209670', '2017-06-27 00:00:00', 'Construccion', 'cristian_d_25@hotmail.com', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (349, '2017-06-26 00:00:00', 36231333, 'GALLO', 'Veronica Alejandra', 'Vta. De calzados - Bolsos - Ropa Interior', 'Bº 23 de Febrero - Mz 11 - Lote 1', 2386, 25, 'Cel: 155797555 - Fijo: 4364429', '2017-06-26 00:00:00', 'Showroom', 'verito.santino@gmail.com', '5', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (350, '2017-06-26 00:00:00', 30907267, 'JUAREZ', 'Nancy Noemi', 'Modista - Vta de Ropa, Zapatos, Joyas, Disfraces.', 'Pje. Juana Azurduy 537 - Villa Alem', 2386, 25, 'Cel: 155908959', '2017-06-26 00:00:00', 'Showroom', 'aaa@aaa.com', '5', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (351, '2017-06-26 00:00:00', 29102840, 'MERCADO', 'Marcos Eduardo', 'Construccion en gral - Gasista', 'Independencia 435', 2284, 25, 'Cel: 155901303', '2017-06-26 00:00:00', 'Construccion', 'markosmerkado@hotmail.com', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (352, '2017-06-26 00:00:00', 36224331, 'GANIM', 'Rocio Celina', 'Vta de Zapatos - Ropa - Accesorios - Maquillaje - Lenceria', 'Marcos Paz 640 - 2do Piso - Depto 27', 2386, 25, 'Cel: 155550086', '2017-06-26 00:00:00', 'Showroom', 'rocioganim@gmail.com', '2', 'FRECIA Ivan Patricio', 39360056, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (353, '2017-06-26 00:00:00', 29310884, 'RODRIGUEZ', 'Maria Mercedes', 'Peluqueria - Podologia - depilacion', 'Laprida 358', 2371, 25, 'Cel.:155813698 - Fijo:4617397', '2017-06-26 00:00:00', 'Peluqueria', 'aaa@aaa.com', '5', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (354, '2017-06-26 00:00:00', 21333477, 'ABRAHAN', 'Ramon', 'Fletes y Mudanzas ', 'Pueyrredon 1145 ', 2386, 25, 'Cel.:153521133', '2017-06-26 00:00:00', 'Transporte', 'aaa@aaa.com', '4', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (355, '2017-06-26 00:00:00', 36583926, 'MANSILLA', 'Franco Luis', 'Fabrica y Vta. De muebles - Gondolas y articulos para comercio ', 'Calle 41 Casa: 492 Villa Mariano Moreno / Mz.:7 Cs.:17 Bº SOEME ', 2327, 25, 'Cel.:156638090', '2017-06-26 00:00:00', 'Carpinteria', 'francodiosesamor@gmail.com', '1', 'CASTAÑO Ernesto Agustin', 39729306, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (356, '2017-06-24 00:00:00', 31588787, 'GARCIA ', 'Francisco Antonio', 'Vta. De suplementos deportivos - electronica - Trabajos en herreria', 'La Plata 30', 2386, 25, 'Cel.:156402083', '2017-06-24 00:00:00', 'Vendedor', 'antoniogarcia_85_85@hotmail.com', '1', 'GOMEZ Carlos Raul Alberto', 31426543, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (357, '2017-06-23 00:00:00', 20284012, 'FARES', 'Victor Fabian', 'Civil - Comercial - Laboral. Local Mayorista de Ventas de Golosinas', 'Av. Roca 2785 - Local 2', 2386, 25, 'Cel: 155154907 - Fijo: 4233584', '2017-06-23 00:00:00', 'Abogacia', 'aaa@aaa.com', '4', 'ALU Esilda del Carmen', 4779846, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (358, '2017-06-07 00:00:00', 38184141, 'BARRIONUEVO', 'Lucas Alberto', 'Celulares y Vta. De Accesorios', 'Calle 6 - Nº234 - Villa Mariano Moreno', 2386, 25, 'Cel: 156326248', '2017-06-07 00:00:00', 'Tecnico/a', 'lucas07barrionuevo@gmail.com', '1', 'BARRIONUEVO Jorge Luis', 36839523, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (359, '2017-06-09 00:00:00', 27562223, 'SORIA', 'Juan Carlos', 'Familia - Civil - Previsional', 'Pje. 2 de Abril 315 - 5to Piso - Of. 52', 2386, 25, 'Cel: 155617138', '2017-06-09 00:00:00', 'Abogacia', 'dr.soria7712@gmail.com', '4', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (360, '2017-06-09 00:00:00', 23183837, 'SALAZAR', 'Olga Karina', 'Familia - Documentos', 'Lamadrid 456 - 4to D', 2386, 25, 'Cel: 153023947', '2017-06-09 00:00:00', 'Abogacia', 'okarinasalazar@hotmail.com', '4', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (361, '2017-06-09 00:00:00', 29973916, 'LEGUIZAMON', 'Julio Cesar', 'Previsional - Accidentes de Transito', 'Bº El Pacara - Villa Belgrano', 2318, 25, 'Cel: 156431597', '2017-06-09 00:00:00', 'Abogacia', 'julioleguizamon3@hotmail.com', '4', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (362, '2017-06-26 00:00:00', 10733407, 'GRANDJEAN', 'Maria Antonia Josefina', 'Venta y Distribucion de Ropa Interior, Mujeres y Hombres.', 'Maipu 493', 2386, 25, 'Cel: 153396233', '2017-06-26 00:00:00', 'Vendedor', 'josefinaimperatori@hotmail.com', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (363, '2017-06-24 00:00:00', 5521785, 'JEREZ', 'Julio Argentino', 'Vta de indumentaria - Zapatos ', 'Marcos Paz 2729', 2386, 25, 'Cel.:156074420', '2017-06-24 00:00:00', 'Showroom', 'aaa@aaa.com', '3', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (364, '2017-06-23 00:00:00', 36339916, 'PLAZA', 'Mauricio Sebastian ', 'Vta de Sommier - Muebles - art. Para el hogar - Taller Mecanico', 'Av. Monseñor Diaz 848', 2284, 25, 'Cel.:156410817', '2017-06-23 00:00:00', 'Vendedor', 'msplaza91@gmail.com', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (365, '2017-06-23 00:00:00', 16588612, 'JADUR', 'Jose Hector ', 'Vta de indumentaria - Accesorios - Electrodomesticos ', 'Mz.: C Casa: 8 - Bº CGT / 9 de Julio 214', 2276, 25, 'Cel.:156663537', '2017-06-23 00:00:00', 'Vendedor', 'aaa@aaa.com', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (366, '2017-06-24 00:00:00', 30399351, 'COPA', 'Matias Pedro Armando', 'Vta. De celulares - Servicio tecnico - Accesorios', 'Crisostomo Alvarez 560 - Local: 8 ', 2386, 25, 'Cel.:155685308', '2017-06-24 00:00:00', 'Comerciante', 'matiascopa@hotmail.com', '2', 'ROMANO Fabricio Matias', 30541924, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (367, '2017-06-24 00:00:00', 95319553, 'CUNURANI SERRATE', 'Maria Lupita', 'Spa - Estetica corporal - Tratamientos', 'Crisostomo Alvarez 971', 2386, 25, 'Cel.:156452635', '2017-06-24 00:00:00', 'Esteticista', 'mb88_tabita@hotmail.com', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (368, '2017-06-26 00:00:00', 33057261, 'PEREZ', 'Leonel Zacarias', 'Audio-Car', 'Av Rivadavia 375 ', 2276, 25, 'Cel.:156264921', '2017-06-26 00:00:00', 'Comerciante', 'leonelsipi@gmail.com', '5', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (369, '2017-06-21 00:00:00', 29666026, 'ROMERO', 'Estela Mabel ', 'Corte y Grabado laser ', 'Pje. Camaño 821 ', 2386, 25, 'Cel.:156733577', '2017-06-21 00:00:00', 'Artesanias', 'estelaromero821@gmail.com', '4', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (370, '2017-06-22 00:00:00', 31812904, 'GARCIA RUIZ', 'Rocio Fernanda', 'Vta. De Ropa, Zapatos, Carteras, Accesorios. Ventas por Internet.', 'Bº Smata Mz. D - Casa 18', 2284, 25, 'Cel: 156170402', '2017-06-22 00:00:00', 'Showroom', 'rocio_garciaruiz@hotmail.com', '5', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (371, '2017-06-23 00:00:00', 14661631, 'ROMAN', 'Jose Luis', 'Reparacion de Electrodomesticos', 'Av. Roca 2785', 2386, 25, 'Cel: 154065234 - Fijo: 4394345', '2017-06-23 00:00:00', 'Tecnico/a', 'aaa@aaa.com', '4', 'ROMAN Claudia Vanesa', 32459522, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (372, '2017-06-23 00:00:00', 29532661, 'TORAÑO', 'Maria Graciela', 'Serv Tecnico de Celulares, Tablets. Vta de Accesorios', 'Av. Independencia 3100', 2386, 25, 'Cel: 155228397 - Cel: 155057878 - Fijo: 4367941', '2017-06-23 00:00:00', 'Comerciante', 'grat_df@hotmail.com', '4', 'FANTINO Ezequiel Javier', 27124199, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (373, '2017-06-22 00:00:00', 12247648, 'PALAVECINO', 'Roman Enrique', 'Fabrica de Mosaicos', 'Pje. El Transito 53', 2284, 25, 'Cel: 155339956', '2017-06-22 00:00:00', 'Comerciante', 'romanpalavecino111@gmail.com', '2', 'JUAREZ Olga Margarita', 14073359, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (374, '2017-06-22 00:00:00', 23019146, 'CHAVEZ', 'Mario Enrique', 'Maestro Mayor de Obras - Construccion en gral.', 'Lamadrid 1972', 2386, 25, 'Cel: 153401484', '2017-06-22 00:00:00', 'Gasista', 'mario_e_chavez@hotmail.com', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (375, '2017-06-22 00:00:00', 14084171, 'RETAMOZO', 'Maria Rosa', 'Vta. De Indumentaria - Calzados - Accesorios', 'Av Alem 1232', 2386, 25, 'Cel.:156683836', '2017-06-22 00:00:00', 'Comerciante', 'retamozomariarosa@gmail.com', '1', 'LIZARRAGA Carlos Damian ', 33632268, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (376, '2017-06-22 00:00:00', 37423921, 'ACUÑA', 'Julieta Daiana', 'Vta de indumentaria - Calzados - accesorios', 'Av. Alem 2178', 2386, 25, 'Cel.:154136029', '2017-06-22 00:00:00', 'Vendedor', 'lucianamarrazza@hotmail.com', '1', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (377, '2017-06-22 00:00:00', 34295305, 'RAMEAU MANINO', 'Natalia Alejandra', 'Productos de nutricion OMNILIFE - Indumentaria deport. - Lenceria ', 'Chacabuco 644 / Av. Americo Vespucio 1827', 2386, 25, 'Cel.:155230951 - Fijo:4368981', '2017-06-22 00:00:00', 'Vendedor', 'natalia_manino@hotmail.com', '4', 'MANINO Noelia ', 29243331, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (378, '2017-06-22 00:00:00', 26446363, 'RIBO MURUAGA ', 'Natalia', 'Protesis ', 'Alberdi 201', 2386, 25, 'Cel.:155357637 - Fijo:4304549', '2017-06-22 00:00:00', 'Odontologia', 'natyribo@hotmail.com', '3', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (379, '2017-06-21 00:00:00', 32134087, 'ROSTAND', 'Jessica', 'Vta de Ropa x mayor y en gral.', 'Jose Colombres 146 - Local 2', 2386, 25, 'Cel: 156497449 - Fijo: 4305041', '2017-06-21 00:00:00', 'Comerciante', 'jnrostand@gmail.com', '3', 'ROSTAND Franco', 36813413, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (380, '2017-06-21 00:00:00', 20641487, 'ALMARAS', 'Hector Ignacio', 'Venta y Colocacion de Vidrios', 'Calle 6, Esquina 5 - Villa Mariano Moreno', 2386, 25, 'Cel: 155279133 - Fijo: 2019946', '2017-06-21 00:00:00', 'Comerciante', 'aaa@aaa.com', '1', 'ALMARAS Stella Maris', 39571035, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (381, '2017-06-21 00:00:00', 29338892, 'SALEME KLYVER', 'Celina Maria', 'Disfraces', 'Bº Ampliacion San Jose - Casa s/n', 2387, 25, 'Cel.:155759965', '2017-06-21 00:00:00', 'Modista', 'chelasalemeklyver@gmail.com', '5', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (382, '2017-06-21 00:00:00', 34185485, 'BARRIONUEVO', 'Christian Gabriel ', 'Mayorista de bebidas', 'Centenario 83', 2371, 25, 'Cel.:156270771', '2017-06-21 00:00:00', 'Vendedor', 'aaa@aaa.com', '5', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (383, '2017-06-22 00:00:00', 21329060, 'DIAZ QUESADA', 'Rossana Silvia ', 'Vta. de Productos de nutricion OMNILIFE', 'Cesar Milstein 2215', 2387, 25, 'Cel.:156638582 - Fijo:4251634', '2017-06-22 00:00:00', 'Vendedor', 'juarezemiliano180@gmail.com', '4', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (384, '2017-06-21 00:00:00', 32897761, 'REYNOSO POSSE', 'Facundo ', 'Vta de productos de temporada - prod. Importados y ropa deport. - cerveza artesanales ', 'San Martin 1054', 2386, 25, 'Cel.:156419941', '2017-06-21 00:00:00', 'Vendedor', 'importucprod@gmail.com', '4', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (385, '2017-06-21 00:00:00', 16314639, 'CARABAJAL', 'Luis Angel ', 'Gasista matriculado - Plomeria ', 'Pje. Chavez de laguna 1156', 2386, 25, 'Cel.:156261526', '2017-06-21 00:00:00', 'Gasista', 'carabajalluis@hotmail.com', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (386, '2017-06-16 00:00:00', 27520863, 'BARDI', 'Santiago Nicolas ', 'Gasista matriculado - Plomeria ', 'Av. Soldati 276 - Piso.: 3 Dpto: D', 2386, 25, 'Cel.:156589576', '2017-06-16 00:00:00', 'Gasista', 'nicosoyderiver@yahoo.com.ar', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (387, '2017-06-21 00:00:00', 32201228, 'GARCIA BIAGOSCH', 'Ernesto Emilio', 'Penal y otras ramas', 'San Martin 702 Planta Alta - Of.4', 2386, 25, 'Cel: 156384633', '2017-06-21 00:00:00', 'Abogacia', 'ernestogarciabiagosch@gmail.com', '4', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (388, '2017-06-21 00:00:00', 30714876054, 'SORAMUS', 'S.A.', 'Cobranza y Mora', 'Lamadrid 456 - 3ro A', 2386, 25, 'Cel.:154766754 - Cel.:154766781 - Fijo: 4202233 ', '2017-06-21 00:00:00', 'Gestoria', 'gustavo.gonzalez@soramus.com', '5', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (389, '2017-06-21 00:00:00', 24340893, 'MERCADO', 'Manuel Andres', 'Construccion en gral.', 'Bº 260 Viv. M 11 Casa 15', 2284, 25, 'Cel: 154162295 - Fijo: 4553186', '2017-06-21 00:00:00', 'Gasista', 'manuelmercado74@yahoo.com.ar', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (390, '2017-06-21 00:00:00', 20505148, 'ALDERETE', 'Gustavo Daniel', 'Construccion en gral. - Pintura - Durlock - Sanitarista', 'El Salvador 1837', 2387, 25, 'Cel: 153620600', '2017-06-21 00:00:00', 'Gasista', 'danielgustavo58@hotmail.com', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (391, '2017-06-16 00:00:00', 25377265, 'BARDI', 'Sebastian Martin', 'Construccion en gral. - Plomeria - Sanitarista', 'Salas y Valdez 1250 Torre 3 - 2do A', 2386, 25, 'Cel: 153532588', '2017-06-16 00:00:00', 'Gasista', 'sebastianmartinbardi@gmail.com', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (392, '2017-06-19 00:00:00', 25662156, 'LUQUE', 'Elea Fernanda', 'Ortodoncia', 'Balcarce 430', 2386, 25, 'Cel: 155442280', '2017-06-19 00:00:00', 'Odontologia', 'elealuque@gmail.com', '3', 'PASADORE Martin', 26126114, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (393, '2017-06-19 00:00:00', 31228333, 'SORUCO', 'Antonio Francisco Ariel', 'Alq. De Cabina Fotog. - Diseño e Iluminacion', 'La Plata 1429', 2386, 25, 'Cel: 3813927945 - Fijo: 4380390', '2017-06-19 00:00:00', 'Servicios para fiesta', 'sorucoantonio@gmail.com', '4', 'MONTEROS Pedro Antonio', 30683069, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (394, '2017-06-19 00:00:00', 24967398, 'PEREYRA', 'Monica Rita ', 'Uniformes y Disfraces', 'Luis Maria Drago 230', 2386, 25, 'Cel: 154479892', '2017-06-19 00:00:00', 'Modista', 'amodil_natura@hotmail.com', '5', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (395, '2017-06-19 00:00:00', 16431050, 'LACCI', 'Rodolfo Luis', 'Mecanica en Gral. ', 'Las Piedras 2051', 2386, 25, 'Cel.:154187577', '2017-06-19 00:00:00', 'Mecanica de Atomotor', 'luisrodolfolacci@gmail.com', '1', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (396, '2017-06-19 00:00:00', 14661176, 'ANDRADA', 'Luis Humberto', 'Reparacion de Electrodomesticos - Serv. De plomeria y gas. ', 'Bº SEOC III - Mz.: E Cs.: 3', 2386, 25, 'Cel.:156020596', '2017-06-19 00:00:00', 'Tecnico/a', 'acsetec@hotmail.com', '4', 'ANDRADA Cristian Gabriel ', 39731896, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (397, '2017-06-19 00:00:00', 38116660, 'ANDRADA', 'Adrian Marcelo', 'Serv. Tecnico en refrigeracion - Lavarropas - Calefones - instalaciones electricas a dom.', 'Bº SEOC III - Mz.: E Cs.: 3', 2386, 25, 'Cel.:156801440', '2017-06-19 00:00:00', 'Tecnico/a', 'adrian666andrada@gmail.com', '4', 'ANDRADA Cristian Gabriel ', 39731896, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (398, '2017-06-15 00:00:00', 29576458, 'LOPEZ', 'Josefina ', 'Cirugia - Implantologia ', 'Av. Aconquija 2579', 2387, 25, 'Cel.:155494210', '2017-06-15 00:00:00', 'Odontologia', 'josefinald@hotmail.com', '4', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (399, '2017-06-21 00:00:00', 33758413, 'ROMERO', 'Alba Melina', 'Vta. De ropa para mujer', 'calle 6 Cs:150 - Villa Mariano Moreno', 2386, 25, 'Cel:155992255', '2017-06-21 00:00:00', 'Vendedor', 'aaa@aaa.com', '1', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (400, '2017-06-16 00:00:00', 26011536, 'MOLINA', 'Alejandra Beatriz', 'Vta de Ropa Femenina', 'Lavalle 2280', 2386, 25, 'Cel: 156233159', '2017-06-16 00:00:00', 'Comerciante', 'alejandraunika647@gmail.com', '1', 'LOPEZ Lucas David', 41182113, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (401, '2017-06-17 00:00:00', 22450435, 'GONZALEZ', 'Andres Agustin', 'Instalacion de Aires - Mantenimiento. Electricidad', 'Alvarez Condarco 556', 2386, 25, 'Cel: 153344304', '2017-06-17 00:00:00', 'Electricidad', 'andresagustin71@hotmail.com', '1', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (402, '2017-06-14 00:00:00', 32366862, 'ARIAS', 'Carolina', 'Combos mensuales de sesiones - Tratam. con aparatologia', '9 de Julio 274', 2386, 25, 'Cel:156536868', '2017-06-14 00:00:00', 'Lic. En nutricion ', 'nutriarias1986@gmail.com', '3', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (403, '2017-06-15 00:00:00', 25543130, 'SUAREZ FERNANDEZ', 'Carolina', 'Trtam en gral. Ortodoncia', 'San Martin 1600', 2387, 25, 'Cel: 156079613 Fijo: 4256972', '2017-06-15 00:00:00', 'Odontologia', 'carosuarez39@hotmail.com', '5', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (404, '2017-06-14 00:00:00', 26028327, 'BARCELO RUBIOL', 'Julieta', 'Bazar y Ropa', 'Bº Odontologo Mz. B - Casa 11 - San Pablo', 2387, 25, 'Cel: 155199978', '2017-06-14 00:00:00', 'Vendedor', 'julybarcelo@hotmail.com', '5', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (405, '2017-06-16 00:00:00', 22969379, 'SORIA', 'Eduardo Manuel', 'Construccion en gral. Gas - Agua ', 'Alejandro Heredia 3', 2284, 25, 'Cel: 155942793', '2017-06-16 00:00:00', 'Gasista', 'aaa@aaa.com', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (406, '2017-06-14 00:00:00', 39728472, 'CASTILLO', 'Aldana del Valle', 'Ropa Femenina', 'Congreso 74', 2386, 25, 'Cel: 155174449', '2017-06-14 00:00:00', 'Showroom', 'aldu.castillo@hotmail.com.ar', '1', 'CHAMORRO Maria Edith', 18365301, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (407, '2017-06-12 00:00:00', 29997954, 'VALENZUELA', 'Hugo Pablo', 'Electronica - Equipamientos comerciales', 'Moreno 204 - PB A', 2386, 25, 'Cel: 156781043', '2017-06-12 00:00:00', 'Vendedor', 'hugovalenzuela@valdistribuciones.com', '1', 'HERRERA Cecilia Soledad', 30684827, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (408, '2017-06-14 00:00:00', 32602508, 'ALBAÑIL', 'Maria Rosa', 'Ropa Femenina', 'Eduardo Bulnes 695', 2386, 25, 'Cel: 154657304', '2017-06-14 00:00:00', 'Showroom', 'mra_86@life.com', '1', 'BAZAN Emmanuel', 32460737, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (409, '2017-06-16 00:00:00', 23700046, 'RUESGA', 'Ariel Alejandro', 'Trabajos de Construccion en gral.', 'Peru 547 - P Alta', 2284, 25, 'Cel: 154037810 - Fijo: 4891681', '2017-06-16 00:00:00', 'Gasista', 'ruegaariel@hotmail.com', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (410, '2017-06-16 00:00:00', 20760795, 'TRAYAN', 'Walter Esteban', 'Trabajos de Construccion en gral.', 'Pje. Saez Peña 3944', 2386, 25, 'Cel: 155756579', '2017-06-16 00:00:00', 'Gasista', 'walterestebantrayan@hotmail.com.ar', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (411, '2017-06-16 00:00:00', 11888898, 'AUTREDE', 'Jorge Antonio', 'Direccion tecnica Serv. Sanitarios: gas y agua. Constrccion en gral.', 'Pje. Federido Helguera 543', 2300, 25, 'Cel: 155192550', '2017-06-16 00:00:00', 'Gasista', 'nicolaautrede@hotmail.com', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (412, '2017-06-16 00:00:00', 24504751, 'GARCIA', 'Cesar Ariel', 'Tratam. en gral. - Cirugias - Implantes Oseos ', 'Berutti 412', 2387, 25, 'Cel:154732767', '2017-06-16 00:00:00', 'Odontologia', 'aaa@aaa.com', '5', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (413, '2017-06-15 00:00:00', 12870380, 'LAZARTE', 'Humberto Eladio ', 'Instalaciones de gas y plomeria', 'Don Orione 1687', 2386, 25, 'Cel.:155896112', '2017-06-15 00:00:00', 'Gasista', 'humbertogasista@hotmail.com', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (414, '2017-06-15 00:00:00', 33971388, 'VARELA', 'Angel Alberto', 'Vta y alquiler de propiedades - Tasaciones - contratista', 'Ayacucho 57 - Of.:8', 2386, 25, 'Cel.:155088821 - Fijo:4976778', '2017-06-15 00:00:00', 'Inmobiliaria', 'varelayasociadosinmobiliaria@gmail.com', '4', 'GOMES Silvia ', 14225320, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (415, '2017-06-15 00:00:00', 34953137, 'INGALINA', 'Emanuel Estefano', 'Tren Delantero', 'Lavalle 2210', 2386, 25, 'Cel: 154779704 - Fijo: 4674021', '2017-06-15 00:00:00', 'Mecanica de Atomotor', 'ingalinaemanuel@gmail.com', '1', 'INGALINA Sergio Oreste', 17696762, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (416, '2017-06-14 00:00:00', 30204073, 'VEGA', 'Jesus Juan Jose', 'Trabajos en General', '20 de Junio al 100', 2276, 25, 'Cel: 154671878', '2017-06-14 00:00:00', 'Mecanica de Atomotor', 'jjjv_69@hotmail.com', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (417, '2017-06-13 00:00:00', 31809010, 'MARIN DE LA FUENTE', 'Isaias Blas', 'Derechos Humanos - Penal', 'Crisostomo Alvarez 455 -Of. 1', 2386, 25, 'Cel: 155611443', '2017-06-13 00:00:00', 'Abogacia', 'isaiasblas@hotmail.com', '2', 'LANCONI Melisa Ginet', 32076855, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (418, '2017-06-14 00:00:00', 30357171, 'LUNA', 'Guillermo Patricio ', 'Taller mecanico de autos', 'Lavalle 1853', 2386, 25, 'Fijo:4327540', '2017-06-14 00:00:00', 'Mecanica de Atomotor', 'lunaelectromecanica@gmail.com', '3', 'ANDRADA Graciela ', 12450358, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (419, '2017-05-31 00:00:00', 25853352, 'LASTERO DIAZ', 'Cristhian Horacio', 'Tecnico Electromecanico - Plomeria - Gas - Pintura - Otros.', 'Pje. Luis Saenz Pena 2663', 2386, 25, 'Cel: 155564577', '2017-05-31 00:00:00', 'Construccion', 'cristhianlastero15@gmail.com', '4', 'M. del Carmen Echavarria', 30760283, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (420, '2017-06-14 00:00:00', 20760861, 'ALLO', 'Daniel ', 'Odontologia en gral. ', '9 de Julio 274', 2386, 25, 'Cel.:155683802', '2017-06-14 00:00:00', 'Odontologia', 'babadhyan@hotmail.com', '3', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (421, '2017-06-15 00:00:00', 28599450, 'MEDINA', 'Jorge Ariel ', 'Instalaciones de gas - instalacion y mantenimiento de aire acondicionado', 'Pje. Primera Junta 75', 2276, 25, 'Cel.:155788191', '2017-06-15 00:00:00', 'Gasista', 'traidor30@gmail.com', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (422, '2017-06-14 00:00:00', 16314728, 'D MAYO', 'Jose Daniel', 'Frenos y Embragues', 'Amador Lucero 554', 2386, 25, 'Cel: 153204757', '2017-06-14 00:00:00', 'Mecanica de Atomotor', 'pecho_dmayo@hotmail.com', '3', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (423, '2017-06-14 00:00:00', 36584371, 'CASTILLO', 'Gustavo German', 'Ropa Masculina', 'Corrientes 4301', 2386, 25, 'Cel: 156690339', '2017-06-14 00:00:00', 'Showroom', 'castillogustavo3442@gmail.com', '1', 'Maria Edith Chamorro', 18365301, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (424, '2017-06-14 00:00:00', 14358976, 'AMBRAY', 'Emanuel Angel', 'Vta. De Repuestos de Automotores y Taller Mecanico. Tren Delantero', 'Amador Lucero 209', 2386, 25, 'Cel: 154969681 - Fijo: 4322311', '2017-06-14 00:00:00', 'Comerciante', 'aaa@aaa.com', '3', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (425, '2017-06-13 00:00:00', 22805091, 'MEONE', 'Norma Beatriz', 'Spa - Centro de Estetica - Tratamientos Corporales', 'Miguel Lillo 715 - 2do K', 2386, 25, 'Cel: 156054216', '2017-06-13 00:00:00', 'Esteticista', 'tibitty@hotmail.com', '3', 'Emilio Falco', 18611052, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (426, '2017-06-13 00:00:00', 39927744, 'ACOSTA', 'Nestor Martin ', 'Vta. De Indumentaria Deportiva y elementos', 'Jose Estrada 2531 ', 2386, 25, 'Cel.:155838860', '2017-06-13 00:00:00', 'Vendedor', 'nestormacosta@gmail.com', '3', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (427, '2017-06-07 00:00:00', 28223520, 'GOMEZ', 'Ethel Carina ', 'Amoblamientos', 'Dardo Molina 421', 2386, 25, 'Cel.:156327290', '2017-06-07 00:00:00', 'Carpinteria', 'caringomez@gmail.com', '4', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (428, '2017-06-13 00:00:00', 30760073, 'DIAZ ', 'Flavia Daniela', 'Modista y Venta de ropa', 'Coronel Zelaya 588', 2386, 25, '381-2039841', '2017-06-13 00:00:00', 'Vendedor', 'francescaapicheladiaz@gmail.com', '1', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (429, '2017-06-08 00:00:00', 23894368, 'GARCIA', 'Silvana Beatriz', 'Reposteria - Mesas Dulces', 'Simon Bolivar 2318', 2386, 25, 'Cel: 154128351', '2017-06-08 00:00:00', 'Servicios para fiesta', 'garsilvana@hotmail.com', '5', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (430, '2017-06-12 00:00:00', 36339993, 'MARTINEZ', 'Armando Hector', 'Durlock - Herreria - Plomeria - Trab. En gral.', 'Bº El Salvador - Mz. 4 - Lote 7', 2386, 25, 'Cel: 156802334', '2017-06-12 00:00:00', 'Construccion', 'aaa@aaa.com', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (431, '2017-06-07 00:00:00', 28646768, 'GHIO', 'Gabriela Alicia', 'Artesanias', 'Don Bosco 1444', 2386, 25, 'Cel: 154646767', '2017-06-07 00:00:00', 'Vendedor', 'gabrighio@hotmail.com', '4', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (432, '2017-06-08 00:00:00', 23886886, 'GOMEZ', 'Walter Alejandro', 'Prof de Educ. Fisica - Vta de Ropa Deportiva - Insumos para deportes', 'Bº 188 Viv. Mz C - Casa 9', 2387, 25, 'Cel: 154581476', '2017-06-08 00:00:00', 'Vendedor', 'walteralejandrotkh@hotmail.com', '3', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (433, '2017-06-12 00:00:00', 29060533, 'MOHAMED', 'Amanda Antonia', 'Vta. De Muebles', 'Av. Alem 653', 2386, 25, 'Cel: 156240160', '2017-06-12 00:00:00', 'Comerciante', 'aamandamohamed2012@gmail.com', '2', 'Rodriguez Carlos Arturo', 34202202, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (434, '2017-06-12 00:00:00', 40531620, 'YUSSEF', 'Exequiel', 'Alquiler de Peloteros, Cama Elastica, Sillones.', 'Moreno 550', 2386, 25, 'Cel: 156232054', '2017-06-12 00:00:00', 'Servicios para fiesta', 'yussefexequiel@hotmail.com', '5', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (435, '2017-06-10 00:00:00', 92799060, 'RODRIGUEZ GUZMAN', 'Claudio Alfredo', 'Puertas y aberturas en acero - ', 'Evaristo Carriego 951', 2386, 25, 'Cel.:156753194', '2017-06-10 00:00:00', 'Metalurgia ', 'clauidiorod98@gmail.com', '2', 'SUCAR Fabiana Raquel', 30117996, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (436, '2017-06-09 00:00:00', 30835097, 'PONZI', 'Martin Miguel ', 'Taller Mecanico ', 'Bº Telefonico - Mza.: L Cs.: 23', 2386, 25, 'Cel.:155293226', '2017-06-09 00:00:00', 'Mecanica de Atomotor', 'tinchotunnyng@hotmail.com', '5', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (437, '2017-06-09 00:00:00', 17696977, 'ROMERO', 'Julio Cesar ', 'Amoblamiento', 'Bº vial - Mza.:D Cs.:8 ', 2386, 25, 'Cel.:154545077', '2017-06-09 00:00:00', 'Vendedor', 'fernandoromero09@hotmail.com', '1', 'ROMERO Fernando ', 34604351, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (438, '2017-06-07 00:00:00', 13051619, 'RODRIGUEZ', 'Dardo Efrain ', 'Feria americana - Vta de indumentaria y calzados', 'Calle 6 y 9 - Esquina 9 - Villa Mariano Moreno ', 2327, 25, 'Cel.:155791278 - Fijo:4373378', '2017-06-07 00:00:00', 'Vendedor', 'aaa@aaa.com', '1', 'CARRIZO Reina Isabel ', 16176841, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (439, '2017-06-06 00:00:00', 37311750, 'DE BOECK', 'Pedro Agustin ', 'Vta. De Indumentaria ', 'Pablo Roja Paz 130', 2386, 25, 'Cel.:155086698', '2017-06-06 00:00:00', 'Vendedor', 'pedrodeboeck@hotmail.com', '1', 'LUCHINI Franco ', 37311330, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (440, '2017-06-07 00:00:00', 22331170, 'VARELA', 'Miguel Armando', 'Implantes - Cirujias - Estetica dental ', 'Benjamin Villafañe 1011', 2386, 25, 'Cel.:154649858 - Fijo:4287293', '2017-06-07 00:00:00', 'Odontologia', 'miguelarmandovarela@gmail.com', '3', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (441, '2017-06-07 00:00:00', 21326598, 'MENA MOYANO', 'Maria Andrea ', 'Pinturas - Artesanias en Gral - Accesorios', 'Bº San Francisco - Casa: 8 / Ruinas de Quilmes', 362, 4, 'Cel.:03838-15400456', '2017-06-07 00:00:00', 'Artesanias', 'andreina_stamaria@yahoo.com', '2', 'CRUZ Javier Marcelo', 23031771, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (442, '2017-06-07 00:00:00', 21633548, 'LOPEZ', 'Daniela Alejandra', 'Cirujana - Abdominal y Estetica', 'Benjamin Villafañe 1011', 2386, 25, 'Cel: 155056086', '2017-06-07 00:00:00', 'Medicina ', 'docloda@hotmail.com', '3', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (443, '2017-06-07 00:00:00', 22664042, 'LEON', 'Ariel Jose', 'Durlock - Trabajos en general', 'Bº Feput - Mz. K - Casa 38', 2386, 25, 'Cel:154479282', '2017-06-07 00:00:00', 'Construccion', 'grupocrear_industria@hotmail.com', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (444, '2017-06-06 00:00:00', 21336837, 'VELARDEZ', 'Jorge Fabio', 'Compra-Vta. De vehiculos nuevos y usados', 'Ruta 9 y Congreso', 2284, 25, 'Cel.:156564975', '2017-06-06 00:00:00', 'Comerciante', 'velardezfabio3@gmail.com', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (445, '2017-06-05 00:00:00', 29533046, 'PADILLA', 'Matias Enrique', 'Obras - Reformas - Mantenimiento - Proyectos', 'Entre Rios 525', 2386, 25, 'Cel: 156225933', '2017-06-05 00:00:00', 'Arquitectura', 'aaa@aaa.com', '5', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (446, '2017-06-06 00:00:00', 26916161, 'ALVAREZ', 'Cristian Daniel', 'Hornos de Barro, Ecologicos - Quinchos - Asadores - Piscinas de fibra y material', 'Mz. 7 - Lote 2 - Bº Torres', 2300, 25, 'Cel.:153894405 - Cel: 156931268 - Fijo:3070643', '2017-06-06 00:00:00', 'Construccion', 'aaa@aaa.com', '4', 'MAMANI Dora Elizabeth', 27875275, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (447, '2017-06-05 00:00:00', 21829157, 'MOYANO', 'Victor Hugo', 'Tecnico electronico - Reparacion y Vta de electrodomesticos y tecnologia', 'Frias Silva 314', 2386, 25, 'Cel.:156602676', '2017-06-05 00:00:00', 'Tecnico/a', 'aaa@aaa.com', '2', 'TEIBERI Jose Agustin ', 21744885, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (448, '2017-06-01 00:00:00', 30000142, 'ARGAÑARAZ CARDENAS', 'Jose Maria', 'Juridico', 'Benjamin Villafañe 1354', 2386, 25, 'Cel:155409803', '2017-06-01 00:00:00', 'Gestor', 'josemariaf50@hotmail.com', '1', 'Cristian Daniel Argañaraz', 25542147, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (449, '2017-05-31 00:00:00', 17594847, 'GUTIERREZ', 'Stella Maris', 'Salon de Fiestas - Eventos', 'Godoy Cruz 1164', 2386, 25, 'Cel:154674227', '2017-05-31 00:00:00', 'Servicios para fiesta', 'stellamaris.gutierrez@hotmail.com', '4', 'Antonio Arturo Albornoz', 14984982, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (450, '2017-06-01 00:00:00', 33703592, 'SINGH', 'Jose Zail', 'Civil', 'Pje. 2 de Abril 380 - 2 Piso - Of.7', 2386, 25, 'Cel: 156286729', '2017-06-01 00:00:00', 'Abogacia', 'zail2003s@hotmail.com', '1', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (451, '2017-06-02 00:00:00', 33703527, 'CAPPETTA', 'Maria Celeste', 'Ropa - Showroom', 'España 2138', 2386, 25, 'Cel: 155556479', '2017-06-02 00:00:00', 'Vendedor', 'lascapetinas@gmail.com', '3', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (452, '2017-06-02 00:00:00', 36865123, 'GARCIA DEMETER', 'Ana', 'Artesana - Bijouterie - Ferias', '12 de Octubre 268', 2386, 25, 'Cel: 155424173', '2017-06-02 00:00:00', 'Vendedor', 'anitagarciademeter@hotmail.com', '3', 'Santiago Garcia Demeter', 38487540, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (453, '2017-06-05 00:00:00', 31906157, 'SOSA', 'Silvana Carolina ', 'Ropa - Juguetes -Marroquineria - Accesorios - Plata y oro', 'Frias Silva 376 - San Jose ', 2387, 25, 'Cel.:155658046 - Fijo:4352015', '2017-06-05 00:00:00', 'Comerciante', 'maselecmontajes@yahoo.com.ar', '3', 'ARRIETA Norma', 12631229, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (454, '2017-06-05 00:00:00', 33974481, 'GOMEZ', 'Juan Jose', 'Tapiceria - Juegos de living ', 'Av. San Ramon 1100 - Bº 80 Viviendas ', 2386, 25, 'Cel.:152006500', '2017-06-05 00:00:00', 'Tapiceria', 'juanjo_elfido22@hotmail.com', '4', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (455, '2017-06-02 00:00:00', 13213244, 'PEÑA', 'Cecilia', 'Talabarteria - Carteras de cuero ', 'La Rioja 118', 2386, 25, 'Cel.:154459374', '2017-06-02 00:00:00', 'Vendedor', 'pena_cecilia@hotmail.com', '3', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (456, '2017-06-02 00:00:00', 32963063, 'BEQUI', 'Maria Belen', 'Talleres y Cursos - Oratoria - Liderazgo - Tecnicas de Venta', 'Jose Colombres 324 - Secc. P - Depto 2', 2386, 25, 'Cel:155660931', '2017-06-02 00:00:00', 'Docencia', 'belen_bequi@hotmail.com', '4', 'Nuno Brito Patricia Guadalupe', 33971353, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (457, '2017-06-02 00:00:00', 33971673, 'DIAZ CABRERA GARCIA', 'Flavia Maria Lidia', 'Talleres de Oratoria, Escritura, Grafolog. Redaccion, Tecnicas de Estudio. Cursos de Motiv. Y Liderazgo.', 'Bº Mutual Policial Mzna. 5 Cs. 68', 2386, 25, 'Cel: 154690254', '2017-06-02 00:00:00', 'Docencia', 'elmayordemisdefectos@gmail.com', '4', 'Diaz Cabrera Garcia Angel Ramon', 33050920, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (458, '2017-06-02 00:00:00', 21335137, 'JIMENEZ', 'Silvia Viviana', 'Fundacion Sendero - Capacit. Cursos. Feria de Zapatos', 'Rondeau 281 Piso 1', 2386, 25, 'Cel: 154166936 - 155159166. Fijo: 3074349', '2017-06-02 00:00:00', 'Fonoaudiologia ', 'licvivianajimenez@gmail.com', '4', 'Paula Maria Veliz', 34185876, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (459, '2017-06-01 00:00:00', 32460191, 'NAVARRO PERTOT', 'Franco Fernando', 'Civil y todas las ramas', 'Pje. 2 de Abril 380 - 2do Piso - Of. 7', 2386, 25, 'Cel: 154630133', '2017-06-01 00:00:00', 'Abogacia', 'francopertot@hotmail.com', '1', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (460, '2017-06-01 00:00:00', 33763148, 'BERGAGNA', 'Cynthia Antonella', 'Polirubro - Ropa y Bazar', 'Av. Solane Vera 369 ', 2387, 25, 'Cel.:155742547 - Fijo:4258059', '2017-06-01 00:00:00', 'Comerciante', 'antonella.bergagna@gmail.com', '3', 'LEDESMA Gisela Patricia', 18888853, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (461, '2017-06-02 00:00:00', 14358674, 'PINTO', 'Fatima Gladys del Valle', 'Cosmetologa - Podologa -Trat. Corporales y faciales - Peluqueria', 'Juan Jose Passo 662 ', 2386, 25, 'Cel.:156804064', '2017-06-02 00:00:00', 'Esteticista', 'aaa@aaa.com', '3', 'DIAZ PINTO Gabriel', 37457110, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (462, '2017-05-31 00:00:00', 36420494, 'VERA DIEBEL', 'Francisco', 'Vta. De suplementos deportivos', 'San Juan 341', 2386, 25, 'Cel.:154029692', '2017-05-31 00:00:00', 'Vendedor', 'aaa@aaa.com', '1', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (463, '2017-05-16 00:00:00', 26783306, 'PALOMO', 'Brenda Ivana ', 'Estetica corporal y facial ', 'Congreso 243', 2386, 25, 'Cel.:153563920 Fijo:4306797', '2017-05-16 00:00:00', 'Cosmeatra', 'centrodestudiostucuman@hotmail.com', '3', 'AMIN Claudia ', 25291807, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (464, '2017-05-31 00:00:00', 41736971, 'MORALES', 'Matia Agustin', 'Electricista - Mecanico', 'Bº Grafico II mz.13 casa 18 Sector 1', 2386, 25, '0381-155208249', '2017-05-31 00:00:00', 'Tecnico/a', 'matias_kpo_011@hotmail.com', '5', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (465, '2017-05-31 00:00:00', 27652410, 'RISSO', 'Maria Jose', 'Laboral', 'Eugenio Mendez 486', 2386, 25, '0381-156452308', '2017-05-31 00:00:00', 'Abogacia', 'rissomariajose@gmail.com', '3', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (466, '2017-05-31 00:00:00', 31353111, 'MORALES', 'Marcelo Maximo', 'Electricista - Pintor', 'Pje. Diaz Veliz 466', 2386, 25, '0381-156098238', '2017-05-31 00:00:00', 'Tecnico/a', 'aaa@aaa.com', '5', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (467, '2017-05-31 00:00:00', 39575859, 'BAZAN', 'Cristian Nicolas', 'Mago - Animación', 'Garmendia 180', 2386, 25, '0381-155151506', '2017-05-31 00:00:00', 'Servicios para fiesta', 'aaa@aaa.com', '5', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (468, '2017-05-29 00:00:00', 33628073, 'SACHETTI', 'Maria Jinette', 'Diseño gráfico- Impresión sublimación - Estampados', 'Gral Paz 969 - Piso 9 Depto 11', 2386, 25, '0381-156619042', '2017-05-29 00:00:00', 'Diseño', 'mariajinette@hotmail.com', '5', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (469, '2017-05-31 00:00:00', 32775768, 'ESPASA ', 'Maria Griselda', 'Derecho Tributario', 'Chile 119', 2386, 25, '0381-156812053', '2017-05-31 00:00:00', 'Abogacia', 'griespasa@hotmail.com', '4', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (470, '2017-05-31 00:00:00', 33755688, 'RIVADEO', 'Maria Veronica', 'Contadora', 'Santa Fe 302 - 3º B', 2386, 25, '0381-156072762', '2017-05-31 00:00:00', 'Contabilidad', 'verorivadeo@hotmail.com', '4', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (471, '2017-04-24 00:00:00', 17573383, 'SZKOLKA', 'Alejandro Francisco', 'Caños de escape', 'Av belgrano 1782', 2386, 25, '0381-155699591', '2017-04-24 00:00:00', 'Mecanica de Atomotor', 'aaa@aaa.com', '3', 'RODRIGUEZ Maria Jose', 33825732, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (472, '2017-05-30 00:00:00', 31544120, 'SOSA', 'Guido Arnaldo', 'Criminología - Varios', 'Ecuado 4400', 2386, 25, '0381-156786966', '2017-05-30 00:00:00', 'Docencia', 'guido.sosa.h@gmail.com', '3', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (473, '2017-06-01 00:00:00', 24982143, 'MONZON', 'Andrea', 'venta Prod. Naturales OMNILIFE', 'San Martin 481', 2385, 25, 'Cel.:155790886', '2017-06-01 00:00:00', 'Vendedor', 'fernica_29@hotmail.com', '4', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (474, '2017-05-31 00:00:00', 28221110, 'SANTOS NASSIF', 'Mariana Constanza', 'Abogada - Familia y sucesiones', 'Gral. Paz 323 - Piso:1 Of.:A', 2386, 25, 'Cel:155284592', '2017-05-31 00:00:00', 'Abogacia', 'ahleinmarhaba@hotmail.com', '5', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (475, '2017-05-31 00:00:00', 22336910, 'LEANDRINI', 'Silvina Elizabeth', 'Podologa', 'Gutemberg 74', 2386, 25, 'Cel.:155975390 - Fijo:4205278', '2017-05-31 00:00:00', 'Podologia', 'leandrinisilvina@hotmail.com', '3', 'LUNA Rodolfo Alberto', 25843368, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (476, '2017-05-31 00:00:00', 33091488, 'JUAREZ', 'Noelia Romina', 'Vta de ropa - Calzado para niños', 'Facundo Quiroga 161', 2387, 25, 'Cel:156446864', '2017-05-31 00:00:00', 'Vendedor', 'juarezz_rn@hotmail.com', '3', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (477, '2017-05-31 00:00:00', 36584235, 'ARROYO', 'Jorge Luis', 'Abogado civil ', 'Congreso 680 - Piso:2º Of.:8', 2386, 25, 'Cel.:156328388', '2017-05-31 00:00:00', 'Abogacia', 'arroyo.jorgeluis92@gmail.com', '1', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (478, '2017-05-18 00:00:00', 34067498, 'AYDAR', 'Benjamin Rodolfo ', 'Tecnico en reparacion de art. Tecnologicos (PC-Tablet-Celulares)', 'Florida 2480', 2386, 25, 'Cel:156698520', '2017-05-18 00:00:00', 'Tecnico/a', 'rbnaydar@gmail.com', '1', 'AYDAR Jorge Luis', 12923102, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (479, '2017-05-31 00:00:00', 27231740, 'JIMENEZ', 'Cecilia Ines', 'Psicologa - Showroom - cursos', 'Rondeau 281 - Piso:1º', 2386, 25, 'Cel:153031518', '2017-05-31 00:00:00', 'Psicologia', 'soldenoche7@yahoo.com.ar', '4', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (480, '2017-05-31 00:00:00', 24059978, 'EXLER', 'Silvina', 'Abogada Civil ', 'Buenos Aires 513 - Piso: 1º Of.:A', 2386, 25, 'Cel:154571694', '2017-05-31 00:00:00', 'Abogacia', 'silvinaexler@hotmail.com', '4', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (481, '2017-05-31 00:00:00', 33703506, 'VELIZ', 'Gabriela', '-', 'Santiago 1323', 2386, 25, 'Cel: 154167061', '2017-05-31 00:00:00', 'Contabilidad', 'cpnveliz.gabi@gmail.com', '4', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (482, '2017-05-31 00:00:00', 27200664, 'QUIROGA', 'Laura Evangelina', 'Tratm. Faciales, Corporales, Masajes.', 'Crisostomo Alv. 550 - 5to Piso D', 2386, 25, 'Cel: 154139561', '2017-05-31 00:00:00', 'Esteticista', 'laury_quiroga@hotmail.com.ar', '2', 'PONCE Carolina', 27211123, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (483, '2017-05-31 00:00:00', 22612322, 'RUIZ', 'Nancy del Valle', 'Vta. De indumentaria - Calzados - Accesorios', 'Solano Vera 360', 2386, 25, 'Cel:153580382', '2017-05-31 00:00:00', 'Comerciante', 'aaa@aaa.com', '3', 'FERNANDEZ Jorge', 16039622, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (484, '2017-05-30 00:00:00', 17494578, 'POSSE', 'Carlos Humberto', 'Penal - Civil', '9 de Julio 379 Of. 1', 2386, 25, 'Cel: 154901511', '2017-05-30 00:00:00', 'Abogacia', 'drcarlosposse@hotmail.com', '4', 'VIERA Debora Anabel', 30588551, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (485, '2017-05-30 00:00:00', 29788499, 'CABRERA', 'Luciana Fernanda', 'Vta. De ropa - Showroom - Alq. De juegos y cabina fotog. - Fabrica de Souvenirs', 'Paraguay 4420 Block 5', 2386, 25, 'Cel: 156786958', '2017-05-30 00:00:00', 'Comerciante', 'luludelsanto@gmail.com', '3', 'SOSA Guido', 31544120, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (486, '2017-05-30 00:00:00', 23116467, 'LUCENAS', 'Rodolfo Ramon', 'Vta. De aberturas y muebles de madera', 'Av. Avellaneda 31', 2386, 25, 'Cel:156889356', '2017-05-30 00:00:00', 'Comerciante', 'aaa@aaa.com', '1', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (487, '2017-05-30 00:00:00', 38184253, 'MOLINA', 'Manuel', 'Taller Mecanico', 'Av. Siria 2033', 2386, 25, 'ceL:155303425', '2017-05-30 00:00:00', 'Mecanica de Atomotor', 'lm-molina94@hotmail.com', '1', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (488, '2017-05-30 00:00:00', 40238310, 'MIGNONE', 'Fabricio Italo', 'Vta. De Muebles', 'Francia 55', 2386, 25, 'Cel:155573493', '2017-05-30 00:00:00', 'Comerciante', 'aaa@aaa.com', '1', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (489, '2017-05-30 00:00:00', 27016445, 'ALINCASTRO', 'Cecilia Ines ', 'Vta. De Indumentaria Femenina', 'Pje. Canal de Beagle 4669 - Bº Los Tarcos II', 2386, 25, 'Cel:156653368', '2017-05-30 00:00:00', 'Vendedor', 'mandingaferiantes@gmail.com', '4', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (490, '2017-05-30 00:00:00', 30069432, 'PICCIONE', 'Victor Manuel ', 'Fabrica de canaletas - toldos ', 'Bolivar 2856', 2386, 25, 'Cel:155024362', '2017-05-30 00:00:00', 'Comerciante', 'bazikaze1983@gmail.com', '3', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (491, '2017-05-30 00:00:00', 30117645, 'RODRIGUEZ', 'Martin Navor', 'Servicio de lunch para eventos - Casa de comidas', 'Av. Republica del Libano 1047', 2386, 25, 'Cel:153383003', '2017-05-30 00:00:00', 'Gastronomia', 'mnr3003@hotmail.com', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (492, '2017-05-30 00:00:00', 32460550, 'VIDAL', 'Luis Ariel ', 'Compra y Vta. De muebles nuevos y Usados ', 'Lopez Mañan 444', 2386, 25, 'Cel:156280748', '2017-05-30 00:00:00', 'Vendedor', 'luische666@hotmail.com', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (493, '2017-05-30 00:00:00', 33483174, 'MANSILLA', 'Miguel Angel', 'Machimbrados - Trabajos en gral./ Vta. De Ropa', 'Juan Bautista Alberdi 144', 2300, 25, 'Cel:153643977', '2017-05-30 00:00:00', 'Carpinteria', 'miguelmansilla755@gmail.com', '1', 'Marcela Agustina Lucena', 31588832, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (494, '2017-05-29 00:00:00', 34049069, 'VIDAL', 'Fatima Emilse Soraya', 'Vta. De Zapatos', 'Bº Lomas de Tafi 600 Viv. - Mz.:31 Cs.:21', 2386, 25, 'Cel:155505310', '2017-05-29 00:00:00', 'Showroom', 'fesv1988@gmail.com', '1', 'VIDAL Ayelen Aldana', 41534958, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (495, '2017-05-29 00:00:00', 33974709, 'GUTIERREZ', 'Hector Martin', 'Compra y vta. de celulares, electrodomesticos y productos varios - Animaciones y Eventos  ', 'La Rioja 1620 - Los Vazquez', 2386, 25, 'Cel:155410432 - Cel Alt.:152032048', '2017-05-29 00:00:00', 'Vendedor', 'hectorgutierrez822@gmail.com', '4', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (496, '2017-05-29 00:00:00', 22387989, 'ABREGU', 'Juan Sergio', 'Peluqueria', 'Bs. As. 432', 2386, 25, 'Cel:155865232', '2017-05-29 00:00:00', 'Peluqueria', 'sergioabreguj@gmail.com', '3', 'GURIDE Azul Daniela', 41736618, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (497, '2017-05-31 00:00:00', 23517703, 'BANCHERO', 'Hector Ariel', 'Vta. De Ropa y Calzado', 'Av. Roca 1524 ', 2386, 25, 'Cel:155361962 - Fijo:4298784', '2017-05-31 00:00:00', 'Vendedor', 'harielbanchero@hotmail.com', '1', 'BUSTOS Emma ', 26783927, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (498, '2017-05-29 00:00:00', 33372698, 'SUAREZ MOYA', 'Carolina del Valle', 'Civil - Comercial - Cobros Ejec.', 'Salta 247 - Galeria De la Salta. Local 7', 2386, 25, 'Cel: 155413382', '2017-05-29 00:00:00', 'Abogacia', 'estudiosuarezmoya@gmail.com', '4', 'Suarez Moya Adriana Natividad', 31129288, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (499, '2017-05-29 00:00:00', 28093700, 'GEREZ', 'Franco Sebastian', 'Vta de Produc. Nutric. Omnilife', 'Hipolito Irigoyen 406', 2385, 25, 'Cel: 156472061. Fijo: 4816827', '2017-05-29 00:00:00', 'Vendedor', 'francosebastiangerez7@gmail.com', '4', 'Villagra Viviana Beatriz', 27496831, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (500, '2017-05-29 00:00:00', 34327125, 'LEGUIZAMON', 'Carol Soledad', 'Vta. De Calzados y Productos Capilares ', 'Bº Belgrano - 9 de Julio 483 ', 2284, 25, 'Cel:155102690 - Fijo:4260151', '2017-05-29 00:00:00', 'Vendedor', 'shool.legui@gmail.com', '4', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (501, '2017-05-27 00:00:00', 18630670, 'INFANTE', 'Luis Augusto', 'Optica', 'Avellaneda 791', 2386, 25, 'Cel: 155182014', '2017-05-27 00:00:00', 'Comerciante', 'aaa@aaa.com', '3', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (502, '2017-05-27 00:00:00', 37655939, 'JUAREZ', 'Carla Florencia', 'Vta. De indumentaria - Calzados - Accesorios ', 'Bº Los Fresnos - Mz: C - Cs:1', 2386, 25, 'Fijo:4266827', '2017-05-27 00:00:00', 'Vendedor', 'david_alba2011@hotmail.com', '2', 'ALBARRACIN Franco David ', 30723348, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (503, '2017-05-27 00:00:00', 30117777, 'GONZALEZ', 'Gustavo Gabriel', 'Taller mecanico de autos y motos ', 'Av. Martin Berho 517', 2386, 25, 'Cel:155742060', '2017-05-27 00:00:00', 'Mecanica de Atomotor', 'djg_gustavogonzalez@hotmail.com', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (504, '2017-05-26 00:00:00', 17494270, 'GARCIA', 'Sergio Edgardo', 'Vta. De Celulares - Accesorios - Servicio tecnico', 'Salta 256', 2386, 25, 'Cel:154760333', '2017-05-26 00:00:00', 'Comerciante', 'aaa@aaa.com', '3', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (505, '2017-05-26 00:00:00', 26445424, 'GARCIA', 'Diego', 'Vta de celulares y Accesorios', 'Salta 206', 2386, 25, 'Cel:156445157', '2017-05-26 00:00:00', 'Comerciante', 'diegoaikidoka@gmail.com', '3', 'LESCANO Veronica', 26028237, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (506, '2017-05-26 00:00:00', 20977067, 'ALBARRACIN', 'Claudia Beatriz', 'Optica', 'Buenos Aires 424', 2386, 25, 'Cel:156381061', '2017-05-26 00:00:00', 'Comerciante', 'opticanova_tucuman@hotmail.com', '3', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (507, '2017-05-26 00:00:00', 16936431, 'BRAHIM', 'Silvia Estrella', 'Abogada civil - Familia', 'Congreso 566 - Piso:6 Of.:E', 2386, 25, 'Cel:155027910', '2017-05-26 00:00:00', 'Abogacia', 'silviaestrellabrahim@hotmsil.com', '1', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (508, '2017-05-26 00:00:00', 23894341, 'DELAJARA', 'Esteban David ', 'Vta. De productos varios - Ladrillos - Celulares - Servicio de mantenimiento', 'Av. Republica del Paraguay 347', 2297, 25, 'Cel:156087610', '2017-05-26 00:00:00', 'Vendedor', 'delajaradavid@gmail.com', '5', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (509, '2017-05-26 00:00:00', 29101193, 'VILLAREAL', 'Raul Oscar', 'Vta. De Productos Nutricionales OMNILIFE - Fisioterapia', 'Pje. Juan A. Rojas 41', 2258, 23, 'Cel:156256205', '2017-05-26 00:00:00', 'Vendedor', 'oscar2003201@hotmail.com', '4', 'LAZARTE Silvana Daniela ', 32684679, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (510, '2017-05-24 00:00:00', 16526300, 'FIGUEROA', 'Silvia Adriana ', 'Vta. De ropa - Blanco', 'Bº Prospero Mena - Mz.: C Block: U Dpto.:17', 2371, 25, 'Cel:155736986 - Cel Alt.:156678807', '2017-05-24 00:00:00', 'Vendedor', 'aaa@aaa.com', '5', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (511, '2017-05-24 00:00:00', 25543529, 'GONZALEZ', 'Soledad Isabel', 'Polirubro - merceria - Vta de calzados - Accesorios - Art. De librería', 'Pje. Fray Manuel Perez 326', 2284, 25, 'Cel:154039623', '2017-05-24 00:00:00', 'Vendedor', 'solegonzalez4@hotmail.com', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (512, '2017-05-24 00:00:00', 28883974, 'CAJAL', 'Paola Del Valle', 'Artesanias en madera y tejidos ', 'Pje. Agustin Garcia 2274', 2386, 25, 'Cel:156720350', '2017-05-24 00:00:00', 'Artesanias', 'aaa@aaa.com', '4', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (513, '2017-05-24 00:00:00', 22664697, 'ARGAÑARAZ', 'Jose Daniel', 'Vta. De celulares - accesorios - Servicio Tecnico ', 'Bº 40 Viviendas - Mz:B Cs:8 ', 2386, 25, 'Cel:153567876 - Cel atl.:156934100', '2017-05-24 00:00:00', 'Comerciante', 'jarganaraz41@gmail.com', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (514, '2017-05-24 00:00:00', 36421267, 'VILLAGRAN', 'Florencia del Valle ', 'Eventos en gral. - Cursos y capacitaciones ', 'Baltazar Aguirre 110 - Lastenia', 2284, 25, 'cel:155277638', '2017-05-24 00:00:00', 'Servicios para fiesta', 'flor.v_eventos@hotmail.com', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (515, '2017-05-24 00:00:00', 33969302, 'VALDEZ', 'Pamela Anahi', 'Estetica - Depilacion - Tratamientos corporales - SHOWROOM Vta de ropa', 'Cochabamba 139 ', 2371, 25, 'Cel:155862565 ', '2017-05-24 00:00:00', 'Esteticista', 'aaa@aaa.com', '5', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (516, '2017-05-24 00:00:00', 38348323, 'GARGIULO', 'Maria Valentina', 'Vta de ropa - Calzado - Accesorios', 'Balcarce 451 - Piso:3º Depto.:C', 2386, 25, 'Cel:155358565', '2017-05-24 00:00:00', 'Showroom', 'vgargiuloricci@gmail.com', '4', 'NARANJO Lautaro', 38348394, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (517, '2017-05-24 00:00:00', 25421696, 'CELIZ', 'Veronica Daniela', 'Pestañas - Manos - Depilacion', 'Bº El Mirador de la Virgen - Mz:G Cs:5 - Villa Carmela', 2386, 25, 'Cel:154402658 - Fijo:4931076', '2017-05-24 00:00:00', 'Esteticista', 'veronicadaniela.celiz@gmail.com', '5', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (518, '2017-05-24 00:00:00', 33541338, 'CAPDEVILA', 'Maria Soledad', 'Abogada Laboral', 'Lamadrid 377 - Piso:1º Of.: D', 2386, 25, 'Cel:156290741 - Fijo:4205973', '2017-05-24 00:00:00', 'Abogacia', 'soledadcapdevila25@hotmail.com', '5', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (519, '2017-05-24 00:00:00', 24409338, 'PADILLA', 'Federico Manuel ', 'Derecho tributario', 'San Lorenzo 325 - Piso:2º Depto.: B', 2386, 25, 'Cel:153531260', '2017-05-24 00:00:00', 'Abogacia', 'fedepadilla001@gmail.com', '5', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (520, '2017-05-24 00:00:00', 23519563, 'ANASTASIO', 'Nancy Mabel', 'Psicologa Social - Cursos de Orientacion vocacional ', 'La Rioja 986', 2386, 25, 'Cel:154962310 - Fijo:4202286', '2017-05-24 00:00:00', 'Psicologia', 'nancyanastasio@yahoo.com.ar', '3', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (521, '2017-05-23 00:00:00', 22264467, 'BOSSINI', 'Carolina Isabel', 'Abogada Laboral - Familia - Alquiler de cabañas en Tafi del Valle', '9 de Julio 253 - PB - Depto.: D', 2386, 25, 'Cel:155004866', '2017-05-23 00:00:00', 'Abogacia', 'carolinabossini@hotmail.com', '4', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (522, '2017-05-23 00:00:00', 37725553, 'ELIAS', 'Maria Florencia', 'Accidentes de Transito y Laborales', 'Las Heras 470 - PB - Block:2 Of.:A', 2386, 25, 'Cel:154187968', '2017-05-23 00:00:00', 'Abogacia', 'florelias@live.com', '4', 'MENDEZ Sara Beatriz', 20422001, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (523, '2017-05-23 00:00:00', 37658345, 'ZELAYA', 'Paola Jezabel', 'Vta. De juguetes ', 'Solano Vera 1057 - Pje. S/N', 2387, 25, 'Cel:156260621 - Fijo:4259421', '2017-05-23 00:00:00', 'Vendedor', 'los_instaladores@hotmail.com', '4', 'TOSCANO Maria de las Mercedes', 22332873, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (524, '2017-05-23 00:00:00', 34242941, 'ARGAÑARAZ', 'Elena Maria', 'Boutique ', 'Las Piedras 963', 2386, 25, 'Cel:154756588', '2017-05-23 00:00:00', 'Comerciante', 'tiendabruni@gmail.com', '3', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (525, '2017-05-23 00:00:00', 23114419, 'CARDOZO', 'Viviana beatriz', '\"Vta de productos nutricionales - Naturales \"\"REINO\"\"\"', 'San Juan 529', 2386, 25, 'Cel:155836549', '2017-05-23 00:00:00', 'Comerciante', 'vivianademartino@hotmail.com', '1', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (526, '2017-05-22 00:00:00', 25498865, 'COLOMBRES ANTONI', 'Maria Isabel', 'Pilates', 'Av. Raya al 1000 - Sector 14. Mzna  - Casa 25 Lomas de Tafi', 2371, 25, 'Cel: 155848885', '2017-05-22 00:00:00', 'Docencia', 'lluviamansa@gmail.com', '4', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (527, '2017-05-22 00:00:00', 28883188, 'TORREGO', 'Laura Isabel', 'Mecanica del automotor en general', 'Pje. Canal de Beagle 4661', 2386, 25, 'Cel:154956452', '2017-05-22 00:00:00', 'Mecanica de Atomotor', 'lauraisabeltorrego@gmail.com', '4', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (528, '2017-05-22 00:00:00', 18187695, 'PALAZZO', 'Adriana Margarita', 'Odontologia en general ', 'Av. Colon 58', 2386, 25, 'Cel:154413839', '2017-05-22 00:00:00', 'Odontologia', 'adripalazzo@yahoo.com.ar', '2', 'DECIMA Juan Jose ', 41763847, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (529, '2017-05-22 00:00:00', 25844533, 'CARRIZO', 'Hugo Orlando', 'Urgencias mecanicas - Vta de repuestos para motos - motoservicio', 'Mario Bravo 116', 2284, 25, 'Cel:155114655', '2017-05-22 00:00:00', 'Mecanica de Atomotor', 'benjamoto@hotmail.com', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (530, '2017-05-22 00:00:00', 33163378, 'TORRES', 'Gabriel Esteban ', 'Fabrica de muebles ', 'Paraguay 1227', 2386, 25, 'Cel:156911871', '2017-05-22 00:00:00', 'Carpinteria', 'gabriel_of_life@hotmail.com', '1', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (531, '2017-05-22 00:00:00', 22664989, 'ROMANO', 'Claudia Ines ', 'Estilista - peluqueria ', 'Bº Lomas de Tafi - Sector:15 Mz:5 Cs:8 - Av Raya al 1100', 2386, 25, 'Cel:154017297', '2017-05-22 00:00:00', 'Peluqueria', 'aaa@aaa.com', '4', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (532, '2017-05-22 00:00:00', 36703821, 'REGNER', 'Maria Agustina', 'Vta. De zapatos', 'Pje. Raul Galan 3960', 2386, 25, 'Cel:153527069', '2017-05-22 00:00:00', 'Vendedor', 'shoesoliva@gmail.com', '3', 'RODRIGUEZ Matias', 37096438, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (533, '2017-05-22 00:00:00', 25373106, 'ABELLA CARPINTERI', 'Silvana del Valle', 'Abogada civil - Familia - Profesora', 'Av. Gobernador del campo 260 / San Lorenzo 180 Dpto.:14', 2386, 25, 'Cel:154802803', '2017-05-22 00:00:00', 'Abogacia', 'sil.abella@hotmail.com', '1', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (534, '2017-05-22 00:00:00', 18366272, 'SOSA', 'Juan Carlos', 'Refrigeracion (Aires y Heladeras) Herreria. Instalaciones. Electricidad.', 'Lopez Mañan 2034', 2386, 25, 'Cel:154744546', '2017-05-22 00:00:00', 'Gasista', 'jcssosa@hotmail.com', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (535, '2017-05-21 00:00:00', 35814940, 'ESPINOZA', 'Carlos Daniel', 'Mecanico agroindustrial', 'Mendoza 4747', 2386, 25, 'Cel:155262826', '2017-05-21 00:00:00', 'Mecanica de Atomotor', 'aaa@aaa.com', '1', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (536, '2017-05-20 00:00:00', 16933577, 'ARCE', 'Pio Roque', 'Viajes y Turismo: Estudiantes - Mayores', 'B Experimenral 2 Mzna B - Block 6 - Depto 9', 2327, 25, 'Cel: 155064689', '2017-05-20 00:00:00', 'Turismo', 'pioroquearce@hotmail.com', '3', 'MOLINA Maria Fernanda', 36231779, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (537, '2017-05-20 00:00:00', 20171529, 'DEL CAMPO', 'Daniel Eduardo', 'Vta de ropa - celulares - Floreria - Arreglos florales ', 'Av. Colon 730', 2386, 25, 'Cel:155160222', '2017-05-20 00:00:00', 'Vendedor', 'aaa@aaa.com', '1', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (538, '2017-05-19 00:00:00', 28290600, 'RIOS', 'Valeria del Valle', 'Vta. De Bazar y Blanco', 'Pje. Monserrat 2566', 2386, 25, 'Cel:156385910 - Fijo:4345254', '2017-05-19 00:00:00', 'Vendedor', 'aaa@aaa.com', '5', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (539, '2017-05-19 00:00:00', 17170240, 'BENINI', 'Rosana Beatriz', '\"Vta. De productos cosmeticos \"\"MARY KAY\"\" - Vta de ropa\"', 'Pje. Republica 346', 2386, 25, 'Cel:154595296', '2017-05-19 00:00:00', 'Vendedor', 'rosanabenini64@hotmail.com', '5', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (540, '2017-05-19 00:00:00', 32076855, 'LANCONI', 'Melisa Ginette', 'Vta. De indumentaria - articulos de temporada - Zapatos y carteras', 'Av. Alem 653 - Planta Baja - Dpto.: B', 2386, 25, 'Cel:155274288', '2017-05-19 00:00:00', 'Vendedor', 'larusalanconi@gmail.com', '2', 'MARIN DE LA FUENTE Isaias Blas', 31809010, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (541, '2017-05-19 00:00:00', 16971304, 'GONZALEZ', 'Celina del Huerto', 'Cosmetologia - Depilacion - Peluqueria -Tratamientos de la piel en gral. ', 'Bº 250 viv. Los Chañaritos - Mz:J Cs:18', 2386, 25, 'Cel:155238107', '2017-05-19 00:00:00', 'Esteticista', 'celinagonzales724@gmail.com', '3', 'ALBORNOZ Ruben Angel ', 17913298, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (542, '2017-05-19 00:00:00', 37096480, 'PEREZ', 'Priscila Paola ', 'Profesora particular de ingles - Peluqueria ', 'Peru 815', 2386, 25, 'Cel:156543283', '2017-05-19 00:00:00', 'Docencia', 'priscilapaolaperez@icloud.com', '1', 'PEREZ Bruno ', 42007083, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (543, '2017-05-19 00:00:00', 29242509, 'JIMENEZ', 'Eliana Patricia', 'Vta de indumentaria femenina - accesorios', 'Ituzaingo 670', 2387, 25, 'Cel:155191038', '2017-05-19 00:00:00', 'Comerciante', 'miamorpeti@icloud.com', '1', 'PEREZ Bruno Catriel ', 42007083, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (544, '2017-05-19 00:00:00', 20692198, 'RIVERO', 'Oscar Hilario ', 'Letras en acero - Carteles luminosos - Toldos - Portones electricos - Servio en gral. ', 'Av. Francisco de Aguirre 3069', 2386, 25, 'Cel:155007992', '2017-05-19 00:00:00', 'Metalurgia ', 'oxcarivery@gmail.com', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (545, '2017-05-19 00:00:00', 18638877, 'MENDEZ', 'Fabricio Rafael', 'Carpintero en aluminio', 'Bº Villa Las Flores - Mz:3 Lt:24', 2371, 25, 'Cel:155568888 - Fijo:4614028', '2017-05-19 00:00:00', 'Metalurgia ', 'fabriciomendez_aluminio@hotmail.com', '4', 'JUAREZ Elizabeth del Valle', 20758130, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (546, '2017-05-19 00:00:00', 37311382, 'SOSA STANCANELLI', 'Hernan Guillermo', 'Electricista - inst. de aire acondicionado - Vta de herramientas ', 'Bº San Miguel 2 - Mz: I Lt:11', 2386, 25, 'Cel:153367455', '2017-05-19 00:00:00', 'Electricidad', 'hernansosa93@hotmail.com', '2', 'PEREZ Flavia', 38184986, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (547, '2017-05-18 00:00:00', 35921294, 'OLIVERA ', 'Mayra Virginia', 'Psicologa Clinica ', 'Lamadrid 377 - Piso:10 Of.:E', 2386, 25, 'Cel:156460914 ', '2017-05-18 00:00:00', 'Psicologia', 'mayraolivera01@gmail.com', '3', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (548, '2017-05-18 00:00:00', 29817572, 'AGUERO', 'Diego Enrique', 'Implantes - Protesis - Restauraciones', 'La Madrid 205', 2386, 25, 'Cel: 155423206', '2017-05-18 00:00:00', 'Odontologia', 'diego10sm@hotmail.com', '2', 'Aguero Maximiliano Daniel', 38183800, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (549, '2017-05-18 00:00:00', 27365403, 'FARIAS', 'Walter Alfredo', 'Instructor de artes Marciales - Personal Trainer - Seguridad Privada - Masajes ', 'Fray Luis Beltran 873', 2386, 25, 'Cel:155050741', '2017-05-18 00:00:00', 'Docencia', 'aralihve@gmail.com', '3', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (550, '2017-05-18 00:00:00', 18479143, 'SUAREZ', 'Jorge Fernando', 'Escuelita de Futbol - Taller mecanico ', 'Lucas Cordoba 1151', 2386, 25, 'Cel:155106760', '2017-05-18 00:00:00', 'Profesor/a', 'ferchu_gymartistica@hotmail.com', '4', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (551, '2017-05-18 00:00:00', 29081406, 'VIZCARRA', 'Marisa Viviana ', 'Vta de ropa - Accesorios - Calzados ', 'Bº San Agustin - Manuela Pedraza 1º cuadra ', 2276, 25, 'Cel:156955611 - Fijo:4942848', '2017-05-18 00:00:00', 'Comerciante', 'aaa@aaa.com', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (552, '2017-05-18 00:00:00', 37485072, 'PERDIGON', 'Natalia Alejandra', 'Vta. De ropa - Calzados - Celulares - accesorios', 'Bº Portal - Mz:B Cs:10 - San Pablo', 2385, 25, 'Cel:154150975 - Fijo:4856208', '2017-05-18 00:00:00', 'Vendedor', 'alexandra09perdigon@gmail.com', '5', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (553, '2017-05-18 00:00:00', 39357482, 'RUIZ', 'Franco Maximiliano', 'Vta de Suplementos deportivos por mayor y menor - alimentos dieteticos', 'Colombia 951', 2386, 25, 'Cel:155137734', '2017-05-18 00:00:00', 'Vendedor', 'info.musclecenter@gmail.com', '1', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (554, '2017-05-18 00:00:00', 13622254, 'GARRETON', 'Jorge Fernando', 'Vta. De ropa - calzados', 'Yrigoyen 393 ', 2285, 25, 'Cel:154729038 - Fijo:4820015', '2017-05-18 00:00:00', 'Vendedor', 'jorgegarreton@hotmail.com', '5', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (555, '2017-05-17 00:00:00', 20393586, 'NUÑEZ', 'Rossana Silvina', 'Ortodoncia - Implantes - Odontologia en gral.', 'Av. Republica Del Libano 1455', 2386, 25, 'Cel:155791824 - Fijo:4330030', '2017-05-17 00:00:00', 'Odontologia', 'rossananunez1455@hotmail.com', '3', 'ARROYO Fernando', 20982512, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (556, '2017-05-17 00:00:00', 26702735, 'SOSA', 'Laura Cecilia', 'Eventos - Salon de fiestas - Catering - Animacion ', '12 de Octubre 574', 2386, 25, 'Cel:154409618 ', '2017-05-17 00:00:00', 'Servicios para fiesta', 'salonagrandaditos@gmail.com', '4', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (557, '2017-05-17 00:00:00', 12148317, 'PALACIOS', 'Victor Hugo', 'Mecanica en General', 'Pje. Santillan 774', 2386, 25, 'Cel:155179484', '2017-05-17 00:00:00', 'Mecanica de Atomotor', 'aaa@aaa.com', '1', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (558, '2017-05-17 00:00:00', 36584082, 'ATIM ANTONI', 'Camilo Mariano', 'Abogado Penal y Tributario ', 'San Martin 910 - Piso: 4º', 2386, 25, 'Cel:155046114', '2017-05-17 00:00:00', 'Abogacia', 'camiloatim@hotmail.com', '1', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (559, '2017-05-17 00:00:00', 22336979, 'WOLTERS', 'Jorge Mauricio', 'Tecnico electromecanico - Seguridad Electronica - Electricidad', 'Ecuador 331', 2386, 25, 'Cel:154034754 - Fijo:4318878', '2017-05-17 00:00:00', 'Tecnico/a', 'mwolters@sidetec.com.ar', '4', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (560, '2017-05-17 00:00:00', 28124062, 'DIAZ', 'Federico Linardo', 'Abogado Laboral - Civil ', 'Lamadrid 377 - Piso:1º Of:D', 2386, 25, 'Cel:155171045 - Fijo:4205973', '2017-05-17 00:00:00', 'Abogacia', 'fedelinardo@gmail.com', '5', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (561, '2017-05-17 00:00:00', 27651744, 'ORTEGA TERRIJN', 'Carlos Guido', 'Abogado laboral - Familia', 'Belgrano 175 ', 2371, 25, 'Cel:155400212 - Fijo:4615612', '2017-05-17 00:00:00', 'Abogacia', 'ortegaterrijnguido@gmail.com', '5', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (562, '2017-05-16 00:00:00', 21892523, 'JURI', 'Jose Javier', 'Carpinteria en gral. ', 'Pje. Chazarreta 2071', 2386, 25, 'Cel:154406217', '2017-05-16 00:00:00', 'Carpinteria', 'jurijavier@yahoo.com.ar', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (563, '2017-05-16 00:00:00', 18471758, 'LOPEZ', 'Edmundo Eduardo', 'Vta. De Bebidas por mayor y menor', 'Honduras 1310', 2386, 25, 'Cel:156971905 - Fijo:4282134', '2017-05-16 00:00:00', 'Vendedor', 'edmundoedylopez@gmail.com', '5', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (564, '2017-05-16 00:00:00', 25354193, 'ROLDAN', 'Ramon Alejandro', 'Mecanica en general ', 'Puyrredon 99', 2284, 25, 'Cel:155180162', '2017-05-16 00:00:00', 'Mecanica de Atomotor', 'aaa@aaa.com', '5', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (565, '2017-05-16 00:00:00', 21335013, 'GARCIA', 'Marcelo Omar', 'Albañileria - Pintura - Plomeria - reformas en gral.', 'Ignacio Bass 3985', 2386, 25, 'Cel:155222367', '2017-05-16 00:00:00', 'Construccion', 'aaa@aaa.com', '5', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (566, '2017-05-16 00:00:00', 26783496, 'APUD REINHOLD', 'Maricel', 'Abogada civil - previsional - administradora de consorcio', '9 de Julio 376 - Piso:2º Of:7', 2386, 25, 'Cel:154721009 - Fijo:4977804', '2017-05-16 00:00:00', 'Abogacia', 'maricelapud37@gmail.com', '4', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (567, '2017-05-16 00:00:00', 33973634, 'ARIAS', 'Ramon', 'Tecnico en reparacion de celulares - Vta de celulares y accesorios de telefonia movil', 'B El Salvador - Mz:15 Lt:8', 2386, 25, 'Cel:155115966 - Fijo:4296285', '2017-05-16 00:00:00', 'Tecnico/a', 'ramonarias634@gmail.com', '4', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (568, '2017-05-16 00:00:00', 31379102, 'CORREA', 'Gisela Marilin ', 'Contadora ', 'Monseñor Diaz 214', 2284, 25, 'Cel:155556224', '2017-05-16 00:00:00', 'Contabilidad', 'giselcpn@gmail.com', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (569, '2017-05-16 00:00:00', 26455952, 'RODRIGUEZ SORIA', 'Silvia Cecilia', 'Civil - Adm. De Consorcios - Cobro de Morosos', '9 de Julio 379 - 2º Piso - Of. 7', 2386, 25, 'Cel: 155939914', '2017-05-16 00:00:00', 'Abogacia', 'ceroso@hotmail.com', '4', 'Rolando Daniel Cermignani', 28222917, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (570, '2017-05-16 00:00:00', 34064283, 'ALBORNOZ', 'Adrian René', 'Vta. De Ropa y Calzado', 'Lavalle 683', 2386, 25, 'Cel: 156706262', '2017-05-16 00:00:00', 'Comerciante', 'albornozadrianrene@gmail.com', '3', 'María Jimena Sosa', 34186410, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (571, '2017-05-15 00:00:00', 28151190, 'VILLASUR', 'Rodrigo Facundo', 'Durlock - Tabiqueria - Electricidad', 'Colombia 3105', 2386, 25, 'Cel: 155067700', '2017-05-15 00:00:00', 'Construccion', 'facundovillasur@grupogambi.com', '5', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (572, '2017-05-12 00:00:00', 14480461, 'CAJIDE', 'Jorge Daniel ', 'Retificacion de motores ', 'Pje. Octaviano Vera 4 ', 2386, 25, 'Fijo:4246576 - cel alt.: 155463968', '2017-05-12 00:00:00', 'Mecanica de Atomotor', 'aaa@aaa.com', '5', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (573, '2017-05-12 00:00:00', 29532579, 'MOLINA', 'Francisco Alejandro', 'Salon de Fiestas - Eventos - Abogado - Civil y Laboral', 'Pje. Remedios de Escalada 1009', 2386, 25, 'Cel: 154408757', '2017-05-12 00:00:00', 'Servicios para fiesta', 'franciscomolina333@hotmail.com', '4', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (574, '2017-05-12 00:00:00', 22336212, 'POTOLICCHIO', 'Dante Esteban', 'Librería - Vta de elementos deportivos e indumentaria', 'Av. Alem 96', 2386, 25, 'Cel:155437160 - Fijo:4202408', '2017-05-12 00:00:00', 'Comerciante', 'dansa-2015@hotmail.com', '3', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (575, '2017-05-12 00:00:00', 32459106, 'LLOVERA', 'Pablo', 'Vta de ladrillos - elementos de seguridad industrial', '25 de Mayo 2488', 2386, 25, 'Cel:153413131 ', '2017-05-12 00:00:00', 'Comerciante', '4chukker@gmail.com', '3', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (576, '2017-05-12 00:00:00', 24803118, 'TERAN', 'Claudio Gaston', 'Carpinteria en MDF ', 'Manuel Estrada 195', 2386, 25, 'Cel:154540691 - Fijo:4278676', '2017-05-12 00:00:00', 'Carpinteria', 'aaa@aaa.com', '3', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (577, '2017-05-12 00:00:00', 20247124, 'CARDOZO', 'Daniel Gustavo', 'Tratamiento odontologico en gral.', 'Corrientes 766', 2386, 25, 'Cel:155351035', '2017-05-12 00:00:00', 'Odontologia', 'danielguscar@gmail.com', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (578, '2017-05-12 00:00:00', 30712465650, 'YUBRIN', 'Carlos', 'Estudio Juridico - Cobro Ejecutivo', '9 de Julio 485 - Piso: 6 Of.: A', 2386, 25, 'Fijo:4203020', '2017-05-12 00:00:00', 'Abogacia', 'jorgelinanicastro@estudioyubrin.com.ar', '5', 'NICASTRO Maria Jorgelina', 22665202, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (579, '2017-05-12 00:00:00', 28681193, 'NASIF PAZ', 'Maria Salome', 'Abogada Previsional - Familia ', 'Congreso 566 - Piso: 2º Dpto.: D', 2386, 25, 'Cel:155017913', '2017-05-12 00:00:00', 'Abogacia', 'salito_nasif@hotmail.com', '4', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (580, '2017-05-12 00:00:00', 17961115, 'COSTILLA', 'Enrique', 'Plomeria - Gasista - Durlock', 'Calle Tucuman 853', 2371, 25, 'Cel:155366480', '2017-05-12 00:00:00', 'Construccion', 'aaa@aaa.com', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (581, '2017-05-12 00:00:00', 27579256, 'PONCE', 'Rodolfo Miguel', 'Trabajos en gral. En pintura - mantenimiento', 'Crisostomo Mendez 458', 2386, 25, 'Cel:156309774', '2017-05-12 00:00:00', 'Pintor', 'aaa@aaa.com', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (582, '2017-05-11 00:00:00', 27033134, 'FERNÁNDEZ', 'Omar Enrique', 'Venta de Ropa - Accesorios', 'Locadio Paz S/N (Ing. San Juan)', 2284, 25, 'Cel: 155716775', '2017-05-11 00:00:00', 'Vendedor', 'elwiner_10@hotmail.com', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (583, '2017-05-11 00:00:00', 17467227, 'LOGARZO', 'Marcelo Oscar', 'Fabrica y Vta de ladrillos', 'Thames 2310', 2386, 25, 'Cel:155171133', '2017-05-11 00:00:00', 'Vendedor', 'aaa@aaa.com', '5', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (584, '2017-05-11 00:00:00', 31809351, 'ARIAS', 'Gabriel Sebastián', 'Vta de Ropa - Indumentaria - Showroom', 'Bº 200 Viv. -Mzna -E Casa 6', 2327, 25, '381-3281646', '2017-05-11 00:00:00', 'Comerciante', 'gaarias1985@gmail.com', '3', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (585, '2017-05-11 00:00:00', 20437306, 'RUIZ', 'Sergio Gustavo', 'Gasista matriculado - Plomeria - Electricidad', 'Muñecas 32 ', 2371, 25, 'Cel:155061756', '2017-05-11 00:00:00', 'Construccion', 'sergiogruiz2519@gmail.com', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (586, '2017-05-11 00:00:00', 27631225, 'MANSILLA', 'Jose Augusto', 'Vta. De ropa - accesorios - zapatos etc.', 'Delfin Jijena 284', 2284, 25, 'Cel:154481473', '2017-05-11 00:00:00', 'Vendedor', 'aaa@aaa.com', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (587, '2017-05-11 00:00:00', 21318797, 'YEPEZ', 'Daniel Adrian', 'Herreria - portones automaticos', 'Inca Garcilazo 2579 ', 2386, 25, 'C: 3816440565 - 156592367 -  4205293', '2017-05-11 00:00:00', 'Metalurgia ', 'autnorte@hotmail.com', '3', 'ACOSTA Ana Cecilia', 26684988, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (588, '2017-05-10 00:00:00', 21987042, 'RODRIGUEZ', 'Oscar Ramon', 'Automotores', 'Pje. Cabildo 4290', 2386, 25, 'Cel: 155323865', '2017-05-10 00:00:00', 'Electricidad', 'aaa@aaa.com', '5', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (589, '2017-05-10 00:00:00', 20920528, 'MERCADO', 'Alfredo Ramiro', 'Mecanica del automotor', 'Av. Saenz Peña 335', 2386, 25, 'Cel:154764113', '2017-05-10 00:00:00', 'Mecanica de Atomotor', 'aaa@aaa.com', '5', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (590, '2017-05-10 00:00:00', 22429452, 'ALVAREZ', 'Fatima del Valle', 'Cento de Estetica Purapar - Cosmeatra - Auxiliar de Medicina', 'Monteagudo 435', 2386, 25, '381-4155923 - 4974404', '2017-05-10 00:00:00', 'Esteticista', 'fatimavillarica@yahoo.com.ar', '3', 'Alvaro Romano', 41649669, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (591, '2017-05-10 00:00:00', 30069688, 'FERNANDEZ', 'Maria Carolina', 'Taller de bordado - Vta de uniformes para colegios', 'Bº Lomas de Tafi - Sector:19 - Mz: 10 Cs:12', 2386, 25, 'Cel:156990613', '2017-05-10 00:00:00', 'Modista', 'bordarte@outlook.com', '5', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (592, '2017-05-10 00:00:00', 25922842, 'MARTELLOTTA', 'Marcos Alberto ', 'Ingeniero en Electronica - Mantenimiento electrico en gral.', 'Pje. Arroyos y Pineda 955', 2386, 25, 'Cel:156342721', '2017-05-10 00:00:00', 'Ingenieria', 'martellotta_75@hotmail.com', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (593, '2017-05-10 00:00:00', 27594934, 'BACHI', 'Osvaldo Americo', 'Vta. De motos - Celulares - Vta en gral.', 'Pelegrini 1855', 2386, 25, 'Cel:156262164', '2017-05-10 00:00:00', 'Vendedor', 'osvaldobachi@hotmail.com', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (594, '2017-05-09 00:00:00', 21329252, 'RIVAROLA', 'Francisco Javier', 'Instalacion y Vta. De seguridad electronica', 'Maipu 1395 - Dpto: 7 ', 2386, 25, 'Cel:156458139', '2017-05-09 00:00:00', 'Instalacion Camaras de Seg', 'jabiri2001@hotmail.com', '5', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (595, '2017-05-09 00:00:00', 28481019, 'MONTIVERO', 'Cesar Alberto ', 'Mecanica Ligera - Cambio de aceite y direccion', 'Av. Siria 1365', 2386, 25, 'Cel:155822157 - Fijo:4310912', '2017-05-09 00:00:00', 'Mecanica de Atomotor', 'albertomontivero2222@gmail.com', '3', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (596, '2017-05-09 00:00:00', 13279609, 'SORIANO', 'Jose Francisco', 'Tecnico Electromecanico - Bobinado de motores', 'Av. Siria 1373', 2386, 25, 'Cel:155030789', '2017-05-09 00:00:00', 'Mecanica de Atomotor', 'jofraso1385@gmail.com', '3', 'CASON Silvia Beatriz', 27954136, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (597, '2017-05-09 00:00:00', 25734811, 'ELIZONDO', 'Antonio Hector', 'Ortodoncia', 'Pje Velez Sarsfield 63 / San Juan 25 - Consultorio 46 y 48', 2387, 25, '156447151 - 4976688', '2017-05-09 00:00:00', 'Odontologia', 'dr.elizondo@hotmail.com', '5', 'Marcela Jalaris', 28221339, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (598, '2017-05-08 00:00:00', 35810617, 'MADRID', 'Marcos Isaias', 'Fabrica de Hornos', 'Bº Galicia - Calle 16 y 57', 2327, 25, '381-4039748', '2017-05-08 00:00:00', 'Herreria', 'mym.tecnologia.industrial@gmail.com', '3', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (599, '2017-05-08 00:00:00', 24671050, 'MONTEAGUDO', 'Luis Osvaldo', 'Penal - Familia / Venta de Insumos de Electronica de alta gama', 'Bs. As. 367 6to C', 2386, 25, '381-4056186 - 4303153', '2017-05-08 00:00:00', 'Abogacia', 'drluismonteagudo@gmail.com', '4', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (600, '2017-05-08 00:00:00', 34285958, 'MENDEZ', 'Fabricio Exequiel', 'Venta de Vehiculos', 'Av. Mitre 415', 2386, 25, '381-6088502', '2017-05-08 00:00:00', 'Vendedor', 'mendez.fabricio.exequiel@gmail.com', '4', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (601, '2017-05-08 00:00:00', 34710213, 'PAZ', 'Antonio Martn', 'Construccion en seco - Durlock', 'Calle 27 Cs:632', 2327, 25, 'Cel:153867522', '2017-05-08 00:00:00', 'Construccion', 'aaa@aaa.com', '4', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (602, '2017-05-06 00:00:00', 25460952, 'MEDINA', 'Maria Gabriel', 'Medico Pediatra', 'Teresa de calcuta 20', 2276, 25, 'Cel:154485257', '2017-05-06 00:00:00', 'Medicina ', 'medina_mgabriela@outlook.com', '5', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (603, '2017-05-06 00:00:00', 25736107, 'ROLDAN', 'Claudia Carolina', 'Lic. En Fonoaudiologia ', 'Teresa de Calcuta 20 ', 2276, 25, 'Cel:154564990 ', '2017-05-06 00:00:00', 'Fonoaudiologia ', 'clau3277@hotmail.com', '5', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (604, '2017-05-06 00:00:00', 22612488, 'SOTOMAYOR ROMAN', 'Luis Artenio', 'Odontologia en Gral.', 'Teresa de Calcuta 20', 2276, 25, 'Cel:154541617', '2017-05-06 00:00:00', 'Odontologia', 'lasr818@yahoo.com.ar', '5', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (605, '2017-05-05 00:00:00', 26446722, 'BARRERA', 'Pablo Leonardo', 'Fabricación de Muebles - Carpinteria en gral', 'Lavalle 794', 2284, 25, 'Cel: 155044441', '2017-05-05 00:00:00', 'Carpinteria', 'info@barrerahnos.com.ar', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (606, '2017-05-05 00:00:00', 30598296, 'VITALE', 'Victor Eduardo', 'Vta y Reparaciòn de Celulares - Accesorios', 'España 1802', 2386, 25, 'Cel: 155876963', '2017-05-05 00:00:00', 'Comerciante', 'ricotaed@outlook.com', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (607, '2017-05-05 00:00:00', 18651593, 'PALAVECINO', 'Claudia Beatriz', 'Vta. De indumentaria - Accesorios - Bijou', 'Irigoyen 15 ', 2371, 25, 'Cel:156788133', '2017-05-05 00:00:00', 'Vendedor', 'claudiapalavecino683@gmail.com', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (608, '2017-05-05 00:00:00', 33091607, 'MONTIVERO', 'Jose Avelino', 'Lubricentro', 'Adolfo de la Vega 565', 2386, 25, 'Cel:156653064', '2017-05-05 00:00:00', 'Mecanica de Atomotor', 'josemontivero2@hotmail.com', '3', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (609, '2017-05-04 00:00:00', 21329105, 'ALCORTA', 'Pablo Gustavo', 'Medico Ginecologo - Cesaria y Colposcopia ', 'Cordoba 441', 2387, 25, 'Cel:156401771 Fijo:4524407', '2017-05-04 00:00:00', 'Medicina ', 'paulalcorta@hotmail.com', '5', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (610, '2017-05-04 00:00:00', 11814814, 'ROSSI', 'Raul Federico', 'Declaraciones Juradas ', 'Delfin Gallo ', 2386, 25, 'Cel:155881048', '2017-05-04 00:00:00', 'Contabilidad', 'raulfpdpricorossi@gmail.com', '5', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (611, '2017-05-04 00:00:00', 22181006, 'BORQUEZ', 'Ricardo Javier', 'Instalaciones electricas - Trabajos de carpinteria', 'Bº Lomas de Tafi - Sector:15 - Mz:5 - Cs:25', 2386, 25, 'Cel:153363898 Fijo:4611987', '2017-05-04 00:00:00', 'Electricidad', 'aaa@aaa.com', '5', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (612, '2017-05-03 00:00:00', 32459394, 'JUAREZ', 'Maria Gabriela', 'Odontologia en gral.', 'Maipu 488', 2386, 25, 'Cel:154139912', '2017-05-03 00:00:00', 'Odontologia', 'ma.gabriela.juarez86@gmail.com', '3', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (613, '2017-05-03 00:00:00', 24298692, 'PULITTA', 'Sergio Fabian ', 'Abogado Civil y Penal ', 'Domingo Garcia 125 ', 2386, 25, 'Cel:153274605', '2017-05-03 00:00:00', 'Abogacia', 'pulitasergio@hotmail.com', '4', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (614, '2017-05-03 00:00:00', 25882800, 'AURORA', 'Daniel Horacio', 'Vta. De celulares - directv - Productos nutricionales (HERBALIFE)', 'Calle Güemes 440', 2360, 25, 'Cel:156062866', '2017-05-03 00:00:00', 'Vendedor', 'tatianaulises@hotmail.com', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (615, '2017-05-03 00:00:00', 29397521, 'GALVEZ', 'Veronica del Valle', 'Vta de indumentaria ', 'Bº Islas Malvinas - Mz:32 Cs:24 - Villa Carmela', 2386, 25, 'Cel:153193841', '2017-05-03 00:00:00', 'Vendedor', 'veronicarabi21@hotmail.com', '4', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (616, '2017-05-03 00:00:00', 18447120, 'MONTAÑO', 'Hugo Marcelo', 'Gasista matriculado - instalacion y mantenimiento', 'Bº Lomas de tafi - Sector 9 - Mz: 5 Cs:16', 2386, 25, 'Cel:156340332', '2017-05-03 00:00:00', 'Gasista', 'hmmonta@hotmail.com', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (617, '2017-05-03 00:00:00', 27960131, 'SOSA LIZARRAGA', 'Gustavo Eduardo', 'Spa del automotor ', 'Paraguay 78', 2387, 25, 'Cel:155013899', '2017-05-03 00:00:00', 'Mecanica de Atomotor', 'gustavoesosa@live.com', '3', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (618, '2017-05-03 00:00:00', 17182219, 'GONZALEZ', 'Manuel', 'Vta de indumentaria - accesorios - electrodomesticos', 'Bº AGEF - Mz:E Cs:9', 2386, 25, 'Cel:154055050', '2017-05-03 00:00:00', 'Vendedor', 'manu12140@hotmail.com', '3', '-', 0, 'B');
INSERT INTO `ProfesionalesTemp` VALUES (619, '2017-05-02 00:00:00', 32206752, 'NAVARRO', 'Maximiliano Exequiel', 'Gasista y plomero - Drugstore ', 'Juan B. Teran 995 - Bº Santo Cristo ', 2284, 25, 'Cel:154760987', '2017-05-02 00:00:00', 'Gasista', 'yohana88@hotmail.com.ar', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (620, '2017-05-02 00:00:00', 21027774, 'ROMANO', 'Daniel Alberto', 'Gasista - Plomeria - Herreria - Colocacion de durlock', 'Buenos Aires 1242', 2386, 25, 'Cel:156759880', '2017-05-02 00:00:00', 'Construccion', 'daniel_romano7@hotmail.es', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (621, '2017-05-02 00:00:00', 25211605, 'RODRIGUEZ', 'Diego Nelson', 'albañileria - plomeria - instalaciones electricas - etc.', 'Fray Luis Beltran 1047', 2284, 25, 'Cel:152037534', '2017-05-02 00:00:00', 'Construccion', 'aaa@aaa.com', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (622, '2017-05-02 00:00:00', 21622275, 'ACOSTA', 'Daniel Roberto', 'Gasista matriculado - albañileria y plomeria - Vta de productos nutricionales HERBALIFE', 'Bolivar 1352', 2371, 25, 'Cel:156337325', '2017-05-02 00:00:00', 'Construccion', 'aaa@aaa.com', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (623, '2017-04-28 00:00:00', 24803994, 'ROMANO', 'Jose Luis ', 'Durlock - construccion en seco - revestimiento en gral.', 'Pje. Irigoyen 1186', 2386, 25, 'Cel:156765155', '2017-04-28 00:00:00', 'Construccion', 'joseluisromano75@hotmail.com', '4', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (624, '2017-04-28 00:00:00', 26615856, 'MERCADO', 'Daniel Antonio ', 'construccion en gral.', 'Independencia 435', 2284, 25, 'Cel:156778255', '2017-04-28 00:00:00', 'Construccion', 'dantonimercado@hotmail.com', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (625, '2017-04-28 00:00:00', 21010254, 'AGÜERO', 'Julia Adriana', 'Peluqueria', 'Catamarca 93-3º Piso', 2386, 25, '381-156309648', '2017-04-28 00:00:00', 'Peluqueria', 'aaa@aaa.com', '5', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (626, '2017-04-28 00:00:00', 18482213, 'ROSELLÓ', 'César Rodolfo', 'Durlock - Herrería - Entrepisos de Madera', 'Italia 1230', 2386, 25, '381-6881888 - 381-5629101 - 4236367', '2017-04-28 00:00:00', 'Construccion', 'cesarrosello61@gmail.com', '4', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (627, '2017-04-28 00:00:00', 13475674, 'GOMEZ', 'Abel Domingo', 'Radio - Eventos - Música', 'Ruta 157 S/N - Bº El Tropezón', 2285, 25, '381-4152591', '2017-04-28 00:00:00', 'Publicidad', 'elmaestroabelinogroup@gmail.com', '4', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (628, '2017-04-28 00:00:00', 14226249, 'CELIS MENDOZA', 'Gonzalo', 'Familia', ' Eugenio Mendez 402', 2386, 25, '381-4242831', '2017-04-28 00:00:00', 'Medicina ', 'aaa@aaa.com', '3', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (629, '2017-04-28 00:00:00', 29532821, 'ROMANO', 'Ramón Roberto', 'Revestimientos de Durlock', 'Pje Irigoyen 1186', 2386, 25, '381-4959978', '2017-04-28 00:00:00', 'Construccion', 'aaa@aaa.com', '4', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (630, '2017-04-28 00:00:00', 25844227, 'ABELLA', 'Victor German ', 'Albañil - Pintura - colocacion de durlock - etc. ', 'Bº Nestor Kirchner - Mz:3 Cs:3', 2386, 25, 'Cel:153438462', '2017-04-28 00:00:00', 'Construccion', 'aaa@aaa.com', '4', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (631, '2017-04-28 00:00:00', 21328371, 'CHECA', 'Claudia Dora', 'Vta de ropa - Tarot ', 'Calle 4 - Mz: F Cs:4 - Villa Mariano Moreno ', 2327, 25, 'Cel:153204619', '2017-04-28 00:00:00', 'Vendedor', 'clauchek@gmail.com', '5', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (632, '2017-04-28 00:00:00', 25618953, 'VACA ', 'Matias Nicolas ', 'Familia - Accidentes - ART ', 'Buenos Aires 238 - Of:3', 2386, 25, 'Cel:155394161', '2017-04-28 00:00:00', 'Abogacia', 'estudiovacafuentes@outlook.com', '4', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (633, '2017-04-28 00:00:00', 24553425, 'RODRIGUEZ BELLAVILLA', 'Julio Eduardo', 'servicio tecnico y reparacion de software y hardware ', 'Av. Alem 447 - Planta Alta ', 2386, 25, 'Cel:155324678 - Fijo:4203134', '2017-04-28 00:00:00', 'Tecnico/a', 'jrodriguez@neoclicksa.com', '3', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (634, '2017-04-28 00:00:00', 27960457, 'CELIS PASSINI', 'Ivanna Alejandra', 'Abogada Laboral ', 'Lamadrid 291 - Piso: 1º  Dpto: C', 2386, 25, 'Cel:154035994', '2017-04-28 00:00:00', 'Abogacia', 'ivannacelispassini@gmail.com', '3', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (635, '2017-04-27 00:00:00', 37191287, 'CONTRERAS', 'Johana Micaela', 'Ropa - Calzado - Celulares', 'Hipolito Irigoyen 194', 2371, 25, '381-6586116', '2017-04-27 00:00:00', 'Showroom', 'aaa@aaa.com', '5', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (636, '2017-04-27 00:00:00', 27579633, 'GONZALEZ FIDANI ', 'Mariana Verona ', 'Abogada Laboral ', 'Congreso 466', 2386, 25, 'Cel:154092436 Fijo:4248282 int 141', '2017-04-27 00:00:00', 'Abogacia', 'marianafidani@hotmail.com', '3', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (637, '2017-04-27 00:00:00', 18571992, 'ALDERETE', 'Claudia Susana', 'Venta de Ropa de Mujer', 'Irigoyen 194', 2386, 25, '381-3201232', '2017-04-27 00:00:00', 'Vendedor', 'aaa@aaa.com', '5', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (638, '2017-04-27 00:00:00', 30357379, 'MESSINA', 'Enzo Luis', 'Mesas dulces - Servicio de catering - Vta. De Indumentaria', 'Pje. Figueroa Alcorta 1552', 2386, 25, 'Cel:156282794', '2017-04-27 00:00:00', 'Gastronomia', 'enzo-messina@hotmail.com', '4', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (639, '2017-04-27 00:00:00', 27579686, 'LUJAN', 'Jose Maria', 'Herrero - Trabajos en gral.', 'Bº 2 de Septiembre - Mz:6 Lt: 22', 2386, 25, 'Cel:156812985', '2017-04-27 00:00:00', 'Metalurgia ', 'elcochero_tucu@live.com', '4', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (640, '2017-04-27 00:00:00', 27735740, 'ARROYO', 'Claudio Eduardo', 'Estilista - Colorista', 'Monteagudo 411', 2386, 25, 'Cel:155083158', '2017-04-27 00:00:00', 'Peluqueria', 'claudiocaetta2@gmail.com', '4', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (641, '2017-04-27 00:00:00', 22263287, 'NIETO', 'Myriam del Valle', 'Vta, de ropa - accesorios - calzados', 'Av. Coronel Suarez 1275', 2386, 25, 'Cel:156383957', '2017-04-27 00:00:00', 'Vendedor', 'rolandorios33@hotmail.com', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (642, '2017-04-27 00:00:00', 27345441, 'CAPOCCETTI', 'Italo Roberto', 'Lubricentro', 'Benjamin Araoz 1284', 2386, 25, 'Cel:156810575 ', '2017-04-27 00:00:00', 'Mecanica de Atomotor', 'lubhangar@hotmail.com', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (643, '2017-04-27 00:00:00', 18159367, 'NOBLEGA', 'Javier Antonio', 'Vta. de comida - Fabrica de alimentos para vta. al publico', 'Ecuador 4612', 2386, 25, 'Cel:154692011', '2017-04-27 00:00:00', 'Gastronomia', 'javiernoblega90@hotmail.com', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (644, '2017-04-27 00:00:00', 30268038, 'DOMINGUEZ', 'Daniel David ', 'Vta de indumentaria femenina y masculina - Ropa deportiva y accesorios', 'Lavaisse 1006', 2386, 25, 'Cel:156496333', '2017-04-27 00:00:00', 'Showroom', 'aaa@aaa.com', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (645, '2017-04-26 00:00:00', 94673619, 'MONTES RODRIGUEZ', 'Veronica', 'Alta constura ', 'Bº Portal del Cerro - Mz: B Lt:5 Cs: B', 2387, 25, 'Cel:155680313', '2017-04-26 00:00:00', 'Modista', 'montessveroka28122009@gmail.com', '5', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (646, '2017-04-26 00:00:00', 12870129, 'JUAREZ', 'Santiago David', 'Retificacion de motos ', 'Baltazar Tejerina 232', 2284, 25, 'Cel:155008557', '2017-04-26 00:00:00', 'Mecanica de Atomotor', 'santiagojuarez57@hotmail.com', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (647, '2017-04-26 00:00:00', 31842207, 'BARCELLONA', 'Pablo Mauricio', 'Centro de estetica - solarium', 'San Lorenzo 518', 2386, 25, 'Cel:155535600 - Fijo:4312604', '2017-04-26 00:00:00', 'Esteticista', 'pmbarcellona@gmail.com', '3', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (648, '2017-04-26 00:00:00', 26028297, 'MAMBRINI', 'Fabiana', 'Peluqueria - Showroom ', 'Av. Avellaneda 822', 2386, 25, 'Fijo:4975309', '2017-04-26 00:00:00', 'Estilista', 'angelesmambrini@hotmail.com', '3', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (649, '2017-04-26 00:00:00', 32853342, 'SALAZAR', 'Victor Amado', 'Mecanica en gral.  - frenos', 'Matheu 2355', 2386, 25, 'Cel:155120834 Fijo:4369620', '2017-04-26 00:00:00', 'Mecanica de Atomotor', 'amadosalazar12@hotmail.com', '3', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (650, '2017-04-26 00:00:00', 40953213, 'YBARRA', 'Luis Alberto', 'yesero - premoldeado ', 'Bº Virgen del Huerto - Mz: G Lt: 2 ', 2327, 25, 'Cel:155169831', '2017-04-26 00:00:00', 'Construccion', 'ylucho739@hotmail.com', '4', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (651, '2017-04-26 00:00:00', 21334706, 'SAADE', 'Pablo Fabian', 'Coach - Programacion neurolingüistica', 'Calle 3 S/N - Bº San Javier ', 2387, 25, 'Cel:156360503', '2017-04-26 00:00:00', 'Docencia', 'pablofsaade@hotmail.com.ar', '4', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (652, '2017-04-26 00:00:00', 38510340, 'NAON ROMERO', 'Salome', 'Depilacion - manos - pies ', 'Sargento Cabral 233 - Dpto.: 3 ', 2386, 25, 'Cel:156579458', '2017-04-26 00:00:00', 'Esteticista', 'salomenromero@gmail.com', '3', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (653, '2017-04-26 00:00:00', 25217555, 'NIEVA ', 'Jorge Daniel ', 'Trabajos de herreria en general y construccion', 'Florida 385', 2284, 25, 'Cel:156448375', '2017-04-26 00:00:00', 'Metalurgia ', 'joornievaa@gmail.com', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (654, '2017-04-25 00:00:00', 28367625, 'ARAGON', 'Ivan Reynaldo', 'Gasista Matriculado - contruccion - instalaciones ', 'Martin Fierro 655', 2284, 25, 'Cel:155508663', '2017-04-25 00:00:00', 'Construccion', 'ivan322080@gmail.com', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (655, '2017-04-25 00:00:00', 27364474, 'NAVARRO', 'Sergio Marcelo', 'Mecanica en gral. ', 'Monteagudo 1722', 2386, 25, 'CEL:156531352', '2017-04-25 00:00:00', 'Mecanica de Atomotor', 'tallermecanicowilli@gmail.com', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (656, '2017-04-25 00:00:00', 32828418, 'SAMANIEGO', 'Ignacio Ricardo', 'Gasista Matriculado - trabajos de plomeria - albañileria - instalacion sanitaria, Etc.', 'Av. Colon 2383', 2386, 25, 'Cel:156855986', '2017-04-25 00:00:00', 'Construccion', 'ignaciosamaniego1@hotmail.com', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (657, '2017-04-25 00:00:00', 25502886, 'ROCHA', 'Alicia Noemi ', 'Vta. De productos nutricionales OMNILIFE', 'Bº SOEME - Mz:17 Cs:42 ', 2327, 25, 'Cel:153253419 - Fijo:4371402', '2017-04-25 00:00:00', 'Vendedor', 'noerocha585@gmail.com', '4', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (658, '2017-04-24 00:00:00', 20433522, 'FRIAS SILVA', 'Sonia', 'Odontologia en gral.', 'Lobo de la Vega 304', 2386, 25, 'Cel:153375588 Fijo:4308939', '2017-04-24 00:00:00', 'Odontologia', 'soniafriassilva@hotmail.com', '5', 'MIRANDE luis', 18185794, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (659, '2017-04-24 00:00:00', 18020813, 'SARAVIA ', 'Maria Laura', 'Protesis - Estetica - Implantes dentales', 'Lobo de la Vega 320 - Local:2', 2386, 25, 'Cel:155348593 Fijo:4251744', '2017-04-24 00:00:00', 'Odontologia', 'mlaurasaravia_1@hotmail.com', '5', 'STRAZA Jose', 28681876, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (660, '2017-04-24 00:00:00', 26783248, 'SORIA', 'Ines Teresa Del Carmen ', 'Profesora de quimica - apoyo y preparacion para examenes ', 'Constitucion 390', 2284, 25, 'Cel:155530547', '2017-04-24 00:00:00', 'Profesor/a', 'nachy248@hotmail.com', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (661, '2017-04-24 00:00:00', 30030989, 'SILVA', 'Maria Lorena', 'Mandataria del automotor ', 'Av. Monseñor Diaz 214', 2284, 25, 'Cel:156091871', '2017-04-24 00:00:00', 'Gestor', 'lorere16@hotmail.com', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (662, '2017-04-24 00:00:00', 21328759, 'ALBORNOZ', 'Guillermo Esteban ', 'Mandatorio del automotor ', 'Pje. Rio Negro  3 (Lastenia)', 2284, 25, 'Cel:156506684', '2017-04-24 00:00:00', 'Gestor', 'albornozge1970@gmail.com', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (663, '2017-04-24 00:00:00', 27017517, 'ESCOBAR ', 'Sergio Daniel ', 'Impresiones graficas en papel y tela - Folleteria - etc ', 'Azcuenaga 162', 2284, 25, 'Cel:155443259', '2017-04-24 00:00:00', 'Imprenta', 'sergiodanielescobar@yahoo.com.ar', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (664, '2017-04-24 00:00:00', 31052970, 'PAZ', 'Claudia Elizabeth', 'Vta de Ropa y juguetes (Polirubro)', 'Bº San Francisco - Larrea 4200', 2386, 25, 'Cel:156570792', '2017-04-24 00:00:00', 'Vendedor', 'aaa@aaa.com', '3', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (665, '2017-04-24 00:00:00', 29532736, 'ALVAREZ', 'Hugo Daniel ', 'Alquiler y vta. De juegos infantiles y peloteros', 'Bº Esteban Echeverria - Necochea 2464', 2386, 25, 'Cel:156682602', '2017-04-24 00:00:00', 'Servicios para fiesta', 'hugodanielalvarez4962@gmail.com', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (666, '2017-04-24 00:00:00', 23828215, 'CUEVAS ', 'Hector Eduardo', 'Mecanica en Gral. ', 'Jujuy 268  - Lastenia', 2284, 25, 'Cel:155133522', '2017-04-24 00:00:00', 'Mecanica de Atomotor', 'aaa@aaa.com', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (667, '2017-04-24 00:00:00', 36654271, 'ARGAÑARAZ', 'Nelson Federico', 'Vta. De articulos para el hogar', 'Baltazar Tejerina 215  ', 2284, 25, 'Cel:156694844 - Cel alt.:155936735', '2017-04-24 00:00:00', 'Vendedor', 'nelsonfederico7@gmail.com', '4', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (668, '2017-04-22 00:00:00', 39479382, 'CARABAJAL', 'Micaela Belen ', 'Vta de articulos de bazar y electrodomesticos ', '9 de Julio 603', 2284, 25, 'Cel:153663110', '2017-04-22 00:00:00', 'Vendedor', 'aaa@aaa.com', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (669, '2017-04-22 00:00:00', 32602482, 'RODRIGUEZ', 'Jose Alejandro ', 'Vta de tecnologia (monitor, tv, PC, etc) Serv. De instalacion.', 'Corrientes 1809', 2386, 25, 'Cel:155606095', '2017-04-22 00:00:00', 'Vendedor', 'alejandroventa141086@gmail.com', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (670, '2017-04-21 00:00:00', 12067618, 'LEZAMA MENDILARZU', 'Fernando Javier', 'Administracion de seguros', 'Congreso 656 - Dpto:2 ', 2386, 25, 'cel:155492590', '2017-04-21 00:00:00', 'Contabilidad', 'javier.lezamendi@gmail.com', '5', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (671, '2017-04-21 00:00:00', 24218528, 'ROLDAN SUPPA', 'Gabriel', 'Derecho Tributario', 'Crisostomo Alvarez 1710', 2386, 25, 'cel:155872829', '2017-04-21 00:00:00', 'Contabilidad', 'aaa@aaa.com', '5', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (672, '2017-04-21 00:00:00', 30268033, 'GARCIA MCGUINESS', 'Griselda Noemi ', 'Abogada civil y Familia - Vta. De ropa', 'Congreso 402 - Psio:2º', 2386, 25, 'Cel:154184880', '2017-04-21 00:00:00', 'Abogacia', 'grigarciamc@gmail.com', '3', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (673, '2017-04-21 00:00:00', 21745056, 'COLIN', 'Carlos', 'Vta. De ropa ', 'Av. Salta 660 - Piso: 5º Dpto.: E', 2386, 25, 'Cel:153001589', '2017-04-21 00:00:00', 'Vendedor', 'aaa@aaa.com', '4', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (674, '2017-04-21 00:00:00', 27751870, 'LECCESE', 'Carla Lorena', 'Peluqueria canina - Vta. De accesorios - Veterinaria ', 'Chile 502 - Local:2', 2386, 25, 'Cel:155134364', '2017-04-21 00:00:00', 'Peluqueria', 'aaa@aaa.com', '4', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (675, '2017-04-21 00:00:00', 24621425, 'PONCE', 'Alberto', 'Albañil - Instalacion de matafuegos ', 'Bº Ampliacion la Merced - Mz:D Lt:10', 2386, 25, 'Cel:156601788', '2017-04-21 00:00:00', 'Construccion', 'aaa@aaa.com', '4', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (676, '2017-04-21 00:00:00', 28721624, 'GALVAN', 'Jorge Luis ', 'Mecanica en general', 'Bº Farmaceutico II - Venezuela 4623', 2386, 25, 'Cel:153017517', '2017-04-21 00:00:00', 'Mecanica de Atomotor', 'jolu.28.jlg@gmail.com', '4', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (677, '2017-04-21 00:00:00', 28721239, 'JUAREZ', 'Mario Edgardo', 'Vta. De libros', 'Bº 20 de Junio - Pedro Sal 1027', 2386, 25, 'Cel:156090268', '2017-04-21 00:00:00', 'Vendedor', 'romaediciones@gmail.com', '4', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (678, '2017-04-20 00:00:00', 23031445, 'MUJICA', 'Marcelo Gustavo ', 'Vta. De ropa por mayor y menor ', 'Entre Rios 954', 2386, 25, 'Cel:155626735', '2017-04-20 00:00:00', 'Vendedor', 'marcelogmuxika21@gmail.com', '4', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (679, '2017-04-20 00:00:00', 27400950, 'CORREA', 'Daniel Antonio ', 'Tecnico en refrigeracion - reparacion e instalacion de aire acondicionado ', 'Bernabe Araoz 30 ', 2386, 25, 'Cel:155395359', '2017-04-20 00:00:00', 'Tecnico/a', 'correadanielantonio@gmail.com', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (680, '2017-04-20 00:00:00', 30417951, 'CLEMENTE', 'Nancy Natalia', 'Orfebre - vta de placas Funerarias - santeria', 'Dalmacio Quiles 134', 2385, 25, 'Cel:155064200', '2017-04-20 00:00:00', 'Artesanias', 'natuchis_1983@hotmail.com', '5', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (681, '2017-04-20 00:00:00', 10220968, 'OLIVA', 'Hector Augusto ', 'Contador Tributario', 'Catamarca 93 - Piso: 2', 2386, 25, 'Cel:154541946', '2017-04-20 00:00:00', 'Contabilidad', 'recepcion@estudiosalvatierra.com', '5', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (682, '2017-04-20 00:00:00', 34186410, 'SOSA ', 'Maria Jimena', 'Vta. de ropa , calzados y accesorios para celular ', 'Lavalle 683', 2386, 25, 'Cel:154016679', '2017-04-20 00:00:00', 'Showroom', 'jsosa@live.com.ar', '3', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (683, '2017-04-19 00:00:00', 33669107, 'ALDERETE', 'Jose Manuel ', 'Fabrica de Muebles ', 'Pedro Riera 500 - Mz: 2 Cs: 14', 2327, 25, 'Cel:156413469', '2017-04-19 00:00:00', 'Carpinteria', 'josealderete@ciudad.com.ar', '4', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (684, '2017-04-18 00:00:00', 21172176, 'MERCADO', 'Simon Angel ', 'Motocicletas', 'Baltazar Aguirre 968', 2386, 25, 'Fijo:4367044', '2017-04-18 00:00:00', 'Mecanica de Atomotor', 'aaa@aaa.com', '3', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (685, '2017-04-18 00:00:00', 11910855, 'OTTAVIANO', 'Jorge Alverto', 'Derecho Tributario', 'Delfin Gallo 352', 2386, 25, 'Cel:155714137', '2017-04-18 00:00:00', 'Contabilidad', 'ottavianojorge@hotmail.com', '5', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (686, '2017-04-18 00:00:00', 33969575, 'LEMA', 'Cynthia Lorena del Valle ', 'Abogada Civil ', 'Rafael Marino 289 ', 2371, 25, 'Cel:154548918', '2017-04-18 00:00:00', 'Abogacia', 'cynthialema@outlook.com', '4', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (687, '2017-04-18 00:00:00', 35921408, 'ABREGU MIRRA', 'Edgardo Nicolas ', 'Abogado Civil', '9 de Julio 379 - Piso:1º Of: C', 2386, 25, 'Cel:154747538', '2017-04-18 00:00:00', 'Abogacia', 'nicolasamirra@gmail.com', '4', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (688, '2017-04-18 00:00:00', 38294436, 'ALDERETE', 'Cristian Ariel', 'Fabricacion de muebles', 'Pedro Riera 500 - Mz: 2 Cs: 14', 2327, 25, 'Cel:155245185', '2017-04-18 00:00:00', 'Carpinteria', 'ariel_ciudade@hotmail.es', '4', 'GOMEZ Alejandra Daniela', 29243200, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (689, '2017-04-18 00:00:00', 20218524, 'MARTORELL', 'Gustavo Enrique ', 'Alquiler de colectivos', 'Av. Saenz Peña 335', 2386, 25, 'Cel:155111141', '2017-04-18 00:00:00', 'Transporte', 'gustavoemartorell@gmail.com', '5', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (690, '2017-04-18 00:00:00', 27371012, 'KAMEYHA', 'Juan Manuel', 'Herreria en Gral.', 'Bº Los Lapachos - Mz: B Lt: 3', 2276, 25, 'Cel:155716244', '2017-04-18 00:00:00', 'Herreria', 'aaa@aaa.com', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (691, '2017-04-18 00:00:00', 27579610, 'SALTO', 'Cristian Ezequiel', 'Albañileria - Plomeria - Herreria - Colocacion de durlock', 'Bolivar 27', 2284, 25, 'Cel:152004665', '2017-04-18 00:00:00', 'Mantenimiento en gral.', 'aaa@aaa.com', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (692, '2017-04-18 00:00:00', 14661359, 'SANTUCHO', 'Alberto Hector', 'Mecanica en general ', 'Pje. Lucia Araoz 2669', 2386, 25, 'Fijo:4362468', '2017-04-18 00:00:00', 'Mecanica de Atomotor', 'aaa@aaa.com', '3', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (693, '2017-04-18 00:00:00', 29242468, 'LOPEZ', 'Liliana Estela', 'Tatto y Piercings', '25 de Mayo 474 Local: C', 2386, 25, 'Cel:154725508', '2017-04-18 00:00:00', 'Artesanias', 'lilianalopez_81@hotmail.com', '3', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (694, '2017-04-18 00:00:00', 26408315, 'GUTIERREZ', 'Maximiliano Ariel', 'Refrigeracion - Instalacion de aire acondicionado', 'Heller 910 - Bº Marti coll ', 2387, 25, 'Cel:153558266', '2017-04-18 00:00:00', 'Tecnico/a', 'catu315@hotmail.com', '5', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (695, '2017-04-18 00:00:00', 32969309, 'PRIARONE LEGUIZAMON', 'Walter Fernando', 'Tecnico electonico - Soporte Tecnico - Reparacion y Venta ', 'Bº San Cayetano - Pje. 20 de Junio 221 ', 2386, 25, 'Cel:156066425 - Tel: 4240750 ', '2017-04-18 00:00:00', 'Tecnico/a', 'walterpriarone@gmail.com', '4', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (696, '2017-04-18 00:00:00', 26455636, 'VALDEZ ', 'Luis Fernando', 'Tren Delantero ', 'Av. Colon 1059', 2386, 25, 'Cel:153406060', '2017-04-18 00:00:00', 'Mecanica de Atomotor', 'luisvaldez.lfv@gmail.com', '3', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (697, '2017-04-17 00:00:00', 22336592, 'ROMANO', 'Patricia Viviana ', 'Implantes Dentales', 'Teresa de calcuta 1ª cuadra ', 2276, 25, 'Cel:155127478', '2017-04-17 00:00:00', 'Odontologia', 'patricia.rmn@hotmail.com', '5', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (698, '2017-04-17 00:00:00', 5625221, 'FERNANDEZ', 'Graciela del Valle', 'Vta. de ropa', '25 de Mayo 285 - Piso:2 Depto:7', 2371, 25, 'Cel:155994183 Fijo:4614304', '2017-04-17 00:00:00', 'Showroom', 'aaa@aaa.com', '5', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (699, '2017-04-17 00:00:00', 32371999, 'TOLEDO', 'Luis Orlando', 'Servicio tecnico para celulares - venta - accesorios informaticos y celulares  ', 'Blas Parera 1013 - Villa 9 de Julio ', 2327, 25, 'Cel:156636264', '2017-04-17 00:00:00', 'Tecnico/a', 'lusol2004@gmail.com', '4', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (700, '2017-04-17 00:00:00', 36885485, 'LEDESMA', 'Ana Carolina ', 'Lenguaje', 'Teresa de calcuta 1ª cuadra ', 2276, 25, 'Cel:154481066 - Fijo:4942861', '2017-04-17 00:00:00', 'Fonoaudiologia ', 'anacarolinaledesma@gmail.com', '5', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (701, '2017-04-15 00:00:00', 28476470, 'JAIME', 'Jorge Luis', 'servicio tecnico, reparacion, instalacion y mantenimieno de aire acondicionado', 'Bº Aeropuerto - Mz: F Cs: 17 ', 2386, 25, 'Cel:153567711', '2017-04-15 00:00:00', 'Tecnico/a', 'aaa@aaa.com', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (702, '2017-04-12 00:00:00', 36224020, 'ARTAZA', 'Patricio Miguel', 'Civil', '25 de Mayo 1444 - Piso: 2 Depto:B', 2386, 25, 'Cel:156723190', '2017-04-12 00:00:00', 'Ingenieria', 'partaza91@gmail.com', '5', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (703, '2017-04-12 00:00:00', 20179114, 'LUNA', 'Sandra Fabiana ', 'Vta de ropa y peluqueria ', 'Bº 188 viviendas - Mz: A Block: 5 Depto: 8 - Villa Carmela', 2386, 25, 'Cel:155639846 - Fijo:4930172', '2017-04-12 00:00:00', 'Vendedor', 'aaa@aaa.com', '3', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (704, '2017-04-12 00:00:00', 22181629, 'SAAVEDRA', 'Marcelo Sebastian ', 'Electricidad industrial y domiciliaria - Plomeria - Gas -Construccion - Refrigeracion', 'Bº Congreso - Mz: L Cs: 23 - Mejico 4000', 2386, 25, 'Cel:154061035', '2017-04-12 00:00:00', 'Mantenimiento en gral.', 'seba-saavedra@hotmail.com', '4', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (705, '2017-04-12 00:00:00', 27651802, 'AIETA', 'Silvia Elizabeth ', 'Vta de ropa', 'Bº 600 Viviendas - Mz: 30 Cs: 27 - Lomas de Tafi', 2386, 25, 'Cel:156610236 - Fijo:3208500', '2017-04-12 00:00:00', 'Showroom', 'aaa@aaa.com', '3', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (706, '2017-04-12 00:00:00', 28147265, 'GOMEZ PEREZ ', 'German Esteban ', 'Carpinteria en Gral.', 'Bº Esteban Echeverria - Pje Williams 2731', 2386, 25, 'Fijo:4341347', '2017-04-12 00:00:00', 'Carpinteria', 'gerestegzpz21@hotmail.com', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (707, '2017-04-12 00:00:00', 36865981, 'OLAZ', 'Ana Paula ', 'Vta de ropa ', 'Peru 1836', 2387, 25, 'Cel:156449695', '2017-04-12 00:00:00', 'Vendedor', 'paulaolaz75@gmail.com', '3', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (708, '2017-04-12 00:00:00', 38243315, 'CEBALLOS', 'Maria Celeste ', 'Vta de ropa - Showroom y Ferias', 'Av. America 328', 2386, 25, 'Cel:154779038 - Fijo:4930172', '2017-04-12 00:00:00', 'Vendedor', 'mceles-c@hotmail.com', '3', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (709, '2017-04-12 00:00:00', 18201555, 'GARNICA', 'Mabel Del Rosario', 'Regaleria - Vta de ropa - accesorios para celular', 'Av. Saenz Peña 7', 2386, 25, 'Cel:153006780', '2017-04-12 00:00:00', 'Vendedor', 'mabelregalos@hotmail.com', '3', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (710, '2017-04-12 00:00:00', 26011742, 'NIUVO', 'Juan Jose Arturo', 'Reparacion de Motos - Vta de repuestos ', 'General Paz 1995', 2386, 25, 'Cel:155616341', '2017-04-12 00:00:00', 'Mecanica de Atomotor', 'juanjosearturoniuvo6@gmail.com', '3', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (711, '2017-04-12 00:00:00', 33139277, 'ZERDAN', 'Horacio Alvaro', 'Abogado Civil y comercial', 'Pje. 2 de Abril 337 - Piso: 8 Of: 86', 2386, 25, 'Cel:155673874 Fijo:4227190', '2017-04-12 00:00:00', 'Abogacia', 'horacioaz87@hotmail.com', '5', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (712, '2017-04-12 00:00:00', 34953386, 'MINOTTI', 'Franco Estefano', 'Reparacion de celulares ', 'Bº Vial 2 - Mz: K Cs: 12 - Villa Carmela ', 2387, 25, 'Cel:156068133 Fijo:4514746', '2017-04-12 00:00:00', 'Tecnico/a', 'franco.minotti.15691@gmail.com', '4', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (713, '2017-04-11 00:00:00', 14747241, 'PEREYRA', 'Patricia Emilia ', 'Familia y Sucesiones ', '12 de Octubre 863', 2386, 25, 'Cel:153405900', '2017-04-11 00:00:00', 'Abogacia', 'patriciadoc@gmail.com', '5', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (714, '2017-04-11 00:00:00', 16541191, 'MAJUD', 'Jorge Luis ', 'Derecho Tributario', 'Pacheco de Melo 1116', 2386, 25, 'Cel:155247140 - Fijo:4236557', '2017-04-11 00:00:00', 'Abogacia', 'jorgeluismajud@gmail.com', '5', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (715, '2017-04-11 00:00:00', 14410372, 'GANA', 'Gladys Liliana', 'COIFFEUR - Escuela de Danzas - Martillero Publico ', 'Bº Marti coll - Andres Villa 915', 2387, 25, 'Cel:154969479', '2017-04-11 00:00:00', 'Peluqueria', 'lilianagladys_1846@hotmail.com', '5', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (716, '2017-04-11 00:00:00', 20218957, 'MARTIN', 'Adrian Enrique', 'Cirujias - Protesis ', 'Pje. Fray Manuel Perez 1484', 2386, 25, 'Cel:155134967', '2017-04-11 00:00:00', 'Odontologia', 'natadelvic@hotmail.com', '3', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (717, '2017-04-11 00:00:00', 28249936, 'AGUIRRE', 'Alejandro Alberto', 'Refrigeracion Instalacion y reparacion - Vta de productos Omnilife', 'Bº 210 Viviendas - Mz: U Cs: 5 - San Andres', 2386, 25, 'Cel:155434461', '2017-04-11 00:00:00', 'Tecnico/a', 'aaa@aaa.com', '4', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (718, '2017-04-11 00:00:00', 29786498, 'LECCESE', 'Maria Paulina', 'En general', 'A. Alem 314', 2371, 25, '0381-155940429', '2017-04-11 00:00:00', 'Odontologia', 'pauleccese@hotmail.com', '5', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (719, '2017-04-11 00:00:00', 30875456, 'DIAZ', 'Silvia Viviana ', 'Vta. De ropa y Accesorios', 'Chacabuco 293 - Piso: 5 Dpto: B', 2386, 25, 'Cel:156348464', '2017-04-11 00:00:00', 'Showroom', 'almasagrada@hotmail.com.ar', '4', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (720, '2017-04-11 00:00:00', 34907120, 'SOTO FIGUEROA', 'Veronica Mariel', 'Vta de Ropa - Esteticista', 'Bº Prospero Mena - Mz:C Block:U Depto: 17', 2386, 25, 'Cel:156678807', '2017-04-11 00:00:00', 'Vendedor', 'vm_soto_04@hotmail.com', '5', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (721, '2017-04-10 00:00:00', 7837283, 'OLMEDO', 'Mario Adalberto', 'Vta. Productos de nutricion - Nutrilife', 'Bº Las Acacias - Mz: F Cs: 7', 2387, 25, 'Cel:153015471', '2017-04-10 00:00:00', 'Vendedor', 'marioylidiaolmedo@hotmail.com', '4', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (722, '2017-04-10 00:00:00', 10182995, 'GOMEZ', 'Lidia Caniza ', 'Vta. De Productos de nutricion - Nutrilife', 'Bº Las Acacias - Mz: F Cs: 7', 2387, 25, 'Cel:153015472', '2017-04-10 00:00:00', 'Vendedor', 'marioylidiaolmedo@hotmail.com', '4', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (723, '2017-04-10 00:00:00', 21744469, 'RUIZ', 'Manuel Marcelo', 'Panificacion - Fiambres - Cafeteria', 'Lobo de la Vega 120 - Local:4', 2387, 25, 'Cel:154056698', '2017-04-10 00:00:00', 'Comerciante', 'fincaelpotrero@yahoo.com.ar', '5', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (724, '2017-04-10 00:00:00', 23930387, 'ROJAS', 'Rolando Ramon ', 'Derecho Tributario', 'Lamadrid 112 - Piso:3 Of:A', 2386, 25, 'Cel:156802712', '2017-04-10 00:00:00', 'Abogacia', 'rolandoramonrojas@yahoo.es', '5', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (725, '2017-04-10 00:00:00', 23930542, 'BENINI', 'Flavia Alejandra', 'Daman y Niños', 'Centenario 385', 2371, 25, 'Cel:156087718 Fijo:4617015', '2017-04-10 00:00:00', 'Peluqueria', 'aaa@aaa.com', '6', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (726, '2017-04-10 00:00:00', 25498009, 'SAL PAZ', 'Santiago Pedro', 'Familia - Laboral - Civil ', 'General Paz 660', 2386, 25, 'Cel:154171145', '2017-04-10 00:00:00', 'Abogacia', 'sgosalpaz1@hotmail.com', '4', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (727, '2017-04-10 00:00:00', 25541136, 'ORQUERA', 'Norma Gisele', 'Familia - Previsional ', 'General Paz 660', 2386, 25, 'Cel:156785064 Fijo:4206121 ', '2017-04-10 00:00:00', 'Abogacia', 'giseleorquera@hotmail.com', '4', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (728, '2017-04-10 00:00:00', 26378684, 'MUÑOZ', 'Guillermo Horacio', 'Peluqueria - servicio de lunch para eventos ', 'Av. Independencia 2454', 2386, 25, 'Cel:155642678', '2017-04-10 00:00:00', 'Servicios para fiesta', 'unavozenamorada@hotmail.com', '3', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (729, '2017-04-10 00:00:00', 27364223, 'FRESCO', 'Gonzalo Fernando', 'Direccion Hidraulica', 'Av. Independencia 2552', 2386, 25, 'Cel:155981270', '2017-04-10 00:00:00', 'Mecanica de Atomotor', 'gonzalo.fresco@yahoo.com.ar', '3', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (730, '2017-04-10 00:00:00', 28883441, 'FABBRI', 'Carlos', 'Vta. De equipamiento comercial ', 'Pueyrredon 02', 2284, 25, 'Cel:154666656', '2017-04-10 00:00:00', 'Vendedor', 'carlosfabbri81@hotmail.com', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (731, '2017-04-10 00:00:00', 29206257, 'ORTIZ', 'Fernando Ramiro ', 'Derecho Laboral', '9 de Julio 485 - Piso: 1 Of: C', 2386, 25, 'Cel:156384983', '2017-04-10 00:00:00', 'Abogacia', 'ferol70@hotmail.com', '5', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (732, '2017-04-10 00:00:00', 36420877, 'AUDI', 'Alfredo Said ', 'Fabrica de muebles - instalacion y rafacciones a domicilio - machimbrada', '3ª entrada - 1ª cuadra - Leales', 2311, 25, 'Cel:156614915', '2017-04-10 00:00:00', 'Carpinteria', 'audialfredo@gmail.com', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (733, '2017-04-08 00:00:00', 24059836, 'GARCIA', 'Gerardo Gustavo', 'Masajes relajantes ', 'Larrea 2398', 2386, 25, 'Cel:154158803', '2017-04-08 00:00:00', 'Masajista', 'aaa@aaa.com', '3', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (734, '2017-04-08 00:00:00', 25197887, 'SOTO', 'Pablo Fernando ', 'Vta de Electrodomesticos y Equipamiento comercial ', 'San Luis 1353', 2386, 25, 'Cel:156319091', '2017-04-08 00:00:00', 'Vendedor', 'aaa@aaa.com', '3', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (735, '2017-04-07 00:00:00', 13474712, 'BIELIK', 'Carlos Daniel ', 'Vta de electrodomesticos - Informatica - Varios ', 'Lavaisse 876 - Altura jujuy 1800', 2386, 25, 'Cel:155199496', '2017-04-07 00:00:00', 'Vendedor', 'cabezondaniel2@hotmail.com', '4', '-', 0, 'B');
INSERT INTO `ProfesionalesTemp` VALUES (736, '2017-04-07 00:00:00', 27575412, 'FERREYRA', 'Cesar Alberto', 'Refrigeracion servicio tecnico de heladeras - lavarropas - aire acondicionados ', 'America 176', 2284, 25, 'Cel:156372465', '2017-04-07 00:00:00', 'Tecnico/a', 'ferreyracesaralberto@gmail.com', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (737, '2017-04-07 00:00:00', 32201854, 'MAMANI SEGURA', 'Francisco David ', 'Logistica - Transporte y Fletes ', 'Santiago 1465', 2386, 25, 'Cel:154168936', '2017-04-07 00:00:00', 'Transporte', 'fmamanisegura@hotmail.com', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (738, '2017-04-07 00:00:00', 32460669, 'NAZAR', 'Franco Martin ', 'Reparacion y Armado de auto ', '12 de Octubre 692', 2386, 25, 'Cel:156804504', '2017-04-07 00:00:00', 'Mecanica de Atomotor', 'francomnazar@gmail.com', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (739, '2017-04-06 00:00:00', 22664803, 'FLORES MORAN ', 'Karina Mabel ', 'Seguro de Automotor', 'Pje Diaz Velez 108', 2386, 25, 'Cel:155491660', '2017-04-06 00:00:00', 'Gestor', 'kmfm@hotmail.es', '4', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (740, '2017-04-06 00:00:00', 28221716, 'IÑIGO', 'Ana Gabriela', 'Abogada ', 'Marco Avellaneda 159', 2386, 25, 'Cel:156014693', '2017-04-06 00:00:00', 'Abogacia', 'anita.1999@hotmail.com', '3', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (741, '2017-04-05 00:00:00', 14961328, 'WIERNA', 'Juan Carlos ', 'Derecho Civil', 'Lamadrid 117 - Piso:4 Of:404', 2386, 25, 'Cel:154790359', '2017-04-05 00:00:00', 'Abogacia', 'carloswiernaiii@hotmail.com', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (742, '2017-04-05 00:00:00', 21747331, 'ELGUERO', 'Mario Adolfo', 'Ropa - Calzados - accesorios artesanales ', 'Pje. 20 de Junio 246 - Bº San Cayetano', 2386, 25, 'Cel:153578430', '2017-04-05 00:00:00', 'Vendedor', 'ma1elguero70@yahoo.com.ar', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (743, '2017-04-05 00:00:00', 25202975, 'MARTINEZ', 'Diego Sebastian ', 'Vta. De tecnologia - playstation - celulares - accesorios', 'Gobernador Gutierrez 1047', 2386, 25, 'Cel:011-1540673876', '2017-04-05 00:00:00', 'Vendedor', 'diegoagita@hotmail.com', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (744, '2017-04-05 00:00:00', 25305508, 'NAVARRO', 'Sandra Adriana Letizia', 'Fabrica de muebles a medida - Decoradora', 'Pje. Federico Helguera 580', 2300, 25, 'Cel:156400959', '2017-04-05 00:00:00', 'Carpinteria', 'sandraalnavarro@gmail.com', '4', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (745, '2017-04-05 00:00:00', 27017576, 'RUIZ', 'Guillermo Daniel ', 'Vta. Ropa - Indumentaria dep. - oro y plata - celulares', 'Calle 19 Casa: 338 - Villa Mariano Moreno ', 2327, 25, 'Cel:154676672', '2017-04-05 00:00:00', 'Vendedor', 'gdanielgymr@hotmail.com', '4', 'ARIAS BORQUEZ Astrid', 36584446, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (746, '2017-04-05 00:00:00', 31001466, 'LIENDO', 'David Ismael ', 'Corte de pelo - Alisados ', 'San Martin 687', 2284, 25, 'Cel:153612741', '2017-04-05 00:00:00', 'Estilista', 'davidliendo56@gmail.com', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (747, '2017-04-05 00:00:00', 32459233, 'CORVALAN', 'Maria Delfina', 'Abogada', 'Pje 2 de abril 337 - Piso: 1 Of:14', 2386, 25, 'Cel:155644193 - Fijo:4219632', '2017-04-05 00:00:00', 'Abogacia', 'ma.delfinacorvalan@hotmail.com.ar', '3', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (748, '2017-04-05 00:00:00', 33815746, 'BUSTOS', 'Gabriela Vanessa', 'Depilacion - Masajes - Manicura', 'Rioja 26', 2386, 25, 'Cel:154017197', '2017-04-05 00:00:00', 'Esteticista', 'bgv142.gb@gmail.com', '4', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (749, '2017-04-05 00:00:00', 34285190, 'LANA', 'Sofia Isabel ', 'Tejidos', 'Bº Mercantil  - Saenz Peña 736', 2386, 25, 'Cel:155075005', '2017-04-05 00:00:00', 'Artesanias', 'sofiailana@hotmail.com', '3', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (750, '2017-04-05 00:00:00', 35521870, 'FARIAS', 'Yanina', 'Vta de ropa - Audiocar', '9 de Julio 100', 2276, 25, 'Cel:155274594 - Fijo:4942704', '2017-04-05 00:00:00', 'Vendedor', 'johana123.456@hotmail.com', '5', 'PEREZ Leonel Zacarias', 33057261, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (751, '2017-04-04 00:00:00', 29451288, 'GEORGIEFF', 'Luis Mariano ', '-', 'Lamadrid 412 - Piso: 2 Dpto: A', 2386, 25, 'Cel:155462209', '2017-04-04 00:00:00', 'Abogacia', 'drmarianogeorgieff@gmail.com', '3', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (752, '2017-04-04 00:00:00', 31644698, 'ALDERETE BOSCO', 'Andrea Fernanda ', 'Civil', 'Lamadrid 484 - PB', 2386, 25, 'Cel:154776941', '2017-04-04 00:00:00', 'Abogacia', 'dra.andreabosco@gmail.com', '4', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (753, '2017-04-04 00:00:00', 32568988, 'DIAZ MOLINA', 'Matias Nicolas ', '-', 'Lamadrid 486 - Piso: 3 Of: 37', 2386, 25, 'Cel:155236293', '2017-04-04 00:00:00', 'Abogacia', 'profmonicamolina@hotmail.com', '5', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (754, '2017-04-04 00:00:00', 33051721, 'GEORGIEFF', 'Luciana Maria ', '-', 'Lamadrid 412 - Piso: 2 Dpto: A', 2386, 25, 'Cel:154621971 - Fijo:4202944', '2017-04-04 00:00:00', 'Abogacia', 'lucianageorgieff@gmail.com', '3', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (755, '2017-04-04 00:00:00', 34133394, 'MARRAZA', 'Mayra Daiana ', 'Cosmeatra Hospitalaria - Depilacion IPL', 'Monteagudo 120 - Piso: 1 Depto: 4', 2386, 25, 'Cel:153008710 - Fijo:4715260', '2017-04-04 00:00:00', 'Cosmeatra', 'marraza_daiana@hotmail.com.ar', '3', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (756, '2017-04-04 00:00:00', 34605809, 'CARRIZO', 'Victor Hugo', 'Asesor comercial - Vta. De cursos de capacitacion ', 'Catamarca 258', 2386, 25, 'Cel:155144924', '2017-04-04 00:00:00', 'Vendedor', 'carrizovictor88@hotmail.com', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (757, '2017-04-03 00:00:00', 13338788, 'FIGUEROA', 'Julio Marcelo ', 'Reparacion de electrodomesticos ', 'General Paz 9', 2386, 25, 'Cel:156003932 Fijo:4211029', '2017-04-03 00:00:00', 'Tecnico/a', 'aaa@aaa.com', '3', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (758, '2017-04-03 00:00:00', 14073271, 'PASSERO', 'Jorge Eduardo', 'Cerrajero', 'General Paz 5', 2386, 25, 'Cel:155882114 Fijo:4225725', '2017-04-03 00:00:00', 'Cerrajeria', 'aaa@aaa.com', '3', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (759, '2017-04-03 00:00:00', 28290449, 'ALVAREZ', 'Antonio Lorenzo ', 'Reparacion y Rectificacion de Motos ', 'Avellaneda s/n - Mz: B Lt:10', 2284, 25, 'Cel:156652473', '2017-04-03 00:00:00', 'Mecanica de Atomotor', 'aaa@aaa.com', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (760, '2017-04-03 00:00:00', 32493502, 'ESPINDOLA', 'Pablo Exequiel', 'Vta. De celulares - informatica ', 'Corrientes 2299', 2386, 25, 'Cel:156565430', '2017-04-03 00:00:00', 'Vendedor', 'nancybarrionuevo1@gmail.com', '4', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (761, '2017-03-31 00:00:00', 18203556, 'BALZARETTI', 'Claudio', 'comidas - cafeteria - eventos ', '9 de Julio 345', 2386, 25, 'Cel:156417548', '2017-03-31 00:00:00', 'Gastronomia', 'balzaretticlaudio@hotmail.com', '3', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (762, '2017-03-31 00:00:00', 23749118, 'ROMANO', 'Alicia Susana ', 'librería', 'Bº El Solar - Mz:E Cs:32', 2327, 25, 'Cel:155050568 Fijo:4378016', '2017-03-31 00:00:00', 'Comerciante', 'pcclubtucuman@hotmail.com', '5', 'FLORES Luis Nahuel', 40966134, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (763, '2017-03-31 00:00:00', 25064125, 'BADA', 'Jorge Antonio ', 'Servicios Legales y gestoria ', 'La Plata 469', 2386, 25, 'Cel:156281287', '2017-03-31 00:00:00', 'Procurador ', 'jbada27@gmail.com', '3', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (764, '2017-03-31 00:00:00', 26782772, 'JANDAR', 'Agustin ', 'Art. Varios y Publicidad ', 'Bº 600 viviendas - Mz: 2 Cs:1 - Lomas de Tafi ', 2386, 25, 'Cel:155788662', '2017-03-31 00:00:00', 'Vendedor', 'aaa@aaa.com', '4', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (765, '2017-03-31 00:00:00', 27634018, 'TRUJILLO', 'Natalia Eugenia ', 'Vta. De accesorios para bebe ', 'Bolivar 1724', 2386, 25, 'Cel:156943876', '2017-03-31 00:00:00', 'Comerciante', 'nataliatrujillo638@gmail.com', '5', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (766, '2017-03-31 00:00:00', 29451201, 'NAVARRO', 'Matias Sebastian ', 'Medico - capacitaciones - cria de cachorros ', 'Ruta 306 - Km 6 (Cruz Alta)', 2386, 25, 'Cel:156868454', '2017-03-31 00:00:00', 'Docencia', 'matiassebnavarro@yahoo.com.ar', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (767, '2017-03-31 00:00:00', 29628833, 'LOSSI', 'Pablo Sebastian ', 'Indumentaria y calzados ', 'Pje. Don Bosco 4361 -Dpto: 3', 2386, 25, 'Cel:152012255', '2017-03-31 00:00:00', 'Showroom', 'sebalossi@gmail.com', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (768, '2017-03-31 00:00:00', 29743658, 'VELIZ', 'Julio Rafael ', 'Insumos para celulares ', 'Prospero Mena 97', 2386, 25, 'Cel:153367641', '2017-03-31 00:00:00', 'Comerciante', 'rafaelveliz1983@gmail.com', '5', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (769, '2017-03-31 00:00:00', 30724597, 'MIÑO ', 'Sergio Alejandro ', 'Educacion fisica - clases particulares - gimnasio y entrenamiento', 'Diagonal Jose Paz 404', 2284, 25, 'Cel:156990219', '2017-03-31 00:00:00', 'Profesor/a', 'sam_5068@hotmail.com', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (770, '2017-03-31 00:00:00', 32348352, 'NORRY', 'Carlos Javier ', 'Corralon ', 'Av. Libertador 44', 2368, 25, 'Cel:0386315697076', '2017-03-31 00:00:00', 'Comerciante', 'norryc428@gmail.com', '5', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (771, '2017-03-31 00:00:00', 33051543, 'VIZCARRA ', 'Oscar Eduardo ', 'Estetica Vehicular (Pulido - optica y lim en gral.)', 'Bº San Agustin - Manuela Pedraza 100', 2276, 25, 'Cel:155329455', '2017-03-31 00:00:00', 'Mecanica de Atomotor', 'aaa@aaa.com', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (772, '2017-03-31 00:00:00', 34604313, 'NIEVAS ', 'Roy Ezequiel ', 'Herrero', 'Bº Cervecero Calle 11y16 - Mz: E Cs: 15', 2327, 25, 'Cel:155561351', '2017-03-31 00:00:00', 'Metalurgia ', 'lms_2009@live.com.ar', '5', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (773, '2017-03-31 00:00:00', 34719666, 'MORALES ', 'Daniel Maximiliano ', 'Herrero', 'Bº 1ero de Noviembre - Mz:K Lt:3 - Villa Mariano Moreno  ', 2327, 25, 'Cel:155305960', '2017-03-31 00:00:00', 'Metalurgia ', 'aaa@aaa.com', '5', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (774, '2017-03-30 00:00:00', 13710892, 'BIGLIARDO', 'Carlos Alberto', 'Escolar', 'Ernesto Padilla 1971', 2386, 25, 'Cel:155882400 Fijo:4361771', '2017-03-30 00:00:00', 'Transporte', 'carlos_bigli@hotmail.com', '3', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (775, '2017-03-30 00:00:00', 25844105, 'ESCOBAR ', 'Virginia Veronica ', 'Artesanias en madera', 'Pje. Los Andes 750', 2371, 25, 'Cel:153533733', '2017-03-30 00:00:00', 'Artesanias', 'davidtapolem@hotmail.com', '4', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (776, '2017-03-30 00:00:00', 34844703, 'ALFONSO', 'Hector David ', '-', 'Pje. Los Andes 750', 2371, 25, 'Cel:156390890', '2017-03-30 00:00:00', 'Carpinteria', 'davidtapolen@hotmail.com', '4', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (777, '2017-03-30 00:00:00', 37500587, 'BARRIENTOS CARRION ', 'Rocio del Pilar ', 'Vta. De ropa ', 'Bernabe Araoz 185', 2386, 25, 'Cel:154027206', '2017-03-30 00:00:00', 'Vendedor', 'rbarrientoscarrion@hotmail.com', '4', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (778, '2017-03-29 00:00:00', 8084276, 'RASKOVSKY', 'Luis Raul ', 'Medico Cirujano', 'Jujuy 113', 2386, 25, 'Cel:154151816 Fijo:4220662', '2017-03-29 00:00:00', 'Medicina ', 'lrrtuc@hotmail.com', '5', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (779, '2017-03-29 00:00:00', 10982907, 'PLAZA', 'Ignacio Miguel ', 'Vta y Fabricacion  de artesanias en madera ', 'Ruta 302 Km 29', 2348, 25, 'Cel:155930827', '2017-03-29 00:00:00', 'Artesanias', 'plazamiguelignacio@hotmail.com', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (780, '2017-03-29 00:00:00', 12149855, 'HERO', 'Carlos Alberto ', 'Gomeria  y Vta. De neumaticos ', 'Diagonal Arroyo y Pinedo 960', 2386, 25, 'Cel:156342525 Fijo:4241032', '2017-03-29 00:00:00', 'Gomeria', 'heroneumaticos@hotmail.com', '5', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (781, '2017-03-29 00:00:00', 20707143, 'OBELAR ', 'Ana Cristina ', 'Vta. De zapatos y carteras ', 'Santiago 4500 - Block:23 Dpto:9', 2386, 25, 'Cel:153507284', '2017-03-29 00:00:00', 'Vendedor', 'anaobelar8@hotmail.com.ar', '4', 'OBELAR Marcela Alejandra ', 18020817, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (782, '2017-03-29 00:00:00', 24450012, 'MEDINA AUGIER ', 'German Miguel ', 'Productos de Nutricion ', 'Pje. O\'Higgins 632', 2386, 25, 'Cel:153413555', '2017-03-29 00:00:00', 'Vendedor', 'arkangelg75@gmail.com', '4', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (783, '2017-03-29 00:00:00', 27731760, 'ISIDRO', 'Hector Ramon', 'Herreria en gral. ', 'Sarmiento 480', 2284, 25, 'Cel:154164301', '2017-03-29 00:00:00', 'Metalurgia ', 'aaa@aaa.com', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (784, '2017-03-29 00:00:00', 28956236, 'ROBLES SORIA ', 'Jose Maria ', 'Vta. De celulares y accesorios', '25 de Mayo 93', 2284, 25, 'Cel:155934040', '2017-03-29 00:00:00', 'Comerciante', 'movil_cel_526@hotmail.com.ar', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (785, '2017-03-29 00:00:00', 31274531, 'AHMAD', 'Yanina Mercedes ', 'Capacitacion Laboral ', 'Las Piedras 598', 2386, 25, 'Cel:153421191 Fijo:4898606', '2017-03-29 00:00:00', 'Docencia', 'yaninaahmad@gmail.com', '5', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (786, '2017-03-29 00:00:00', 32412111, 'NEFFA', 'Abel Nicolas ', 'Biomedica - Vta. y Reparacion de equipamiento medico ', 'Juramento 730', 2386, 25, 'Cel:156909503', '2017-03-29 00:00:00', 'Ingenieria', 'abelnicolasneffa@gmail.com', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (787, '2017-03-29 00:00:00', 36951837, 'CABRERA', 'Gustavo Alberto ', 'Criminalista - Eventos (musica,sonido,fotografia)', 'Jose Hernandez 906', 2386, 25, 'Cel:156676713', '2017-03-29 00:00:00', 'Perito', 'gustavocabrera818@gmail.com', '4', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (788, '2017-03-29 00:00:00', 30702340558, 'MUTUAL ', 'CONGRESO', 'Vta. De electrodomesticos ', '9 De Julio 485 ', 2386, 25, 'Fijo:4207229', '2017-03-29 00:00:00', 'Vendedor', 'relq@clubhonorarios.com', '5', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (789, '2017-03-28 00:00:00', 22331115, 'MONASTERIO', 'Rafael Carlos ', '\"Cheff - Escuela de cocina \"\"Atelier del Chef\"\"\"', 'Roca 160 ', 2387, 25, 'Cel:153011256', '2017-03-28 00:00:00', 'Gastronomia', 'monasterio71@hotmail.com', '5', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (790, '2017-03-28 00:00:00', 23931290, 'ORELLANA', 'Marcos Mauricio ', 'Amoblamientos', 'Jujuy 2082', 2386, 25, 'Cel:155249575', '2017-03-28 00:00:00', 'Carpinteria', 'marcosmauricio1974@gmail.com', '4', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (791, '2017-03-28 00:00:00', 31323260, 'DEBES', 'Sebastian Eduardo ', 'Construccion y Vta. De indumentaria', 'Pje. Monserrat 3507', 2386, 25, 'Cel:154673959', '2017-03-28 00:00:00', 'Ingenieria', 'sebadebes@hotmail.com', '3', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (792, '2017-03-28 00:00:00', 31323819, 'GOMEZ', 'Jose Alejandro ', 'Instructor de Padel - Vat. De indumentaria deportiva ', 'Bº Las Americas - Mz:J Cs:68', 2386, 25, 'Cel:152016577', '2017-03-28 00:00:00', 'Vendedor', 'joalegomez85@gmail.com', '3', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (793, '2017-03-28 00:00:00', 32501305, 'RODRIGUEZ', 'Matias Javier', 'Servicio tecnico y Vta de celulares ', 'San martin 252', 2386, 25, 'Cel:155701686', '2017-03-28 00:00:00', 'Tecnico/a', 'matiasrodriguez128@gmail.com', '3', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (794, '2017-03-28 00:00:00', 34067301, 'APADULA', 'Gabriel Augusto ', 'Instructor de Padel - Indumentaria dep. y paletas ', 'Uruguay 3036', 2386, 25, 'Cel:153507875', '2017-03-28 00:00:00', 'Vendedor', 'gabriel.apadula@hotmail.com', '3', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (795, '2017-03-28 00:00:00', 34185367, 'GERRERO', 'Ailen Camila', 'Vta de Productos de cosmetica - Accesorios - Artesanias ', 'Bº FEPUT - Mz: I Cs: 20', 2386, 25, 'Cel:155197655', '2017-03-28 00:00:00', 'Vendedor', 'gerreroailen5.ag@hotmail.com', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (796, '2017-03-28 00:00:00', 34202241, 'LESCANO', 'Alejandro Marcos ', 'Amoblamientos ', 'Jujuy 2082', 2386, 25, 'Cel:153546906', '2017-03-28 00:00:00', 'Carpinteria', 'alejandrolescano78@gmail.com', '4', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (797, '2017-03-28 00:00:00', 34693083, 'GILEZ', 'Luis Javier ', 'Amoblamiento ', 'Jujuy 2082', 2386, 25, 'Cel:155739277', '2017-03-28 00:00:00', 'Carpinteria', 'luisjaviergilez@hotmail.com', '4', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (798, '2017-03-28 00:00:00', 38489750, 'ACOSTA', 'Luciana Rocio ', 'Calzados - Indumentaria ', '12 de Octubre 1163', 2386, 25, 'Cel:153443461 Fijo:4326128', '2017-03-28 00:00:00', 'Vendedor', 'lucianaacosta65@gmail.com', '3', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (799, '2017-03-28 00:00:00', 39976680, 'GIMENEZ SARAVIA ', 'Florencia', 'Academia de Manejo ', 'Buenos Aires 425 - 4º D', 2386, 25, 'Cel:156317227', '2017-03-28 00:00:00', 'Docencia', 'flormgimenez@hotmail.com', '3', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (800, '2017-03-27 00:00:00', 13596906, 'FLORES', 'Mario Alberto ', 'Contratista para serv. Varios ', 'Av. Gregorio Diaz 714', 2284, 25, 'Cel:155152520', '2017-03-27 00:00:00', 'Mantenimiento en gral.', 'floresmario596@gmail.com', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (801, '2017-03-27 00:00:00', 20285836, 'DIAZ', 'Jose Martin ', '-', 'Lamadrid 412 - 2ºA', 2386, 25, 'Cel:156450900', '2017-03-27 00:00:00', 'Abogacia', 'mochitodiaz@hotmail.com', '3', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (802, '2017-03-27 00:00:00', 22031655, 'HERRERA', 'Raimundo ', 'Reparacion y Fabricacion ', 'Reconquista 751 ', 2284, 25, 'Cel:153344217', '2017-03-27 00:00:00', 'Herreria', 'aaa@aaa.com', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (803, '2017-03-27 00:00:00', 23931907, 'ROTGER', 'Silvia Elizabeth ', 'Familia y sucesion ', 'Av. Colon 302', 2386, 25, 'Cel:155276264', '2017-03-27 00:00:00', 'Abogacia', 'serotger14@gmail.com', '4', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (804, '2017-03-27 00:00:00', 27365263, 'SANDOVAL ', 'Hector Edgardo ', 'Albañil - Refacciones ', 'Lopez Mañan 360 - Villa Amalia', 2386, 25, 'Cel:153652218', '2017-03-27 00:00:00', 'Construccion', 'aaa@aaa.com', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (805, '2017-03-27 00:00:00', 27652339, 'TEJERINA ', 'Juan Manuel ', 'Sistema - Comunicaciones - Electronica ', 'Carlos Maria Torres 756', 2386, 25, 'Cel lab:154400042 - Cel alt:153554166 - Fijo:4294365 ', '2017-03-27 00:00:00', 'Ingenieria', 'juan_manuel_tejerina@hotmail.com', '5', 'TEJERINA Domingo', 12734725, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (806, '2017-03-27 00:00:00', 29310954, 'SELIS ', 'Diego Sebastian ', 'Electricidad y Electronica ', 'Paisandu 720', 2371, 25, 'Cel:154139732', '2017-03-27 00:00:00', 'Electricidad', 'dsselis@hotmail.com', '4', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (807, '2017-03-27 00:00:00', 34280805, 'PINTOR', 'Francisco Ruben ', 'Books y Eventos ', 'Cordoba 885 - 3º D', 2386, 25, 'Cel:386515664979', '2017-03-27 00:00:00', 'Fotografia', 'franpintor.fp@gmail.com', '5', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (808, '2017-03-27 00:00:00', 40697942, 'TRUJILLO', 'Nadia Jacqueline', 'Vta. Ropa y electrodomesticos ', 'Balcarce 2201', 2386, 25, 'Cel:153497159 Fijo:4278221', '2017-03-27 00:00:00', 'Vendedor', 'nadiatrujillo15@gmail.com', '3', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (809, '2017-03-25 00:00:00', 28291864, 'PRADO', 'Jose Gabriel ', 'Fabrica de miga y Catering ', 'San Luis 658 ', 2386, 25, 'Cel:153276379', '2017-03-25 00:00:00', 'Gastronomia', 'gabriel.prado@hotmail.com', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (810, '2017-03-25 00:00:00', 29102791, 'CANCINO', 'Adriana Elizabeth ', 'Eventos y escuela deportiva ', 'Reconquista 495', 2284, 25, 'Cel:155110856', '2017-03-25 00:00:00', 'Servicios para fiesta', 'adrivaleyciro@gmail.com', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (811, '2017-03-25 00:00:00', 33763099, 'SANDOVAL', 'Ivan Franco ', 'Técnico', 'Camino del Peru 780', 2387, 25, 'Cel:156439774', '2017-03-25 00:00:00', 'Mecanica de Atomotor', 'ivanfsandoval.is@gmail.com', '5', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (812, '2017-03-23 00:00:00', 20433537, 'OCAMPO ', 'Anibal Salvador ', 'Provisional - Familia ', 'Florida 122', 2386, 25, 'Cel:154415173', '2017-03-23 00:00:00', 'Abogacia', 'estudioocampogonzales@hotmail.com', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (813, '2017-03-23 00:00:00', 21327525, 'DEL PINO ', 'Rene Edgardo ', 'Tramites del automotor ', 'Bº El Mirador - Mz: P Cs:2 ', 2371, 25, 'Cel:156578021', '2017-03-23 00:00:00', 'Gestor', 'reneedgardodelpino@gmail.com', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (814, '2017-03-23 00:00:00', 26290702, 'NIETO ', 'Cecilia Carolina ', 'Vta. De bazar descartable y servicio de catering', 'Sarmiento 238', 2284, 25, 'Cel:155624213', '2017-03-23 00:00:00', 'Comerciante', 'karonieto018@hotmail.com', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (815, '2017-03-23 00:00:00', 31809912, 'ROJAS ', 'Raul David Franco ', 'Cheff - Cursos y capacitaciones - Catering', 'Sarmiento 135 - 7º D', 2386, 25, 'Cel:155605581', '2017-03-23 00:00:00', 'Gastronomia', 'franco_juu@hotmail.com', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (816, '2017-03-23 00:00:00', 32202645, 'GONZALES ', 'Cintia Sabrina ', '-', 'Chiclana 1687', 2386, 25, 'Cel:154883247', '2017-03-23 00:00:00', 'Peluqueria', 'cironicolas992@gmail.com', '5', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (817, '2017-03-23 00:00:00', 34764755, 'MALDONADO ', 'Ana Cecilia ', 'Lenceria femenina ', 'Delfin Gallo 2056', 2386, 25, 'Cel:156715800', '2017-03-23 00:00:00', 'Vendedor', 'anaceciliamaldonado1986@gmail.com', '4', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (818, '2017-03-22 00:00:00', 18034903, 'CORONEL ', 'Nestor Humberto ', 'Polirubro', 'Gral. Paz 1329 - PB - C', 2386, 25, 'Cel:155016704', '2017-03-22 00:00:00', 'Vendedor', 'nestor_coronel@hotmail.com', '3', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (819, '2017-03-22 00:00:00', 20991233, 'OLEA', 'Luis Angel ', 'Construccion', 'Bº El Salvador - Pje. Diaz Velez 2100 - Mz:3 Lt:11', 2386, 25, 'Cel:154764375', '2017-03-22 00:00:00', 'Contratista', 'luisolea1969@gmail.com', '4', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (820, '2017-03-22 00:00:00', 25331531, 'NIEVA ', 'Jorge Ariel ', 'construccion', 'Bº San Jose - Maipu 1412', 2387, 25, 'Cel:155058084', '2017-03-22 00:00:00', 'Contratista', 'jorgearielnieva@gmail.com', '5', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (821, '2017-03-22 00:00:00', 29744826, 'GUTIERREZ ', 'Juan Carlos ', 'Arreglos de viviendas', 'Bolivia 172', 2284, 25, 'Cel:155170349', '2017-03-22 00:00:00', 'Construccion', 'gutierrezjuanc@hotmail.com', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (822, '2017-03-22 00:00:00', 29999362, 'FARIA ', 'Maria de los Angeles ', 'Vta de indumentaria y accesorios ', 'Pje. Costa Rica 347', 2284, 25, 'Cel:155740820', '2017-03-22 00:00:00', 'Vendedor', 'maria.frs26@gmail.com', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (823, '2017-03-22 00:00:00', 31040067, 'SANDOVAL', 'Hector Luis ', 'Familia y Sucesiones ', 'Lamadrid 484 - PB ', 2386, 25, 'Cel:156287187', '2017-03-22 00:00:00', 'Abogacia', 'hectorlsandoval@hotmail.com', '4', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (824, '2017-03-22 00:00:00', 34208692, 'CORREA ', 'Noelia Carolina ', 'Lenguaje y aprendizaje ', 'San Lorenzo 1734', 2386, 25, 'Cel:155507071 Fijo:4238426', '2017-03-22 00:00:00', 'Fonoaudiologia ', 'carolinacorrea_3@hotmail.com', '4', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (825, '2017-03-21 00:00:00', 14226056, 'BARRERA', 'Tomas Osvaldo ', 'Turismo - Eco-aventura ', 'Pje. Borges 1244', 2386, 25, 'Cel:155710875 - Fijo:4211840', '2017-03-21 00:00:00', 'Profesor/a', 'ovabarrera@gmail.com', '3', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (826, '2017-03-21 00:00:00', 16685343, 'RUARTE', 'Jose Armando', 'Productos nutricionales - OMNILIFE', 'Amador Lucero 698', 2386, 25, 'Cel:155003669', '2017-03-21 00:00:00', 'Vendedor', 'chalaruarte@gmail.com', '4', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (827, '2017-03-21 00:00:00', 18185249, 'ROGER ', 'Ricardo Daniel ', 'Diesel', 'Villa Mariano Moreno - Calle 3 Cs:131', 2327, 25, 'Fijo:4372495', '2017-03-21 00:00:00', 'Mecanica de Atomotor', 'danro66@hotmail.com', '4', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (828, '2017-03-21 00:00:00', 21338747, 'DIAZ HADAD ', 'Maria Ines ', 'Productos de nutricion - OMNILIFE', 'Saavedra Lamas 408', 2387, 25, 'Cel:153550017', '2017-03-21 00:00:00', 'Vendedor', 'aaa@aaa.com', '4', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (829, '2017-03-21 00:00:00', 21745503, 'DA ROCHA', 'Fabiola Vanesa ', 'Productos nutricionales - OMNILIFE ', 'Constitucion 741', 2386, 25, 'Cel:153519553', '2017-03-21 00:00:00', 'Vendedor', 'nao_mahia2012@hotmail.com', '4', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (830, '2017-03-21 00:00:00', 28680211, 'FELDMAN ', 'Alejandro Benjamin ', 'Zapateria', '24 de Septiembre 196', 2386, 25, 'Cel:155942891 Fijo:4976176', '2017-03-21 00:00:00', 'Comerciante', 'feldmanale81@hotmail.com', '5', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (831, '2017-03-21 00:00:00', 31589636, 'LOPEZ MARCOS', 'Juan Jose ', 'Protesis - Implantes', 'Alberdi 459', 2386, 25, 'Cel:154162526', '2017-03-21 00:00:00', 'Odontologia', 'juanjose_lopezmarcos@hotmail.com', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (832, '2017-03-21 00:00:00', 32110466, 'IOTTI', 'Raul Romualdo', 'Vta. De accesorios de audio', 'Pje. Lucia Araoz 2861', 2386, 25, 'Cel:156575954', '2017-03-21 00:00:00', 'Vendedor', 'raulsipi@gmail.com', '4', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (833, '2017-03-21 00:00:00', 35921731, 'AMAYA', 'Caterina Emilse ', 'Vta. De marroquineria ', 'Bº 9 de Julio - Calle: Ricardo Reina s/n ', 2364, 25, 'Cel:0381156972676 Fijo:03863481870', '2017-03-21 00:00:00', 'Vendedor', 'btykaty@gmail.com', '3', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (834, '2017-03-20 00:00:00', 13339127, 'PAEZ', 'Victor Hugo ', 'Soldadura - Herreria en Gral. ', 'Pje. Peiro s/n - El corte ', 2276, 25, 'Cel:156475903', '2017-03-20 00:00:00', 'Metalurgia ', 'aaa@aaa.com', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (835, '2017-03-20 00:00:00', 13853339, 'PEDRAZA', 'Mirta Ines', 'Distribuidora de productos de nutricion', 'Maipu 545', 2386, 25, 'Cel:155949235', '2017-03-20 00:00:00', 'Vendedor', 'minespedraza@yahoo.com.ar', '4', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (836, '2017-03-20 00:00:00', 21027971, 'CARRERAS ', 'Maria Isabel ', 'Vta. De ropa ', 'Rondeau 549', 2386, 25, 'Cel:155674200', '2017-03-20 00:00:00', 'Vendedor', 'aaa@aaa.com', '4', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (837, '2017-03-20 00:00:00', 23103758, 'AGUDO', 'Andrea Patricia ', 'Implantes - cirugias ', 'Salta 113 - 1º A', 2386, 25, 'Cel:155956886 - Cel:155944126 ', '2017-03-20 00:00:00', 'Odontologia', 'iona02@yahoo.com.ar', '3', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (838, '2017-03-20 00:00:00', 24340689, 'LOZANO', 'Roberto Alejandro', 'Distribuidor de bebidas ', 'Santo Domingo 863', 2387, 25, 'Cel:156294207', '2017-03-20 00:00:00', 'Vendedor', 'roblozano@hotmail.com', '5', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (839, '2017-03-20 00:00:00', 25735478, 'VILLAGRA ', 'Maria Celeste ', 'Apoyo pedagogico ', 'Juan Posse 1235 ', 2386, 25, 'Cel:153035953', '2017-03-20 00:00:00', 'Profesor/a', 'maria1977@gmail.com', '4', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (840, '2017-03-20 00:00:00', 31129288, 'SUAREZ MOYANO', 'Adriana Natividad', 'Familia y sucesiones ', 'Lamadrid 484 - PB ', 2386, 25, 'Cel:156364689', '2017-03-20 00:00:00', 'Abogacia', 'natividad_suarez@hotmail.com', '4', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (841, '2017-03-20 00:00:00', 31589364, 'DI SILVESTRE ', 'Beatriz Fatima del Carmen ', 'Vta. De ropa ', 'Mejico 558', 2386, 25, 'Cel:156695553', '2017-03-20 00:00:00', 'Vendedor', 'betty_mc15@hotmail.com', '4', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (842, '2017-03-20 00:00:00', 34201948, 'OCAMPO', 'Luis Gustavo ', '-', 'Rondeau 549 - PB ', 2386, 25, 'Cel:155297246', '2017-03-20 00:00:00', 'Tapiceria', 'gustavocampo1801@gmail.com', '4', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (843, '2017-03-20 00:00:00', 34606062, 'GARCIA LARSEN', 'Lucas Matias ', 'Vta. De repuestos para autos ', 'Peru 778', 2387, 25, 'Cel:154046346', '2017-03-20 00:00:00', 'Vendedor', 'lucasglarsen1@gmail.com', '5', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (844, '2017-03-20 00:00:00', 34690603, 'VARELA', 'Giselle', 'Vta. De ropa ', 'Rondeau 549 ', 2386, 25, 'Cel:155685828', '2017-03-20 00:00:00', 'Vendedor', 'gisy.silvi@gmail.com', '4', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (845, '2017-03-20 00:00:00', 35504759, 'ADERA', 'Elisa Vanesa ', 'Familia ', 'Salta 126 - 5º F', 2386, 25, 'Cel:155391795', '2017-03-20 00:00:00', 'Abogacia', 'niniadera@gmail.com', '3', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (846, '2017-03-18 00:00:00', 8554899, 'LANUSSE', 'Alberto Roque', 'Vta. De productos nutricionales ', 'Bº Malvinas Mz:16 Lt:21', 2386, 25, 'Cel:154424132', '2017-03-18 00:00:00', 'Vendedor', 'aroquel2013@hotmail.com', '4', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (847, '2017-03-18 00:00:00', 18450684, 'ANTUNEZ', 'Elvira Encarnacion ', 'Distribuidora de productos de nutricion ', 'Diego de Villarroel 1979', 2387, 25, 'Cel:155791738', '2017-03-18 00:00:00', 'Vendedor', 'elvira.antunez@hotmail.com', '4', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (848, '2017-03-17 00:00:00', 20977257, 'ALVAREZ', 'Ramon Esteban ', 'P. de gimnasia terapeutica ', 'Asuncion 655', 2386, 25, 'Cel:155059631', '2017-03-17 00:00:00', 'Profesor/a', 'romdanza@yahoo.com', '4', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (849, '2017-03-17 00:00:00', 23116244, 'PRADO', 'Guillermo Raul ', 'Ferreteria y Vta. En gral. ', 'Av. Santo Cristo 323 ', 2284, 25, 'Cel:153030141', '2017-03-17 00:00:00', 'Comerciante', 'septimoelemento1@hotmail.com', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (850, '2017-03-17 00:00:00', 23310404, 'CARABAJAL', 'Eduardo', '-', 'Pje. Reyes Peñaloza 836', 2386, 25, 'Cel:154441868', '2017-03-17 00:00:00', 'Carpinteria', 'eduardocarabajal92@gmail.com', '3', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (851, '2017-03-17 00:00:00', 23930165, 'GONZALEZ', 'Victor Heraldo', 'Ferreteria', 'Av. Roca 601', 2386, 25, 'Cel:154688000', '2017-03-17 00:00:00', 'Comerciante', 'victorheraldogonzales@yahoo.com.ar', '4', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (852, '2017-03-17 00:00:00', 24553871, 'MISSART', 'Ariel Dario ', 'Amoblamiento de interiores - MDF ', 'Chile 1479', 2386, 25, 'Cel:156178210', '2017-03-17 00:00:00', 'Carpinteria', 'nogales_madera@hotmail.com', '5', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (853, '2017-03-17 00:00:00', 28223051, 'RASKOVSKY', 'Guillermo Alejandro', 'Cobranza - Moras', '9 de Julio 274 - Piso: 1 Of: 3', 2386, 25, 'Cel:155192001 Fijo:4302194', '2017-03-17 00:00:00', 'Gestoria', 'graskovsky@gestiondemora.com.ar', '4', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (854, '2017-03-17 00:00:00', 34287463, 'HERNANDEZ', 'Juan Pablo ', 'Alquiler de fotocabinas', 'Don Bosco 2233 Dpto: 4', 2386, 25, 'Cel:155628843', '2017-03-17 00:00:00', 'Servicios para fiesta', 'jp_crc@hotmail.com', '4', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (855, '2017-03-17 00:00:00', 93046907, 'MIERES GONZALES ', 'Ezequiel Moises ', 'Construcion', 'Calle 6 y Pje. Belgrano N/E (San Pablo)', 2385, 25, 'Cel:0111534136705', '2017-03-17 00:00:00', 'Contratista', 'ezequiel93907@gmail.com', '5', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (856, '2017-03-16 00:00:00', 24249949, 'ROMERO ', 'Mario Cesar ', 'Fabricante Lonas - Toldos - Carpas ', 'Bº villa Rosario s/n (San Pablo)', 2385, 25, 'Cel:153019458', '2017-03-16 00:00:00', 'Loneria', 'aaa@aaa.com', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (857, '2017-03-16 00:00:00', 24770712, 'BUSTAMANTE ', 'Antonio Ismael ', 'eventos y locutor ', 'Pje. Cabildo 2188', 2386, 25, 'Cel:156572862', '2017-03-16 00:00:00', 'Servicios para fiesta', 'playrecismael@gmail.com', '4', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (858, '2017-03-16 00:00:00', 26684958, 'DULOUT', 'Carlos Raul ', 'Eventos - delivery - Servicio de comida en gral.', 'Bº Oeste 2 - Mza:H Lote:27 Cs:1', 2386, 25, 'Cel:155140275', '2017-03-16 00:00:00', 'Gastronomia', 'carlosdulout@hotmail.com', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (859, '2017-03-16 00:00:00', 32413244, 'PEREZ LUCENA', 'Mariana', 'Laboral', 'Lamadrid 484 - PB ', 2386, 25, 'Cel:155997494', '2017-03-16 00:00:00', 'Abogacia', 'mariana_perezlucena@hotmail.com', '4', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (860, '2017-03-16 00:00:00', 38184242, 'RODRIGUEZ MELGAREJO', 'Gabriel Nicolas ', 'Reparacion de celulares ', 'Federico leloir 750', 2387, 25, 'Cel:156243065', '2017-03-16 00:00:00', 'Tecnico/a', 'gabrielgnrm@gmail.com', '5', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (861, '2017-03-16 00:00:00', 40274579, 'ROJAS', 'Florencia Belen', '-', 'Pje. Diaz Velez 108', 2386, 25, 'Cel:153367400', '2017-03-16 00:00:00', 'Promotora ', 'florberojas@gmail.com', '5', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (862, '2017-03-16 00:00:00', 40530237, 'RODRIGUEZ', 'Samira Belen ', 'Vta. De ropa ', 'Congreso 2350 - Villa Amalia ', 2386, 25, 'Cel:156649422 Fijo:4298770', '2017-03-16 00:00:00', 'Vendedor', 'samii_belu@hotmail.com', '4', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (863, '2017-03-15 00:00:00', 5936179, 'MAZA SANCHEZ', 'Maria Esperanza ', 'Vta. De productos nutricionales - herbalife ', 'Av. Belgrano 79 ', 2386, 4, 'Cel:383415732314 - Fijo:3834745299', '2017-03-15 00:00:00', 'Vendedor', 'esperanzamazasanchez@gmail.com', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (864, '2017-03-15 00:00:00', 13847993, 'CARRIZO', 'Nicolas ', 'Empresa de turismo - programacion de viajes ', 'Rivadavia 782', 2386, 25, 'Cel:156407198', '2017-03-15 00:00:00', 'Turismo', 'ncar782@hotmail.com', '5', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (865, '2017-03-15 00:00:00', 17947270, 'GALVAN', 'Juan Pedro ', 'Muebles. Durlock. Pintor. Electric. Herrero. Albañil', 'Rondeau 2099', 2386, 25, 'Cel:154443465', '2017-03-15 00:00:00', 'Construccion', 'aaa@aaa.com', '4', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (866, '2017-03-15 00:00:00', 21944376, 'AGÜERO', 'Silvia Adriana ', 'Vta. De productos nutricionales - herbalife ', 'Bº 48 viv. - Cs:44 (sobre av. 22 de abril) ', 2386, 4, 'Cel:383415547457 - Fijo:3834457161', '2017-03-15 00:00:00', 'Vendedor', 'silviaadry376@gmail.com', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (867, '2017-03-15 00:00:00', 25218834, 'MARTINEZ FIGUEROA ', 'Roberto Gustavo', 'Regaleria', 'Peru 762', 2386, 25, 'Cel:154907346', '2017-03-15 00:00:00', 'Comerciante', 'copymasyerbabuena@hotmail.com', '6', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (868, '2017-03-15 00:00:00', 27960288, 'GARCIA', 'Alejandro Federico ', 'Importador', 'Bº Padilla - diagonal 7 Nº1196', 2386, 25, 'Cel:156051472', '2017-03-15 00:00:00', 'Comerciante', 'alegarcia_tuc@hotmail.com', '5', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (869, '2017-03-15 00:00:00', 33756452, 'SALIS', 'Sergio Ismael ', 'polirubro', 'Pje. Lucia Araoz 2504', 2386, 25, 'Cel:155897063', '2017-03-15 00:00:00', 'Comerciante', 'aaa@aaa.com', '3', 'ORDEN Victor Exequiel', 34287848, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (870, '2017-03-15 00:00:00', 35934543, 'SORIA', 'Kevin Alexander ', 'Vta. De productos nutricionales - herbalife ', 'Calle 30 - Bº Pucara 40 viv. (Polcos)', 367, 4, 'Cel:383415057774', '2017-03-15 00:00:00', 'Vendedor', 'aaa@aaa.com', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (871, '2017-03-14 00:00:00', 16686064, 'BRUKMAN', 'Claudia Beatriz ', 'Vta. De productos aromaticos y nutricionales ', 'Chacabuco 644 - 3 º B', 2386, 25, 'Cel:154205228', '2017-03-14 00:00:00', 'Vendedor', 'claudiabruk@hotmail.com', '4', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (872, '2017-03-14 00:00:00', 17040718, 'NAON', 'Victor Fabian ', 'Vta. De productos de nutricion OMNILIFE', 'San Lorenzo 2352 - PB', 2386, 25, 'Cel:154625978', '2017-03-14 00:00:00', 'Vendedor', 'naon65@gmail.com', '4', 'GORDILLO Gilda', 28222351, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (873, '2017-03-14 00:00:00', 23185164, 'GONZALEZ', 'Maria Cristina', 'Enseñanza Particular ', 'Italia 2809', 2387, 25, 'Cel:156374900', '2017-03-14 00:00:00', 'Profesor/a', 'cg7845496@gmail.com', '5', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (874, '2017-03-14 00:00:00', 23930014, 'HAMAKERS', 'Maria Cristina ', '-', 'Florida 112', 2386, 25, 'Cel:155225747', '2017-03-14 00:00:00', 'Odontologia', 'crishamakers@gmail.com', '2', 'OCAMPO GONZALEZ Anibal', 20433537, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (875, '2017-03-14 00:00:00', 25844072, 'PEREZ', 'German Jorge ', 'Vta. De productos dieteticos ', 'Bº Judicial - Mza: I Cs: 6 (Los positos)', 2386, 25, 'Cel:155132342', '2017-03-14 00:00:00', 'Vendedor', 'tucsonrusso@hotmail.com', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (876, '2017-03-14 00:00:00', 28292581, 'FRETE ', 'Luciana Pamela ', 'colorista y depilacion', '9 de Julio 813 ', 2284, 25, 'Cel:153424972', '2017-03-14 00:00:00', 'Estilista', 'pamelafrete@hotmail.com.ar', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (877, '2017-03-14 00:00:00', 31323213, 'RODRIGUEZ', 'Rodrigo Luis ', 'Electronica y reparacion de celulares', 'Belisario Roldan 655', 2386, 25, 'Cel:155756575', '2017-03-14 00:00:00', 'Tecnico/a', 'rodrigorodriguez140@hotmail.com', '4', 'MORENO Mario', 22030342, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (878, '2017-03-13 00:00:00', 17182203, 'MORENO', 'Alberto Victor ', 'Amoblamiento y averturas ', 'Monseñor Diaz 351 ', 2284, 25, 'Cel:155666291', '2017-03-13 00:00:00', 'Vendedor', 'malbertovictor@gmail.com', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (879, '2017-03-13 00:00:00', 23310245, 'RUIZ ', 'Hugo Daniel ', 'Administracion y ventas ', 'Av. Mitre 481', 2386, 25, 'Cel:154764951', '2017-03-13 00:00:00', 'Contabilidad', 'ruizhugodany@hotmail.com', '3', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (880, '2017-03-13 00:00:00', 25853363, 'ZIVILLICA', 'Marcelo Andres ', '-', 'Av. Independencia 2255', 2386, 25, 'Cel:154096102', '2017-03-13 00:00:00', 'Mecanica de Atomotor', 'marcelo_zivillica@hotmail.com', '3', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (881, '2017-03-13 00:00:00', 25950706, 'DIAZ', 'Raul Emilio ', 'Derecho de daños ', 'Congreso 547 - Piso:5º B ', 2386, 25, 'Cel:154184493', '2017-03-13 00:00:00', 'Abogacia', 'emiliodiazabog@hotmail.com', '3', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (882, '2017-03-13 00:00:00', 30090773, 'ANTONINI', 'Maria Eugenia ', 'Diseño de interiores, vta de cortinas ', 'Aldao Muños 227', 2387, 25, 'Fijo:4254371', '2017-03-13 00:00:00', 'Diseño', 'euge165@hotmail.com', '5', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (883, '2017-03-13 00:00:00', 33139236, 'NADAL', 'Claudio Rolando', 'Plomero - Gasista - Electrisista ', 'Alberdi 137', 2386, 25, 'Cel:154577353 Fijo:4898645', '2017-03-13 00:00:00', 'Mantenimiento en gral.', 'aaa@aaa.com', '4', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (884, '2017-03-13 00:00:00', 33971939, 'GARCIA CARO ', 'Elina', '-', 'Av. Presidente Peron 51', 2387, 25, 'Cel:154447072', '2017-03-13 00:00:00', 'Odontologia', 'negra_eg@hotmail.com', '5', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (885, '2017-03-13 00:00:00', 34185915, 'SEIFER MADE ', 'Jorge Antonio ', 'Nutricion ', 'Ctro. Medico Integral ', 2371, 25, 'Cel:154402287', '2017-03-13 00:00:00', 'Lic. En nutricion ', 'jorgeaseifermade@hotmail.com', '4', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (886, '2017-03-13 00:00:00', 34201461, 'NADAL', 'Ivan Maximiliano ', 'Plomero - Gasista ', 'Alberdi 137', 2386, 25, 'Cel:155464010 Fijo:4898645', '2017-03-13 00:00:00', 'Mantenimiento en gral.', 'espacioenblanco05@gmail.com', '4', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (887, '2017-03-13 00:00:00', 40966134, 'FLORES', 'Luis Nahuel ', 'Diseño grafico - impreciones textiles ', 'Bº El Solar - Mza: E  Cs:32 ', 2327, 25, 'Cel:154736436 - Fijo:4378016', '2017-03-13 00:00:00', 'Diseño', 'nahuel.tigre.flores.fn@gmail.com', '5', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (888, '2017-03-12 00:00:00', 29391017, 'COLOMO', 'Marina ', 'Panaderia ', 'Dalmacio Quiles 402', 2385, 25, 'Cel:153521846', '2017-03-12 00:00:00', 'Comerciante', 'marinacolomo@gmail.com', '5', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (889, '2017-03-11 00:00:00', 26454249, 'CAMPERO', 'Sara Gabriela', 'Vta. De ropa - Envios desayunos', 'Italia 1299 - 3º C', 2386, 25, 'Cel:156151926', '2017-03-11 00:00:00', 'Vendedor', 'saragcampero@gmail.com', '4', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (890, '2017-03-11 00:00:00', 26486050, 'ALVAREZ', 'Andrea Veronica ', 'Vta. de ropa ', 'Lavaisse 1358 Block: 1 - Piso:2º B', 2386, 25, 'Cel:154095602', '2017-03-11 00:00:00', 'Vendedor', 'andrea.psicopedagoga@hotmail.com', '3', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (891, '2017-03-11 00:00:00', 27017277, 'OLIVERA', 'Noelia Noemi ', 'Laboral ', 'Lamadrid 377 - 10º E ', 2386, 25, 'Cel:154541628 - Lab:4240489 ', '2017-03-11 00:00:00', 'Abogacia', 'noenoe_olivera@hotmail.com', '3', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (892, '2017-03-11 00:00:00', 27735882, 'GONZALEZ', 'Maria Jose ', 'Vta. en general ', 'Avellaneda 337', 2284, 25, 'Cel:155630923', '2017-03-11 00:00:00', 'Comerciante', 'mariajo-1980@hotmail.com', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (893, '2017-03-11 00:00:00', 27961982, 'MARQUEZ', 'Flavia Alejandra ', 'Servicio de viajes programados ', 'Mario Bravo 228', 2284, 25, 'Cel:153383342', '2017-03-11 00:00:00', 'Turismo', 'aaa@aaa.com', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (894, '2017-03-10 00:00:00', 8093017, 'GORDILLO', 'Hector Rene ', 'Polirubro', 'Uruguay 1783 - Planta alta ', 2386, 25, 'Cel:3815366614', '2017-03-10 00:00:00', 'Vendedor', 'hectorrenegordillo@yahoo.com.ar', '4', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (895, '2017-03-10 00:00:00', 11909675, 'RAMAYO', 'Maria Teresa ', 'Ortodoncia', 'Maipu 488', 2386, 25, 'Cel:156506845 Fijo:4221201', '2017-03-10 00:00:00', 'Odontologia', 'mariatramayo@gmail.com', '3', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (896, '2017-03-10 00:00:00', 17494081, 'FERNANDEZ', 'Edgardo Adrian ', '-', 'Pje. Virrey Vertiz 3279', 2386, 25, 'Cel:154435936', '2017-03-10 00:00:00', 'Arquitectura', 'edgardoadrianf@yahoo.com.ar', '5', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (897, '2017-03-10 00:00:00', 23517191, 'SANSONE', 'Javier Antonio ', 'LLAMAR A LAS 18:00', 'Salta 126 - 5º D', 2386, 25, 'Cel:154135954 Fijo:4300661', '2017-03-10 00:00:00', 'Abogacia', 'javiersansone@yahoo.com.ar', '3', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (898, '2017-03-10 00:00:00', 24553943, 'MEDINA', 'Nelson Ignacio', 'Servicio de catering ', 'Fray Luis Beltran 1168', 2386, 25, 'Cel:154657750', '2017-03-10 00:00:00', 'Vendedor', 'aaa@aaa.com', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (899, '2017-03-10 00:00:00', 25213773, 'AGUIRRE', 'Liliana Veronica', 'Show Room', '9 de Julio 4170', 2386, 25, 'Cel:156528822', '2017-03-10 00:00:00', 'Vendedor', 'marcelo_zivillica@hotmail.com', '3', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (900, '2017-03-10 00:00:00', 25498401, 'JIMENEZ', 'Marcelo Roberto', 'Vta. De descartables ', '9 de Julio 02 ', 2284, 25, 'Cel:156741486', '2017-03-10 00:00:00', 'Servicios para fiesta', 'marcelorjimenez@hotmail.com', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (901, '2017-03-10 00:00:00', 26688028, 'GONZALES', 'Daniel Roberto ', '-', 'Pje Serrano 615', 2386, 25, 'Cel:155541806', '2017-03-10 00:00:00', 'Chapista', 'newcar.taller@gmail.com', '5', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (902, '2017-03-10 00:00:00', 28721934, 'ESCANDAR', 'Maria Daniela ', '-', 'Larrea 2531', 2386, 25, 'Cel:153526339', '2017-03-10 00:00:00', 'Programacion', 'danielaescandar@gmail.com', '5', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (903, '2017-03-10 00:00:00', 29391088, 'CORREA', 'Matias Juan Jose', '-', 'Larrea 2531', 2386, 25, 'Cel:154984690', '2017-03-10 00:00:00', 'Tecnico/a', 'matiasjjcorrea@gmail.com', '5', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (904, '2017-03-10 00:00:00', 30117843, 'ALVARADO', 'Marina Patricia ', 'Estetica canina ', '9 de Julio 2838', 2386, 25, 'Cel:156540165', '2017-03-10 00:00:00', 'Peluqueria', 'marinapalvarado@hotmail.com', '4', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (905, '2017-03-10 00:00:00', 31098229, 'GUTIERREZ', 'Pablo Daniel ', 'Diseño - grafica - imprenta', 'San Juan 113 - 5º D', 2386, 25, 'Cel:156793255 Fijo:4300661', '2017-03-10 00:00:00', 'Diseño', 'gutierrezpablodaniel@yahoo.com.ar', '3', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (906, '2017-03-10 00:00:00', 33815062, 'CECILIA', 'Ricardo Matias', 'Vta. De accesorios para autos ', 'Av. Juan B. Justo 1182', 2386, 25, 'Cel:155306580', '2017-03-10 00:00:00', 'Vendedor', 'cmlimpieza@hotmail.com', '5', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (907, '2017-03-10 00:00:00', 38116066, 'LEDESMA', 'Luis Agustin ', 'Froigorifico de carnes -Forrageria ', 'Catamarca 1600 (country del Golf)', 2387, 25, 'Cel:155248161', '2017-03-10 00:00:00', 'Comerciante', 'agustinledesma.ventas@hotmail.com', '4', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (908, '2017-03-10 00:00:00', 94012909, 'MELGAREJO', 'Adriana', 'Cosmetica y esteticista - piel', 'Lobo de la Vega 147 - Local:8', 2387, 25, 'Cel:156427708', '2017-03-10 00:00:00', 'Esteticista', 'adrimelgarejo71@hotmail.com', '5', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (909, '2017-03-09 00:00:00', 22264210, 'PAZ', 'Maria Jose ', '-', 'Salta 113 - 1º A', 2386, 25, 'Cel:153538882', '2017-03-09 00:00:00', 'Odontologia', 'pazmariajo73@gmail.com', '3', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (910, '2017-03-09 00:00:00', 24578300, 'REYES', 'Maria Alejandra', '-', 'Salta 113 - 1º A', 2386, 25, 'Cel:155563201 Fijo:4919452', '2017-03-09 00:00:00', 'Odontologia', 'aaa@aa.com', '3', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (911, '2017-03-08 00:00:00', 21633511, 'CHOCOBAR', 'Karina Jaquelina', 'Protesis-Ortodoncia-Varios', 'Lab:San Martin 284 - Part:Martin Fierro 904', 2284, 25, 'Cel:156559758', '2017-03-08 00:00:00', 'Odontologia', 'aaa@aaa.com', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (912, '2017-03-08 00:00:00', 22987739, 'CUELLAR', 'Alba Beatriz', '-', 'Av. Salta 126', 2386, 25, 'Cel:153527080', '2017-03-08 00:00:00', 'Abogacia', 'albacuellarsansone@hotmail.com', '3', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (913, '2017-03-08 00:00:00', 25923166, 'GIACOSA', 'Carla Fiorella ', 'Protesis y Ortopedia', 'Pje. Jose Cabreras 2959', 2386, 25, 'Cel:154880879', '2017-03-08 00:00:00', 'Mecnica Dental', 'carlagiacosa836@hotmail.com', '3', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (914, '2017-03-08 00:00:00', 26445638, 'COLOMBRES GARMENDIA', 'Francisco', 'Viajes y Publicidad ', 'Santa Fe 155', 2386, 25, 'Cel:155435578', '2017-03-08 00:00:00', 'Comerciante', 'franciscocolombresgarmendia@gmail.com', '4', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (915, '2017-03-08 00:00:00', 27944186, 'BRANDAN', 'Daniel Eduardo', 'Vta. de repuestos y accesorios', 'Av. Monseñor Diaz 826', 2284, 25, 'Cel:155723905', '2017-03-08 00:00:00', 'Comerciante', 'aaa@aaa.com', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (916, '2017-03-08 00:00:00', 33978611, 'BARRAGAN', 'Maria Belen', '-', 'Chacabuco 514', 2386, 25, 'Cel:153593369', '2017-03-08 00:00:00', 'Abogacia', 'mariabelenbarragan@gmail.com', '5', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (917, '2017-03-08 00:00:00', 33978698, 'MERCADO', 'Eliana Veronica', '-', 'Chacabuco 514', 2386, 25, 'Cel:3816362188', '2017-03-08 00:00:00', 'Abogacia', 'draelianamercado@gmail.com', '5', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (918, '2017-03-08 00:00:00', 36339743, 'LUNA', 'Carolina de Lourdes', 'Escuelita de futbol y Hockey ', 'Alejandro Heredia 424', 2284, 25, 'Cel:155463880', '2017-03-08 00:00:00', 'Profesor/a', 'cariitooluna11@gmail.com', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (919, '2017-03-07 00:00:00', 17614745, 'DIEZ GOMEZ ', 'Silvia Nancy ', 'Camilla Masajeadora - docente particular ', 'Pje Junin 1435', 2386, 25, 'Fijo:4211261', '2017-03-07 00:00:00', 'Terapeuta', 'silviadiezgomez@gmail.com', '4', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (920, '2017-03-07 00:00:00', 26782411, 'GUTIERREZ', 'Betsabet del Valle', 'Vestidos de 15 y casamiento ', 'Av. Independencia 1438', 2386, 25, 'Cel:3815042916', '2017-03-07 00:00:00', 'Modista', 'morobet@hotmail.com.ar', '5', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (921, '2017-03-07 00:00:00', 28824589, 'ORTIZ', 'Patricia', 'P. de educacion fisica y personal trainer ', 'Congreso 325 ', 2386, 25, 'Cel:155874045', '2017-03-07 00:00:00', 'Profesor/a', 'pjortiz21@hotmail.com', '3', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (922, '2017-03-07 00:00:00', 33978112, 'RESANO', 'Karina', 'Vta. De zapatos y carteras ', 'Gral. Paz 1625', 2386, 25, 'Cel:155272150', '2017-03-07 00:00:00', 'Vendedor', 'laak_88@hotmail.com', '3', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (923, '2017-03-06 00:00:00', 14410859, 'BARRIONUEVO', 'Maria Victoria', 'Vta. De productos de belleza ', 'Peru 1811 ', 2387, 25, 'Cel:3814442807', '2017-03-06 00:00:00', 'Profesor/a', 'mavibarrionuevo@hotmail.com', '3', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (924, '2017-03-06 00:00:00', 22264392, 'CONCHA', 'Rafael Eduardo', 'Vta. De art. Varios ', 'Bº Lomas de Tafi - Sector:XI Mz:9 Cs:03', 2386, 25, 'Cel:156309736', '2017-03-06 00:00:00', 'Vendedor', 'rafaedu1@hotmail.com', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (925, '2017-03-06 00:00:00', 23931848, 'FILIPPINI', 'Pablo', 'Tecnico electricista y arie acondicionado ', 'Av. Monseñor Diaz 762', 2284, 25, 'Cel:155660822', '2017-03-06 00:00:00', 'Vendedor', 'filippinipablo@yahoo.com.ar', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (926, '2017-03-05 00:00:00', 22340493, 'PAZ', 'Lucrecia Soledad ', 'Madera - Almohadones', 'San Lorenzo 607', 2386, 25, 'Cel:155007178', '2017-03-05 00:00:00', 'Artesanias', 'sole_paz71@hotmail.com', '3', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (927, '2017-03-05 00:00:00', 35517220, 'BRITO', 'Gerardo Rafael', 'Carnicero', 'Constitucion 1663', 2386, 25, 'Cel:3816161653', '2017-03-05 00:00:00', 'Comerciante', 'gerardobrito220@gmail.com', '3', 'GOMEZ Raquel Adriana', 18186247, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (928, '2017-03-04 00:00:00', 12247642, 'PAZ', 'Felix Alberto', 'Fito Terapia', 'Bº Pte Peron - Mz:9 Cs:28', 2386, 25, 'Cel: 154124425', '2017-03-04 00:00:00', 'Agronomia', 'falbertopaz@yahoo.com.ar', '5', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (929, '2017-03-04 00:00:00', 12919730, 'LEDEZMA', 'Ines Beatriz', 'Peluquera', 'Bº Pte Peron - Mz:9 Cs:28', 2386, 25, 'Cel:3815668065', '2017-03-04 00:00:00', 'Peluqueria', 'ines_bledezma@hotmail.com', '5', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (930, '2017-03-04 00:00:00', 18186236, 'VALDEZ', 'Beatriz Dolores', 'Show room', 'Torres Posse 1287', 2386, 25, 'Cel:3816659008', '2017-03-04 00:00:00', 'Vendedor', 'aaa@aaa.com', '5', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (931, '2017-03-04 00:00:00', 20217805, 'MOLINA', 'Jose Enrique', 'Vta. de electrodomesticos', '25 de Mayo 656', 2343, 25, 'Cel:3863407265', '2017-03-04 00:00:00', 'Comerciante', 'caronda-empresa@hotmail.com', '5', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (932, '2017-03-04 00:00:00', 30835400, 'RIVADEO', 'Ivan Lucas ', 'Abogado Laboral', 'Bº Oeste II - Mz: C Block:4 Dpto:6', 2386, 25, 'Cel:3814410041', '2017-03-04 00:00:00', 'Abogacia', 'jrivadeo@gmail.com', '3', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (933, '2017-03-03 00:00:00', 27962601, 'QUIROGA', 'Raul Eduardo', 'Serv. Tecnico de fotocopiadoras', 'Bº Loma de Tafi - sector: X - Mz:5 Cs:19', 2386, 25, 'Cel:156285073', '2017-03-03 00:00:00', 'Tecnico/a', 'raul_serviciotecnico@hotmail.com', '3', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (934, '2017-03-03 00:00:00', 33974422, 'NALLIM', 'Joaquin Alfredo', 'Vta. de art. varios', 'Justo de la Vega 950 - Block B Dpto:20', 2386, 25, 'Cel:155760007', '2017-03-03 00:00:00', 'Vendedor', 'joaquin.nallim@yahoo.com', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (935, '2017-03-02 00:00:00', 10791296, 'GONZALEZ', 'Marta Elena ', 'Manualidades', 'Uruguay 1783', 2386, 25, 'Cel: 155208307 - Fijo:4327064', '2017-03-02 00:00:00', 'Artesanias', 'martadegordillo@hotmail.com', '4', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (936, '2017-03-02 00:00:00', 13278209, 'GUNTERN', 'Jorge Ovidio', 'Vta. Y reparacion de electronicos ', 'Diego de Villa Roel 28', 2386, 25, 'Cel:3814282634', '2017-03-02 00:00:00', 'Vendedor', 'guntern@gmail.com', '4', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (937, '2017-03-02 00:00:00', 16458365, 'PITA', 'Jorge Horacio', 'Vta. de repuestos', 'Marco Avellaneda 441', 2386, 25, 'Cel:3815024770', '2017-03-02 00:00:00', 'Comerciante', 'rajota2001@yahoo.com.ar', '4', 'NO', 10000000, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (938, '2017-03-02 00:00:00', 24803292, 'ORTIZ', 'Julio Cesar', 'Eventos sociales', 'Magallanes 336', 2386, 25, 'Cel:154447354', '2017-03-02 00:00:00', 'Servicios para fiesta', 'julioc.ortiz@hotmail.com', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (939, '2017-03-02 00:00:00', 28884056, 'CORBALAN', 'Pablo Rene', '-', 'Av. Monseñor Diaz  638', 2284, 25, 'Cel:155798191', '2017-03-02 00:00:00', 'Odontologia', 'm8corbalan@hotmail.com.ar', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (940, '2017-03-02 00:00:00', 29430217, 'UTRERA', 'Juan Manuel ', 'Vta. De celulares y accesorios de informatica', 'Ayacucho 250', 2386, 25, 'Cel lab:155760508 fijo lab:4217206', '2017-03-02 00:00:00', 'Comerciante', 'juanmutrera@hotmail.com', '3', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (941, '2017-03-02 00:00:00', 32413002, 'SANCHEZ', 'Nanci Cecilia', 'Vta. De celulares y accesorios', 'Ayacucho 210', 2386, 25, 'cel:156677654', '2017-03-02 00:00:00', 'Comerciante', 'mobilar_lop_ar@hotmail.com', '3', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (942, '2017-03-02 00:00:00', 32459896, 'ARGAÑARAZ', 'Walter Gabriel ', 'Bazar y vta. De articulos varios', 'Mz:D Lt:5 - las talitas', 2371, 25, 'cel:3816172544', '2017-03-02 00:00:00', 'Vendedor', 'walter2004280@hotmail.com', '4', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (943, '2017-03-02 00:00:00', 33139022, 'DIAZ VAZQUEZ', 'Gonzalo', 'Vta de insumos Peluqueria', 'Balcarce 1120', 2386, 25, 'cel:156733442', '2017-03-02 00:00:00', 'Peluqueria', 'agenciaempletuc@yahoo.com', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (944, '2017-03-02 00:00:00', 33793470, 'ROJAS', 'MARCELA', 'Vta. De ropa ', 'Independencia 131', 2284, 25, 'cel:155504452', '2017-03-02 00:00:00', 'Vendedor', 'renatamarce2016@gmail.com', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (945, '2017-03-02 00:00:00', 33978739, 'GOMEZ MOLINA', 'Jose Miguel', '-', 'Pje Acevedo 2367 - Raul Colombres 1246', 2386, 25, 'cel:154436027 - fijo lab:4365546', '2017-03-02 00:00:00', 'Carpinteria', 'jose_gomezmolina@hotmail.com', '4', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (946, '2017-03-02 00:00:00', 37502195, 'SORIA', 'Nicolas Juan Alberto', 'Vta. De insumos informaticos ', 'Balcarce 100', 2384, 25, 'cel:3816222871', '2017-03-02 00:00:00', 'Vendedor', 'nicolas.soria78@gmail.com', '4', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (947, '2017-03-02 00:00:00', 38184914, 'CHAVES', 'Ramiro David', 'Construccion', 'San Lorenzo 2970', 2386, 25, 'Cel:3813011703', '2017-03-02 00:00:00', 'Contratista', 'ramirochaves2012@gmail.com', '4', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (948, '2017-03-02 00:00:00', 43555360, 'SECO', 'Juan Pablo', 'Vta. De productos nutricionales', 'Juramento 100', 2386, 25, 'cel:3814035215', '2017-03-02 00:00:00', 'Vendedor', 'aaa@aaa.com', '5', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (949, '2017-03-02 00:00:00', 43564773, 'SECO ALI', 'Ignacio Agustin', 'Vta. de productos nutricionales', 'Gobernador Gutierrez 1113', 2386, 25, 'Cel:3815074236', '2017-03-02 00:00:00', 'Vendedor', 'agu.herbal@hotmail.com', '5', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (950, '2017-03-01 00:00:00', 42173250, 'GALVAN ZELARAYAN', 'Lucas', 'Vta. De productos nutricionales', 'Ecuador 221', 2386, 25, 'cel:3813042080', '2017-03-01 00:00:00', 'Vendedor', 'bocalapasion@live.com', '5', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (951, '2017-02-28 00:00:00', 13139478, 'MEDINA', 'Maria Noemi', 'diseñadora de ropa de fiesta', 'Av. Monseñor Diaz 504', 2284, 25, 'cel:153316847', '2017-02-28 00:00:00', 'Comerciante', 'aaa@aaa.com', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (952, '2017-02-28 00:00:00', 22794727, 'RODRIGUEZ', 'Cesar Augusto', 'Reparador de fotocopiadoras e impresoras', 'Bs As 680 - PB', 2386, 25, 'cel:3816230870', '2017-02-28 00:00:00', 'Tecnico/a', 'tecnirodriguez@hotmail.com', '5', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (953, '2017-02-28 00:00:00', 25130088, 'BAEZ', 'Jessica', 'Vta. De ropa', 'Chiclana 164', 2386, 25, 'cel:155058069', '2017-02-28 00:00:00', 'Comerciante', 'orialda@hotmail.com', '3', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (954, '2017-02-28 00:00:00', 25503717, 'PEREZ', 'Monica del Valle', 'Vta. De art de belleza', 'Av. Monseñor Diaz 425 Local:7', 2284, 25, 'cel:153196830', '2017-02-28 00:00:00', 'Comerciante', 'monii_perez@hotmail.com', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (955, '2017-02-28 00:00:00', 25843477, 'LAZARTE', 'Pablo Gabriel', 'Electricista ', 'Bº San Martin -Mz: D  Cs:3', 2386, 25, 'cel:3816836668', '2017-02-28 00:00:00', 'Tecnico/a', 'pablo.lazarte.77@gmail.com', '4', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (956, '2017-02-28 00:00:00', 26378993, 'GIMENEZ', 'Deborah Natalia', 'Vta. De indumentaria', 'thames 231', 2386, 25, 'cel:155307148 fijo:4381909', '2017-02-28 00:00:00', 'Comerciante', 'dnatalgimenez@gmail.com', '3', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (957, '2017-02-28 00:00:00', 27751965, 'GIANIODIS', 'Veronica', 'diseñadora y decoradora', 'Crisostomo Alvarez 2997 - Dpto:1', 2386, 25, 'cel:3816441154 fijo:4325526', '2017-02-28 00:00:00', 'Diseño', 'verogianiodis@gmail.com', '3', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (958, '2017-02-28 00:00:00', 28614299, 'ARANCIBIA', 'Gabriela Romina ', 'Vta art. Varios y art. de joyería', 'San Lorenzo 620', 2386, 25, 'cel:155020389', '2017-02-28 00:00:00', 'Comerciante', 'arancibiaromina81@gmail.com', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (959, '2017-02-28 00:00:00', 28721270, 'RUIZ', 'Lourdes', 'Vta. De ropa y Perfumes ', 'Bº Lomas de Tafi - sector XIII Mz:6 Cs:18', 2386, 25, 'cel:155282373 fijo:3208415', '2017-02-28 00:00:00', 'Comerciante', 'lan2lourdes@hotmail.com', '3', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (960, '2017-02-28 00:00:00', 29451125, 'ABDA', 'David Elias ', 'Técnico Optico', '25 de Mayo 5', 2284, 25, 'cel:153632408', '2017-02-28 00:00:00', 'Comerciante', 'aaa@aaa.com', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (961, '2017-02-28 00:00:00', 30598359, 'LEDESMA', 'Esteban Ramon', 'Fabricante de inflables', 'RUTA 305 - Km 7 1/2 - Bº  Sub Oficial - Mz:A Lt:7', 2386, 25, 'cel:155041986', '2017-02-28 00:00:00', 'Loneria', 'estebanramonledesma@hotmail.com', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (962, '2017-02-28 00:00:00', 32501499, 'JURI', 'Pablo Fernando', 'servicio de lunch y delivery', 'Av. Mitre 934', 2386, 25, 'cel:155502334', '2017-02-28 00:00:00', 'Comerciante', 'pablojuri52@gmail.com', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (963, '2017-02-28 00:00:00', 34159154, 'OYOLA', 'Paula Alejandra', 'Vta. De indumentaria', 'Villa Carmela -  Bº San Javier - Mz: H Cs:18', 2386, 25, 'cel:3814583278', '2017-02-28 00:00:00', 'Comerciante', 'paulaoyola03@gmail.com', '3', 'MOSRE Rodrigo', 33632672, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (964, '2017-02-28 00:00:00', 35192864, 'ROLDAN ARMELLA', 'Florencia Maria ', 'Vta. de indumentaria femenina', 'Lavalle 864 - Piso:6 Dpto: D', 2386, 25, 'cel:3814751292', '2017-02-28 00:00:00', 'Odontologia', 'florroldanarmella@outlook.com', '3', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (965, '2017-02-28 00:00:00', 37658800, 'ALBORNOZ', 'Fernando Matias', 'Instructor de padel ', 'Chacabuco 660 Piso:4 Dpto:D', 2386, 25, 'cel:2974015554', '2017-02-28 00:00:00', 'Profesor/a', 'matias_geionni@hotmail.com', '3', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (966, '2017-02-28 00:00:00', 39143769, 'SALANDRO', 'Mauro Agustin', 'Barra Caribeña', 'Rondeau 1450', 2386, 25, 'cel:3816818140', '2017-02-28 00:00:00', 'Barman', 'agus.salandro@gmail.com', '3', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (967, '2017-02-24 00:00:00', 5083111, 'MACHADO', 'Maria Rosa', 'Depilacion y Manicure', 'A. Torres Posse 1530', 2386, 25, 'cel:3814567312', '2017-02-24 00:00:00', 'Electricidad', 'elita66@hotmail.com', '5', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (968, '2017-02-24 00:00:00', 6504850, 'RAMON', 'Norma Alicia', 'Enseñanza Particular', 'Paraguay 4056', 2386, 25, 'fijo:4347143', '2017-02-24 00:00:00', 'Profesor/a', 'noniramon@gmail.com', '4', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (969, '2017-02-24 00:00:00', 13475564, 'FORTUNA', 'Antonio Mario', 'Enseñanza Particular ', 'F. Rossi 257 ', 2387, 25, 'fijo:4354145', '2017-02-24 00:00:00', 'Profesor/a', 'mariofortuna095@yahoo.com.ar', '4', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (970, '2017-02-24 00:00:00', 20877334, 'CARRIZO', 'Jose Vicente', 'Fotocopias', 'Lavaisse 1667', 2386, 25, 'cel:3814955491 / 3816129068', '2017-02-24 00:00:00', 'Comerciante', 'kincarrizo@gmail.com', '4', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (971, '2017-02-24 00:00:00', 22336510, 'GALLARDO', 'Sebastian', 'Servicios empresariales y bodas ', 'Jose del campo 500', 2300, 25, 'cel:3814475394', '2017-02-24 00:00:00', 'Servicios para fiesta', 'sevis30@hotmail.com', '5', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (972, '2017-02-24 00:00:00', 26931644, 'CARRAZANO', 'Marcela Alejandra', 'Vta. De productos de Nutrición ', 'Bº Jose Chebaia - Mz: F Lt: 3', 2300, 25, 'cel:3815317041', '2017-02-24 00:00:00', 'Comerciante', 'aaa@aaa.com', '4', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (973, '2017-02-24 00:00:00', 27189184, 'TURCO', 'Marcela', 'Quiebras , Profesora', 'Av. Mate de Luna 3769', 2386, 25, 'cel:3815986093', '2017-02-24 00:00:00', 'Contabilidad', 'marceturco1979@hotmail.com', '5', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (974, '2017-02-24 00:00:00', 33966212, 'NIEVA', 'Mariana', 'Enseñanza particular', 'Gral. Paz 1287', 2386, 25, 'cel:3816660186', '2017-02-24 00:00:00', 'Profesor/a', 'mariana_potter24@hotmail.com', '4', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (975, '2017-02-24 00:00:00', 33978797, 'GUNTERN', 'Priscila', '-', 'Diego De Villarroel 28', 2386, 25, 'cel:3816031989', '2017-02-24 00:00:00', 'Odontologia', 'priguntern@hotmail.com', '4', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (976, '2017-02-23 00:00:00', 34953051, 'MORALES', 'Javier', 'Vta Art. Del hogar y electrodomesticos ', 'Isabel La Catolica 3229', 2386, 25, 'cel:3813285932', '2017-02-23 00:00:00', 'Comerciante', 'javylive@gmail.com', '3', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (977, '2017-02-22 00:00:00', 14488271, 'PEDRINI', 'Lucia Ester', 'Juguetería y Disfraces', 'Junin 486', 2386, 25, 'cel:3816279295', '2017-02-22 00:00:00', 'Comerciante', 'luciaepedrini@gmail.com', '3', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (978, '2017-02-22 00:00:00', 18185967, 'ROMANO', 'Victoria Sara Lia ', 'coiffeur, docente y capacitadora', 'Pje. Lucia Araoz 2531', 2386, 25, 'cel:156398010 fijo:4368022', '2017-02-22 00:00:00', 'Estilista', 'aaa@aaa.com', '3', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (979, '2017-02-22 00:00:00', 22031564, 'FUNES', 'Walter Rolando', 'Herrero, Pintor, Electricista', 'Bº Bonaire - Cs:19 Mz:J', 2371, 25, 'cel:3816852001', '2017-02-22 00:00:00', 'Mantenimiento en gral.', 'walrolfun@hotmail.com.ar', '4', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (980, '2017-02-22 00:00:00', 22261569, 'PAZ', 'Rita Dolores', 'Peluqueria y cursos ', 'Juan B. Teran 824', 2284, 25, 'cel:153562431', '2017-02-22 00:00:00', 'Comerciante', 'rita-loli@hotmail.com', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (981, '2017-02-22 00:00:00', 22428412, 'SORIA CORREA', 'Marcela del Rosario', '-', 'Bº Bonaire - Cs:19 Mz:J', 2371, 25, 'cel:3814965677', '2017-02-22 00:00:00', 'Mecnica Dental', 'walrolfun@hotmail.com.ar', '4', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (982, '2017-02-22 00:00:00', 24098242, 'CATANIA', 'Federico Cayetano ', 'Polirubro', 'Manuel Estrada 2119', 2386, 25, 'cel:3816258631 - cel alt:3814686010', '2017-02-22 00:00:00', 'Comerciante', 'los_instaladores@hotmail.com', '4', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (983, '2017-02-22 00:00:00', 24340790, 'ORTIZ', 'Maria Rosa', 'Peluqueria gral. Y estetica', 'Sarmiento 2', 2284, 25, 'cel:153623671', '2017-02-22 00:00:00', 'Peluqueria', 'aaa@aaa.com', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (984, '2017-02-22 00:00:00', 31053299, 'MOYANO', 'Roberto Gabriel', 'Vta. De celulares ', 'Bº 120 viviendas - Mz:D Cs:9', 2276, 25, 'cel:155512906 fijo:4282834 (abuelo)', '2017-02-22 00:00:00', 'Comerciante', 'gabrielmoyano74@gmail.com', '4', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (985, '2017-02-22 00:00:00', 32110863, 'GRAMAJO', 'Hector Gabriel ', 'Reparación de celulares ', 'Av. Independencia 4232', 2386, 25, 'cel:3813662672', '2017-02-22 00:00:00', 'Tecnico/a', 'hectorgramajo93@gmail.com', '4', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (986, '2017-02-22 00:00:00', 32206689, 'RIOS', 'Walter David ', 'Chapista y pintura en gral.', 'Martin Fierro 945', 2284, 25, 'cel:154499818', '2017-02-22 00:00:00', 'Mecanica de Atomotor', 'davidrios_1@hotmail.com', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (987, '2017-02-22 00:00:00', 34469273, 'BESUZZO', 'Melisa de los Angeles ', 'Gráfica, servicio tec. Y reparación', 'Congreso 2 ', 2284, 25, 'cel:155837044', '2017-02-22 00:00:00', 'Informatica', 'melibesuzzo@hotmail.com', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (988, '2017-02-21 00:00:00', 25498393, 'FERREYRA', 'Roberto Fernado', 'Electrisista doméstica, industrial, gas y refrigeracion', 'Pje Francisco de La madrid 530 (Villa Angelina)', 2386, 25, 'cel:3816673183', '2017-02-21 00:00:00', 'Electricidad', 'ferreyra.roberto.fernando@gmail.com', '4', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (989, '2017-02-21 00:00:00', 25741287, 'LATINA', 'Jose Luis ', 'Pintor en obras', 'Aniceto de la torre 591', 2300, 25, 'cel:3814098665', '2017-02-21 00:00:00', 'Pintor', 'joseluislatina53@gmail.com', '5', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (990, '2017-02-21 00:00:00', 27731855, 'GANIN', 'Juan Manuel ', 'Fabricación y colocación - Trabajo en aluminio', 'Luis Dode 347', 2284, 25, 'cel:155459484', '2017-02-21 00:00:00', 'Herreria', 'aaa@aaa.com', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (991, '2017-02-21 00:00:00', 29061276, 'MEDINA', 'Pablo Alejandro', '-', 'Bº Pte Peron Mz:4 Cs:1', 2386, 25, 'cel:3815813089', '2017-02-21 00:00:00', 'Ing. en Sistemas', 'pablitomedina21@gmail.com', '5', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (992, '2017-02-21 00:00:00', 29628840, 'ACOSTA', 'Javier Lorenzo', 'Carpintería en Gral. Y vta. De muebles ', 'Luis Dode 391', 2284, 25, 'cel:155305974', '2017-02-21 00:00:00', 'Carpinteria', 'aaa@aaa.com', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (993, '2017-02-21 00:00:00', 29744361, 'DIOSQUEZ', 'Jorge Luis ', 'Pintor en obras', 'Bº Los Pocitos - Leopoldo Lugones - Cs:203 ', 2371, 25, 'cel:3815218593', '2017-02-21 00:00:00', 'Pintor', 'aaa@aaa.com', '5', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (994, '2017-02-21 00:00:00', 30261167, 'FLORES', 'David Exequiel', 'Polirubro', 'Av Francisco de aguirre 275', 2386, 25, 'cel:3816318824', '2017-02-21 00:00:00', 'Comerciante', 'bombon-88@hotmail.com', '4', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (995, '2017-02-21 00:00:00', 31842133, 'ALDONATE', 'Oscar Hernan', 'Vta. De ropa - Indumentaria ', 'San Martin 566', 2284, 25, 'cel:155792362', '2017-02-21 00:00:00', 'Comerciante', 'herberaldonate@gmail.com', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (996, '2017-02-21 00:00:00', 32132760, 'GUAZZI', 'Noelia Carolina ', 'Polirubro - Vta. De ropa ', 'San Juan 2046', 2386, 25, 'cel:153381168', '2017-02-21 00:00:00', 'Comerciante', 'aledelnol@gmail.com', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (997, '2017-02-21 00:00:00', 33838986, 'CHAMORRO', 'Mauricio David', 'Herreria y construccion', 'Bº Malvinas - Mz: A - Cs: 3', 2385, 25, 'cel:3816207143', '2017-02-21 00:00:00', 'Herreria', 'mauriciobym@outlook.es', '4', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (998, '2017-02-21 00:00:00', 34211145, 'MOLINA', 'Abel Alexander', 'Vta art. Varios', 'Av. Mitre 415', 2386, 25, 'cel:3816915129 fijo:4298689', '2017-02-21 00:00:00', 'Comerciante', 'huguito_santo_08@hotmail.com', '4', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (999, '2017-02-21 00:00:00', 34357019, 'MOYANO', 'Jorge German ', 'Polleria San Martin - venta por mayor y menor ', 'San Martin 141', 2284, 25, 'cel:153351263', '2017-02-21 00:00:00', 'Comerciante', 'german-moyano@hotmail.com', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1000, '2017-02-20 00:00:00', 23019407, 'ALBORNOZ', 'Martín Eduardo', '-', 'Ramirez de Velazco 1711', 2386, 25, 'cel:3815511753', '2017-02-20 00:00:00', 'Gasista', 'aaa@aaa.com', '4', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1001, '2017-02-20 00:00:00', 24098027, 'PERALTA', 'Elizabeth Lorena', 'Polirubro', 'Pje. Williams 2709', 2386, 25, 'fijo:4851161', '2017-02-20 00:00:00', 'Comerciante', 'alvaro_life@yahoo.com.ar', '4', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1002, '2017-02-20 00:00:00', 24200355, 'MARCILLA ', 'Claudio Roberto ', 'Vta de repuestos', 'Santa Fe 1312', 2386, 25, 'cel. 3813003707', '2017-02-20 00:00:00', 'Comerciante', 'claudiomarcilla@hotmail.com', '5', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1003, '2017-02-20 00:00:00', 25631670, 'LEGUIZAMON', 'Vanesa Lorena', 'Accesorios para niñas', '9 de julio 162', 2386, 25, 'cel:221-5348741', '2017-02-20 00:00:00', 'Artesanias', 'agarratecatalina000@gmail.com', '3', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1004, '2017-02-20 00:00:00', 25922441, 'CASEY', 'Elina', '-', 'Salta 113 1º A', 2386, 25, 'cel-156234931 - fijo: 4254008', '2017-02-20 00:00:00', 'Odontologia', 'elinacasey@hotmail.com', '3', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1005, '2017-02-20 00:00:00', 26615884, 'ARANDA AVILA', 'Alvaro Sebastian', 'Vta. Planes de auto -  Productos de nutrición', 'Pje. Williams 2709', 2386, 25, 'cel:3816444468 - fijo:4851161', '2017-02-20 00:00:00', 'Comerciante', 'alvaro_life@yahoo.com.ar', '4', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1006, '2017-02-20 00:00:00', 31315289, 'RAMIREZ', 'Emilce Mariela ', 'indumentaria', 'Juan B. Teran 41 (Villa Carmela)', 2386, 25, 'cel:155828308  fijo:4931741', '2017-02-20 00:00:00', 'Comerciante', 'emilcitas16@hotmail.com', '3', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1007, '2017-02-20 00:00:00', 35029818, 'GUTIERREZ', 'Romina Elizabeth', 'Vta. De ropa', 'Marcos Paz 1269 - 6º D', 2386, 25, 'cel:3816859079', '2017-02-20 00:00:00', 'Comerciante', 'romeligu@gmail.com', '4', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1008, '2017-02-20 00:00:00', 40783094, 'BELLAVILLA', 'Kevin Alejandro', 'Vta de herramientas manuales, instalación de grupos electrógenos', 'Rioja 1883', 2386, 25, 'cel:3816543585', '2017-02-20 00:00:00', 'Comerciante', 'aaa@aaa.com', '4', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1009, '2017-02-17 00:00:00', 17056277, 'LUNA', 'Amanda Mercedes', 'Polirubro', 'Av. Colón 1286 - Local:1', 2386, 25, 'cel:3816422329 lab:4365901', '2017-02-17 00:00:00', 'Comerciante', 'amantamercedesluna@outlook.com', '3', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1010, '2017-02-17 00:00:00', 21172905, 'ROS', 'Fabio Miguel', 'Pintor de autos', 'Chile 1275', 2386, 25, 'cel:3814661345', '2017-02-17 00:00:00', 'Pintor', 'aaa@aaa.com', '4', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1011, '2017-02-17 00:00:00', 23310888, 'ROS', 'Antonio Miguel', '-', 'Chile 1275', 2386, 25, 'cel:3814793660', '2017-02-17 00:00:00', 'Chapista', 'aaa@aaa.com', '4', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1012, '2017-02-17 00:00:00', 26137574, 'NAVARRO', 'Veronica Alejandra', 'Carniceria La Nueva Hacienda 2', 'Av. Rivadavia 2050 (Los Gutierrez)', 2276, 25, 'cel:3816816301', '2017-02-17 00:00:00', 'Comerciante', 'aaa@aaa.com', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1013, '2017-02-17 00:00:00', 26454727, 'GRIL BRUFAU', 'Fabian Esteban ', 'Construccion, Plomeria,Electricidad', 'San Miguel 1563', 2386, 25, 'cel:3816972041 fijo:4234216', '2017-02-17 00:00:00', 'Mantenimiento en gral.', 'aaa@aaa.com', '4', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1014, '2017-02-17 00:00:00', 30835045, 'CARRIZO', 'Marcela Gabriela', 'Profesora', 'Congreso 430 PB', 2386, 25, 'cel:3815776183', '2017-02-17 00:00:00', 'Abogacia', 'tati27ana@gmail.com', '5', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1015, '2017-02-17 00:00:00', 33168232, 'AVILA', 'Silvio Patricio ', 'Carniceria - Super carnes Avila', 'Santa Fe y America', 2384, 25, 'cel:3816499082', '2017-02-17 00:00:00', 'Comerciante', 'aaa@aaa.com', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1016, '2017-02-17 00:00:00', 34763807, 'PAZ', 'Francisco Rodrigo', 'Ferreteria y Corralon', 'Balcarse 205', 2384, 25, 'cel:3814473866', '2017-02-17 00:00:00', 'Comerciante', 'franciscoolpaz@hotmail.com', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1017, '2017-02-17 00:00:00', 35522568, 'JIMENEZ', 'María Emilia ', 'Vta de ropa, indumentaria deportiva y varios', 'Lola Mora 80', 2384, 25, 'cel:3813539876', '2017-02-17 00:00:00', 'Comerciante', 'mejimenez522@gmail.com', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1018, '2017-02-17 00:00:00', 36867798, 'CASARES SORRILLA', 'Arantxa Agustina', '-', 'San Lorenzo 935', 2386, 25, 'cel:3814168073', '2017-02-17 00:00:00', 'Peluqueria', 'arantxacasares.acz@gmail.com', '3', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1019, '2017-02-17 00:00:00', 36885712, 'VALDEZ', 'Jorge Alberto', 'Equipamiento comercial y vta. Varias', 'Mendoza 200', 2384, 25, 'cel:3815455128', '2017-02-17 00:00:00', 'Comerciante', 'jorge--92@hotmail.com', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1020, '2017-02-16 00:00:00', 17239380, 'HERRERA', 'Hector Eduardo', 'Vta. De productos de nutricíon', 'Libertad 263', 2385, 25, 'cel:3815216337 - fijo:4816882', '2017-02-16 00:00:00', 'Comerciante', 'eduardoherre@hotmail.com', '4', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1021, '2017-02-16 00:00:00', 21027311, 'RUIZ', 'Amado José', 'Vta. Art. Del hogar y Bazar', 'La Madrid 2402 ', 2386, 25, 'cel:3815237978', '2017-02-16 00:00:00', 'Comerciante', 'ciruja2014@gmail.com', '3', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1022, '2017-02-16 00:00:00', 22263444, 'DIAZ', 'Gonzalo Enrique', 'Didactica', 'Galeria Junin - Local:7', 2386, 25, ' cel:3814053935', '2017-02-16 00:00:00', 'Comerciante', 'gonzaloenrique@gmail.com', '3', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1023, '2017-02-16 00:00:00', 22832991, 'DE LA VEGA', 'Eliana', 'Vta. y reparacíon de insumos informáticos', 'San Martin 699 / Laboral: San Martin 286', 2284, 25, 'cel:3814572611', '2017-02-16 00:00:00', 'Comerciante', 'eliandelavega@gmail.com', '2', 'CARRIZO Nelson Ivan', 37502762, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1024, '2017-02-16 00:00:00', 24503110, 'RIOS', 'Facundo José Ramon', 'coiffeur', '25 de Mayo 1427', 2386, 25, 'cel:3815677324 fijo:4221570', '2017-02-16 00:00:00', 'Estilista', 'facujrios@icloud.com', '3', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1025, '2017-02-16 00:00:00', 24750862, 'GORDILLO', 'Jose Luis', 'Servicio tec. Y venta de celulares y art. Varios', 'San Martin 219', 2284, 25, 'cel:381-156274410', '2017-02-16 00:00:00', 'Comerciante', 'bc.telefonia@hotmail.com', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1026, '2017-02-16 00:00:00', 28883424, 'ORELLANA', 'Ester', 'Vta. de productos de nutricíon', 'Pje Salguero 1479', 2386, 25, 'cel:3815288882', '2017-02-16 00:00:00', 'Comerciante', 'eorellana@hotmail.com', '4', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1027, '2017-02-16 00:00:00', 29640381, 'GARCIA ROQUE', 'Carolina', 'Vta. De productos de nutricíon', 'Libertad 263', 2385, 25, 'cel:3816746713 fijo:4816882', '2017-02-16 00:00:00', 'Comerciante', 'angelesdekro@hotmail.com', '4', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1028, '2017-02-16 00:00:00', 30836316, 'TULA', 'David Alejandro ', 'Vta. De insumos y servicios', 'Bolivar 2047 Dpto:5', 2386, 25, 'cel:3815788000', '2017-02-16 00:00:00', 'Lic. En informatica', 'aletula6@gmail.com', '3', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1029, '2017-02-16 00:00:00', 31808813, 'CASTAÑARES', 'Luis Alberto', 'Peluquero', 'Amadeo Jackes 238', 2300, 25, 'cel:3814485573 fijo:4394579', '2017-02-16 00:00:00', 'Peluqueria', 'luisitopapu63@gmail.com', '4', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1030, '2017-02-16 00:00:00', 33374993, 'PLANO', 'María Julia', '-', 'Bº Presidente Peron Mz:1 Cs:7', 2386, 25, 'cel personal:3814449369 cel lab:3815060595', '2017-02-16 00:00:00', 'Odontologia', 'julia.plano@hotmail.com', '4', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1031, '2017-02-16 00:00:00', 33374994, 'PLANO', 'María del Pilar ', 'Abogada Civil ', 'La Madrid 377 - piso:8º D', 2386, 25, 'cel:3816249544', '2017-02-16 00:00:00', 'Abogacia', 'planopilar@gmail.com', '5', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1032, '2017-02-15 00:00:00', 24842758, 'CARO', 'Nicolasa del Valle', '-', 'Av. Independencia 4212', 2386, 25, 'cel lab:381-155583551 cel pers:381-155632495', '2017-02-15 00:00:00', 'Peluqueria', 'aaa@aaa.com', '5', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1033, '2017-02-15 00:00:00', 25212569, 'CRAVERO', 'Veronica Laura', 'Polleria y Fiambreria', 'A. Torres Posse 1240', 2386, 25, 'cel:381-156830088', '2017-02-15 00:00:00', 'Comerciante', 'verocraverop@hotmail.com', '5', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1034, '2017-02-15 00:00:00', 25240538, 'PIANAROLI', 'Luis Mauricio', '-', 'Bº Presidente Peron - Mz:1 Cs:3', 2386, 25, 'cel:381-155056496', '2017-02-15 00:00:00', 'Fumigacion', 'pianaroli76@gmail.com', '5', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1035, '2017-02-15 00:00:00', 25380708, 'RODRIGUEZ PONCE DE LEON ', 'Ana María ', 'RODRIGUEZ Ana', 'Catamarca 863', 2386, 25, 'cel:381-155349364 fijo:381-4242147', '2017-02-15 00:00:00', 'Abogacia', 'anarodriguezpdl@gmail.com', '3', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1036, '2017-02-15 00:00:00', 26782634, 'LEPEN', 'Vanesa', '520 Almacen de ropa', 'Pedro de Villalba 520', 2387, 25, 'cel:381-155445919 fijo:381-4354458', '2017-02-15 00:00:00', 'Comerciante', 'vanelepen@hotmail.com', '4', 'LEPEN Fabiana', 23239198, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1037, '2017-02-15 00:00:00', 27017232, 'HERRERA ', 'Rosa Ester ', 'SHOW ROOM', 'Bº  Ciudad Jardin - Pje Lucia Araoz 2332', 2386, 25, 'cel:381-156281548 fijo:381-4857316', '2017-02-15 00:00:00', 'Comerciante', 'matiasherrera165@gmail.com', '3', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1038, '2017-02-15 00:00:00', 27120653, 'AGUSTONI', 'Gustavo Eduardo', 'venta art. de limpieza', 'Cordoba 580 ', 2387, 25, 'cel:381-156421147', '2017-02-15 00:00:00', 'Comerciante', 'gustavoeduardoagustoni@gmail.com', '5', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1039, '2017-02-15 00:00:00', 27370828, 'ESCOBAR', 'Estela Mabel', 'ESCOBAR Estela', 'Los Sauces 260', 2387, 25, 'cel:0381-155778240 fijo:0381-4251069', '2017-02-15 00:00:00', 'Programador/a Universitaria', 'estelam.escobar@gmail.com', '5', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1040, '2017-02-15 00:00:00', 27594323, 'VELIZ ', 'Monica Lujan ', 'jugueteria, bazar y art de temporada', 'Pje Fray Manuel Perez 450 / Independencia 8', 2284, 25, 'cel:381-153312734 ', '2017-02-15 00:00:00', 'Comerciante', 'aaa@aaa.com', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1041, '2017-02-15 00:00:00', 33818841, 'DIAZ', 'Hernan Alexander', 'alquiler de salon y eventos', 'Fray Luis Beltran 993', 2284, 25, 'cel:381-156619559 ', '2017-02-15 00:00:00', 'Comerciante', 'hernan.brs.julia@gmail.com', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1042, '2017-02-15 00:00:00', 34075848, 'FLORES', 'Erika Vanesa', 'venta y servicio tec. A celulares', 'Bº Teresa de Calcuta - Mz:O Lote:14', 2276, 25, 'cel:381-156164908', '2017-02-15 00:00:00', 'Comerciante', 'maytajosue@gmail.com', '4', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1043, '2017-02-15 00:00:00', 37655819, 'MALEK', 'Nicolas', 'MALEK Nicolas', 'Rondeau 1350', 2386, 25, 'cel:381-155304856', '2017-02-15 00:00:00', 'Profesor/a', 'nico_malek@hotmail.com', '3', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1044, '2017-02-14 00:00:00', 18469553, 'SANDOVAL', 'Alejandro Miguel', 'SANDOVAL Alejandro', 'Congreso 180', 2284, 25, 'cel:381-155106208', '2017-02-14 00:00:00', 'Comerciante', 'aaa@aaa.com', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1045, '2017-02-14 00:00:00', 23311077, 'VIZCARRA', 'Daniel Alberto', 'VIZCARRA Daniel', 'Congreso 85', 2284, 25, 'cel:381-156062231', '2017-02-14 00:00:00', 'Mecanica de Atomotor', 'danielvizcarra34@gmail.com', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1046, '2017-02-14 00:00:00', 24553168, 'GARCIA LARSEN', 'Pablo Alberto', 'GARCIA Pablo ', 'Peru 699', 2387, 25, 'cel:381-154046363', '2017-02-14 00:00:00', 'Instalacion Camaras de Seg', 'gerencia@webcom-tuc.com.ar', '4', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1047, '2017-02-14 00:00:00', 29744765, 'RODRIGUEZ LEDESMA', 'Walter Javier', 'RODRIGUEZ Walter', 'Mendoza 500', 2386, 25, 'cel:381-155407307', '2017-02-14 00:00:00', 'Tecnico/a', 'walter_tectuc@hotmail.com', '4', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1048, '2017-02-14 00:00:00', 31426148, 'FERES', 'Carlos Alejandro', 'FERES Carlos', 'Alen 1667', 2386, 25, 'cel:381-156520784', '2017-02-14 00:00:00', 'Comerciante', 'carlosferes7@gmail.com', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1049, '2017-02-14 00:00:00', 32200113, 'MAYTA', 'Josué Eliseo', 'MAYTA Josué', 'Bº Teresa de Calaita Mz:o Lote 14', 2276, 25, 'cel:381-156164882', '2017-02-14 00:00:00', 'Albañil', 'maytajosue@gmail.com', '4', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1050, '2017-02-14 00:00:00', 33413312, 'ALDERETE', 'Gabriel Alejandro', 'ALDERETE Gabriel', 'Av. Monseñor Diaz 443', 2284, 25, 'cel:381-154757922', '2017-02-14 00:00:00', 'Comerciante', 'tecnotronic.ger@gmail.com', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1051, '2017-02-14 00:00:00', 33430388, 'RODRIGUEZ', 'Sergio Gustavo', 'RODRIGUEZ SERGIO', 'Sarmiento 555', 2284, 25, 'cel:381-156219983', '2017-02-14 00:00:00', 'Comerciante', 'gustavomultirubro@gmail.com', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1052, '2017-02-14 00:00:00', 33884332, 'ARAGON', 'Ignacio', 'ARAGON Ignacio', 'Villa Mariano Moreno - calle 43 casa 375', 2327, 25, 'cel:381-154686312', '2017-02-14 00:00:00', 'Tecnico/a', 'ignacioaragon88@gmail.com', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1053, '2017-02-13 00:00:00', 20692145, 'LAZARTE', 'Fabian Alberto', 'LAZARTE Fabian', 'Marcos Paz 2290', 2386, 25, 'cel:381-155699693', '2017-02-13 00:00:00', 'Carpinteria', 'falazarte69@hotmail.com', '5', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1054, '2017-02-13 00:00:00', 22420568, 'GUZMAN', 'Juan Carlos', 'GUZMAN Juan', 'Marcos Paz 2600', 2386, 25, 'cel:381-155299111', '2017-02-13 00:00:00', 'Entrenador/a', 'kueroguzman@hotmail.com', '3', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1055, '2017-02-13 00:00:00', 25107941, 'BUSATO', 'Marìa Laura', 'BUSATO María', 'Av. Belgrano 1756', 2386, 25, 'cel:381-155041676 fijo lab:381-4334071', '2017-02-13 00:00:00', 'Comerciante', 'norcolorsrl@gmail.com', '5', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1056, '2017-02-13 00:00:00', 25719568, 'NIEVA', 'Diego Sebastían ', 'NIEVA Diego', 'Italia 1757', 2386, 25, 'cel:381-156773536', '2017-02-13 00:00:00', 'Tapiceria', 'tapiceria_nieva@hotmail.com', '4', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1057, '2017-02-13 00:00:00', 26013284, 'CALAZAN', 'Teresa Noemi', 'CALAZAN Teresa', 'Eudoro Araoz 1677', 2386, 25, 'fijo:381-4361475 Cel: 381-3257566', '2017-02-13 00:00:00', 'Comerciante', '', '3', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1058, '2017-02-13 00:00:00', 26584528, 'SOSA', 'Ines del Valle', 'SOSA Ines', 'Chacabuco 514 P B', 2386, 25, 'cel:381-154424451', '2017-02-13 00:00:00', 'Abogacia', 'sosa.estudiojuridico@gmail.com', '4', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1059, '2017-02-13 00:00:00', 30069015, 'HERRERA', 'Emilse Daniela', 'HERRERA Emilse', 'Villa Mariano Moreno Casa: 17 - Mz:32', 2386, 25, 'cel:381-155664908', '2017-02-13 00:00:00', 'Comerciante', 'tutuca332@hotmail.com', '3', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1060, '2017-02-13 00:00:00', 32201404, 'CALVO CHAVARRÍA', 'María Belén', 'CLAVO María', 'Jujuy 3350', 2386, 25, 'cel:381-154488461 fijo:381-4294777', '2017-02-13 00:00:00', 'Comerciante', 'belu2086@gmail.com', '4', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1061, '2017-02-13 00:00:00', 33163227, 'PEÑALVA', 'Osvaldo Andrés', 'PEÑALVA Osvaldo', 'Bº San Jorge Mz: J Lote: 8', 2386, 25, 'cel:381-154438125 fijo:381-4278103', '2017-02-13 00:00:00', 'Plomeria', 'osvaldopa90@gmail.com', '4', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1062, '2017-02-13 00:00:00', 35484529, 'DIAZ', 'María Juliana', 'DIAZ María ', 'Las Piedras 2383', 2386, 25, 'cel:381-155793114', '2017-02-13 00:00:00', 'Gastronomia', 'aaa@aaa.com', '4', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1063, '2017-02-10 00:00:00', 21597443, 'BUDEGUER', 'Carlos Miguel', 'Seguro del Automotor - BUDEGUER Carlos', 'Av torguinst 232', 2321, 25, 'cel:381-153194622 fijo:381-4378486', '2017-02-10 00:00:00', 'Gestor', 'elbuda@hotmail.com', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1064, '2017-02-10 00:00:00', 27122579, 'CASAL', 'Marcelo Sebastian', 'CASAL Marcelo', 'Congreso 182', 2284, 25, 'cel:381-155323853 ', '2017-02-10 00:00:00', 'Comerciante', 'marcelocasal10@hotmail.com', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1065, '2017-02-10 00:00:00', 27364682, 'RODRIGUEZ', 'Marcela Noelia ', 'RODRIGUEZ Marcela', 'Italia 2382', 2386, 25, 'cel:381-156782968 fijo:381-4333038', '2017-02-10 00:00:00', 'Servicios para fiesta', 'noeliarodriguez707@gmail.com', '4', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1066, '2017-02-10 00:00:00', 32206625, 'JORGE', 'Romina', 'JORGE Romina', 'Av Monseñor Diaz 577', 2284, 25, 'cel:381-155675397 fijp:381-4260626', '2017-02-10 00:00:00', 'Asesoria Metafisica', 'romiromi503@gmail.com', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1067, '2017-02-10 00:00:00', 33051761, 'ORTIZ', 'Gustavo Martin ', 'ORTIZ Gustavo', 'Av Monseñor Diaz 359', 2284, 25, 'cel:381-153027712 fijo:381-4260149', '2017-02-10 00:00:00', 'Mecanica de Atomotor', 'gustavom_ortiz@hotmail.com', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1068, '2017-02-10 00:00:00', 34591139, 'ORTIZ', 'Cyntia Vanessa', 'ORTIZ Cyntia', 'Av Monseñor Diaz 359', 2284, 25, 'cel:381-156970980 ', '2017-02-10 00:00:00', 'Comerciante', 'cyntia_90@hotmail.com', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1069, '2017-02-10 00:00:00', 38247053, 'PRADO', 'Exequiel José Manuel', 'PRADO Exequiel ', 'Bs AS 541 - Of: 4 y 5', 2386, 25, 'cel:381-154635117', '2017-02-10 00:00:00', 'Mediacion', 'fundacionparticipando@gmail.com', '5', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1070, '2017-02-09 00:00:00', 17783769, 'MONTENEGRO', 'Clara', 'MONTENEGRO Clara', 'San Martin 78 (feria)', 2284, 25, 'CEL: 381-153567810 (hija)', '2017-02-09 00:00:00', 'Comerciante', 'aaa@aaa.com', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1071, '2017-02-09 00:00:00', 20557716, 'GONZALEZ', 'Juan Angel ', 'GONZÀLEZ JUAN', 'San Martin 78 Local 23-24', 2284, 25, 'cel: 381-154623786', '2017-02-09 00:00:00', 'Comerciante', 'aaa@aaa.com', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1072, '2017-02-09 00:00:00', 21893554, 'CASTRO', 'Victor Hugo', 'CASTRO Victor', 'Pje Los Naranjos 750 - Mz: O Cs: 6', 2386, 25, 'cel:381-155766823 fijo:381-4276291', '2017-02-09 00:00:00', 'Tecnico/a', 'victor_river70@hotmail.com', '4', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1073, '2017-02-09 00:00:00', 23517251, 'GORDILLO', 'Paula Verónica', 'GORDILLO Paula ', 'Av. Belgrano 1555 - 2B', 2386, 25, 'cel:381-154908428', '2017-02-09 00:00:00', 'Profesor/a', 'pgdearmet@yahoo.com', '4', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1074, '2017-02-09 00:00:00', 24164025, 'LUNA', 'Myriam Elizabeth', 'LUNA Myriam', 'Eugenio Mendez 651', 2386, 25, 'cel:381-154657128', '2017-02-09 00:00:00', 'Comerciante', 'aaa@aaa.com', '4', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1075, '2017-02-09 00:00:00', 27886993, 'SUAREZ', 'Osvaldo Andres ', 'Suarez Osvaldo andres', 'Bº Julio Abrahan - el corte - Mz: S - Cs: 12', 2276, 25, 'CEL :381-155976665', '2017-02-09 00:00:00', 'Mantenimiento en gral.', 'aaa@aaa.com', '4', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1076, '2017-02-09 00:00:00', 29183805, 'PIZARRO', 'Alda Natalia', 'PIZARRO Alda', 'Pje  Chavez de Laguna 1163', 2386, 25, 'cel:381-156634881 fijo lab:381-4381972', '2017-02-09 00:00:00', 'Comerciante', 'natypizarro2011@hotmail.com', '4', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1077, '2017-02-09 00:00:00', 30807169, 'SANDOVAL', 'Juan Carlos', 'SANDOVAL Juan ', 'San Martin 78 Local 6-7', 2284, 25, 'cel:381-155066006', '2017-02-09 00:00:00', 'Comerciante', 'aaa@aaa.com', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1078, '2017-02-09 00:00:00', 30906049, 'JUAREZ', 'Juana Isabel Lucrecia', 'JUÀREZ Juana ', 'San Martin 78 local 12-13', 2284, 25, 'CEL: 381-155198882', '2017-02-09 00:00:00', 'Comerciante', 'aaa@aaa.com', '2', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1079, '2017-02-09 00:00:00', 32828758, 'LOPEZ', 'Stella Maris', 'LOPEZ Stella', 'San Martin 78 Local 8', 2284, 25, 'cel: 381-155540556', '2017-02-09 00:00:00', 'Comerciante', 'sml22261@gmail.com', '2', 'GOMEZ Franco David', 31588114, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1080, '2017-02-09 00:00:00', 34659808, 'DIAZ', 'Pedro Daniel', 'DIAZ Pedro', 'Vélez Sarsfield 636', 2371, 25, 'cel:381-156585464 fijo:381-4613850', '2017-02-09 00:00:00', 'Herreria', 'pedrodanieldiaz_0602@hotmail.com', '4', '-', 0, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1081, '2017-10-03 10:58:16', 22612803, 'AGÜERO', 'Ariel Fernando', 'Alquiler vajilla lunch salon ', 'Lavaisse 2435', 2386, 25, 'Cel.:155672666 - Fijo:4369563', '2017-10-03 10:58:16', 'Servicios para fiesta', 'sandraveronicavelardez23@gmail.com', '4', 'VELARDEZ Sandra Veronica', 26012878, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1082, '2017-10-03 12:54:11', 26242421, 'SALGADO', 'Maria Laura', 'Vta de ropa y calzados etc', 'Colon 107', 2294, 25, 'Cel.:03865-15501737', '2017-10-03 12:54:11', 'Comerciante', 'laura_tizi@hotmail.com', '1', 'MEDINA Johanna Daniela', 33628305, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1083, '2017-10-03 13:00:58', 26980606, 'GOMEZ', 'Maria Manuela', 'Vta de indumentaria', 'Mario Bravo 610 - Americo Vespucio 822', 2284, 25, 'Cel.:154402165', '2017-10-03 13:00:58', 'Comerciante', 'manuindumentaria@gmail.com', '2', 'TOLEDO Victor Daniel', 27210734, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1084, '2017-10-03 13:39:40', 26029165, 'TOLEDO', 'Silvia Beatriz', 'Vta Indumentaria Calzados Acc', 'Moreno 150 ', 2276, 25, 'Cel.:156428573', '2017-10-03 13:39:40', 'Vendedor', 'toledosil@hotmail.com', '2', 'NO', 10000000, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1085, '2017-10-03 14:38:49', 20433981, 'FAGRE', 'Maria de los Angeles', 'Serv Catering Tec Nutricion ', 'Pje. Payro 3319', 2386, 25, 'Cel.:156785561', '2017-10-03 14:38:49', 'Servicios para fiesta', 'jardiluz@hotmail.com', '4', 'TORASSO Nicolas', 39138331, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1086, '2017-10-03 14:44:19', 23238166, 'HERNANDEZ', 'Hugo Fabian', 'Tejidos Artesanales HERBALIFE', 'Carlos Darwin 46', 2387, 25, 'Cel.:156903030', '2017-10-03 14:44:19', 'Vendedor', 'hhfabian@hotmail.com', '3', 'AVILA Maria Florencia', 31429890, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1087, '2017-10-03 14:46:46', 28567276, 'Sosa', 'Paola Natalia', 'indumentaria femenina', 'ruta 308 KM. 3,5 Marapa', 2318, 25, 'Cel.:03865-656995', '2017-10-03 14:46:46', 'comerciante', 'rocio-bustos20@hotmail.com', '1', 'Bustos Nahuel Nicolas', 36701020, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1088, '2017-10-03 15:02:12', 92495535, 'VALENZUELA', 'Leucadia', 'Vta. De Indumentaria', 'San Martin 1190', 2294, 25, 'Cel.:03865-15628743', '2017-10-03 15:02:12', 'Comerciante', 'op@clubhonorarios.com', '3', 'NO', 10000000, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1089, '2017-10-03 15:12:49', 34286299, 'GUZMAN', 'Silvana Florencia', 'Vta de Indumentaria y calzado', 'J. B. Teran 870 ', 2284, 25, 'Cel.:154882462', '2017-10-03 15:12:49', 'Vendedor', 'silvu_flor2011@hotmail.com', '2', 'ALVAREZ Rodrigo Maximiliano', 33430082, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1090, '2017-10-03 15:14:00', 23915110, 'AUSAR', 'Carlos Ariel', 'Eventos en gral. ', 'Asuncion 755', 2386, 25, 'Cel.:156298905 - Fijo:4235154', '2017-10-03 15:14:00', 'Fotografia', 'arirevista@hotmail.com', '4', 'CRUZ Mercedes', 20434574, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1091, '2017-10-03 15:23:05', 27721250, 'MENGACINI', 'Jose Luis', 'Vta repuestos y acc CEL', 'Ernesto Padilla  6', 2294, 25, 'Cel.:03865-15338188', '2017-10-03 15:23:05', 'Comerciante', 'mengacini10@gmail.com', '3', 'PERALTA Daniel', 25927605, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1092, '2017-10-03 15:30:15', 35813863, 'SANCHEZ', 'Vanesa Eliana', 'Vta. De Ropa Y Calzados', 'Av. Americo Vespucio 2295', 2386, 25, 'Cel.:155265559', '2017-10-03 15:30:15', 'Comerciante', 'manuel_sanchez_2020@hotmail.com', '3', 'NO', 10000000, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1093, '2017-10-03 15:32:29', 33756660, 'NUÑES', 'Elena Luisa de Fatima ', 'Vta Indumentaria y Calzados ', 'Av. Sta. Rosa de Lima 115 - LEALES', 2385, 25, 'Cel.:155940515', '2017-10-03 15:32:29', 'Comerciante', 'elena_nunes_2008@yahoo.com.ar', '3', 'ROMERO Rafael Martin ', 29656358, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1094, '2017-10-03 15:34:24', 37727741, 'LERA', 'Javier', 'Ropa- Indumentaria', 'Vª Carmela Mz G casa 3', 2386, 25, 'Cel: 3815974658', '2017-10-03 15:34:24', 'Comerciante', 'lera_dkmo668@hotmail.com', '3', 'Diaz Monica', 18431855, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1095, '2017-10-03 15:49:20', 39972759, 'MOYANO', 'Daniela Alicia', 'Vta. Zapatillas', 'Bolivar 1078', 2386, 25, 'Cel: 3813261449', '2017-10-03 15:49:20', 'Showroom', 'moyano240@gmail.com', '1', 'Moyano David Del Milagro', 23861670, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1096, '2017-10-03 15:55:30', 21334916, 'ANTEZANA', 'Silvia Estela', 'Vta Productos  OMNILIFE', 'Bº Los Fresnos - Mz.:C Casa:6', 2284, 25, 'Cel.:154905548', '2017-10-03 15:55:30', 'Vendedor', 'silviaantezana732@gmail.com', '4', 'NO', 10000000, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1097, '2017-10-03 16:01:35', 26783319, 'SOSA', 'SERGIO ARIEL', 'Taller Mecanico', 'Pje. Saravia 1840', 2386, 25, 'Cel.:156538662', '2017-10-03 16:01:35', 'Mecanica de Atomotor', 'op@clubhonorarios.com', '4', 'GOMEZ MAYA Soledad', 27575305, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1098, '2017-10-03 16:14:20', 25543786, 'FRIAS', 'Jose Luis', 'Gestor seguros Vta calzados', 'Camino del Peru 2051', 2387, 25, 'Cel.:153024500', '2017-10-03 16:14:20', 'Gestor', 'joseluisfrias76@hotmail.com', '1', 'VILLAGRA Analia Veronica', 24671745, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1099, '2017-10-03 16:19:18', 22622010, 'TORRES', 'Diego Fabian', 'Vta. Y Reparacion de Celulares', 'San Juan 814', 2386, 25, 'Cel.:153533916', '2017-10-03 16:19:18', 'Comerciante', 'torresdie123@gmail.com', '3', 'AMORUSO Hugo Ariel', 22414168, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1100, '2017-10-03 16:22:55', 21746201, 'JUAREZ TOMAS', 'Maria Marcela', 'Implantes Protesis Vta ropa ', 'Pje. Monserrat 3429', 2386, 25, 'Cel.:154134207', '2017-10-03 16:22:55', 'Odontologia', 'mmjt424@hotmail.com', '3', 'NO', 10000000, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1101, '2017-10-03 16:55:05', 22030692, 'BRANDAN', 'Jose Armando', 'Taller Mecanico', 'La Plata 761', 2386, 25, 'Cel.:155156711', '2017-10-03 16:55:05', 'Mecanica de Atomotor', 'op@clubhonorarios.com', '1', 'ALDERETE Azucena Isabel', 22031881, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1102, '2017-10-03 16:56:57', 25844421, 'QUIROGA', 'Gerardo Adrian', 'Gestor Productor de seguros ', 'Av. Siria 1940', 2386, 25, 'Cel.:156481261', '2017-10-03 16:56:57', 'Gestor', 'adriansiniestro@hotmail.com.ar', '1', 'OVEJERO Fatima Carolina ', 27210261, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1103, '2017-10-03 16:58:36', 36885781, 'ROBLES', 'Maximiliano Rodolfo', 'Vta. De Ropa Calzados Acc', 'J. B. Teran 836 ', 2284, 25, 'Cel.:154494388', '2017-10-03 16:58:36', 'Vendedor', 'maximilianorobles43@yahoo.com.ar', '2', 'PALERMO Celeste Anabel ', 41090876, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1104, '2017-10-03 17:03:16', 18502491, 'VILLAGRA BUABUD', 'Luis Miguel', 'Abogado Penal ', 'Salta 160', 2386, 25, 'Cel.:156400166 ', '2017-10-03 17:03:16', 'Abogacia', 'baboo@yahoo.com.ar', '4', 'NO', 10000000, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1105, '2017-10-04 14:53:04', 24098598, 'PEREYRA', 'Domingo Atilio', 'Plomero, Albañil, Electricista', 'Bº UTA Ampliacion Sur - Mza.:F Casa:14', 2371, 25, 'Cel.:156061905', '2017-10-04 14:53:04', 'Construccion', 'op@clubhonorarios.com', '1', 'GOMEZ Analia Veronica', 26733475, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1106, '2017-10-04 15:21:28', 26638323, 'DIAZ HADAD', 'Mariela Karina', 'Vta de prod. OMNILIFE', 'Pje. Baaclini 2038', 2386, 25, 'Cel.:155476567', '2017-10-04 15:21:28', 'Vendedor', 'karinahadaddiaz@gmail.com', '4', 'NO', 10000000, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1107, '2017-10-04 15:51:27', 22073199, 'TREJO', 'Santiago Martin', 'Bar - Resto', 'Gral. Paz 552', 2386, 25, 'Cel.:154163651', '2017-10-04 15:51:27', 'Gastronomia', 'trejosantiago8@gmail.com', '3', 'TREJO Claudia A', 20284135, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1108, '2017-10-04 16:13:11', 8273431, 'ALBORNOZ', 'Luis Manuel', 'Vta  Produc OMNILIFE', 'Bº BGH - Mza.:H Casa:14', 2386, 25, 'Cel.:154959514 - Fijo:4373668', '2017-10-04 16:13:11', 'Vendedor', 'lionking0632@arnet.com.ar', '4', 'NO', 10000000, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1109, '2017-10-04 16:50:02', 33165480, 'MANSILLA', 'Carlos Andres', 'Vta, reparacion de celulares', 'Torquin y Balcarce - Calle Vieja S/N (Los Nogales)', 2384, 25, 'Cel.:156583997', '2017-10-04 16:50:02', 'Comerciante', 'carlosmansilla106@hotmail.com', '2', 'NO', 10000000, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1110, '2017-10-04 16:57:58', 27730323, 'MUSTAFA', 'Juan Carlos', 'Lubricentro Mecanica en gral. ', 'Las Piedras 3318', 2386, 25, 'Cel.:155653032', '2017-10-04 16:57:58', 'Mecanica de Atomotor', 'juanmustafa@hotmail.com.ar', '1', 'LAZARTE Maria Emilia', 30770674, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1111, '2017-10-05 15:35:47', 33671066, 'BRANDAN', 'Franco Exequiel', 'Vta produc limp Alq De cabañas', 'Chacabuco 825 -Hipolito Yrigoyen 690 (Termas de Rio Hondo)', 2386, 25, 'Cel.:03858-15401621 ', '2017-10-05 15:35:47', 'Vendedor', 'fraexe202@hotmail.com', '1', 'GARCIA DE ASSUNCAO Priscila', 95471068, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1112, '2017-10-05 16:21:19', 23647297, 'GUZMAN', 'Leornado Jaime', 'OMNILIFE Repar PC Diseño Graf', 'Bº Los Chañaritos 250 viv. Mz.:G casa:6', 2386, 25, 'Cel.:154123256 - Cel.:156341585', '2017-10-05 16:21:19', 'Vendedor', 'cdfullcomputacion@gmail.com', '4', 'CHIAPPINO Julia Elena', 23930654, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1113, '2017-10-05 17:02:13', 36231615, 'RIVADENEIRA', 'Franco Exequiel', 'Vta de Indumentaria y Calzados', 'Bº Ejercito Argentino - Av. Americo Vespucio 2511', 2386, 25, 'Cel.:0376-154574316 - Esposa:156507764', '2017-10-05 17:02:13', 'Vendedor', 'op@clubhonorarios.com', '1', 'FERNANDEZ Pamela Soledad', 40438654, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1114, '2017-10-06 16:03:21', 41961454, 'LOPEZ', 'Rodolfo Andres', 'Vta OMNILIFE Ropa Parquizacion', 'Marco Avellaneda 920 - Dpto.:B', 2371, 25, 'Cel.:154489132 - Madre:153544546', '2017-10-06 16:03:21', 'Vendedor', 'andres.lopez67@hotmail.com', '4', 'JUAREZ Paola Elizabeth', 22030392, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1115, '2017-10-06 16:34:09', 27650867, 'GUTIERREZ', 'Romina Alejandra', 'Peluqueria Trat faciales', 'Cordoba 295 - Dpto.: C', 2386, 25, 'Cel.:155447117', '2017-10-06 16:34:09', 'Peluqueria', 'gutierrez2013@gmail.com', '3', 'NO', 10000000, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1116, '2017-10-06 17:31:53', 26782122, 'CASTILLA', 'Maria Valeria', 'Implantes ', 'Las Piedras 582 - Marcos Paz 2340', 2386, 25, 'Cel.:155991904', '2017-10-06 17:31:53', 'Odontologia', 'dravaleriacastilla@gmail.com', '3', 'AGUIRRE Cintia', 27731369, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1117, '2017-10-06 17:46:09', 26029858, 'LUGONES', 'Cecilia', 'Ortodoncia', 'Las Piedras 582 - Gral Paz 1026', 2386, 25, 'Cel.:154175393 - Laboral.:4218911', '2017-10-06 17:46:09', 'Odontologia', 'cecilialugones@hotmail.com', '3', 'AGUIRRE Cintia ', 27731369, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1118, '2017-10-09 13:47:06', 30117313, 'Lobo Quinteros', 'Ramiro ', 'portal de noticas', '9 de julio 485 - 3º A', 2386, 25, 'Cel.:156022450', '2017-10-09 13:47:06', 'Portal de Noticias', 'relq@clubhonorarios.com', '5', 'NO', 10000000, 'B');
INSERT INTO `ProfesionalesTemp` VALUES (1119, '2017-10-09 15:52:33', 31809823, 'SUAREZ SEHNEM', 'Maria Belen', 'Vta. De OMNILIFE', 'Larrea 136 ', 2385, 25, 'Cel.:154542810 - Fijo:4811939', '2017-10-09 15:52:33', 'Vendedor', 'lobitalinda123@gmail.com', '4', 'SUAREZ Jose Antonio ', 11909952, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1120, '2017-10-09 16:17:22', 40275987, 'CHAPA', 'Matias Alejandro', 'Vta. De Cel, acc y serv. Tec.', 'Lab.:Delfin Gallo 2767 - Particular:Francisco de Aguirre 3007', 2386, 25, 'Cel.:154094266', '2017-10-09 16:17:22', 'Comerciante', 'paranatecno@gmail.com', '2', 'NO', 10000000, 'B');
INSERT INTO `ProfesionalesTemp` VALUES (1121, '2017-10-09 16:27:00', 38244869, 'LEDESMA', 'Jose Augusto', 'Mecanica motos Vta Repuestos ', 'Lab.:9 de Julio y Democracia 490 - Particular:Entre Rios 4100 Bº Amp. Federal', 2386, 25, 'Cel.:155061337 - Fijo:4295218', '2017-10-09 16:27:00', 'Mecanica de Atomotor', 'jr_motorepuestos@hotmail.com.ar', '4', 'NO', 10000000, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1122, '2017-10-10 15:53:08', 23238241, 'GOMEZ', 'Nancy Betsabe', 'Vta cosmeticos y trat belleza', 'Lab.:Santiago 1124 - Particular:Calle 31 nº 675 (las Talitas)', 2386, 25, 'Cel.:156406016', '2017-10-10 15:53:08', 'Vendedor', 'gomez_nancymonique@hotmail.com', '2', 'NO', 10000000, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1123, '2017-10-10 15:59:18', 31946276, 'GARLATTI', 'Enrique Gaston', 'Vta. De Celulares', 'Lab.:Salta 78 piso:7 B - Particular: Camino del Peru 651', 2386, 25, 'Cel.:156770009', '2017-10-10 15:59:18', 'Vendedor', 'gastongarlatti@gmail.com', '1', 'SCHULHAN MENEZES Daniele', 94548055, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1124, '2017-10-10 16:01:07', 39077405, 'BRAVO', 'Lucas Emiliano', 'Fotografia en Eventos soc', 'B Farmaceutico II - Mz.: E Casa:4', 2386, 25, 'Cel.:154547785', '2017-10-10 16:01:07', 'Fotografia', 'lucasbravo1995@gmail.com', '5', 'BRAVO Tomas Bernabe', 42206090, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1125, '2017-10-10 16:03:03', 28721720, 'PINELLO', 'Franco', 'Abogado Civil', 'Lab.:Lamadrid 117 Piso:6 Of.:605 - Part.: Ernesto Padilla 40 Piso:2 H', 2386, 25, 'Cel.:154144741', '2017-10-10 16:03:03', 'Abogacia', 'francopinello28@hotmail.com', '5', 'SORIA Sara Lia Rita', 32115725, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1126, '2017-10-10 16:04:53', 32115725, 'SORIA', 'Sara Lia Rita', 'Abogada', 'Lab.:Lamadrid 117 Piso:6 Of.:605 - Part.:Ernesto Padilla 40 Piso:2 H', 2386, 25, 'Cel.:155521262', '2017-10-10 16:04:53', 'Abogacia', 'estudiojuridicosoriarita@gmail.com', '5', 'PINELLO Franco', 28721720, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1127, '2017-10-11 15:09:44', 20422001, 'MENDEZ', 'Sara Beatriz', 'Polirubro', 'San Martin 2da Cuadra ', 2314, 25, 'Cel.:155244853', '2017-10-11 15:09:44', 'Comerciante', 'florelias@live.com', '4', 'ELIAS Maria Florencia', 37725553, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1128, '2017-10-12 17:18:26', 31644295, 'GOMEZ', 'Cesar Eduardo', 'Taller mecanico', 'Pje. Cabildo 1260', 2386, 25, 'Cel.:154748154', '2017-10-12 17:18:26', 'Mecanica de Atomotor', 'cesar.eduardo.gomez.17@gmail.com', '2', 'NO', 10000000, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1129, '2017-10-12 17:21:50', 39480118, 'DIAZ', 'Cesar Exequiel', 'Vta. Celulares - acc y serv.', 'Lab.:Av. Araya y Eugenio Tobal - Bº Lomas de Tafi - Part.:Lamadrid 417 - Yerba Buena', 2386, 25, 'Cel.:156932315', '2017-10-12 17:21:50', 'Comerciante', 'exequieldiaz144@gmail.com', '2', 'DIAZ Walter Alejandro ', 39144156, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1130, '2017-10-12 17:24:52', 12598907, 'LUNA', 'Luis Eduardo', 'Taller Chapa y Pintura', 'Lab.:Amador Lucero y olleros - Part.:Amador Lucero 2200 ', 2386, 25, 'Cel.:153941066', '2017-10-12 17:24:52', 'Mecanica de Atomotor', 'op@clubhonorarios.com', '2', 'NO', 10000000, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1131, '2017-10-12 17:31:42', 34603157, 'UBINO', 'Sabrina Soledad', 'Nutricion Cursos de Coaching ', 'Lab.: San Lorenzo 1102 - Part.:Gral Paz 1287 Piso:2 D', 2386, 25, 'Cel.:156324812', '2017-10-12 17:31:42', 'Lic. En nutricion', 'sabryubino@hotmail.com', '3', 'UBINO Juan Pablo', 41424374, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1132, '2017-10-12 17:33:25', 27401000, 'PINILLO RUIZ', 'Hector Omar', 'Abogado Laboral', 'Labo.:Bolivar 390 - Part.:Gral. Paz 1026', 2386, 25, 'Cel.:155121053', '2017-10-12 17:33:25', 'Abogacia', 'omarpinillo@hotmail.com', '3', 'NO', 10000000, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1133, '2017-10-17 17:15:46', 23239201, 'WEHBE', 'Maria Veronica', 'Ortodoncia, trat en gral', 'Lab.:Monteagudo 579 Planta Baja Of.:A - Part.:Maipu 562 Block:2 Depto.:3 B', 2386, 25, 'Cel.:155687575 - Laboral:4229530', '2017-10-17 17:15:46', 'Odontologia', 'verowehbe@yahoo.com.ar', '5', 'NO', 10000000, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1134, '2017-10-17 17:22:23', 22899601, 'BARROSO', 'Gustavo Adolfo', 'Peluqueria vta produc belleza', 'Lab.:Torquin 700 - Part.:Bartolome Mitre 117 ', 2384, 25, 'Cel.:153853874', '2017-10-17 17:22:23', 'Estilista', 'gusgus290245@gmail.com', '2', 'CONTRERAS Sandra Mabel', 23020234, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1135, '2017-10-17 17:27:11', 33971507, 'LOPEZ OJEDA', 'Leandro Gabriel', 'Vta de muebles', 'Paso de los Andes 2747', 2386, 25, 'Cel.:155232225', '2017-10-17 17:27:11', 'Vendedor', 'mailenvelazquez.mv@gmail.com', '1', 'NO', 10000000, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1136, '2017-10-18 13:19:55', 40275984, 'CHAPA', 'Matias Alejandro', 'Vta. De Cel, acc y serv. Tec.', 'Lab.:Delfin Gallo 2767 - Particular:Francisco de Aguirre 3007', 2386, 25, 'Cel.:154094266', '2017-10-18 13:19:55', 'Comerciante', 'paranatecno@gmail.com', '2', 'NO', 10000000, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1137, '2017-10-18 18:00:31', 21172349, 'ANCALAY', 'VIRGILIO RAMON', 'Venta de Combos para fiestas', 'Av. Belgrano 1849', 2386, 25, '3816576392', '2017-10-18 18:00:31', 'COMERCIANTE', 'aquiestatufiesta@outlook.com', '4', 'GIUS MONICA LILIANA', 22877360, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1138, '2017-10-18 18:09:56', 27843353, 'TOLEDO', 'VICTOR HUGO', 'ELECTRICIDAD Y VENTA', 'Bº San Jorge Mz O Casa 2', 2384, 25, '3816616229', '2017-10-18 18:09:56', 'MECANICO', 'victorhugotoledo2minutos@gmail.com', '2', 'NO', 10000000, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1139, '2017-10-18 18:16:52', 12597266, 'MALDONADO', 'SARA SUSANA', 'VENTA DE ROPA, JUGUETES, BAZAR', '25 DE MAYO 2467', 2386, 25, '4273702', '2017-10-18 18:16:52', 'COMERCIANTE', 'op@clubhonorarios.com', '3', 'VISCIDO EMMANUEL', 38216216, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1140, '2017-10-18 18:26:45', 41984069, 'CASAL', 'ALDANA FLORENCIA', 'Vta Ropa y Zapatos Polleria', 'Congreso 156', 2284, 25, '3814570814', '2017-10-18 18:26:45', 'COMERCIANTE', 'florcasal.10@gmail.com', '2', 'NO', 10000000, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1141, '2017-10-18 18:35:15', 33977128, 'BAIGORI', 'CRISTIAN SEBASTIAN', 'Vta y Reparación Tecnología', 'MANUEL ESTRADA 2316', 2386, 25, '3816311355', '2017-10-18 18:35:15', 'COMERCIANTE', 'cbaigori@gmail.com', '2', 'DOMINGUEZ VICTORIA MARICEL', 35518025, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1142, '2017-10-18 18:43:59', 33540420, 'MONSERVIGI', 'SILVIO EUGENIO', 'Diseño Gráfico', 'Virgen de la Merced 444 Torre 5 3º A', 2386, 25, '3814193465', '2017-10-18 18:43:59', 'DISEÑADOR GRAFICO', 'silviomonservigi@gmail.com', '1', 'NO', 10000000, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1143, '2017-10-19 12:28:18', 7708841, 'ARMANDO', 'Miguel Angel', 'Vta de muebles y colchones ', 'Lab.:Av. Jujuy 2291 - Part.:Benjamin Villafañe 3500', 2386, 25, 'Cel.:155138368', '2017-10-19 12:28:18', 'Comerciante', 'aberturadelnorte12@gmail.com', '3', 'NO', 10000000, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1144, '2017-10-19 16:40:52', 30906526, 'HELGUERO ', 'Esteban Daniel', 'Vta Ropa Muebles Calzados BAR', 'Lab.:Av Jujuy 3248 - Part.:B San Genaro Mza.:32 Lote:20 ', 2386, 25, 'Cel.:156647362 - Fijo:4292609', '2017-10-19 16:40:52', 'Comerciante', 'patriciadelcarmenmansilla1980@gmail.com', '3', 'MANSILLA Patricia del Carmen', 27887079, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1145, '2017-10-19 16:42:09', 21744694, 'HERRERA', 'Analia Luisa Del Valle', 'Vta de Muebles y articulos', 'Lab.:Jujuy 1619 - Part.:El Salvador 1982 Yerba Buena', 2386, 25, 'Cel.:154014351 - Autorizado:154954194', '2017-10-19 16:42:09', 'Comerciante', 'analialuherrera13@gmail.com', '1', 'SOTELO Fernando Alberto ', 27168942, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1146, '2017-10-19 16:43:40', 25741072, 'RODRIGUEZ', 'Roberto Orlando', 'Vta de Ropa, Juguetes, Bazar ', 'Lab.:Calle 6 N.:410 Villa Mariano Moreno - Part.:B Los Positos Casa:26 - Capital', 2327, 25, 'Cel.:153285801', '2017-10-19 16:43:40', 'Comerciante', 'op@clubhonorios.com', '1', 'MILIOTO SIARE Debora De Los Angeles', 42411479, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1147, '2017-10-19 16:45:14', 27652368, 'CORONEL ', 'Cesar Augusto', 'Bazar Ropa Muebles Electrod', 'B Ampl. Experimental II - Mza.: E Lote: 1', 2386, 25, 'Cel.:156078653 - Madre:4273702', '2017-10-19 16:45:14', 'Comerciante', 'cacoronel10@gmail.com', '3', 'LEDESMA Paula Maria Ines', 28883592, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1148, '2017-10-20 16:11:04', 31589604, 'AGUIRRE', 'Diego Martin', 'Carpinteria - Bastidores', 'Lab.:Paso de los Andes 750 - Part.:Constitucion 265', 2386, 25, 'Cel: 3816909209', '2017-10-20 16:11:04', 'Carpinteria', 'diegoaguirre39@gmail.com', '3', 'SANCHEZ Fernanda', 32513888, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1149, '2017-10-20 16:12:21', 33974867, 'LOBO', 'Brenda Romina', 'Vta calzados y Ropa', 'Lab.:Av. Aconquija 255 - Part.:Pje Irigoyen 1438 Capital', 2387, 25, 'Cel.:3815373727', '2017-10-20 16:12:21', 'Comerciante', 'op@clubhonorarios.com', '3', 'NO', 10000000, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1150, '2017-10-20 16:14:12', 25884423, 'CASTRO', 'Juan Ruben', 'Instalacion y Reparacion de AA', 'Calle Lateral Autopista Sur 1639 - B San Cayetano', 2386, 25, 'Cel.:3874640976', '2017-10-20 16:14:12', 'Tecnico/a', 'fabrimaylu@gmail.com', '2', 'NO', 10000000, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1151, '2017-10-20 16:15:15', 28290812, 'OLEA', 'Franco Sebastian', 'Vta. Y rep de Clelulares', 'Lab.:Bulnes 1317 - Part.:B Virgen del Huerto - Mza.:I Casa:2 - Las Talitas', 2386, 25, 'Cel.:3816323284', '2017-10-20 16:15:15', 'Comerciante', 'francoolea17@gmail.com', '2', 'OLEA Cristian German', 26585103, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1152, '2017-10-20 20:00:10', 20366891, 'MEDINA', 'Silvia Rosa', 'Peluqueria y Vta Articulos', 'Lamadrid 579', 2386, 25, '0381155801353', '2017-10-20 20:00:10', 'Peluqueria', 'silviamedina@outlook.com', '3', 'NO', 10000000, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1153, '2017-10-23 16:23:37', 36836837, 'VELAZQUEZ', 'Nicolas Guillermo', 'Vta de Ropa Fem y Masc.', 'Bolivar 849 - Piso:1ero Dpto.:9', 2386, 25, 'Cel.:3815143406', '2017-10-23 16:23:37', 'Vendedor', 'nicog_v@hotmail.com', '1', 'NO', 10000000, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1154, '2017-10-23 16:33:33', 26454469, 'JUAREZ', 'Franco Luciano', 'Vta de Ropa Niños y Adultos', 'Lab.:Av. Santo Cristo 47 - Part.:Reyes Catolicos 197', 2284, 25, 'Cel.:3816522647', '2017-10-23 16:33:33', 'Comerciante', 'francoju2009@hotmail.com', '2', 'ROBLES Gabriela', 28221961, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1155, '2017-10-23 16:44:00', 28761103, 'ARDUINO', 'Maria Fernanda Del Valle', 'org fiestas infantiles Hostel', 'Av. Aconquija 3701', 2387, 25, 'Cel.:3816442552', '2017-10-23 16:44:00', 'Servicios para fiesta', 'ferarduino_23@hotmail.com', '3', 'NO', 10000000, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1156, '2017-10-23 16:57:19', 36838002, 'NARVAEZ', 'Silvina Gabriela', 'Vta. De Ropa - Vta Tecnologia', 'Lab.:Av. Aconquija 255 Local:1 Yerba Buena - Part.:B San Francisco Mz.:21 Lote:18 ', 2386, 25, 'Cel.:3816562387', '2017-10-23 16:57:19', 'Comerciante', 'silvina7043504@gmail.com', '3', 'NO', 10000000, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1157, '2017-10-23 17:08:29', 39698246, 'LOPEZ', 'Victoria Rosa', 'Vta de Indumentaria', 'B Wenseslao - Zona:1550 Mza.:11 Lote:2', 2295, 25, 'Cel.:3816403130', '2017-10-23 17:08:29', 'Showroom', 'victorgero17@gmail.com', '3', 'JIMENEZ Rene Alberto', 33538746, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1158, '2017-10-24 15:40:19', 39698628, 'DEVANI', 'Gaston Exequiel', 'Vta de Indumentaria - Muebles', 'Bº  80 Viv - Mz.:F Casa:20', 2289, 25, 'Cel.:3816045761', '2017-10-24 15:40:19', 'Vendedor', 'gaston_devani@hotmail.com', '1', 'DEVANI Raul Esteban', 24059421, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1159, '2017-10-24 17:39:41', 40356000, 'DIAZ', 'Solana Estefania', 'Vta de Repuestos para Motos ', 'Lab.:Av. Rivadavia 915 - Part.:Villa Mariano Moreno - B Ampliacion APEM Pje S/N', 2276, 25, 'Cel.:3815440519', '2017-10-24 17:39:41', 'Comerciante', 'luis12345.ld46@gmail.com', '1', 'DIAZ Luis Omar', 38249164, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1160, '2017-10-24 17:41:20', 30068297, 'MARTINEZ', 'Viviana Elizabeth', 'Vta Indument Masajes Maqje', 'Viamonte 2695', 2386, 25, 'Cel.:3815084417', '2017-10-24 17:41:20', 'Vendedor', 'viviana_martinez00@hotmail.com', '4', 'NO', 10000000, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1161, '2017-10-24 17:42:47', 31053217, 'VEGA HERRERA', 'Maria Jose', 'Vta de Indumentaria', 'Lab.:Marcos Paz 330 Piso:5º B - Part.:Godoy Cruz 1834', 2386, 25, 'Cel.:3814656043', '2017-10-24 17:42:47', 'Showroom', 'mariajosevegaherrera@hotmail.com', '4', 'NO', 10000000, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1162, '2017-10-25 16:53:28', 25740176, 'ALVARADO', 'Andrea Elizabeth', 'Vta de Indumentaria - Calzados', 'Bº 300 Viviendas de la Mutualidad - Casa: 19 Mza.:K ', 2386, 25, 'Cel.:3816430715', '2017-10-25 16:53:28', 'Vendedor', 'albeana76@gmail.com', '2', 'ROJAS Cristian Ariel', 27962866, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1163, '2017-10-25 17:07:21', 32602677, 'AGÜERO', 'Walter Gustavo', 'Taller Mecanico Rectificacion', 'Lab.:Pje Caseros 177 - Part.:Pueyrredon 10 ', 2284, 25, 'Cel.:3816097731', '2017-10-25 17:07:21', 'Mecanica de Atomotor', 'walterpower_1@hotmail.com', '2', 'AGÜERO Franco Damian', 37957719, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1164, '2017-10-25 17:08:54', 26051118, 'GRACIA', 'Christian Ariel', 'Vta. De Ropa Para niños', 'Part.: Viamonte 2310 - Part.:Urquiza 813 Banda del Rio Sali', 2386, 25, 'Cel.:3816774200', '2017-10-25 17:08:54', 'Comerciante', 'christiangracia13@gmail.com', '2', 'FENOGLIO Jessica Noemi', 33632764, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1165, '2017-10-26 10:20:44', 34005384, 'BAIGORRIA ALVAREZ', 'Rocio Maria de Lujan', 'Vta de Indumentaria', 'Benjamin Villafañe 1388 ', 2386, 25, 'Cel.:3813296071', '2017-10-26 16:08:41', 'Vendedor', 'luiscajal55@gmail.com', '2', 'CAJAL Luis Augusto', 33755725, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1166, '2017-10-26 10:20:44', 25923860, 'AVILA', 'Gabriela Andrea', 'Vta Indumentaria y Cosmeticos ', 'Bº 140 Viv. Mza.:A casa:10 Los Ballistos', 2284, 25, 'Cel.:3816403537', '2017-10-26 16:10:01', 'Vendedor', 'chevrofiataa8@gmail.com', '2', 'NO', 10000000, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1167, '2017-10-26 10:20:44', 17518442, 'DIOSQUE', 'Silvia Elizabeth', 'Vta de Indumentaria y Calzado', 'Capitan Candelaria 1era Cuadra ', 2321, 25, 'Cel.:3815108100', '2017-10-26 17:01:16', 'Comerciante', 'silvia.e.diosque@gmail.com', '2', 'CASILLAS Estefania Elizabeth', 36743826, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1168, '2017-10-26 10:20:44', 6391762, 'BILLONE', 'Graciela Elisa', 'Educación', 'Bolivar 355', 2386, 25, '0381154963065', '2017-10-26 19:30:25', 'Docencia', 'colegiobolivar@arnetbiz.com.ar', '1', 'MAZZIOTTI Priscila', 28476197, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1169, '2017-10-23 00:00:00', 35195329, 'PALAVECINO', 'Luis Jonathan', 'Animaciones-Peloteros-Salon', 'Av. Belgrano 2570', 2386, 25, 'Cel.:3816420944', '2017-10-27 17:40:40', 'Servicios para fiesta', 'luis_jonathan_palavecino@hotmail.com', '1', 'NO', 10000000, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1170, '2017-10-12 00:00:00', 41375228, 'GREPPI', 'Ivan Francisco', 'Vta de Indumentaria', 'Jujuy 2527', 2386, 25, 'Cel.:3815323804', '2017-10-27 17:46:20', 'Comerciante', 'ivangreppi13@hotmail.com', '3', 'NO', 10000000, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1171, '2017-10-19 00:00:00', 31644441, 'RACHED', 'Daniel Sebastian', 'Concesionaria', 'Av. Belgrano 4018', 2386, 25, 'Cel.:3816056300', '2017-10-30 16:17:43', 'Comerciante', 'seba_rached@hotmail.com', '3', 'NO', 10000000, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1172, '2017-10-26 00:00:00', 18366179, 'PISTAN', 'Angel Antonio', 'Lubricentro', 'Lab.:Av. Francisco de Aguirre 806 - Part.:Bº San Ramon Mza.:J Lote:8', 2386, 25, 'Cel.:3814738456', '2017-10-30 16:19:53', 'Mecanica de Atomotor', 'op@clubhonorarios.com', '1', 'NO', 10000000, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1173, '2017-10-30 00:00:00', 23931274, 'COLOMBRES ANTONI', 'Cesar Gustavo', 'Elect Inst AA Rep de cel', 'Bº Judicial - Mza.:C Casa:16', 2371, 25, 'Cel.:3816631144', '2017-10-30 16:41:51', 'Tecnico/a', 'guticolombres@gmail.com', '4', 'NO', 10000000, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1174, '2017-10-26 00:00:00', 34953172, 'ROBLEDO', 'Melisa Estibaliz', 'Vta de Indumentaria y Calzados', 'Pje Baltazar Aguirre 1261', 2386, 25, 'Cel.:3816146265 ', '2017-10-30 16:44:16', 'Showroom', 'melisaestibalizrobledo@gmail.com', '3', 'NO', 10000000, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1175, '2017-10-30 00:00:00', 33051978, 'CAJAL', 'Romina Analia', 'Vta Indumentaria y Calzado ', '9 De Julio 615 ', 2284, 25, 'Cel.:3815463518', '2017-10-30 16:47:23', 'Vendedor', 'rominacajal1@gmail.com', '2', 'NO', 10000000, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1176, '2017-10-25 00:00:00', 33815210, 'JUAREZ', 'Lourdes Laura', 'Peluqueria', 'Lab.:Mario Bravo 625 - Part.:25 De Mayo 197 ', 2284, 25, 'Cel.:3813632476', '2017-10-30 16:52:39', 'Peluqueria', 'lourdesjula@hotmail.com', '2', 'NO', 10000000, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1177, '2017-10-25 00:00:00', 26137974, 'REYES', 'Oscar Antonio', 'Vta. De Motos', 'Lab.:Jujuy 1502 - Part.:Matheu 482 - Bº Villa Alem', 2386, 25, 'Cel.:3813425746', '2017-10-30 16:59:02', 'Comerciante', 'oreyesakiestatumoto558@gmail.com', '3', 'NO', 10000000, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1178, '2017-10-24 00:00:00', 38184580, 'SANCHEZ TORANZOS', 'Sergio Ulises', 'Bar - Boutique Organica', 'Lab.:Av. Aconquija 2826 - Part.:Gral Paz 2378 Capital', 2387, 25, 'Cel.:3814471273', '2017-10-31 14:47:24', 'Comerciante', 'bienvenidos@namastebar.com.ar', '3', 'SANCHEZ Sergio', 22665489, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1179, '2017-10-30 00:00:00', 32341261, 'BRUSCHI', 'Mario Alberto', 'Vta y Reparacion de celulares', 'Lab.:Manuel Garcia Fernadez 281 - Part.:Villa Real 261', 2285, 25, 'Cel.:3813521043', '2017-10-31 15:39:25', 'Comerciante', 'mabbruschi@gmail.com', '2', 'NO', 10000000, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1180, '2017-10-31 00:00:00', 24340685, 'SALERNO', 'Pablo Daniel', 'Vta  Art de deco Consultoria ', 'Bº Mutual Juramento - Mza.:A Casa:6', 2386, 25, 'Cel.:3814090763', '2017-10-31 15:45:04', 'Comerciante', 'licsalernopablodaniel@hotmail.com', '4', 'DIAZ ACOSTA Silvina', 26914386, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1181, '2017-10-24 00:00:00', 24745327, 'CABOT', 'Maria Veronica', 'Vta carteras, Indumen, Abogada', 'San Miguel 896 - Planta Alta ', 2386, 25, 'Cel.:3814154506', '2017-10-31 15:57:15', 'Vendedor', 'mveronicacabotc@gmail.com', '1', 'CHECA Matias Nicolas', 30556718, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1182, '2017-10-31 00:00:00', 26898446, 'TOLABA', 'Cecilia', 'Vta de Indumentaria femenina', 'Lab.:Av Aconquija 255 Local:28 - Part.:Ampliacion Bº APUNT Mza.:B Casa:10 Unidad:1', 2387, 25, 'Cel.:3816227116', '2017-10-31 16:32:09', 'Comerciante', 'ceciiliatolaba26@gmail.com', '3', 'NO', 10000000, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1183, '2017-10-13 00:00:00', 16733947, 'VIROCHE', 'Jose daniel', 'Taller Mecanico', 'Venezuela 1055', 2386, 25, 'Cel.:3815892864', '2017-11-01 12:15:52', 'Mecanica de Atomotor', 'josedviroche@gmail.com', '4', 'MARTINEZ Beatriz Azucena', 18450866, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1184, '2017-10-31 00:00:00', 17074231, 'FERNANDEZ', 'Myriam Ahydee', 'Vta de Indumentaria y Acc', 'Lab.:Av Aconquija 225 Local:20 - Part.:Peru 1605', 2387, 25, 'Fijo:4257712', '2017-11-01 12:25:56', 'Comerciante', 'op@clubhonorarios.com', '3', 'NO', 10000000, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1185, '2017-10-31 00:00:00', 40924018, 'HASME', 'Jonathan Daniel', 'Vta de Produc Nutricionales', 'Bº 11 de Enero - Mza.:F Casa:10', 2386, 25, 'cel.:3816178661', '2017-11-01 12:31:40', 'Vendedor', 'jonyhasme98@gmail.com', '4', 'NO', 10000000, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1186, '2017-10-23 00:00:00', 13378400, 'APARICIO', 'Norma Dolores', 'Muebleria', 'Lab.:Solano Vera 360 - Part.:Alberto Sabin 2255', 2387, 25, 'Cel.:3815749681', '2017-11-01 15:11:31', 'Comerciante', 'op@clubhonorarios.com', '3', 'NO', 10000000, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1187, '2017-10-30 00:00:00', 25211789, 'FACIANO', 'Veronica Nelida del Carmen', 'Vta insta piletas transporte', '12 de Octubre 1329', 2386, 25, 'Cel.:3814167168', '2017-11-01 15:26:54', 'Comerciante', 'transportemelian@gmail.com', '1', 'MELIAN Luis Cesario', 14359957, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1188, '2017-10-19 00:00:00', 37455552, 'MOLINA', 'Jose Gabriel', 'Herreria y Carpinteria', 'Bº 110 viviendas - Los Fresnos - Mza.:B Casa:10 ', 2284, 25, 'Cel.:3814794949', '2017-11-01 17:06:07', 'Metalurgia ', 'op@clubhonorarios.com', '1', 'MOLINA Enrique Alberto', 16784350, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1189, '2017-10-31 00:00:00', 33756023, 'AHMAD', 'Maria Jose', 'Vta de Calzados', 'Av. Colon 630', 2386, 25, 'Cel.:3813366706', '2017-11-01 17:23:26', 'Comerciante', 'flaviaahmad7@gmail.com', '1', 'AHMAD Flavia', 32158326, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1190, '2017-11-01 00:00:00', 28222836, 'ZAMORANO', 'Noelia Maria Cristina', 'Vta de Indumentaria', 'Gral Paz 1083 - Depto.:5', 2386, 25, 'Cel.:3814182501', '2017-11-02 10:01:49', 'Showroom', 'noeliamczamorano@gmail.com', '3', 'UTRERA Juan Manuel', 29430217, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1191, '2017-09-29 00:00:00', 24737620, 'MAZA', 'Maria Magdalena', 'Vta Indument Trat Belleza ', 'Buenos Aires 78 ', 2294, 25, 'Cel.:3865529859', '2017-11-02 12:52:49', 'Comerciante', 'mariamalemaza@gmail.com', '1', 'CALIVA Alejandra', 18473575, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1192, '2017-11-02 00:00:00', 25843612, 'SUAREZ', 'Sergio Javier', 'Vta de Muebles', 'San Martin 567 ', 2284, 25, 'Cel.:3815077293', '2017-11-02 16:15:22', 'Vendedor', 'sergiosuarez10@gmail.com', '4', 'NO', 10000000, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1193, '2017-11-02 00:00:00', 33540737, 'BANEGAS', 'Maria Jose', 'Vta y reparacion de cel', 'Lab.:9 de Julio 239 - Part.:EE UU 1259 Capital', 2385, 25, 'Cel.:3815637552', '2017-11-03 11:25:52', 'Comerciante', 'majo_lulu248@hotmail.com', '2', 'NO', 10000000, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1194, '2017-11-02 00:00:00', 30597908, 'FUENSALIDA', 'Luis Ricardo', 'Vta y Reparacion de celulares', 'Lab.:Rivadavia 496 - Part.:Laprida 1916 Capital', 2276, 25, 'Cel.:3816833867', '2017-11-03 17:23:23', 'Comerciante', 'fuensalidaluis@gmail.com', '1', 'NO', 10000000, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1195, '2017-11-02 00:00:00', 32927111, 'VEGA', 'Luciana', 'Vta de Carteras ', 'Moreno 269 - Piso:2 dpto.:E', 2386, 25, 'Cel.:3815472842', '2017-11-06 12:17:47', 'Vendedor', 'lugumartuc@gmail.com', '4', 'NO', 10000000, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1196, '2017-11-03 00:00:00', 30311637, 'LOBO', 'Maria Alejandra', 'Vta de Indumentaria - acc', 'Lab.:Belgrano 263 - Part.:Bº Arcor Mza.:I casa:17 La Reducccion', 2385, 25, 'Cel.:3815827276', '2017-11-06 12:32:32', 'Comerciante', 'maria.alejandra.84@hotmail.com', '3', 'JODAR Juan Jose', 32201654, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1197, '2017-11-06 00:00:00', 34185783, 'TREJO', 'Diego Alejandro ', 'Vta. Art Caza y Pesca', 'Uruguay 605', 2386, 25, 'Cel.:3813938736', '2017-11-06 18:27:54', 'Comerciante', 'tropicalfishingstore@gmail.com', '3', 'NO', 10000000, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1198, '2017-11-07 00:00:00', 33541620, 'GALLO', 'Alejandro', 'Terapeuta - bioneuroemocion', 'Bolivar 849 - Piso:6º Dpto.:7', 2386, 25, 'Cel.:3813594120', '2017-11-07 15:25:06', 'Capacitacion', 'yo.ale.jandro.gallo@gmail.com', '4', 'NO', 10000000, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1199, '2017-11-06 00:00:00', 36942873, 'BOUNAR', 'Estefania Elizabeth', 'Vta OMNILIFE', 'Bº Los Lapachos - Mza.:B Casa:15', 2385, 25, 'Cel.:3813590662', '2017-11-07 15:54:31', 'Vendedor', 'esthefaniabounar2@gmail.com', '4', 'DIAZ HADAD Maria Ines', 21338747, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1200, '2017-11-07 00:00:00', 40533261, 'KONSORSKI', 'Juan Marcelo', 'Vta electrodomesticos y ropa', 'Olleros 1056', 2386, 25, 'Cel.:3813689354', '2017-11-08 11:36:58', 'Vendedor', 'jukonsorski@gmail.com', '4', 'VILLAGRA Graciela Maria Belen', 41238570, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1201, '2017-11-08 00:00:00', 28124490, 'AVILA', 'Maria Fernanda', 'Peluqueria', 'La Plata 2911', 2386, 25, 'Cel.:3815519220', '2017-11-09 11:23:57', 'Peluqueria', 'op@clubhonorarios.com', '3', 'NO', 10000000, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1202, '2017-11-09 00:00:00', 39479877, 'ALMONACID', 'Maria Fernanda', 'Vta. Calzados Indumentaria', 'Bº 1º de Mayo - Mza.:A Lote:13 El Colmenar', 2371, 25, 'Cel.:3813612807', '2017-11-10 17:29:15', 'Showroom', 'mfalmonacid@gmail.com', '3', 'ARIAS Raul Rodolfo', 41950586, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1203, '2017-11-10 00:00:00', 24982131, 'BARROS', 'Oscar Alfredo', 'Networker - Terapia en agua', 'Bº Lomas de Tafi - Sector:12 - Mza.:3 Casa:26', 2386, 25, 'Cel.:3815494350', '2017-11-13 11:11:33', 'Terapeuta', 'oscarbarrosnus@gmail.com', '4', 'NO', 10000000, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1204, '2017-11-13 00:00:00', 34285793, 'LEDESMA', 'Gustavo Daniel', 'Vta ropa,Bazar,Art Temporada', 'Bº San Fernando Mza.:2 Lote:13', 2386, 25, 'Cel.:3813269750', '2017-11-13 11:19:33', 'Vendedor', 'gustavoledesma5@hotmail.com', '4', 'NAVARRO Maria Victoria', 30497912, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1205, '2017-11-11 00:00:00', 41446141, 'MONTEROS', 'Lucas Daniel', 'Vta OMNILIFE - Albañil', 'Pje Pedro Medrano 508 - Bº Belgrano', 2386, 25, 'Cel.:3814735773', '2017-11-13 11:23:57', 'Vendedor', 'lucasmonteros717@gmail.com', '4', 'NO', 10000000, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1206, '2017-11-10 00:00:00', 27579932, 'MENDILAHARZU', 'Maria Soledad', 'Pizzeria', 'Saavedra 19', 2386, 25, 'Cel.:3815943055', '2017-11-14 17:12:43', 'Gastronomia', 'solemedina3@gmail.com', '3', 'OLIVERA Dario Ivan ', 32626883, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1207, '2017-11-14 00:00:00', 33541741, 'ROMERO', 'Marcela Judith', 'Alq vestidos fiestas Peluq', 'Pje Vera y Aragon 2542', 2386, 25, 'Cel.:3816266069', '2017-11-15 16:38:27', 'Peluqueria', 'judith_doll@hotmail.com', '3', 'NO', 10000000, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1208, '2017-11-15 00:00:00', 28416944, 'LOBO', 'Andrea Mariana', 'Abogada Civil penal laboral', 'Monteagudo 255 - Piso:6º Dpto.:D', 2386, 25, 'Cel.:3816614499', '2017-11-15 16:49:18', 'Abogacia', 'andemar944@gmail.com', '4', 'VILLAGRA Miguel Fernando', 13338863, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1209, '2017-11-08 00:00:00', 23117421, 'RACEDO', 'Teresa Monica ', 'Vta de Ropa ', 'Coronel Zelaya y Pje Vera y Aragon', 2386, 25, 'Cel:3816424755', '2017-11-16 10:36:10', 'Comerciante', 'op@clubhonorarios.com', '3', 'NO', 10000000, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1210, '2017-11-09 00:00:00', 29744823, 'REAL SALVIOLI', 'Maria Luciana', 'Peluqueria', 'Azcuenaga 230', 2386, 25, 'Cel.:3814881824', '2017-11-16 11:06:42', 'Peluqueria', 'decana22@hotmail.com', '3', 'NO', 10000000, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1211, '2017-11-14 00:00:00', 24503940, 'MANNINO', 'Antonio Ariel', 'Equipamiento para automotor', 'Gral paz 1207', 2386, 25, 'Cel.:3815620087', '2017-11-16 16:37:11', 'Comerciante', 'utilitariosmanino@hotmail.com.ar', '3', 'NO', 10000000, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1212, '2017-11-11 00:00:00', 25003395, 'PONCE', 'Silvia Beatriz', 'Vta de Indumentaria', 'Lab.:Necochea 2226 - Part.:Necochea 2184', 2386, 25, 'Cel.:3816390430', '2017-11-16 16:44:43', 'Comerciante', 'alejandralbarra823@gmail.com', '3', 'IBARRA Alejandra Del Valle', 40276085, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1213, '2017-11-17 00:00:00', 35807687, 'ALARCON', 'Adriana Elizabeth', 'Vta Bejouteri - Joyas', 'Av. Belgrano 2138 Piso:3º Dpto.:C', 2386, 25, 'Cel.:3865619679', '2017-11-17 16:35:53', 'Vendedor', 'adrianaalarcon122@gmail.com', '3', 'NO', 10000000, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1214, '2017-11-14 00:00:00', 28339780, 'GARNICA', 'German Nicolas', 'Artesanias y Trab en Hierro', 'San Martin 1342 - Piso:1º Dpto.:B', 2386, 25, 'Cel.:3815870353', '2017-11-17 16:59:10', 'Artesanias', 'german170481@gmail.com', '6', 'NO', 10000000, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1215, '2017-11-14 00:00:00', 33815700, 'GIMENEZ', 'Sandra Mercedes', 'Vta OMNILIFE', 'Bº San Francisco - Mza:5 Lote:14', 2386, 25, 'Cel.:154054666 - Cel con wspp:3815038836', '2017-11-17 17:08:05', 'Vendedor', 'belenyazmine@gmail.com', '4', 'NO', 10000000, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1216, '2017-11-14 00:00:00', 31902168, 'REYNOSO', 'Carlos Jose', 'Vta Casas premoldeadas ropa ', 'Leg Alberto Leal 453', 2287, 25, 'Cel.:3816814683 - Fijo:4317356', '2017-11-21 12:42:17', 'Vendedor', 'cjosereynoso@gmail.com', '4', 'Elias Maria Florencia', 37725553, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1217, '2017-11-21 00:00:00', 25362536, 'INSFRAN PEREIRA', 'Lorena Elizabet', 'Vta OMNILIFE', 'Bº Ampliacion Independencia Mza.:B Lote:8', 2386, 25, 'Cel.:3816335356', '2017-11-21 15:12:32', 'Vendedor', 'op@clubhonorarios.com', '4', 'NO', 10000000, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1218, '2017-11-21 00:00:00', 13848589, 'ARGAÑARAZ', 'Ana de las Mercedes', 'Vta Ropa Cosmeticos Almacen', 'Juan Posse 1285', 2386, 25, 'Cel.:3816471245', '2017-11-21 16:16:56', 'Vendedor', 'op@clubhonorarios.com', '4', 'NO', 10000000, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1219, '2017-11-17 00:00:00', 21748083, 'CORDOBA', 'Patricia Antonia', 'Vta Calzados Cosmeticos', 'Av. Solano Vera 1059', 2387, 25, 'Cel.:3815336715 - Fijo.:4254722', '2017-11-21 16:25:43', 'Vendedor', 'lucianacordoba92@outlook.com', '3', 'CORDOBA Luciana', 36943104, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1220, '2017-11-14 00:00:00', 30069133, 'ALBARRACIN', 'Jose Leopoldo', 'Carpinteria', 'San Lorenzo 1543', 2386, 25, 'Cel.:3812035336', '2017-11-21 16:32:45', 'Carpinteria', 'op@clubhonorarios.com', '3', 'NO', 10000000, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1221, '2017-11-20 00:00:00', 13235015, 'BARRIENTOS', 'Arnaldo Anselmo', 'Construccion en general', 'Moreno 370 Planta Baja', 2386, 25, 'Cel.:3816844294 - Fijo.:4225989', '2017-11-21 16:43:02', 'Construccion', 'arnaldobarrientos639@gmail.com', '6', 'RODRIGUEZ Silvina Soledad', 23410380, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1222, '2017-11-15 00:00:00', 25222805, 'ARGAÑARAS', 'Enrique Antonio', 'Abogado Laboral', 'Lab.:Buenos Aires 710 - Part.:Rondeau 572', 2386, 25, 'Cel.:3814965744 Lab.:4204708', '2017-11-21 17:14:07', 'Abogacia', 'enriquearga@hotmail.com', '6', 'SOLOAGA Mario Augusto', 21744922, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1223, '2017-11-20 00:00:00', 23410380, 'RODRIGUEZ', 'Silvina Soledad', 'Vta de Aceites y alimentos', 'Moreno 370 Planta Baja', 2386, 25, 'Fijo.:4225989', '2017-11-22 14:49:28', 'Vendedor', 'silvina_rodriguez73@hotmail.com', '6', 'BARRIENTOS Arnaldo Anselmo', 13235015, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1224, '2017-11-22 00:00:00', 37503294, 'YAPURA LENCINAS', 'Arturo Emir ', 'Vta y rep celulares y pc', 'Lab.:Salta 1090 - Part.:Bº Prospero Mena - Larrabure 251', 2371, 25, 'Cel.:3814128987 Fijo:4617578', '2017-11-23 10:49:55', 'Comerciante', 'emir040893@gmail.com', '3', 'RUIZ Jose', 32828480, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1225, '2017-11-22 00:00:00', 24617728, 'OLIVERO', 'Amelia Esther', 'Vta ropa en general', 'Lab.:Corrientes 778 - Part.:Uruguay 472', 2386, 25, 'Cel.:3816400189 - Fijo:4210513', '2017-11-23 11:14:01', 'Comerciante', 'alejaureguina@hotmail.com', '5', 'JAUREGUINA Alejandro', 21702728, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1226, '2017-11-28 00:00:00', 22222222, 'Provisorio', 'N', 'Ventas', '9 de julio 485', 2386, 25, '03814207229', '2017-11-28 09:20:25', 'Comerciante', 'op@cluubhonorarios.com', '3', 'NO', 10000000, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1227, '2017-11-24 00:00:00', 27962200, 'MANSILLA', 'Diego Julian', 'Vta calzado, carteras, bolsos', 'B° El Paraiso, Delfin Gallo, Dpto Cruz Alta', 2287, 25, '0381156517562', '2017-11-28 10:00:26', 'Comerciante', 'diegomansilla678@hotmail.com', '3', 'JIMENEZ Andrea A.', 27961068, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1228, '2017-11-23 00:00:00', 17239914, 'SANAUAG', 'Gregorio Edgardo', 'Vta Cotillón, Reposteria', 'General Paz 1398', 2386, 25, '03814247908', '2017-11-28 11:44:18', 'Comerciante', 'gregory_sanagua@hotmail.com', '3', 'NO', 10000000, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1229, '2017-11-22 00:00:00', 32164126, 'MEDINA', 'Luis Carlos', 'Vta Ropa deportiva', 'Avellaneda 398', 2285, 25, '0381155393298', '2017-11-28 11:49:57', 'Comerciante', 'chicharito11254@gmail.com', '3', 'NO', 10000000, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1230, '2017-11-27 00:00:00', 33139601, 'CABALEIRO', 'Juan Andres', 'Vta técnico PC Insumos  ', 'Julio L Mañan 531', 2386, 25, '0381155814961', '2017-11-28 12:04:13', 'Comerciante', 'juancabaleiro@hotmail.com', '4', 'NO', 10000000, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1231, '2017-11-24 00:00:00', 33541363, 'TIBOLDO', 'Luz Ioni', 'Vta y diseño tazas', 'Av Alem 174', 2371, 25, '0381155199317', '2017-11-28 20:30:53', 'Vendedora', 'lula.tibaldo@gmail.com', '3', 'VELAZQUEZ Diego', 34635663, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1232, '2017-11-27 00:00:00', 17582083, 'GUAYMAS OCAMPO', 'Dario Santiago', 'Penal', 'Pje 2 de Abril 337 - 3er piso Of. 34', 2386, 25, '0381155680508', '2017-11-28 20:34:35', 'Abogado', 'guaymasocampo@hotmail.com', '4', 'NAVARRO Maria de los Angeles', 17614692, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1233, '2017-11-28 00:00:00', 27594326, 'GIMENEZ', 'Ana Fatima del C.', 'Tratamto kinesio Prod estetica', 'Pje Agustin Maza 270', 2386, 25, '0381155494350', '2017-11-28 20:39:43', 'Vendedora', 'fatygimenez@hotmail.com', '3', 'NO', 10000000, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1234, '2017-11-27 00:00:00', 32626076, 'CORREA MRAD', 'Cristian Martin', 'Vta Serv tecnico celulares Acc', 'Av Colon 611', 2386, 25, '0381154163290', '2017-11-28 20:56:15', 'Comerciante', 'cacho.mrad@gmail.com', '3', 'RODRIGUEZ Jose Luis', 36042310, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1235, '2017-11-27 00:00:00', 29060827, 'ROJAS', 'German Antonio', 'Vta.Palos de Hockey ', 'Diego de Villaroel 295', 2386, 25, 'Cel.:3815302000', '2017-11-29 12:27:29', 'Vendedor', 'germanrojas81@gmail.com', '3', 'NO', 10000000, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1236, '2017-11-23 00:00:00', 32504134, 'ELIAS LEDES', 'Maria Fernanda', 'Tratamientos cap a domic', 'Moreno 370 - Piso:9 Dpto.:C', 2386, 25, 'Cel.:3816638179', '2017-11-29 12:44:35', 'Peluqueria', 'kittyledes1@gmail.com', '6', 'ELIAS LEDES Jonatan Misael', 31841749, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1237, '2017-11-27 00:00:00', 28480012, 'FAYONI VALENZUELA', 'Ana Lia del Valle', 'Vta ropa, juguetes, cosméticos', 'Lab.:24 de Septiembre 333 Local:M10 ', 2386, 25, 'Cel.:3815532023 - Fijo part.:4368534', '2017-11-29 13:01:29', 'Comerciante', 'anitavirgy@hotmail.com', '3', 'BALCAZAR Pablo Roberto', 27110626, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1238, '2017-11-27 00:00:00', 39355819, 'DIAZ', 'Leila Emilse', 'Vta ropa y accesorios', 'Lab.:24 de Septiembre 333 Local:K10 - i5', 2386, 25, 'Cel.:3816870084 - Fijo Part.:4272330', '2017-11-29 14:41:20', 'Comerciante', 'diazleila41@gmail.com', '3', 'DIAZ Karin David', 39355818, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1239, '2017-11-27 00:00:00', 33756603, 'DOMINETTI', 'Cristian', 'Vta motos, autos usados y 0KM', '24 de Septiembre 910, Torre Los Platanos (1° piso ofic 1)', 2386, 25, '0381155092377', '2017-11-30 10:21:32', 'Comerciante', 'motom.adm2@gmail.com', '3', 'MARANZANO Christian', 31379146, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1240, '2017-11-21 00:00:00', 39481337, 'ALBORNOZ', 'Luis Nicolas', 'Vta celulares y accesorios', 'Av Saenz Peña 7', 2386, 25, '0381153601633', '2017-11-30 11:25:30', 'Comerciante', 'op@clubhonorarios.com', '3', 'NO', 10000000, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1241, '2017-11-29 00:00:00', 34202101, 'RUIZ', 'Maximiliano Javier', 'Serv tecnico Vta celulares PC', 'Av Pedro Mig Araoz 712', 2386, 25, '0381153650900', '2017-11-30 11:37:51', 'Comerciante', 'maxiybelen46@gmail.com', '3', 'DECIMA Jimena Belen', 38119135, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1242, '2017-11-29 00:00:00', 28681214, 'VELIZ', 'Miguel Alejandro', 'Merceria y juguete ropa bazar ', 'Olleros1300 B° 11 de Marzo', 2386, 25, '0381155899736', '2017-11-30 12:33:35', 'Comerciante', 'op@clubhonorarios.com', '6', 'ACOSTA Monica Claudia', 26531266, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1243, '2017-11-24 00:00:00', 34603589, 'GALOVARD', 'Natasha', 'Venta Alquila inflables juego', 'San Martin 3983', 2386, 25, '0381154769084', '2017-11-30 12:55:48', 'Servicios para fiestas', 'galovard_natasha@hotmail.com', '4', 'DEL RIO Sebastian', 28721604, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1244, '2017-11-23 00:00:00', 30759651, 'RODRIGUEZ ZURITA', 'Marina Gabriela', 'Sociol juridic Prof particular', 'Buenos Aires 787 Planta Baja', 2386, 25, '0381155459493', '2017-11-30 13:04:20', 'Abogada', 'marinardgzta@gmail.com', '5', 'BALDASARIA Guillermo', 27575100, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1245, '2017-11-27 00:00:00', 21027993, 'ARTAZA', 'Sergio Luis', 'Vta autos motos', 'Pje Lucia Araoz 2329', 2386, 25, '0381155462059', '2017-11-30 14:02:09', 'Vendedor', 'op@clubhonorarios.com', '3', 'NO', 10000000, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1246, '2017-11-30 00:00:00', 26454433, 'PEREZ RENGANESCHI', 'Karina Beatriz', 'Tratamientos capilares', 'Corrientes 2228', 2386, 25, '0381154191742', '2017-11-30 18:44:40', 'Peluqueria', 'renganeschik@gmail.com', '6', 'PEREZ CARCIA Carlos W', 30357796, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1247, '2017-11-29 00:00:00', 37455431, 'JUAREZ', 'Antonella', 'Vta de ropa juguetes', '24 de Septiembre 233 M2', 2386, 25, '0381153462572', '2017-11-30 18:52:55', 'Comerciante', 'antito08kapa@hotmail.com', '3', 'ALMARAZ Maria Etelvina', 10651793, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1248, '2017-11-27 00:00:00', 29391125, 'RIVADENEIRA', 'Jorge Alberto.', 'Vta ropa calzado joyas reloj', 'Pje Lautaro 2509', 2386, 25, '0381155269210', '2017-11-30 20:37:43', 'Vendedor', 'riva.ja.r@gmail.com', '3', 'NO', 10000000, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1249, '2017-11-30 00:00:00', 33139270, 'ROLDAN', 'Miryam raquel', 'Vta ropa calzado maquillajes', 'B° AGET mza K casa 5 s/n', 2276, 25, '0381156702170', '2017-12-01 18:03:45', 'Vendedra', 'op@clubhonorarios.com', '3', 'KRUGER Eduardo', 25444141, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1250, '2017-11-30 00:00:00', 25444141, 'KRUGER', 'Eduardo Jorge', 'Vta de autos y motos', 'Av Alem 333 ', 2386, 25, '0381155416099', '2017-12-01 18:10:02', 'Comerciante', 'op@clubhonorarios.com', '3', 'ROLDAN Miryam Raquel', 33139270, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1251, '2017-12-05 00:00:00', 33333333, 'PROVISORIO', 'G', 'ventas', '9 de Julio485 3* A', 2386, 25, '3814207229', '2017-12-05 18:42:59', 'comerciante', 'op@clubhonorarios.com', '4', 'no', 11111111, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1252, '2017-12-05 00:00:00', 44444444, 'Provisoria', 'Of', 'Ventas', '9 de julio 485', 2386, 25, '03814207229', '2017-12-05 19:26:41', 'Comerciante', 'op@clubhonorarios.com', '5', 'NO', 10000000, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1253, '2017-12-06 00:00:00', 28680767, 'FERREYRA', 'Andrea Elizabeth', 'Vta de ropa', 'Lab.:Isabel La Catolica 667 - Part.:25 de Mayo 2388', 2386, 25, 'Cel:3816419444', '2017-12-09 14:04:12', 'comerciante', 'arnea1981@gmail.com', '4', 'FERREYRA Rosana ', 33163680, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1254, '2017-12-01 00:00:00', 24621470, 'OTAIZA', 'MARIA ALEJANDRA', 'Showroom Vta de ind. fem', 'Santa Fe 15 1º F', 2371, 25, '3816271563', '2017-12-09 16:35:28', 'Comerciante', 'maotaiza34@hotmail.com', '3', 'PERALTA MARCELO', 17947675, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1255, '2017-12-01 00:00:00', 17947675, 'PERALTA', 'CLAUDIO MARCELO', 'TRAUMATOLOGO', 'SALTA 465', 2386, 25, '3815015146', '2017-12-09 17:12:22', 'MEDICO', 'drmperalta@hotmail.com', '3', 'OTAIZA ALEJANDRA', 24621470, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1256, '2017-12-04 00:00:00', 21597418, 'VERA', 'RITA FABIANA', 'SHOWROOM', 'Alberdi 97', 2386, 25, '3814781927', '2017-12-09 17:20:34', 'COMERCIANTE', 'signorepane@hotmail.com', '3', 'LOPEZ PEDRAZA GUILLERMO', 20162341, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1257, '2017-12-04 00:00:00', 26982184, 'MEDINA', 'SUSANA PAOLA', 'Salon de Fiestas-Estetica', 'Reconquista 460', 2284, 25, '155617457 Fijo 4261044', '2017-12-09 18:07:26', 'COMERCIANTE', 'paoguty633@hotmail.com', '3', 'GUTIERREZ CRISTIAN ', 26584985, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1258, '2017-12-06 00:00:00', 34604896, 'VIZCARRA', 'WALTER DAVID', 'Vta Reparac de caños de escape', 'Av. Americo Vespucio 896', 2386, 25, '156232603', '2017-12-09 18:12:24', 'TALLER CAÑOS DE ESCAPE', 'david.vizcarra09@gmail.com', '3', 'NO', 11111111, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1259, '2017-12-06 00:00:00', 32827630, 'BELTRAN', 'ESTEBAN DAVID', 'Muebleria - Tapiceria', 'Av. Americo Vespucio 582', 2386, 25, '3813569571', '2017-12-09 18:24:23', 'COMERCIANTE', 'estebanbeltran131@hotmail.com', '3', 'NO', 11111111, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1260, '2017-12-07 00:00:00', 20418627, 'LEDESMA', 'MARIA MONICA', 'Farmacia y Regaleria', 'BOLIVIA 3866', 2386, 25, '154389056 FIJO 4850278', '2017-12-09 18:31:39', 'FARMACEUTICA', 'm.aial@hotmail.com', '3', 'JIMENEZ SERGIO DEL JESUS', 18464906, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1261, '2017-12-07 00:00:00', 34604610, 'NIEVA', 'GABRIEL', 'Vta Indum Deportiva', '24 de SEPTIEMBRE 233 Lc J7', 2386, 25, '3815391143 FIJO 4254537', '2017-12-09 18:37:41', 'COMERCIANTE', 'gnieva117@hotmail.com', '3', 'LAREZ GISELLE', 35082405, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1262, '2017-12-12 00:00:00', 55555555, 'aaaaa', 'asdasdasd', 'JJJJJ', 'JJJJJJJ', 2194, 22, '155300555', '2017-12-11 21:45:01', 'SDDDD', 'OP@CLUBHONORARIOS.COM', '5', 'no', 11111111, 'B');
INSERT INTO `ProfesionalesTemp` VALUES (1263, '2017-12-01 00:00:00', 33977152, 'CANCINO MAZA', 'Ricardo', 'Vta Bazar - Electronica', 'Lavalle 1316', 2386, 25, 'Cel.:3813390894 - Fijo:4244643', '2017-12-12 10:03:58', 'Comerciante', 'cancinomricardo@gmail.com', '4', 'GUTIERREZ Jesica Vanina', 33715693, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1264, '2017-12-11 00:00:00', 32202100, 'LEIVA', 'Andrea Romina', 'estampados tela Uniformes confeccion', 'Av. Americo Vespucio 2403', 2386, 25, '0381153530328', '2017-12-12 18:07:30', 'COMERCIANTE', 'romyleiva28@hotmail.com', '4', 'Ruiz David Walter', 26914552, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1265, '2017-12-11 00:00:00', 12148497, 'CARIA', 'Mirta Ester', 'Show Room Ropa Lenceria', 'Laprida 471 4* B', 2386, 25, '381154480207', '2017-12-12 18:21:33', 'Comerciante', 'mirtacaria@hotmail.com.ar', '4', 'Maria Belen Caria', 41375966, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1266, '2017-12-11 00:00:00', 31127869, 'TORO', 'Mario Alberto', 'Celu Vta sev. tec. rep. y acc.', 'Av. Monseñor Diaz 214', 2284, 25, '381153332261', '2017-12-12 18:54:37', 'Comerciante', 'mariotoro300884@gmail.com', '4', 'Soria Maria Laura', 32626169, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1267, '2017-12-11 00:00:00', 18185637, 'RIVADENEYRA', 'Mario Gustavo', 'Techos y pisos Decks', 'Pje Miraval 558 (Alt. 9 de Julio 3000) ', 2386, 25, '0381154969140', '2017-12-12 19:59:27', 'Carpintero', 'mariogustavor@gmail.com', '3', 'RIVAS Sandra Viviana', 18633556, 'A');
INSERT INTO `ProfesionalesTemp` VALUES (1268, '2017-12-12 00:00:00', 35807940, 'SERRANO', 'Mariana Elizabeth', 'Comerciante', 'Rivadavia 1196', 2364, 25, '3816448261', '2017-12-12 20:47:08', 'Showroom', 'marianaserrano_18@hotmail.com', '4', 'SERRANO Maria Dolores', 41143961, 'A');
COMMIT;

-- ----------------------------
-- Table structure for Provincias
-- ----------------------------
DROP TABLE IF EXISTS `Provincias`;
CREATE TABLE `Provincias` (
  `idProvincia` int(11) NOT NULL,
  `nombre` varchar(25) NOT NULL,
  PRIMARY KEY (`idProvincia`) USING BTREE,
  KEY `idProvincia` (`idProvincia`) USING BTREE,
  KEY `idProvincia_2` (`idProvincia`) USING BTREE,
  KEY `idProvincia_3` (`idProvincia`) USING BTREE,
  KEY `idProvincia_4` (`idProvincia`) USING BTREE,
  KEY `idProvincia_5` (`idProvincia`) USING BTREE,
  KEY `idProvincia_6` (`idProvincia`) USING BTREE,
  KEY `idProvincia_7` (`idProvincia`) USING BTREE,
  KEY `idProvincia_8` (`idProvincia`) USING BTREE,
  KEY `idProvincia_9` (`idProvincia`) USING BTREE,
  KEY `idProvincia_10` (`idProvincia`) USING BTREE,
  KEY `idProvincia_11` (`idProvincia`) USING BTREE,
  KEY `idProvincia_12` (`idProvincia`) USING BTREE,
  KEY `idProvincia_13` (`idProvincia`) USING BTREE,
  KEY `idProvincia_14` (`idProvincia`) USING BTREE,
  KEY `idProvincia_15` (`idProvincia`) USING BTREE,
  KEY `idProvincia_16` (`idProvincia`) USING BTREE,
  KEY `idProvincia_17` (`idProvincia`) USING BTREE,
  KEY `idProvincia_18` (`idProvincia`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;;

-- ----------------------------
-- Records of Provincias
-- ----------------------------
BEGIN;
INSERT INTO `Provincias` VALUES (1, 'Buenos Aires');
INSERT INTO `Provincias` VALUES (2, 'Buenos Aires-GBA');
INSERT INTO `Provincias` VALUES (3, 'Capital Federal');
INSERT INTO `Provincias` VALUES (4, 'Catamarca');
INSERT INTO `Provincias` VALUES (5, 'Chaco');
INSERT INTO `Provincias` VALUES (6, 'Chubut');
INSERT INTO `Provincias` VALUES (7, 'Córdoba');
INSERT INTO `Provincias` VALUES (8, 'Corrientes');
INSERT INTO `Provincias` VALUES (9, 'Entre Ríos');
INSERT INTO `Provincias` VALUES (10, 'Formosa');
INSERT INTO `Provincias` VALUES (11, 'Jujuy');
INSERT INTO `Provincias` VALUES (12, 'La Pampa');
INSERT INTO `Provincias` VALUES (13, 'La Rioja');
INSERT INTO `Provincias` VALUES (14, 'Mendoza');
INSERT INTO `Provincias` VALUES (15, 'Misiones');
INSERT INTO `Provincias` VALUES (16, 'Neuquén');
INSERT INTO `Provincias` VALUES (17, 'Río Negro');
INSERT INTO `Provincias` VALUES (18, 'Salta');
INSERT INTO `Provincias` VALUES (19, 'San Juan');
INSERT INTO `Provincias` VALUES (20, 'San Luis');
INSERT INTO `Provincias` VALUES (21, 'Santa Cruz');
INSERT INTO `Provincias` VALUES (22, 'Santa Fe');
INSERT INTO `Provincias` VALUES (23, 'Santiago del Estero');
INSERT INTO `Provincias` VALUES (24, 'Tierra del Fuego');
INSERT INTO `Provincias` VALUES (25, 'Tucumán');
COMMIT;

-- ----------------------------
-- Table structure for Tarjetas
-- ----------------------------
DROP TABLE IF EXISTS `Tarjetas`;
CREATE TABLE `Tarjetas` (
  `idTarjeta` int(11) NOT NULL COMMENT 'ID se compone por 3 digitos: XYY\ndonde X = 1 si es AMEX, 2 si es MASTER, 3 si es VISA\ndonde YY = cantida de cuotas directamente (con el 0 adelante en caso de cuotas menor a 10).\nEj: para Visa en 9 cuotas -> idTarjeta = 309\npara Amex en 12 cuotas -> idTarjeta = 112\nEsto nos sirve para mandar todo a la vista y hacer los filtros onsite mas rapido con una coincidencia (id), y no con 2 (cuotas AND nombreTarjeta)',
  `nombre` varchar(10) NOT NULL,
  `cuotas` int(11) NOT NULL,
  `tasa` decimal(15,14) NOT NULL,
  PRIMARY KEY (`idTarjeta`,`nombre`,`cuotas`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;;

-- ----------------------------
-- Records of Tarjetas
-- ----------------------------
BEGIN;
INSERT INTO `Tarjetas` VALUES (102, 'AMEX', 2, 1.19175257254135);
INSERT INTO `Tarjetas` VALUES (103, 'AMEX', 3, 1.21751984398118);
INSERT INTO `Tarjetas` VALUES (104, 'AMEX', 4, 1.24379394175117);
INSERT INTO `Tarjetas` VALUES (105, 'AMEX', 5, 1.27058456187318);
INSERT INTO `Tarjetas` VALUES (106, 'AMEX', 6, 1.29790162833062);
INSERT INTO `Tarjetas` VALUES (107, 'AMEX', 7, 1.35071373052656);
INSERT INTO `Tarjetas` VALUES (108, 'AMEX', 8, 1.38295103522820);
INSERT INTO `Tarjetas` VALUES (109, 'AMEX', 9, 1.41589483828510);
INSERT INTO `Tarjetas` VALUES (110, 'AMEX', 10, 1.44956066927639);
INSERT INTO `Tarjetas` VALUES (111, 'AMEX', 11, 1.48396449387489);
INSERT INTO `Tarjetas` VALUES (112, 'AMEX', 12, 1.51912273159945);
INSERT INTO `Tarjetas` VALUES (202, 'MASTER', 2, 1.19516878661232);
INSERT INTO `Tarjetas` VALUES (203, 'MASTER', 3, 1.22043435802868);
INSERT INTO `Tarjetas` VALUES (204, 'MASTER', 4, 1.24618622965634);
INSERT INTO `Tarjetas` VALUES (205, 'MASTER', 5, 1.27243351829195);
INSERT INTO `Tarjetas` VALUES (206, 'MASTER', 6, 1.29918555090403);
INSERT INTO `Tarjetas` VALUES (207, 'MASTER', 7, 1.34181504452872);
INSERT INTO `Tarjetas` VALUES (208, 'MASTER', 8, 1.37190215775790);
INSERT INTO `Tarjetas` VALUES (209, 'MASTER', 9, 1.40260879250556);
INSERT INTO `Tarjetas` VALUES (210, 'MASTER', 10, 1.43394772584297);
INSERT INTO `Tarjetas` VALUES (211, 'MASTER', 11, 1.46593207047838);
INSERT INTO `Tarjetas` VALUES (212, 'MASTER', 12, 1.49936782871000);
INSERT INTO `Tarjetas` VALUES (302, 'VISA', 2, 1.19516878661232);
INSERT INTO `Tarjetas` VALUES (303, 'VISA', 3, 1.22043435802868);
INSERT INTO `Tarjetas` VALUES (304, 'VISA', 4, 1.24618622965634);
INSERT INTO `Tarjetas` VALUES (305, 'VISA', 5, 1.27243351829195);
INSERT INTO `Tarjetas` VALUES (306, 'VISA', 6, 1.29918555090403);
INSERT INTO `Tarjetas` VALUES (307, 'VISA', 7, 1.34696679453166);
INSERT INTO `Tarjetas` VALUES (308, 'VISA', 8, 1.37782938064888);
INSERT INTO `Tarjetas` VALUES (309, 'VISA', 9, 1.40934159330108);
INSERT INTO `Tarjetas` VALUES (310, 'VISA', 10, 1.44151714525045);
INSERT INTO `Tarjetas` VALUES (311, 'VISA', 11, 1.47437011846107);
INSERT INTO `Tarjetas` VALUES (312, 'VISA', 12, 1.50791497849940);
COMMIT;

-- ----------------------------
-- Table structure for Usuarios
-- ----------------------------
DROP TABLE IF EXISTS `Usuarios`;
CREATE TABLE `Usuarios` (
  `idUsuario` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(45) NOT NULL,
  `contrasenia` varchar(45) NOT NULL,
  `rol` varchar(15) NOT NULL,
  PRIMARY KEY (`idUsuario`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;;

-- ----------------------------
-- Records of Usuarios
-- ----------------------------
BEGIN;
INSERT INTO `Usuarios` VALUES (1, 'ramiro', 'ramiro123', 'admin');
INSERT INTO `Usuarios` VALUES (2, 'admchfl', 'chfl2017', 'admin');
COMMIT;

-- ----------------------------
-- Table structure for Vendedores
-- ----------------------------
DROP TABLE IF EXISTS `Vendedores`;
CREATE TABLE `Vendedores` (
  `idVendedor` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  PRIMARY KEY (`idVendedor`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;;

-- ----------------------------
-- Records of Vendedores
-- ----------------------------
BEGIN;
INSERT INTO `Vendedores` VALUES (1, 'Pablo Ferreyra');
INSERT INTO `Vendedores` VALUES (2, 'Cristian Made');
INSERT INTO `Vendedores` VALUES (3, 'Nieves Villafañe');
INSERT INTO `Vendedores` VALUES (4, 'Gilda Gordillo');
INSERT INTO `Vendedores` VALUES (5, 'Oficina');
INSERT INTO `Vendedores` VALUES (6, 'Vendedor 1');
INSERT INTO `Vendedores` VALUES (7, 'Vendedor 2');
INSERT INTO `Vendedores` VALUES (8, 'Vendedor 3');
INSERT INTO `Vendedores` VALUES (9, 'Vendedor 4');
COMMIT;

-- ----------------------------
-- Procedure structure for categoria_baja
-- ----------------------------
DROP PROCEDURE IF EXISTS `categoria_baja`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `categoria_baja`(cIdCategoria INT)
PROC: BEGIN
	/*
    Procedimiento que da de baja un producto.
    */
    IF NOT EXISTS (SELECT idCategoria FROM Categorias WHERE idCategoria = cIdCategoria) THEN
		SELECT 0 as codigo, 'Categoria inexistente en el sistema.' mensaje;
        LEAVE PROC;
	END IF;
    IF (SELECT estado FROM Categorias WHERE idCategoria = cIdCategoria) = 'B' THEN
		SELECT 0 as codigo, 'La Categoria ya se encuentra dada de baja.' mensaje;
		LEAVE PROC;
	END IF;
    
    START TRANSACTION;
		UPDATE 	Categorias
        SET		estado = 'B'
        WHERE	idCategoria = cIdCategoria;
        SELECT cIdCategoria as codigo, 'Categoria dada de baja con exito.' mensaje;
	COMMIT;
END;
;;
delimiter ;

-- ----------------------------
-- Procedure structure for categoria_dame
-- ----------------------------
DROP PROCEDURE IF EXISTS `categoria_dame`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `categoria_dame`(cIdCategoria INT)
PROC: BEGIN
	/*
    Procedimiento que devuelve productos a partir de una cadena. Para buscar todo, cadena vacia.
    */
    
	IF NOT EXISTS (SELECT idCategoria FROM Categorias WHERE idCategoria = cIdCategoria) THEN
		SELECT 0 as codigo, 'La Categoria no existe' mensaje;
        LEAVE PROC;
	END IF;
    
    SELECT	idCategoria as codigo, nombre
    FROM	Categorias
    WHERE   idCategoria=cIdCategoria;
    
END;
;;
delimiter ;

-- ----------------------------
-- Procedure structure for categoria_listar
-- ----------------------------
DROP PROCEDURE IF EXISTS `categoria_listar`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `categoria_listar`()
PROC: BEGIN
	/*
    Procedimiento que devuelve productos a partir de una cadena. Para buscar todo, cadena vacia.
    */
    
    SELECT	idCategoria as codigo, nombre
    FROM	Categorias
    WHERE   estado='A'
    ORDER BY nombre ASC;
    
END;
;;
delimiter ;

-- ----------------------------
-- Procedure structure for categoria_listarAnsestros
-- ----------------------------
DROP PROCEDURE IF EXISTS `categoria_listarAnsestros`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `categoria_listarAnsestros`(pPertenece INT)
PROC: BEGIN
	/*
    Procedimiento que devuelve productos a partir de una cadena. Para buscar todo, cadena vacia.
    */
    DECLARE v1 VARCHAR(255);
    
    DROP TEMPORARY TABLE IF EXISTS filasAColumna;
	CREATE TEMPORARY TABLE IF NOT EXISTS filasAColumna (
	  `idCategoria` INT,
	  `nombre` varchar(50)
	);
	
    WHILE pPertenece IS NOT NULL DO
		INSERT INTO filasAColumna (idCategoria,nombre)SELECT idCategoria,nombre from Categorias where idCategoria = pPertenece;
		set pPertenece = (SELECT pertenece from Categorias where idCategoria = pPertenece);
	END WHILE;
    
    select * from filasAColumna order by idCategoria ASC;
    
END;
;;
delimiter ;

-- ----------------------------
-- Procedure structure for categoria_modificar
-- ----------------------------
DROP PROCEDURE IF EXISTS `categoria_modificar`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `categoria_modificar`(cIdCategoria INT, cNombre VARCHAR(45))
PROC: BEGIN

    DECLARE EXIT HANDLER FOR SQLEXCEPTION
		BEGIN
			SHOW ERRORS;
			SELECT 0 as codigo, 'Error en la transacción.' mensaje;
            ROLLBACK;
		END;
	IF NOT EXISTS (SELECT idCategoria FROM Categorias WHERE idCategoria = cIdCategoria) THEN
		SELECT 0 as codigo, 'La categoria no existe' mensaje;
        LEAVE PROC;
	END IF;
	IF (cNombre IS NULL OR cNombre = '') THEN
		SELECT 0 as codigo, 'Debe ingresar el nombre de la Categoria.' mensaje;
        LEAVE PROC;
	END IF;

	START TRANSACTION;
		UPDATE Categorias 
        SET nombre=cNombre
        WHERE idCategoria=cIdCategoria;
		SELECT cIdCategoria as codigo, 'Categoria actualizada con exito.' mensaje;
	COMMIT;
END;
;;
delimiter ;

-- ----------------------------
-- Procedure structure for categoria_nueva
-- ----------------------------
DROP PROCEDURE IF EXISTS `categoria_nueva`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `categoria_nueva`(cNombre VARCHAR(45))
PROC: BEGIN

	DECLARE cIdCategoria INT;
    -- Manejo de errores
    DECLARE EXIT HANDLER FOR SQLEXCEPTION
		BEGIN
			SHOW ERRORS;
			SELECT 0 as codigo, 'Error en la transacción.' mensaje;
            ROLLBACK;
		END;
	-- Control de categoria existente
	IF (cNombre IS NULL OR cNombre = '') THEN
		SELECT 0 as codigo, 'Debe ingresar un nombre de categoria.' mensaje;
        LEAVE PROC;
	END IF;
    -- Control de parametros incorrectos
	IF EXISTS (SELECT nombre FROM Categorias WHERE nombre = cNombre) THEN
		SELECT 0 as codigo, 'La categoria ya existe' mensaje;
        LEAVE PROC;
	END IF;

    START TRANSACTION;
		SET cIdCategoria = 1 + (SELECT COALESCE(MAX(idCategoria),0) FROM Categorias);
		INSERT INTO Categorias VALUES (cIdCategoria,cNombre,'A');
    SELECT cIdCategoria AS codigo, 'Categoria creada exitosamente' mensaje;
    COMMIT;
END;
;;
delimiter ;

-- ----------------------------
-- Procedure structure for control_importes
-- ----------------------------
DROP PROCEDURE IF EXISTS `control_importes`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `control_importes`(IN oTarjeta VARCHAR(10),
IN oImporteVenta DECIMAL(20,10),IN oImporteCobrar DECIMAL(20,10),IN oCuotas TINYINT,
IN oImporteCarga DECIMAL(20,10),IN oImporteCuota DECIMAL(20,10),OUT codigoOut INT,
OUT mensajeOut VARCHAR(45))
PROC: BEGIN

    DECLARE tTasa DECIMAL(15,14);
    DECLARE tImporteCobrar DECIMAL(20,10);
    DECLARE tImporteCarga DECIMAL(20,10);
    DECLARE tImporteCuota DECIMAL(20,10);
        
    SET tTasa = (SELECT tasa FROM Tarjetas WHERE nombre=oTarjeta AND cuotas=oCuotas);
    
    SET tImporteCobrar = ROUND((oImporteVenta*0.95*100),2)/100;
    /*
		Esto sirve para redondear al siguiente decimal en 0.05 puntos arriba siempre
		Con lo siguiente redondeamos para arriba al proximo 0,05 centavo:
		Ejemplo: 
		0.01 -> 0.05
		2.12 -> 2.15
		0.16 -> 0.20
        SET tImporteCarga = (oImporteVenta*tTasa DIV 0.05) * 0.05 + IF(oImporteVenta*tTasa MOD 0.05 = 0, 0, 0.05);
    */
    
    /*
	Los calculos son con los numeros redondeados simplemente al siguiente segundo decimal. EJ
          // Ej: 10.225 = 10.23
          //     10.223 = 10.22     
	*/
    SET tImporteCarga = ROUND((oImporteVenta*tTasa),2);
    SET tImporteCuota = ROUND((tImporteCarga/oCuotas),2);
    
    IF (tImporteCobrar NOT BETWEEN oImporteCobrar - 0.1 AND oImporteCobrar + 0.1) THEN
		SELECT 0 INTO codigoOut;
        SELECT 'Importe a cobrar incorrecto' INTO mensajeOut;
        LEAVE PROC;
	ELSEIF (tImporteCarga NOT BETWEEN tImporteCarga - 0.1 AND tImporteCarga + 0.1) THEN
			SELECT 0 INTO codigoOut;
			SELECT 'Importe de carga incorrecto' INTO mensajeOut;
			LEAVE PROC;
		ELSEIF(tImporteCuota NOT BETWEEN tImporteCuota - 0.1 AND tImporteCuota + 0.1) THEN
				SELECT 0 INTO codigoOut;
                SELECT 'Importe de cuotas incorrecto' INTO mensajeOut;
				LEAVE PROC;
	ELSE 
		SELECT 1 INTO codigoOut;
		SELECT 'Parametros correctos' INTO mensajeOut;
	END IF;
END;
;;
delimiter ;

-- ----------------------------
-- Procedure structure for dame_ciudades
-- ----------------------------
DROP PROCEDURE IF EXISTS `dame_ciudades`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `dame_ciudades`(pIdProvincia int)
BEGIN

		DECLARE EXIT HANDLER FOR SQLEXCEPTION 
		BEGIN
			SELECT 0 as codigo,'Error en la transaccion.' mensaje;
            SHOW ERRORS;
            ROLLBACK;
        END;
		
		SELECT c.*
		FROM Ciudades as c
		WHERE c.idProvincia = pIdProvincia ORDER BY c.idCiudad DESC;

END;
;;
delimiter ;

-- ----------------------------
-- Procedure structure for dame_comisiones
-- ----------------------------
DROP PROCEDURE IF EXISTS `dame_comisiones`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `dame_comisiones`()
PROC: BEGIN

DECLARE EXIT HANDLER FOR SQLEXCEPTION 
		BEGIN
			SELECT 0 as codigo,'Error en la transaccion.' mensaje;
            SHOW ERRORS;
            ROLLBACK;
        END;
        
        SELECT 1 AS codigo, t.* FROM Tarjetas as t
        ORDER BY idTarjeta ASC;

END;
;;
delimiter ;

-- ----------------------------
-- Procedure structure for dame_fechas
-- ----------------------------
DROP PROCEDURE IF EXISTS `dame_fechas`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `dame_fechas`()
BEGIN

		DECLARE EXIT HANDLER FOR SQLEXCEPTION 
		BEGIN
			SELECT 0 as codigo,'Error en la transaccion.' mensaje;
            SHOW ERRORS;
            ROLLBACK;
        END;
		
		SELECT 1 as codigo, NOW() AS fechaTransaccion,  (SELECT DATE(fecha) FROM DiasHabiles 
		WHERE DATE(fecha) >= DATE(NOW()) LIMIT 3,1) AS fechaPago;
END;
;;
delimiter ;

-- ----------------------------
-- Procedure structure for dame_provincias
-- ----------------------------
DROP PROCEDURE IF EXISTS `dame_provincias`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `dame_provincias`()
BEGIN

		DECLARE EXIT HANDLER FOR SQLEXCEPTION 
		BEGIN
			SELECT 0 as codigo,'Error en la transaccion.' mensaje;
            SHOW ERRORS;
            ROLLBACK;
        END;
		
		SELECT p.*
		FROM Provincias as p ORDER BY p.idProvincia DESC;
END;
;;
delimiter ;

-- ----------------------------
-- Procedure structure for operacion_dame
-- ----------------------------
DROP PROCEDURE IF EXISTS `operacion_dame`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `operacion_dame`(oIdOperacion INT)
PROC: BEGIN
	/*
    Procedimiento que devuelve productos a partir de una cadena. Para buscar todo, cadena vacia.
    */
    
	IF NOT EXISTS (SELECT oIdOperacion FROM Operaciones WHERE idOperacion = oIdOperacion) THEN
		SELECT 0 as codigo, 'La operacion no existe' mensaje;
        LEAVE PROC;
	END IF;
    
    SELECT	* 
    FROM	Operaciones
    WHERE   idOperacion=oIdOperacion;
    
END;
;;
delimiter ;

-- ----------------------------
-- Procedure structure for operacion_listar_dia
-- ----------------------------
DROP PROCEDURE IF EXISTS `operacion_listar_dia`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `operacion_listar_dia`()
PROC: BEGIN

	IF NOT EXISTS (SELECT idOperacion FROM Operaciones WHERE DATE(fechaTransaccion)=DATE(NOW()) ) THEN 
		SELECT 0 AS codigo, 'No se realizaron operaciones en el dia' as mensaje;
        LEAVE PROC;
	END IF;
    
    SELECT 	1 AS codigo, o.*
    FROM	Operaciones AS o
    WHERE DATE(fechaTransaccion)=DATE(NOW())
	ORDER BY idOperacion ASC;
END;
;;
delimiter ;

-- ----------------------------
-- Procedure structure for operacion_listar_rango
-- ----------------------------
DROP PROCEDURE IF EXISTS `operacion_listar_rango`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `operacion_listar_rango`(fechaInicio TIMESTAMP, fechaFin TIMESTAMP)
PROC: BEGIN

	IF NOT (fechaInicio REGEXP '^([1-3][0-9]{3,3})-(0?[1-9]|1[0-2])-(0?[1-9]|[1-2][1-9]|3[0-1])')
		THEN 
		SELECT 0 AS codigo, 'Fecha inicio en formato incorrecto';
		LEAVE PROC;
    END IF;
    IF NOT (fechaFin REGEXP '^([1-3][0-9]{3,3})-(0?[1-9]|1[0-2])-(0?[1-9]|[1-2][1-9]|3[0-1])')
		THEN 
		SELECT 0 AS codigo, 'Fecha fin en formato incorrecto';
		LEAVE PROC;
    END IF;

	IF NOT EXISTS (
			SELECT idOperacion FROM Operaciones WHERE 
			DATE(fechaTransaccion) BETWEEN DATE(fechaInicio) AND DATE(fechaFin)) 
		THEN 
			SELECT 0 AS codigo, 'No se realizaron operaciones en el rango elegido' as mensaje;
        LEAVE PROC;
	END IF;
    
    SELECT 	1 AS codigo, o.*
    FROM	Operaciones AS o
    WHERE DATE(fechaTransaccion) BETWEEN DATE(fechaInicio) AND DATE(fechaFin);
END;
;;
delimiter ;

-- ----------------------------
-- Procedure structure for operacion_nueva
-- ----------------------------
DROP PROCEDURE IF EXISTS `operacion_nueva`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `operacion_nueva`(oDniProfesional BIGINT, oApellidoProfesional VARCHAR(45), oNombreProfesional VARCHAR(45),
oMailProfesional VARCHAR(45), oDniCliente BIGINT, oApellidoCliente VARCHAR(45), oNombreCliente VARCHAR(45), oTelefonoCliente VARCHAR(20), oMailCliente VARCHAR(45), oTarjeta VARCHAR(10), oImporteVenta DECIMAL(20,10), oImporteCobrar DECIMAL(20,10), oCuotas TINYINT, oImporteCarga DECIMAL(20,10), oImporteCuota DECIMAL(20,10), oCodigoAuto INT, oCupon BIGINT, oTipoTarjeta CHAR)
PROC: BEGIN



	DECLARE oIdOperacion INT;
    DECLARE oFechaTransaccion TIMESTAMP;
    DECLARE oFechaPago TIMESTAMP;
	DECLARE fechaTransacTemp TIMESTAMP;

	 DECLARE EXIT HANDLER FOR SQLEXCEPTION 
	 BEGIN
	 SELECT 0 as codigo,'Error en la transaccion.' mensaje;
            SHOW ERRORS;
            ROLLBACK;
        END;
        
    
	-- Control de parametros vacios
    IF (oDniProfesional IS NULL OR oDniProfesional = 0) THEN
		SELECT 0 as codigo,'Debe ingresar el DNI del profesional.' mensaje;
        LEAVE PROC;
	END IF;
    IF (oApellidoProfesional IS NULL OR oApellidoProfesional = '' ) THEN
		SELECT 0 as codigo,'Debe ingresar el apellido del profesional.' mensaje;
        LEAVE PROC;
	END IF;
    IF (oNombreProfesional IS NULL OR oNombreProfesional = '' ) THEN
		SELECT 0 as codigo,'Debe ingresar el nombre del profesional' mensaje;
        LEAVE PROC;
	END IF;
    IF (oMailProfesional IS NULL OR oMailProfesional = '' ) THEN
		SELECT 0 as codigo,'Debe ingresar el mail del profesional' mensaje;
        LEAVE PROC;
	END IF;
    IF (oDniCliente IS NULL OR oDniCliente = 0) THEN
		SELECT 0 as codigo,'Debe ingresar el DNI del cliente.' mensaje;
        LEAVE PROC;
	END IF;
    IF (oApellidoCliente IS NULL OR oApellidoCliente = '' ) THEN
		SELECT 0 as codigo,'Debe ingresar el apellido del cliente.' mensaje;
        LEAVE PROC;
	END IF;
    IF (oNombreCliente IS NULL OR oNombreCliente = '' ) THEN
		SELECT 0 as codigo,'Debe ingresar el nombre del cliente' mensaje;
        LEAVE PROC;
	END IF; 
    
    IF NOT(oTarjeta IN ('VISA','MASTER','AMEX','MP')) THEN
		SELECT 0 as codigo,'Debe ingresar una tarjeta valida' mensaje;
        LEAVE PROC;
	END IF; 
    
    IF (oImporteVenta IS NULL OR oImporteVenta = 0) THEN
		SELECT 0 as codigo,'Debe ingresar un importe de venta valido.' mensaje;
        LEAVE PROC;
	END IF;
    IF (oImporteCobrar IS NULL  OR oImporteCobrar = 0) THEN
		SELECT 0 as codigo,'Debe ingresar un importe a cobrar valido.' mensaje;
        LEAVE PROC;
	END IF;
    IF (oCuotas IS NULL OR oCuotas = 0) THEN
		SELECT 0 as codigo,'Debe ingresar una cantidad de cuotas correcta.' mensaje;
        LEAVE PROC;
	END IF;
    IF (oImporteCarga IS NULL OR oImporteCarga = 0) THEN
		SELECT 0 as codigo,'Debe ingresar un importe a cargar valido.' mensaje;
        LEAVE PROC;
	END IF;
    IF (oImporteCuota IS NULL) THEN
		SELECT 0 as codigo,'Debe ingresar un importe de cuota valido.' mensaje;
        LEAVE PROC;
	END IF;
    IF (oCupon IS NULL) THEN
		SELECT 0 as codigo,'Debe ingresar un numero de cupon valido.' mensaje;
        LEAVE PROC;
	END IF;
    IF (oCodigoAuto IS NULL) THEN
		SELECT 0 as codigo,'Debe ingresar un codigo auto valido.' mensaje;
        LEAVE PROC;
	END IF;
    
    -- Control de importes correctos
    
    
		IF oTipoTarjeta = 'C' THEN 
			CALL control_importes(oTarjeta,oImporteVenta,oImporteCobrar,oCuotas,oImporteCarga,oImporteCuota,@codigoOut,@mensajeOut);
			IF (@codigoOut = 0) THEN
				SELECT 0 AS codigo, @mensajeOut AS mensaje;
				LEAVE PROC;
			END IF;
		END IF;

    
    START TRANSACTION;
    
		SET oFechaTransaccion = NOW();
		/* 
        Esto sirve para pasar la fecha de transaccion al dia siguiente HABIL en caso de que se realize pasadas las 20:30 horas
        IF (DATE_FORMAT(oFechaTransaccion, '%H:%i:%s') >= '20:30:00') THEN
			SET oFechaTransaccion = (SELECT fecha FROM DiasHabiles 
									WHERE DATE(fecha) > DATE(oFechaTransaccion)
									LIMIT 1);
		END IF;
        */
        
        /* DEFINO ESTA fechaTranscTemp para corregir la fecha de pago despues de las 20.30 */
        SET fechaTransacTemp = NOW();
        
        IF (DATE_FORMAT(fechaTransacTemp, '%H:%i:%s') >= '20:30:30') THEN
			SET fechaTransacTemp = (SELECT fecha FROM DiasHabiles 
									WHERE DATE(fecha) > DATE(fechaTransacTemp)
									LIMIT 1);
		END IF;
		
		SET oFechaPago = (SELECT fecha FROM DiasHabiles 
		WHERE DATE(fecha) >= DATE(fechaTransacTemp)
		LIMIT 3,1);
        
        
		
		SET oIdOperacion = 1 + (SELECT COALESCE(MAX(idOperacion),50000) FROM Operaciones);
		INSERT INTO Operaciones VALUES 
        (oIdOperacion,oDniProfesional,oApellidoProfesional,oNombreProfesional,oMailProfesional,oFechaTransaccion,
        oFechaPago,oDniCliente,oApellidoCliente,oNombreCliente,oTelefonoCliente,oMailCliente,oTarjeta,oImporteVenta,oImporteCobrar,oCuotas,oImporteCarga,
        oImporteCuota,oCodigoAuto,oCupon,NOW(),oTipoTarjeta);
		SELECT oIdOperacion AS codigo, 
        'Operacion creada con exito.' AS mensaje,
        DATE_FORMAT(oFechaTransaccion, "%d/%m/%Y %h:%i %p") AS fechaTransaccion,
        DATE_FORMAT(oFechaPago, "%d/%m/%Y") AS fechaPago;
        
	COMMIT;

END;
;;
delimiter ;

-- ----------------------------
-- Procedure structure for profesionalTemp_baja
-- ----------------------------
DROP PROCEDURE IF EXISTS `profesionalTemp_baja`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `profesionalTemp_baja`(pIdProfesional INT)
PROC: BEGIN
	/*
    Procedimiento que da de baja un producto.
    */
    IF NOT EXISTS (SELECT idProfesional FROM ProfesionalesTemp WHERE idProfesional = pIdProfesional) THEN
		SELECT 0 as codigo, 'Profesional inexistente en el sistema.' mensaje;
        LEAVE PROC;
	END IF;
    
    IF (SELECT estado FROM ProfesionalesTemp WHERE idProfesional = pIdProfesional) = 'B' THEN
		SELECT 0 as codigo, 'El profesional ya se encuentra dado de baja.' mensaje;
		LEAVE PROC;
	END IF;
    
    START TRANSACTION;
		UPDATE 	ProfesionalesTemp
        SET		estado = 'B'
        WHERE	idProfesional = pIdProfesional;
        SELECT pIdProfesional as codigo, 'Profesional dado de baja con exito.' mensaje;
	COMMIT;
END;
;;
delimiter ;

-- ----------------------------
-- Procedure structure for profesionalTemp_dame
-- ----------------------------
DROP PROCEDURE IF EXISTS `profesionalTemp_dame`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `profesionalTemp_dame`(pDni BIGINT)
PROC: BEGIN
	/*
    Procedimiento que devuelve productos a partir de una cadena. Para buscar todo, cadena vacia.
    */
    
	IF NOT EXISTS (SELECT idProfesional FROM ProfesionalesTemp WHERE dni = pDni AND estado='A') THEN
		SELECT 0 as codigo, 'El Profesional no existe o esta dado de baja' mensaje;
        LEAVE PROC;
	END IF;
    
    SELECT * FROM ProfesionalesTemp WHERE dni = pDni;
    
END;
;;
delimiter ;

-- ----------------------------
-- Procedure structure for profesionalTemp_listar
-- ----------------------------
DROP PROCEDURE IF EXISTS `profesionalTemp_listar`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `profesionalTemp_listar`()
PROC: BEGIN

	SELECT p.*,pr.nombre as nombreProvincia,c.nombre as nombreCiudad,v.nombre as nombreVendedor FROM ProfesionalesTemp as p 
	INNER JOIN Provincias as pr ON p.provincia = pr.idProvincia
	INNER JOIN Ciudades as c on p.localidad = c.idCiudad
	INNER JOIN Vendedores as v on p.vendedor = v.idVendedor
	WHERE estado = 'A' ORDER BY idProfesional DESC;
    
END;
;;
delimiter ;

-- ----------------------------
-- Procedure structure for profesionalTemp_listar_rango
-- ----------------------------
DROP PROCEDURE IF EXISTS `profesionalTemp_listar_rango`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `profesionalTemp_listar_rango`(fechaInicio TIMESTAMP, fechaFin TIMESTAMP)
PROC: BEGIN

	IF NOT (fechaInicio REGEXP '^([1-3][0-9]{3,3})-(0?[1-9]|1[0-2])-(0?[1-9]|[1-2][1-9]|3[0-1])')
		THEN 
		SELECT 0 AS codigo, 'Fecha inicio en formato incorrecto';
		LEAVE PROC;
    END IF;
    IF NOT (fechaFin REGEXP '^([1-3][0-9]{3,3})-(0?[1-9]|1[0-2])-(0?[1-9]|[1-2][1-9]|3[0-1])')
		THEN 
		SELECT 0 AS codigo, 'Fecha fin en formato incorrecto';
		LEAVE PROC;
    END IF;

	IF NOT EXISTS (
			SELECT idProfesional FROM ProfesionalesTemp WHERE 
			DATE(fechaAlta) BETWEEN DATE(fechaInicio) AND DATE(fechaFin)) 
		THEN 
			SELECT 0 AS codigo, 'No se crearon Profesionales en el rango elegido' as mensaje;
        LEAVE PROC;
	END IF;
    
		SELECT p.*,pr.nombre as nombreProvincia,c.nombre as nombreCiudad,v.nombre as nombreVendedor FROM ProfesionalesTemp as p 
		INNER JOIN Provincias as pr ON p.provincia = pr.idProvincia
		INNER JOIN Ciudades as c on p.localidad = c.idCiudad
		INNER JOIN Vendedores as v on p.vendedor = v.idVendedor
    WHERE DATE(p.fechaAlta) BETWEEN DATE(fechaInicio) AND DATE(fechaFin);
END;
;;
delimiter ;

-- ----------------------------
-- Procedure structure for profesionalTemp_modificar
-- ----------------------------
DROP PROCEDURE IF EXISTS `profesionalTemp_modificar`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `profesionalTemp_modificar`(pIdProfesional INT, pApellido VARCHAR(45), pNombre VARCHAR(45), pEspecialidad TEXT, pDomicilio VARCHAR(200), pLocalidad VARCHAR(100), pProvincia VARCHAR(45), pTelefono VARCHAR(100), pProfesion VARCHAR(45), pMail VARCHAR(45), pVendedor VARCHAR(45), pAutorizado VARCHAR (100), pDniAutorizado BIGINT)
PROC: BEGIN

    DECLARE EXIT HANDLER FOR SQLEXCEPTION
		BEGIN
			SHOW ERRORS;
			SELECT 0 as codigo, 'Error en la transacción.' mensaje;
            ROLLBACK;
		END;
        
    IF NOT EXISTS (SELECT idProfesional FROM ProfesionalesTemp WHERE idProfesional= pIdProfesional AND estado='A') THEN
		SELECT 0 as codigo, 'El profesional no existe' mensaje;
        LEAVE PROC;
	END IF;
    IF (pApellido IS NULL OR pApellido = '') THEN
		SELECT 0 as codigo, 'Debe ingresar el apellido del Profesional.' mensaje;
        LEAVE PROC;
	END IF;
    IF (pNombre IS NULL OR pNombre = '') THEN
		SELECT 0 as codigo, 'Debe ingresar el nombre del Profesional.' mensaje;
        LEAVE PROC;
	END IF;
    IF (pDomicilio IS NULL OR pDomicilio = '') THEN
		SELECT 0 as codigo, 'Debe ingresar el domicilio del Profesional.' mensaje;
        LEAVE PROC;
	END IF;
    IF (pLocalidad IS NULL OR pLocalidad = '') THEN
		SELECT 0 as codigo, 'Debe ingresar la localidad del Profesional.' mensaje;
        LEAVE PROC;
	END IF;	
	IF (pProvincia IS NULL OR pProvincia = '') THEN
		SELECT 0 as codigo, 'Debe ingresar la provincia del Profesional.' mensaje;
        LEAVE PROC;
	END IF;
    IF (pTelefono IS NULL OR pTelefono = '') THEN
		SELECT 0 as codigo, 'Debe ingresar el telefono del Profesional.' mensaje;
        LEAVE PROC;
	END IF;
    IF (pProfesion IS NULL OR pProfesion = '') THEN
		SELECT 0 as codigo, 'Debe ingresar la profesion del Profesional.' mensaje;
        LEAVE PROC;
	END IF;
    IF (pVendedor IS NULL OR pVendedor = '') THEN
		SELECT 0 as codigo, 'Debe ingresar el vendedor del Profesional.' mensaje;
        LEAVE PROC;
	END IF;

	START TRANSACTION;
		UPDATE ProfesionalesTemp 
        SET apellido=pApellido, nombre=pNombre, especialidad=pEspecialidad, domicilio=pDomicilio, localidad=pLocalidad, provincia=pProvincia, telefono=pTelefono, profesion=pProfesion, mail=pMail, vendedor=pVendedor, autorizado=pAutorizado, dniAutorizado=pDniAutorizado
        WHERE idProfesional=pIdProfesional;
		SELECT pIdProfesional as codigo, 'Profesional modificado con exito.' mensaje;
	COMMIT;
END;
;;
delimiter ;

-- ----------------------------
-- Procedure structure for profesionalTemp_nuevo
-- ----------------------------
DROP PROCEDURE IF EXISTS `profesionalTemp_nuevo`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `profesionalTemp_nuevo`(pFechaImpresion TIMESTAMP,pDni BIGINT, pApellido VARCHAR(45), pNombre VARCHAR(45), pEspecialidad TEXT, pDomicilio VARCHAR(200), pLocalidad VARCHAR(100), pProvincia VARCHAR(45), pTelefono VARCHAR(100), pProfesion VARCHAR(45), pMail VARCHAR(45), pVendedor VARCHAR(45), pAutorizado VARCHAR (100), pDniAutorizado BIGINT)
PROC: BEGIN

	DECLARE pIdProfesional INT;
    -- Manejo de errores
    
        DECLARE EXIT HANDLER FOR SQLEXCEPTION
		BEGIN
			SHOW ERRORS;
			SELECT 0 as codigo, 'Error en la transacción.' mensaje;
            ROLLBACK;
		END;
        
	IF (pDni IS NULL) THEN
		SELECT 0 as codigo, 'Debe ingresar el DNI del Profesional.' mensaje;
        LEAVE PROC;
	END IF;
    IF (pApellido IS NULL OR pApellido = '') THEN
		SELECT 0 as codigo, 'Debe ingresar el apellido del Profesional.' mensaje;
        LEAVE PROC;
	END IF;
    IF (pNombre IS NULL OR pNombre = '') THEN
		SELECT 0 as codigo, 'Debe ingresar el nombre del Profesional.' mensaje;
        LEAVE PROC;
	END IF;
    IF (pDomicilio IS NULL OR pDomicilio = '') THEN
		SELECT 0 as codigo, 'Debe ingresar el domicilio del Profesional.' mensaje;
        LEAVE PROC;
	END IF;
    IF (pLocalidad IS NULL OR pLocalidad = '') THEN
		SELECT 0 as codigo, 'Debe ingresar la localidad del Profesional.' mensaje;
        LEAVE PROC;
	END IF;	
	IF (pProvincia IS NULL OR pProvincia = '') THEN
		SELECT 0 as codigo, 'Debe ingresar la provincia del Profesional.' mensaje;
        LEAVE PROC;
	END IF;
    IF (pTelefono IS NULL OR pTelefono = '') THEN
		SELECT 0 as codigo, 'Debe ingresar el telefono del Profesional.' mensaje;
        LEAVE PROC;
	END IF;
    IF (pProfesion IS NULL OR pProfesion = '') THEN
		SELECT 0 as codigo, 'Debe ingresar la profesion del Profesional.' mensaje;
        LEAVE PROC;
	END IF;
    IF (pVendedor IS NULL OR pVendedor = '') THEN
		SELECT 0 as codigo, 'Debe ingresar el vendedor del Profesional.' mensaje;
        LEAVE PROC;
	END IF;
    
    
	IF EXISTS (SELECT dni FROM ProfesionalesTemp WHERE dni= pDni AND estado='A') THEN
		SELECT 0 as codigo, 'El profesional ya existe' mensaje;
        LEAVE PROC;
	END IF;
    
    IF EXISTS (SELECT dni FROM ProfesionalesTemp WHERE dni=pDni AND estado='B') THEN
		START TRANSACTION;
			UPDATE ProfesionalesTemp SET estado='A',fechaAlta=NOW() WHERE dni=pDni;
            SELECT 1 AS codigo, 'El profesional se encontraba dado de baja. Actualmente se lo dio de alta con la informacion ya existente en el sistema. Para modificar la informacion, recurra al menu "Modificar Profesional"' mensaje;
		COMMIT;
        LEAVE PROC;
	END IF;
    
    START TRANSACTION;
    
    SET pIdProfesional = 1 + (SELECT COALESCE(MAX(idProfesional),0) FROM ProfesionalesTemp);
	INSERT INTO ProfesionalesTemp VALUES (pIdProfesional,pFechaImpresion, pDni, pApellido, pNombre, pEspecialidad, pDomicilio, pLocalidad, pProvincia, pTelefono, NOW(), pProfesion, pMail, pVendedor, pAutorizado, pDniAutorizado ,'A');
	SELECT pIdProfesional AS codigo, 'Profesional creado exitosamente' mensaje;
    COMMIT;
END;
;;
delimiter ;

-- ----------------------------
-- Procedure structure for profesional_baja
-- ----------------------------
DROP PROCEDURE IF EXISTS `profesional_baja`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `profesional_baja`(pIdProfesional INT)
PROC: BEGIN
	/*
    Procedimiento que da de baja un producto.
    */
    IF NOT EXISTS (SELECT idProfesional FROM Profesionales WHERE idProfesional = pIdProfesional) THEN
		SELECT 0 as codigo, 'Profesional inexistente en el sistema.' mensaje;
        LEAVE PROC;
	END IF;
    IF (SELECT estado FROM Profesionales WHERE idProfesional = pIdProfesional) = 'B' THEN
		SELECT 0 as codigo, 'El profesional ya se encuentra dado de baja.' mensaje;
		LEAVE PROC;
	END IF;
    
    START TRANSACTION;
		UPDATE 	Profesionales
        SET		estado = 'B'
        WHERE	idProfesional = pIdProfesional;
        SELECT pIdProfesional as codigo, 'Profesional dado de baja con exito.' mensaje;
	COMMIT;
END;
;;
delimiter ;

-- ----------------------------
-- Procedure structure for profesional_dame
-- ----------------------------
DROP PROCEDURE IF EXISTS `profesional_dame`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `profesional_dame`(pIdProfesional INT)
PROC: BEGIN
	/*
    Procedimiento que devuelve productos a partir de una cadena. Para buscar todo, cadena vacia.
    */
    
	IF NOT EXISTS (SELECT idProfesional FROM Profesionales WHERE idProfesional = pIdProfesional) THEN
		SELECT 0 as codigo, 'El Profesional no existe' mensaje;
        LEAVE PROC;
	END IF;
    
    SELECT p.idProfesional, p.nombre, p.apellido, p.domicilio, 
	pr.nombre AS provincia, ci.nombre AS ciudad, p.email, p.telefono, p.celular,
	/* seleccionamos las Categorias del profesional y 
	las agrupamos convirtiendo en un array en una sola columna*/
	(SELECT CONCAT('[',GROUP_CONCAT(c.nombre SEPARATOR ','),']') 
	FROM Categorias AS c
	JOIN Profesional_Categoria AS pc ON c.idCategoria=pc.idCategoria
	WHERE pc.idProfesional=pIdProfesional) AS categoria
	/* FIN Categorias*/
	FROM Profesionales AS p
	JOIN Provincias AS pr ON p.idProvincia=pr.idProvincia
	JOIN Ciudades AS ci ON p.idCiudad=ci.idCiudad
	WHERE idProfesional=pIdProfesional;
    
END;
;;
delimiter ;

-- ----------------------------
-- Procedure structure for profesional_listar
-- ----------------------------
DROP PROCEDURE IF EXISTS `profesional_listar`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `profesional_listar`()
PROC: BEGIN
	
    DROP TEMPORARY TABLE IF EXISTS filasAcolumnas;
	CREATE TEMPORARY TABLE IF NOT EXISTS filasAcolumnas AS 
	(SELECT pc.idProfesional, c.nombre
	FROM Profesional_Categoria AS pc
    LEFT JOIN Categorias AS c ON c.idCategoria=pc.idCategoria);

	DROP TEMPORARY TABLE IF EXISTS coincidencia;
	CREATE TEMPORARY TABLE IF NOT EXISTS coincidencia AS
		( SELECT idProfesional, GROUP_concat(nombre) AS categoria
		FROM filasAcolumnas GROUP by idProfesional);

	SELECT p.idProfesional, p.nombre, p.apellido, p.domicilio, 
	pr.nombre AS provincia, ci.nombre AS ciudad, p.email, p.telefono, p.celular, co.categoria
	FROM Profesionales AS p
	JOIN Provincias AS pr ON p.idProvincia=pr.idProvincia
	JOIN Ciudades AS ci ON p.idCiudad=ci.idCiudad
	JOIN coincidencia AS co ON p.idProfesional=co.idProfesional;
END;
;;
delimiter ;

-- ----------------------------
-- Procedure structure for profesional_modificar
-- ----------------------------
DROP PROCEDURE IF EXISTS `profesional_modificar`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `profesional_modificar`(pIdProfesional INT, pNombre VARCHAR(45), pApellido VARCHAR(45),pDomicilio VARCHAR(45), 
pIdProvincia SMALLINT(2), pIdCiudad INT(4), pEmail VARCHAR(45), 
pTelefono VARCHAR(45), pCelular VARCHAR(45), pCategoriasCadena VARCHAR (45))
PROC: BEGIN

    DECLARE EXIT HANDLER FOR SQLEXCEPTION
		BEGIN
			SHOW ERRORS;
			SELECT 0 as codigo, 'Error en la transacción.' mensaje;
            ROLLBACK;
		END;
	IF NOT EXISTS (SELECT idProfesional FROM Profesionales WHERE idProfesional = pIdProfesional) THEN
		SELECT 0 as codigo, 'El Profesional no existe' mensaje;
        LEAVE PROC;
	END IF;
	IF (pNombre IS NULL OR pNombre = '') THEN
		SELECT 0 as codigo, 'Debe ingresar el nombre del Profesional.' mensaje;
        LEAVE PROC;
	END IF;
	IF (pApellido IS NULL OR pApellido = '') THEN
		SELECT 0 as codigo, 'Debe ingresar el apellido del Profesional.' mensaje;
        LEAVE PROC;
	END IF;

	START TRANSACTION;
		UPDATE Profesionales 
        SET nombre=pNombre, apellido=pApellido, domicilio=pDomicilio, idProvincia=pIdProvincia, 
        idCiudad=pIdCiudad, email=pEmail, telefono=pTelefono, celular=pCelular
        WHERE idProfesional=pIdProfesional;
		SELECT pIdProfesional as codigo, 'Profesional actualizado con exito.' mensaje;
	COMMIT;
END;
;;
delimiter ;

-- ----------------------------
-- Procedure structure for profesional_nuevo
-- ----------------------------
DROP PROCEDURE IF EXISTS `profesional_nuevo`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `profesional_nuevo`(pNombre VARCHAR(45), pApellido VARCHAR(45),pDomicilio VARCHAR(45), 
pIdProvincia SMALLINT(2), pIdCiudad INT(4), pEmail VARCHAR(45), 
pTelefono VARCHAR(45), pCelular VARCHAR(45), pCategoriasCadena VARCHAR (45))
PROC: BEGIN
	DECLARE aux VARCHAR(50);
    DECLARE pIdCategoria INT;
	DECLARE pIdProfesional INT;
    -- Manejo de errores
    
        DECLARE EXIT HANDLER FOR SQLEXCEPTION
		BEGIN
			SHOW ERRORS;
			SELECT 0 as codigo, 'Error en la transacción.' mensaje;
            ROLLBACK;
		END;
        
	IF (pNombre IS NULL OR pNombre = '') THEN
		SELECT 0 as codigo, 'Debe ingresar el nombre del Profesional.' mensaje;
        LEAVE PROC;
	END IF;
	IF (pApellido IS NULL OR pApellido = '') THEN
		SELECT 0 as codigo, 'Debe ingresar el apellido del Profesional.' mensaje;
        LEAVE PROC;
	END IF;
	IF EXISTS (SELECT email FROM Profesionales WHERE email = pEmail) THEN
		SELECT 0 as codigo, 'El mail ya esta en uso' mensaje;
        LEAVE PROC;
	END IF;
    
    	/*
    Procedimiento que permite dar de alta una venta a partir de sus Lineas de Venta, contenidas en pLineas.
    Formato de pLineas: idItem|cantidad|precio*
    El operador '|' se utiliza para separar los atributos de un Item.
    El operador '*' se utiliza para separar las Lineas de Venta.
    Devuelve el 'OK' mas el id de la nueva venta en Mensaje.
    */
    START TRANSACTION;
    
    SET pIdProfesional = 1 + (SELECT COALESCE(MAX(idProfesional),0) FROM Profesionales);
		INSERT INTO Profesionales VALUES 
        (pIdProfesional, pNombre, pApellido, pDomicilio, pIdProvincia, pIdCiudad, pEmail, pTelefono, pCelular,'A');
    
        LAZO : LOOP
			-- Obtengo categoria
            SET pIdCategoria = SUBSTRING_INDEX(pCategoriasCadena,'*',1);
			
            -- Control de parámetros incorrectos
            IF NOT EXISTS (SELECT idCategoria FROM Categorias WHERE idCategoria = pIdCategoria)	THEN
				SELECT 0 as codigo, 'Error. Categoria inexistente.' mensaje;
                ROLLBACK;
                LEAVE PROC;
			END IF;
            
            -- A Tabla Profesional_Categoria
            INSERT INTO Profesional_Categoria VALUES (pIdProfesional,pIdCategoria);
            
            -- Elimino la categoria de la cadena, para ver la siguiente categoria
			SET aux = SUBSTRING_INDEX(pCategoriasCadena,'*',1);    
			SET pCategoriasCadena = RIGHT(pCategoriasCadena,CHAR_LENGTH(pCategoriasCadena) - CHAR_LENGTH(aux));
			SET pCategoriasCadena = RIGHT(pCategoriasCadena,CHAR_LENGTH(pCategoriasCadena)-1);
            
            -- Condición de salida
			IF (pCategoriasCadena = '') THEN
				LEAVE LAZO;
			END IF;
		END LOOP LAZO;
	SELECT pIdProfesional AS codigo, 'Profesional creado exitosamente' mensaje;
    COMMIT;
END;
;;
delimiter ;

-- ----------------------------
-- Procedure structure for usuario_buscarPorUsername
-- ----------------------------
DROP PROCEDURE IF EXISTS `usuario_buscarPorUsername`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `usuario_buscarPorUsername`(uUsername VARCHAR(50))
PROC: BEGIN

    DECLARE EXIT HANDLER FOR SQLEXCEPTION 
		BEGIN
		SELECT 0 as codigo, 'Error en la transaccion.' mensaje;
				SHOW ERRORS;
				ROLLBACK;
		END;
        
		IF NOT EXISTS (SELECT idUsuario FROM Usuarios WHERE usuario = uUsername) THEN
			SELECT 0 as codigo, 'El Usuario no existe' mensaje;
					LEAVE PROC;
		END IF;
      
		SELECT idUsuario as codigo,idUsuario,usuario,rol
    FROM Usuarios u
    WHERE usuario = uUsername;
    
END;
;;
delimiter ;

-- ----------------------------
-- Procedure structure for usuario_login
-- ----------------------------
DROP PROCEDURE IF EXISTS `usuario_login`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `usuario_login`(uUsuario VARCHAR(45), uContrasenia VARCHAR(45))
PROC: BEGIN

    DECLARE EXIT HANDLER FOR SQLEXCEPTION 
		BEGIN
			SELECT 0 as codigo, 'Error en la transaccion.' mensaje;
            SHOW ERRORS;
            ROLLBACK;
        END;
    
    IF NOT EXISTS (SELECT idUsuario FROM Usuarios WHERE usuario=uUsuario AND contrasenia=uContrasenia)
    THEN
		SELECT 0 as codigo, 'Nombre de Usuario y contraseña incorrectos' mensaje;
        LEAVE PROC;
	ELSE 
		SELECT 1 as codigo, 'Ingreso Correcto' mensaje;
        LEAVE PROC;
	END IF;
        
END;
;;
delimiter ;

-- ----------------------------
-- Procedure structure for vendedores_listar
-- ----------------------------
DROP PROCEDURE IF EXISTS `vendedores_listar`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `vendedores_listar`()
BEGIN
  SELECT * FROM Vendedores;

END;
;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;
