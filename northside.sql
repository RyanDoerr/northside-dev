-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 01, 2016 at 08:29 AM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `northside`
--

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE IF NOT EXISTS `address` (
  `address_id` int(11) NOT NULL,
  `street_number` int(11) NOT NULL,
  `street_suffix` varchar(10) DEFAULT NULL,
  `street_name` varchar(35) NOT NULL,
  `street_type` varchar(15) NOT NULL,
  `street_direction` varchar(2) DEFAULT NULL,
  `address_type` varchar(20) NOT NULL,
  `address_type_identifier` varchar(10) DEFAULT NULL,
  `minor_municipality` varchar(35) DEFAULT NULL,
  `major_municipality` varchar(35) NOT NULL,
  `governing_district` varchar(35) NOT NULL,
  `zip` varchar(16) NOT NULL,
  `iso_country_code` char(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `address`
--

INSERT INTO `address` (`address_id`, `street_number`, `street_suffix`, `street_name`, `street_type`, `street_direction`, `address_type`, `address_type_identifier`, `minor_municipality`, `major_municipality`, `governing_district`, `zip`, `iso_country_code`) VALUES
(1000, 9150912, 'NULL', ''' ''', ''' ''', 'NU', ''' \r\n\r\n''', 'house', 'NULL', 'Ipís', 'SJ', '911224', 'Ni'),
(1001, 8694875, 'NULL', ''' \r\n\r\n''', ''' ''', 'NU', ''' \r\n\r\n''', 'house', 'NULL', 'Dannevirke', 'NI', '11306', 'Lu'),
(1002, 8445582, 'NULL', ''' ''', ''' ''', 'NU', ''' \r\n\r\n''', 'house', 'NULL', 'Okene', 'Kogi', '33019', 'Sw'),
(1003, 6563944, 'NULL', ''' \r\n\r\n''', ''' ''', 'NU', ''' ''', 'house', 'NULL', 'Brahmapur', 'OR', '39601', 'Al'),
(1004, 3483614, 'NULL', ''' ''', ''' ''', 'NU', ''' \r\n\r\n''', 'house', 'NULL', 'Casablanca', 'V', '905917', 'Ma'),
(1005, 4428757, 'NULL', ''' ''', ''' ''', 'NU', ''' \r\n\r\n''', 'house', 'NULL', 'Forio', 'CAM', '17578', 'Al'),
(1006, 2009158, 'NULL', ''' \r\n\r\n''', ''' ''', 'NU', ''' ''', 'house', 'NULL', 'St. Paul', 'Alberta', '73-\r\n\r\n155', 'Le'),
(1007, 7016200, 'NULL', ''' ''', ''' ''', 'NU', ''' \r\n\r\n''', 'house', 'NULL', 'Bremerhaven', 'Bremen', '693113', 'Ca'),
(1008, 3891181, 'NULL', ''' ''', ''' ''', 'NU', ''' \r\n\r\n''', 'house', 'NULL', 'Wedel', 'SL', '7084', 'No'),
(1009, 6265331, 'NULL', ''' ''', ''' ''', 'NU', ''' \r\n\r\n''', 'house', 'NULL', 'Cleveland', 'OH', '28108-791', 'Ch'),
(1010, 2296211, 'NULL', ''' ''', ''' ''', 'NU', ''' ''', 'house', 'NULL', 'Issy-les-\r\n\r\nMoulineaux', 'Île-de-France', '55530', 'Vi'),
(1011, 8085368, 'NULL', ''' ''', ''' ''', 'NU', ''' \r\n\r\n''', 'house', 'NULL', 'Goes', 'Zeeland', '21818', 'Un'),
(1012, 4895088, 'NULL', ''' ''', ''' ''', 'NU', ''' ''', 'house', 'NULL', 'Ribeirão \r\n\r\nPreto', 'São Paulo', '3555', 'Hu'),
(1013, 595197, 'NULL', ''' ''', ''' \r\n\r\n''', 'NU', ''' ''', 'house', 'NULL', 'Istanbul', 'Istanbul', '11-903', 'Ic'),
(1014, 1275819, 'NULL', ''' ''', ''' ''', 'NU', ''' \r\n\r\n''', 'house', 'NULL', 'Cobourg', 'ON', 'YT6X 5AH', 'Si'),
(1015, 7792707, 'NULL', ''' ''', ''' ''', 'NU', ''' \r\n\r\n''', 'house', 'NULL', 'Adana', 'Adana', '76123', 'Ta'),
(1016, 2233230, 'NULL', ''' \r\n\r\n''', ''' ''', 'NU', ''' ''', 'house', 'NULL', 'Sankt Johann im \r\n\r\nPongau', 'Salzburg', '35873', 'Ba'),
(1017, 9128289, 'NULL', ''' ''', ''' \r\n\r\n''', 'NU', ''' ''', 'house', 'NULL', 'Madison', 'WI', '920274', 'Gu'),
(1018, 8289378, 'NULL', ''' ''', ''' ''', 'NU', ''' \r\n\r\n''', 'house', 'NULL', 'Tumba', 'AB', '70303', 'Co'),
(1019, 9965023, 'NULL', ''' ''', ''' ''', 'NU', ''' ''', 'house', 'NULL', 'Dera \r\n\r\nGhazi Khan', 'PB', '57805', 'Ru'),
(1020, 5322150, 'NULL', ''' ''', ''' ''', 'NU', ''' ''', 'house', 'NULL', 'Grand \r\n\r\nRapids', 'MI', '19441', 'Ir'),
(1021, 1433812, 'NULL', ''' ''', ''' ''', 'NU', ''' \r\n\r\n''', 'house', 'NULL', 'Täby', 'AB', '643007', 'Vi'),
(1022, 4616537, 'NULL', ''' ''', ''' ''', 'NU', ''' \r\n\r\n''', 'house', 'NULL', 'Pietracatella', 'MOL', '41779', 'Mo'),
(1023, 2512546, 'NULL', ''' ''', ''' ''', 'NU', ''' \r\n\r\n''', 'house', 'NULL', 'Hattiesburg', 'MS', '8640WK', 'Co'),
(1024, 6189743, 'NULL', ''' ''', ''' ''', 'NU', ''' \r\n\r\n''', 'house', 'NULL', 'Zapallar', 'V', '2586', 'Ko'),
(1025, 265036, 'NULL', ''' ''', ''' ''', 'NU', ''' \r\n\r\n''', 'house', 'NULL', 'Bauchi', 'Bauchi', '9137', 'Sa'),
(1026, 3120008, 'NULL', ''' \r\n\r\n''', ''' ''', 'NU', ''' \r\n\r\n''', 'house', 'NULL', 'Stroud', 'Gloucestershire', '18811', 'Va'),
(1027, 1334832, 'NULL', ''' ''', ''' ''', 'NU', ''' \r\n\r\n''', 'house', 'NULL', 'Vienna', 'Vienna', '293514', 'Li'),
(1028, 1835059, 'NULL', ''' \r\n\r\n''', ''' ''', 'NU', ''' ''', 'house', 'NULL', 'Benalla', 'Victoria', '64199', 'Je'),
(1029, 1871496, 'NULL', ''' ''', ''' ''', 'NU', ''' \r\n\r\n''', 'house', 'NULL', 'Lansing', 'Michigan', '91250', 'Ir'),
(1030, 3840139, 'NULL', ''' ''', ''' ''', 'NU', ''' \r\n\r\n''', 'house', 'NULL', 'Norfolk', 'VA', 'G5S 9J0', 'Uz'),
(1031, 7200785, 'NULL', ''' ''', ''' ''', 'NU', ''' ''', 'house', 'NULL', 'Créteil', 'Île-\r\n\r\nde-France', '1236', 'Ki'),
(1032, 3397262, 'NULL', ''' ''', ''' ''', 'NU', ''' \r\n\r\n''', 'house', 'NULL', 'Joinville', 'Santa Catarina', '843756', 'Ba'),
(1033, 3373406, 'NULL', ''' ''', ''' ''', 'NU', ''' ''', 'house', 'NULL', 'Grafton', 'New \r\n\r\nSouth Wales', '99610', 'In'),
(1034, 2949586, 'NULL', ''' ''', ''' ''', 'NU', ''' \r\n\r\n''', 'house', 'NULL', 'Porretta Terme', 'ERM', '35095-352', 'Qa'),
(1035, 4874212, 'NULL', ''' ''', ''' ''', 'NU', ''' ''', 'house', 'NULL', 'Oxford \r\n\r\nCounty', 'ON', '4471XB', 'Ma'),
(1036, 4765105, 'NULL', ''' ''', ''' ''', 'NU', ''' \r\n\r\n''', 'house', 'NULL', 'Zapallar', 'Valparaíso', '58-801', 'Be'),
(1037, 2333343, 'NULL', ''' ''', ''' ''', 'NU', ''' \r\n\r\n''', 'house', 'NULL', 'Quesada', 'Alajuela', '83527', 'Ga'),
(1038, 521888, 'NULL', ''' ''', ''' ''', 'NU', ''' \r\n\r\n''', 'house', 'NULL', 'Patan', 'GJ', '59564', 'Re'),
(1039, 8036508, 'NULL', ''' \r\n\r\n''', ''' ''', 'NU', ''' ''', 'house', 'NULL', 'Elbl?g', 'WM', '60001', 'Es'),
(1040, 7793044, 'NULL', ''' ''', ''' ''', 'NU', ''' \r\n\r\n''', 'house', 'NULL', 'Genk', 'L.', '97981', 'Jo'),
(1041, 6300272, 'NULL', ''' ''', ''' \r\n\r\n''', 'NU', ''' ''', 'house', 'NULL', 'Tranent', 'East Lothian', '1878', 'Ma'),
(1042, 8423141, 'NULL', ''' ''', ''' ''', 'NU', ''' ''', 'house', 'NULL', 'San \r\n\r\nMiguel', 'San José', '2529', 'Co'),
(1043, 2759578, 'NULL', ''' ''', ''' \r\n\r\n''', 'NU', ''' ''', 'house', 'NULL', 'Adana', 'Ada', '6067', 'Vi'),
(1044, 515411, 'NULL', ''' ''', ''' ''', 'NU', ''' \r\n\r\n''', 'house', 'NULL', 'Portree', 'Inverness-shire', '60761', 'Ni'),
(1045, 1311982, 'NULL', ''' ''', ''' ''', 'NU', ''' \r\n\r\n''', 'house', 'NULL', 'Sosnowiec', 'Sl?skie', '41-516', 'Gr'),
(1046, 7185875, 'NULL', ''' ''', ''' ''', 'NU', ''' \r\n\r\n''', 'house', 'NULL', 'Orilla', 'ON', '5137RX', 'Mi'),
(1047, 2108241, 'NULL', ''' ''', ''' ''', 'NU', ''' \r\n\r\n''', 'house', 'NULL', 'Fresno', 'CA', '674054', 'Pa'),
(1048, 73467, 'NULL', ''' \r\n\r\n''', ''' ''', 'NU', ''' ''', 'house', 'NULL', 'Vienna', 'Vienna', '34-162', 'Al'),
(1049, 9192063, 'NULL', ''' ''', ''' ''', 'NU', ''' \r\n\r\n''', 'house', 'NULL', 'Motala', 'Östergötlands län', '41703', 'Ca'),
(1050, 8172802, 'NULL', ''' ''', ''' ''', 'NU', ''' \r\n\r\n''', 'house', 'NULL', 'Oviedo', 'Principado de Asturias', '352801', 'Ko'),
(1051, 5373320, 'NULL', ''' ''', ''' ''', 'NU', ''' \r\n\r\n''', 'house', 'NULL', 'Oss', 'Noord Brabant', '3366BU', 'Mo'),
(1052, 4658652, 'NULL', ''' ''', ''' ''', 'NU', ''' \r\n\r\n''', 'house', 'NULL', 'Greymouth', 'SI', '6096', 'Co'),
(1053, 8050688, 'NULL', ''' \r\n\r\n''', ''' ''', 'NU', ''' \r\n\r\n''', 'house', 'NULL', 'Gaziantep', 'Gaziantep', '4408', 'Su'),
(1054, 7872440, 'NULL', ''' ''', ''' ''', 'NU', ''' \r\n\r\n''', 'house', 'NULL', 'Gore', 'SI', '00164', 'Co'),
(1055, 8331369, 'NULL', ''' \r\n\r\n''', ''' ''', 'NU', ''' ''', 'house', 'NULL', 'Wetteren', 'Oost-\r\n\r\nVlaanderen', '84103', 'Ve'),
(1056, 8954646, 'NULL', ''' ''', ''' ''', 'NU', ''' \r\n\r\n''', 'house', 'NULL', 'Orlando', 'FL', '60597', 'Ce'),
(1057, 8158505, 'NULL', ''' ''', ''' ''', 'NU', ''' \r\n\r\n''', 'house', 'NULL', 'Katsina', 'Katsina', '87317', 'Sa'),
(1058, 4865126, 'NULL', ''' ''', ''' ''', 'NU', ''' ''', 'house', 'NULL', 'Grande \r\n\r\nPrairie', 'Alberta', '8461', 'Co'),
(1059, 6017390, 'NULL', ''' \r\n\r\n''', ''' ''', 'NU', ''' ''', 'house', 'NULL', 'Durgapur', 'WB', '02640-\r\n\r\n225', 'Ka'),
(1060, 1762336, 'NULL', ''' ''', ''' ''', 'NU', ''' \r\n\r\n''', 'house', 'NULL', 'Gävle', 'Gävleborgs län', '61518', 'An'),
(1061, 4669417, 'NULL', ''' ''', ''' ''', 'NU', ''' ''', 'house', 'NULL', 'San José de \r\n\r\nAlajuela', 'A', '16014', 'Mo'),
(1062, 8193018, 'NULL', ''' ''', ''' \r\n\r\n''', 'NU', ''' ''', 'house', 'NULL', 'Ballarat', 'VIC', 'R76 4JS', 'Gr'),
(1063, 5874045, 'NULL', ''' ''', ''' ''', 'NU', ''' \r\n\r\n''', 'house', 'NULL', 'Vienna', 'Vienna', '45920', 'Ba'),
(1064, 6971027, 'NULL', ''' ''', ''' ''', 'NU', ''' \r\n\r\n''', 'house', 'NULL', 'Putre', 'XV', '5085', 'Fa'),
(1065, 519673, 'NULL', ''' \r\n\r\n''', ''' ''', 'NU', ''' ''', 'house', 'NULL', 'Kano', 'KN', '5008', 'Br'),
(1066, 271089, 'NULL', ''' ''', ''' ''', 'NU', ''' \r\n\r\n''', 'house', 'NULL', 'Memphis', 'Tennessee', '01-581', 'Ba'),
(1067, 9835719, 'NULL', ''' ''', ''' ''', 'NU', ''' ''', 'house', 'NULL', 'Mata de \r\n\r\nPlátano', 'San José', '68284', 'Ph'),
(1068, 3623717, 'NULL', ''' ''', ''' \r\n\r\n''', 'NU', ''' ''', 'house', 'NULL', 'Akron', 'Ohio', '14751', 'Fr'),
(1069, 8963074, 'NULL', ''' ''', ''' ''', 'NU', ''' \r\n\r\n''', 'house', 'NULL', 'New Plymouth', 'NI', '52210', 'So'),
(1070, 3335163, 'NULL', ''' ''', ''' ''', 'NU', ''' \r\n\r\n''', 'house', 'NULL', 'Dublin', 'L', '6240', 'Ca'),
(1071, 6347788, 'NULL', ''' ''', ''' ''', 'NU', ''' \r\n\r\n''', 'house', 'NULL', 'Tarzo', 'VEN', '591046', 'Bo'),
(1072, 7899175, 'NULL', ''' \r\n\r\n''', ''' ''', 'NU', ''' ''', 'house', 'NULL', 'San Zenone degli \r\n\r\nEzzelini', 'VEN', '55726', 'Vi'),
(1073, 2168961, 'NULL', ''' \r\n\r\n''', ''' ''', 'NU', ''' \r\n\r\n''', 'house', 'NULL', 'Arnhem', 'Gelderland', '7629', 'Gu'),
(1074, 8031740, 'NULL', ''' ''', ''' ''', 'NU', ''' ''', 'house', 'NULL', 'East \r\n\r\nLinton', 'EL', '37171-050', 'Gu'),
(1075, 2611326, 'NULL', ''' ''', ''' \r\n\r\n''', 'NU', ''' ''', 'house', 'NULL', 'Breda', 'N.', '61089', 'Ne'),
(1076, 1620352, 'NULL', ''' ''', ''' ''', 'NU', ''' \r\n\r\n''', 'house', 'NULL', 'Bremerhaven', 'Bremen', '34462', 'Ma'),
(1077, 9852582, 'NULL', ''' ''', ''' ''', 'NU', ''' \r\n\r\n''', 'house', 'NULL', 'Dublin', 'Leinster', '7804AT', 'Ke'),
(1078, 5318170, 'NULL', ''' ''', ''' ''', 'NU', ''' \r\n\r\n''', 'house', 'NULL', 'Flushing', 'Zeeland', '1198', 'Ch'),
(1079, 4119464, 'NULL', ''' ''', ''' ''', 'NU', ''' \r\n\r\n''', 'house', 'NULL', 'Kobbegem', 'VB', '41551', 'Pi'),
(1080, 3356111, 'NULL', ''' ''', ''' ''', 'NU', ''' \r\n\r\n''', 'house', 'NULL', 'Lowell', 'MA', '4885', 'Tu'),
(1081, 1118202, 'NULL', ''' ''', ''' ''', 'NU', ''' ''', 'house', 'NULL', 'Jelenia \r\n\r\nGóra', 'DS', 'YV69 1ON', 'Er'),
(1082, 6174373, 'NULL', ''' ''', ''' ''', 'NU', ''' \r\n\r\n''', 'house', 'NULL', 'S?upsk', 'Pomorskie', '58341', 'Ni'),
(1083, 7425787, 'NULL', ''' ''', ''' ''', 'NU', ''' \r\n\r\n''', 'house', 'NULL', 'Chesapeake', 'VA', '565577', 'Si'),
(1084, 7707902, 'NULL', ''' ''', ''' ''', 'NU', ''' ''', 'house', 'NULL', 'Cerro \r\n\r\nNavia', 'Metropolitana de Santiago', 'P9A 0NS', 'Ca'),
(1085, 5226807, 'NULL', ''' ''', ''' ''', 'NU', ''' \r\n\r\n''', 'house', 'NULL', 'Tirrases', 'SJ', '3976', 'Va'),
(1086, 9680884, 'NULL', ''' \r\n\r\n''', ''' ''', 'NU', ''' ''', 'house', 'NULL', 'Seydi?ehir', 'Kon', '029194', 'Fr'),
(1087, 9512672, 'NULL', ''' ''', ''' ''', 'NU', ''' \r\n\r\n''', 'house', 'NULL', 'Inverurie', 'Aberdeenshire', '19874', 'Br'),
(1088, 7891610, 'NULL', ''' ''', ''' ''', 'NU', ''' \r\n\r\n''', 'house', 'NULL', 'Secunderabad', 'AP', '12536', 'Br'),
(1089, 4364756, 'NULL', ''' ''', ''' ''', 'NU', ''' ''', 'house', 'NULL', 'Saint-\r\n\r\nHerblain', 'Pays de la Loire', '60870', 'Su'),
(1090, 3219433, 'NULL', ''' ''', ''' ''', 'NU', ''' \r\n\r\n''', 'house', 'NULL', 'Richmond', 'Virginia', '85448', 'Le'),
(1091, 6084296, 'NULL', ''' ''', ''' ''', 'NU', ''' \r\n\r\n''', 'house', 'NULL', 'Istanbul', 'Istanbul', '119161', 'Lu'),
(1092, 3490583, 'NULL', ''' ''', ''' ''', 'NU', ''' \r\n\r\n''', 'house', 'NULL', 'Lewiston', 'Maine', '4064', 'Re'),
(1093, 7601845, 'NULL', ''' ''', ''' ''', 'NU', ''' \r\n\r\n''', 'house', 'NULL', 'Huesca', 'Aragón', '5020', 'Gu'),
(1094, 8740500, 'NULL', ''' ''', ''' ''', 'NU', ''' \r\n\r\n''', 'house', 'NULL', 'Alajuela', 'A', '34740-666', 'Ca'),
(1095, 3555247, 'NULL', ''' ''', ''' ''', 'NU', ''' \r\n\r\n''', 'house', 'NULL', 'Vienna', 'Wie', '69009', 'Cz'),
(1096, 2333566, 'NULL', ''' ''', ''' ''', 'NU', ''' \r\n\r\n''', 'house', 'NULL', 'Christchurch', 'South Island', '1325SN', 'Ni'),
(1097, 7014569, 'NULL', ''' ''', ''' ''', 'NU', ''' \r\n\r\n''', 'house', 'NULL', 'Vitacura', 'Metropolitana de \r\n\r\nSantiago', '19355', 'Do'),
(1098, 1178896, 'NULL', ''' ''', ''' ''', 'NU', ''' \r\n\r\n''', 'house', 'NULL', 'Pau', 'Aquitaine', '5170', 'Gu'),
(1099, 4900, 'NULL', ''' \r\n\r\n''', ''' ''', 'NU', ''' ''', 'house', 'NULL', 'Gespeg', 'QC', '96480', 'We');

-- --------------------------------------------------------

--
-- Table structure for table `craft`
--

CREATE TABLE IF NOT EXISTS `craft` (
  `craft_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `craft`
--

INSERT INTO `craft` (`craft_id`, `item_id`) VALUES
(3500, 5000),
(3501, 5001),
(3502, 5002),
(3503, 5003),
(3504, 5004),
(3505, 5005),
(3506, 5006),
(3507, 5007),
(3508, 5008),
(3509, 5009),
(3510, 5010),
(3511, 5011),
(3512, 5012),
(3513, 5013),
(3514, 5014),
(3515, 5015),
(3516, 5016),
(3517, 5017),
(3518, 5018),
(3519, 5019),
(3520, 5020),
(3521, 5021),
(3522, 5022),
(3523, 5023),
(3524, 5024),
(3525, 5025),
(3526, 5026),
(3527, 5027),
(3528, 5028),
(3529, 5029),
(3530, 5030),
(3531, 5031),
(3532, 5032),
(3533, 5033),
(3534, 5034),
(3535, 5035),
(3536, 5036),
(3537, 5037),
(3538, 5038),
(3539, 5039),
(3540, 5040),
(3541, 5041),
(3542, 5042),
(3543, 5043),
(3544, 5044),
(3545, 5045),
(3546, 5046),
(3547, 5047),
(3548, 5048),
(3549, 5049),
(3550, 5050),
(3551, 5051),
(3552, 5052),
(3553, 5053),
(3554, 5054),
(3555, 5055),
(3556, 5056),
(3557, 5057),
(3558, 5058),
(3559, 5059),
(3560, 5060),
(3561, 5061),
(3562, 5062),
(3563, 5063),
(3564, 5064),
(3565, 5065),
(3566, 5066),
(3567, 5067),
(3568, 5068),
(3569, 5069),
(3570, 5070),
(3571, 5071),
(3572, 5072),
(3573, 5073),
(3574, 5074),
(3575, 5075),
(3576, 5076),
(3577, 5077),
(3578, 5078),
(3579, 5079),
(3580, 5080),
(3581, 5081),
(3582, 5082),
(3583, 5083),
(3584, 5084),
(3585, 5085),
(3586, 5086),
(3587, 5087),
(3588, 5088),
(3589, 5089),
(3590, 5090),
(3591, 5091),
(3592, 5092),
(3593, 5093),
(3594, 5094),
(3595, 5095),
(3596, 5096),
(3597, 5097),
(3598, 5098),
(3599, 5099);

-- --------------------------------------------------------

--
-- Table structure for table `craft_materials`
--

CREATE TABLE IF NOT EXISTS `craft_materials` (
  `material_id` int(11) NOT NULL,
  `craft_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `craft_materials`
--

INSERT INTO `craft_materials` (`material_id`, `craft_id`) VALUES
(3000, 3500),
(3001, 3501),
(3002, 3502),
(3003, 3503),
(3004, 3504),
(3005, 3505),
(3006, 3506),
(3007, 3507),
(3008, 3508),
(3009, 3509),
(3010, 3510),
(3011, 3511),
(3012, 3512),
(3013, 3513),
(3014, 3514),
(3015, 3515),
(3016, 3516),
(3017, 3517),
(3018, 3518),
(3019, 3519),
(3020, 3520),
(3021, 3521),
(3022, 3522),
(3023, 3523),
(3024, 3524),
(3025, 3525),
(3026, 3526),
(3027, 3527),
(3028, 3528),
(3029, 3529),
(3030, 3530),
(3031, 3531),
(3032, 3532),
(3033, 3533),
(3034, 3534),
(3035, 3535),
(3036, 3536),
(3037, 3537),
(3038, 3538),
(3039, 3539),
(3040, 3540),
(3041, 3541),
(3042, 3542),
(3043, 3543),
(3044, 3544),
(3045, 3545),
(3046, 3546),
(3047, 3547),
(3048, 3548),
(3049, 3549),
(3050, 3550),
(3051, 3551),
(3052, 3552),
(3053, 3553),
(3054, 3554),
(3055, 3555),
(3056, 3556),
(3057, 3557),
(3058, 3558),
(3059, 3559),
(3060, 3560),
(3061, 3561),
(3062, 3562),
(3063, 3563),
(3064, 3564),
(3065, 3565),
(3066, 3566),
(3067, 3567),
(3068, 3568),
(3069, 3569),
(3070, 3570),
(3071, 3571),
(3072, 3572),
(3073, 3573),
(3074, 3574),
(3075, 3575),
(3076, 3576),
(3077, 3577),
(3078, 3578),
(3079, 3579),
(3080, 3580),
(3081, 3581),
(3082, 3582),
(3083, 3583),
(3084, 3584),
(3085, 3585),
(3086, 3586),
(3087, 3587),
(3088, 3588),
(3089, 3589),
(3090, 3590),
(3091, 3591),
(3092, 3592),
(3093, 3593),
(3094, 3594),
(3095, 3595),
(3096, 3596),
(3097, 3597),
(3098, 3598),
(3099, 3599);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE IF NOT EXISTS `customer` (
  `customer_id` int(11) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `phone_number` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `address_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `last_name`, `first_name`, `phone_number`, `email`, `address_id`) VALUES
(0, 'Grant', 'Kameko', '(398) 243-8587', 'gravida@nulla.edu', 1000),
(1, 'Cummings', 'Mia', '(783) 188-3286', 'augue.ac.ipsum@nibh.edu', 1001),
(2, 'Atkinson', 'Ezekiel', '(904) 868-0306', 'eu.metus.In@erat.com', 1002),
(3, 'Hendrix', 'Lavinia', '(721) 290-0940', 'eu@pedeblanditcongue.ca', 1003),
(4, 'Mccormick', 'Yoshi', '(948) 305-2614', 'Donec.dignissim@eu.org', 1004),
(5, 'Lott', 'Farrah', '(892) 515-4121', 'Suspendisse@feugiat.edu', 1005),
(6, 'Camacho', 'Wallace', '(664) 720-\r\n\r\n0563', 'ipsum.Phasellus.vitae@ridiculus.com', 1006),
(7, 'Alston', 'Alan', '(351) \r\n\r\n609-9710', 'Cum.sociis@elitelitfermentum.co.uk', 1007),
(8, 'Sweet', 'Victoria', '(396) 743-\r\n\r\n4929', 'eu.tempor@dictumultriciesligula.co.uk', 1008),
(9, 'Scott', 'Susan', '(302) \r\n\r\n925-9656', 'lectus.Cum@egetipsum.org', 1009),
(10, 'Stafford', 'Alyssa', '(981) 166-\r\n\r\n7777', 'Duis.cursus@elit.org', 1010),
(11, 'Burch', 'Ali', '(372) 774-\r\n\r\n5754', 'ut.eros@vestibulumneque.com', 1011),
(12, 'Pitts', 'Jael', '(889) 672-\r\n\r\n3124', 'eu@inmolestietortor.co.uk', 1012),
(13, 'Freeman', 'Hilda', '(244) 773-\r\n\r\n4980', 'mattis@maurisipsumporta.co.uk', 1013),
(14, 'Giles', 'Brendan', '(432) 708\r\n\r\n-4713', 'nunc@anuncIn.net', 1014),
(15, 'Compton', 'Xantha', '(194) 744-\r\n\r\n1876', 'Nulla@aliquetliberoInteger.com', 1015),
(16, 'Maddox', 'Breanna', '(228) \r\n\r\n900-2007', 'augue.ac.ipsum@tellus.net', 1016),
(17, 'Mathis', 'Iola', '(896) 531-\r\n\r\n8622', 'quam.Curabitur.vel@vitaeposuere.org', 1017),
(18, 'Landry', 'Irma', '(259) \r\n\r\n540-2287', 'egestas.Aliquam@atliberoMorbi.edu', 1018),
(19, 'Barnes', 'Montana', '(759) 811-0935', 'malesuada@ultriciessem.org', 1019),
(20, 'Church', 'Naomi', '(228) 435-\r\n\r\n1899', 'Suspendisse.ac@etrisus.ca', 1020),
(21, 'Ward', 'Daquan', '(184) 954-\r\n\r\n7291', 'Donec@magnaCras.org', 1021),
(22, 'Cochran', 'Mara', '(337) 156-\r\n\r\n0230', 'Maecenas.malesuada.fringilla@CuraeDonec.org', 1022),
(23, 'Ashley', 'Lani', '(298) 705-1707', 'sed.sem@vestibulumlorem.ca', 1023),
(24, 'Mcpherson', 'Jerry', '(350) 873-\r\n\r\n4503', 'parturient.montes.nascetur@dapibusid.edu', 1024),
(25, 'Rollins', 'Ella', '(228) 211-\r\n\r\n3312', 'nunc.risus.varius@feugiatLorem.edu', 1025),
(26, 'Willis', 'Adrian', '(104) \r\n\r\n186-9968', 'Nam.nulla@feugiat.ca', 1026),
(27, 'Bond', 'Orla', '(925) 304-\r\n\r\n4150', 'enim.Suspendisse@libero.org', 1027),
(28, 'Aguilar', 'Leila', '(515) 453-\r\n\r\n3428', 'scelerisque.neque@miac.edu', 1028),
(29, 'Bridges', 'Ulla', '(459) 522-\r\n\r\n4262', 'sit@urnasuscipitnonummy.edu', 1029),
(30, 'Knox', 'Cassady', '(263) 694-\r\n\r\n7766', 'sit.amet@ProindolorNulla.net', 1030),
(31, 'Beach', 'Berk', '(298) 646-\r\n\r\n9035', 'nec.quam@eleifend.ca', 1031),
(32, 'Puckett', 'Macon', '(373) 566-\r\n\r\n3237', 'Duis.at.lacus@cursus.ca', 1032),
(33, 'Santana', 'Melvin', '(364) 434-\r\n\r\n4641', 'mauris.Integer.sem@nibhsitamet.net', 1033),
(34, 'Glenn', 'Aline', '(516) \r\n\r\n617-2452', 'Donec.tincidunt@adipiscing.ca', 1034),
(35, 'Booth', 'Aquila', '(968) \r\n\r\n215-9494', 'dolor@etrisusQuisque.net', 1035),
(36, 'Holcomb', 'Colorado', '(456) \r\n\r\n714-3858', 'natoque.penatibus.et@elit.co.uk', 1036),
(37, 'George', 'Cullen', '(255) 298-5368', 'vitae.nibh.Donec@quis.net', 1037),
(38, 'Cross', 'Ifeoma', '(376) 790-\r\n\r\n0286', 'lorem.eu@lacusEtiambibendum.ca', 1038),
(39, 'Pace', 'Hiroko', '(828) 662-\r\n\r\n0910', 'euismod.in.dolor@purusaccumsaninterdum.org', 1039),
(40, 'Mcclain', 'Dylan', '(779) 489-\r\n\r\n0102', 'feugiat.tellus@quamvel.ca', 1040),
(41, 'Chase', 'Jason', '(544) 462-\r\n\r\n3123', 'accumsan.sed.facilisis@ipsumcursusvestibulum.edu', 1041),
(42, 'Ryan', 'Aline', '(947) 364-5081', 'tempus.eu@mi.edu', 1042),
(43, 'Norman', 'Lev', '(114) 942-4992', 'cursus.et@risus.com', 1043),
(44, 'Church', 'Cadman', '(136) 379-\r\n\r\n0284', 'Nam.nulla.magna@magnisdisparturient.edu', 1044),
(45, 'Bishop', 'Colette', '(434) 147-9619', 'Aliquam@diamvelarcu.edu', 1045),
(46, 'Ortiz', 'Savannah', '(591) 352-\r\n\r\n6471', 'amet.risus.Donec@Naminterdumenim.net', 1046),
(47, 'Whitley', 'Hilel', '(543) 233-3464', 'at.iaculis@afacilisisnon.ca', 1047),
(48, 'Stokes', 'Warren', '(475) 919-\r\n\r\n5031', 'ornare@Aliquameratvolutpat.co.uk', 1048),
(49, 'Gibson', 'Emi', '(976) 906\r\n\r\n-8339', 'nunc.est@quis.net', 1049),
(50, 'Ross', 'Jolene', '(452) 181-\r\n\r\n5290', 'felis.orci.adipiscing@lacusQuisque.net', 1050),
(51, 'Lucas', 'Kimberly', '(704) 518-\r\n\r\n5836', 'Mauris.nulla.Integer@ut.co.uk', 1051),
(52, 'Williams', 'Dale', '(990) 218\r\n\r\n-3824', 'sem.consequat@primisinfaucibus.ca', 1052),
(53, 'Mckee', 'Penelope', '(358) 310-\r\n\r\n1210', 'dui.nec.urna@Quisqueliberolacus.com', 1053),
(54, 'Duffy', 'Rachel', '(493) \r\n\r\n707-1205', 'dictum@lectus.com', 1054),
(55, 'Stafford', 'Hyatt', '(903) 841-\r\n\r\n8145', 'ipsum.dolor.sit@est.com', 1055),
(56, 'Gould', 'Oleg', '(448) 671-\r\n\r\n9014', 'sem.vitae.aliquam@risusDonec.co.uk', 1056),
(57, 'Nieves', 'Brooke', '(454) \r\n\r\n212-3502', 'Quisque.fringilla@Craspellentesque.ca', 1057),
(58, 'Torres', 'Shelby', '(145) 399-5550', 'arcu.Sed.eu@Nullaaliquet.net', 1058),
(59, 'Gilmore', 'Gisela', '(632) 643-7251', 'egestas@lacusQuisque.org', 1059),
(60, 'Castillo', 'Todd', '(653) 424-\r\n\r\n1320', 'commodo@habitantmorbi.org', 1060),
(61, 'Hunt', 'Indigo', '(236) 595-\r\n\r\n7763', 'velit.Aliquam.nisl@pedeultrices.ca', 1061),
(62, 'Lambert', 'Jerome', '(753) 428-5960', 'nibh.lacinia@quis.net', 1062),
(63, 'Fuentes', 'Hedwig', '(413) 696-1608', 'amet@Naminterdum.edu', 1063),
(64, 'Norman', 'Vincent', '(590) 454-\r\n\r\n2292', 'Aliquam.nec.enim@asollicitudin.ca', 1064),
(65, 'Conley', 'Paul', '(634) \r\n\r\n168-0279', 'Nunc@etmagna.ca', 1065),
(66, 'Love', 'Ali', '(496) 480-\r\n\r\n9095', 'mi.lorem@risusvarius.net', 1066),
(67, 'Hurst', 'Marshall', '(581) 530-\r\n\r\n8116', 'ornare.placerat@turpis.net', 1067),
(68, 'Mercer', 'Ulla', '(842) 302-\r\n\r\n2866', 'eget@lorem.net', 1068),
(69, 'Logan', 'Brent', '(243) 915-\r\n\r\n6156', 'ac.feugiat.non@Aenean.edu', 1069),
(70, 'Johnston', 'Cynthia', '(593) 165-\r\n\r\n0405', 'montes.nascetur@turpisNulla.org', 1070),
(71, 'Tate', 'Bo', '(993) 435-\r\n\r\n7234', 'Maecenas@miDuis.edu', 1071),
(72, 'Mcintosh', 'Guy', '(556) 416-\r\n\r\n7485', 'Ut@tincidunt.ca', 1072),
(73, 'Dickson', 'Noble', '(690) 348-\r\n\r\n7616', 'quis.arcu.vel@purusgravida.com', 1073),
(74, 'Conrad', 'Francesca', '(181) \r\n\r\n639-7114', 'sit.amet.ante@lorem.com', 1074),
(75, 'Watts', 'Charity', '(507) 675-\r\n\r\n1800', 'eros@Suspendissealiquetmolestie.org', 1075),
(76, 'Blake', 'Herrod', '(577) \r\n\r\n594-0483', 'dolor.Quisque.tincidunt@egestasligulaNullam.org', 1076),
(77, 'Delaney', 'Jasper', '(553) 774-6119', 'eu.accumsan.sed@pede.com', 1077),
(78, 'Finley', 'Marcia', '(246) 422-0575', 'sed.pede.Cum@etmagnisdis.com', 1078),
(79, 'Bowers', 'Allegra', '(454) 188-\r\n\r\n7719', 'imperdiet.ullamcorper.Duis@fringillapurus.ca', 1079),
(80, 'Diaz', 'Wade', '(452) 759-\r\n\r\n0240', 'aliquam.eu@vitaealiquet.org', 1080),
(81, 'Vega', 'Dana', '(902) 408-\r\n\r\n3150', 'elit.sed.consequat@pedeNunc.com', 1081),
(82, 'Solis', 'Sydnee', '(424) \r\n\r\n127-4446', 'ac.mattis@habitant.co.uk', 1082),
(83, 'Campbell', 'Cheyenne', '(240) \r\n\r\n319-5497', 'aliquet.molestie.tellus@Fuscemi.com', 1083),
(84, 'Ochoa', 'Thor', '(686) 623-\r\n\r\n4947', 'metus.Vivamus.euismod@lacusMauris.ca', 1084),
(85, 'Serrano', 'Amos', '(507) 484-\r\n\r\n2921', 'non@MorbivehiculaPellentesque.org', 1085),
(86, 'Justice', 'Cooper', '(445) \r\n\r\n612-6168', 'eget@Uttincidunt.edu', 1086),
(87, 'Knowles', 'Timon', '(885) 885-\r\n\r\n6185', 'mi.lorem.vehicula@mattissemperdui.com', 1087),
(88, 'Key', 'Nell', '(644) \r\n\r\n669-6814', 'egestas.urna.justo@eratin.net', 1088),
(89, 'Harmon', 'Fallon', '(930) \r\n\r\n435-3488', 'diam@augueeutellus.ca', 1089),
(90, 'Beach', 'Cooper', '(809) 900-0906', 'Phasellus.in@nec.com', 1090),
(91, 'Cochran', 'Lysandra', '(832) 853-\r\n\r\n1580', 'tincidunt.Donec.vitae@vel.edu', 1091),
(92, 'Farley', 'Julian', '(285) 473\r\n\r\n-2183', 'Fusce.aliquam.enim@sedestNunc.org', 1092),
(93, 'Fuentes', 'Garth', '(243) \r\n\r\n197-4657', 'sit.amet@mattis.net', 1093),
(94, 'Vaughan', 'Ezra', '(212) 299-\r\n\r\n7106', 'enim.mi.tempor@amet.edu', 1094),
(95, 'Parker', 'Dennis', '(797) 896-\r\n\r\n7868', 'Nunc@nisl.ca', 1095),
(96, 'Chan', 'Salvador', '(749) 626-\r\n\r\n8646', 'quam@hymenaeosMaurisut.co.uk', 1096),
(97, 'Carpenter', 'Nolan', '(370) \r\n\r\n881-3568', 'cursus.luctus.ipsum@duiFuscealiquam.edu', 1097),
(98, 'Bennett', 'Reece', '(389) 981-3039', 'Mauris@egetdictum.ca', 1098),
(99, 'Park', 'Rama', '(613) 629-9158', 'vel.est.tempor@tristiqueneque.org', 1099);

-- --------------------------------------------------------

--
-- Table structure for table `custom_order`
--

CREATE TABLE IF NOT EXISTS `custom_order` (
  `custom_order_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `price_estimation` decimal(19,4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `custom_order`
--

INSERT INTO `custom_order` (`custom_order_id`, `order_id`, `comment`, `price_estimation`) VALUES
(13000, 6000, 'euismod ac, fermentum vel, mauris.', '0.0000'),
(13001, 6001, 'suscipit, est ac', '0.0000'),
(13002, 6002, 'ullamcorper, velit in aliquet', '0.0000'),
(13003, 6003, 'amet ultricies sem', '0.0000'),
(13004, 6004, 'neque. In ornare', '0.0000'),
(13005, 6005, 'penatibus et', '0.0000'),
(13006, 6006, 'sit amet, faucibus ut, nulla.', '0.0000'),
(13007, 6007, 'Phasellus dapibus quam quis', '0.0000'),
(13008, 6008, 'Sed', '0.0000'),
(13009, 6009, 'mus. Proin', '0.0000'),
(13010, 6010, 'adipiscing lacus. Ut nec urna', '0.0000'),
(13011, 6011, 'ligula', '0.0000'),
(13012, 6012, 'quis diam. Pellentesque', '0.0000'),
(13013, 6013, 'Cras dictum ultricies', '0.0000'),
(13014, 6014, 'massa', '0.0000'),
(13015, 6015, 'sapien, cursus in, hendrerit', '0.0000'),
(13016, 6016, 'augue ut', '0.0000'),
(13017, 6017, 'vulputate, lacus. Cras interdum. Nunc', '0.0000'),
(13018, 6018, 'Cras vulputate velit eu', '0.0000'),
(13019, 6019, 'enim', '0.0000'),
(13020, 6020, 'turpis. Nulla aliquet.', '0.0000'),
(13021, 6021, 'tempus mauris erat eget', '0.0000'),
(13022, 6022, 'rutrum magna. Cras convallis', '0.0000'),
(13023, 6023, 'tristique', '0.0000'),
(13024, 6024, 'Pellentesque habitant morbi tristique', '0.0000'),
(13025, 6025, 'Sed nunc est, mollis', '0.0000'),
(13026, 6026, 'lacus. Ut nec urna', '0.0000'),
(13027, 6027, 'Suspendisse commodo tincidunt nibh.', '0.0000'),
(13028, 6028, 'lacus.', '0.0000'),
(13029, 6029, 'Suspendisse tristique neque venenatis lacus.', '0.0000'),
(13030, 6030, 'Fusce dolor', '0.0000'),
(13031, 6031, 'enim. Mauris', '0.0000'),
(13032, 6032, 'odio, auctor vitae, aliquet', '0.0000'),
(13033, 6033, 'nec orci.', '0.0000'),
(13034, 6034, 'ornare tortor', '0.0000'),
(13035, 6035, 'mi felis, adipiscing fringilla, porttitor', '0.0000'),
(13036, 6036, 'netus et malesuada fames', '0.0000'),
(13037, 6037, 'Etiam ligula tortor, dictum eu,', '0.0000'),
(13038, 6038, 'est', '0.0000'),
(13039, 6039, 'eget', '0.0000'),
(13040, 6040, 'Integer vulputate, risus', '0.0000'),
(13041, 6041, 'venenatis a,', '0.0000'),
(13042, 6042, 'diam luctus lobortis. Class aptent', '0.0000'),
(13043, 6043, 'et arcu imperdiet ullamcorper. Duis', '0.0000'),
(13044, 6044, 'vulputate ullamcorper magna. Sed', '0.0000'),
(13045, 6045, 'sit amet, consectetuer adipiscing elit.', '0.0000'),
(13046, 6046, 'Nulla tempor', '0.0000'),
(13047, 6047, 'dolor dapibus gravida. Aliquam', '0.0000'),
(13048, 6048, 'Curabitur', '0.0000'),
(13049, 6049, 'Sed auctor', '0.0000'),
(13050, 6050, 'scelerisque, lorem', '0.0000'),
(13051, 6051, 'et netus et malesuada', '0.0000'),
(13052, 6052, 'pede.', '0.0000'),
(13053, 6053, 'lacus. Aliquam rutrum lorem', '0.0000'),
(13054, 6054, 'Duis mi', '0.0000'),
(13055, 6055, 'eu,', '0.0000'),
(13056, 6056, 'non, lobortis quis, pede. Suspendisse', '0.0000'),
(13057, 6057, 'neque tellus, imperdiet', '0.0000'),
(13058, 6058, 'Pellentesque habitant morbi', '0.0000'),
(13059, 6059, 'pharetra.', '0.0000'),
(13060, 6060, 'ultrices posuere cubilia Curae;', '0.0000'),
(13061, 6061, 'in, hendrerit consectetuer, cursus et,', '0.0000'),
(13062, 6062, 'non leo. Vivamus nibh', '0.0000'),
(13063, 6063, 'tellus', '0.0000'),
(13064, 6064, 'lorem,', '0.0000'),
(13065, 6065, 'cursus et, magna. Praesent', '0.0000'),
(13066, 6066, 'elementum sem,', '0.0000'),
(13067, 6067, 'lectus. Cum sociis natoque penatibus', '0.0000'),
(13068, 6068, 'lobortis risus. In', '0.0000'),
(13069, 6069, 'est.', '0.0000'),
(13070, 6070, 'dictum eu, placerat', '0.0000'),
(13071, 6071, 'nascetur ridiculus', '0.0000'),
(13072, 6072, 'arcu.', '0.0000'),
(13073, 6073, 'Curae; Phasellus ornare. Fusce', '0.0000'),
(13074, 6074, 'non, sollicitudin a, malesuada id,', '0.0000'),
(13075, 6075, 'tortor, dictum eu, placerat', '0.0000'),
(13076, 6076, 'sit amet,', '0.0000'),
(13077, 6077, 'non ante bibendum ullamcorper. Duis', '0.0000'),
(13078, 6078, 'aliquet diam. Sed diam lorem,', '0.0000'),
(13079, 6079, 'euismod', '0.0000'),
(13080, 6080, 'tristique', '0.0000'),
(13081, 6081, 'felis eget varius', '0.0000'),
(13082, 6082, 'eu, ligula.', '0.0000'),
(13083, 6083, 'magna. Nam ligula elit, pretium', '0.0000'),
(13084, 6084, 'eget varius ultrices,', '0.0000'),
(13085, 6085, 'ipsum primis', '0.0000'),
(13086, 6086, 'laoreet posuere, enim', '0.0000'),
(13087, 6087, 'tempor,', '0.0000'),
(13088, 6088, 'Donec', '0.0000'),
(13089, 6089, 'tempor erat neque non', '0.0000'),
(13090, 6090, 'luctus lobortis. Class', '0.0000'),
(13091, 6091, 'tincidunt nibh. Phasellus', '0.0000'),
(13092, 6092, 'aliquet', '0.0000'),
(13093, 6093, 'Maecenas ornare egestas ligula.', '0.0000'),
(13094, 6094, 'turpis. Aliquam adipiscing', '0.0000'),
(13095, 6095, 'Aenean gravida nunc sed pede.', '0.0000'),
(13096, 6096, 'sit amet,', '0.0000'),
(13097, 6097, 'Duis sit', '0.0000'),
(13098, 6098, 'netus', '0.0000'),
(13099, 6099, 'orci sem', '0.0000');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE IF NOT EXISTS `employee` (
  `employee_id` int(11) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `hire_date` date NOT NULL,
  `address_id` int(11) NOT NULL,
  `phone_number` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`employee_id`, `last_name`, `first_name`, `hire_date`, `address_id`, `phone_number`) VALUES
(2000, 'York', 'Germane', '2003-04-17', 1000, '(329) 272-3692'),
(2001, 'Moody', 'Herman', '0000-00-00', 1001, '(995) 445-6553'),
(2002, 'Wynn', 'Georgia', '2006-03-16', 1002, '(448) 559-3639'),
(2003, 'Cotton', 'Zeph', '0000-00-00', 1003, '(105) 485-8193'),
(2004, 'Barlow', 'Fiona', '0000-00-00', 1004, '(794) 235-0243'),
(2005, 'Schneider', 'Rhea', '0000-00-00', 1005, '(176) 520-8955'),
(2006, 'Guerrero', 'Alden', '2005-08-16', 1006, '(858) 345-8454'),
(2007, 'Whitaker', 'Flynn', '0000-00-00', 1007, '(560) 251-6680'),
(2008, 'Bates', 'Yoko', '2008-12-16', 1008, '(591) 940-7531'),
(2009, 'Knapp', 'Juliet', '0000-00-00', 1009, '(948) 813-7108'),
(2010, 'Goodwin', 'Sacha', '0000-00-00', 1010, '(501) 213-0289'),
(2011, 'Nguyen', 'Colorado', '2001-08-17', 1011, '(698) 218-1312'),
(2012, 'Navarro', 'Susan', '2001-10-17', 1012, '(687) 157-3771'),
(2013, 'Skinner', 'Katelyn', '0000-00-00', 1013, '(742) 863-5855'),
(2014, 'Mayo', 'Yuli', '2003-11-16', 1014, '(443) 641-2358'),
(2015, 'Maddox', 'Wallace', '0000-00-00', 1015, '(599) 748-0141'),
(2016, 'Frazier', 'Stone', '0000-00-00', 1016, '(802) 593-4881'),
(2017, 'Herrera', 'Kylie', '2003-02-16', 1017, '(835) 613-5994'),
(2018, 'Casey', 'Tatum', '0000-00-00', 1018, '(181) 331-9455'),
(2019, 'Ferrell', 'Willow', '2001-07-16', 1019, '(642) 582-2895'),
(2020, 'Spence', 'Kevyn', '0000-00-00', 1020, '(596) 385-3090'),
(2021, 'House', 'Leila', '0000-00-00', 1021, '(337) 600-4541'),
(2022, 'Sanders', 'Dawn', '2009-12-16', 1022, '(452) 444-5630'),
(2023, 'Ballard', 'Kiona', '2002-04-16', 1023, '(245) 492-5588'),
(2024, 'Donovan', 'Thaddeus', '0000-00-00', 1024, '(370) 290-3790'),
(2025, 'Gonzalez', 'Declan', '2011-11-15', 1025, '(454) 531-5841'),
(2026, 'Huber', 'Gemma', '2002-10-17', 1026, '(451) 728-0647'),
(2027, 'Meyers', 'Melyssa', '0000-00-00', 1027, '(561) 598-6384'),
(2028, 'Vincent', 'Hammett', '2004-10-16', 1028, '(930) 290-7551'),
(2029, 'Malone', 'Logan', '2003-07-16', 1029, '(479) 101-1026'),
(2030, 'Conway', 'Jackson', '0000-00-00', 1030, '(914) 773-1663'),
(2031, 'Abbott', 'Kylynn', '0000-00-00', 1031, '(700) 822-9406'),
(2032, 'Knight', 'Raja', '2008-04-16', 1032, '(923) 499-0479'),
(2033, 'Weaver', 'Driscoll', '0000-00-00', 1033, '(236) 446-1220'),
(2034, 'Giles', 'Briar', '0000-00-00', 1034, '(756) 627-4047'),
(2035, 'Ochoa', 'Shelly', '2011-10-15', 1035, '(179) 846-1601'),
(2036, 'Riggs', 'Hamilton', '0000-00-00', 1036, '(200) 143-4006'),
(2037, 'Pitts', 'Odette', '0000-00-00', 1037, '(469) 146-5053'),
(2038, 'Hayes', 'Heather', '2004-06-15', 1038, '(747) 946-2286'),
(2039, 'Saunders', 'Alika', '2012-02-16', 1039, '(680) 926-3049'),
(2040, 'Newton', 'Abra', '0000-00-00', 1040, '(767) 671-9552'),
(2041, 'Roth', 'Tanisha', '0000-00-00', 1041, '(133) 934-5616'),
(2042, 'Horn', 'Armando', '0000-00-00', 1042, '(522) 970-5028'),
(2043, 'Holloway', 'Harper', '2009-01-16', 1043, '(250) 771-6884'),
(2044, 'Porter', 'Kennedy', '2011-10-15', 1044, '(894) 106-2149'),
(2045, 'Figueroa', 'Teagan', '0000-00-00', 1045, '(253) 541-4273'),
(2046, 'Solomon', 'Sybil', '0000-00-00', 1046, '(367) 272-2377'),
(2047, 'Singleton', 'Savannah', '0000-00-00', 1047, '(897) 593-4331'),
(2048, 'Hayden', 'Simon', '0000-00-00', 1048, '(753) 912-3074'),
(2049, 'Henderson', 'Grant', '0000-00-00', 1049, '(922) 898-5717'),
(2050, 'Gross', 'Idola', '2011-12-15', 1050, '(190) 890-5713'),
(2051, 'Barnes', 'Sylvia', '2009-11-16', 1051, '(886) 224-6180'),
(2052, 'Rojas', 'Ivy', '0000-00-00', 1052, '(401) 664-2407'),
(2053, 'Knapp', 'Winter', '2011-09-15', 1053, '(243) 841-1390'),
(2054, 'Evans', 'Marsden', '2004-03-15', 1054, '(819) 673-3651'),
(2055, 'Kane', 'Fiona', '0000-00-00', 1055, '(460) 137-8372'),
(2056, 'Kramer', 'Simone', '2003-07-17', 1056, '(778) 672-2969'),
(2057, 'Glass', 'Paul', '2007-06-16', 1057, '(255) 452-3408'),
(2058, 'Cline', 'Edan', '2005-03-16', 1058, '(491) 972-2957'),
(2059, 'Wilkinson', 'Kibo', '0000-00-00', 1059, '(510) 630-1255'),
(2060, 'Wilson', 'Karleigh', '0000-00-00', 1060, '(993) 947-6646'),
(2061, 'Cline', 'Sonia', '0000-00-00', 1061, '(901) 134-1253'),
(2062, 'Downs', 'Brady', '2003-06-17', 1062, '(411) 709-6873'),
(2063, 'Guerrero', 'Timothy', '2002-02-16', 1063, '(790) 632-6165'),
(2064, 'Roy', 'Jaquelyn', '0000-00-00', 1064, '(625) 190-9137'),
(2065, 'Madden', 'Jack', '2004-08-16', 1065, '(696) 375-4678'),
(2066, 'Burgess', 'Lacota', '0000-00-00', 1066, '(927) 875-9727'),
(2067, 'Richmond', 'Eve', '0000-00-00', 1067, '(678) 914-8163'),
(2068, 'Allison', 'Cyrus', '2006-10-15', 1068, '(609) 918-4833'),
(2069, 'Rowland', 'Sierra', '2001-07-16', 1069, '(424) 254-2256'),
(2070, 'Trujillo', 'Serena', '0000-00-00', 1070, '(836) 247-9702'),
(2071, 'Peters', 'Ivory', '0000-00-00', 1071, '(322) 877-2187'),
(2072, 'Mcclain', 'Dustin', '2004-11-15', 1072, '(355) 702-6524'),
(2073, 'Guerra', 'Jolie', '2003-01-17', 1073, '(106) 575-8361'),
(2074, 'Cantrell', 'Nigel', '0000-00-00', 1074, '(527) 256-5378'),
(2075, 'Ellison', 'Sloane', '0000-00-00', 1075, '(997) 305-5778'),
(2076, 'Barton', 'Zachary', '0000-00-00', 1076, '(890) 428-5373'),
(2077, 'Mclaughlin', 'Kai', '0000-00-00', 1077, '(124) 339-5972'),
(2078, 'Carpenter', 'Lunea', '0000-00-00', 1078, '(246) 694-2527'),
(2079, 'Rivas', 'India', '0000-00-00', 1079, '(652) 990-7397'),
(2080, 'Mcfadden', 'Olympia', '0000-00-00', 1080, '(205) 998-6044'),
(2081, 'Nash', 'Eliana', '0000-00-00', 1081, '(345) 188-2670'),
(2082, 'Deleon', 'Dara', '2001-02-17', 1082, '(978) 374-8317'),
(2083, 'Richardson', 'Ulla', '0000-00-00', 1083, '(648) 855-8826'),
(2084, 'Hess', 'Alvin', '2008-03-16', 1084, '(772) 384-8464'),
(2085, 'Pearson', 'Erich', '0000-00-00', 1085, '(687) 637-3859'),
(2086, 'Higgins', 'Calista', '0000-00-00', 1086, '(589) 250-8484'),
(2087, 'Key', 'Cheryl', '0000-00-00', 1087, '(884) 961-9925'),
(2088, 'Terry', 'Quin', '0000-00-00', 1088, '(192) 396-5576'),
(2089, 'Charles', 'Gary', '0000-00-00', 1089, '(419) 618-1404'),
(2090, 'Stone', 'Callum', '0000-00-00', 1090, '(913) 174-0246'),
(2091, 'Tillman', 'Lance', '0000-00-00', 1091, '(594) 744-1650'),
(2092, 'Tate', 'Macon', '2009-01-15', 1092, '(180) 130-2710'),
(2093, 'Elliott', 'Whoopi', '2009-06-16', 1093, '(832) 822-5416'),
(2094, 'Frazier', 'Theodore', '2003-02-16', 1094, '(117) 665-3110'),
(2095, 'Duke', 'Phillip', '2002-05-17', 1095, '(717) 763-5383'),
(2096, 'Morin', 'Amery', '0000-00-00', 1096, '(658) 720-6468'),
(2097, 'Dickson', 'Jeanette', '2011-01-16', 1097, '(703) 202-8339'),
(2098, 'Rosa', 'Martha', '0000-00-00', 1098, '(646) 361-8015'),
(2099, 'Haynes', 'Lucas', '2010-08-16', 1099, '(940) 720-1157');

-- --------------------------------------------------------

--
-- Table structure for table `gift_order`
--

CREATE TABLE IF NOT EXISTS `gift_order` (
  `gift_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `rec_last_name` varchar(50) NOT NULL,
  `rec_first_name` varchar(50) NOT NULL,
  `address_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gift_order`
--

INSERT INTO `gift_order` (`gift_id`, `order_id`, `rec_last_name`, `rec_first_name`, `address_id`) VALUES
(14000, 6000, 'Harmon', 'Penelope', 1000),
(14001, 6001, 'Vinson', 'Howard', 1001),
(14002, 6002, 'Petersen', 'Nina', 1002),
(14003, 6003, 'Carson', 'April', 1003),
(14004, 6004, 'Fleming', 'Mona', 1004),
(14005, 6005, 'Howe', 'Miriam', 1005),
(14006, 6006, 'Rodriguez', 'Hamilton', 1006),
(14007, 6007, 'Ball', 'Quinlan', 1007),
(14008, 6008, 'Middleton', 'Serina', 1008),
(14009, 6009, 'Mcdonald', 'Alexis', 1009),
(14010, 6010, 'Shepard', 'Abel', 1010),
(14011, 6011, 'Tucker', 'Sybill', 1011),
(14012, 6012, 'Thomas', 'Maya', 1012),
(14013, 6013, 'Foley', 'Brynne', 1013),
(14014, 6014, 'Horne', 'Unity', 1014),
(14015, 6015, 'Wiley', 'Farrah', 1015),
(14016, 6016, 'Landry', 'Inez', 1016),
(14017, 6017, 'Clark', 'Taylor', 1017),
(14018, 6018, 'Tanner', 'Lisandra', 1018),
(14019, 6019, 'Mcpherson', 'Raven', 1019),
(14020, 6020, 'Morgan', 'Miranda', 1020),
(14021, 6021, 'Holland', 'Mollie', 1021),
(14022, 6022, 'Mccarty', 'Mary', 1022),
(14023, 6023, 'Leonard', 'Pandora', 1023),
(14024, 6024, 'Hancock', 'Demetria', 1024),
(14025, 6025, 'Freeman', 'Kevin', 1025),
(14026, 6026, 'Levy', 'Xaviera', 1026),
(14027, 6027, 'Taylor', 'Yasir', 1027),
(14028, 6028, 'Travis', 'Zachary', 1028),
(14029, 6029, 'Pierce', 'Mikayla', 1029),
(14030, 6030, 'Pierce', 'Macy', 1030),
(14031, 6031, 'Frank', 'Kennedy', 1031),
(14032, 6032, 'Salas', 'Hayes', 1032),
(14033, 6033, 'Hickman', 'Jolie', 1033),
(14034, 6034, 'Terry', 'Scott', 1034),
(14035, 6035, 'Dunn', 'Harper', 1035),
(14036, 6036, 'Mclean', 'Timon', 1036),
(14037, 6037, 'Finch', 'Derek', 1037),
(14038, 6038, 'Stephenson', 'Zorita', 1038),
(14039, 6039, 'Mccullough', 'Chandler', 1039),
(14040, 6040, 'Flowers', 'Clark', 1040),
(14041, 6041, 'Perry', 'Amela', 1041),
(14042, 6042, 'Mccullough', 'Dakota', 1042),
(14043, 6043, 'Haney', 'Nolan', 1043),
(14044, 6044, 'Davenport', 'Arthur', 1044),
(14045, 6045, 'Roberson', 'Yoshi', 1045),
(14046, 6046, 'Hunter', 'Joelle', 1046),
(14047, 6047, 'Kirk', 'Colorado', 1047),
(14048, 6048, 'Mcmillan', 'Rebecca', 1048),
(14049, 6049, 'White', 'Tatyana', 1049),
(14050, 6050, 'Eaton', 'Demetrius', 1050),
(14051, 6051, 'Stevenson', 'Brian', 1051),
(14052, 6052, 'Bentley', 'Astra', 1052),
(14053, 6053, 'Spencer', 'Melyssa', 1053),
(14054, 6054, 'Witt', 'Katell', 1054),
(14055, 6055, 'Gutierrez', 'Jessamine', 1055),
(14056, 6056, 'Bowers', 'Felix', 1056),
(14057, 6057, 'Henson', 'Rhonda', 1057),
(14058, 6058, 'Ellison', 'Malik', 1058),
(14059, 6059, 'Preston', 'Benjamin', 1059),
(14060, 6060, 'Wolfe', 'Lenore', 1060),
(14061, 6061, 'Pacheco', 'Chloe', 1061),
(14062, 6062, 'Edwards', 'Remedios', 1062),
(14063, 6063, 'Alvarado', 'Christine', 1063),
(14064, 6064, 'Brock', 'Nissim', 1064),
(14065, 6065, 'Cantu', 'Steven', 1065),
(14066, 6066, 'Ross', 'Bianca', 1066),
(14067, 6067, 'Martinez', 'Sean', 1067),
(14068, 6068, 'Gonzales', 'Kevin', 1068),
(14069, 6069, 'Bass', 'Boris', 1069),
(14070, 6070, 'Hampton', 'James', 1070),
(14071, 6071, 'Norris', 'Theodore', 1071),
(14072, 6072, 'Stafford', 'Edan', 1072),
(14073, 6073, 'Atkins', 'Lance', 1073),
(14074, 6074, 'Holloway', 'Callum', 1074),
(14075, 6075, 'Lawrence', 'Candice', 1075),
(14076, 6076, 'Tran', 'Isaiah', 1076),
(14077, 6077, 'Bolton', 'Ariel', 1077),
(14078, 6078, 'Walker', 'Garrison', 1078),
(14079, 6079, 'Noel', 'Suki', 1079),
(14080, 6080, 'Lucas', 'Amy', 1080),
(14081, 6081, 'Barry', 'Veda', 1081),
(14082, 6082, 'Diaz', 'Rylee', 1082),
(14083, 6083, 'Hutchinson', 'Mercedes', 1083),
(14084, 6084, 'Parrish', 'Felix', 1084),
(14085, 6085, 'Hays', 'Stacey', 1085),
(14086, 6086, 'Rutledge', 'Sylvester', 1086),
(14087, 6087, 'Nelson', 'Kirk', 1087),
(14088, 6088, 'Camacho', 'Daria', 1088),
(14089, 6089, 'Savage', 'Tad', 1089),
(14090, 6090, 'Bradshaw', 'Miriam', 1090),
(14091, 6091, 'Barrera', 'Naomi', 1091),
(14092, 6092, 'Romero', 'Merrill', 1092),
(14093, 6093, 'Cervantes', 'Alan', 1093),
(14094, 6094, 'Madden', 'Fitzgerald', 1094),
(14095, 6095, 'Moreno', 'Dakota', 1095),
(14096, 6096, 'Cash', 'Elmo', 1096),
(14097, 6097, 'Cline', 'Noble', 1097),
(14098, 6098, 'Dale', 'Erica', 1098),
(14099, 6099, 'Carson', 'Xena', 1099);

-- --------------------------------------------------------

--
-- Table structure for table `gift_shipping`
--

CREATE TABLE IF NOT EXISTS `gift_shipping` (
  `ship_id` int(11) NOT NULL,
  `address_id` int(11) NOT NULL,
  `gift_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gift_shipping`
--

INSERT INTO `gift_shipping` (`ship_id`, `address_id`, `gift_id`) VALUES
(9000, 1000, 14000),
(9001, 1001, 14001),
(9002, 1002, 14002),
(9003, 1003, 14003),
(9004, 1004, 14004),
(9005, 1005, 14005),
(9006, 1006, 14006),
(9007, 1007, 14007),
(9008, 1008, 14008),
(9009, 1009, 14009),
(9010, 1010, 14010),
(9011, 1011, 14011),
(9012, 1012, 14012),
(9013, 1013, 14013),
(9014, 1014, 14014),
(9015, 1015, 14015),
(9016, 1016, 14016),
(9017, 1017, 14017),
(9018, 1018, 14018),
(9019, 1019, 14019),
(9020, 1020, 14020),
(9021, 1021, 14021),
(9022, 1022, 14022),
(9023, 1023, 14023),
(9024, 1024, 14024),
(9025, 1025, 14025),
(9026, 1026, 14026),
(9027, 1027, 14027),
(9028, 1028, 14028),
(9029, 1029, 14029),
(9030, 1030, 14030),
(9031, 1031, 14031),
(9032, 1032, 14032),
(9033, 1033, 14033),
(9034, 1034, 14034),
(9035, 1035, 14035),
(9036, 1036, 14036),
(9037, 1037, 14037),
(9038, 1038, 14038),
(9039, 1039, 14039),
(9040, 1040, 14040),
(9041, 1041, 14041),
(9042, 1042, 14042),
(9043, 1043, 14043),
(9044, 1044, 14044),
(9045, 1045, 14045),
(9046, 1046, 14046),
(9047, 1047, 14047),
(9048, 1048, 14048),
(9049, 1049, 14049),
(9050, 1050, 14050),
(9051, 1051, 14051),
(9052, 1052, 14052),
(9053, 1053, 14053),
(9054, 1054, 14054),
(9055, 1055, 14055),
(9056, 1056, 14056),
(9057, 1057, 14057),
(9058, 1058, 14058),
(9059, 1059, 14059),
(9060, 1060, 14060),
(9061, 1061, 14061),
(9062, 1062, 14062),
(9063, 1063, 14063),
(9064, 1064, 14064),
(9065, 1065, 14065),
(9066, 1066, 14066),
(9067, 1067, 14067),
(9068, 1068, 14068),
(9069, 1069, 14069),
(9070, 1070, 14070),
(9071, 1071, 14071),
(9072, 1072, 14072),
(9073, 1073, 14073),
(9074, 1074, 14074),
(9075, 1075, 14075),
(9076, 1076, 14076),
(9077, 1077, 14077),
(9078, 1078, 14078),
(9079, 1079, 14079),
(9080, 1080, 14080),
(9081, 1081, 14081),
(9082, 1082, 14082),
(9083, 1083, 14083),
(9084, 1084, 14084),
(9085, 1085, 14085),
(9086, 1086, 14086),
(9087, 1087, 14087),
(9088, 1088, 14088),
(9089, 1089, 14089),
(9090, 1090, 14090),
(9091, 1091, 14091),
(9092, 1092, 14092),
(9093, 1093, 14093),
(9094, 1094, 14094),
(9095, 1095, 14095),
(9096, 1096, 14096),
(9097, 1097, 14097),
(9098, 1098, 14098),
(9099, 1099, 14099);

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE IF NOT EXISTS `item` (
  `item_id` int(11) NOT NULL,
  `qoh` decimal(10,4) NOT NULL,
  `calculated_qoh` decimal(10,4) NOT NULL,
  `name` varchar(50) NOT NULL,
  `original_price` decimal(19,4) NOT NULL,
  `current_price` decimal(19,4) NOT NULL,
  `min_price` decimal(19,4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`item_id`, `qoh`, `calculated_qoh`, `name`, `original_price`, `current_price`, `min_price`) VALUES
(5000, '969.0000', '193.0000', 'risus.', '0.0000', '0.0000', '0.0000'),
(5001, '879.0000', '379.0000', 'neque.', '0.0000', '0.0000', '0.0000'),
(5002, '247.0000', '701.0000', 'dictum.', '0.0000', '0.0000', '0.0000'),
(5003, '370.0000', '939.0000', 'Etiam', '0.0000', '0.0000', '0.0000'),
(5004, '501.0000', '632.0000', 'In', '0.0000', '0.0000', '0.0000'),
(5005, '170.0000', '854.0000', 'sagittis.', '0.0000', '0.0000', '0.0000'),
(5006, '320.0000', '159.0000', 'malesuada.', '0.0000', '0.0000', '0.0000'),
(5007, '641.0000', '888.0000', 'nibh.', '0.0000', '0.0000', '0.0000'),
(5008, '996.0000', '790.0000', 'Nunc', '0.0000', '0.0000', '0.0000'),
(5009, '978.0000', '625.0000', 'velit', '0.0000', '0.0000', '0.0000'),
(5010, '772.0000', '659.0000', 'est,', '0.0000', '0.0000', '0.0000'),
(5011, '710.0000', '123.0000', 'mauris', '0.0000', '0.0000', '0.0000'),
(5012, '558.0000', '671.0000', 'enim.', '0.0000', '0.0000', '0.0000'),
(5013, '914.0000', '590.0000', 'ipsum.', '0.0000', '0.0000', '0.0000'),
(5014, '663.0000', '757.0000', 'tempus,', '0.0000', '0.0000', '0.0000'),
(5015, '706.0000', '559.0000', 'aliquet', '0.0000', '0.0000', '0.0000'),
(5016, '809.0000', '438.0000', 'tincidunt', '0.0000', '0.0000', '0.0000'),
(5017, '869.0000', '121.0000', 'vitae', '0.0000', '0.0000', '0.0000'),
(5018, '597.0000', '169.0000', 'adipiscing', '0.0000', '0.0000', '0.0000'),
(5019, '64.0000', '253.0000', 'ultricies', '0.0000', '0.0000', '0.0000'),
(5020, '323.0000', '31.0000', 'In', '0.0000', '0.0000', '0.0000'),
(5021, '936.0000', '822.0000', 'massa.', '0.0000', '0.0000', '0.0000'),
(5022, '10.0000', '499.0000', 'risus.', '0.0000', '0.0000', '0.0000'),
(5023, '674.0000', '422.0000', 'nec', '0.0000', '0.0000', '0.0000'),
(5024, '782.0000', '79.0000', 'laoreet', '0.0000', '0.0000', '0.0000'),
(5025, '897.0000', '563.0000', 'Etiam', '0.0000', '0.0000', '0.0000'),
(5026, '785.0000', '648.0000', 'velit.', '0.0000', '0.0000', '0.0000'),
(5027, '190.0000', '334.0000', 'auctor', '0.0000', '0.0000', '0.0000'),
(5028, '377.0000', '283.0000', 'justo', '0.0000', '0.0000', '0.0000'),
(5029, '476.0000', '256.0000', 'sed', '0.0000', '0.0000', '0.0000'),
(5030, '760.0000', '906.0000', 'vulputate', '0.0000', '0.0000', '0.0000'),
(5031, '390.0000', '298.0000', 'et', '0.0000', '0.0000', '0.0000'),
(5032, '487.0000', '976.0000', 'ipsum', '0.0000', '0.0000', '0.0000'),
(5033, '679.0000', '77.0000', 'tellus.', '0.0000', '0.0000', '0.0000'),
(5034, '911.0000', '792.0000', 'pede,', '0.0000', '0.0000', '0.0000'),
(5035, '991.0000', '790.0000', 'fringilla', '0.0000', '0.0000', '0.0000'),
(5036, '713.0000', '229.0000', 'nec,', '0.0000', '0.0000', '0.0000'),
(5037, '760.0000', '706.0000', 'Nam', '0.0000', '0.0000', '0.0000'),
(5038, '5.0000', '396.0000', 'est,', '0.0000', '0.0000', '0.0000'),
(5039, '552.0000', '419.0000', 'et', '0.0000', '0.0000', '0.0000'),
(5040, '112.0000', '351.0000', 'facilisis', '0.0000', '0.0000', '0.0000'),
(5041, '422.0000', '252.0000', 'enim', '0.0000', '0.0000', '0.0000'),
(5042, '768.0000', '172.0000', 'mi', '0.0000', '0.0000', '0.0000'),
(5043, '837.0000', '131.0000', 'sem', '0.0000', '0.0000', '0.0000'),
(5044, '372.0000', '483.0000', 'ligula', '0.0000', '0.0000', '0.0000'),
(5045, '128.0000', '651.0000', 'habitant', '0.0000', '0.0000', '0.0000'),
(5046, '952.0000', '368.0000', 'elit.', '0.0000', '0.0000', '0.0000'),
(5047, '199.0000', '650.0000', 'commodo', '0.0000', '0.0000', '0.0000'),
(5048, '401.0000', '37.0000', 'dolor.', '0.0000', '0.0000', '0.0000'),
(5049, '455.0000', '537.0000', 'neque.', '0.0000', '0.0000', '0.0000'),
(5050, '363.0000', '999.0000', 'pharetra.', '0.0000', '0.0000', '0.0000'),
(5051, '556.0000', '419.0000', 'nec', '0.0000', '0.0000', '0.0000'),
(5052, '911.0000', '569.0000', 'a', '0.0000', '0.0000', '0.0000'),
(5053, '858.0000', '370.0000', 'justo', '0.0000', '0.0000', '0.0000'),
(5054, '670.0000', '134.0000', 'quam.', '0.0000', '0.0000', '0.0000'),
(5055, '26.0000', '331.0000', 'nec', '0.0000', '0.0000', '0.0000'),
(5056, '971.0000', '56.0000', 'volutpat.', '0.0000', '0.0000', '0.0000'),
(5057, '197.0000', '629.0000', 'dictum', '0.0000', '0.0000', '0.0000'),
(5058, '658.0000', '618.0000', 'lorem', '0.0000', '0.0000', '0.0000'),
(5059, '506.0000', '148.0000', 'laoreet', '0.0000', '0.0000', '0.0000'),
(5060, '862.0000', '351.0000', 'sem.', '0.0000', '0.0000', '0.0000'),
(5061, '229.0000', '480.0000', 'lorem', '0.0000', '0.0000', '0.0000'),
(5062, '552.0000', '646.0000', 'Vestibulum', '0.0000', '0.0000', '0.0000'),
(5063, '116.0000', '851.0000', 'ornare', '0.0000', '0.0000', '0.0000'),
(5064, '378.0000', '923.0000', 'Ut', '0.0000', '0.0000', '0.0000'),
(5065, '624.0000', '727.0000', 'vel', '0.0000', '0.0000', '0.0000'),
(5066, '507.0000', '687.0000', 'ornare', '0.0000', '0.0000', '0.0000'),
(5067, '428.0000', '338.0000', 'commodo', '0.0000', '0.0000', '0.0000'),
(5068, '542.0000', '285.0000', 'eget,', '0.0000', '0.0000', '0.0000'),
(5069, '172.0000', '396.0000', 'ante.', '0.0000', '0.0000', '0.0000'),
(5070, '88.0000', '64.0000', 'ornare', '0.0000', '0.0000', '0.0000'),
(5071, '594.0000', '152.0000', 'magna.', '0.0000', '0.0000', '0.0000'),
(5072, '272.0000', '570.0000', 'Aliquam', '0.0000', '0.0000', '0.0000'),
(5073, '174.0000', '603.0000', 'Duis', '0.0000', '0.0000', '0.0000'),
(5074, '792.0000', '817.0000', 'metus.', '0.0000', '0.0000', '0.0000'),
(5075, '426.0000', '201.0000', 'vitae', '0.0000', '0.0000', '0.0000'),
(5076, '655.0000', '270.0000', 'non', '0.0000', '0.0000', '0.0000'),
(5077, '102.0000', '215.0000', 'cursus', '0.0000', '0.0000', '0.0000'),
(5078, '215.0000', '824.0000', 'amet', '0.0000', '0.0000', '0.0000'),
(5079, '848.0000', '410.0000', 'ut,', '0.0000', '0.0000', '0.0000'),
(5080, '498.0000', '682.0000', 'In', '0.0000', '0.0000', '0.0000'),
(5081, '480.0000', '932.0000', 'lobortis', '0.0000', '0.0000', '0.0000'),
(5082, '754.0000', '979.0000', 'dignissim', '0.0000', '0.0000', '0.0000'),
(5083, '263.0000', '769.0000', 'a', '0.0000', '0.0000', '0.0000'),
(5084, '639.0000', '891.0000', 'molestie', '0.0000', '0.0000', '0.0000'),
(5085, '492.0000', '315.0000', 'nec', '0.0000', '0.0000', '0.0000'),
(5086, '241.0000', '771.0000', 'enim.', '0.0000', '0.0000', '0.0000'),
(5087, '552.0000', '94.0000', 'Mauris', '0.0000', '0.0000', '0.0000'),
(5088, '230.0000', '80.0000', 'blandit', '0.0000', '0.0000', '0.0000'),
(5089, '677.0000', '274.0000', 'diam.', '0.0000', '0.0000', '0.0000'),
(5090, '357.0000', '245.0000', 'aliquet', '0.0000', '0.0000', '0.0000'),
(5091, '43.0000', '373.0000', 'Etiam', '0.0000', '0.0000', '0.0000'),
(5092, '219.0000', '358.0000', 'ac', '0.0000', '0.0000', '0.0000'),
(5093, '695.0000', '147.0000', 'mauris', '0.0000', '0.0000', '0.0000'),
(5094, '488.0000', '117.0000', 'metus', '0.0000', '0.0000', '0.0000'),
(5095, '197.0000', '362.0000', 'quam.', '0.0000', '0.0000', '0.0000'),
(5096, '772.0000', '203.0000', 'euismod', '0.0000', '0.0000', '0.0000'),
(5097, '156.0000', '497.0000', 'velit.', '0.0000', '0.0000', '0.0000'),
(5098, '567.0000', '719.0000', 'porttitor', '0.0000', '0.0000', '0.0000'),
(5099, '468.0000', '218.0000', 'mauris.', '0.0000', '0.0000', '0.0000');

-- --------------------------------------------------------

--
-- Table structure for table `local_vendors`
--

CREATE TABLE IF NOT EXISTS `local_vendors` (
  `vendor_id` int(11) NOT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `vendor_name` varchar(50) DEFAULT NULL,
  `phone_number` varchar(20) DEFAULT NULL,
  `address_id` int(11) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `local_vendors`
--

INSERT INTO `local_vendors` (`vendor_id`, `last_name`, `first_name`, `vendor_name`, `phone_number`, `address_id`, `email`) VALUES
(10000, 'Owen', 'Astra', 'Ut Ipsum Ac PC', '(337) 366-\r\n\r\n3506', 1000, 'imperdiet.non.vestibulum@condimentumDonecat.net'),
(10001, 'Kennedy', 'Raphael', 'Nec Mauris Blandit Corp.', '(273) 943-\r\n\r\n7864', 1001, 'semper@mauris.ca'),
(10002, 'Roy', 'Clementine', 'Fringilla \r\n\r\nIncorporated', '(555) 441-7682', 1002, 'dignissim@justoeuarcu.com'),
(10003, 'Pace', 'Kylie', 'Maecenas PC', '(775) 303-\r\n\r\n6136', 1003, 'nisl@facilisisSuspendisse.co.uk'),
(10004, 'Bartlett', 'Xantha', 'Eget Laoreet LLP', '(720) 836-\r\n\r\n1440', 1004, 'Suspendisse.eleifend@liberoDonec.edu'),
(10005, 'Craft', 'Chanda', 'Malesuada Vel Company', '(876) 364-\r\n\r\n4686', 1005, 'Curabitur@sapienAeneanmassa.co.uk'),
(10006, 'Lancaster', 'Beau', 'Vestibulum Ut Inc.', '(755) 726-\r\n\r\n9921', 1006, 'lorem@Nuncmaurissapien.co.uk'),
(10007, 'Cotton', 'Xavier', 'Mauris \r\n\r\nFoundation', '(402) 975-0703', 1007, 'non@Quisqueornaretortor.co.uk'),
(10008, 'Pierce', 'Tanek', 'Mauris Morbi PC', '(688) 660-\r\n\r\n8405', 1008, 'luctus.ut@Quisque.ca'),
(10009, 'Neal', 'Coby', 'Tristique Senectus \r\n\r\nEt Corp.', '(388) 278-0609', 1009, 'semper.cursus.Integer@luctusvulputate.org'),
(10010, 'Kelly', 'Octavius', 'Quis Corporation', '(886) 542-\r\n\r\n3296', 1010, 'risus@laoreet.net'),
(10011, 'Barron', 'Walker', 'Tempor Est \r\n\r\nAssociates', '(285) 475-1859', 1011, 'et.malesuada.fames@porta.net'),
(10012, 'Gaines', 'Jasper', 'Mauris Vel Turpis Company', '(800) 382-\r\n\r\n2830', 1012, 'erat.neque.non@Uttincidunt.ca'),
(10013, 'Baird', 'Kermit', 'Cras \r\n\r\nPellentesque Sed LLC', '(610) 322-\r\n\r\n9868', 1013, 'nunc.sed.pede@malesuadaaugueut.org'),
(10014, 'Dickerson', 'Violet', 'Aliquam Limited', '(951) 674-\r\n\r\n6246', 1014, 'lectus.Cum@lacinia.co.uk'),
(10015, 'Herrera', 'Eaton', 'Imperdiet \r\n\r\nFoundation', '(156) 119-9891', 1015, 'neque.non@Integer.com'),
(10016, 'Hardin', 'Jennifer', 'Velit Sed Corp.', '(172) 999-\r\n\r\n8939', 1016, 'ridiculus.mus.Donec@molestieintempus.ca'),
(10017, 'Bell', 'Reece', 'In At Company', '(489) 168-\r\n\r\n4234', 1017, 'dolor.tempus@ante.net'),
(10018, 'Reed', 'Calvin', 'Euismod \r\n\r\nAssociates', '(762) 145-6381', 1018, 'cursus.in@eunibh.edu'),
(10019, 'Kaufman', 'Austin', 'Donec LLC', '(201) 833-\r\n\r\n4266', 1019, 'pede.Cras@dolorDonec.net'),
(10020, 'Garrison', 'Dustin', 'Risus Company', '(501) 586-\r\n\r\n1172', 1020, 'lorem.eget.mollis@nislQuisque.ca'),
(10021, 'Cameron', 'Baxter', 'Mauris Sit Inc.', '(945) 381-\r\n\r\n4272', 1021, 'eleifend.egestas.Sed@dapibusquamquis.org'),
(10022, 'Charles', 'Noelani', 'Nisi Magna Associates', '(659) 162-\r\n\r\n1211', 1022, 'Aliquam.erat.volutpat@fringillapurusmauris.com'),
(10023, 'Vaughn', 'Elmo', 'Pede Cum Company', '(864) 879-\r\n\r\n5133', 1023, 'dictum.eu@enimEtiamgravida.org'),
(10024, 'Livingston', 'Karen', 'A \r\n\r\nNunc Incorporated', '(230) 373-1256', 1024, 'Quisque@Donecsollicitudin.co.uk'),
(10025, 'Mercado', 'Kennan', 'Eget PC', '(227) 320-\r\n\r\n0763', 1025, 'montes.nascetur.ridiculus@eleifend.net'),
(10026, 'Clark', 'Geraldine', 'Nec Cursus Corp.', '(301) 859-\r\n\r\n7976', 1026, 'rutrum.non@convallisconvallisdolor.ca'),
(10027, 'Newman', 'Cecilia', 'Lacus Consulting', '(610) 841-\r\n\r\n9417', 1027, 'pulvinar@aliquam.ca'),
(10028, 'Miranda', 'Whitney', 'Id Erat \r\n\r\nCorporation', '(742) 924-7271', 1028, 'felis@consequatnec.net'),
(10029, 'Bauer', 'Dacey', 'Tellus Id Nunc Company', '(323) 921-\r\n\r\n2878', 1029, 'amet.consectetuer@arcuacorci.edu'),
(10030, 'Emerson', 'Alea', 'Mi Lorem Corp.', '(189) 480-\r\n\r\n4159', 1030, 'risus.a@Nam.edu'),
(10031, 'Gallegos', 'Aiko', 'Sagittis \r\n\r\nFoundation', '(891) 176-5702', 1031, 'a@ante.edu'),
(10032, 'Langley', 'Kyle', 'Sagittis LLC', '(236) 778-\r\n\r\n6228', 1032, 'Nam.nulla.magna@Maecenasiaculisaliquet.org'),
(10033, 'Lang', 'Sade', 'Mus Proin Institute', '(758) 786-\r\n\r\n9227', 1033, 'Nunc.lectus.pede@aliquetvelvulputate.co.uk'),
(10034, 'Hunter', 'Joy', 'Felis Purus Consulting', '(987) 463-\r\n\r\n1711', 1034, 'Phasellus.nulla@acmattis.ca'),
(10035, 'Barnes', 'Violet', 'Arcu \r\n\r\nAliquam Ultrices Corporation', '(208) 173-5564', 1035, 'Lorem@lacus.edu'),
(10036, 'Schultz', 'Xenos', 'Proin Vel Nisl LLC', '(532) 735-\r\n\r\n0199', 1036, 'eu.enim.Etiam@acipsum.net'),
(10037, 'Pitts', 'Oren', 'Cras Interdum \r\n\r\nIndustries', '(263) 402-9768', 1037, 'Sed@orciluctus.ca'),
(10038, 'Avery', 'Dexter', 'Luctus Et Ultrices Ltd', '(332) 171-\r\n\r\n8823', 1038, 'Ut.nec.urna@Crasdolordolor.edu'),
(10039, 'Nicholson', 'Chastity', 'Ridiculus Ltd', '(478) 724-\r\n\r\n2627', 1039, 'et.risus@ataugueid.edu'),
(10040, 'Ward', 'Fleur', 'Blandit Mattis Ltd', '(225) 558-\r\n\r\n6494', 1040, 'mollis@sed.co.uk'),
(10041, 'Knox', 'Fallon', 'Mollis Duis Sit \r\n\r\nLLP', '(865) 721-9147', 1041, 'a@ligula.co.uk'),
(10042, 'Benton', 'Clark', 'Dapibus \r\n\r\nId Blandit Ltd', '(508) 683-1979', 1042, 'egestas.a.dui@nonummyipsum.net'),
(10043, 'Sweeney', 'Laith', 'A Magna Lorem Consulting', '(842) 871-\r\n\r\n2983', 1043, 'gravida.Praesent@vitaeodio.edu'),
(10044, 'Jacobs', 'Katelyn', 'Vel \r\n\r\nCorporation', '(314) 306-9442', 1044, 'nec@Integer.edu'),
(10045, 'Rice', 'Dexter', 'Lorem Donec Elementum Industries', '(759) 894-\r\n\r\n8828', 1045, 'et.ultrices.posuere@euismodmauriseu.edu'),
(10046, 'Whitaker', 'Dorothy', 'Turpis Aliquam Corporation', '(288) 163-\r\n\r\n3987', 1046, 'egestas.Sed@Aliquamultrices.co.uk'),
(10047, 'Walters', 'John', 'Facilisis Associates', '(933) 831-\r\n\r\n9617', 1047, 'mollis.nec@lacinia.org'),
(10048, 'Munoz', 'Michelle', 'Eu \r\n\r\nFoundation', '(829) 527-9603', 1048, 'rhoncus@IntegerurnaVivamus.org'),
(10049, 'Sosa', 'Emerson', 'Et Ultrices Posuere LLP', '(172) 491-\r\n\r\n8446', 1049, 'ipsum.Suspendisse.non@atlacus.edu'),
(10050, 'Dejesus', 'Audrey', 'Sem Molestie Ltd', '(595) 233-\r\n\r\n3368', 1050, 'Aliquam.ultrices.iaculis@facilisis.co.uk'),
(10051, 'Sutton', 'Christine', 'Sit Amet Consulting', '(954) 349-\r\n\r\n4963', 1051, 'mollis.Integer.tincidunt@nonmagnaNam.com'),
(10052, 'Fox', 'Dante', 'Bibendum Corp.', '(523) 163-\r\n\r\n4444', 1052, 'pharetra@orciUt.net'),
(10053, 'Montgomery', 'Dahlia', 'Sed Eget \r\n\r\nInc.', '(362) 175-4158', 1053, 'cursus.purus@dui.co.uk'),
(10054, 'Fleming', 'Ryder', 'Lacus Mauris Non Corp.', '(241) 148-\r\n\r\n8139', 1054, 'quam@quislectusNullam.ca'),
(10055, 'Clements', 'Levi', 'Orci Ut \r\n\r\nSemper PC', '(457) 609-5612', 1055, 'dolor@dignissim.com'),
(10056, 'Mckee', 'Flynn', 'Tempus Mauris Erat LLP', '(709) 942-\r\n\r\n6972', 1056, 'nulla.vulputate@atlibero.net'),
(10057, 'Wilkerson', 'Haviva', 'Justo \r\n\r\nFaucibus Lectus Industries', '(235) 319-4316', 1057, 'aliquam@loremut.net'),
(10058, 'Howard', 'Ralph', 'Amet Faucibus Corp.', '(331) 214-\r\n\r\n8691', 1058, 'lacus@aliquameuaccumsan.org'),
(10059, 'Yates', 'Charlotte', 'Elit \r\n\r\nLtd', '(380) 834-5819', 1059, 'ultrices.Vivamus.rhoncus@in.net'),
(10060, 'Murphy', 'Ryan', 'Ligula Nullam Consulting', '(878) \r\n\r\n500-2651', 1060, 'nec@placerateget.ca'),
(10061, 'Hatfield', 'Yael', 'Lorem \r\n\r\nConsulting', '(927) 866-2277', 1061, 'Suspendisse@fermentumvel.net'),
(10062, 'Hayden', 'Fuller', 'Ligula Elit Pretium Incorporated', '(403) 138-\r\n\r\n8087', 1062, 'in.molestie.tortor@Naminterdumenim.edu'),
(10063, 'Waters', 'Vaughan', 'Velit LLC', '(832) 667-\r\n\r\n5864', 1063, 'magna.Suspendisse.tristique@Nunclaoreetlectus.net'),
(10064, 'Goodwin', 'William', 'Mauris Quis Turpis Inc.', '(432) 874-\r\n\r\n1472', 1064, 'Nunc.mauris@rhoncusNullam.edu'),
(10065, 'Mcintosh', 'Uma', 'A Neque \r\n\r\nFoundation', '(499) 574-9028', 1065, 'dui.augue@convallisligulaDonec.co.uk'),
(10066, 'Figueroa', 'Ciaran', 'Quisque Ac Libero PC', '(778) 139-\r\n\r\n7379', 1066, 'laoreet.libero@risus.org'),
(10067, 'Byrd', 'Ronan', 'Nullam Suscipit \r\n\r\nFoundation', '(964) 357-7044', 1067, 'metus@Namporttitorscelerisque.com'),
(10068, 'Riddle', 'Rudyard', 'Feugiat Sed Nec Foundation', '(439) 685-\r\n\r\n7013', 1068, 'molestie.tortor@Fuscefeugiat.org'),
(10069, 'Morrow', 'Candace', 'Dolor LLP', '(403) 558-\r\n\r\n0579', 1069, 'tempus@blandit.com'),
(10070, 'Rivera', 'Meghan', 'Curabitur Associates', '(428) \r\n\r\n599-1880', 1070, 'Quisque.purus@adipiscingMauris.org'),
(10071, 'Ryan', 'Nerea', 'Sollicitudin A Malesuada Consulting', '(208) 293-\r\n\r\n1593', 1071, 'Fusce.diam.nunc@interdum.org'),
(10072, 'Jimenez', 'Dillon', 'Et \r\n\r\nIndustries', '(679) 727-7336', 1072, 'et.arcu@Suspendisseeleifend.net'),
(10073, 'Wynn', 'Dacey', 'Magna Praesent Interdum Corp.', '(977) 789-\r\n\r\n4494', 1073, 'dapibus.quam.quis@gravidamauris.edu'),
(10074, 'Drake', 'Darryl', 'In \r\n\r\nInstitute', '(883) 745-3540', 1074, 'ut@massaQuisqueporttitor.ca'),
(10075, 'Workman', 'Ryder', 'Enim Nunc Ut Limited', '(399) 841-\r\n\r\n3852', 1075, 'Suspendisse.ac.metus@tristiquealiquetPhasellus.com'),
(10076, 'Woodard', 'Ginger', 'Fusce Dolor Limited', '(315) 331-\r\n\r\n5539', 1076, 'semper@inconsequat.edu'),
(10077, 'Harding', 'Samantha', 'Proin \r\n\r\nPC', '(901) 264-9158', 1077, 'tincidunt.vehicula.risus@liberonecligula.org'),
(10078, 'Stone', 'Castor', 'Varius Nam Incorporated', '(888) 858-\r\n\r\n6092', 1078, 'eu.enim@metus.ca'),
(10079, 'Ball', 'Joseph', 'Convallis \r\n\r\nIncorporated', '(298) 300-0648', 1079, 'dolor@ac.edu'),
(10080, 'Hyde', 'Cody', 'Lorem Sit Ltd', '(852) 561-\r\n\r\n4434', 1080, 'amet@libero.co.uk'),
(10081, 'Stafford', 'Allen', 'Vitae Velit \r\n\r\nEgestas Institute', '(236) 287-\r\n\r\n6142', 1081, 'Vivamus.nisi@ornarefacilisiseget.net'),
(10082, 'Maxwell', 'Ainsley', 'Nec Associates', '(373) 654-\r\n\r\n5211', 1082, 'Nullam@elit.net'),
(10083, 'Wilkerson', 'Germane', 'Sollicitudin \r\n\r\nLLP', '(658) 194-1436', 1083, 'mus.Proin.vel@ornareelit.co.uk'),
(10084, 'Hayden', 'Perry', 'Fermentum PC', '(867) 151-\r\n\r\n4364', 1084, 'lectus.Cum.sociis@pharetra.net'),
(10085, 'Baxter', 'Levi', 'Donec \r\n\r\nEst Corporation', '(769) 379-2346', 1085, 'Vestibulum@consectetuer.co.uk'),
(10086, 'Baxter', 'Shay', 'Ornare Placerat Incorporated', '(472) 610-\r\n\r\n9989', 1086, 'posuere@rutrumFusce.net'),
(10087, 'Lindsey', 'Regina', 'Diam \r\n\r\nCorporation', '(565) 157-9321', 1087, 'non.egestas@eu.org'),
(10088, 'Stevens', 'Beatrice', 'Pellentesque Eget Foundation', '(323) 508-\r\n\r\n5811', 1088, 'fermentum.metus.Aenean@vel.co.uk'),
(10089, 'Hooper', 'Boris', 'Pede \r\n\r\nEt Risus LLC', '(270) 135-0590', 1089, 'erat@purusMaecenas.edu'),
(10090, 'Hinton', 'Portia', 'Ultricies Ltd', '(543) 800-\r\n\r\n6460', 1090, 'non@euaugueporttitor.com'),
(10091, 'Maynard', 'Gary', 'Vitae Aliquet \r\n\r\nNec Ltd', '(305) 214-3678', 1091, 'congue.elit@Donecfelis.org'),
(10092, 'Goodwin', 'Shafira', 'Ullamcorper Eu Euismod Corp.', '(994) 220-\r\n\r\n1194', 1092, 'sed.orci.lobortis@fermentumrisus.com'),
(10093, 'Spence', 'Dora', 'Congue Elit Sed Institute', '(826) 661-\r\n\r\n8703', 1093, 'Phasellus.at@magna.com'),
(10094, 'Bennett', 'Ciara', 'Ridiculus \r\n\r\nIndustries', '(548) 487-\r\n\r\n1907', 1094, 'consectetuer.cursus.et@velitduisemper.org'),
(10095, 'Hebert', 'Cameron', 'Amet Risus Consulting', '(475) 593-\r\n\r\n3405', 1095, 'quam.Pellentesque.habitant@Fuscemi.edu'),
(10096, 'Moran', 'Sonya', 'Etiam Vestibulum Massa Industries', '(931) 872-\r\n\r\n6695', 1096, 'cursus@Maecenas.ca'),
(10097, 'Duncan', 'Rigel', 'Neque Non \r\n\r\nInc.', '(346) 598-4484', 1097, 'id.ante.Nunc@semper.com'),
(10098, 'Hardy', 'Talon', 'Quisque Ltd', '(118) 656-\r\n\r\n1030', 1098, 'consectetuer.cursus.et@lacusQuisque.ca'),
(10099, 'Baker', 'Shelly', 'Sem Limited', '(780) 700-\r\n\r\n9368', 1099, 'Fusce@egetmetusIn.ca');

-- --------------------------------------------------------

--
-- Table structure for table `material`
--

CREATE TABLE IF NOT EXISTS `material` (
  `material_id` int(11) NOT NULL,
  `supplier_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `unit_price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `material`
--

INSERT INTO `material` (`material_id`, `supplier_id`, `item_id`, `unit_price`) VALUES
(3000, 11000, 5000, 0),
(3001, 11001, 5001, 0),
(3002, 11002, 5002, 0),
(3003, 11003, 5003, 0),
(3004, 11004, 5004, 0),
(3005, 11005, 5005, 0),
(3006, 11006, 5006, 0),
(3007, 11007, 5007, 0),
(3008, 11008, 5008, 0),
(3009, 11009, 5009, 0),
(3010, 11010, 5010, 0),
(3011, 11011, 5011, 0),
(3012, 11012, 5012, 0),
(3013, 11013, 5013, 0),
(3014, 11014, 5014, 0),
(3015, 11015, 5015, 0),
(3016, 11016, 5016, 0),
(3017, 11017, 5017, 0),
(3018, 11018, 5018, 0),
(3019, 11019, 5019, 0),
(3020, 11020, 5020, 0),
(3021, 11021, 5021, 0),
(3022, 11022, 5022, 0),
(3023, 11023, 5023, 0),
(3024, 11024, 5024, 0),
(3025, 11025, 5025, 0),
(3026, 11026, 5026, 0),
(3027, 11027, 5027, 0),
(3028, 11028, 5028, 0),
(3029, 11029, 5029, 0),
(3030, 11030, 5030, 0),
(3031, 11031, 5031, 0),
(3032, 11032, 5032, 0),
(3033, 11033, 5033, 0),
(3034, 11034, 5034, 0),
(3035, 11035, 5035, 0),
(3036, 11036, 5036, 0),
(3037, 11037, 5037, 0),
(3038, 11038, 5038, 0),
(3039, 11039, 5039, 0),
(3040, 11040, 5040, 0),
(3041, 11041, 5041, 0),
(3042, 11042, 5042, 0),
(3043, 11043, 5043, 0),
(3044, 11044, 5044, 0),
(3045, 11045, 5045, 0),
(3046, 11046, 5046, 0),
(3047, 11047, 5047, 0),
(3048, 11048, 5048, 0),
(3049, 11049, 5049, 0),
(3050, 11050, 5050, 0),
(3051, 11051, 5051, 0),
(3052, 11052, 5052, 0),
(3053, 11053, 5053, 0),
(3054, 11054, 5054, 0),
(3055, 11055, 5055, 0),
(3056, 11056, 5056, 0),
(3057, 11057, 5057, 0),
(3058, 11058, 5058, 0),
(3059, 11059, 5059, 0),
(3060, 11060, 5060, 0),
(3061, 11061, 5061, 0),
(3062, 11062, 5062, 0),
(3063, 11063, 5063, 0),
(3064, 11064, 5064, 0),
(3065, 11065, 5065, 0),
(3066, 11066, 5066, 0),
(3067, 11067, 5067, 0),
(3068, 11068, 5068, 0),
(3069, 11069, 5069, 0),
(3070, 11070, 5070, 0),
(3071, 11071, 5071, 0),
(3072, 11072, 5072, 0),
(3073, 11073, 5073, 0),
(3074, 11074, 5074, 0),
(3075, 11075, 5075, 0),
(3076, 11076, 5076, 0),
(3077, 11077, 5077, 0),
(3078, 11078, 5078, 0),
(3079, 11079, 5079, 0),
(3080, 11080, 5080, 0),
(3081, 11081, 5081, 0),
(3082, 11082, 5082, 0),
(3083, 11083, 5083, 0),
(3084, 11084, 5084, 0),
(3085, 11085, 5085, 0),
(3086, 11086, 5086, 0),
(3087, 11087, 5087, 0),
(3088, 11088, 5088, 0),
(3089, 11089, 5089, 0),
(3090, 11090, 5090, 0),
(3091, 11091, 5091, 0),
(3092, 11092, 5092, 0),
(3093, 11093, 5093, 0),
(3094, 11094, 5094, 0),
(3095, 11095, 5095, 0),
(3096, 11096, 5096, 0),
(3097, 11097, 5097, 0),
(3098, 11098, 5098, 0),
(3099, 11099, 5099, 0);

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE IF NOT EXISTS `order` (
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `employee_id` int(11) NOT NULL,
  `order_date` date NOT NULL,
  `subtotal` decimal(19,4) NOT NULL,
  `tax_amount` decimal(19,4) NOT NULL,
  `total_price` decimal(19,4) NOT NULL,
  `order_type` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`order_id`, `customer_id`, `employee_id`, `order_date`, `subtotal`, `tax_amount`, `total_price`, `order_type`) VALUES
(6000, 0, 2000, '0000-00-00', '0.0000', '0.0000', '0.0000', ' sale'),
(6001, 1, 2001, '0000-00-00', '0.0000', '0.0000', '0.0000', ' gift'),
(6002, 2, 2002, '2011-06-15', '0.0000', '0.0000', '0.0000', ' gift'),
(6003, 3, 2003, '2007-07-15', '0.0000', '0.0000', '0.0000', ' gift'),
(6004, 4, 2004, '0000-00-00', '0.0000', '0.0000', '0.0000', 'custo'),
(6005, 5, 2005, '2006-07-15', '0.0000', '0.0000', '0.0000', ' sale'),
(6006, 6, 2006, '2009-08-15', '0.0000', '0.0000', '0.0000', 'custo'),
(6007, 7, 2007, '0000-00-00', '0.0000', '0.0000', '0.0000', ' sale'),
(6008, 8, 2008, '2012-06-15', '0.0000', '0.0000', '0.0000', ' gift'),
(6009, 9, 2009, '0000-00-00', '0.0000', '0.0000', '0.0000', ' gift'),
(6010, 10, 2010, '0000-00-00', '0.0000', '0.0000', '0.0000', 'custo'),
(6011, 11, 2011, '0000-00-00', '0.0000', '0.0000', '0.0000', 'custo'),
(6012, 12, 2012, '0000-00-00', '0.0000', '0.0000', '0.0000', ' gift'),
(6013, 13, 2013, '0000-00-00', '0.0000', '0.0000', '0.0000', ' gift'),
(6014, 14, 2014, '0000-00-00', '0.0000', '0.0000', '0.0000', ' gift'),
(6015, 15, 2015, '2004-11-15', '0.0000', '0.0000', '0.0000', ' sale'),
(6016, 16, 2016, '2006-12-16', '0.0000', '0.0000', '0.0000', ' sale'),
(6017, 17, 2017, '2007-09-15', '0.0000', '0.0000', '0.0000', 'custo'),
(6018, 18, 2018, '2007-10-15', '0.0000', '0.0000', '0.0000', ' gift'),
(6019, 19, 2019, '0000-00-00', '0.0000', '0.0000', '0.0000', ' sale'),
(6020, 20, 2020, '2003-09-16', '0.0000', '0.0000', '0.0000', ' gift'),
(6021, 21, 2021, '2008-11-16', '0.0000', '0.0000', '0.0000', ' gift'),
(6022, 22, 2022, '2005-12-16', '0.0000', '0.0000', '0.0000', ' sale'),
(6023, 23, 2023, '2008-07-16', '0.0000', '0.0000', '0.0000', ' gift'),
(6024, 24, 2024, '0000-00-00', '0.0000', '0.0000', '0.0000', ' gift'),
(6025, 25, 2025, '0000-00-00', '0.0000', '0.0000', '0.0000', 'custo'),
(6026, 26, 2026, '0000-00-00', '0.0000', '0.0000', '0.0000', 'custo'),
(6027, 27, 2027, '0000-00-00', '0.0000', '0.0000', '0.0000', 'custo'),
(6028, 28, 2028, '0000-00-00', '0.0000', '0.0000', '0.0000', ' sale'),
(6029, 29, 2029, '2012-01-15', '0.0000', '0.0000', '0.0000', ' gift'),
(6030, 30, 2030, '2003-05-17', '0.0000', '0.0000', '0.0000', ' sale'),
(6031, 31, 2031, '2007-10-16', '0.0000', '0.0000', '0.0000', ' sale'),
(6032, 32, 2032, '2005-08-15', '0.0000', '0.0000', '0.0000', ' sale'),
(6033, 33, 2033, '2003-12-17', '0.0000', '0.0000', '0.0000', 'custo'),
(6034, 34, 2034, '2009-03-15', '0.0000', '0.0000', '0.0000', ' gift'),
(6035, 35, 2035, '0000-00-00', '0.0000', '0.0000', '0.0000', ' sale'),
(6036, 36, 2036, '0000-00-00', '0.0000', '0.0000', '0.0000', ' gift'),
(6037, 37, 2037, '0000-00-00', '0.0000', '0.0000', '0.0000', ' gift'),
(6038, 38, 2038, '0000-00-00', '0.0000', '0.0000', '0.0000', ' sale'),
(6039, 39, 2039, '0000-00-00', '0.0000', '0.0000', '0.0000', 'custo'),
(6040, 40, 2040, '0000-00-00', '0.0000', '0.0000', '0.0000', ' gift'),
(6041, 41, 2041, '2003-04-17', '0.0000', '0.0000', '0.0000', 'custo'),
(6042, 42, 2042, '0000-00-00', '0.0000', '0.0000', '0.0000', ' sale'),
(6043, 43, 2043, '2004-08-15', '0.0000', '0.0000', '0.0000', ' sale'),
(6044, 44, 2044, '2008-05-16', '0.0000', '0.0000', '0.0000', 'custo'),
(6045, 45, 2045, '0000-00-00', '0.0000', '0.0000', '0.0000', 'custo'),
(6046, 46, 2046, '0000-00-00', '0.0000', '0.0000', '0.0000', ' gift'),
(6047, 47, 2047, '0000-00-00', '0.0000', '0.0000', '0.0000', ' sale'),
(6048, 48, 2048, '0000-00-00', '0.0000', '0.0000', '0.0000', ' sale'),
(6049, 49, 2049, '0000-00-00', '0.0000', '0.0000', '0.0000', ' gift'),
(6050, 50, 2050, '2002-03-17', '0.0000', '0.0000', '0.0000', ' gift'),
(6051, 51, 2051, '2004-06-15', '0.0000', '0.0000', '0.0000', 'custo'),
(6052, 52, 2052, '0000-00-00', '0.0000', '0.0000', '0.0000', 'custo'),
(6053, 53, 2053, '2011-09-16', '0.0000', '0.0000', '0.0000', 'custo'),
(6054, 54, 2054, '2009-02-15', '0.0000', '0.0000', '0.0000', ' sale'),
(6055, 55, 2055, '2001-02-16', '0.0000', '0.0000', '0.0000', ' gift'),
(6056, 56, 2056, '0000-00-00', '0.0000', '0.0000', '0.0000', 'custo'),
(6057, 57, 2057, '2010-08-15', '0.0000', '0.0000', '0.0000', 'custo'),
(6058, 58, 2058, '0000-00-00', '0.0000', '0.0000', '0.0000', ' gift'),
(6059, 59, 2059, '0000-00-00', '0.0000', '0.0000', '0.0000', ' sale'),
(6060, 60, 2060, '0000-00-00', '0.0000', '0.0000', '0.0000', 'custo'),
(6061, 61, 2061, '2002-03-16', '0.0000', '0.0000', '0.0000', 'custo'),
(6062, 62, 2062, '2007-04-16', '0.0000', '0.0000', '0.0000', 'custo'),
(6063, 63, 2063, '2002-02-17', '0.0000', '0.0000', '0.0000', 'custo'),
(6064, 64, 2064, '2004-12-16', '0.0000', '0.0000', '0.0000', ' sale'),
(6065, 65, 2065, '2009-03-15', '0.0000', '0.0000', '0.0000', ' gift'),
(6066, 66, 2066, '0000-00-00', '0.0000', '0.0000', '0.0000', ' sale'),
(6067, 67, 2067, '0000-00-00', '0.0000', '0.0000', '0.0000', ' gift'),
(6068, 68, 2068, '0000-00-00', '0.0000', '0.0000', '0.0000', 'custo'),
(6069, 69, 2069, '0000-00-00', '0.0000', '0.0000', '0.0000', ' sale'),
(6070, 70, 2070, '0000-00-00', '0.0000', '0.0000', '0.0000', ' gift'),
(6071, 71, 2071, '0000-00-00', '0.0000', '0.0000', '0.0000', ' gift'),
(6072, 72, 2072, '2012-07-15', '0.0000', '0.0000', '0.0000', 'custo'),
(6073, 73, 2073, '0000-00-00', '0.0000', '0.0000', '0.0000', ' gift'),
(6074, 74, 2074, '0000-00-00', '0.0000', '0.0000', '0.0000', ' gift'),
(6075, 75, 2075, '0000-00-00', '0.0000', '0.0000', '0.0000', ' gift'),
(6076, 76, 2076, '0000-00-00', '0.0000', '0.0000', '0.0000', ' gift'),
(6077, 77, 2077, '0000-00-00', '0.0000', '0.0000', '0.0000', ' sale'),
(6078, 78, 2078, '0000-00-00', '0.0000', '0.0000', '0.0000', 'custo'),
(6079, 79, 2079, '0000-00-00', '0.0000', '0.0000', '0.0000', 'custo'),
(6080, 80, 2080, '2009-12-16', '0.0000', '0.0000', '0.0000', 'custo'),
(6081, 81, 2081, '0000-00-00', '0.0000', '0.0000', '0.0000', ' sale'),
(6082, 82, 2082, '0000-00-00', '0.0000', '0.0000', '0.0000', ' sale'),
(6083, 83, 2083, '2009-10-15', '0.0000', '0.0000', '0.0000', ' gift'),
(6084, 84, 2084, '0000-00-00', '0.0000', '0.0000', '0.0000', ' gift'),
(6085, 85, 2085, '0000-00-00', '0.0000', '0.0000', '0.0000', ' gift'),
(6086, 86, 2086, '0000-00-00', '0.0000', '0.0000', '0.0000', ' sale'),
(6087, 87, 2087, '2011-03-15', '0.0000', '0.0000', '0.0000', ' sale'),
(6088, 88, 2088, '2012-04-16', '0.0000', '0.0000', '0.0000', ' sale'),
(6089, 89, 2089, '0000-00-00', '0.0000', '0.0000', '0.0000', ' gift'),
(6090, 90, 2090, '0000-00-00', '0.0000', '0.0000', '0.0000', 'custo'),
(6091, 91, 2091, '2001-01-17', '0.0000', '0.0000', '0.0000', 'custo'),
(6092, 92, 2092, '0000-00-00', '0.0000', '0.0000', '0.0000', 'custo'),
(6093, 93, 2093, '2012-04-16', '0.0000', '0.0000', '0.0000', 'custo'),
(6094, 94, 2094, '0000-00-00', '0.0000', '0.0000', '0.0000', ' gift'),
(6095, 95, 2095, '0000-00-00', '0.0000', '0.0000', '0.0000', 'custo'),
(6096, 96, 2096, '2012-06-15', '0.0000', '0.0000', '0.0000', 'custo'),
(6097, 97, 2097, '2005-03-15', '0.0000', '0.0000', '0.0000', ' sale'),
(6098, 98, 2098, '0000-00-00', '0.0000', '0.0000', '0.0000', 'custo'),
(6099, 99, 2099, '0000-00-00', '0.0000', '0.0000', '0.0000', ' sale');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE IF NOT EXISTS `order_details` (
  `order_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `item_price` decimal(19,4) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`order_id`, `item_id`, `item_price`, `qty`) VALUES
(6000, 5000, '0.0000', 385),
(6001, 5001, '0.0000', 382),
(6002, 5002, '0.0000', 880),
(6003, 5003, '0.0000', 445),
(6004, 5004, '0.0000', 933),
(6005, 5005, '0.0000', 298),
(6006, 5006, '0.0000', 722),
(6007, 5007, '0.0000', 169),
(6008, 5008, '0.0000', 482),
(6009, 5009, '0.0000', 780),
(6010, 5010, '0.0000', 715),
(6011, 5011, '0.0000', 69),
(6012, 5012, '0.0000', 644),
(6013, 5013, '0.0000', 143),
(6014, 5014, '0.0000', 642),
(6015, 5015, '0.0000', 513),
(6016, 5016, '0.0000', 354),
(6017, 5017, '0.0000', 641),
(6018, 5018, '0.0000', 754),
(6019, 5019, '0.0000', 512),
(6020, 5020, '0.0000', 894),
(6021, 5021, '0.0000', 396),
(6022, 5022, '0.0000', 749),
(6023, 5023, '0.0000', 962),
(6024, 5024, '0.0000', 919),
(6025, 5025, '0.0000', 883),
(6026, 5026, '0.0000', 240),
(6027, 5027, '0.0000', 509),
(6028, 5028, '0.0000', 713),
(6029, 5029, '0.0000', 451),
(6030, 5030, '0.0000', 758),
(6031, 5031, '0.0000', 473),
(6032, 5032, '0.0000', 945),
(6033, 5033, '0.0000', 256),
(6034, 5034, '0.0000', 449),
(6035, 5035, '0.0000', 518),
(6036, 5036, '0.0000', 571),
(6037, 5037, '0.0000', 601),
(6038, 5038, '0.0000', 878),
(6039, 5039, '0.0000', 608),
(6040, 5040, '0.0000', 12),
(6041, 5041, '0.0000', 711),
(6042, 5042, '0.0000', 789),
(6043, 5043, '0.0000', 281),
(6044, 5044, '0.0000', 618),
(6045, 5045, '0.0000', 466),
(6046, 5046, '0.0000', 345),
(6047, 5047, '0.0000', 146),
(6048, 5048, '0.0000', 684),
(6049, 5049, '0.0000', 330),
(6050, 5050, '0.0000', 586),
(6051, 5051, '0.0000', 967),
(6052, 5052, '0.0000', 410),
(6053, 5053, '0.0000', 67),
(6054, 5054, '0.0000', 692),
(6055, 5055, '0.0000', 439),
(6056, 5056, '0.0000', 381),
(6057, 5057, '0.0000', 6),
(6058, 5058, '0.0000', 594),
(6059, 5059, '0.0000', 963),
(6060, 5060, '0.0000', 622),
(6061, 5061, '0.0000', 717),
(6062, 5062, '0.0000', 703),
(6063, 5063, '0.0000', 749),
(6064, 5064, '0.0000', 452),
(6065, 5065, '0.0000', 36),
(6066, 5066, '0.0000', 800),
(6067, 5067, '0.0000', 199),
(6068, 5068, '0.0000', 405),
(6069, 5069, '0.0000', 261),
(6070, 5070, '0.0000', 874),
(6071, 5071, '0.0000', 579),
(6072, 5072, '0.0000', 424),
(6073, 5073, '0.0000', 589),
(6074, 5074, '0.0000', 821),
(6075, 5075, '0.0000', 531),
(6076, 5076, '0.0000', 24),
(6077, 5077, '0.0000', 121),
(6078, 5078, '0.0000', 735),
(6079, 5079, '0.0000', 212),
(6080, 5080, '0.0000', 169),
(6081, 5081, '0.0000', 352),
(6082, 5082, '0.0000', 951),
(6083, 5083, '0.0000', 755),
(6084, 5084, '0.0000', 672),
(6085, 5085, '0.0000', 640),
(6086, 5086, '0.0000', 136),
(6087, 5087, '0.0000', 57),
(6088, 5088, '0.0000', 73),
(6089, 5089, '0.0000', 406),
(6090, 5090, '0.0000', 522),
(6091, 5091, '0.0000', 439),
(6092, 5092, '0.0000', 975),
(6093, 5093, '0.0000', 118),
(6094, 5094, '0.0000', 923),
(6095, 5095, '0.0000', 784),
(6096, 5096, '0.0000', 702),
(6097, 5097, '0.0000', 847),
(6098, 5098, '0.0000', 927),
(6099, 5099, '0.0000', 183);

-- --------------------------------------------------------

--
-- Table structure for table `order_materials`
--

CREATE TABLE IF NOT EXISTS `order_materials` (
  `material_id` int(11) NOT NULL,
  `supplier_order_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `discount_amount` decimal(19,4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_materials`
--

INSERT INTO `order_materials` (`material_id`, `supplier_order_id`, `qty`, `discount_amount`) VALUES
(3000, 12000, 440, '0.0000'),
(3001, 12001, 772, '0.0000'),
(3002, 12002, 516, '0.0000'),
(3003, 12003, 729, '0.0000'),
(3004, 12004, 687, '0.0000'),
(3005, 12005, 130, '0.0000'),
(3006, 12006, 986, '0.0000'),
(3007, 12007, 83, '0.0000'),
(3008, 12008, 423, '0.0000'),
(3009, 12009, 231, '0.0000'),
(3010, 12010, 841, '0.0000'),
(3011, 12011, 995, '0.0000'),
(3012, 12012, 307, '0.0000'),
(3013, 12013, 360, '0.0000'),
(3014, 12014, 685, '0.0000'),
(3015, 12015, 981, '0.0000'),
(3016, 12016, 25, '0.0000'),
(3017, 12017, 263, '0.0000'),
(3018, 12018, 433, '0.0000'),
(3019, 12019, 51, '0.0000'),
(3020, 12020, 763, '0.0000'),
(3021, 12021, 717, '0.0000'),
(3022, 12022, 285, '0.0000'),
(3023, 12023, 366, '0.0000'),
(3024, 12024, 635, '0.0000'),
(3025, 12025, 184, '0.0000'),
(3026, 12026, 299, '0.0000'),
(3027, 12027, 957, '0.0000'),
(3028, 12028, 16, '0.0000'),
(3029, 12029, 326, '0.0000'),
(3030, 12030, 844, '0.0000'),
(3031, 12031, 160, '0.0000'),
(3032, 12032, 840, '0.0000'),
(3033, 12033, 475, '0.0000'),
(3034, 12034, 636, '0.0000'),
(3035, 12035, 816, '0.0000'),
(3036, 12036, 818, '0.0000'),
(3037, 12037, 738, '0.0000'),
(3038, 12038, 475, '0.0000'),
(3039, 12039, 428, '0.0000'),
(3040, 12040, 925, '0.0000'),
(3041, 12041, 124, '0.0000'),
(3042, 12042, 45, '0.0000'),
(3043, 12043, 953, '0.0000'),
(3044, 12044, 932, '0.0000'),
(3045, 12045, 851, '0.0000'),
(3046, 12046, 135, '0.0000'),
(3047, 12047, 263, '0.0000'),
(3048, 12048, 534, '0.0000'),
(3049, 12049, 395, '0.0000'),
(3050, 12050, 922, '0.0000'),
(3051, 12051, 349, '0.0000'),
(3052, 12052, 367, '0.0000'),
(3053, 12053, 546, '0.0000'),
(3054, 12054, 197, '0.0000'),
(3055, 12055, 296, '0.0000'),
(3056, 12056, 902, '0.0000'),
(3057, 12057, 428, '0.0000'),
(3058, 12058, 835, '0.0000'),
(3059, 12059, 316, '0.0000'),
(3060, 12060, 9, '0.0000'),
(3061, 12061, 858, '0.0000'),
(3062, 12062, 854, '0.0000'),
(3063, 12063, 233, '0.0000'),
(3064, 12064, 330, '0.0000'),
(3065, 12065, 686, '0.0000'),
(3066, 12066, 844, '0.0000'),
(3067, 12067, 832, '0.0000'),
(3068, 12068, 567, '0.0000'),
(3069, 12069, 984, '0.0000'),
(3070, 12070, 345, '0.0000'),
(3071, 12071, 489, '0.0000'),
(3072, 12072, 436, '0.0000'),
(3073, 12073, 448, '0.0000'),
(3074, 12074, 325, '0.0000'),
(3075, 12075, 321, '0.0000'),
(3076, 12076, 194, '0.0000'),
(3077, 12077, 345, '0.0000'),
(3078, 12078, 466, '0.0000'),
(3079, 12079, 299, '0.0000'),
(3080, 12080, 901, '0.0000'),
(3081, 12081, 836, '0.0000'),
(3082, 12082, 208, '0.0000'),
(3083, 12083, 375, '0.0000'),
(3084, 12084, 306, '0.0000'),
(3085, 12085, 260, '0.0000'),
(3086, 12086, 745, '0.0000'),
(3087, 12087, 899, '0.0000'),
(3088, 12088, 878, '0.0000'),
(3089, 12089, 392, '0.0000'),
(3090, 12090, 118, '0.0000'),
(3091, 12091, 861, '0.0000'),
(3092, 12092, 467, '0.0000'),
(3093, 12093, 654, '0.0000'),
(3094, 12094, 153, '0.0000'),
(3095, 12095, 325, '0.0000'),
(3096, 12096, 750, '0.0000'),
(3097, 12097, 380, '0.0000'),
(3098, 12098, 73, '0.0000'),
(3099, 12099, 345, '0.0000');

-- --------------------------------------------------------

--
-- Table structure for table `returns_inventory`
--

CREATE TABLE IF NOT EXISTS `returns_inventory` (
  `return_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `return_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `returns_inventory`
--

INSERT INTO `returns_inventory` (`return_id`, `order_id`, `return_date`) VALUES
(7000, 6000, '2011-01-16'),
(7001, 6001, '2006-03-15'),
(7002, 6002, '2010-03-16'),
(7003, 6003, '2012-01-15'),
(7004, 6004, '0000-00-00'),
(7005, 6005, '2012-10-15'),
(7006, 6006, '2004-01-16'),
(7007, 6007, '2002-12-17'),
(7008, 6008, '2002-07-16'),
(7009, 6009, '0000-00-00'),
(7010, 6010, '2002-06-16'),
(7011, 6011, '0000-00-00'),
(7012, 6012, '0000-00-00'),
(7013, 6013, '2012-10-15'),
(7014, 6014, '2003-07-16'),
(7015, 6015, '2001-08-16'),
(7016, 6016, '2010-05-15'),
(7017, 6017, '2011-11-15'),
(7018, 6018, '0000-00-00'),
(7019, 6019, '0000-00-00'),
(7020, 6020, '2003-11-16'),
(7021, 6021, '2001-01-16'),
(7022, 6022, '2009-08-16'),
(7023, 6023, '0000-00-00'),
(7024, 6024, '0000-00-00'),
(7025, 6025, '0000-00-00'),
(7026, 6026, '2009-03-15'),
(7027, 6027, '2004-08-15'),
(7028, 6028, '2006-11-15'),
(7029, 6029, '2006-06-16'),
(7030, 6030, '0000-00-00'),
(7031, 6031, '2006-06-16'),
(7032, 6032, '2008-07-16'),
(7033, 6033, '2003-08-17'),
(7034, 6034, '0000-00-00'),
(7035, 6035, '2012-07-15'),
(7036, 6036, '2008-12-16'),
(7037, 6037, '0000-00-00'),
(7038, 6038, '0000-00-00'),
(7039, 6039, '2004-07-16'),
(7040, 6040, '0000-00-00'),
(7041, 6041, '0000-00-00'),
(7042, 6042, '0000-00-00'),
(7043, 6043, '0000-00-00'),
(7044, 6044, '2011-11-15'),
(7045, 6045, '2003-07-16'),
(7046, 6046, '0000-00-00'),
(7047, 6047, '0000-00-00'),
(7048, 6048, '2007-03-16'),
(7049, 6049, '0000-00-00'),
(7050, 6050, '2006-03-16'),
(7051, 6051, '2006-07-15'),
(7052, 6052, '2001-02-17'),
(7053, 6053, '2012-03-16'),
(7054, 6054, '2011-03-15'),
(7055, 6055, '0000-00-00'),
(7056, 6056, '0000-00-00'),
(7057, 6057, '2006-07-16'),
(7058, 6058, '0000-00-00'),
(7059, 6059, '0000-00-00'),
(7060, 6060, '0000-00-00'),
(7061, 6061, '2005-02-15'),
(7062, 6062, '0000-00-00'),
(7063, 6063, '2006-01-16'),
(7064, 6064, '2009-09-16'),
(7065, 6065, '0000-00-00'),
(7066, 6066, '0000-00-00'),
(7067, 6067, '2009-05-15'),
(7068, 6068, '0000-00-00'),
(7069, 6069, '0000-00-00'),
(7070, 6070, '0000-00-00'),
(7071, 6071, '2003-07-16'),
(7072, 6072, '2005-05-15'),
(7073, 6073, '0000-00-00'),
(7074, 6074, '2003-03-16'),
(7075, 6075, '0000-00-00'),
(7076, 6076, '0000-00-00'),
(7077, 6077, '2006-05-15'),
(7078, 6078, '0000-00-00'),
(7079, 6079, '0000-00-00'),
(7080, 6080, '0000-00-00'),
(7081, 6081, '0000-00-00'),
(7082, 6082, '2008-03-16'),
(7083, 6083, '2010-11-16'),
(7084, 6084, '2007-01-16'),
(7085, 6085, '2010-02-15'),
(7086, 6086, '2005-08-15'),
(7087, 6087, '2009-03-16'),
(7088, 6088, '0000-00-00'),
(7089, 6089, '0000-00-00'),
(7090, 6090, '0000-00-00'),
(7091, 6091, '0000-00-00'),
(7092, 6092, '2009-05-15'),
(7093, 6093, '0000-00-00'),
(7094, 6094, '0000-00-00'),
(7095, 6095, '0000-00-00'),
(7096, 6096, '2012-10-16'),
(7097, 6097, '0000-00-00'),
(7098, 6098, '0000-00-00'),
(7099, 6099, '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `return_details`
--

CREATE TABLE IF NOT EXISTS `return_details` (
  `return_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `return_details`
--

INSERT INTO `return_details` (`return_id`, `item_id`, `qty`) VALUES
(7000, 5000, 277),
(7001, 5001, 929),
(7002, 5002, 44),
(7003, 5003, 152),
(7004, 5004, 303),
(7005, 5005, 7),
(7006, 5006, 732),
(7007, 5007, 645),
(7008, 5008, 257),
(7009, 5009, 588),
(7010, 5010, 248),
(7011, 5011, 31),
(7012, 5012, 790),
(7013, 5013, 703),
(7014, 5014, 698),
(7015, 5015, 627),
(7016, 5016, 400),
(7017, 5017, 224),
(7018, 5018, 969),
(7019, 5019, 805),
(7020, 5020, 877),
(7021, 5021, 828),
(7022, 5022, 809),
(7023, 5023, 193),
(7024, 5024, 65),
(7025, 5025, 640),
(7026, 5026, 369),
(7027, 5027, 826),
(7028, 5028, 656),
(7029, 5029, 354),
(7030, 5030, 708),
(7031, 5031, 129),
(7032, 5032, 32),
(7033, 5033, 216),
(7034, 5034, 297),
(7035, 5035, 838),
(7036, 5036, 643),
(7037, 5037, 718),
(7038, 5038, 836),
(7039, 5039, 327),
(7040, 5040, 717),
(7041, 5041, 456),
(7042, 5042, 891),
(7043, 5043, 106),
(7044, 5044, 9),
(7045, 5045, 752),
(7046, 5046, 64),
(7047, 5047, 588),
(7048, 5048, 105),
(7049, 5049, 453),
(7050, 5050, 786),
(7051, 5051, 221),
(7052, 5052, 906),
(7053, 5053, 200),
(7054, 5054, 370),
(7055, 5055, 807),
(7056, 5056, 282),
(7057, 5057, 460),
(7058, 5058, 44),
(7059, 5059, 78),
(7060, 5060, 361),
(7061, 5061, 186),
(7062, 5062, 227),
(7063, 5063, 941),
(7064, 5064, 286),
(7065, 5065, 76),
(7066, 5066, 219),
(7067, 5067, 502),
(7068, 5068, 782),
(7069, 5069, 779),
(7070, 5070, 131),
(7071, 5071, 904),
(7072, 5072, 90),
(7073, 5073, 155),
(7074, 5074, 960),
(7075, 5075, 700),
(7076, 5076, 319),
(7077, 5077, 816),
(7078, 5078, 58),
(7079, 5079, 345),
(7080, 5080, 166),
(7081, 5081, 274),
(7082, 5082, 48),
(7083, 5083, 524),
(7084, 5084, 211),
(7085, 5085, 452),
(7086, 5086, 877),
(7087, 5087, 251),
(7088, 5088, 310),
(7089, 5089, 163),
(7090, 5090, 380),
(7091, 5091, 284),
(7092, 5092, 937),
(7093, 5093, 721),
(7094, 5094, 997),
(7095, 5095, 75),
(7096, 5096, 930),
(7097, 5097, 571),
(7098, 5098, 405),
(7099, 5099, 975);

-- --------------------------------------------------------

--
-- Table structure for table `ship_cost`
--

CREATE TABLE IF NOT EXISTS `ship_cost` (
  `ship_cost_id` int(11) NOT NULL,
  `ship_distance` varchar(25) NOT NULL,
  `ship_id` int(11) NOT NULL,
  `shipping_cost` decimal(19,4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ship_cost`
--

INSERT INTO `ship_cost` (`ship_cost_id`, `ship_distance`, `ship_id`, `shipping_cost`) VALUES
(4000, '891', 9000, '0.0000'),
(4001, '798', 9001, '0.0000'),
(4002, '824', 9002, '0.0000'),
(4003, '636', 9003, '0.0000'),
(4004, '167', 9004, '0.0000'),
(4005, '35', 9005, '0.0000'),
(4006, '714', 9006, '0.0000'),
(4007, '599', 9007, '0.0000'),
(4008, '276', 9008, '0.0000'),
(4009, '289', 9009, '0.0000'),
(4010, '528', 9010, '0.0000'),
(4011, '941', 9011, '0.0000'),
(4012, '758', 9012, '0.0000'),
(4013, '992', 9013, '0.0000'),
(4014, '887', 9014, '0.0000'),
(4015, '362', 9015, '0.0000'),
(4016, '424', 9016, '0.0000'),
(4017, '631', 9017, '0.0000'),
(4018, '698', 9018, '0.0000'),
(4019, '423', 9019, '0.0000'),
(4020, '167', 9020, '0.0000'),
(4021, '376', 9021, '0.0000'),
(4022, '643', 9022, '0.0000'),
(4023, '770', 9023, '0.0000'),
(4024, '914', 9024, '0.0000'),
(4025, '619', 9025, '0.0000'),
(4026, '136', 9026, '0.0000'),
(4027, '360', 9027, '0.0000'),
(4028, '380', 9028, '0.0000'),
(4029, '606', 9029, '0.0000'),
(4030, '126', 9030, '0.0000'),
(4031, '265', 9031, '0.0000'),
(4032, '898', 9032, '0.0000'),
(4033, '594', 9033, '0.0000'),
(4034, '101', 9034, '0.0000'),
(4035, '27', 9035, '0.0000'),
(4036, '635', 9036, '0.0000'),
(4037, '642', 9037, '0.0000'),
(4038, '641', 9038, '0.0000'),
(4039, '860', 9039, '0.0000'),
(4040, '524', 9040, '0.0000'),
(4041, '751', 9041, '0.0000'),
(4042, '288', 9042, '0.0000'),
(4043, '464', 9043, '0.0000'),
(4044, '283', 9044, '0.0000'),
(4045, '983', 9045, '0.0000'),
(4046, '658', 9046, '0.0000'),
(4047, '789', 9047, '0.0000'),
(4048, '570', 9048, '0.0000'),
(4049, '365', 9049, '0.0000'),
(4050, '670', 9050, '0.0000'),
(4051, '347', 9051, '0.0000'),
(4052, '185', 9052, '0.0000'),
(4053, '400', 9053, '0.0000'),
(4054, '185', 9054, '0.0000'),
(4055, '538', 9055, '0.0000'),
(4056, '24', 9056, '0.0000'),
(4057, '234', 9057, '0.0000'),
(4058, '789', 9058, '0.0000'),
(4059, '608', 9059, '0.0000'),
(4060, '533', 9060, '0.0000'),
(4061, '249', 9061, '0.0000'),
(4062, '566', 9062, '0.0000'),
(4063, '321', 9063, '0.0000'),
(4064, '665', 9064, '0.0000'),
(4065, '421', 9065, '0.0000'),
(4066, '565', 9066, '0.0000'),
(4067, '667', 9067, '0.0000'),
(4068, '180', 9068, '0.0000'),
(4069, '482', 9069, '0.0000'),
(4070, '537', 9070, '0.0000'),
(4071, '806', 9071, '0.0000'),
(4072, '79', 9072, '0.0000'),
(4073, '4', 9073, '0.0000'),
(4074, '348', 9074, '0.0000'),
(4075, '290', 9075, '0.0000'),
(4076, '88', 9076, '0.0000'),
(4077, '89', 9077, '0.0000'),
(4078, '316', 9078, '0.0000'),
(4079, '545', 9079, '0.0000'),
(4080, '188', 9080, '0.0000'),
(4081, '494', 9081, '0.0000'),
(4082, '340', 9082, '0.0000'),
(4083, '91', 9083, '0.0000'),
(4084, '439', 9084, '0.0000'),
(4085, '813', 9085, '0.0000'),
(4086, '546', 9086, '0.0000'),
(4087, '200', 9087, '0.0000'),
(4088, '945', 9088, '0.0000'),
(4089, '556', 9089, '0.0000'),
(4090, '564', 9090, '0.0000'),
(4091, '150', 9091, '0.0000'),
(4092, '134', 9092, '0.0000'),
(4093, '810', 9093, '0.0000'),
(4094, '105', 9094, '0.0000'),
(4095, '21', 9095, '0.0000'),
(4096, '86', 9096, '0.0000'),
(4097, '77', 9097, '0.0000'),
(4098, '396', 9098, '0.0000'),
(4099, '804', 9099, '0.0000');

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE IF NOT EXISTS `supplier` (
  `supplier_id` int(11) NOT NULL,
  `company_name` varchar(50) NOT NULL,
  `contact_name` int(11) NOT NULL,
  `contact_job_title` varchar(50) DEFAULT NULL,
  `company_phone` varchar(20) NOT NULL,
  `contact_phone` varchar(20) NOT NULL,
  `address_id` int(11) NOT NULL,
  `email` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`supplier_id`, `company_name`, `contact_name`, `contact_job_title`, `company_phone`, `contact_phone`, `address_id`, `email`) VALUES
(11000, 'Nulla Associates', 0, ''' \r\n\r\n''', '(451) 223-4124', '(609) 448-6086', 1000, NULL),
(11001, 'Vel Venenatis \r\n\r\nCompany', 0, ''' ''', '(770) 898-5980', '(740) 596-6456', 1001, NULL),
(11002, 'Lacus \r\n\r\nCras LLC', 0, ''' ''', '(420) 291-9849', '(606) 384-7315', 1002, NULL),
(11003, 'Felis \r\n\r\nDonec Tempor Incorporated', 0, ''' ''', '(900) 684-0523', '(607) 631-\r\n\r\n2586', 1003, NULL),
(11004, 'Vitae Aliquet Inc.', 0, ''' ''', '(869) 454-\r\n\r\n3166', '(256) 875-3989', 1004, NULL),
(11005, 'Pellentesque Sed Dictum Ltd', 0, ''' \r\n\r\n''', '(862) 212-9357', '(284) 570-5702', 1005, NULL),
(11006, 'Lorem Luctus \r\n\r\nIndustries', 0, ''' ''', '(317) 955-0784', '(230) 302-6511', 1006, NULL),
(11007, 'Commodo Tincidunt Nibh Corporation', 0, ''' ''', '(944) 375-\r\n\r\n5048', '(102) 253-9813', 1007, NULL),
(11008, 'Odio Institute', 0, ''' ''', '(512) \r\n\r\n497-1401', '(103) 957-0185', 1008, NULL),
(11009, 'Non Company', 0, ''' ''', '(330) \r\n\r\n499-8347', '(216) 596-8955', 1009, NULL),
(11010, 'Eu Augue PC', 0, ''' \r\n\r\n''', '(957) 517-4824', '(599) 420-3882', 1010, NULL),
(11011, 'Id LLP', 0, ''' ''', '(755) \r\n\r\n559-5628', '(414) 450-2685', 1011, NULL),
(11012, 'Sed Congue Industries', 0, ''' \r\n\r\n''', '(830) 162-7544', '(833) 784-7286', 1012, NULL),
(11013, 'Ac Ltd', 0, ''' \r\n\r\n''', '(950) 742-2174', '(153) 915-4349', 1013, NULL),
(11014, 'Vivamus Euismod \r\n\r\nFoundation', 0, ''' ''', '(689) 390-6007', '(983) 652-6459', 1014, NULL),
(11015, 'Nullam LLP', 0, ''' ''', '(332) 547-4383', '(796) 159-1270', 1015, NULL),
(11016, 'Feugiat Sed Nec Associates', 0, ''' ''', '(281) 136-8494', '(142) \r\n\r\n749-7469', 1016, NULL),
(11017, 'Metus In Industries', 0, ''' ''', '(588) 181-\r\n\r\n5132', '(361) 975-7468', 1017, NULL),
(11018, 'In Molestie PC', 0, ''' ''', '(702) \r\n\r\n508-1148', '(935) 676-1167', 1018, NULL),
(11019, 'Est Mauris Inc.', 0, ''' \r\n\r\n''', '(271) 501-7629', '(321) 887-8896', 1019, NULL),
(11020, 'Tristique \r\n\r\nIncorporated', 0, ''' ''', '(110) 332-3282', '(692) 686-0804', 1020, NULL),
(11021, 'Nunc Ac Mattis Ltd', 0, ''' ''', '(916) 206-5855', '(142) 658-\r\n\r\n9371', 1021, NULL),
(11022, 'Felis LLC', 0, ''' ''', '(244) 328-1658', '(570) 311-\r\n\r\n0113', 1022, NULL),
(11023, 'Congue Corp.', 0, ''' ''', '(754) 205-2545', '(990) 195-\r\n\r\n4687', 1023, NULL),
(11024, 'Purus Consulting', 0, ''' ''', '(196) 328-5278', '(494) \r\n\r\n886-9834', 1024, NULL),
(11025, 'Risus Nunc Ac Corporation', 0, ''' ''', '(292) 319-\r\n\r\n8452', '(565) 744-3262', 1025, NULL),
(11026, 'Ornare Fusce Mollis Ltd', 0, ''' \r\n\r\n''', '(349) 241-6617', '(767) 655-5268', 1026, NULL),
(11027, 'Diam Ltd', 0, ''' \r\n\r\n''', '(742) 212-1338', '(244) 565-2632', 1027, NULL),
(11028, 'Congue Turpis In \r\n\r\nIndustries', 0, ''' ''', '(235) 164-9267', '(380) 576-9238', 1028, NULL),
(11029, 'Consectetuer Adipiscing Elit Corporation', 0, ''' ''', '(581) 197-\r\n\r\n2178', '(783) 119-7929', 1029, NULL),
(11030, 'Turpis Egestas Company', 0, ''' \r\n\r\n''', '(255) 348-6766', '(190) 126-0283', 1030, NULL),
(11031, 'Odio LLC', 0, ''' \r\n\r\n''', '(408) 529-7480', '(282) 569-6056', 1031, NULL),
(11032, 'Consectetuer Euismod \r\n\r\nAssociates', 0, ''' ''', '(900) 136-6392', '(588) 988-9825', 1032, NULL),
(11033, 'Sed Company', 0, ''' ''', '(187) 136-3804', '(932) 153-\r\n\r\n1901', 1033, NULL),
(11034, 'Ac Associates', 0, ''' ''', '(138) 178-4805', '(743) 507\r\n\r\n-8369', 1034, NULL),
(11035, 'Aliquet Molestie Tellus PC', 0, ''' ''', '(534) 596-\r\n\r\n7884', '(354) 796-9214', 1035, NULL),
(11036, 'Libero Mauris Aliquam \r\n\r\nIndustries', 0, ''' ''', '(967) 666-6386', '(649) 587-0988', 1036, NULL),
(11037, 'Amet Ante Inc.', 0, ''' ''', '(933) 881-7245', '(733) 208-\r\n\r\n5416', 1037, NULL),
(11038, 'Vivamus Rhoncus Incorporated', 0, ''' ''', '(528) 391-\r\n\r\n5873', '(855) 618-5788', 1038, NULL),
(11039, 'Eleifend Vitae Erat Limited', 0, ''' \r\n\r\n''', '(640) 313-0815', '(640) 804-8212', 1039, NULL),
(11040, 'Lacus \r\n\r\nCorporation', 0, ''' ''', '(701) 312-0691', '(154) 643-9864', 1040, NULL),
(11041, 'Phasellus Elit Industries', 0, ''' ''', '(937) 404-4358', '(787) \r\n\r\n562-7605', 1041, NULL),
(11042, 'Risus Industries', 0, ''' ''', '(711) 357-\r\n\r\n4729', '(516) 266-7283', 1042, NULL),
(11043, 'Eu Dui Cum Corp.', 0, ''' ''', '(348) \r\n\r\n804-6111', '(779) 232-5448', 1043, NULL),
(11044, 'Penatibus Foundation', 0, ''' \r\n\r\n''', '(366) 471-0912', '(178) 323-8373', 1044, NULL),
(11045, 'Ipsum \r\n\r\nIncorporated', 0, ''' ''', '(885) 405-2398', '(784) 234-0647', 1045, NULL),
(11046, 'Cursus LLP', 0, ''' ''', '(660) 737-2288', '(830) 405-7172', 1046, NULL),
(11047, 'Metus Vivamus PC', 0, ''' ''', '(251) 673-4053', '(518) 370-\r\n\r\n0068', 1047, NULL),
(11048, 'Libero Associates', 0, ''' ''', '(587) 488-7585', '(369) \r\n\r\n662-7182', 1048, NULL),
(11049, 'Duis Ltd', 0, ''' ''', '(241) 330-0549', '(958) 693-\r\n\r\n5752', 1049, NULL),
(11050, 'Libero Dui Associates', 0, ''' ''', '(189) 765-\r\n\r\n0480', '(255) 406-2709', 1050, NULL),
(11051, 'At Institute', 0, ''' ''', '(659) 484\r\n\r\n-8669', '(307) 800-8462', 1051, NULL),
(11052, 'Donec LLP', 0, ''' ''', '(551) 842-\r\n\r\n1192', '(588) 365-3587', 1052, NULL),
(11053, 'Gravida Sagittis Duis \r\n\r\nLimited', 0, ''' ''', '(692) 388-0392', '(717) 579-2854', 1053, NULL),
(11054, 'Nibh \r\n\r\nConsulting', 0, ''' ''', '(609) 527-1396', '(129) 415-1123', 1054, NULL),
(11055, 'Suspendisse Ltd', 0, ''' ''', '(228) 944-7218', '(601) 744-\r\n\r\n7144', 1055, NULL),
(11056, 'Integer Corporation', 0, ''' ''', '(800) 765-1302', '(759) \r\n\r\n971-0881', 1056, NULL),
(11057, 'Ac Facilisis Facilisis Industries', 0, ''' \r\n\r\n''', '(679) 951-5815', '(831) 215-0186', 1057, NULL),
(11058, 'Ipsum Non \r\n\r\nLLC', 0, ''' ''', '(142) 663-0136', '(991) 876-3098', 1058, NULL),
(11059, 'Quam \r\n\r\nAssociates', 0, ''' ''', '(324) 930-1710', '(875) 281-0324', 1059, NULL),
(11060, 'Sapien Foundation', 0, ''' ''', '(104) 786-9943', '(849) 705-\r\n\r\n0185', 1060, NULL),
(11061, 'Quisque Industries', 0, ''' ''', '(808) 724-0546', '(731) \r\n\r\n327-3557', 1061, NULL),
(11062, 'Pede Nec Ltd', 0, ''' ''', '(242) 129-8255', '(806) \r\n\r\n346-1294', 1062, NULL),
(11063, 'Amet PC', 0, ''' ''', '(552) 769-8451', '(334) 663-\r\n\r\n3988', 1063, NULL),
(11064, 'Malesuada Corporation', 0, ''' ''', '(763) 480-\r\n\r\n5917', '(601) 357-6499', 1064, NULL),
(11065, 'Nec Limited', 0, ''' ''', '(962) 252\r\n\r\n-7692', '(547) 771-3418', 1065, NULL),
(11066, 'Varius Ultrices \r\n\r\nIndustries', 0, ''' ''', '(462) 469-1373', '(732) 795-2574', 1066, NULL),
(11067, 'Dolor Sit Inc.', 0, ''' ''', '(765) 312-2307', '(380) 844-\r\n\r\n3728', 1067, NULL),
(11068, 'Vulputate Industries', 0, ''' ''', '(805) 473-\r\n\r\n8209', '(578) 623-9776', 1068, NULL),
(11069, 'Curae; Institute', 0, ''' ''', '(839) \r\n\r\n304-6147', '(420) 679-9692', 1069, NULL),
(11070, 'Quisque Nonummy Ipsum PC', 0, ''' \r\n\r\n''', '(969) 517-9540', '(618) 401-3478', 1070, NULL),
(11071, 'Accumsan Laoreet \r\n\r\nInstitute', 0, ''' ''', '(565) 933-1823', '(299) 659-5640', 1071, NULL),
(11072, 'Lorem Eget Mollis Limited', 0, ''' ''', '(978) 257-1678', '(612) \r\n\r\n491-8595', 1072, NULL),
(11073, 'Ornare Sagittis Felis Industries', 0, ''' ''', '(631) \r\n\r\n534-7801', '(715) 122-0877', 1073, NULL),
(11074, 'Imperdiet Non Inc.', 0, ''' \r\n\r\n''', '(294) 826-8685', '(800) 530-8958', 1074, NULL),
(11075, 'Aliquet Nec \r\n\r\nCorp.', 0, ''' ''', '(998) 663-3013', '(580) 565-0194', 1075, NULL),
(11076, 'Vitae \r\n\r\nVelit Egestas Inc.', 0, ''' ''', '(906) 557-4729', '(222) 297-0707', 1076, NULL),
(11077, 'Donec Feugiat Ltd', 0, ''' ''', '(616) 510-6689', '(688) 948-\r\n\r\n8609', 1077, NULL),
(11078, 'Enim PC', 0, ''' ''', '(737) 776-4671', '(174) 885-\r\n\r\n9377', 1078, NULL),
(11079, 'Dictum Mi LLC', 0, ''' ''', '(477) 270-0453', '(223) 129\r\n\r\n-1871', 1079, NULL),
(11080, 'Libero Mauris PC', 0, ''' ''', '(752) 837-\r\n\r\n5272', '(440) 646-0385', 1080, NULL),
(11081, 'Elementum Purus Accumsan \r\n\r\nLimited', 0, ''' ''', '(845) 166-2498', '(827) 247-7687', 1081, NULL),
(11082, 'Nullam Scelerisque Institute', 0, ''' ''', '(720) 270-\r\n\r\n8975', '(764) 975-0970', 1082, NULL),
(11083, 'Sed Limited', 0, ''' ''', '(335) 951-\r\n\r\n0627', '(587) 307-0573', 1083, NULL),
(11084, 'Sem Incorporated', 0, ''' ''', '(518) \r\n\r\n294-6090', '(912) 860-3162', 1084, NULL),
(11085, 'Ut Molestie Corp.', 0, ''' \r\n\r\n''', '(251) 575-3460', '(606) 832-8253', 1085, NULL),
(11086, 'Ac Metus Vitae \r\n\r\nConsulting', 0, ''' ''', '(311) 976-6664', '(259) 383-7242', 1086, NULL),
(11087, 'Semper Rutrum Ltd', 0, ''' ''', '(628) 528-0652', '(159) 141-\r\n\r\n7118', 1087, NULL),
(11088, 'Libero Proin Mi Corporation', 0, ''' ''', '(870) 746-\r\n\r\n0346', '(316) 152-8949', 1088, NULL),
(11089, 'Interdum Nunc Sollicitudin \r\n\r\nIndustries', 0, ''' ''', '(291) 384-9558', '(139) 987-2283', 1089, NULL),
(11090, 'Donec PC', 0, ''' ''', '(816) 509-8317', '(163) 276-4516', 1090, NULL),
(11091, 'Ante Associates', 0, ''' ''', '(641) 226-0357', '(957) 746-\r\n\r\n4793', 1091, NULL),
(11092, 'Fermentum Institute', 0, ''' ''', '(889) 952-\r\n\r\n7839', '(524) 454-6247', 1092, NULL),
(11093, 'Nisi Inc.', 0, ''' ''', '(521) 618\r\n\r\n-2039', '(375) 289-9991', 1093, NULL),
(11094, 'Ornare PC', 0, ''' ''', '(817) 451-\r\n\r\n8469', '(488) 125-3347', 1094, NULL),
(11095, 'Mollis Nec Consulting', 0, ''' \r\n\r\n''', '(733) 508-9960', '(541) 976-0479', 1095, NULL),
(11096, 'Nulla Facilisis \r\n\r\nFoundation', 0, ''' ''', '(581) 167-0112', '(556) 801-7463', 1096, NULL),
(11097, 'Vel Lectus Inc.', 0, ''' ''', '(285) 226-4529', '(859) 826-\r\n\r\n8604', 1097, NULL),
(11098, 'Donec Tincidunt Donec Corporation', 0, ''' ''', '(350) \r\n\r\n253-4888', '(119) 320-9294', 1098, NULL),
(11099, 'Arcu Aliquam Ultrices \r\n\r\nAssociates', 0, ''' ''', '(747) 415-8037', '(739) 732-4078', 1099, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `supplier_discount`
--

CREATE TABLE IF NOT EXISTS `supplier_discount` (
  `material_id` int(11) NOT NULL,
  `supplier_id` int(11) NOT NULL,
  `min_qty` int(11) NOT NULL,
  `discount_percent` decimal(3,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supplier_discount`
--

INSERT INTO `supplier_discount` (`material_id`, `supplier_id`, `min_qty`, `discount_percent`) VALUES
(3000, 11000, 290, '9.99'),
(3001, 11001, 921, '1.42'),
(3002, 11002, 433, '6.65'),
(3003, 11003, 597, '9.99'),
(3004, 11004, 57, '9.99'),
(3005, 11005, 23, '9.99'),
(3006, 11006, 652, '6.90'),
(3007, 11007, 312, '9.99'),
(3008, 11008, 760, '9.99'),
(3009, 11009, 992, '9.99'),
(3010, 11010, 320, '9.99'),
(3011, 11011, 863, '6.89'),
(3012, 11012, 830, '9.99'),
(3013, 11013, 499, '9.99'),
(3014, 11014, 900, '9.99'),
(3015, 11015, 221, '9.99'),
(3016, 11016, 424, '9.99'),
(3017, 11017, 306, '9.99'),
(3018, 11018, 462, '4.58'),
(3019, 11019, 696, '9.99'),
(3020, 11020, 457, '9.99'),
(3021, 11021, 737, '9.99'),
(3022, 11022, 508, '9.99'),
(3023, 11023, 458, '9.99'),
(3024, 11024, 868, '9.99'),
(3025, 11025, 203, '9.99'),
(3026, 11026, 549, '9.99'),
(3027, 11027, 390, '9.99'),
(3028, 11028, 943, '9.99'),
(3029, 11029, 805, '9.99'),
(3030, 11030, 108, '4.79'),
(3031, 11031, 789, '9.99'),
(3032, 11032, 563, '9.99'),
(3033, 11033, 830, '9.99'),
(3034, 11034, 437, '3.99'),
(3035, 11035, 952, '9.99'),
(3036, 11036, 65, '9.99'),
(3037, 11037, 314, '9.99'),
(3038, 11038, 470, '9.99'),
(3039, 11039, 43, '9.99'),
(3040, 11040, 678, '9.99'),
(3041, 11041, 598, '9.99'),
(3042, 11042, 97, '9.99'),
(3043, 11043, 147, '9.99'),
(3044, 11044, 406, '9.99'),
(3045, 11045, 995, '2.10'),
(3046, 11046, 973, '9.99'),
(3047, 11047, 921, '6.18'),
(3048, 11048, 743, '9.99'),
(3049, 11049, 171, '9.99'),
(3050, 11050, 317, '9.99'),
(3051, 11051, 330, '9.99'),
(3052, 11052, 913, '9.99'),
(3053, 11053, 733, '9.99'),
(3054, 11054, 957, '9.99'),
(3055, 11055, 658, '9.99'),
(3056, 11056, 690, '9.99'),
(3057, 11057, 159, '9.99'),
(3058, 11058, 766, '0.01'),
(3059, 11059, 181, '9.99'),
(3060, 11060, 739, '9.99'),
(3061, 11061, 560, '9.99'),
(3062, 11062, 423, '9.99'),
(3063, 11063, 955, '9.99'),
(3064, 11064, 8, '9.99'),
(3065, 11065, 559, '9.99'),
(3066, 11066, 926, '9.99'),
(3067, 11067, 247, '9.99'),
(3068, 11068, 170, '9.99'),
(3069, 11069, 415, '9.99'),
(3070, 11070, 125, '9.99'),
(3071, 11071, 525, '9.99'),
(3072, 11072, 320, '0.04'),
(3073, 11073, 137, '9.99'),
(3074, 11074, 531, '5.32'),
(3075, 11075, 144, '9.99'),
(3076, 11076, 412, '9.71'),
(3077, 11077, 171, '9.99'),
(3078, 11078, 906, '9.99'),
(3079, 11079, 212, '9.99'),
(3080, 11080, 923, '1.31'),
(3081, 11081, 89, '3.30'),
(3082, 11082, 154, '9.99'),
(3083, 11083, 40, '9.99'),
(3084, 11084, 372, '9.99'),
(3085, 11085, 195, '9.99'),
(3086, 11086, 710, '9.99'),
(3087, 11087, 283, '9.99'),
(3088, 11088, 252, '9.99'),
(3089, 11089, 482, '9.99'),
(3090, 11090, 136, '9.99'),
(3091, 11091, 957, '9.99'),
(3092, 11092, 400, '9.99'),
(3093, 11093, 92, '9.99'),
(3094, 11094, 121, '9.99'),
(3095, 11095, 118, '9.99'),
(3096, 11096, 860, '9.99'),
(3097, 11097, 122, '9.63'),
(3098, 11098, 275, '9.99'),
(3099, 11099, 704, '9.99');

-- --------------------------------------------------------

--
-- Table structure for table `supplier_order`
--

CREATE TABLE IF NOT EXISTS `supplier_order` (
  `supplier_order_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `supplier_id` int(11) NOT NULL,
  `order_date` date NOT NULL,
  `subtotal` decimal(19,4) NOT NULL,
  `tax_amount` decimal(19,4) NOT NULL,
  `total_discount` decimal(19,4) NOT NULL,
  `total_price` decimal(19,4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supplier_order`
--

INSERT INTO `supplier_order` (`supplier_order_id`, `employee_id`, `supplier_id`, `order_date`, `subtotal`, `tax_amount`, `total_discount`, `total_price`) VALUES
(12000, 2000, 11000, '0000-00-00', '0.0000', '0.0000', '0.0000', '0.0000'),
(12001, 2001, 11001, '0000-00-00', '0.0000', '0.0000', '0.0000', '0.0000'),
(12002, 2002, 11002, '0000-00-00', '0.0000', '0.0000', '0.0000', '0.0000'),
(12003, 2003, 11003, '0000-00-00', '0.0000', '0.0000', '0.0000', '0.0000'),
(12004, 2004, 11004, '2001-02-17', '0.0000', '0.0000', '0.0000', '0.0000'),
(12005, 2005, 11005, '2008-04-16', '0.0000', '0.0000', '0.0000', '0.0000'),
(12006, 2006, 11006, '0000-00-00', '0.0000', '0.0000', '0.0000', '0.0000'),
(12007, 2007, 11007, '2005-10-15', '0.0000', '0.0000', '0.0000', '0.0000'),
(12008, 2008, 11008, '0000-00-00', '0.0000', '0.0000', '0.0000', '0.0000'),
(12009, 2009, 11009, '2008-03-16', '0.0000', '0.0000', '0.0000', '0.0000'),
(12010, 2010, 11010, '0000-00-00', '0.0000', '0.0000', '0.0000', '0.0000'),
(12011, 2011, 11011, '2004-10-15', '0.0000', '0.0000', '0.0000', '0.0000'),
(12012, 2012, 11012, '2002-04-16', '0.0000', '0.0000', '0.0000', '0.0000'),
(12013, 2013, 11013, '0000-00-00', '0.0000', '0.0000', '0.0000', '0.0000'),
(12014, 2014, 11014, '0000-00-00', '0.0000', '0.0000', '0.0000', '0.0000'),
(12015, 2015, 11015, '2004-02-15', '0.0000', '0.0000', '0.0000', '0.0000'),
(12016, 2016, 11016, '0000-00-00', '0.0000', '0.0000', '0.0000', '0.0000'),
(12017, 2017, 11017, '2009-09-16', '0.0000', '0.0000', '0.0000', '0.0000'),
(12018, 2018, 11018, '2012-02-16', '0.0000', '0.0000', '0.0000', '0.0000'),
(12019, 2019, 11019, '0000-00-00', '0.0000', '0.0000', '0.0000', '0.0000'),
(12020, 2020, 11020, '0000-00-00', '0.0000', '0.0000', '0.0000', '0.0000'),
(12021, 2021, 11021, '0000-00-00', '0.0000', '0.0000', '0.0000', '0.0000'),
(12022, 2022, 11022, '0000-00-00', '0.0000', '0.0000', '0.0000', '0.0000'),
(12023, 2023, 11023, '2002-02-17', '0.0000', '0.0000', '0.0000', '0.0000'),
(12024, 2024, 11024, '2010-08-15', '0.0000', '0.0000', '0.0000', '0.0000'),
(12025, 2025, 11025, '2005-01-16', '0.0000', '0.0000', '0.0000', '0.0000'),
(12026, 2026, 11026, '2006-04-15', '0.0000', '0.0000', '0.0000', '0.0000'),
(12027, 2027, 11027, '0000-00-00', '0.0000', '0.0000', '0.0000', '0.0000'),
(12028, 2028, 11028, '2008-08-15', '0.0000', '0.0000', '0.0000', '0.0000'),
(12029, 2029, 11029, '0000-00-00', '0.0000', '0.0000', '0.0000', '0.0000'),
(12030, 2030, 11030, '0000-00-00', '0.0000', '0.0000', '0.0000', '0.0000'),
(12031, 2031, 11031, '2003-06-17', '0.0000', '0.0000', '0.0000', '0.0000'),
(12032, 2032, 11032, '0000-00-00', '0.0000', '0.0000', '0.0000', '0.0000'),
(12033, 2033, 11033, '2002-01-16', '0.0000', '0.0000', '0.0000', '0.0000'),
(12034, 2034, 11034, '2007-06-15', '0.0000', '0.0000', '0.0000', '0.0000'),
(12035, 2035, 11035, '0000-00-00', '0.0000', '0.0000', '0.0000', '0.0000'),
(12036, 2036, 11036, '0000-00-00', '0.0000', '0.0000', '0.0000', '0.0000'),
(12037, 2037, 11037, '2001-06-16', '0.0000', '0.0000', '0.0000', '0.0000'),
(12038, 2038, 11038, '2009-03-15', '0.0000', '0.0000', '0.0000', '0.0000'),
(12039, 2039, 11039, '0000-00-00', '0.0000', '0.0000', '0.0000', '0.0000'),
(12040, 2040, 11040, '2002-01-16', '0.0000', '0.0000', '0.0000', '0.0000'),
(12041, 2041, 11041, '0000-00-00', '0.0000', '0.0000', '0.0000', '0.0000'),
(12042, 2042, 11042, '0000-00-00', '0.0000', '0.0000', '0.0000', '0.0000'),
(12043, 2043, 11043, '2012-07-15', '0.0000', '0.0000', '0.0000', '0.0000'),
(12044, 2044, 11044, '0000-00-00', '0.0000', '0.0000', '0.0000', '0.0000'),
(12045, 2045, 11045, '0000-00-00', '0.0000', '0.0000', '0.0000', '0.0000'),
(12046, 2046, 11046, '2002-03-17', '0.0000', '0.0000', '0.0000', '0.0000'),
(12047, 2047, 11047, '0000-00-00', '0.0000', '0.0000', '0.0000', '0.0000'),
(12048, 2048, 11048, '0000-00-00', '0.0000', '0.0000', '0.0000', '0.0000'),
(12049, 2049, 11049, '0000-00-00', '0.0000', '0.0000', '0.0000', '0.0000'),
(12050, 2050, 11050, '0000-00-00', '0.0000', '0.0000', '0.0000', '0.0000'),
(12051, 2051, 11051, '0000-00-00', '0.0000', '0.0000', '0.0000', '0.0000'),
(12052, 2052, 11052, '0000-00-00', '0.0000', '0.0000', '0.0000', '0.0000'),
(12053, 2053, 11053, '0000-00-00', '0.0000', '0.0000', '0.0000', '0.0000'),
(12054, 2054, 11054, '0000-00-00', '0.0000', '0.0000', '0.0000', '0.0000'),
(12055, 2055, 11055, '2005-11-15', '0.0000', '0.0000', '0.0000', '0.0000'),
(12056, 2056, 11056, '0000-00-00', '0.0000', '0.0000', '0.0000', '0.0000'),
(12057, 2057, 11057, '2005-04-15', '0.0000', '0.0000', '0.0000', '0.0000'),
(12058, 2058, 11058, '2008-03-16', '0.0000', '0.0000', '0.0000', '0.0000'),
(12059, 2059, 11059, '0000-00-00', '0.0000', '0.0000', '0.0000', '0.0000'),
(12060, 2060, 11060, '0000-00-00', '0.0000', '0.0000', '0.0000', '0.0000'),
(12061, 2061, 11061, '2006-01-16', '0.0000', '0.0000', '0.0000', '0.0000'),
(12062, 2062, 11062, '0000-00-00', '0.0000', '0.0000', '0.0000', '0.0000'),
(12063, 2063, 11063, '0000-00-00', '0.0000', '0.0000', '0.0000', '0.0000'),
(12064, 2064, 11064, '0000-00-00', '0.0000', '0.0000', '0.0000', '0.0000'),
(12065, 2065, 11065, '2003-11-16', '0.0000', '0.0000', '0.0000', '0.0000'),
(12066, 2066, 11066, '0000-00-00', '0.0000', '0.0000', '0.0000', '0.0000'),
(12067, 2067, 11067, '0000-00-00', '0.0000', '0.0000', '0.0000', '0.0000'),
(12068, 2068, 11068, '0000-00-00', '0.0000', '0.0000', '0.0000', '0.0000'),
(12069, 2069, 11069, '0000-00-00', '0.0000', '0.0000', '0.0000', '0.0000'),
(12070, 2070, 11070, '0000-00-00', '0.0000', '0.0000', '0.0000', '0.0000'),
(12071, 2071, 11071, '2004-07-15', '0.0000', '0.0000', '0.0000', '0.0000'),
(12072, 2072, 11072, '0000-00-00', '0.0000', '0.0000', '0.0000', '0.0000'),
(12073, 2073, 11073, '2002-04-17', '0.0000', '0.0000', '0.0000', '0.0000'),
(12074, 2074, 11074, '0000-00-00', '0.0000', '0.0000', '0.0000', '0.0000'),
(12075, 2075, 11075, '0000-00-00', '0.0000', '0.0000', '0.0000', '0.0000'),
(12076, 2076, 11076, '0000-00-00', '0.0000', '0.0000', '0.0000', '0.0000'),
(12077, 2077, 11077, '0000-00-00', '0.0000', '0.0000', '0.0000', '0.0000'),
(12078, 2078, 11078, '0000-00-00', '0.0000', '0.0000', '0.0000', '0.0000'),
(12079, 2079, 11079, '2003-05-17', '0.0000', '0.0000', '0.0000', '0.0000'),
(12080, 2080, 11080, '0000-00-00', '0.0000', '0.0000', '0.0000', '0.0000'),
(12081, 2081, 11081, '2009-02-15', '0.0000', '0.0000', '0.0000', '0.0000'),
(12082, 2082, 11082, '2011-09-16', '0.0000', '0.0000', '0.0000', '0.0000'),
(12083, 2083, 11083, '2010-12-15', '0.0000', '0.0000', '0.0000', '0.0000'),
(12084, 2084, 11084, '0000-00-00', '0.0000', '0.0000', '0.0000', '0.0000'),
(12085, 2085, 11085, '0000-00-00', '0.0000', '0.0000', '0.0000', '0.0000'),
(12086, 2086, 11086, '2011-02-16', '0.0000', '0.0000', '0.0000', '0.0000'),
(12087, 2087, 11087, '2002-08-16', '0.0000', '0.0000', '0.0000', '0.0000'),
(12088, 2088, 11088, '0000-00-00', '0.0000', '0.0000', '0.0000', '0.0000'),
(12089, 2089, 11089, '2002-09-17', '0.0000', '0.0000', '0.0000', '0.0000'),
(12090, 2090, 11090, '0000-00-00', '0.0000', '0.0000', '0.0000', '0.0000'),
(12091, 2091, 11091, '2006-02-16', '0.0000', '0.0000', '0.0000', '0.0000'),
(12092, 2092, 11092, '0000-00-00', '0.0000', '0.0000', '0.0000', '0.0000'),
(12093, 2093, 11093, '2012-02-16', '0.0000', '0.0000', '0.0000', '0.0000'),
(12094, 2094, 11094, '0000-00-00', '0.0000', '0.0000', '0.0000', '0.0000'),
(12095, 2095, 11095, '0000-00-00', '0.0000', '0.0000', '0.0000', '0.0000'),
(12096, 2096, 11096, '2006-05-16', '0.0000', '0.0000', '0.0000', '0.0000'),
(12097, 2097, 11097, '0000-00-00', '0.0000', '0.0000', '0.0000', '0.0000'),
(12098, 2098, 11098, '0000-00-00', '0.0000', '0.0000', '0.0000', '0.0000'),
(12099, 2099, 11099, '2008-10-16', '0.0000', '0.0000', '0.0000', '0.0000');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `employee_id` int(11) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `accessLevel` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`employee_id`, `password_hash`, `accessLevel`) VALUES
(2000, 'IYP48KTY3DT', 1),
(2001, 'UAG21IPN5LG', 2),
(2002, 'LIU86USG1ZA', 2),
(2003, 'FPY64SMM9AT', 1),
(2004, 'BUN89MNU8OR', 1),
(2005, 'NXS66RME4BA', 2),
(2006, 'EDU72QOH9MG', 1),
(2007, 'CPP63MHJ5AT', 2),
(2008, 'VJN33VRR9NE', 1),
(2009, 'AWH38DVT3GJ', 1),
(2010, 'ICY15LRL7VE', 1),
(2011, 'PHC79FHJ0HN', 2),
(2012, 'ISK90UAC8WD', 1),
(2013, 'SNB29MGU0XZ', 2),
(2014, 'HOU35BHV5UC', 1),
(2015, 'AEX15MEH2AD', 1),
(2016, 'MMD46JBO4CK', 2),
(2017, 'XWS19LEX7VJ', 2),
(2018, 'VGB54DDF2EB', 1),
(2019, 'SPL39DUX0ZP', 1),
(2020, 'UIU91WEV7AC', 1),
(2021, 'IRA41WNF9VZ', 1),
(2022, 'SZZ64IDX3RM', 1),
(2023, 'HCY56CFG8XV', 1),
(2024, 'XGG44VBR3PO', 2),
(2025, 'NCM76ABG4BM', 2),
(2026, 'HRG07HLI1EQ', 1),
(2027, 'NIA69FQL4IM', 2),
(2028, 'RQB78RON0OG', 1),
(2029, 'FYZ59IOL3JO', 1),
(2030, 'YUR73NJR2TE', 1),
(2031, 'GHE21PPX2ZT', 1),
(2032, 'VOS29KMR0PD', 2),
(2033, 'ZZD01WZH7BN', 1),
(2034, 'VWL96YCD0DE', 2),
(2035, 'TKR04HEJ2EH', 2),
(2036, 'VOD76RRQ6IZ', 2),
(2037, 'QXR60LHW9HC', 2),
(2038, 'NSN93WTC3RH', 2),
(2039, 'YFQ08PRX0BM', 1),
(2040, 'YHG94WPJ1ZW', 2),
(2041, 'TDT58KRR9ZF', 2),
(2042, 'OQV60QQZ0FG', 1),
(2043, 'HQH02EUG5JQ', 1),
(2044, 'LBM01LIQ3YP', 2),
(2045, 'AKZ36DCD6AM', 1),
(2046, 'VXY16ZPL7JG', 2),
(2047, 'XID78KDB1EQ', 2),
(2048, 'NEW99IHA4JX', 1),
(2049, 'QWQ47IOT4UE', 2),
(2050, 'JHH09ZOM0SC', 2),
(2051, 'DVC28AMH8CP', 1),
(2052, 'URZ91FWI8EF', 1),
(2053, 'ORT33OEA1OS', 1),
(2054, 'DUY95CVT2LU', 1),
(2055, 'OTQ08YKC0DY', 1),
(2056, 'YMM44IWG2FG', 2),
(2057, 'XYN62SOW2QG', 2),
(2058, 'UTB64EJZ7GG', 2),
(2059, 'NDR96YFC2EH', 1),
(2060, 'WBK73QMD9AN', 2),
(2061, 'RBM30LTJ7FH', 1),
(2062, 'QLM81DTP4TW', 2),
(2063, 'SMH77WWH8MO', 2),
(2064, 'SPB27DKE5QQ', 1),
(2065, 'NMK05FPK7IC', 1),
(2066, 'XYX07PMI0BR', 2),
(2067, 'DOG42GHJ2PX', 1),
(2068, 'MID07DIQ1NH', 2),
(2069, 'CFL86NQX3NR', 1),
(2070, 'PSM96PHO0BR', 1),
(2071, 'YNH76HGQ8VL', 2),
(2072, 'XWY89VWQ9AD', 1),
(2073, 'ZBK21BFQ8SN', 1),
(2074, 'MOS60VHE2AW', 2),
(2075, 'WUF90AAV8JX', 1),
(2076, 'ARS36SEY4RM', 2),
(2077, 'ENE41CPI7SX', 1),
(2078, 'EGT11BKI4WA', 2),
(2079, 'ECJ55ZAH3SB', 2),
(2080, 'AXS48REV5ZI', 1),
(2081, 'GTN03FVW3EB', 2),
(2082, 'QKV83SSC0DN', 2),
(2083, 'UJP43AUD9FZ', 2),
(2084, 'FPW34ZTC4HS', 2),
(2085, 'YFV71JTJ9DI', 1),
(2086, 'HEW94JNB7IJ', 2),
(2087, 'EUC99DYT7CS', 1),
(2088, 'RUO70XTG9PO', 1),
(2089, 'ABJ29EVE8GE', 1),
(2090, 'MIV40CUI3MB', 2),
(2091, 'HOF51YTX0YX', 2),
(2092, 'CDM78EVQ8UT', 1),
(2093, 'AOV12FHO4FZ', 1),
(2094, 'JDN91TTA1YJ', 2),
(2095, 'FPI87YPX2UL', 2),
(2096, 'OYX89WQP9CA', 1),
(2097, 'TLA32ZDU9JR', 1),
(2098, 'NVQ33WHA0CD', 2),
(2099, 'DGU62HJA9MI', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address`
--
ALTER TABLE `address`
 ADD PRIMARY KEY (`address_id`);

--
-- Indexes for table `craft`
--
ALTER TABLE `craft`
 ADD PRIMARY KEY (`craft_id`), ADD KEY `Craft_Item` (`item_id`);

--
-- Indexes for table `craft_materials`
--
ALTER TABLE `craft_materials`
 ADD PRIMARY KEY (`material_id`,`craft_id`), ADD KEY `Craft_materials_Craft` (`craft_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
 ADD PRIMARY KEY (`customer_id`), ADD KEY `Customer_Address` (`address_id`);

--
-- Indexes for table `custom_order`
--
ALTER TABLE `custom_order`
 ADD PRIMARY KEY (`custom_order_id`), ADD KEY `Custom_Order_Order` (`order_id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
 ADD PRIMARY KEY (`employee_id`), ADD KEY `Employee_Address` (`address_id`);

--
-- Indexes for table `gift_order`
--
ALTER TABLE `gift_order`
 ADD PRIMARY KEY (`gift_id`), ADD KEY `Gift_Order_Address` (`address_id`), ADD KEY `Gift_Order_Order` (`order_id`);

--
-- Indexes for table `gift_shipping`
--
ALTER TABLE `gift_shipping`
 ADD PRIMARY KEY (`ship_id`), ADD KEY `Gift_Shipping_Address` (`address_id`), ADD KEY `Gift_Shipping_Gift_Order` (`gift_id`);

--
-- Indexes for table `item`
--
ALTER TABLE `item`
 ADD PRIMARY KEY (`item_id`);

--
-- Indexes for table `local_vendors`
--
ALTER TABLE `local_vendors`
 ADD PRIMARY KEY (`vendor_id`), ADD KEY `Local_vendors_Address` (`address_id`);

--
-- Indexes for table `material`
--
ALTER TABLE `material`
 ADD PRIMARY KEY (`material_id`), ADD KEY `Material_Item` (`item_id`), ADD KEY `Material_Supplier` (`supplier_id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
 ADD PRIMARY KEY (`order_id`), ADD KEY `Order_Employee` (`employee_id`), ADD KEY `client_order` (`customer_id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
 ADD PRIMARY KEY (`order_id`,`item_id`), ADD KEY `Order_Details_Item` (`item_id`);

--
-- Indexes for table `order_materials`
--
ALTER TABLE `order_materials`
 ADD PRIMARY KEY (`material_id`,`supplier_order_id`), ADD KEY `Order_Materials_Supplier_Order` (`supplier_order_id`);

--
-- Indexes for table `returns_inventory`
--
ALTER TABLE `returns_inventory`
 ADD PRIMARY KEY (`return_id`), ADD KEY `Returns_Inventory_Order` (`order_id`);

--
-- Indexes for table `return_details`
--
ALTER TABLE `return_details`
 ADD PRIMARY KEY (`return_id`,`item_id`), ADD KEY `return_details_Item` (`item_id`);

--
-- Indexes for table `ship_cost`
--
ALTER TABLE `ship_cost`
 ADD PRIMARY KEY (`ship_cost_id`), ADD KEY `Ship_Cost_Gift_Shipping` (`ship_id`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
 ADD PRIMARY KEY (`supplier_id`), ADD KEY `Supplier_Address` (`address_id`);

--
-- Indexes for table `supplier_discount`
--
ALTER TABLE `supplier_discount`
 ADD PRIMARY KEY (`material_id`,`supplier_id`), ADD KEY `Discount_Supplier` (`supplier_id`);

--
-- Indexes for table `supplier_order`
--
ALTER TABLE `supplier_order`
 ADD PRIMARY KEY (`supplier_order_id`), ADD KEY `Supplier_Order_Employee` (`employee_id`), ADD KEY `Supplier_Order_Supplier` (`supplier_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
 ADD PRIMARY KEY (`employee_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `craft`
--
ALTER TABLE `craft`
ADD CONSTRAINT `Craft_Item` FOREIGN KEY (`item_id`) REFERENCES `item` (`item_id`);

--
-- Constraints for table `craft_materials`
--
ALTER TABLE `craft_materials`
ADD CONSTRAINT `Craft_materials_Craft` FOREIGN KEY (`craft_id`) REFERENCES `craft` (`craft_id`),
ADD CONSTRAINT `Craft_materials_Material` FOREIGN KEY (`material_id`) REFERENCES `material` (`material_id`);

--
-- Constraints for table `customer`
--
ALTER TABLE `customer`
ADD CONSTRAINT `Customer_Address` FOREIGN KEY (`address_id`) REFERENCES `address` (`address_id`);

--
-- Constraints for table `custom_order`
--
ALTER TABLE `custom_order`
ADD CONSTRAINT `Custom_Order_Order` FOREIGN KEY (`order_id`) REFERENCES `order` (`order_id`);

--
-- Constraints for table `employee`
--
ALTER TABLE `employee`
ADD CONSTRAINT `Employee_Address` FOREIGN KEY (`address_id`) REFERENCES `address` (`address_id`);

--
-- Constraints for table `gift_order`
--
ALTER TABLE `gift_order`
ADD CONSTRAINT `Gift_Order_Address` FOREIGN KEY (`address_id`) REFERENCES `address` (`address_id`),
ADD CONSTRAINT `Gift_Order_Order` FOREIGN KEY (`order_id`) REFERENCES `order` (`order_id`);

--
-- Constraints for table `gift_shipping`
--
ALTER TABLE `gift_shipping`
ADD CONSTRAINT `Gift_Shipping_Address` FOREIGN KEY (`address_id`) REFERENCES `address` (`address_id`),
ADD CONSTRAINT `Gift_Shipping_Gift_Order` FOREIGN KEY (`gift_id`) REFERENCES `gift_order` (`gift_id`);

--
-- Constraints for table `local_vendors`
--
ALTER TABLE `local_vendors`
ADD CONSTRAINT `Local_vendors_Address` FOREIGN KEY (`address_id`) REFERENCES `address` (`address_id`);

--
-- Constraints for table `material`
--
ALTER TABLE `material`
ADD CONSTRAINT `Material_Item` FOREIGN KEY (`item_id`) REFERENCES `item` (`item_id`),
ADD CONSTRAINT `Material_Supplier` FOREIGN KEY (`supplier_id`) REFERENCES `supplier` (`supplier_id`);

--
-- Constraints for table `order`
--
ALTER TABLE `order`
ADD CONSTRAINT `Order_Employee` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`employee_id`),
ADD CONSTRAINT `client_order` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`);

--
-- Constraints for table `order_details`
--
ALTER TABLE `order_details`
ADD CONSTRAINT `Order_Details_Item` FOREIGN KEY (`item_id`) REFERENCES `item` (`item_id`),
ADD CONSTRAINT `purchase_purchase_item` FOREIGN KEY (`order_id`) REFERENCES `order` (`order_id`);

--
-- Constraints for table `order_materials`
--
ALTER TABLE `order_materials`
ADD CONSTRAINT `Order_Materials_Material` FOREIGN KEY (`material_id`) REFERENCES `material` (`material_id`),
ADD CONSTRAINT `Order_Materials_Supplier_Order` FOREIGN KEY (`supplier_order_id`) REFERENCES `supplier_order` (`supplier_order_id`);

--
-- Constraints for table `returns_inventory`
--
ALTER TABLE `returns_inventory`
ADD CONSTRAINT `Returns_Inventory_Order` FOREIGN KEY (`order_id`) REFERENCES `order` (`order_id`);

--
-- Constraints for table `return_details`
--
ALTER TABLE `return_details`
ADD CONSTRAINT `return_details_Item` FOREIGN KEY (`item_id`) REFERENCES `item` (`item_id`),
ADD CONSTRAINT `return_details_Returns_Inventory` FOREIGN KEY (`return_id`) REFERENCES `returns_inventory` (`return_id`);

--
-- Constraints for table `ship_cost`
--
ALTER TABLE `ship_cost`
ADD CONSTRAINT `Ship_Cost_Gift_Shipping` FOREIGN KEY (`ship_id`) REFERENCES `gift_shipping` (`ship_id`);

--
-- Constraints for table `supplier`
--
ALTER TABLE `supplier`
ADD CONSTRAINT `Supplier_Address` FOREIGN KEY (`address_id`) REFERENCES `address` (`address_id`);

--
-- Constraints for table `supplier_discount`
--
ALTER TABLE `supplier_discount`
ADD CONSTRAINT `Discount_Material` FOREIGN KEY (`material_id`) REFERENCES `material` (`material_id`),
ADD CONSTRAINT `Discount_Supplier` FOREIGN KEY (`supplier_id`) REFERENCES `supplier` (`supplier_id`);

--
-- Constraints for table `supplier_order`
--
ALTER TABLE `supplier_order`
ADD CONSTRAINT `Supplier_Order_Employee` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`employee_id`),
ADD CONSTRAINT `Supplier_Order_Supplier` FOREIGN KEY (`supplier_id`) REFERENCES `supplier` (`supplier_id`);

--
-- Constraints for table `user`
--
ALTER TABLE `user`
ADD CONSTRAINT `Users_Employee` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`employee_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
