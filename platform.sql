/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1
Source Server Version : 100408
Source Host           : localhost:3306
Source Database       : platform

Target Server Type    : MYSQL
Target Server Version : 100408
File Encoding         : 65001

Date: 2021-05-07 17:46:49
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1', 'Jon Smith', 'admin@gmail.com', '2021-03-21 16:07:42', '$2y$10$.I/Y1Am6z0i34n2Rupc3c.hjQtRUnDGRcWy4weY3gdn02bsVbWtiW', null, null, '2021-03-29 13:00:01', 'admin');

-- ----------------------------
-- Table structure for blog
-- ----------------------------
DROP TABLE IF EXISTS `blog`;
CREATE TABLE `blog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `system_name` varchar(255) DEFAULT '',
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT '',
  `text` longtext DEFAULT NULL,
  `published` tinyint(4) DEFAULT 1,
  `created_at` date DEFAULT NULL,
  `ordering` int(11) DEFAULT NULL,
  `image_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of blog
-- ----------------------------
INSERT INTO `blog` VALUES ('13', '', 'fgfgh', '<p>fghjfgjh</p>', '<p>fgjfghfgfg</p>', '1', null, null, '29');

-- ----------------------------
-- Table structure for cities
-- ----------------------------
DROP TABLE IF EXISTS `cities`;
CREATE TABLE `cities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cities
-- ----------------------------
INSERT INTO `cities` VALUES ('1', 'Moskow', '1');
INSERT INTO `cities` VALUES ('2', 'Piter', '1');
INSERT INTO `cities` VALUES ('3', 'Voronej', '1');

-- ----------------------------
-- Table structure for countries
-- ----------------------------
DROP TABLE IF EXISTS `countries`;
CREATE TABLE `countries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of countries
-- ----------------------------
INSERT INTO `countries` VALUES ('1', 'Russion');

-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of failed_jobs
-- ----------------------------

-- ----------------------------
-- Table structure for images
-- ----------------------------
DROP TABLE IF EXISTS `images`;
CREATE TABLE `images` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `filename` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `ext` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `size` int(11) NOT NULL,
  `temp` int(11) NOT NULL DEFAULT 0,
  `ordering` int(11) DEFAULT 0,
  `parent_id` int(11) DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `params` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of images
-- ----------------------------
INSERT INTO `images` VALUES ('29', '694313d8da61', 'jpg', '23193', '0', '0', null, null, '2021-04-08 06:03:59', '2021-04-08 06:03:59', null);

-- ----------------------------
-- Table structure for languages
-- ----------------------------
DROP TABLE IF EXISTS `languages`;
CREATE TABLE `languages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=610 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of languages
-- ----------------------------
INSERT INTO `languages` VALUES ('1', 'Abkhazian');
INSERT INTO `languages` VALUES ('2', 'Achinese');
INSERT INTO `languages` VALUES ('3', 'Acoli');
INSERT INTO `languages` VALUES ('4', 'Adangme');
INSERT INTO `languages` VALUES ('5', 'Adyghe');
INSERT INTO `languages` VALUES ('6', 'Afar');
INSERT INTO `languages` VALUES ('7', 'Afrihili');
INSERT INTO `languages` VALUES ('8', 'Afrikaans');
INSERT INTO `languages` VALUES ('9', 'Aghem');
INSERT INTO `languages` VALUES ('10', 'Ainu');
INSERT INTO `languages` VALUES ('11', 'Akan');
INSERT INTO `languages` VALUES ('12', 'Akkadian');
INSERT INTO `languages` VALUES ('13', 'Akoose');
INSERT INTO `languages` VALUES ('14', 'Alabama');
INSERT INTO `languages` VALUES ('15', 'Albanian');
INSERT INTO `languages` VALUES ('16', 'Aleut');
INSERT INTO `languages` VALUES ('17', 'Algerian Arabic');
INSERT INTO `languages` VALUES ('18', 'Amarik');
INSERT INTO `languages` VALUES ('19', 'American English');
INSERT INTO `languages` VALUES ('20', 'American Sign Language');
INSERT INTO `languages` VALUES ('21', 'Ancient Egyptian');
INSERT INTO `languages` VALUES ('22', 'Ancient Greek');
INSERT INTO `languages` VALUES ('23', 'Angika');
INSERT INTO `languages` VALUES ('24', 'Ao Naga');
INSERT INTO `languages` VALUES ('25', 'Arabik');
INSERT INTO `languages` VALUES ('26', 'Aragonese');
INSERT INTO `languages` VALUES ('27', 'Aramaic');
INSERT INTO `languages` VALUES ('28', 'Araona');
INSERT INTO `languages` VALUES ('29', 'Arapaho');
INSERT INTO `languages` VALUES ('30', 'Arawak');
INSERT INTO `languages` VALUES ('31', 'Armenian');
INSERT INTO `languages` VALUES ('32', 'Aromanian');
INSERT INTO `languages` VALUES ('33', 'Arpitan');
INSERT INTO `languages` VALUES ('34', 'Assamese');
INSERT INTO `languages` VALUES ('35', 'Asturian');
INSERT INTO `languages` VALUES ('36', 'Asu');
INSERT INTO `languages` VALUES ('37', 'Atsam');
INSERT INTO `languages` VALUES ('38', 'Australian English');
INSERT INTO `languages` VALUES ('39', 'Austrian German');
INSERT INTO `languages` VALUES ('40', 'Avaric');
INSERT INTO `languages` VALUES ('41', 'Avestan');
INSERT INTO `languages` VALUES ('42', 'Awadhi');
INSERT INTO `languages` VALUES ('43', 'Aymara');
INSERT INTO `languages` VALUES ('44', 'Azerbaijani');
INSERT INTO `languages` VALUES ('45', 'Badaga');
INSERT INTO `languages` VALUES ('46', 'Bafia');
INSERT INTO `languages` VALUES ('47', 'Bafut');
INSERT INTO `languages` VALUES ('48', 'Bakhtiari');
INSERT INTO `languages` VALUES ('49', 'Balinese');
INSERT INTO `languages` VALUES ('50', 'Baluchi');
INSERT INTO `languages` VALUES ('51', 'Bambara');
INSERT INTO `languages` VALUES ('52', 'Bamun');
INSERT INTO `languages` VALUES ('53', 'Banjar');
INSERT INTO `languages` VALUES ('54', 'Basaa');
INSERT INTO `languages` VALUES ('55', 'Bashkir');
INSERT INTO `languages` VALUES ('56', 'Basque');
INSERT INTO `languages` VALUES ('57', 'Batak Toba');
INSERT INTO `languages` VALUES ('58', 'Bavarian');
INSERT INTO `languages` VALUES ('59', 'Beja');
INSERT INTO `languages` VALUES ('60', 'Belarus kasa');
INSERT INTO `languages` VALUES ('61', 'Bemba');
INSERT INTO `languages` VALUES ('62', 'Bena');
INSERT INTO `languages` VALUES ('63', 'Bengali kasa');
INSERT INTO `languages` VALUES ('64', 'Betawi');
INSERT INTO `languages` VALUES ('65', 'Bɛɛmis kasa');
INSERT INTO `languages` VALUES ('66', 'Bhojpuri');
INSERT INTO `languages` VALUES ('67', 'Bikol');
INSERT INTO `languages` VALUES ('68', 'Bini');
INSERT INTO `languages` VALUES ('69', 'Bishnupriya');
INSERT INTO `languages` VALUES ('70', 'Bislama');
INSERT INTO `languages` VALUES ('71', 'Blin');
INSERT INTO `languages` VALUES ('72', 'Blissymbols');
INSERT INTO `languages` VALUES ('73', 'Bodo');
INSERT INTO `languages` VALUES ('74', 'Borɔfo');
INSERT INTO `languages` VALUES ('75', 'Bosnian');
INSERT INTO `languages` VALUES ('76', 'Bɔlgeria kasa');
INSERT INTO `languages` VALUES ('77', 'Brahui');
INSERT INTO `languages` VALUES ('78', 'Braj');
INSERT INTO `languages` VALUES ('79', 'Brazilian Portuguese');
INSERT INTO `languages` VALUES ('80', 'Breton');
INSERT INTO `languages` VALUES ('81', 'British English');
INSERT INTO `languages` VALUES ('82', 'Buginese');
INSERT INTO `languages` VALUES ('83', 'Bulu');
INSERT INTO `languages` VALUES ('84', 'Buriat');
INSERT INTO `languages` VALUES ('85', 'Caddo');
INSERT INTO `languages` VALUES ('86', 'Cajun French');
INSERT INTO `languages` VALUES ('87', 'Canadian English');
INSERT INTO `languages` VALUES ('88', 'Canadian French');
INSERT INTO `languages` VALUES ('89', 'Cantonese');
INSERT INTO `languages` VALUES ('90', 'Capiznon');
INSERT INTO `languages` VALUES ('91', 'Carib');
INSERT INTO `languages` VALUES ('92', 'Catalan');
INSERT INTO `languages` VALUES ('93', 'Cayuga');
INSERT INTO `languages` VALUES ('94', 'Cebuano');
INSERT INTO `languages` VALUES ('95', 'Central Atlas Tamazight');
INSERT INTO `languages` VALUES ('96', 'Central Dusun');
INSERT INTO `languages` VALUES ('97', 'Central Kurdish');
INSERT INTO `languages` VALUES ('98', 'Central Yupik');
INSERT INTO `languages` VALUES ('99', 'Chadian Arabic');
INSERT INTO `languages` VALUES ('100', 'Chagatai');
INSERT INTO `languages` VALUES ('101', 'Chamorro');
INSERT INTO `languages` VALUES ('102', 'Chechen');
INSERT INTO `languages` VALUES ('103', 'Cherokee');
INSERT INTO `languages` VALUES ('104', 'Cheyenne');
INSERT INTO `languages` VALUES ('105', 'Chibcha');
INSERT INTO `languages` VALUES ('106', 'Chiga');
INSERT INTO `languages` VALUES ('107', 'Chimborazo Highland Quichua');
INSERT INTO `languages` VALUES ('108', 'Chinook Jargon');
INSERT INTO `languages` VALUES ('109', 'Chipewyan');
INSERT INTO `languages` VALUES ('110', 'Choctaw');
INSERT INTO `languages` VALUES ('111', 'Church Slavic');
INSERT INTO `languages` VALUES ('112', 'Chuukese');
INSERT INTO `languages` VALUES ('113', 'Chuvash');
INSERT INTO `languages` VALUES ('114', 'Classical Newari');
INSERT INTO `languages` VALUES ('115', 'Classical Syriac');
INSERT INTO `languages` VALUES ('116', 'Colognian');
INSERT INTO `languages` VALUES ('117', 'Comorian');
INSERT INTO `languages` VALUES ('118', 'Congo Swahili');
INSERT INTO `languages` VALUES ('119', 'Coptic');
INSERT INTO `languages` VALUES ('120', 'Cornish');
INSERT INTO `languages` VALUES ('121', 'Corsican');
INSERT INTO `languages` VALUES ('122', 'Cree');
INSERT INTO `languages` VALUES ('123', 'Creek');
INSERT INTO `languages` VALUES ('124', 'Crimean Turkish');
INSERT INTO `languages` VALUES ('125', 'Croatian');
INSERT INTO `languages` VALUES ('126', 'Dakota');
INSERT INTO `languages` VALUES ('127', 'Danish');
INSERT INTO `languages` VALUES ('128', 'Dargwa');
INSERT INTO `languages` VALUES ('129', 'Dazaga');
INSERT INTO `languages` VALUES ('130', 'Delaware');
INSERT INTO `languages` VALUES ('131', 'Dɛɛkye');
INSERT INTO `languages` VALUES ('132', 'Dinka');
INSERT INTO `languages` VALUES ('133', 'Divehi');
INSERT INTO `languages` VALUES ('134', 'Dogri');
INSERT INTO `languages` VALUES ('135', 'Dogrib');
INSERT INTO `languages` VALUES ('136', 'Duala');
INSERT INTO `languages` VALUES ('137', 'Dyula');
INSERT INTO `languages` VALUES ('138', 'Dzongkha');
INSERT INTO `languages` VALUES ('139', 'Eastern Frisian');
INSERT INTO `languages` VALUES ('140', 'Efik');
INSERT INTO `languages` VALUES ('141', 'Egyptian Arabic');
INSERT INTO `languages` VALUES ('142', 'Ekajuk');
INSERT INTO `languages` VALUES ('143', 'Elamite');
INSERT INTO `languages` VALUES ('144', 'Embu');
INSERT INTO `languages` VALUES ('145', 'Emilian');
INSERT INTO `languages` VALUES ('146', 'Erzya');
INSERT INTO `languages` VALUES ('147', 'Esperanto');
INSERT INTO `languages` VALUES ('148', 'Estonian');
INSERT INTO `languages` VALUES ('149', 'European Portuguese');
INSERT INTO `languages` VALUES ('150', 'European Spanish');
INSERT INTO `languages` VALUES ('151', 'Ewe');
INSERT INTO `languages` VALUES ('152', 'Ewondo');
INSERT INTO `languages` VALUES ('153', 'Extremaduran');
INSERT INTO `languages` VALUES ('154', 'Fang');
INSERT INTO `languages` VALUES ('155', 'Fanti');
INSERT INTO `languages` VALUES ('156', 'Faroese');
INSERT INTO `languages` VALUES ('157', 'Fiji Hindi');
INSERT INTO `languages` VALUES ('158', 'Fijian');
INSERT INTO `languages` VALUES ('159', 'Filipino');
INSERT INTO `languages` VALUES ('160', 'Finnish');
INSERT INTO `languages` VALUES ('161', 'Flemish');
INSERT INTO `languages` VALUES ('162', 'Fon');
INSERT INTO `languages` VALUES ('163', 'Frafra');
INSERT INTO `languages` VALUES ('164', 'Frɛnkye');
INSERT INTO `languages` VALUES ('165', 'Friulian');
INSERT INTO `languages` VALUES ('166', 'Fulah');
INSERT INTO `languages` VALUES ('167', 'Ga');
INSERT INTO `languages` VALUES ('168', 'Gagauz');
INSERT INTO `languages` VALUES ('169', 'Galician');
INSERT INTO `languages` VALUES ('170', 'Gan Chinese');
INSERT INTO `languages` VALUES ('171', 'Ganda');
INSERT INTO `languages` VALUES ('172', 'Gayo');
INSERT INTO `languages` VALUES ('173', 'Gbaya');
INSERT INTO `languages` VALUES ('174', 'Geez');
INSERT INTO `languages` VALUES ('175', 'Georgian');
INSERT INTO `languages` VALUES ('176', 'Gheg Albanian');
INSERT INTO `languages` VALUES ('177', 'Ghomala');
INSERT INTO `languages` VALUES ('178', 'Gilaki');
INSERT INTO `languages` VALUES ('179', 'Gilbertese');
INSERT INTO `languages` VALUES ('180', 'Goan Konkani');
INSERT INTO `languages` VALUES ('181', 'Gondi');
INSERT INTO `languages` VALUES ('182', 'Gorontalo');
INSERT INTO `languages` VALUES ('183', 'Gothic');
INSERT INTO `languages` VALUES ('184', 'Grebo');
INSERT INTO `languages` VALUES ('185', 'Greek kasa');
INSERT INTO `languages` VALUES ('186', 'Guarani');
INSERT INTO `languages` VALUES ('187', 'Gujarati');
INSERT INTO `languages` VALUES ('188', 'Gusii');
INSERT INTO `languages` VALUES ('189', 'Gwichʼin');
INSERT INTO `languages` VALUES ('190', 'Gyaaman');
INSERT INTO `languages` VALUES ('191', 'Gyabanis kasa');
INSERT INTO `languages` VALUES ('192', 'Gyapan kasa');
INSERT INTO `languages` VALUES ('193', 'Haida');
INSERT INTO `languages` VALUES ('194', 'Haitian');
INSERT INTO `languages` VALUES ('195', 'Hakka Chinese');
INSERT INTO `languages` VALUES ('196', 'Hangri kasa');
INSERT INTO `languages` VALUES ('197', 'Hausa');
INSERT INTO `languages` VALUES ('198', 'Hawaiian');
INSERT INTO `languages` VALUES ('199', 'Hebrew');
INSERT INTO `languages` VALUES ('200', 'Herero');
INSERT INTO `languages` VALUES ('201', 'Hiligaynon');
INSERT INTO `languages` VALUES ('202', 'Hindi');
INSERT INTO `languages` VALUES ('203', 'Hiri Motu');
INSERT INTO `languages` VALUES ('204', 'Hittite');
INSERT INTO `languages` VALUES ('205', 'Hmong');
INSERT INTO `languages` VALUES ('206', 'Hupa');
INSERT INTO `languages` VALUES ('207', 'Iban');
INSERT INTO `languages` VALUES ('208', 'Ibibio');
INSERT INTO `languages` VALUES ('209', 'Icelandic');
INSERT INTO `languages` VALUES ('210', 'Ido');
INSERT INTO `languages` VALUES ('211', 'Igbo');
INSERT INTO `languages` VALUES ('212', 'Iloko');
INSERT INTO `languages` VALUES ('213', 'Inari Sami');
INSERT INTO `languages` VALUES ('214', 'Indonihyia kasa');
INSERT INTO `languages` VALUES ('215', 'Ingrian');
INSERT INTO `languages` VALUES ('216', 'Ingush');
INSERT INTO `languages` VALUES ('217', 'Interlingua');
INSERT INTO `languages` VALUES ('218', 'Interlingue');
INSERT INTO `languages` VALUES ('219', 'Inuktitut');
INSERT INTO `languages` VALUES ('220', 'Inupiaq');
INSERT INTO `languages` VALUES ('221', 'Irish');
INSERT INTO `languages` VALUES ('222', 'Italy kasa');
INSERT INTO `languages` VALUES ('223', 'Jamaican Creole English');
INSERT INTO `languages` VALUES ('224', 'Jju');
INSERT INTO `languages` VALUES ('225', 'Jola-Fonyi');
INSERT INTO `languages` VALUES ('226', 'Judeo-Arabic');
INSERT INTO `languages` VALUES ('227', 'Judeo-Persian');
INSERT INTO `languages` VALUES ('228', 'Jutish');
INSERT INTO `languages` VALUES ('229', 'Kabardian');
INSERT INTO `languages` VALUES ('230', 'Kabuverdianu');
INSERT INTO `languages` VALUES ('231', 'Kabyle');
INSERT INTO `languages` VALUES ('232', 'Kachin');
INSERT INTO `languages` VALUES ('233', 'Kaingang');
INSERT INTO `languages` VALUES ('234', 'Kako');
INSERT INTO `languages` VALUES ('235', 'Kalaallisut');
INSERT INTO `languages` VALUES ('236', 'Kalenjin');
INSERT INTO `languages` VALUES ('237', 'Kalmyk');
INSERT INTO `languages` VALUES ('238', 'Kamba');
INSERT INTO `languages` VALUES ('239', 'Kambodia kasa');
INSERT INTO `languages` VALUES ('240', 'Kanembu');
INSERT INTO `languages` VALUES ('241', 'Kannada');
INSERT INTO `languages` VALUES ('242', 'Kanuri');
INSERT INTO `languages` VALUES ('243', 'Kara-Kalpak');
INSERT INTO `languages` VALUES ('244', 'Karachay-Balkar');
INSERT INTO `languages` VALUES ('245', 'Karelian');
INSERT INTO `languages` VALUES ('246', 'Kashmiri');
INSERT INTO `languages` VALUES ('247', 'Kashubian');
INSERT INTO `languages` VALUES ('248', 'Kawi');
INSERT INTO `languages` VALUES ('249', 'Kazakh');
INSERT INTO `languages` VALUES ('250', 'Kenyang');
INSERT INTO `languages` VALUES ('251', 'Khasi');
INSERT INTO `languages` VALUES ('252', 'Khotanese');
INSERT INTO `languages` VALUES ('253', 'Khowar');
INSERT INTO `languages` VALUES ('254', 'Kikuyu');
INSERT INTO `languages` VALUES ('255', 'Kimbundu');
INSERT INTO `languages` VALUES ('256', 'Kinaray-a');
INSERT INTO `languages` VALUES ('257', 'Kirmanjki');
INSERT INTO `languages` VALUES ('258', 'Klingon');
INSERT INTO `languages` VALUES ('259', 'Kom');
INSERT INTO `languages` VALUES ('260', 'Komi');
INSERT INTO `languages` VALUES ('261', 'Komi-Permyak');
INSERT INTO `languages` VALUES ('262', 'Kongo');
INSERT INTO `languages` VALUES ('263', 'Konkani');
INSERT INTO `languages` VALUES ('264', 'Korea kasa');
INSERT INTO `languages` VALUES ('265', 'Koro');
INSERT INTO `languages` VALUES ('266', 'Kosraean');
INSERT INTO `languages` VALUES ('267', 'Kotava');
INSERT INTO `languages` VALUES ('268', 'Koyra Chiini');
INSERT INTO `languages` VALUES ('269', 'Koyraboro Senni');
INSERT INTO `languages` VALUES ('270', 'Kpelle');
INSERT INTO `languages` VALUES ('271', 'Krio');
INSERT INTO `languages` VALUES ('272', 'Kuanyama');
INSERT INTO `languages` VALUES ('273', 'Kumyk');
INSERT INTO `languages` VALUES ('274', 'Kurdish');
INSERT INTO `languages` VALUES ('275', 'Kurukh');
INSERT INTO `languages` VALUES ('276', 'Kutenai');
INSERT INTO `languages` VALUES ('277', 'Kwasio');
INSERT INTO `languages` VALUES ('278', 'Kyaena kasa');
INSERT INTO `languages` VALUES ('279', 'Kyɛk kasa');
INSERT INTO `languages` VALUES ('280', 'Kyrgyz');
INSERT INTO `languages` VALUES ('281', 'Kʼicheʼ');
INSERT INTO `languages` VALUES ('282', 'Ladino');
INSERT INTO `languages` VALUES ('283', 'Lahnda');
INSERT INTO `languages` VALUES ('284', 'Lakota');
INSERT INTO `languages` VALUES ('285', 'Lamba');
INSERT INTO `languages` VALUES ('286', 'Langi');
INSERT INTO `languages` VALUES ('287', 'Lao');
INSERT INTO `languages` VALUES ('288', 'Latgalian');
INSERT INTO `languages` VALUES ('289', 'Latin');
INSERT INTO `languages` VALUES ('290', 'Latin American Spanish');
INSERT INTO `languages` VALUES ('291', 'Latvian');
INSERT INTO `languages` VALUES ('292', 'Laz');
INSERT INTO `languages` VALUES ('293', 'Lezghian');
INSERT INTO `languages` VALUES ('294', 'Ligurian');
INSERT INTO `languages` VALUES ('295', 'Limburgish');
INSERT INTO `languages` VALUES ('296', 'Lingala');
INSERT INTO `languages` VALUES ('297', 'Lingua Franca Nova');
INSERT INTO `languages` VALUES ('298', 'Literary Chinese');
INSERT INTO `languages` VALUES ('299', 'Lithuanian');
INSERT INTO `languages` VALUES ('300', 'Livonian');
INSERT INTO `languages` VALUES ('301', 'Lojban');
INSERT INTO `languages` VALUES ('302', 'Lombard');
INSERT INTO `languages` VALUES ('303', 'Low German');
INSERT INTO `languages` VALUES ('304', 'Lower Silesian');
INSERT INTO `languages` VALUES ('305', 'Lower Sorbian');
INSERT INTO `languages` VALUES ('306', 'Lozi');
INSERT INTO `languages` VALUES ('307', 'Luba-Katanga');
INSERT INTO `languages` VALUES ('308', 'Luba-Lulua');
INSERT INTO `languages` VALUES ('309', 'Luiseno');
INSERT INTO `languages` VALUES ('310', 'Lule Sami');
INSERT INTO `languages` VALUES ('311', 'Lunda');
INSERT INTO `languages` VALUES ('312', 'Luo');
INSERT INTO `languages` VALUES ('313', 'Luxembourgish');
INSERT INTO `languages` VALUES ('314', 'Luyia');
INSERT INTO `languages` VALUES ('315', 'Maba');
INSERT INTO `languages` VALUES ('316', 'Macedonian');
INSERT INTO `languages` VALUES ('317', 'Machame');
INSERT INTO `languages` VALUES ('318', 'Madurese');
INSERT INTO `languages` VALUES ('319', 'Mafa');
INSERT INTO `languages` VALUES ('320', 'Magahi');
INSERT INTO `languages` VALUES ('321', 'Main-Franconian');
INSERT INTO `languages` VALUES ('322', 'Maithili');
INSERT INTO `languages` VALUES ('323', 'Makasar');
INSERT INTO `languages` VALUES ('324', 'Makhuwa-Meetto');
INSERT INTO `languages` VALUES ('325', 'Makonde');
INSERT INTO `languages` VALUES ('326', 'Malagasy');
INSERT INTO `languages` VALUES ('327', 'Malay kasa');
INSERT INTO `languages` VALUES ('328', 'Malayalam');
INSERT INTO `languages` VALUES ('329', 'Maltese');
INSERT INTO `languages` VALUES ('330', 'Manchu');
INSERT INTO `languages` VALUES ('331', 'Mandar');
INSERT INTO `languages` VALUES ('332', 'Mandingo');
INSERT INTO `languages` VALUES ('333', 'Manipuri');
INSERT INTO `languages` VALUES ('334', 'Manx');
INSERT INTO `languages` VALUES ('335', 'Maori');
INSERT INTO `languages` VALUES ('336', 'Mapuche');
INSERT INTO `languages` VALUES ('337', 'Marathi');
INSERT INTO `languages` VALUES ('338', 'Mari');
INSERT INTO `languages` VALUES ('339', 'Marshallese');
INSERT INTO `languages` VALUES ('340', 'Marwari');
INSERT INTO `languages` VALUES ('341', 'Masai');
INSERT INTO `languages` VALUES ('342', 'Mazanderani');
INSERT INTO `languages` VALUES ('343', 'Medumba');
INSERT INTO `languages` VALUES ('344', 'Mende');
INSERT INTO `languages` VALUES ('345', 'Mentawai');
INSERT INTO `languages` VALUES ('346', 'Meru');
INSERT INTO `languages` VALUES ('347', 'Metaʼ');
INSERT INTO `languages` VALUES ('348', 'Mexican Spanish');
INSERT INTO `languages` VALUES ('349', 'Micmac');
INSERT INTO `languages` VALUES ('350', 'Middle Dutch');
INSERT INTO `languages` VALUES ('351', 'Middle English');
INSERT INTO `languages` VALUES ('352', 'Middle French');
INSERT INTO `languages` VALUES ('353', 'Middle High German');
INSERT INTO `languages` VALUES ('354', 'Middle Irish');
INSERT INTO `languages` VALUES ('355', 'Min Nan Chinese');
INSERT INTO `languages` VALUES ('356', 'Minangkabau');
INSERT INTO `languages` VALUES ('357', 'Mingrelian');
INSERT INTO `languages` VALUES ('358', 'Mirandese');
INSERT INTO `languages` VALUES ('359', 'Mizo');
INSERT INTO `languages` VALUES ('360', 'Modern Standard Arabic');
INSERT INTO `languages` VALUES ('361', 'Mohawk');
INSERT INTO `languages` VALUES ('362', 'Moksha');
INSERT INTO `languages` VALUES ('363', 'Moldavian');
INSERT INTO `languages` VALUES ('364', 'Mongo');
INSERT INTO `languages` VALUES ('365', 'Mongolian');
INSERT INTO `languages` VALUES ('366', 'Morisyen');
INSERT INTO `languages` VALUES ('367', 'Moroccan Arabic');
INSERT INTO `languages` VALUES ('368', 'Mossi');
INSERT INTO `languages` VALUES ('369', 'Multiple Languages');
INSERT INTO `languages` VALUES ('370', 'Mundang');
INSERT INTO `languages` VALUES ('371', 'Muslim Tat');
INSERT INTO `languages` VALUES ('372', 'Myene');
INSERT INTO `languages` VALUES ('373', 'Nama');
INSERT INTO `languages` VALUES ('374', 'Nauru');
INSERT INTO `languages` VALUES ('375', 'Navajo');
INSERT INTO `languages` VALUES ('376', 'Ndonga');
INSERT INTO `languages` VALUES ('377', 'Neapolitan');
INSERT INTO `languages` VALUES ('378', 'Newari');
INSERT INTO `languages` VALUES ('379', 'Nɛpal kasa');
INSERT INTO `languages` VALUES ('380', 'Ngambay');
INSERT INTO `languages` VALUES ('381', 'Ngiemboon');
INSERT INTO `languages` VALUES ('382', 'Ngomba');
INSERT INTO `languages` VALUES ('383', 'Nheengatu');
INSERT INTO `languages` VALUES ('384', 'Nias');
INSERT INTO `languages` VALUES ('385', 'Niuean');
INSERT INTO `languages` VALUES ('386', 'No linguistic content');
INSERT INTO `languages` VALUES ('387', 'Nogai');
INSERT INTO `languages` VALUES ('388', 'North Ndebele');
INSERT INTO `languages` VALUES ('389', 'Northern Frisian');
INSERT INTO `languages` VALUES ('390', 'Northern Sami');
INSERT INTO `languages` VALUES ('391', 'Northern Sotho');
INSERT INTO `languages` VALUES ('392', 'Norwegian');
INSERT INTO `languages` VALUES ('393', 'Norwegian Bokmål');
INSERT INTO `languages` VALUES ('394', 'Norwegian Nynorsk');
INSERT INTO `languages` VALUES ('395', 'Novial');
INSERT INTO `languages` VALUES ('396', 'Nuer');
INSERT INTO `languages` VALUES ('397', 'Nyamwezi');
INSERT INTO `languages` VALUES ('398', 'Nyanja');
INSERT INTO `languages` VALUES ('399', 'Nyankole');
INSERT INTO `languages` VALUES ('400', 'Nyasa Tonga');
INSERT INTO `languages` VALUES ('401', 'Nyoro');
INSERT INTO `languages` VALUES ('402', 'Nzima');
INSERT INTO `languages` VALUES ('403', 'NʼKo');
INSERT INTO `languages` VALUES ('404', 'Occitan');
INSERT INTO `languages` VALUES ('405', 'Ojibwa');
INSERT INTO `languages` VALUES ('406', 'Old English');
INSERT INTO `languages` VALUES ('407', 'Old French');
INSERT INTO `languages` VALUES ('408', 'Old High German');
INSERT INTO `languages` VALUES ('409', 'Old Irish');
INSERT INTO `languages` VALUES ('410', 'Old Norse');
INSERT INTO `languages` VALUES ('411', 'Old Persian');
INSERT INTO `languages` VALUES ('412', 'Old Provençal');
INSERT INTO `languages` VALUES ('413', 'Oriya');
INSERT INTO `languages` VALUES ('414', 'Oromo');
INSERT INTO `languages` VALUES ('415', 'Osage');
INSERT INTO `languages` VALUES ('416', 'Ossetic');
INSERT INTO `languages` VALUES ('417', 'Ottoman Turkish');
INSERT INTO `languages` VALUES ('418', 'Pahlavi');
INSERT INTO `languages` VALUES ('419', 'Palatine German');
INSERT INTO `languages` VALUES ('420', 'Palauan');
INSERT INTO `languages` VALUES ('421', 'Pali');
INSERT INTO `languages` VALUES ('422', 'Pampanga');
INSERT INTO `languages` VALUES ('423', 'Pangasinan');
INSERT INTO `languages` VALUES ('424', 'Papiamento');
INSERT INTO `languages` VALUES ('425', 'Pashto');
INSERT INTO `languages` VALUES ('426', 'Pennsylvania German');
INSERT INTO `languages` VALUES ('427', 'Pɛɛhyia kasa');
INSERT INTO `languages` VALUES ('428', 'Phoenician');
INSERT INTO `languages` VALUES ('429', 'Picard');
INSERT INTO `languages` VALUES ('430', 'Piedmontese');
INSERT INTO `languages` VALUES ('431', 'Plautdietsch');
INSERT INTO `languages` VALUES ('432', 'Pohnpeian');
INSERT INTO `languages` VALUES ('433', 'Pontic');
INSERT INTO `languages` VALUES ('434', 'Pɔland kasa');
INSERT INTO `languages` VALUES ('435', 'Pɔɔtugal kasa');
INSERT INTO `languages` VALUES ('436', 'Prussian');
INSERT INTO `languages` VALUES ('437', 'Pungyabi kasa');
INSERT INTO `languages` VALUES ('438', 'Quechua');
INSERT INTO `languages` VALUES ('439', 'Rahyia kasa');
INSERT INTO `languages` VALUES ('440', 'Rajasthani');
INSERT INTO `languages` VALUES ('441', 'Rapanui');
INSERT INTO `languages` VALUES ('442', 'Rarotongan');
INSERT INTO `languages` VALUES ('443', 'Rewanda kasa');
INSERT INTO `languages` VALUES ('444', 'Riffian');
INSERT INTO `languages` VALUES ('445', 'Romagnol');
INSERT INTO `languages` VALUES ('446', 'Romansh');
INSERT INTO `languages` VALUES ('447', 'Romany');
INSERT INTO `languages` VALUES ('448', 'Rombo');
INSERT INTO `languages` VALUES ('449', 'Romenia kasa');
INSERT INTO `languages` VALUES ('450', 'Root');
INSERT INTO `languages` VALUES ('451', 'Rotuman');
INSERT INTO `languages` VALUES ('452', 'Roviana');
INSERT INTO `languages` VALUES ('453', 'Rundi');
INSERT INTO `languages` VALUES ('454', 'Rusyn');
INSERT INTO `languages` VALUES ('455', 'Rwa');
INSERT INTO `languages` VALUES ('456', 'Saho');
INSERT INTO `languages` VALUES ('457', 'Sakha');
INSERT INTO `languages` VALUES ('458', 'Samaritan Aramaic');
INSERT INTO `languages` VALUES ('459', 'Samburu');
INSERT INTO `languages` VALUES ('460', 'Samoan');
INSERT INTO `languages` VALUES ('461', 'Samogitian');
INSERT INTO `languages` VALUES ('462', 'Sandawe');
INSERT INTO `languages` VALUES ('463', 'Sango');
INSERT INTO `languages` VALUES ('464', 'Sangu');
INSERT INTO `languages` VALUES ('465', 'Sanskrit');
INSERT INTO `languages` VALUES ('466', 'Santali');
INSERT INTO `languages` VALUES ('467', 'Sardinian');
INSERT INTO `languages` VALUES ('468', 'Sasak');
INSERT INTO `languages` VALUES ('469', 'Sassarese Sardinian');
INSERT INTO `languages` VALUES ('470', 'Saterland Frisian');
INSERT INTO `languages` VALUES ('471', 'Saurashtra');
INSERT INTO `languages` VALUES ('472', 'Scots');
INSERT INTO `languages` VALUES ('473', 'Scottish Gaelic');
INSERT INTO `languages` VALUES ('474', 'Selayar');
INSERT INTO `languages` VALUES ('475', 'Selkup');
INSERT INTO `languages` VALUES ('476', 'Sena');
INSERT INTO `languages` VALUES ('477', 'Seneca');
INSERT INTO `languages` VALUES ('478', 'Serbian');
INSERT INTO `languages` VALUES ('479', 'Serbo-Croatian');
INSERT INTO `languages` VALUES ('480', 'Serer');
INSERT INTO `languages` VALUES ('481', 'Seri');
INSERT INTO `languages` VALUES ('482', 'Shambala');
INSERT INTO `languages` VALUES ('483', 'Shan');
INSERT INTO `languages` VALUES ('484', 'Shona');
INSERT INTO `languages` VALUES ('485', 'Sichuan Yi');
INSERT INTO `languages` VALUES ('486', 'Sicilian');
INSERT INTO `languages` VALUES ('487', 'Sidamo');
INSERT INTO `languages` VALUES ('488', 'Siksika');
INSERT INTO `languages` VALUES ('489', 'Silesian');
INSERT INTO `languages` VALUES ('490', 'Simplified Chinese');
INSERT INTO `languages` VALUES ('491', 'Sindhi');
INSERT INTO `languages` VALUES ('492', 'Sinhala');
INSERT INTO `languages` VALUES ('493', 'Skolt Sami');
INSERT INTO `languages` VALUES ('494', 'Slave');
INSERT INTO `languages` VALUES ('495', 'Slovak');
INSERT INTO `languages` VALUES ('496', 'Slovenian');
INSERT INTO `languages` VALUES ('497', 'Soga');
INSERT INTO `languages` VALUES ('498', 'Sogdien');
INSERT INTO `languages` VALUES ('499', 'Somalia kasa');
INSERT INTO `languages` VALUES ('500', 'Soninke');
INSERT INTO `languages` VALUES ('501', 'South Azerbaijani');
INSERT INTO `languages` VALUES ('502', 'South Ndebele');
INSERT INTO `languages` VALUES ('503', 'Southern Altai');
INSERT INTO `languages` VALUES ('504', 'Southern Sami');
INSERT INTO `languages` VALUES ('505', 'Southern Sotho');
INSERT INTO `languages` VALUES ('506', 'Spain kasa');
INSERT INTO `languages` VALUES ('507', 'Sranan Tongo');
INSERT INTO `languages` VALUES ('508', 'Standard Moroccan Tamazight');
INSERT INTO `languages` VALUES ('509', 'Sukuma');
INSERT INTO `languages` VALUES ('510', 'Sumerian');
INSERT INTO `languages` VALUES ('511', 'Sundanese');
INSERT INTO `languages` VALUES ('512', 'Susu');
INSERT INTO `languages` VALUES ('513', 'Swahili');
INSERT INTO `languages` VALUES ('514', 'Swati');
INSERT INTO `languages` VALUES ('515', 'Sweden kasa');
INSERT INTO `languages` VALUES ('516', 'Swiss French');
INSERT INTO `languages` VALUES ('517', 'Swiss German');
INSERT INTO `languages` VALUES ('518', 'Swiss High German');
INSERT INTO `languages` VALUES ('519', 'Syriac');
INSERT INTO `languages` VALUES ('520', 'Tachelhit');
INSERT INTO `languages` VALUES ('521', 'Taeland kasa');
INSERT INTO `languages` VALUES ('522', 'Tagalog');
INSERT INTO `languages` VALUES ('523', 'Tahitian');
INSERT INTO `languages` VALUES ('524', 'Taita');
INSERT INTO `languages` VALUES ('525', 'Tajik');
INSERT INTO `languages` VALUES ('526', 'Talysh');
INSERT INTO `languages` VALUES ('527', 'Tamashek');
INSERT INTO `languages` VALUES ('528', 'Tamil kasa');
INSERT INTO `languages` VALUES ('529', 'Taroko');
INSERT INTO `languages` VALUES ('530', 'Tasawaq');
INSERT INTO `languages` VALUES ('531', 'Tatar');
INSERT INTO `languages` VALUES ('532', 'Telugu');
INSERT INTO `languages` VALUES ('533', 'Tereno');
INSERT INTO `languages` VALUES ('534', 'Teso');
INSERT INTO `languages` VALUES ('535', 'Tetum');
INSERT INTO `languages` VALUES ('536', 'Tɛɛki kasa');
INSERT INTO `languages` VALUES ('537', 'Tibetan');
INSERT INTO `languages` VALUES ('538', 'Tigre');
INSERT INTO `languages` VALUES ('539', 'Tigrinya');
INSERT INTO `languages` VALUES ('540', 'Timne');
INSERT INTO `languages` VALUES ('541', 'Tiv');
INSERT INTO `languages` VALUES ('542', 'Tlingit');
INSERT INTO `languages` VALUES ('543', 'Tok Pisin');
INSERT INTO `languages` VALUES ('544', 'Tokelau');
INSERT INTO `languages` VALUES ('545', 'Tongan');
INSERT INTO `languages` VALUES ('546', 'Tornedalen Finnish');
INSERT INTO `languages` VALUES ('547', 'Traditional Chinese');
INSERT INTO `languages` VALUES ('548', 'Tsakhur');
INSERT INTO `languages` VALUES ('549', 'Tsakonian');
INSERT INTO `languages` VALUES ('550', 'Tsimshian');
INSERT INTO `languages` VALUES ('551', 'Tsonga');
INSERT INTO `languages` VALUES ('552', 'Tswana');
INSERT INTO `languages` VALUES ('553', 'Tulu');
INSERT INTO `languages` VALUES ('554', 'Tumbuka');
INSERT INTO `languages` VALUES ('555', 'Tunisian Arabic');
INSERT INTO `languages` VALUES ('556', 'Turkmen');
INSERT INTO `languages` VALUES ('557', 'Turoyo');
INSERT INTO `languages` VALUES ('558', 'Tuvalu');
INSERT INTO `languages` VALUES ('559', 'Tuvinian');
INSERT INTO `languages` VALUES ('560', 'Twi');
INSERT INTO `languages` VALUES ('561', 'Tyap');
INSERT INTO `languages` VALUES ('562', 'Udmurt');
INSERT INTO `languages` VALUES ('563', 'Ugaritic');
INSERT INTO `languages` VALUES ('564', 'Ukren kasa');
INSERT INTO `languages` VALUES ('565', 'Umbundu');
INSERT INTO `languages` VALUES ('566', 'Unknown Language');
INSERT INTO `languages` VALUES ('567', 'Upper Sorbian');
INSERT INTO `languages` VALUES ('568', 'Urdu kasa');
INSERT INTO `languages` VALUES ('569', 'Uyghur');
INSERT INTO `languages` VALUES ('570', 'Uzbek');
INSERT INTO `languages` VALUES ('571', 'Vai');
INSERT INTO `languages` VALUES ('572', 'Venda');
INSERT INTO `languages` VALUES ('573', 'Venetian');
INSERT INTO `languages` VALUES ('574', 'Veps');
INSERT INTO `languages` VALUES ('575', 'Viɛtnam kasa');
INSERT INTO `languages` VALUES ('576', 'Volapük');
INSERT INTO `languages` VALUES ('577', 'Võro');
INSERT INTO `languages` VALUES ('578', 'Votic');
INSERT INTO `languages` VALUES ('579', 'Vunjo');
INSERT INTO `languages` VALUES ('580', 'Walloon');
INSERT INTO `languages` VALUES ('581', 'Walser');
INSERT INTO `languages` VALUES ('582', 'Waray');
INSERT INTO `languages` VALUES ('583', 'Warlpiri');
INSERT INTO `languages` VALUES ('584', 'Washo');
INSERT INTO `languages` VALUES ('585', 'Wayuu');
INSERT INTO `languages` VALUES ('586', 'Welsh');
INSERT INTO `languages` VALUES ('587', 'West Flemish');
INSERT INTO `languages` VALUES ('588', 'Western Frisian');
INSERT INTO `languages` VALUES ('589', 'Western Mari');
INSERT INTO `languages` VALUES ('590', 'Wolaytta');
INSERT INTO `languages` VALUES ('591', 'Wolof');
INSERT INTO `languages` VALUES ('592', 'Wu Chinese');
INSERT INTO `languages` VALUES ('593', 'Xhosa');
INSERT INTO `languages` VALUES ('594', 'Xiang Chinese');
INSERT INTO `languages` VALUES ('595', 'Yangben');
INSERT INTO `languages` VALUES ('596', 'Yao');
INSERT INTO `languages` VALUES ('597', 'Yapese');
INSERT INTO `languages` VALUES ('598', 'Yemba');
INSERT INTO `languages` VALUES ('599', 'Yiddish');
INSERT INTO `languages` VALUES ('600', 'Yoruba');
INSERT INTO `languages` VALUES ('601', 'Zapotec');
INSERT INTO `languages` VALUES ('602', 'Zarma');
INSERT INTO `languages` VALUES ('603', 'Zaza');
INSERT INTO `languages` VALUES ('604', 'Zeelandic');
INSERT INTO `languages` VALUES ('605', 'Zenaga');
INSERT INTO `languages` VALUES ('606', 'Zhuang');
INSERT INTO `languages` VALUES ('607', 'Zoroastrian Dari');
INSERT INTO `languages` VALUES ('608', 'Zulu');
INSERT INTO `languages` VALUES ('609', 'Zuni');

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES ('1', '2014_10_12_000000_create_users_table', '1');
INSERT INTO `migrations` VALUES ('2', '2014_10_12_100000_create_password_resets_table', '1');
INSERT INTO `migrations` VALUES ('3', '2019_08_19_000000_create_failed_jobs_table', '1');
INSERT INTO `migrations` VALUES ('4', '2013_11_26_161501_create_currency_table', '2');

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of password_resets
-- ----------------------------

-- ----------------------------
-- Table structure for practice
-- ----------------------------
DROP TABLE IF EXISTS `practice`;
CREATE TABLE `practice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `published` tinyint(4) DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of practice
-- ----------------------------
INSERT INTO `practice` VALUES ('1', 'Holistic Doctor', '1');
INSERT INTO `practice` VALUES ('2', 'Nurse', '1');
INSERT INTO `practice` VALUES ('3', 'Psychologists', '1');
INSERT INTO `practice` VALUES ('4', 'Chinese Medicine', '1');
INSERT INTO `practice` VALUES ('5', 'Acupuncture', '1');
INSERT INTO `practice` VALUES ('6', 'Physical therapy', '1');
INSERT INTO `practice` VALUES ('7', 'Osteopathy', '1');
INSERT INTO `practice` VALUES ('8', 'Traditional Chinese medicine', '1');
INSERT INTO `practice` VALUES ('9', 'Naturopathic doctor', '1');
INSERT INTO `practice` VALUES ('10', 'Nutirtionist', '1');
INSERT INTO `practice` VALUES ('11', 'Holistic Nutritionist', '1');
INSERT INTO `practice` VALUES ('12', 'Hypnotherapy', '1');
INSERT INTO `practice` VALUES ('13', 'Homeopathy', '1');
INSERT INTO `practice` VALUES ('14', 'Biofeedback', '1');
INSERT INTO `practice` VALUES ('15', 'Somatic experiencing', '1');
INSERT INTO `practice` VALUES ('16', 'Integrative medicine', '1');
INSERT INTO `practice` VALUES ('17', 'Midwifery', '1');
INSERT INTO `practice` VALUES ('18', 'Career Coaching', '1');
INSERT INTO `practice` VALUES ('19', 'Life Coaching', '1');
INSERT INTO `practice` VALUES ('20', 'Yoga', '1');
INSERT INTO `practice` VALUES ('21', 'Aromatherapy', '1');
INSERT INTO `practice` VALUES ('22', 'Herbalists', '1');
INSERT INTO `practice` VALUES ('23', 'Anesthesiology', '1');
INSERT INTO `practice` VALUES ('24', 'Allergy and immunology', '1');

-- ----------------------------
-- Table structure for practitioner
-- ----------------------------
DROP TABLE IF EXISTS `practitioner`;
CREATE TABLE `practitioner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(30) DEFAULT NULL,
  `last_name` varchar(30) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `phone_number` varchar(30) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  `city_id` int(11) DEFAULT NULL,
  `address` varchar(255) DEFAULT '',
  `time_zone` varchar(10) DEFAULT '',
  `practice_id` int(255) DEFAULT NULL,
  `speciality_id` int(11) DEFAULT NULL,
  `price_selection` enum('hourly','packages') DEFAULT 'hourly',
  `mode_of_delivery` enum('virtual','in_persion') DEFAULT 'virtual',
  `id_or_passport` int(11) DEFAULT NULL,
  `certifications_licensing` int(11) DEFAULT NULL,
  `additional_document` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `status` enum('validation','rejected','active','disabled') DEFAULT 'validation',
  `gender` enum('Male','Famale','Other') DEFAULT NULL,
  `rate` int(11) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `services` longtext DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of practitioner
-- ----------------------------
INSERT INTO `practitioner` VALUES ('1', 'Jon1', 'Smith', 'jon.smith@gmail.com', '7754545411', null, null, '1', '2', 'asdasd', '+4', '10', '4', 'hourly', 'virtual', null, null, null, '2021-03-31 16:01:54', '2021-03-31 16:01:54', 'validation', null, null, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', null);
INSERT INTO `practitioner` VALUES ('2', 'Jon2', 'Smith', 'jon.smith@gmail.com', '7754545411', null, null, '1', '3', 'asdasd', '+4', '10', '4', 'hourly', 'virtual', null, null, null, '2021-03-26 10:54:13', '2021-03-26 10:54:13', 'validation', null, null, null, null);
INSERT INTO `practitioner` VALUES ('3', 'Jon3', 'Smith', 'jon.smith@gmail.com', '7754545411', null, null, '1', '1', 'asdasd', '+4', '8', '4', 'hourly', 'virtual', null, null, null, '2021-03-26 10:54:38', '2021-03-26 10:54:38', 'validation', null, null, null, null);
INSERT INTO `practitioner` VALUES ('4', 'Jon4', 'Smith', 'jon.smith@gmail.com', '7754545411', null, null, '1', '1', 'asdasd', '+4', '10', '4', 'hourly', 'virtual', null, null, null, '2021-03-26 10:29:34', '2021-03-26 10:29:34', 'validation', null, null, null, null);
INSERT INTO `practitioner` VALUES ('5', 'Jon5', 'Smith', 'jon.smith@gmail.com', '7754545411', null, null, '1', '1', 'asdasd', '+4', '10', '4', 'hourly', 'virtual', null, null, null, '2021-03-26 10:29:33', '2021-03-26 10:29:33', 'validation', null, null, null, null);
INSERT INTO `practitioner` VALUES ('6', 'Jon6', 'Smith', 'jon.smith@gmail.com', '7754545411', null, null, '1', '1', 'asdasd', '+4', '10', '1', 'hourly', 'virtual', null, null, null, '2021-03-26 10:54:48', '2021-03-26 10:54:48', 'validation', null, null, null, null);
INSERT INTO `practitioner` VALUES ('7', 'Jon7', 'Smith', 'jon.smith@gmail.com', '7754545411', null, null, '1', '1', 'asdasd', '+4', '10', '4', 'hourly', 'virtual', null, null, null, '2021-03-26 10:29:31', '2021-03-26 10:29:31', 'validation', null, null, null, null);
INSERT INTO `practitioner` VALUES ('8', 'Jon8', 'Smith', 'jon.smith@gmail.com', '7754545411', null, null, '1', '1', 'asdasd', '+4', '7', '4', 'hourly', 'virtual', null, null, null, '2021-03-26 10:54:41', '2021-03-26 10:54:41', 'validation', null, null, null, null);
INSERT INTO `practitioner` VALUES ('9', 'Jon9', 'Smith', 'jon.smith@gmail.com', '7754545411', null, null, '1', '1', 'asdasd', '+4', '10', '4', 'hourly', 'virtual', null, null, null, '2021-03-26 10:29:28', '2021-03-26 10:29:28', 'validation', null, null, null, null);
INSERT INTO `practitioner` VALUES ('10', 'Jon10', 'Smith', 'jon.smith@gmail.com', '7754545411', null, null, '1', '1', 'asdasd', '+4', '10', '4', 'hourly', 'virtual', null, null, null, '2021-03-26 10:29:27', '2021-03-26 10:29:27', 'validation', null, null, null, null);
INSERT INTO `practitioner` VALUES ('11', 'Jon11', 'Smith', 'jon.smith@gmail.com', '7754545411', null, null, '1', '1', 'asdasd', '+4', '10', '2', 'hourly', 'virtual', null, null, null, '2021-04-02 12:37:44', '2021-04-02 08:37:44', 'rejected', null, null, null, null);
INSERT INTO `practitioner` VALUES ('12', 'Jon12', 'Smith', 'jon.smith@gmail.com', '7754545411', null, null, '1', '1', 'asdasd', '+4', '10', '4', 'hourly', 'virtual', null, null, null, '2021-04-08 17:02:54', '2021-04-08 13:02:54', 'active', 'Male', '4', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'a:3:{i:0;a:4:{s:5:\"title\";s:14:\"Services title\";s:5:\"price\";s:4:\"2100\";s:6:\"points\";a:5:{i:0;s:25:\"lorem ipsum dolar si amun\";i:1;s:25:\"lorem ipsum dolar si amun\";i:2;s:25:\"lorem ipsum dolar si amun\";i:3;s:25:\"lorem ipsum dolar si amun\";i:4;s:25:\"lorem ipsum dolar si amun\";}s:7:\"session\";a:2:{i:0;s:14:\"60 min consult\";i:1;s:19:\"30 minute follow up\";}}i:1;a:4:{s:5:\"title\";s:16:\"Services title 1\";s:5:\"price\";s:4:\"2100\";s:6:\"points\";a:4:{i:0;s:25:\"lorem ipsum dolar si amun\";i:1;s:25:\"lorem ipsum dolar si amun\";i:2;s:25:\"lorem ipsum dolar si amun\";i:3;s:25:\"lorem ipsum dolar si amun\";}s:7:\"session\";a:2:{i:0;s:14:\"60 min consult\";i:1;s:19:\"30 minute follow up\";}}i:2;a:4:{s:5:\"title\";s:15:\"Services testtt\";s:5:\"price\";s:4:\"2100\";s:6:\"points\";a:6:{i:0;s:25:\"lorem ipsum dolar si amun\";i:1;s:25:\"lorem ipsum dolar si amun\";i:2;s:25:\"lorem ipsum dolar si amun\";i:3;s:25:\"lorem ipsum dolar si amun\";i:4;s:25:\"lorem ipsum dolar si amun\";i:5;s:25:\"lorem ipsum dolar si amun\";}s:7:\"session\";a:2:{i:0;s:14:\"60 min consult\";i:1;s:19:\"30 minute follow up\";}}}');

-- ----------------------------
-- Table structure for practitioner_lang_rel
-- ----------------------------
DROP TABLE IF EXISTS `practitioner_lang_rel`;
CREATE TABLE `practitioner_lang_rel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `practitioner_id` int(11) DEFAULT NULL,
  `lang_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of practitioner_lang_rel
-- ----------------------------
INSERT INTO `practitioner_lang_rel` VALUES ('1', '12', '1');
INSERT INTO `practitioner_lang_rel` VALUES ('2', '12', '6');
INSERT INTO `practitioner_lang_rel` VALUES ('3', '12', '42');

-- ----------------------------
-- Table structure for reviews
-- ----------------------------
DROP TABLE IF EXISTS `reviews`;
CREATE TABLE `reviews` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `practitoner_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `rate` int(11) DEFAULT NULL,
  `description` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of reviews
-- ----------------------------
INSERT INTO `reviews` VALUES ('1', '12', '1', '2021-03-30', '3', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.');
INSERT INTO `reviews` VALUES ('2', '12', '2', '2021-03-30', '4', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.');
INSERT INTO `reviews` VALUES ('3', '12', '3', '2021-03-30', '0', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.');

-- ----------------------------
-- Table structure for specialities
-- ----------------------------
DROP TABLE IF EXISTS `specialities`;
CREATE TABLE `specialities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `published` tinyint(4) DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of specialities
-- ----------------------------
INSERT INTO `specialities` VALUES ('1', 'Test1', '1');
INSERT INTO `specialities` VALUES ('2', 'Post-natal', '1');
INSERT INTO `specialities` VALUES ('3', 'Mental Health', '1');
INSERT INTO `specialities` VALUES ('4', 'Child Health', '1');
INSERT INTO `specialities` VALUES ('5', 'Skin', '1');
INSERT INTO `specialities` VALUES ('6', 'Digestion', '1');
INSERT INTO `specialities` VALUES ('7', 'Care', '1');
INSERT INTO `specialities` VALUES ('8', 'Sports care', '1');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(30) CHARACTER SET utf8 DEFAULT '',
  `last_name` varchar(30) CHARACTER SET utf8 DEFAULT '',
  `phone_number` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `gender` enum('Male','Famale','Other') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'Jon', 'Smith', '7770115454', 'test@gmail.com', '0000-00-00 00:00:00', 'Male', '$2y$10$E2E2oFhrKlWY7nvhbVxDROXgTNNpy/V0Zx.rxcLxJsS05BXQnkzr6', null, '2021-04-01 13:32:24', null);

-- ----------------------------
-- Table structure for user_lang_rel
-- ----------------------------
DROP TABLE IF EXISTS `user_lang_rel`;
CREATE TABLE `user_lang_rel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `lang_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_lang_rel
-- ----------------------------
INSERT INTO `user_lang_rel` VALUES ('1', '1', '1');
INSERT INTO `user_lang_rel` VALUES ('2', '1', '6');
INSERT INTO `user_lang_rel` VALUES ('3', '1', '42');

-- ----------------------------
-- Table structure for working_time
-- ----------------------------
DROP TABLE IF EXISTS `working_time`;
CREATE TABLE `working_time` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `practitioner_id` int(11) DEFAULT NULL,
  `from` time DEFAULT NULL,
  `to` time DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of working_time
-- ----------------------------
INSERT INTO `working_time` VALUES ('1', '12', '00:00:00', '00:00:00');
SET FOREIGN_KEY_CHECKS=1;
