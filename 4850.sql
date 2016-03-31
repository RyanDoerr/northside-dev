-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 31, 2016 at 05:45 PM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `4850`
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
(1, 6282, NULL, '', '', NULL, '', 'house', NULL, 'Brentwood', 'Tennessee', '935038', 'Be'),
(2, 633, NULL, '', '', NULL, '', 'house', NULL, 'Pozna?', 'Tennessee', '06017-725', 'Ke'),
(5, 1873, NULL, '', '', NULL, '', 'house', NULL, 'Abingdon', 'Tennessee', '59926', 'Br'),
(6, 6423, NULL, '', '', NULL, '', 'house', NULL, 'Wyoming', 'Tennessee', '407044', 'Gu'),
(7, 232, NULL, '', '', NULL, '', 'house', NULL, 'Castello dell''Acqua', 'Tennessee', '32648-294', 'Er'),
(8, 1246, NULL, '', '', NULL, '', 'house', NULL, 'Alcalá de Henares', 'Tennessee', '1696', 'Tu'),
(9, 394, NULL, '', '', NULL, '', 'house', NULL, 'Konya', 'Tennessee', '85844', 'Ja'),
(10, 6018, NULL, '', '', NULL, '', 'house', NULL, 'Ligosullo', 'Tennessee', '7954GD', 'Gu'),
(11, 2978, NULL, '', '', NULL, '', 'house', NULL, 'Rajkot', 'Tennessee', '25-432', 'Vi'),
(12, 7385, NULL, '', '', NULL, '', 'house', NULL, 'Fontecchio', 'Tennessee', '07139', 'Ce'),
(13, 7988, NULL, '', '', NULL, '', 'house', NULL, 'Blackwood', 'Tennessee', '3035', 'Sv'),
(14, 9592, NULL, '', '', NULL, '', 'house', NULL, 'Jerzu', 'Tennessee', 'Y9X 9B8', 'Be'),
(15, 4805, NULL, '', '', NULL, '', 'house', NULL, 'Luckenwalde', 'Tennessee', '1896DX', 'Pa'),
(16, 1603, NULL, '', '', NULL, '', 'house', NULL, 'Alto del Carmen', 'Tennessee', '2995', 'Pa'),
(17, 9502, NULL, '', '', NULL, '', 'house', NULL, 'Rivi?re-du-Loup', 'Tennessee', '1353', 'Ca'),
(18, 373, NULL, '', '', NULL, '', 'house', NULL, 'Morrinsville', 'Tennessee', '80474', 'Ch'),
(19, 8899, NULL, '', '', NULL, '', 'house', NULL, 'Taltal', 'Tennessee', '59953-397', 'Bo'),
(20, 9730, NULL, '', '', NULL, '', 'house', NULL, 'Dro', 'Tennessee', '44815', 'Sa'),
(21, 2290, NULL, '', '', NULL, '', 'house', NULL, 'Tresigallo', 'Tennessee', '75-112', 'Ge'),
(22, 3560, NULL, '', '', NULL, '', 'house', NULL, 'Innisfail', 'Tennessee', '95-753', 'Po'),
(23, 3352, NULL, '', '', NULL, '', 'house', NULL, 'Great Falls', 'Tennessee', '8884', 'Gu'),
(24, 3651, NULL, '', '', NULL, '', 'house', NULL, 'Pica', 'Tennessee', '518864', 'Vi'),
(25, 3188, NULL, '', '', NULL, '', 'house', NULL, 'Sasaram', 'Tennessee', '8174VB', 'Ta'),
(26, 497, NULL, '', '', NULL, '', 'house', NULL, 'Bahawalpur', 'Tennessee', '35387', 'Ur'),
(27, 5428, NULL, '', '', NULL, '', 'house', NULL, 'Stornaway', 'Tennessee', 'E9M 9S4', 'Wa'),
(28, 8872, NULL, '', '', NULL, '', 'house', NULL, 'Köln', 'Tennessee', '428494', 'Ic'),
(29, 2652, NULL, '', '', NULL, '', 'house', NULL, 'Campbeltown', 'Tennessee', '77263', 'Om'),
(30, 1536, NULL, '', '', NULL, '', 'house', NULL, 'Sennariolo', 'Tennessee', '82811', 'Tr'),
(31, 7963, NULL, '', '', NULL, '', 'house', NULL, 'Felixstowe', 'Tennessee', '923010', 'Pi'),
(32, 3852, NULL, '', '', NULL, '', 'house', NULL, 'San Marcello', 'Tennessee', '701439', 'Ma'),
(33, 7645, NULL, '', '', NULL, '', 'house', NULL, 'Mariakerke', 'Tennessee', '5400', 'Ge'),
(34, 1851, NULL, '', '', NULL, '', 'house', NULL, 'Montemilone', 'Tennessee', '51056', 'Pa'),
(35, 6911, NULL, '', '', NULL, '', 'house', NULL, 'Sargodha', 'Tennessee', '51611', 'Sa'),
(36, 9682, NULL, '', '', NULL, '', 'house', NULL, 'Fortune', 'Tennessee', '49547-182', 'Ar'),
(37, 2408, NULL, '', '', NULL, '', 'house', NULL, 'Balen', 'Tennessee', '9994', 'We'),
(38, 5806, NULL, '', '', NULL, '', 'house', NULL, 'Harlingen', 'Tennessee', '8453OF', 'Ha'),
(39, 5229, NULL, '', '', NULL, '', 'house', NULL, 'Davoli', 'Tennessee', '50813', 'In'),
(40, 2608, NULL, '', '', NULL, '', 'house', NULL, 'Greymouth', 'Tennessee', '5210', 'Sr'),
(41, 9860, NULL, '', '', NULL, '', 'house', NULL, 'Andalo', 'Tennessee', '73729-222', 'Si'),
(42, 7161, NULL, '', '', NULL, '', 'house', NULL, 'Fusignano', 'Tennessee', '5384WC', 'Sp'),
(43, 2806, NULL, '', '', NULL, '', 'house', NULL, 'Murwara', 'Tennessee', '5740', 'Az'),
(44, 1951, NULL, '', '', NULL, '', 'house', NULL, 'Detroit', 'Tennessee', '23283', 'Un'),
(45, 854, NULL, '', '', NULL, '', 'house', NULL, 'Inuvik', 'Tennessee', '6897OE', 'Mo'),
(46, 5804, NULL, '', '', NULL, '', 'house', NULL, 'Watermaal-Bosvoorde', 'Tennessee', '4244YU', 'Ch'),
(47, 9758, NULL, '', '', NULL, '', 'house', NULL, 'Cap-Saint-Ignace', 'Tennessee', '20218', 'Ni'),
(48, 7545, NULL, '', '', NULL, '', 'house', NULL, 'Newmarket', 'Tennessee', '980218', 'Sa'),
(49, 2734, NULL, '', '', NULL, '', 'house', NULL, 'Palombaro', 'Tennessee', '6787', 'Sl'),
(50, 9739, NULL, '', '', NULL, '', 'house', NULL, 'St. Clears', 'Tennessee', '41312', 'Mo'),
(51, 5067, NULL, '', '', NULL, '', 'house', NULL, 'Pau', 'Tennessee', '6587', 'Dj'),
(52, 7, NULL, '', '', NULL, '', 'house', NULL, 'Coronel', 'Tennessee', '02704', 'Ma'),
(53, 9749, NULL, '', '', NULL, '', 'house', NULL, 'Heusden', 'Tennessee', '1041', 'To'),
(54, 671, NULL, '', '', NULL, '', 'house', NULL, 'Nieuwerkerken', 'Tennessee', '3483', 'Cr'),
(55, 4732, NULL, '', '', NULL, '', 'house', NULL, 'Oteppe', 'Tennessee', '5374', 'Ga'),
(56, 5499, NULL, '', '', NULL, '', 'house', NULL, 'Kingston', 'Tennessee', '36675', 'My'),
(57, 7395, NULL, '', '', NULL, '', 'house', NULL, 'Ingraj Bazar', 'Tennessee', '68816', 'Sa'),
(58, 8088, NULL, '', '', NULL, '', 'house', NULL, 'Collines-de-l''Outaouais', 'Tennessee', '11304', 'Bu'),
(59, 2537, NULL, '', '', NULL, '', 'house', NULL, 'Bayonne', 'Tennessee', '1382', 'Se'),
(60, 3632, NULL, '', '', NULL, '', 'house', NULL, 'Uyo', 'Tennessee', '67782', 'Ni'),
(61, 5770, NULL, '', '', NULL, '', 'house', NULL, 'Biloxi', 'Tennessee', '005704', 'Rw'),
(62, 2120, NULL, '', '', NULL, '', 'house', NULL, 'Cornwall', 'Tennessee', '81042', 'Am'),
(63, 1012, NULL, '', '', NULL, '', 'house', NULL, 'Açailândia', 'Tennessee', '89483', 'My'),
(64, 3841, NULL, '', '', NULL, '', 'house', NULL, 'Mandela', 'Tennessee', '94774-918', 'Gu'),
(65, 3450, NULL, '', '', NULL, '', 'house', NULL, 'East Kilbride', 'Tennessee', '322446', 'Pe'),
(66, 770, NULL, '', '', NULL, '', 'house', NULL, 'Chillán', 'Tennessee', '24-572', 'Sa'),
(67, 2427, NULL, '', '', NULL, '', 'house', NULL, 'Maubeuge', 'Tennessee', '11213', 'So'),
(68, 2517, NULL, '', '', NULL, '', 'house', NULL, 'Camrose', 'Tennessee', '1878', 'Mo'),
(69, 1836, NULL, '', '', NULL, '', 'house', NULL, 'Pincher Creek', 'Tennessee', '122056', 'Ha'),
(70, 718, NULL, '', '', NULL, '', 'house', NULL, 'San Ramón', 'Tennessee', '11546', 'Un'),
(71, 489, NULL, '', '', NULL, '', 'house', NULL, 'Faisalabad', 'Tennessee', '13-944', 'Ni'),
(72, 1194, NULL, '', '', NULL, '', 'house', NULL, 'Bergeggi', 'Tennessee', '6282', 'Ål'),
(73, 7809, NULL, '', '', NULL, '', 'house', NULL, 'Ofena', 'Tennessee', 'T3P 2P2', 'Po'),
(74, 4445, NULL, '', '', NULL, '', 'house', NULL, 'Woking', 'Tennessee', '11510', 'Un'),
(75, 6379, NULL, '', '', NULL, '', 'house', NULL, 'Santa Vittoria in Matenano', 'Tennessee', 'Y6N 9A7', 'Jo'),
(76, 9401, NULL, '', '', NULL, '', 'house', NULL, 'Padre Hurtado', 'Tennessee', '2369', 'Bo'),
(77, 7120, NULL, '', '', NULL, '', 'house', NULL, 'St. Thomas', 'Tennessee', '1831', 'Th'),
(78, 8648, NULL, '', '', NULL, '', 'house', NULL, 'Elbistan', 'Tennessee', '700191', 'Si'),
(79, 577, NULL, '', '', NULL, '', 'house', NULL, 'Erode', 'Tennessee', 'N5T 7ML', 'Tu'),
(80, 6790, NULL, '', '', NULL, '', 'house', NULL, 'Valera Fratta', 'Tennessee', '1916', 'An'),
(81, 1758, NULL, '', '', NULL, '', 'house', NULL, 'Canora', 'Tennessee', '04566', 'Ma'),
(82, 8733, NULL, '', '', NULL, '', 'house', NULL, 'Coleville Lake', 'Tennessee', '26-703', 'An'),
(83, 9528, NULL, '', '', NULL, '', 'house', NULL, 'Hanau', 'Tennessee', '2051XL', 'Ki'),
(84, 8614, NULL, '', '', NULL, '', 'house', NULL, 'Fermont', 'Tennessee', '39400', 'Un'),
(85, 472, NULL, '', '', NULL, '', 'house', NULL, 'Norman', 'Tennessee', 'R9Z 7S0', 'Ky'),
(86, 2575, NULL, '', '', NULL, '', 'house', NULL, 'Northampton', 'Tennessee', '842610', 'Ni'),
(87, 848, NULL, '', '', NULL, '', 'house', NULL, 'Rosenheim', 'Tennessee', '56323', 'Un'),
(88, 4508, NULL, '', '', NULL, '', 'house', NULL, 'Girona', 'Tennessee', '0220', 'Gr'),
(89, 8862, NULL, '', '', NULL, '', 'house', NULL, 'Lasne', 'Tennessee', '42788', 'Sa'),
(90, 6864, NULL, '', '', NULL, '', 'house', NULL, 'Recoleta', 'Tennessee', '44679', 'Be'),
(91, 7355, NULL, '', '', NULL, '', 'house', NULL, 'Gravilias', 'Tennessee', 'L8N 5Z8', 'Ch'),
(92, 9665, NULL, '', '', NULL, '', 'house', NULL, 'Salice Salentino', 'Tennessee', '69-514', 'No'),
(93, 3942, NULL, '', '', NULL, '', 'house', NULL, 'Biesme-sous-Thuin', 'Tennessee', '9548', 'De'),
(94, 9002, NULL, '', '', NULL, '', 'house', NULL, 'Castor', 'Tennessee', '3561DA', 'Sa'),
(95, 4979, NULL, '', '', NULL, '', 'house', NULL, 'Pavone del Mella', 'Tennessee', '46-889', 'Gu'),
(96, 2944, NULL, '', '', NULL, '', 'house', NULL, 'Sousa', 'Tennessee', '2627', 'Pa'),
(97, 3555, NULL, '', '', NULL, '', 'house', NULL, 'Allein', 'Tennessee', 'P2M 2H3', 'Mo'),
(98, 2130, NULL, '', '', NULL, '', 'house', NULL, 'Municipal District', 'Tennessee', '52-522', 'Mo'),
(99, 6440, NULL, '', '', NULL, '', 'house', NULL, 'Baden', 'Tennessee', '92502', 'Pa'),
(100, 7273, NULL, '', '', NULL, '', 'house', NULL, 'Hoeilaart', 'Tennessee', '6439', 'Ni'),
(1000, 8285, NULL, '', '', NULL, '', 'house', NULL, 'Rycroft', 'Tennessee', '30419', 'Rw'),
(1001, 8760, NULL, '', '', NULL, '', 'house', NULL, 'Aschaffenburg', 'Tennessee', '95045', 'Ti'),
(1002, 1602, NULL, '', '', NULL, '', 'house', NULL, 'Chiusanico', 'Tennessee', '10078', 'Si'),
(1003, 2258, NULL, '', '', NULL, '', 'house', NULL, 'Leeds', 'Tennessee', 'P4X 5E1', 'Bh'),
(1004, 6437, NULL, '', '', NULL, '', 'house', NULL, 'San Pietro Avellana', 'Tennessee', '58104-561', 'My'),
(1005, 6198, NULL, '', '', NULL, '', 'house', NULL, 'Grobbendonk', 'Tennessee', '9410', 'Pa'),
(1006, 3382, NULL, '', '', NULL, '', 'house', NULL, 'Grado', 'Tennessee', '8420', 'Bh'),
(1007, 4213, NULL, '', '', NULL, '', 'house', NULL, 'Essex', 'Tennessee', '62-811', 'Le'),
(1008, 7685, NULL, '', '', NULL, '', 'house', NULL, 'Aurangabad', 'Tennessee', '5659', 'Gu'),
(1009, 3130, NULL, '', '', NULL, '', 'house', NULL, 'Savannah', 'Tennessee', '27354', 'Co'),
(1010, 6882, NULL, '', '', NULL, '', 'house', NULL, 'Fino Mornasco', 'Tennessee', '26429', 'Ch'),
(1011, 3981, NULL, '', '', NULL, '', 'house', NULL, 'Pointe-aux-Trembles', 'Tennessee', '665267', 'Ba'),
(1012, 7955, NULL, '', '', NULL, '', 'house', NULL, 'Surbo', 'Tennessee', '37-355', 'La'),
(1013, 2372, NULL, '', '', NULL, '', 'house', NULL, 'Zwijndrecht', 'Tennessee', '954699', 'Ir'),
(1014, 4909, NULL, '', '', NULL, '', 'house', NULL, 'Deline', 'Tennessee', 'L4H 2H0', 'Ho'),
(1015, 3972, NULL, '', '', NULL, '', 'house', NULL, 'Bowden', 'Tennessee', '464549', 'Ru'),
(1016, 6434, NULL, '', '', NULL, '', 'house', NULL, 'Oderzo', 'Tennessee', '51131', 'Ga'),
(1017, 731, NULL, '', '', NULL, '', 'house', NULL, 'Hildesheim', 'Tennessee', '07865', 'Ar'),
(1018, 4323, NULL, '', '', NULL, '', 'house', NULL, 'Oyace', 'Tennessee', '31413', 'Pa'),
(1019, 9794, NULL, '', '', NULL, '', 'house', NULL, 'Chiaromonte', 'Tennessee', '81441', 'Se'),
(1020, 2835, NULL, '', '', NULL, '', 'house', NULL, 'Trazegnies', 'Tennessee', '24318', 'Gr'),
(1021, 8137, NULL, '', '', NULL, '', 'house', NULL, 'Huppaye', 'Tennessee', '889525', 'Ur'),
(1022, 806, NULL, '', '', NULL, '', 'house', NULL, 'Okotoks', 'Tennessee', '4157XD', 'Do'),
(1023, 8172, NULL, '', '', NULL, '', 'house', NULL, 'Heist-aan-Zee', 'Tennessee', '3064NV', 'Pa'),
(1024, 5263, NULL, '', '', NULL, '', 'house', NULL, 'Gjoa Haven', 'Tennessee', '94-952', 'Pi'),
(1025, 4619, NULL, '', '', NULL, '', 'house', NULL, 'Civitacampomarano', 'Tennessee', '7095', 'Pa'),
(1026, 9557, NULL, '', '', NULL, '', 'house', NULL, 'Sivry', 'Tennessee', '45518', 'Vi'),
(1027, 1609, NULL, '', '', NULL, '', 'house', NULL, 'Saint-Nicolas', 'Tennessee', '98171', 'Qa'),
(1028, 4045, NULL, '', '', NULL, '', 'house', NULL, 'Hyères', 'Tennessee', 'A3R 4X6', 'Af'),
(1029, 3512, NULL, '', '', NULL, '', 'house', NULL, 'Omaha', 'Tennessee', '4564MT', 'Ba'),
(1030, 9703, NULL, '', '', NULL, '', 'house', NULL, 'Kalyan', 'Tennessee', '3707KY', 'Sv'),
(1031, 5737, NULL, '', '', NULL, '', 'house', NULL, 'Wijshagen', 'Tennessee', 'ZF5M 3AW', 'Gu'),
(1032, 2125, NULL, '', '', NULL, '', 'house', NULL, 'Coltauco', 'Tennessee', '59899', 'Ma'),
(1033, 7902, NULL, '', '', NULL, '', 'house', NULL, 'Sulzbach', 'Tennessee', '46335-756', 'In'),
(1034, 2001, NULL, '', '', NULL, '', 'house', NULL, 'Cirencester', 'Tennessee', '80129', 'Lu'),
(1035, 9289, NULL, '', '', NULL, '', 'house', NULL, 'Roccamena', 'Tennessee', '00-127', 'Sy'),
(1036, 3199, NULL, '', '', NULL, '', 'house', NULL, 'Bay Roberts', 'Tennessee', '53308', 'Tr'),
(1037, 9404, NULL, '', '', NULL, '', 'house', NULL, 'Jaranwala', 'Tennessee', '1612', 'Ph'),
(1038, 5893, NULL, '', '', NULL, '', 'house', NULL, 'Orosei', 'Tennessee', '9223GN', 'No'),
(1039, 4167, NULL, '', '', NULL, '', 'house', NULL, 'Bergerac', 'Tennessee', '68037', 'Ba'),
(1040, 9193, NULL, '', '', NULL, '', 'house', NULL, 'Silvassa', 'Tennessee', '23926', 'Ir'),
(1041, 5715, NULL, '', '', NULL, '', 'house', NULL, 'Mazenzele', 'Tennessee', '84762', 'Ge'),
(1042, 607, NULL, '', '', NULL, '', 'house', NULL, 'Wagga Wagga', 'Tennessee', '19-786', 'He'),
(1043, 3296, NULL, '', '', NULL, '', 'house', NULL, 'Épinal', 'Tennessee', '32043', 'Pu'),
(1044, 1860, NULL, '', '', NULL, '', 'house', NULL, 'Bonnyrigg', 'Tennessee', 'NZ74 0GK', 'Be'),
(1045, 6046, NULL, '', '', NULL, '', 'house', NULL, 'Ratlam', 'Tennessee', '3027', 'Mo'),
(1046, 2249, NULL, '', '', NULL, '', 'house', NULL, 'Saint-Laurent', 'Tennessee', '60479', 'Ch'),
(1047, 5073, NULL, '', '', NULL, '', 'house', NULL, 'Colchester', 'Tennessee', 'X7K 5N5', 'Be'),
(1048, 3958, NULL, '', '', NULL, '', 'house', NULL, 'Lalbahadur Nagar', 'Tennessee', '06332-842', 'Ur'),
(1049, 3282, NULL, '', '', NULL, '', 'house', NULL, 'Valpelline', 'Tennessee', 'J5P 6L8', 'Ar'),
(1050, 5804, NULL, '', '', NULL, '', 'house', NULL, 'Madison', 'Tennessee', '7293', 'Sa'),
(1051, 4326, NULL, '', '', NULL, '', 'house', NULL, 'Jamshedpur', 'Tennessee', '68064', 'Sa'),
(1052, 9263, NULL, '', '', NULL, '', 'house', NULL, 'Pöttsching', 'Tennessee', 'XT7Y 8FF', 'Sa'),
(1053, 3714, NULL, '', '', NULL, '', 'house', NULL, 'Wood Buffalo', 'Tennessee', '62925', 'Li'),
(1054, 5874, NULL, '', '', NULL, '', 'house', NULL, 'Birmingham', 'Tennessee', '0151', 'Ma'),
(1055, 4077, NULL, '', '', NULL, '', 'house', NULL, 'Moerbeke', 'Tennessee', '50230', 'Mo'),
(1056, 5430, NULL, '', '', NULL, '', 'house', NULL, 'Collipulli', 'Tennessee', '13566', 'Qa'),
(1057, 423, NULL, '', '', NULL, '', 'house', NULL, 'Oostkamp', 'Tennessee', '70011', 'Mo'),
(1058, 1716, NULL, '', '', NULL, '', 'house', NULL, 'Leeuwarden', 'Tennessee', '65-428', 'No'),
(1059, 480, NULL, '', '', NULL, '', 'house', NULL, 'Acireale', 'Tennessee', '15086', 'Ma'),
(1060, 9638, NULL, '', '', NULL, '', 'house', NULL, 'San Pablo', 'Tennessee', '47514', 'Ta'),
(1061, 7333, NULL, '', '', NULL, '', 'house', NULL, 'Camrose', 'Tennessee', '2748', 'Ph'),
(1062, 76, NULL, '', '', NULL, '', 'house', NULL, 'Liernu', 'Tennessee', 'R8C 1GA', 'Sa'),
(1063, 6841, NULL, '', '', NULL, '', 'house', NULL, 'Burlington', 'Tennessee', '70203', 'Ho'),
(1064, 1241, NULL, '', '', NULL, '', 'house', NULL, 'Labuissire', 'Tennessee', '2541', 'Gu'),
(1065, 5289, NULL, '', '', NULL, '', 'house', NULL, 'Ottawa-Carleton', 'Tennessee', '99-257', 'Bo'),
(1066, 110, NULL, '', '', NULL, '', 'house', NULL, 'Haguenau', 'Tennessee', '12145', 'Be'),
(1067, 7169, NULL, '', '', NULL, '', 'house', NULL, 'Stroud', 'Tennessee', '4197', 'Sa'),
(1068, 202, NULL, '', '', NULL, '', 'house', NULL, 'San Pietro Avellana', 'Tennessee', 'X0V 8B1', 'Sa'),
(1069, 3901, NULL, '', '', NULL, '', 'house', NULL, 'Kolkata', 'Tennessee', 'RE1 6AR', 'Ba'),
(1070, 3149, NULL, '', '', NULL, '', 'house', NULL, 'Polpenazze del Garda', 'Tennessee', '54543', 'Un'),
(1071, 8968, NULL, '', '', NULL, '', 'house', NULL, 'Incourt', 'Tennessee', '14-907', 'Ug'),
(1072, 8668, NULL, '', '', NULL, '', 'house', NULL, 'Hof', 'Tennessee', '15537', 'Bo'),
(1073, 3542, NULL, '', '', NULL, '', 'house', NULL, 'Senftenberg', 'Tennessee', '31314', 'Co'),
(1074, 8643, NULL, '', '', NULL, '', 'house', NULL, 'Moignelee', 'Tennessee', '751782', 'Co'),
(1075, 8080, NULL, '', '', NULL, '', 'house', NULL, 'Helmsdale', 'Tennessee', '892892', 'Qa'),
(1076, 4445, NULL, '', '', NULL, '', 'house', NULL, 'Milnathort', 'Tennessee', '2941', 'Do'),
(1077, 481, NULL, '', '', NULL, '', 'house', NULL, 'Castri di Lecce', 'Tennessee', '0400II', 'To'),
(1078, 7534, NULL, '', '', NULL, '', 'house', NULL, 'Lac-Serent', 'Tennessee', '8459EF', 'Ch'),
(1079, 4738, NULL, '', '', NULL, '', 'house', NULL, 'Avesta', 'Tennessee', '78635', 'Pa'),
(1080, 7477, NULL, '', '', NULL, '', 'house', NULL, 'Owensboro', 'Tennessee', '3008', 'Ca'),
(1081, 1961, NULL, '', '', NULL, '', 'house', NULL, 'Lauterach', 'Tennessee', '301427', 'Li'),
(1082, 5163, NULL, '', '', NULL, '', 'house', NULL, 'Fort Saskatchewan', 'Tennessee', '4522', 'Ar'),
(1083, 9062, NULL, '', '', NULL, '', 'house', NULL, 'Beverlo', 'Tennessee', '29844-354', 'Tu'),
(1084, 7351, NULL, '', '', NULL, '', 'house', NULL, 'Linlithgow', 'Tennessee', '20596', 'Sa'),
(1085, 7134, NULL, '', '', NULL, '', 'house', NULL, 'Grey County', 'Tennessee', '614291', 'Un'),
(1086, 1277, NULL, '', '', NULL, '', 'house', NULL, 'Pogliano Milanese', 'Tennessee', '60844', 'An'),
(1087, 9141, NULL, '', '', NULL, '', 'house', NULL, 'Aalbeke', 'Tennessee', '25027', 'Pa'),
(1088, 7333, NULL, '', '', NULL, '', 'house', NULL, 'San Rafael Abajo', 'Tennessee', '0197AM', 'Pa'),
(1089, 2845, NULL, '', '', NULL, '', 'house', NULL, 'Portland', 'Tennessee', '59305', 'Tu'),
(1090, 7262, NULL, '', '', NULL, '', 'house', NULL, 'Dave', 'Tennessee', '23842', 'Sr'),
(1091, 7310, NULL, '', '', NULL, '', 'house', NULL, 'North Las Vegas', 'Tennessee', '7506', 'Ec'),
(1092, 8102, NULL, '', '', NULL, '', 'house', NULL, 'Bidar', 'Tennessee', '47302', 'Le'),
(1093, 6215, NULL, '', '', NULL, '', 'house', NULL, 'Ulloa (Barrial)', 'Tennessee', '8398', 'Gu'),
(1094, 3597, NULL, '', '', NULL, '', 'house', NULL, 'Kingston', 'Tennessee', 'FE23 7US', 'Me'),
(1095, 3817, NULL, '', '', NULL, '', 'house', NULL, 'Oostkerke', 'Tennessee', '9494', 'Gu'),
(1096, 7143, NULL, '', '', NULL, '', 'house', NULL, 'Bad Kreuznach', 'Tennessee', '63233', 'Ca'),
(1097, 838, NULL, '', '', NULL, '', 'house', NULL, 'Montleban', 'Tennessee', '727000', 'Ål'),
(1098, 2491, NULL, '', '', NULL, '', 'house', NULL, 'Hertsberge', 'Tennessee', 'N0A 3A6', 'An'),
(1099, 8703, NULL, '', '', NULL, '', 'house', NULL, 'Ñuñoa', 'Tennessee', '2143', 'Gr');

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
(4000, 5000),
(4001, 5001),
(4002, 5002),
(4003, 5003),
(4004, 5004),
(4005, 5005),
(4006, 5006),
(4007, 5007),
(4008, 5008),
(4009, 5009),
(4010, 5010),
(4011, 5011),
(4012, 5012),
(4013, 5013),
(4014, 5014),
(4015, 5015),
(4016, 5016),
(4017, 5017),
(4018, 5018),
(4019, 5019),
(4020, 5020),
(4021, 5021),
(4022, 5022),
(4023, 5023),
(4024, 5024),
(4025, 5025),
(4026, 5026),
(4027, 5027),
(4028, 5028),
(4029, 5029),
(4030, 5030),
(4031, 5031),
(4032, 5032),
(4033, 5033),
(4034, 5034),
(4035, 5035),
(4036, 5036),
(4037, 5037),
(4038, 5038),
(4039, 5039),
(4040, 5040),
(4041, 5041),
(4042, 5042),
(4043, 5043),
(4044, 5044),
(4045, 5045),
(4046, 5046),
(4047, 5047),
(4048, 5048),
(4049, 5049),
(4050, 5050),
(4051, 5051),
(4052, 5052),
(4053, 5053),
(4054, 5054),
(4055, 5055),
(4056, 5056),
(4057, 5057),
(4058, 5058),
(4059, 5059),
(4060, 5060),
(4061, 5061),
(4062, 5062),
(4063, 5063),
(4064, 5064),
(4065, 5065),
(4066, 5066),
(4067, 5067),
(4068, 5068),
(4069, 5069),
(4070, 5070),
(4071, 5071),
(4072, 5072),
(4073, 5073),
(4074, 5074),
(4075, 5075),
(4076, 5076),
(4077, 5077),
(4078, 5078),
(4079, 5079),
(4080, 5080),
(4081, 5081),
(4082, 5082),
(4083, 5083),
(4084, 5084),
(4085, 5085),
(4086, 5086),
(4087, 5087),
(4088, 5088),
(4089, 5089),
(4090, 5090),
(4091, 5091),
(4092, 5092),
(4093, 5093),
(4094, 5094),
(4095, 5095),
(4096, 5096),
(4097, 5097),
(4098, 5098),
(4099, 5099);

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
(3000, 4000),
(3001, 4001),
(3005, 4005),
(3006, 4006),
(3007, 4007),
(3008, 4008),
(3009, 4009),
(3010, 4010),
(3011, 4011),
(3012, 4012),
(3013, 4013),
(3014, 4014),
(3015, 4015),
(3016, 4016),
(3017, 4017),
(3018, 4018),
(3019, 4019),
(3020, 4020),
(3021, 4021),
(3022, 4022),
(3023, 4023),
(3024, 4024),
(3025, 4025),
(3026, 4026),
(3027, 4027),
(3028, 4028),
(3029, 4029),
(3030, 4030),
(3031, 4031),
(3032, 4032),
(3033, 4033),
(3034, 4034),
(3035, 4035),
(3036, 4036),
(3037, 4037),
(3038, 4038),
(3039, 4039),
(3040, 4040),
(3041, 4041),
(3042, 4042),
(3043, 4043),
(3044, 4044),
(3045, 4045),
(3046, 4046),
(3047, 4047),
(3048, 4048),
(3049, 4049),
(3050, 4050),
(3051, 4051),
(3052, 4052),
(3053, 4053),
(3054, 4054),
(3055, 4055),
(3056, 4056),
(3057, 4057),
(3058, 4058),
(3059, 4059),
(3060, 4060),
(3061, 4061),
(3062, 4062),
(3063, 4063),
(3064, 4064),
(3065, 4065),
(3066, 4066),
(3067, 4067),
(3068, 4068),
(3069, 4069),
(3070, 4070),
(3071, 4071),
(3072, 4072),
(3073, 4073),
(3074, 4074),
(3075, 4075),
(3076, 4076),
(3077, 4077),
(3078, 4078),
(3079, 4079),
(3080, 4080),
(3081, 4081),
(3082, 4082),
(3083, 4083),
(3084, 4084),
(3085, 4085),
(3086, 4086),
(3087, 4087),
(3088, 4088),
(3089, 4089),
(3090, 4090),
(3091, 4091),
(3092, 4092),
(3093, 4093),
(3094, 4094),
(3095, 4095),
(3096, 4096),
(3097, 4097),
(3098, 4098),
(3099, 4099);

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
(1000, 'Austin', 'Evan', '(269) 277-1826', 'urna.Nullam.lobortis@semperdui.ca', 1),
(1001, 'Ellis', 'Wynter', '(794) 367-0432', 'ac@arcu.org', 2),
(1005, 'Estrada', 'Vielka', '(432) 296-6710', 'consequat@nequeInornare.co.uk', 6),
(1006, 'Howe', 'Piper', '(962) 256-7886', 'quis.accumsan.convallis@ligula.net', 7),
(1007, 'Gregory', 'Garth', '(717) 194-2667', 'magna@Aliquamtinciduntnunc.org', 8),
(1008, 'Shaw', 'Evangeline', '(223) 416-8466', 'sed.dui.Fusce@Cum.edu', 9),
(1009, 'Conley', 'Jamalia', '(851) 889-1383', 'fringilla.ornare@vitaeerat.org', 10),
(1010, 'Chaney', 'Maisie', '(752) 708-2658', 'sollicitudin@rutrumloremac.net', 11),
(1011, 'Bryan', 'Armando', '(225) 505-9876', 'molestie.arcu@magnaSuspendisse.ca', 12),
(1012, 'Blackburn', 'Derek', '(577) 460-4616', 'rutrum.justo.Praesent@turpis.net', 13),
(1013, 'Burke', 'Jelani', '(800) 733-0040', 'dictum.ultricies.ligula@Duisrisusodio.net', 14),
(1014, 'Mccarty', 'Moana', '(651) 554-9033', 'mollis.nec.cursus@Nunc.net', 15),
(1015, 'Merrill', 'Portia', '(421) 757-1972', 'sed@euodio.com', 16),
(1016, 'Britt', 'Lillian', '(708) 991-9685', 'lacinia.mattis.Integer@tincidunt.net', 17),
(1017, 'Cleveland', 'Abigail', '(962) 883-2262', 'massa@cursusnonegestas.net', 18),
(1018, 'Roberson', 'Armand', '(137) 108-6413', 'diam.Duis.mi@Quisquelibero.edu', 19),
(1019, 'Glenn', 'Nero', '(886) 180-8766', 'tempus.lorem.fringilla@pellentesqueSeddictum.edu', 20),
(1020, 'Walsh', 'Hanae', '(251) 218-0291', 'et.netus@diamloremauctor.ca', 21),
(1021, 'Thornton', 'Christian', '(695) 254-1148', 'hendrerit@Praesenteunulla.co.uk', 22),
(1022, 'Ewing', 'Ayanna', '(130) 303-7278', 'nisl@Nunc.co.uk', 23),
(1023, 'Guzman', 'Allistair', '(472) 922-3310', 'augue.Sed@enimEtiamimperdiet.com', 24),
(1024, 'Sykes', 'Tyrone', '(709) 934-7875', 'molestie.Sed@molestiein.org', 25),
(1025, 'Sweet', 'Reese', '(982) 965-6605', 'posuere.enim@Nullatempor.edu', 26),
(1026, 'Peck', 'Walter', '(556) 302-2261', 'ligula.eu@laoreet.edu', 27),
(1027, 'Church', 'Beau', '(124) 917-4984', 'ultrices@rhoncusProin.com', 28),
(1028, 'Hughes', 'Kitra', '(901) 685-8346', 'ipsum@dolornonummy.org', 29),
(1029, 'Watkins', 'Mechelle', '(162) 505-1466', 'id.nunc.interdum@diamPellentesque.org', 30),
(1030, 'Tillman', 'Tucker', '(176) 570-4575', 'metus.Aenean.sed@massarutrummagna.net', 31),
(1031, 'Harding', 'Emerald', '(994) 357-2605', 'ipsum.Suspendisse@tellusAenean.edu', 32),
(1032, 'Sherman', 'Dane', '(153) 716-8814', 'nunc@semvitaealiquam.co.uk', 33),
(1033, 'Davenport', 'Abra', '(173) 436-2337', 'tempus.risus@Phasellusin.co.uk', 34),
(1034, 'Fields', 'Griffith', '(311) 612-0158', 'arcu@congue.edu', 35),
(1035, 'Merritt', 'Whoopi', '(249) 275-3713', 'Pellentesque.habitant@semmolestie.co.uk', 36),
(1036, 'Hardin', 'Grady', '(281) 561-1517', 'egestas@nisl.co.uk', 37),
(1037, 'Merrill', 'Shafira', '(680) 338-7980', 'Maecenas.iaculis@egestasAliquamfringilla.com', 38),
(1038, 'Mcconnell', 'Shelby', '(926) 732-5889', 'magna.malesuada.vel@posuerevulputatelacus.org', 39),
(1039, 'Davenport', 'Charde', '(171) 239-3045', 'amet.dapibus@posuerecubiliaCurae.com', 40),
(1040, 'Marshall', 'Meghan', '(801) 537-1592', 'semper@variuseteuismod.edu', 41),
(1041, 'Garcia', 'Mollie', '(950) 664-3147', 'eu.eros.Nam@nostraper.net', 42),
(1042, 'Baird', 'Geraldine', '(852) 172-6775', 'nec.orci@quis.com', 43),
(1043, 'Charles', 'Aquila', '(948) 950-1082', 'sit.amet.luctus@gravidaAliquamtincidunt.ca', 44),
(1044, 'Patterson', 'Harrison', '(280) 960-0066', 'tincidunt.adipiscing@blandit.edu', 45),
(1045, 'Bauer', 'Christopher', '(549) 823-9417', 'convallis.erat.eget@lobortis.ca', 46),
(1046, 'Hoover', 'Axel', '(211) 730-2709', 'eget.lacus.Mauris@auctorvitaealiquet.org', 47),
(1047, 'Madden', 'Shay', '(289) 921-9961', 'nec.eleifend@est.edu', 48),
(1048, 'Beasley', 'Callum', '(847) 755-5420', 'nec@eleifendnec.ca', 49),
(1049, 'Cleveland', 'Cleo', '(547) 323-8476', 'ut.eros@erosnectellus.com', 50),
(1050, 'Frost', 'Mark', '(133) 465-9394', 'auctor.velit@purusNullam.co.uk', 51),
(1051, 'Booth', 'Xerxes', '(104) 231-2661', 'Mauris.eu@sed.ca', 52),
(1052, 'Kent', 'Zia', '(796) 271-1831', 'non.luctus@dapibusquam.co.uk', 53),
(1053, 'Hicks', 'Patricia', '(448) 792-3693', 'sit.amet.ante@tristique.net', 54),
(1054, 'Burks', 'Hyacinth', '(622) 103-0341', 'iaculis.lacus.pede@apurus.edu', 55),
(1055, 'Miranda', 'Deacon', '(989) 778-9061', 'Suspendisse.dui@malesuada.net', 56),
(1056, 'Ortiz', 'Caldwell', '(845) 579-0206', 'malesuada.fames.ac@sagittis.net', 57),
(1057, 'Herring', 'Palmer', '(645) 117-8362', 'sit.amet@velmaurisInteger.net', 58),
(1058, 'Huff', 'Gabriel', '(698) 948-7572', 'at@odiosagittissemper.edu', 59),
(1059, 'Roman', 'Paloma', '(606) 445-7500', 'Sed.molestie.Sed@congue.com', 60),
(1060, 'Jarvis', 'Clarke', '(691) 203-0789', 'eleifend@sedpede.co.uk', 61),
(1061, 'Stanton', 'Ima', '(647) 551-2530', 'est.arcu@rutrumjustoPraesent.edu', 62),
(1062, 'Owen', 'Keaton', '(137) 397-2078', 'orci.luctus.et@nasceturridiculus.org', 63),
(1063, 'Conrad', 'Kennedy', '(439) 946-8027', 'porttitor@sollicitudin.edu', 64),
(1064, 'Garza', 'Rhona', '(897) 313-9970', 'molestie.in@odioPhasellusat.edu', 65),
(1065, 'Green', 'Ethan', '(928) 654-5710', 'neque.Sed.eget@nonummyac.edu', 66),
(1066, 'Watson', 'Briar', '(579) 925-6285', 'lacinia.Sed@Duisami.co.uk', 67),
(1067, 'Patel', 'Palmer', '(657) 988-0562', 'inceptos.hymenaeos.Mauris@vehiculaPellentesque.co.', 68),
(1068, 'Vinson', 'Molly', '(251) 544-2796', 'quis@sedhendrerit.co.uk', 69),
(1069, 'Frazier', 'Fleur', '(726) 795-0901', 'odio.semper.cursus@lectusantedictum.edu', 70),
(1070, 'Avery', 'Leigh', '(654) 638-8712', 'Mauris@parturientmontes.org', 71),
(1071, 'Patterson', 'Gwendolyn', '(978) 524-0350', 'bibendum@faucibusleo.edu', 72),
(1072, 'Simpson', 'Honorato', '(174) 813-8878', 'vestibulum@sapien.com', 73),
(1073, 'Nunez', 'Aileen', '(522) 163-2434', 'accumsan@mollisvitae.com', 74),
(1074, 'Downs', 'Quail', '(322) 153-3902', 'tempor.diam@Suspendisse.net', 75),
(1075, 'Wagner', 'Mariko', '(149) 554-5239', 'hendrerit.consectetuer@aaliquet.ca', 76),
(1076, 'Curry', 'Ciaran', '(384) 676-5085', 'aliquet.lobortis.nisi@scelerisquedui.ca', 77),
(1077, 'Oneill', 'Louis', '(444) 178-7776', 'lorem.lorem.luctus@Aenean.net', 78),
(1078, 'Mcpherson', 'Halla', '(489) 315-0603', 'Duis@est.co.uk', 79),
(1079, 'Bolton', 'Xyla', '(110) 782-6533', 'velit.Cras.lorem@neque.edu', 80),
(1080, 'Goodwin', 'Kathleen', '(898) 804-3241', 'vitae@nunc.org', 81),
(1081, 'Holt', 'Jade', '(987) 736-0891', 'a.scelerisque.sed@tortorNunccommodo.org', 82),
(1082, 'Burt', 'Kitra', '(428) 618-9502', 'posuere.cubilia.Curae@magna.co.uk', 83),
(1083, 'Gates', 'Erich', '(818) 507-8959', 'neque.sed.dictum@ideratEtiam.co.uk', 84),
(1084, 'Melton', 'Alma', '(141) 372-5160', 'Quisque.nonummy@ultricesDuisvolutpat.ca', 85),
(1085, 'Fitzpatrick', 'Raja', '(346) 360-0581', 'sit@commodoauctorvelit.co.uk', 86),
(1086, 'Willis', 'Lucas', '(545) 537-1979', 'Praesent@atrisusNunc.org', 87),
(1087, 'Nichols', 'Wesley', '(605) 592-4628', 'arcu.Curabitur.ut@condimentum.co.uk', 88),
(1088, 'Ward', 'Brent', '(649) 589-4861', 'ipsum.primis.in@dictumplacerat.com', 89),
(1089, 'Benson', 'Lane', '(801) 724-5951', 'parturient.montes@semperauctorMauris.co.uk', 90),
(1090, 'Martinez', 'Giacomo', '(203) 972-1228', 'netus@Suspendissedui.org', 91),
(1091, 'Oconnor', 'Carson', '(223) 934-4554', 'tincidunt@Namtempor.ca', 92),
(1092, 'Savage', 'Emma', '(657) 342-7196', 'Vestibulum@nequeNullamnisl.ca', 93),
(1093, 'Erickson', 'Miriam', '(620) 565-9405', 'enim@magna.com', 94),
(1094, 'Rush', 'Caldwell', '(359) 183-8977', 'vulputate@ac.com', 95),
(1095, 'Sparks', 'Ursula', '(628) 860-4129', 'id.sapien.Cras@metusInlorem.com', 96),
(1096, 'Wilder', 'Xavier', '(844) 183-2086', 'nec@ultricies.ca', 97),
(1097, 'Grimes', 'Scarlet', '(655) 634-1154', 'euismod.urna.Nullam@rutrum.com', 98),
(1098, 'Trujillo', 'Boris', '(541) 403-2396', 'Nullam.suscipit@eutellus.com', 99),
(1099, 'Sharp', 'Paki', '(309) 111-7242', 'ut@utmi.net', 100);

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
(6000, 7000, 'vel, mauris. Integer', '0.0000'),
(6001, 7001, 'luctus ut, pellentesque eget, dictum placerat, augue.', '0.0000'),
(6005, 7005, 'et libero. Proin mi. Aliquam gravida mauris ut', '0.0000'),
(6006, 7006, 'luctus vulputate, nisi sem semper', '0.0000'),
(6007, 7007, 'ante bibendum ullamcorper. Duis', '0.0000'),
(6008, 7008, 'in, tempus eu, ligula. Aenean', '0.0000'),
(6009, 7009, 'tincidunt congue turpis. In condimentum. Donec', '0.0000'),
(6010, 7010, 'hendrerit', '0.0000'),
(6011, 7011, 'nulla vulputate dui, nec', '0.0000'),
(6012, 7012, 'velit eu sem. Pellentesque ut ipsum ac mi eleifend', '0.0000'),
(6013, 7013, 'sagittis. Nullam vitae diam. Proin dolor.', '0.0000'),
(6014, 7014, 'In ornare sagittis felis. Donec tempor, est ac', '0.0000'),
(6015, 7015, 'Aliquam ultrices iaculis', '0.0000'),
(6016, 7016, 'vulputate eu, odio. Phasellus at augue id ante', '0.0000'),
(6017, 7017, 'et libero. Proin mi. Aliquam gravida mauris ut mi.', '0.0000'),
(6018, 7018, 'arcu. Sed et libero. Proin mi. Aliquam', '0.0000'),
(6019, 7019, 'Integer sem elit, pharetra ut, pharetra sed, hendrerit', '0.0000'),
(6020, 7020, 'Sed neque. Sed eget', '0.0000'),
(6021, 7021, 'eu, euismod ac, fermentum vel, mauris. Integer sem elit, pharetra', '0.0000'),
(6022, 7022, 'enim', '0.0000'),
(6023, 7023, 'malesuada fringilla', '0.0000'),
(6024, 7024, 'adipiscing elit. Etiam laoreet, libero et tristique pellentesque, tellus sem', '0.0000'),
(6025, 7025, 'ligula. Nullam feugiat placerat velit. Quisque varius. Nam porttitor scelerisque', '0.0000'),
(6026, 7026, 'luctus ut, pellentesque eget, dictum placerat,', '0.0000'),
(6027, 7027, 'sem semper erat, in consectetuer', '0.0000'),
(6028, 7028, 'amet ultricies sem magna nec quam. Curabitur vel lectus.', '0.0000'),
(6029, 7029, 'ante', '0.0000'),
(6030, 7030, 'dapibus ligula. Aliquam', '0.0000'),
(6031, 7031, 'quis urna. Nunc', '0.0000'),
(6032, 7032, 'magna. Cras convallis convallis dolor. Quisque tincidunt pede ac', '0.0000'),
(6033, 7033, 'ipsum porta elit, a feugiat tellus lorem', '0.0000'),
(6034, 7034, 'Phasellus dapibus quam quis', '0.0000'),
(6035, 7035, 'nibh lacinia orci, consectetuer euismod est', '0.0000'),
(6036, 7036, 'Class aptent taciti sociosqu ad litora torquent', '0.0000'),
(6037, 7037, 'fames ac turpis egestas. Aliquam', '0.0000'),
(6038, 7038, 'velit dui, semper et, lacinia vitae,', '0.0000'),
(6039, 7039, 'quam. Pellentesque habitant morbi tristique senectus et netus', '0.0000'),
(6040, 7040, 'Duis ac arcu. Nunc', '0.0000'),
(6041, 7041, 'commodo auctor velit. Aliquam nisl. Nulla eu', '0.0000'),
(6042, 7042, 'luctus ut, pellentesque eget, dictum placerat, augue.', '0.0000'),
(6043, 7043, 'hendrerit. Donec porttitor tellus', '0.0000'),
(6044, 7044, 'imperdiet ornare. In faucibus. Morbi vehicula. Pellentesque tincidunt tempus risus.', '0.0000'),
(6045, 7045, 'amet, faucibus ut, nulla. Cras eu tellus eu', '0.0000'),
(6046, 7046, 'ut quam vel', '0.0000'),
(6047, 7047, 'iaculis nec,', '0.0000'),
(6048, 7048, 'nisi. Mauris nulla. Integer urna. Vivamus molestie dapibus ligula. Aliquam', '0.0000'),
(6049, 7049, 'Aenean eget magna. Suspendisse tristique neque venenatis lacus. Etiam', '0.0000'),
(6050, 7050, 'habitant morbi tristique senectus et netus', '0.0000'),
(6051, 7051, 'dictum eleifend, nunc risus varius orci,', '0.0000'),
(6052, 7052, 'amet,', '0.0000'),
(6053, 7053, 'Aliquam nec enim. Nunc ut erat. Sed nunc est, mollis', '0.0000'),
(6054, 7054, 'parturient montes, nascetur ridiculus mus. Proin vel', '0.0000'),
(6055, 7055, 'diam', '0.0000'),
(6056, 7056, 'ac facilisis', '0.0000'),
(6057, 7057, 'sapien. Aenean massa.', '0.0000'),
(6058, 7058, 'nec orci.', '0.0000'),
(6059, 7059, 'risus, at fringilla', '0.0000'),
(6060, 7060, 'condimentum eget, volutpat ornare,', '0.0000'),
(6061, 7061, 'non justo. Proin non massa non ante bibendum ullamcorper.', '0.0000'),
(6062, 7062, 'non nisi. Aenean eget metus.', '0.0000'),
(6063, 7063, 'dictum. Phasellus in', '0.0000'),
(6064, 7064, 'Donec est mauris,', '0.0000'),
(6065, 7065, 'Nullam vitae diam. Proin dolor. Nulla', '0.0000'),
(6066, 7066, 'lectus. Cum sociis natoque penatibus et', '0.0000'),
(6067, 7067, 'in magna. Phasellus dolor elit,', '0.0000'),
(6068, 7068, 'laoreet, libero et tristique pellentesque, tellus sem mollis dui, in', '0.0000'),
(6069, 7069, 'ac sem ut dolor dapibus', '0.0000'),
(6070, 7070, 'et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus', '0.0000'),
(6071, 7071, 'Curabitur ut odio vel est tempor bibendum. Donec felis orci,', '0.0000'),
(6072, 7072, 'pellentesque. Sed dictum.', '0.0000'),
(6073, 7073, 'aliquet vel, vulputate eu, odio. Phasellus at', '0.0000'),
(6074, 7074, 'enim. Curabitur', '0.0000'),
(6075, 7075, 'gravida. Praesent eu nulla at sem molestie sodales. Mauris', '0.0000'),
(6076, 7076, 'Proin nisl sem, consequat nec, mollis', '0.0000'),
(6077, 7077, 'Nam tempor diam dictum sapien. Aenean massa. Integer vitae nibh.', '0.0000'),
(6078, 7078, 'tincidunt', '0.0000'),
(6079, 7079, 'ad litora torquent per conubia nostra, per inceptos', '0.0000'),
(6080, 7080, 'lorem. Donec elementum, lorem ut aliquam iaculis, lacus pede', '0.0000'),
(6081, 7081, 'Donec est', '0.0000'),
(6082, 7082, 'Duis', '0.0000'),
(6083, 7083, 'molestie arcu. Sed eu nibh vulputate mauris sagittis', '0.0000'),
(6084, 7084, 'ut odio vel est tempor bibendum. Donec felis orci,', '0.0000'),
(6085, 7085, 'mauris erat eget ipsum. Suspendisse sagittis. Nullam vitae', '0.0000'),
(6086, 7086, 'Praesent eu nulla at sem molestie', '0.0000'),
(6087, 7087, 'Mauris blandit enim consequat purus. Maecenas libero est, congue', '0.0000'),
(6088, 7088, 'pede', '0.0000'),
(6089, 7089, 'mattis ornare, lectus ante dictum mi,', '0.0000'),
(6090, 7090, 'Donec sollicitudin adipiscing ligula. Aenean gravida', '0.0000'),
(6091, 7091, 'tellus eu augue porttitor interdum. Sed auctor odio', '0.0000'),
(6092, 7092, 'ante, iaculis nec, eleifend non, dapibus rutrum, justo.', '0.0000'),
(6093, 7093, 'erat vel pede blandit congue. In scelerisque scelerisque', '0.0000'),
(6094, 7094, 'diam. Pellentesque habitant morbi tristique senectus et', '0.0000'),
(6095, 7095, 'enim. Mauris quis turpis vitae purus gravida sagittis. Duis gravida.', '0.0000'),
(6096, 7096, 'magna. Lorem ipsum dolor', '0.0000'),
(6097, 7097, 'dui. Fusce diam nunc,', '0.0000'),
(6098, 7098, 'lorem eu metus. In lorem. Donec elementum, lorem', '0.0000'),
(6099, 7099, 'malesuada fames ac turpis egestas. Fusce aliquet magna a', '0.0000');

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
(2000, 'Dale', 'Lucius', '2016-11-28', 1000, '1-734-392-8812'),
(2001, 'Cotton', 'Stewart', '2016-06-08', 1001, '1-110-721-9701'),
(2002, 'Romero', 'Caldwell', '2017-03-21', 1002, '1-192-404-8473'),
(2003, 'Medina', 'Kieran', '2016-10-25', 1003, '1-686-769-6551'),
(2004, 'Jarvis', 'David', '2016-03-25', 1004, '1-580-229-7693'),
(2005, 'Knight', 'Garrett', '2015-09-15', 1005, '1-208-244-0157'),
(2006, 'Sykes', 'Jared', '2016-10-13', 1006, '1-578-934-7829'),
(2007, 'Spears', 'Daniel', '2017-02-20', 1007, '1-742-469-1535'),
(2008, 'Bridges', 'Yardley', '2016-06-08', 1008, '1-300-195-5309'),
(2009, 'Molina', 'Conan', '2016-07-07', 1009, '1-723-391-9542'),
(2010, 'Stein', 'Brenden', '2015-10-30', 1010, '1-400-185-7280'),
(2011, 'Dickerson', 'Lane', '2015-06-03', 1011, '1-200-858-9382'),
(2012, 'Clarke', 'Dieter', '2015-07-01', 1012, '1-546-826-8250'),
(2013, 'Koch', 'Basil', '2016-01-05', 1013, '1-576-203-7180'),
(2014, 'Padilla', 'Flynn', '2016-12-12', 1014, '1-834-170-3510'),
(2015, 'Compton', 'Alfonso', '2016-01-06', 1015, '1-911-685-8116'),
(2016, 'Howe', 'Jarrod', '2017-01-20', 1016, '1-569-452-6208'),
(2017, 'Gomez', 'Neil', '2017-02-23', 1017, '1-632-252-8946'),
(2018, 'Burks', 'Alan', '2015-08-19', 1018, '1-860-779-7062'),
(2019, 'Yang', 'Keegan', '2015-10-15', 1019, '1-137-701-5764'),
(2020, 'Robinson', 'Amir', '2015-06-21', 1020, '1-589-521-5192'),
(2021, 'Stephens', 'Todd', '2015-12-29', 1021, '1-142-305-4023'),
(2022, 'Oconnor', 'Wallace', '2016-06-04', 1022, '1-974-998-1977'),
(2023, 'Rojas', 'Marsden', '2015-11-23', 1023, '1-195-241-4490'),
(2024, 'Dudley', 'Cody', '2015-08-29', 1024, '1-513-523-5599'),
(2025, 'Wall', 'Brent', '2016-07-06', 1025, '1-728-905-8930'),
(2026, 'Lewis', 'Edan', '2016-02-15', 1026, '1-830-238-7009'),
(2027, 'Tillman', 'Hayden', '2016-10-14', 1027, '1-882-770-7511'),
(2028, 'Monroe', 'Giacomo', '2015-10-22', 1028, '1-735-870-2994'),
(2029, 'Conrad', 'Aaron', '2016-03-13', 1029, '1-551-669-9312'),
(2030, 'Herman', 'Phelan', '2017-02-17', 1030, '1-203-429-2133'),
(2031, 'Alston', 'Hyatt', '2016-12-11', 1031, '1-645-486-8852'),
(2032, 'Forbes', 'Thaddeus', '2015-08-13', 1032, '1-443-360-3213'),
(2033, 'Sexton', 'Ralph', '2015-11-18', 1033, '1-906-663-9598'),
(2034, 'Conway', 'Amery', '2015-06-14', 1034, '1-634-387-8291'),
(2035, 'Phelps', 'Abbot', '2015-08-04', 1035, '1-702-143-8829'),
(2036, 'Singleton', 'Vincent', '2015-12-03', 1036, '1-697-229-1859'),
(2037, 'Charles', 'Luke', '2017-03-12', 1037, '1-492-324-0586'),
(2038, 'Bailey', 'Kasper', '2016-12-12', 1038, '1-348-868-1236'),
(2039, 'Woodward', 'Colorado', '2016-08-25', 1039, '1-183-882-2065'),
(2040, 'Copeland', 'Allistair', '2017-02-16', 1040, '1-580-268-0733'),
(2041, 'Manning', 'Orlando', '2016-08-10', 1041, '1-291-285-8737'),
(2042, 'Lang', 'Dieter', '2017-02-18', 1042, '1-459-696-0620'),
(2043, 'Park', 'Ross', '2015-06-17', 1043, '1-942-274-8672'),
(2044, 'Hoffman', 'Duncan', '2016-06-13', 1044, '1-318-696-9504'),
(2045, 'Owen', 'Callum', '2016-07-29', 1045, '1-175-384-2058'),
(2046, 'Stewart', 'Walker', '2016-08-19', 1046, '1-345-446-7932'),
(2047, 'Macdonald', 'Mason', '2016-06-17', 1047, '1-290-150-9355'),
(2048, 'Stevenson', 'Brandon', '2016-01-01', 1048, '1-812-145-9295'),
(2049, 'Contreras', 'Boris', '2017-02-26', 1049, '1-381-485-5601'),
(2050, 'Mcdonald', 'Kato', '2016-06-18', 1050, '1-208-557-5070'),
(2051, 'Watson', 'Dominic', '2016-01-08', 1051, '1-365-323-8385'),
(2052, 'Jordan', 'Cairo', '2015-10-29', 1052, '1-619-417-1216'),
(2053, 'Cooper', 'Troy', '2016-05-18', 1053, '1-294-800-3686'),
(2054, 'Duran', 'Paki', '2016-07-05', 1054, '1-669-203-7046'),
(2055, 'Mccullough', 'Avram', '2016-11-26', 1055, '1-124-222-3620'),
(2056, 'Castaneda', 'Mark', '2015-05-02', 1056, '1-590-585-2678'),
(2057, 'Ware', 'Xanthus', '2016-11-16', 1057, '1-666-538-5726'),
(2058, 'Singleton', 'Arthur', '2016-11-29', 1058, '1-463-529-3431'),
(2059, 'Wiley', 'Jordan', '2017-02-28', 1059, '1-969-608-3456'),
(2060, 'Carter', 'Gary', '2017-03-14', 1060, '1-221-158-5170'),
(2061, 'Valenzuela', 'Jesse', '2015-09-05', 1061, '1-254-117-1044'),
(2062, 'Justice', 'Quinn', '2016-08-03', 1062, '1-788-462-1735'),
(2063, 'Fernandez', 'Wyatt', '2016-10-10', 1063, '1-414-214-6566'),
(2064, 'Guerra', 'Eagan', '2017-03-13', 1064, '1-795-646-0183'),
(2065, 'Franks', 'Trevor', '2015-08-16', 1065, '1-803-173-2449'),
(2066, 'Bass', 'Nissim', '2017-02-09', 1066, '1-466-391-5366'),
(2067, 'Hudson', 'Allistair', '2016-07-19', 1067, '1-467-701-3992'),
(2068, 'Petty', 'Keaton', '2016-03-19', 1068, '1-759-641-4325'),
(2069, 'Roth', 'Zephania', '2016-06-10', 1069, '1-320-378-4366'),
(2070, 'Tanner', 'Odysseus', '2015-09-24', 1070, '1-108-320-9098'),
(2071, 'Cole', 'Chandler', '2016-11-16', 1071, '1-135-941-5143'),
(2072, 'Gutierrez', 'Abbot', '2017-01-03', 1072, '1-643-712-9732'),
(2073, 'Baxter', 'Elmo', '2015-07-14', 1073, '1-641-353-4312'),
(2074, 'Leblanc', 'Baxter', '2016-02-14', 1074, '1-250-170-2755'),
(2075, 'Parks', 'Dustin', '2015-10-14', 1075, '1-963-357-7419'),
(2076, 'Delgado', 'Conan', '2016-12-19', 1076, '1-389-204-3813'),
(2077, 'Owen', 'Phillip', '2015-09-17', 1077, '1-966-525-0672'),
(2078, 'Simon', 'Benedict', '2015-08-22', 1078, '1-615-300-2184'),
(2079, 'Hopper', 'Samuel', '2015-12-14', 1079, '1-807-958-4894'),
(2080, 'Gardner', 'Leonard', '2015-09-11', 1080, '1-853-508-1582'),
(2081, 'Richardson', 'Ferdinand', '2016-10-22', 1081, '1-898-994-9656'),
(2082, 'Thornton', 'Austin', '2016-10-11', 1082, '1-827-977-3599'),
(2083, 'Beck', 'Elvis', '2015-06-24', 1083, '1-197-187-2291'),
(2084, 'Mooney', 'Elijah', '2015-12-11', 1084, '1-211-628-1756'),
(2085, 'Kemp', 'Walker', '2016-08-27', 1085, '1-151-996-8556'),
(2086, 'Kirkland', 'Melvin', '2016-11-23', 1086, '1-596-699-4711'),
(2087, 'Poole', 'Aidan', '2016-03-04', 1087, '1-702-578-3909'),
(2088, 'Goff', 'Macaulay', '2015-08-21', 1088, '1-211-583-5897'),
(2089, 'Santos', 'Bruno', '2016-11-01', 1089, '1-601-380-5142'),
(2090, 'Robles', 'Blake', '2015-12-10', 1090, '1-216-111-3092'),
(2091, 'Welch', 'Aidan', '2015-09-01', 1091, '1-212-117-8268'),
(2092, 'Gallegos', 'Coby', '2015-04-26', 1092, '1-500-910-9265'),
(2093, 'Whitehead', 'Dillon', '2016-04-13', 1093, '1-559-595-4113'),
(2094, 'Cain', 'Vance', '2015-06-11', 1094, '1-634-910-0299'),
(2095, 'Alvarado', 'Alden', '2015-11-18', 1095, '1-635-367-8934'),
(2096, 'Gonzalez', 'Isaac', '2016-02-25', 1096, '1-553-481-3723'),
(2097, 'Bartlett', 'Ryder', '2016-01-30', 1097, '1-725-671-8044'),
(2098, 'Jacobson', 'Elmo', '2016-02-29', 1098, '1-750-847-4260'),
(2099, 'Mccullough', 'Gavin', '2015-11-05', 1099, '1-592-988-0587');

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
(8000, 7000, 'Mcmahon', 'Fatima', 1),
(8001, 7001, 'Case', 'Zeph', 2),
(8005, 7005, 'Thornton', 'Jason', 6),
(8006, 7006, 'Burton', 'Kitra', 7),
(8007, 7007, 'Ray', 'Edward', 8),
(8008, 7008, 'Clarke', 'Scott', 9),
(8009, 7009, 'Dale', 'Phyllis', 10),
(8010, 7010, 'Stevenson', 'Brennan', 11),
(8011, 7011, 'Robertson', 'Camille', 12),
(8012, 7012, 'Bruce', 'Shellie', 13),
(8013, 7013, 'Knowles', 'Daniel', 14),
(8014, 7014, 'White', 'Chester', 15),
(8015, 7015, 'Harvey', 'Mercedes', 16),
(8016, 7016, 'Bass', 'Maite', 17),
(8017, 7017, 'Parsons', 'Cullen', 18),
(8018, 7018, 'Cash', 'Athena', 19),
(8019, 7019, 'Head', 'Quintessa', 20),
(8020, 7020, 'Morgan', 'Galena', 21),
(8021, 7021, 'Clemons', 'Erasmus', 22),
(8022, 7022, 'Foster', 'Ishmael', 23),
(8023, 7023, 'Horn', 'Adele', 24),
(8024, 7024, 'Olsen', 'Deborah', 25),
(8025, 7025, 'Delgado', 'Howard', 26),
(8026, 7026, 'Webb', 'Laith', 27),
(8027, 7027, 'Brennan', 'Hedda', 28),
(8028, 7028, 'Knox', 'Hedwig', 29),
(8029, 7029, 'Jackson', 'Hasad', 30),
(8030, 7030, 'Mayo', 'Hilel', 31),
(8031, 7031, 'Peters', 'Callie', 32),
(8032, 7032, 'Morris', 'Hop', 33),
(8033, 7033, 'Odonnell', 'Byron', 34),
(8034, 7034, 'Roy', 'Cheyenne', 35),
(8035, 7035, 'Burke', 'Chastity', 36),
(8036, 7036, 'Hodge', 'Tyler', 37),
(8037, 7037, 'Blackwell', 'Mason', 38),
(8038, 7038, 'Rivera', 'Kelsey', 39),
(8039, 7039, 'Owen', 'Maya', 40),
(8040, 7040, 'Nicholson', 'Colt', 41),
(8041, 7041, 'Haney', 'Anika', 42),
(8042, 7042, 'Hensley', 'Seth', 43),
(8043, 7043, 'Shields', 'Ulla', 44),
(8044, 7044, 'Vega', 'Nigel', 45),
(8045, 7045, 'Avila', 'Quin', 46),
(8046, 7046, 'Copeland', 'Honorato', 47),
(8047, 7047, 'Morton', 'Chase', 48),
(8048, 7048, 'Leach', 'Bianca', 49),
(8049, 7049, 'Nunez', 'Amber', 50),
(8050, 7050, 'Baker', 'Abbot', 51),
(8051, 7051, 'Oneal', 'Damon', 52),
(8052, 7052, 'Gray', 'Kathleen', 53),
(8053, 7053, 'Herrera', 'Clark', 54),
(8054, 7054, 'Lopez', 'Hannah', 55),
(8055, 7055, 'Harrell', 'Dolan', 56),
(8056, 7056, 'Webster', 'Orson', 57),
(8057, 7057, 'Clemons', 'James', 58),
(8058, 7058, 'Gibson', 'Leigh', 59),
(8059, 7059, 'Bartlett', 'Sonia', 60),
(8060, 7060, 'Wyatt', 'Haley', 61),
(8061, 7061, 'Craig', 'Slade', 62),
(8062, 7062, 'Rojas', 'Desiree', 63),
(8063, 7063, 'Dixon', 'Jordan', 64),
(8064, 7064, 'Carpenter', 'Isaiah', 65),
(8065, 7065, 'Deleon', 'Lamar', 66),
(8066, 7066, 'Copeland', 'Bertha', 67),
(8067, 7067, 'Huff', 'Inez', 68),
(8068, 7068, 'Baldwin', 'Geoffrey', 69),
(8069, 7069, 'Douglas', 'Jelani', 70),
(8070, 7070, 'Sims', 'Xavier', 71),
(8071, 7071, 'Faulkner', 'Nevada', 72),
(8072, 7072, 'Huffman', 'Chava', 73),
(8073, 7073, 'Rosario', 'Kristen', 74),
(8074, 7074, 'Kerr', 'Camille', 75),
(8075, 7075, 'Patterson', 'Basia', 76),
(8076, 7076, 'Bell', 'Ivory', 77),
(8077, 7077, 'Yates', 'Wyatt', 78),
(8078, 7078, 'Holder', 'Ayanna', 79),
(8079, 7079, 'Terrell', 'Haley', 80),
(8080, 7080, 'Cote', 'Ivor', 81),
(8081, 7081, 'Pruitt', 'Benedict', 82),
(8082, 7082, 'Richards', 'Kermit', 83),
(8083, 7083, 'Hayden', 'Mark', 84),
(8084, 7084, 'Peck', 'Abraham', 85),
(8085, 7085, 'Jennings', 'Kai', 86),
(8086, 7086, 'Salas', 'Karly', 87),
(8087, 7087, 'Preston', 'Marcia', 88),
(8088, 7088, 'Baxter', 'Wang', 89),
(8089, 7089, 'Harper', 'Regan', 90),
(8090, 7090, 'Terrell', 'Ariel', 91),
(8091, 7091, 'Glenn', 'Marshall', 92),
(8092, 7092, 'Hewitt', 'Rebekah', 93),
(8093, 7093, 'Perez', 'Dante', 94),
(8094, 7094, 'Brennan', 'Octavia', 95),
(8095, 7095, 'Avila', 'Olga', 96),
(8096, 7096, 'Hoffman', 'Colton', 97),
(8097, 7097, 'Good', 'Dara', 98),
(8098, 7098, 'Frank', 'Xander', 99),
(8099, 7099, 'Reyes', 'Brynne', 100);

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
(9000, 1, 8000),
(9001, 2, 8001),
(9006, 7, 8006),
(9007, 8, 8007),
(9008, 9, 8008),
(9009, 10, 8009),
(9010, 11, 8010),
(9011, 12, 8011),
(9012, 13, 8012),
(9013, 14, 8013),
(9014, 15, 8014),
(9015, 16, 8015),
(9016, 17, 8016),
(9017, 18, 8017),
(9018, 19, 8018),
(9019, 20, 8019),
(9020, 21, 8020),
(9021, 22, 8021),
(9022, 23, 8022),
(9023, 24, 8023),
(9024, 25, 8024),
(9025, 26, 8025),
(9026, 27, 8026),
(9027, 28, 8027),
(9028, 29, 8028),
(9029, 30, 8029),
(9030, 31, 8030),
(9031, 32, 8031),
(9032, 33, 8032),
(9033, 34, 8033),
(9034, 35, 8034),
(9035, 36, 8035),
(9036, 37, 8036),
(9037, 38, 8037),
(9038, 39, 8038),
(9039, 40, 8039),
(9040, 41, 8040),
(9041, 42, 8041),
(9042, 43, 8042),
(9043, 44, 8043),
(9044, 45, 8044),
(9045, 46, 8045),
(9046, 47, 8046),
(9047, 48, 8047),
(9048, 49, 8048),
(9049, 50, 8049),
(9050, 51, 8050),
(9051, 52, 8051),
(9052, 53, 8052),
(9053, 54, 8053),
(9054, 55, 8054),
(9055, 56, 8055),
(9056, 57, 8056),
(9057, 58, 8057),
(9058, 59, 8058),
(9059, 60, 8059),
(9060, 61, 8060),
(9061, 62, 8061),
(9062, 63, 8062),
(9063, 64, 8063),
(9064, 65, 8064),
(9065, 66, 8065),
(9066, 67, 8066),
(9067, 68, 8067),
(9068, 69, 8068),
(9069, 70, 8069),
(9070, 71, 8070),
(9071, 72, 8071),
(9072, 73, 8072),
(9073, 74, 8073),
(9074, 75, 8074),
(9075, 76, 8075),
(9076, 77, 8076),
(9077, 78, 8077),
(9078, 79, 8078),
(9079, 80, 8079),
(9080, 81, 8080),
(9081, 82, 8081),
(9082, 83, 8082),
(9083, 84, 8083),
(9084, 85, 8084),
(9085, 86, 8085),
(9086, 87, 8086),
(9087, 88, 8087),
(9088, 89, 8088),
(9089, 90, 8089),
(9090, 91, 8090),
(9091, 92, 8091),
(9092, 93, 8092),
(9093, 94, 8093),
(9094, 95, 8094),
(9095, 96, 8095),
(9096, 97, 8096),
(9097, 98, 8097),
(9098, 99, 8098),
(9099, 100, 8099);

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
(5000, '579.0000', '292.0000', 'Nulla', '0.0000', '0.0000', '0.0000'),
(5001, '999.0000', '439.0000', 'elementum', '0.0000', '0.0000', '0.0000'),
(5002, '903.0000', '567.0000', 'Maecenas', '0.0000', '0.0000', '0.0000'),
(5003, '150.0000', '806.0000', 'aliquet', '0.0000', '0.0000', '0.0000'),
(5004, '432.0000', '893.0000', 'quis', '0.0000', '0.0000', '0.0000'),
(5005, '318.0000', '565.0000', 'egestas.', '0.0000', '0.0000', '0.0000'),
(5006, '278.0000', '673.0000', 'natoque', '0.0000', '0.0000', '0.0000'),
(5007, '990.0000', '446.0000', 'nisi', '0.0000', '0.0000', '0.0000'),
(5008, '662.0000', '70.0000', 'ridiculus', '0.0000', '0.0000', '0.0000'),
(5009, '366.0000', '632.0000', 'enim,', '0.0000', '0.0000', '0.0000'),
(5010, '521.0000', '466.0000', 'molestie', '0.0000', '0.0000', '0.0000'),
(5011, '645.0000', '891.0000', 'in', '0.0000', '0.0000', '0.0000'),
(5012, '536.0000', '913.0000', 'aliquet.', '0.0000', '0.0000', '0.0000'),
(5013, '855.0000', '446.0000', 'fermentum', '0.0000', '0.0000', '0.0000'),
(5014, '233.0000', '531.0000', 'tempor', '0.0000', '0.0000', '0.0000'),
(5015, '240.0000', '76.0000', 'egestas', '0.0000', '0.0000', '0.0000'),
(5016, '600.0000', '562.0000', 'enim', '0.0000', '0.0000', '0.0000'),
(5017, '756.0000', '759.0000', 'sodales.', '0.0000', '0.0000', '0.0000'),
(5018, '808.0000', '1000.0000', 'est,', '0.0000', '0.0000', '0.0000'),
(5019, '511.0000', '453.0000', 'consectetuer', '0.0000', '0.0000', '0.0000'),
(5020, '459.0000', '183.0000', 'libero', '0.0000', '0.0000', '0.0000'),
(5021, '708.0000', '14.0000', 'commodo', '0.0000', '0.0000', '0.0000'),
(5022, '736.0000', '475.0000', 'facilisis', '0.0000', '0.0000', '0.0000'),
(5023, '408.0000', '7.0000', 'fringilla', '0.0000', '0.0000', '0.0000'),
(5024, '643.0000', '225.0000', 'Vivamus', '0.0000', '0.0000', '0.0000'),
(5025, '863.0000', '992.0000', 'aliquet.', '0.0000', '0.0000', '0.0000'),
(5026, '675.0000', '862.0000', 'ligula.', '0.0000', '0.0000', '0.0000'),
(5027, '921.0000', '195.0000', 'feugiat', '0.0000', '0.0000', '0.0000'),
(5028, '714.0000', '492.0000', 'Curae;', '0.0000', '0.0000', '0.0000'),
(5029, '45.0000', '970.0000', 'Mauris', '0.0000', '0.0000', '0.0000'),
(5030, '131.0000', '455.0000', 'accumsan', '0.0000', '0.0000', '0.0000'),
(5031, '227.0000', '186.0000', 'magnis', '0.0000', '0.0000', '0.0000'),
(5032, '784.0000', '158.0000', 'vel', '0.0000', '0.0000', '0.0000'),
(5033, '795.0000', '356.0000', 'neque', '0.0000', '0.0000', '0.0000'),
(5034, '360.0000', '225.0000', 'faucibus', '0.0000', '0.0000', '0.0000'),
(5035, '211.0000', '154.0000', 'euismod', '0.0000', '0.0000', '0.0000'),
(5036, '93.0000', '879.0000', 'risus', '0.0000', '0.0000', '0.0000'),
(5037, '891.0000', '411.0000', 'sit', '0.0000', '0.0000', '0.0000'),
(5038, '406.0000', '571.0000', 'tincidunt,', '0.0000', '0.0000', '0.0000'),
(5039, '23.0000', '31.0000', 'Proin', '0.0000', '0.0000', '0.0000'),
(5040, '816.0000', '680.0000', 'non,', '0.0000', '0.0000', '0.0000'),
(5041, '74.0000', '788.0000', 'Nunc', '0.0000', '0.0000', '0.0000'),
(5042, '746.0000', '385.0000', 'orci.', '0.0000', '0.0000', '0.0000'),
(5043, '970.0000', '13.0000', 'non,', '0.0000', '0.0000', '0.0000'),
(5044, '507.0000', '708.0000', 'et', '0.0000', '0.0000', '0.0000'),
(5045, '793.0000', '757.0000', 'vel', '0.0000', '0.0000', '0.0000'),
(5046, '739.0000', '795.0000', 'nunc', '0.0000', '0.0000', '0.0000'),
(5047, '218.0000', '715.0000', 'orci', '0.0000', '0.0000', '0.0000'),
(5048, '177.0000', '842.0000', 'montes,', '0.0000', '0.0000', '0.0000'),
(5049, '184.0000', '188.0000', 'dignissim', '0.0000', '0.0000', '0.0000'),
(5050, '27.0000', '502.0000', 'eros.', '0.0000', '0.0000', '0.0000'),
(5051, '236.0000', '355.0000', 'cursus', '0.0000', '0.0000', '0.0000'),
(5052, '986.0000', '77.0000', 'vitae', '0.0000', '0.0000', '0.0000'),
(5053, '127.0000', '231.0000', 'Lorem', '0.0000', '0.0000', '0.0000'),
(5054, '235.0000', '645.0000', 'ullamcorper,', '0.0000', '0.0000', '0.0000'),
(5055, '733.0000', '447.0000', 'lorem', '0.0000', '0.0000', '0.0000'),
(5056, '684.0000', '361.0000', 'a,', '0.0000', '0.0000', '0.0000'),
(5057, '219.0000', '618.0000', 'fermentum', '0.0000', '0.0000', '0.0000'),
(5058, '616.0000', '206.0000', 'porttitor', '0.0000', '0.0000', '0.0000'),
(5059, '724.0000', '904.0000', 'Etiam', '0.0000', '0.0000', '0.0000'),
(5060, '521.0000', '182.0000', 'Proin', '0.0000', '0.0000', '0.0000'),
(5061, '343.0000', '27.0000', 'molestie', '0.0000', '0.0000', '0.0000'),
(5062, '990.0000', '690.0000', 'mauris.', '0.0000', '0.0000', '0.0000'),
(5063, '4.0000', '739.0000', 'Donec', '0.0000', '0.0000', '0.0000'),
(5064, '890.0000', '132.0000', 'nec', '0.0000', '0.0000', '0.0000'),
(5065, '102.0000', '772.0000', 'convallis', '0.0000', '0.0000', '0.0000'),
(5066, '442.0000', '443.0000', 'non,', '0.0000', '0.0000', '0.0000'),
(5067, '622.0000', '178.0000', 'euismod', '0.0000', '0.0000', '0.0000'),
(5068, '474.0000', '957.0000', 'vitae', '0.0000', '0.0000', '0.0000'),
(5069, '872.0000', '100.0000', 'in', '0.0000', '0.0000', '0.0000'),
(5070, '135.0000', '779.0000', 'libero', '0.0000', '0.0000', '0.0000'),
(5071, '237.0000', '194.0000', 'tincidunt', '0.0000', '0.0000', '0.0000'),
(5072, '199.0000', '860.0000', 'metus.', '0.0000', '0.0000', '0.0000'),
(5073, '80.0000', '142.0000', 'Sed', '0.0000', '0.0000', '0.0000'),
(5074, '351.0000', '925.0000', 'semper', '0.0000', '0.0000', '0.0000'),
(5075, '843.0000', '30.0000', 'gravida', '0.0000', '0.0000', '0.0000'),
(5076, '436.0000', '758.0000', 'metus.', '0.0000', '0.0000', '0.0000'),
(5077, '220.0000', '641.0000', 'Aliquam', '0.0000', '0.0000', '0.0000'),
(5078, '772.0000', '763.0000', 'felis', '0.0000', '0.0000', '0.0000'),
(5079, '604.0000', '742.0000', 'ut', '0.0000', '0.0000', '0.0000'),
(5080, '945.0000', '919.0000', 'Integer', '0.0000', '0.0000', '0.0000'),
(5081, '152.0000', '965.0000', 'Cras', '0.0000', '0.0000', '0.0000'),
(5082, '279.0000', '545.0000', 'vulputate', '0.0000', '0.0000', '0.0000'),
(5083, '267.0000', '700.0000', 'commodo', '0.0000', '0.0000', '0.0000'),
(5084, '579.0000', '543.0000', 'ac', '0.0000', '0.0000', '0.0000'),
(5085, '431.0000', '398.0000', 'ligula', '0.0000', '0.0000', '0.0000'),
(5086, '855.0000', '686.0000', 'rutrum', '0.0000', '0.0000', '0.0000'),
(5087, '264.0000', '315.0000', 'dolor', '0.0000', '0.0000', '0.0000'),
(5088, '382.0000', '234.0000', 'Cras', '0.0000', '0.0000', '0.0000'),
(5089, '866.0000', '31.0000', 'penatibus', '0.0000', '0.0000', '0.0000'),
(5090, '675.0000', '796.0000', 'gravida', '0.0000', '0.0000', '0.0000'),
(5091, '138.0000', '123.0000', 'orci', '0.0000', '0.0000', '0.0000'),
(5092, '898.0000', '180.0000', 'dignissim', '0.0000', '0.0000', '0.0000'),
(5093, '231.0000', '343.0000', 'Nunc', '0.0000', '0.0000', '0.0000'),
(5094, '938.0000', '613.0000', 'feugiat', '0.0000', '0.0000', '0.0000'),
(5095, '130.0000', '4.0000', 'laoreet', '0.0000', '0.0000', '0.0000'),
(5096, '719.0000', '783.0000', 'ut', '0.0000', '0.0000', '0.0000'),
(5097, '967.0000', '835.0000', 'purus.', '0.0000', '0.0000', '0.0000'),
(5098, '818.0000', '143.0000', 'sagittis', '0.0000', '0.0000', '0.0000'),
(5099, '659.0000', '354.0000', 'Nunc', '0.0000', '0.0000', '0.0000');

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
(10000, 'Underwood', 'Abbot', 'Eu Augue Porttitor PC', '(627) 657-5849', 1, 'laoreet@magnaa.org'),
(10001, 'Hodge', 'Harriet', 'Diam Dictum Sapien Industries', '(737) 790-6798', 2, 'Aenean.egestas@libero.edu'),
(10004, 'Daugherty', 'Winifred', 'Sed Neque Sed PC', '(727) 930-3648', 5, 'Aliquam.adipiscing.lobortis@felis.com'),
(10005, 'Rios', 'Coby', 'Sed Pharetra Felis LLC', '(576) 931-0210', 6, 'dolor.Nulla.semper@amet.edu'),
(10006, 'Rivas', 'Graham', 'Pellentesque Incorporated', '(247) 872-0539', 7, 'Nullam@Curabitur.edu'),
(10007, 'Ford', 'Althea', 'Aliquam Auctor Velit Institute', '(565) 384-1117', 8, 'Phasellus.fermentum.convallis@montesnascetur.net'),
(10008, 'Taylor', 'Brooke', 'Proin Eget Odio Industries', '(352) 229-1195', 9, 'tortor.dictum@mollisnon.ca'),
(10009, 'Kramer', 'Travis', 'Eget Associates', '(312) 910-5338', 10, 'tincidunt@egetdictum.com'),
(10010, 'Mullen', 'Gisela', 'A Neque Nullam Inc.', '(345) 420-5437', 11, 'imperdiet@necmalesuadaut.ca'),
(10011, 'Mcdonald', 'Beverly', 'Donec Institute', '(524) 356-3483', 12, 'In@sollicitudinamalesuada.net'),
(10012, 'Roman', 'Paul', 'Morbi Tristique Senectus Associates', '(180) 482-7189', 13, 'erat@ultricesVivamusrhoncus.edu'),
(10013, 'Crawford', 'Ryder', 'Eget Incorporated', '(886) 586-3819', 14, 'diam@vel.edu'),
(10014, 'Santiago', 'Barbara', 'Est Limited', '(721) 250-7409', 15, 'velit@Phasellusnulla.co.uk'),
(10015, 'House', 'Palmer', 'Tincidunt Adipiscing Mauris Institute', '(465) 965-8607', 16, 'augue.ac@idrisus.net'),
(10016, 'Knight', 'Maxine', 'Augue Industries', '(224) 391-7124', 17, 'eu.placerat@porttitorinterdumSed.edu'),
(10017, 'Nicholson', 'Zahir', 'Feugiat Metus Sit Consulting', '(313) 411-8353', 18, 'in.sodales.elit@nectellusNunc.ca'),
(10018, 'Skinner', 'Hilel', 'Tristique Senectus Associates', '(505) 482-7224', 19, 'rhoncus.Nullam.velit@CraspellentesqueSed.org'),
(10019, 'House', 'Devin', 'Eu Erat Semper Corp.', '(270) 727-1841', 20, 'Phasellus.fermentum.convallis@semper.co.uk'),
(10020, 'Vaughn', 'Minerva', 'Proin Velit Sed Industries', '(931) 643-6615', 21, 'penatibus.et@Cras.co.uk'),
(10021, 'Santana', 'Orli', 'Nulla At Sem Institute', '(586) 667-9379', 22, 'et@Curabitur.org'),
(10022, 'Sawyer', 'Fredericka', 'A LLC', '(540) 444-1160', 23, 'orci.adipiscing.non@Mauris.org'),
(10023, 'Prince', 'Nora', 'Feugiat Placerat Foundation', '(789) 594-9786', 24, 'tortor.at.risus@Curabitur.ca'),
(10024, 'Stout', 'Maisie', 'Etiam LLC', '(156) 272-6288', 25, 'ipsum.Suspendisse.sagittis@Aenean.org'),
(10025, 'Solomon', 'Tanya', 'Orci Sem LLC', '(941) 903-5256', 26, 'Proin@facilisismagnatellus.ca'),
(10026, 'Johnston', 'Libby', 'Quisque Industries', '(433) 132-7097', 27, 'Maecenas@fringilla.edu'),
(10027, 'Branch', 'Jackson', 'Urna Institute', '(994) 585-5532', 28, 'urna@hendrerit.co.uk'),
(10028, 'Cervantes', 'Noble', 'Mauris Ltd', '(467) 646-7991', 29, 'venenatis.lacus.Etiam@neceleifendnon.ca'),
(10029, 'Barton', 'Reuben', 'Donec Nibh Enim Inc.', '(953) 811-0720', 30, 'Duis@dolor.org'),
(10030, 'Parrish', 'Natalie', 'Purus Maecenas Associates', '(381) 968-2226', 31, 'in.felis@tristique.ca'),
(10031, 'Rodriquez', 'Stewart', 'Integer Tincidunt Aliquam Inc.', '(215) 458-5858', 32, 'Nunc@urnaNuncquis.co.uk'),
(10032, 'Beasley', 'Lani', 'Cras Corporation', '(682) 701-0849', 33, 'tincidunt@auguescelerisque.ca'),
(10033, 'Hawkins', 'Jena', 'Curae; Phasellus Ornare LLC', '(954) 538-3143', 34, 'tristique@et.net'),
(10034, 'Holcomb', 'Zane', 'Eleifend LLP', '(712) 986-0273', 35, 'quis.massa@nuncInat.org'),
(10035, 'Melendez', 'Rosalyn', 'Neque Limited', '(423) 775-0562', 36, 'elit.Aliquam@Fuscemi.co.uk'),
(10036, 'Malone', 'Kevin', 'Nunc Ullamcorper Incorporated', '(464) 446-0705', 37, 'lacinia.orci.consectetuer@a.co.uk'),
(10037, 'Barnes', 'Aphrodite', 'Hendrerit Neque Company', '(967) 214-2378', 38, 'a.felis.ullamcorper@malesuadafamesac.org'),
(10038, 'Carver', 'Tanner', 'Ac Consulting', '(794) 760-9833', 39, 'facilisis.lorem@maurisMorbinon.co.uk'),
(10039, 'Fitzpatrick', 'Athena', 'Et Malesuada Company', '(617) 268-6413', 40, 'luctus.Curabitur.egestas@mollisPhaselluslibero.edu'),
(10040, 'Long', 'Marshall', 'Metus LLP', '(361) 256-9680', 41, 'hendrerit@tinciduntnibh.edu'),
(10041, 'Garza', 'Oleg', 'Cras LLC', '(818) 275-8186', 42, 'consequat.purus.Maecenas@dolortempus.net'),
(10042, 'Mcguire', 'Astra', 'Accumsan Convallis Ante Incorporated', '(470) 591-4689', 43, 'Aliquam.vulputate.ullamcorper@gravidaPraesent.edu'),
(10043, 'Skinner', 'Mollie', 'Diam Dictum Incorporated', '(114) 880-0139', 44, 'mauris.Suspendisse@accumsanneque.ca'),
(10044, 'Morin', 'Griffith', 'Ligula Aenean Euismod Industries', '(277) 807-4884', 45, 'eget@at.ca'),
(10045, 'Knight', 'Rylee', 'Facilisis Suspendisse Associates', '(412) 455-6643', 46, 'adipiscing.enim.mi@dapibus.org'),
(10046, 'Erickson', 'Mercedes', 'Felis Corp.', '(667) 700-9580', 47, 'metus@orcisem.org'),
(10047, 'Hart', 'Jermaine', 'Tempor Arcu PC', '(463) 633-5615', 48, 'erat.Vivamus@pharetraQuisque.ca'),
(10048, 'Summers', 'Uriah', 'At Pede LLP', '(573) 934-0671', 49, 'sollicitudin.orci.sem@dui.edu'),
(10049, 'Hines', 'Minerva', 'Nunc Mauris Sapien Institute', '(836) 341-0455', 50, 'mollis.nec.cursus@ametdiam.com'),
(10050, 'Vinson', 'Harding', 'Vel Mauris Integer Corp.', '(260) 725-5712', 51, 'cursus.a.enim@DonectinciduntDonec.ca'),
(10051, 'Hurst', 'Shana', 'Praesent LLP', '(633) 336-9829', 52, 'consectetuer.rhoncus@miAliquam.com'),
(10052, 'Robertson', 'Alan', 'Vivamus Non Lorem Corp.', '(883) 619-7238', 53, 'non.sapien.molestie@egestas.com'),
(10053, 'Zimmerman', 'Wanda', 'Molestie Tortor Incorporated', '(541) 247-1241', 54, 'Aliquam.gravida@Mauris.edu'),
(10054, 'Gamble', 'Angela', 'Ullamcorper Eu LLP', '(852) 836-9094', 55, 'odio.sagittis@ullamcorpereu.com'),
(10055, 'Conley', 'Yasir', 'Euismod Foundation', '(440) 849-6652', 56, 'fringilla.Donec.feugiat@arcu.co.uk'),
(10056, 'Bailey', 'Maggy', 'A Magna LLC', '(443) 381-2313', 57, 'amet.orci@Namporttitor.ca'),
(10057, 'Terry', 'Rana', 'Amet Metus Aliquam Corporation', '(839) 255-8364', 58, 'risus.In.mi@tellusloremeu.net'),
(10058, 'David', 'Jolene', 'Vel Ltd', '(691) 241-0258', 59, 'lacus.Quisque.purus@pulvinararcuet.edu'),
(10059, 'Manning', 'Gisela', 'Dui Consulting', '(177) 638-6244', 60, 'Lorem@quisturpis.edu'),
(10060, 'Cook', 'Colin', 'Turpis Aliquam Adipiscing Incorporated', '(808) 225-6852', 61, 'penatibus@montesnascetur.co.uk'),
(10061, 'Henderson', 'Vance', 'Integer Corporation', '(517) 359-5517', 62, 'dui.lectus.rutrum@elitpretium.com'),
(10062, 'Moreno', 'Cade', 'Amet Ante Ltd', '(930) 546-3608', 63, 'purus.Maecenas.libero@commodotinciduntnibh.edu'),
(10063, 'Duran', 'Kaden', 'Dictum Eu Industries', '(818) 972-3240', 64, 'Sed@nunc.co.uk'),
(10064, 'Rowe', 'Isaiah', 'Nonummy Ac LLC', '(812) 955-5977', 65, 'ac@consequatdolorvitae.edu'),
(10065, 'Rios', 'Jescie', 'Accumsan Laoreet Consulting', '(180) 232-7164', 66, 'cursus@ipsumac.co.uk'),
(10066, 'Koch', 'Linus', 'Arcu Sed Et Company', '(568) 416-2560', 67, 'et.lacinia.vitae@mollislectus.edu'),
(10067, 'Benson', 'Wynne', 'Dictum Magna Ut Ltd', '(448) 514-8876', 68, 'tincidunt.dui.augue@utaliquam.com'),
(10068, 'Moody', 'Cameran', 'Diam Institute', '(647) 318-4481', 69, 'laoreet.ipsum.Curabitur@turpisvitae.edu'),
(10069, 'Diaz', 'Hiram', 'Enim Consulting', '(261) 416-8347', 70, 'ac.turpis.egestas@sociisnatoquepenatibus.ca'),
(10070, 'Murphy', 'Tallulah', 'Quis Accumsan Convallis Incorporated', '(688) 811-1476', 71, 'nonummy.ac.feugiat@libero.ca'),
(10071, 'Coffey', 'Isadora', 'Habitant Consulting', '(587) 733-2379', 72, 'tellus@Nam.org'),
(10072, 'Cummings', 'Sawyer', 'Duis Consulting', '(468) 693-2705', 73, 'nec.tellus.Nunc@Duis.com'),
(10073, 'Norris', 'Xander', 'Fermentum Convallis Inc.', '(872) 536-4257', 74, 'sociosqu.ad.litora@lobortistellus.org'),
(10074, 'Burks', 'Bevis', 'Erat Ltd', '(108) 494-1909', 75, 'dolor.dapibus.gravida@eu.co.uk'),
(10075, 'Pace', 'Jana', 'Nullam Limited', '(283) 946-3645', 76, 'eget.massa.Suspendisse@posuerecubilia.ca'),
(10076, 'Burt', 'Shelley', 'Augue Scelerisque LLP', '(268) 145-7262', 77, 'a.facilisis@justoPraesentluctus.ca'),
(10077, 'Harris', 'Basia', 'Enim Company', '(775) 487-7757', 78, 'penatibus@natoque.com'),
(10078, 'Mccullough', 'Tatiana', 'Tellus Lorem Eu Company', '(237) 561-4266', 79, 'nec@urnaNunc.co.uk'),
(10079, 'Holland', 'Rebecca', 'Ornare Egestas LLP', '(146) 697-7010', 80, 'sapien.Cras@nequeSedeget.net'),
(10080, 'Wheeler', 'Ray', 'Donec Egestas Duis Ltd', '(174) 608-4387', 81, 'justo.Proin@vitaedolorDonec.com'),
(10081, 'Paul', 'Kelsie', 'Donec Corporation', '(357) 112-7815', 82, 'ut@vellectus.edu'),
(10082, 'Conway', 'Doris', 'Commodo Hendrerit LLP', '(380) 734-3359', 83, 'molestie@loremac.org'),
(10083, 'Good', 'Hayley', 'Est Mollis Limited', '(185) 493-0616', 84, 'vulputate@dapibusgravidaAliquam.ca'),
(10084, 'Bell', 'Lani', 'Donec Limited', '(638) 294-7541', 85, 'metus.facilisis.lorem@ProinvelitSed.edu'),
(10085, 'Davenport', 'Kasper', 'Sem LLC', '(642) 394-5102', 86, 'ultrices.posuere@Praesent.org'),
(10086, 'Simon', 'Hannah', 'Velit Eu Corp.', '(211) 620-1050', 87, 'auctor.velit.eget@dolorFusce.co.uk'),
(10087, 'Mcmahon', 'Ramona', 'Urna Company', '(268) 309-8163', 88, 'Donec.consectetuer@Quisque.co.uk'),
(10088, 'Langley', 'Jordan', 'Libero Proin Sed Corporation', '(186) 225-0274', 89, 'lobortis.tellus@eu.ca'),
(10089, 'Rodriguez', 'Macy', 'Curae; Donec Industries', '(249) 195-5656', 90, 'Cras@quislectusNullam.edu'),
(10090, 'Dennis', 'William', 'In Sodales Limited', '(895) 748-5716', 91, 'dui@erat.ca'),
(10091, 'Coleman', 'Chester', 'Nulla Donec Consulting', '(877) 316-5550', 92, 'eget@cursus.com'),
(10092, 'Townsend', 'Channing', 'Lacus Quisque Institute', '(737) 357-4013', 93, 'magna@auctor.net'),
(10093, 'Kane', 'Liberty', 'Suspendisse Foundation', '(141) 739-2803', 94, 'Suspendisse@quis.net'),
(10094, 'Johnston', 'Ainsley', 'Id Limited', '(857) 711-0973', 95, 'nibh.Aliquam@lectusNullam.ca'),
(10095, 'Sosa', 'Velma', 'Felis Donec Industries', '(858) 846-7398', 96, 'blandit.Nam.nulla@Quisque.ca'),
(10096, 'Pitts', 'Jacob', 'Commodo Ltd', '(786) 550-4322', 97, 'est@NullaaliquetProin.co.uk'),
(10097, 'Booker', 'Prescott', 'Et Corporation', '(658) 220-6888', 98, 'libero.dui@augueSed.co.uk'),
(10098, 'Bradshaw', 'Tanek', 'Nunc Institute', '(213) 797-1629', 99, 'sit@dolorFuscemi.net'),
(10099, 'Ellis', 'Hollee', 'Dui Lectus Industries', '(659) 886-0122', 100, 'non@DuisgravidaPraesent.org');

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
(7000, 1000, 2000, '0000-00-00', '0.0000', '0.0000', '0.0000', ' sale'),
(7001, 1001, 2001, '0000-00-00', '0.0000', '0.0000', '0.0000', ' sale'),
(7005, 1005, 2005, '0000-00-00', '0.0000', '0.0000', '0.0000', ' cust'),
(7006, 1006, 2006, '0000-00-00', '0.0000', '0.0000', '0.0000', 'gift '),
(7007, 1007, 2007, '0000-00-00', '0.0000', '0.0000', '0.0000', ' cust'),
(7008, 1008, 2008, '0000-00-00', '0.0000', '0.0000', '0.0000', 'gift '),
(7009, 1009, 2009, '0000-00-00', '0.0000', '0.0000', '0.0000', ' cust'),
(7010, 1010, 2010, '0000-00-00', '0.0000', '0.0000', '0.0000', 'gift '),
(7011, 1011, 2011, '0000-00-00', '0.0000', '0.0000', '0.0000', 'gift '),
(7012, 1012, 2012, '0000-00-00', '0.0000', '0.0000', '0.0000', ' cust'),
(7013, 1013, 2013, '0000-00-00', '0.0000', '0.0000', '0.0000', ' sale'),
(7014, 1014, 2014, '0000-00-00', '0.0000', '0.0000', '0.0000', ' sale'),
(7015, 1015, 2015, '0000-00-00', '0.0000', '0.0000', '0.0000', 'gift '),
(7016, 1016, 2016, '0000-00-00', '0.0000', '0.0000', '0.0000', ' cust'),
(7017, 1017, 2017, '0000-00-00', '0.0000', '0.0000', '0.0000', 'gift '),
(7018, 1018, 2018, '0000-00-00', '0.0000', '0.0000', '0.0000', ' sale'),
(7019, 1019, 2019, '0000-00-00', '0.0000', '0.0000', '0.0000', ' sale'),
(7020, 1020, 2020, '0000-00-00', '0.0000', '0.0000', '0.0000', ' sale'),
(7021, 1021, 2021, '0000-00-00', '0.0000', '0.0000', '0.0000', 'gift '),
(7022, 1022, 2022, '0000-00-00', '0.0000', '0.0000', '0.0000', ' cust'),
(7023, 1023, 2023, '0000-00-00', '0.0000', '0.0000', '0.0000', 'gift '),
(7024, 1024, 2024, '0000-00-00', '0.0000', '0.0000', '0.0000', 'gift '),
(7025, 1025, 2025, '0000-00-00', '0.0000', '0.0000', '0.0000', 'gift '),
(7026, 1026, 2026, '0000-00-00', '0.0000', '0.0000', '0.0000', 'gift '),
(7027, 1027, 2027, '0000-00-00', '0.0000', '0.0000', '0.0000', 'gift '),
(7028, 1028, 2028, '0000-00-00', '0.0000', '0.0000', '0.0000', ' cust'),
(7029, 1029, 2029, '0000-00-00', '0.0000', '0.0000', '0.0000', 'gift '),
(7030, 1030, 2030, '0000-00-00', '0.0000', '0.0000', '0.0000', 'gift '),
(7031, 1031, 2031, '0000-00-00', '0.0000', '0.0000', '0.0000', ' cust'),
(7032, 1032, 2032, '0000-00-00', '0.0000', '0.0000', '0.0000', ' cust'),
(7033, 1033, 2033, '0000-00-00', '0.0000', '0.0000', '0.0000', ' cust'),
(7034, 1034, 2034, '0000-00-00', '0.0000', '0.0000', '0.0000', ' sale'),
(7035, 1035, 2035, '0000-00-00', '0.0000', '0.0000', '0.0000', ' sale'),
(7036, 1036, 2036, '0000-00-00', '0.0000', '0.0000', '0.0000', ' cust'),
(7037, 1037, 2037, '0000-00-00', '0.0000', '0.0000', '0.0000', ' cust'),
(7038, 1038, 2038, '0000-00-00', '0.0000', '0.0000', '0.0000', 'gift '),
(7039, 1039, 2039, '0000-00-00', '0.0000', '0.0000', '0.0000', ' cust'),
(7040, 1040, 2040, '0000-00-00', '0.0000', '0.0000', '0.0000', 'gift '),
(7041, 1041, 2041, '0000-00-00', '0.0000', '0.0000', '0.0000', ' cust'),
(7042, 1042, 2042, '0000-00-00', '0.0000', '0.0000', '0.0000', ' sale'),
(7043, 1043, 2043, '0000-00-00', '0.0000', '0.0000', '0.0000', ' sale'),
(7044, 1044, 2044, '0000-00-00', '0.0000', '0.0000', '0.0000', ' sale'),
(7045, 1045, 2045, '0000-00-00', '0.0000', '0.0000', '0.0000', ' cust'),
(7046, 1046, 2046, '0000-00-00', '0.0000', '0.0000', '0.0000', ' sale'),
(7047, 1047, 2047, '0000-00-00', '0.0000', '0.0000', '0.0000', ' cust'),
(7048, 1048, 2048, '0000-00-00', '0.0000', '0.0000', '0.0000', ' sale'),
(7049, 1049, 2049, '0000-00-00', '0.0000', '0.0000', '0.0000', 'gift '),
(7050, 1050, 2050, '0000-00-00', '0.0000', '0.0000', '0.0000', ' cust'),
(7051, 1051, 2051, '0000-00-00', '0.0000', '0.0000', '0.0000', 'gift '),
(7052, 1052, 2052, '0000-00-00', '0.0000', '0.0000', '0.0000', 'gift '),
(7053, 1053, 2053, '0000-00-00', '0.0000', '0.0000', '0.0000', 'gift '),
(7054, 1054, 2054, '0000-00-00', '0.0000', '0.0000', '0.0000', 'gift '),
(7055, 1055, 2055, '0000-00-00', '0.0000', '0.0000', '0.0000', ' cust'),
(7056, 1056, 2056, '0000-00-00', '0.0000', '0.0000', '0.0000', 'gift '),
(7057, 1057, 2057, '0000-00-00', '0.0000', '0.0000', '0.0000', ' cust'),
(7058, 1058, 2058, '0000-00-00', '0.0000', '0.0000', '0.0000', ' sale'),
(7059, 1059, 2059, '0000-00-00', '0.0000', '0.0000', '0.0000', 'gift '),
(7060, 1060, 2060, '0000-00-00', '0.0000', '0.0000', '0.0000', ' cust'),
(7061, 1061, 2061, '0000-00-00', '0.0000', '0.0000', '0.0000', ' cust'),
(7062, 1062, 2062, '0000-00-00', '0.0000', '0.0000', '0.0000', ' cust'),
(7063, 1063, 2063, '0000-00-00', '0.0000', '0.0000', '0.0000', ' sale'),
(7064, 1064, 2064, '0000-00-00', '0.0000', '0.0000', '0.0000', ' cust'),
(7065, 1065, 2065, '0000-00-00', '0.0000', '0.0000', '0.0000', ' cust'),
(7066, 1066, 2066, '0000-00-00', '0.0000', '0.0000', '0.0000', ' sale'),
(7067, 1067, 2067, '0000-00-00', '0.0000', '0.0000', '0.0000', ' sale'),
(7068, 1068, 2068, '0000-00-00', '0.0000', '0.0000', '0.0000', ' sale'),
(7069, 1069, 2069, '0000-00-00', '0.0000', '0.0000', '0.0000', 'gift '),
(7070, 1070, 2070, '0000-00-00', '0.0000', '0.0000', '0.0000', ' cust'),
(7071, 1071, 2071, '0000-00-00', '0.0000', '0.0000', '0.0000', 'gift '),
(7072, 1072, 2072, '0000-00-00', '0.0000', '0.0000', '0.0000', ' cust'),
(7073, 1073, 2073, '0000-00-00', '0.0000', '0.0000', '0.0000', ' cust'),
(7074, 1074, 2074, '0000-00-00', '0.0000', '0.0000', '0.0000', 'gift '),
(7075, 1075, 2075, '0000-00-00', '0.0000', '0.0000', '0.0000', ' sale'),
(7076, 1076, 2076, '0000-00-00', '0.0000', '0.0000', '0.0000', 'gift '),
(7077, 1077, 2077, '0000-00-00', '0.0000', '0.0000', '0.0000', 'gift '),
(7078, 1078, 2078, '0000-00-00', '0.0000', '0.0000', '0.0000', ' cust'),
(7079, 1079, 2079, '0000-00-00', '0.0000', '0.0000', '0.0000', 'gift '),
(7080, 1080, 2080, '0000-00-00', '0.0000', '0.0000', '0.0000', 'gift '),
(7081, 1081, 2081, '0000-00-00', '0.0000', '0.0000', '0.0000', ' sale'),
(7082, 1082, 2082, '0000-00-00', '0.0000', '0.0000', '0.0000', ' sale'),
(7083, 1083, 2083, '0000-00-00', '0.0000', '0.0000', '0.0000', 'gift '),
(7084, 1084, 2084, '0000-00-00', '0.0000', '0.0000', '0.0000', 'gift '),
(7085, 1085, 2085, '0000-00-00', '0.0000', '0.0000', '0.0000', 'gift '),
(7086, 1086, 2086, '0000-00-00', '0.0000', '0.0000', '0.0000', ' sale'),
(7087, 1087, 2087, '0000-00-00', '0.0000', '0.0000', '0.0000', ' cust'),
(7088, 1088, 2088, '0000-00-00', '0.0000', '0.0000', '0.0000', 'gift '),
(7089, 1089, 2089, '0000-00-00', '0.0000', '0.0000', '0.0000', 'gift '),
(7090, 1090, 2090, '0000-00-00', '0.0000', '0.0000', '0.0000', ' sale'),
(7091, 1091, 2091, '0000-00-00', '0.0000', '0.0000', '0.0000', ' cust'),
(7092, 1092, 2092, '0000-00-00', '0.0000', '0.0000', '0.0000', ' cust'),
(7093, 1093, 2093, '0000-00-00', '0.0000', '0.0000', '0.0000', 'gift '),
(7094, 1094, 2094, '0000-00-00', '0.0000', '0.0000', '0.0000', 'gift '),
(7095, 1095, 2095, '0000-00-00', '0.0000', '0.0000', '0.0000', 'gift '),
(7096, 1096, 2096, '0000-00-00', '0.0000', '0.0000', '0.0000', 'gift '),
(7097, 1097, 2097, '0000-00-00', '0.0000', '0.0000', '0.0000', ' sale'),
(7098, 1098, 2098, '0000-00-00', '0.0000', '0.0000', '0.0000', ' sale'),
(7099, 1099, 2099, '0000-00-00', '0.0000', '0.0000', '0.0000', ' sale');

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
(7000, 5000, '0.0000', 527),
(7001, 5001, '0.0000', 740),
(7005, 5005, '0.0000', 754),
(7006, 5006, '0.0000', 942),
(7007, 5007, '0.0000', 946),
(7008, 5008, '0.0000', 378),
(7009, 5009, '0.0000', 649),
(7010, 5010, '0.0000', 230),
(7011, 5011, '0.0000', 656),
(7012, 5012, '0.0000', 697),
(7013, 5013, '0.0000', 224),
(7014, 5014, '0.0000', 463),
(7015, 5015, '0.0000', 866),
(7016, 5016, '0.0000', 623),
(7017, 5017, '0.0000', 613),
(7018, 5018, '0.0000', 753),
(7019, 5019, '0.0000', 734),
(7020, 5020, '0.0000', 950),
(7021, 5021, '0.0000', 606),
(7022, 5022, '0.0000', 540),
(7023, 5023, '0.0000', 699),
(7024, 5024, '0.0000', 284),
(7025, 5025, '0.0000', 258),
(7026, 5026, '0.0000', 168),
(7027, 5027, '0.0000', 628),
(7028, 5028, '0.0000', 223),
(7029, 5029, '0.0000', 379),
(7030, 5030, '0.0000', 671),
(7031, 5031, '0.0000', 139),
(7032, 5032, '0.0000', 653),
(7033, 5033, '0.0000', 463),
(7034, 5034, '0.0000', 117),
(7035, 5035, '0.0000', 663),
(7036, 5036, '0.0000', 61),
(7037, 5037, '0.0000', 263),
(7038, 5038, '0.0000', 343),
(7039, 5039, '0.0000', 263),
(7040, 5040, '0.0000', 982),
(7041, 5041, '0.0000', 50),
(7042, 5042, '0.0000', 997),
(7043, 5043, '0.0000', 441),
(7044, 5044, '0.0000', 161),
(7045, 5045, '0.0000', 856),
(7046, 5046, '0.0000', 152),
(7047, 5047, '0.0000', 402),
(7048, 5048, '0.0000', 970),
(7049, 5049, '0.0000', 1000),
(7050, 5050, '0.0000', 298),
(7051, 5051, '0.0000', 670),
(7052, 5052, '0.0000', 964),
(7053, 5053, '0.0000', 527),
(7054, 5054, '0.0000', 815),
(7055, 5055, '0.0000', 844),
(7056, 5056, '0.0000', 723),
(7057, 5057, '0.0000', 810),
(7058, 5058, '0.0000', 861),
(7059, 5059, '0.0000', 511),
(7060, 5060, '0.0000', 952),
(7061, 5061, '0.0000', 505),
(7062, 5062, '0.0000', 560),
(7063, 5063, '0.0000', 709),
(7064, 5064, '0.0000', 917),
(7065, 5065, '0.0000', 312),
(7066, 5066, '0.0000', 679),
(7067, 5067, '0.0000', 160),
(7068, 5068, '0.0000', 446),
(7069, 5069, '0.0000', 4),
(7070, 5070, '0.0000', 523),
(7071, 5071, '0.0000', 936),
(7072, 5072, '0.0000', 938),
(7073, 5073, '0.0000', 849),
(7074, 5074, '0.0000', 558),
(7075, 5075, '0.0000', 820),
(7076, 5076, '0.0000', 144),
(7077, 5077, '0.0000', 48),
(7078, 5078, '0.0000', 940),
(7079, 5079, '0.0000', 669),
(7080, 5080, '0.0000', 717),
(7081, 5081, '0.0000', 506),
(7082, 5082, '0.0000', 951),
(7083, 5083, '0.0000', 427),
(7084, 5084, '0.0000', 74),
(7085, 5085, '0.0000', 840),
(7086, 5086, '0.0000', 873),
(7087, 5087, '0.0000', 400),
(7088, 5088, '0.0000', 608),
(7089, 5089, '0.0000', 130),
(7090, 5090, '0.0000', 487),
(7091, 5091, '0.0000', 787),
(7092, 5092, '0.0000', 901),
(7093, 5093, '0.0000', 82),
(7094, 5094, '0.0000', 625),
(7095, 5095, '0.0000', 333),
(7096, 5096, '0.0000', 488),
(7097, 5097, '0.0000', 61),
(7098, 5098, '0.0000', 837),
(7099, 5099, '0.0000', 718);

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
(3000, 12000, 784, '0.0000'),
(3001, 12001, 655, '0.0000'),
(3005, 12005, 64, '0.0000'),
(3006, 12006, 918, '0.0000'),
(3007, 12007, 515, '0.0000'),
(3008, 12008, 714, '0.0000'),
(3009, 12009, 420, '0.0000'),
(3010, 12010, 510, '0.0000'),
(3011, 12011, 805, '0.0000'),
(3012, 12012, 892, '0.0000'),
(3013, 12013, 787, '0.0000'),
(3014, 12014, 391, '0.0000'),
(3015, 12015, 608, '0.0000'),
(3016, 12016, 924, '0.0000'),
(3017, 12017, 666, '0.0000'),
(3018, 12018, 584, '0.0000'),
(3019, 12019, 962, '0.0000'),
(3020, 12020, 910, '0.0000'),
(3021, 12021, 54, '0.0000'),
(3022, 12022, 456, '0.0000'),
(3023, 12023, 892, '0.0000'),
(3024, 12024, 920, '0.0000'),
(3025, 12025, 207, '0.0000'),
(3026, 12026, 729, '0.0000'),
(3027, 12027, 66, '0.0000'),
(3028, 12028, 286, '0.0000'),
(3029, 12029, 64, '0.0000'),
(3030, 12030, 957, '0.0000'),
(3031, 12031, 968, '0.0000'),
(3032, 12032, 200, '0.0000'),
(3033, 12033, 971, '0.0000'),
(3034, 12034, 159, '0.0000'),
(3035, 12035, 394, '0.0000'),
(3036, 12036, 47, '0.0000'),
(3037, 12037, 715, '0.0000'),
(3038, 12038, 334, '0.0000'),
(3039, 12039, 960, '0.0000'),
(3040, 12040, 64, '0.0000'),
(3041, 12041, 883, '0.0000'),
(3042, 12042, 71, '0.0000'),
(3043, 12043, 488, '0.0000'),
(3044, 12044, 696, '0.0000'),
(3045, 12045, 980, '0.0000'),
(3046, 12046, 30, '0.0000'),
(3047, 12047, 702, '0.0000'),
(3048, 12048, 758, '0.0000'),
(3049, 12049, 740, '0.0000'),
(3050, 12050, 240, '0.0000'),
(3051, 12051, 693, '0.0000'),
(3052, 12052, 983, '0.0000'),
(3053, 12053, 254, '0.0000'),
(3054, 12054, 747, '0.0000'),
(3055, 12055, 615, '0.0000'),
(3056, 12056, 146, '0.0000'),
(3057, 12057, 958, '0.0000'),
(3058, 12058, 604, '0.0000'),
(3059, 12059, 748, '0.0000'),
(3060, 12060, 739, '0.0000'),
(3061, 12061, 769, '0.0000'),
(3062, 12062, 574, '0.0000'),
(3063, 12063, 651, '0.0000'),
(3064, 12064, 543, '0.0000'),
(3065, 12065, 735, '0.0000'),
(3066, 12066, 787, '0.0000'),
(3067, 12067, 697, '0.0000'),
(3068, 12068, 249, '0.0000'),
(3069, 12069, 72, '0.0000'),
(3070, 12070, 852, '0.0000'),
(3071, 12071, 824, '0.0000'),
(3072, 12072, 656, '0.0000'),
(3073, 12073, 175, '0.0000'),
(3074, 12074, 686, '0.0000'),
(3075, 12075, 453, '0.0000'),
(3076, 12076, 756, '0.0000'),
(3077, 12077, 749, '0.0000'),
(3078, 12078, 276, '0.0000'),
(3079, 12079, 891, '0.0000'),
(3080, 12080, 300, '0.0000'),
(3081, 12081, 6, '0.0000'),
(3082, 12082, 458, '0.0000'),
(3083, 12083, 525, '0.0000'),
(3084, 12084, 955, '0.0000'),
(3085, 12085, 537, '0.0000'),
(3086, 12086, 392, '0.0000'),
(3087, 12087, 904, '0.0000'),
(3088, 12088, 255, '0.0000'),
(3089, 12089, 55, '0.0000'),
(3090, 12090, 750, '0.0000'),
(3091, 12091, 541, '0.0000'),
(3092, 12092, 759, '0.0000'),
(3093, 12093, 997, '0.0000'),
(3094, 12094, 180, '0.0000'),
(3095, 12095, 854, '0.0000'),
(3096, 12096, 697, '0.0000'),
(3097, 12097, 827, '0.0000'),
(3098, 12098, 895, '0.0000'),
(3099, 12099, 325, '0.0000');

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
(13000, 7000, '0000-00-00'),
(13001, 7001, '0000-00-00'),
(13005, 7005, '0000-00-00'),
(13006, 7006, '0000-00-00'),
(13007, 7007, '0000-00-00'),
(13008, 7008, '0000-00-00'),
(13009, 7009, '0000-00-00'),
(13010, 7010, '0000-00-00'),
(13011, 7011, '0000-00-00'),
(13012, 7012, '0000-00-00'),
(13013, 7013, '0000-00-00'),
(13014, 7014, '0000-00-00'),
(13015, 7015, '0000-00-00'),
(13016, 7016, '0000-00-00'),
(13017, 7017, '0000-00-00'),
(13018, 7018, '0000-00-00'),
(13019, 7019, '0000-00-00'),
(13020, 7020, '0000-00-00'),
(13021, 7021, '0000-00-00'),
(13022, 7022, '0000-00-00'),
(13023, 7023, '0000-00-00'),
(13024, 7024, '0000-00-00'),
(13025, 7025, '0000-00-00'),
(13026, 7026, '0000-00-00'),
(13027, 7027, '0000-00-00'),
(13028, 7028, '0000-00-00'),
(13029, 7029, '0000-00-00'),
(13030, 7030, '0000-00-00'),
(13031, 7031, '0000-00-00'),
(13032, 7032, '0000-00-00'),
(13033, 7033, '0000-00-00'),
(13034, 7034, '0000-00-00'),
(13035, 7035, '0000-00-00'),
(13036, 7036, '0000-00-00'),
(13037, 7037, '0000-00-00'),
(13038, 7038, '0000-00-00'),
(13039, 7039, '0000-00-00'),
(13040, 7040, '0000-00-00'),
(13041, 7041, '0000-00-00'),
(13042, 7042, '0000-00-00'),
(13043, 7043, '0000-00-00'),
(13044, 7044, '0000-00-00'),
(13045, 7045, '0000-00-00'),
(13046, 7046, '0000-00-00'),
(13047, 7047, '0000-00-00'),
(13048, 7048, '0000-00-00'),
(13049, 7049, '0000-00-00'),
(13050, 7050, '0000-00-00'),
(13051, 7051, '0000-00-00'),
(13052, 7052, '0000-00-00'),
(13053, 7053, '0000-00-00'),
(13054, 7054, '0000-00-00'),
(13055, 7055, '0000-00-00'),
(13056, 7056, '0000-00-00'),
(13057, 7057, '0000-00-00'),
(13058, 7058, '0000-00-00'),
(13059, 7059, '0000-00-00'),
(13060, 7060, '0000-00-00'),
(13061, 7061, '0000-00-00'),
(13062, 7062, '0000-00-00'),
(13063, 7063, '0000-00-00'),
(13064, 7064, '0000-00-00'),
(13065, 7065, '0000-00-00'),
(13066, 7066, '0000-00-00'),
(13067, 7067, '0000-00-00'),
(13068, 7068, '0000-00-00'),
(13069, 7069, '0000-00-00'),
(13070, 7070, '0000-00-00'),
(13071, 7071, '0000-00-00'),
(13072, 7072, '0000-00-00'),
(13073, 7073, '0000-00-00'),
(13074, 7074, '0000-00-00'),
(13075, 7075, '0000-00-00'),
(13076, 7076, '0000-00-00'),
(13077, 7077, '0000-00-00'),
(13078, 7078, '0000-00-00'),
(13079, 7079, '0000-00-00'),
(13080, 7080, '0000-00-00'),
(13081, 7081, '0000-00-00'),
(13082, 7082, '0000-00-00'),
(13083, 7083, '0000-00-00'),
(13084, 7084, '0000-00-00'),
(13085, 7085, '0000-00-00'),
(13086, 7086, '0000-00-00'),
(13087, 7087, '0000-00-00'),
(13088, 7088, '0000-00-00'),
(13089, 7089, '0000-00-00'),
(13090, 7090, '0000-00-00'),
(13091, 7091, '0000-00-00'),
(13092, 7092, '0000-00-00'),
(13093, 7093, '0000-00-00'),
(13094, 7094, '0000-00-00'),
(13095, 7095, '0000-00-00'),
(13096, 7096, '0000-00-00'),
(13097, 7097, '0000-00-00'),
(13098, 7098, '0000-00-00'),
(13099, 7099, '0000-00-00');

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
(13000, 5000, 599),
(13001, 5001, 856),
(13005, 5005, 233),
(13006, 5006, 505),
(13007, 5007, 341),
(13008, 5008, 6),
(13009, 5009, 65),
(13010, 5010, 377),
(13011, 5011, 110),
(13012, 5012, 365),
(13013, 5013, 38),
(13014, 5014, 425),
(13015, 5015, 711),
(13016, 5016, 332),
(13017, 5017, 224),
(13018, 5018, 560),
(13019, 5019, 285),
(13020, 5020, 577),
(13021, 5021, 575),
(13022, 5022, 333),
(13023, 5023, 456),
(13024, 5024, 62),
(13025, 5025, 664),
(13026, 5026, 15),
(13027, 5027, 48),
(13028, 5028, 851),
(13029, 5029, 226),
(13030, 5030, 145),
(13031, 5031, 448),
(13032, 5032, 407),
(13033, 5033, 955),
(13034, 5034, 991),
(13035, 5035, 691),
(13036, 5036, 391),
(13037, 5037, 106),
(13038, 5038, 119),
(13039, 5039, 807),
(13040, 5040, 115),
(13041, 5041, 237),
(13042, 5042, 688),
(13043, 5043, 993),
(13044, 5044, 72),
(13045, 5045, 217),
(13046, 5046, 966),
(13047, 5047, 272),
(13048, 5048, 249),
(13049, 5049, 148),
(13050, 5050, 454),
(13051, 5051, 500),
(13052, 5052, 109),
(13053, 5053, 102),
(13054, 5054, 442),
(13055, 5055, 600),
(13056, 5056, 382),
(13057, 5057, 325),
(13058, 5058, 944),
(13059, 5059, 215),
(13060, 5060, 128),
(13061, 5061, 284),
(13062, 5062, 255),
(13063, 5063, 201),
(13064, 5064, 828),
(13065, 5065, 294),
(13066, 5066, 387),
(13067, 5067, 23),
(13068, 5068, 177),
(13069, 5069, 220),
(13070, 5070, 520),
(13071, 5071, 973),
(13072, 5072, 944),
(13073, 5073, 384),
(13074, 5074, 401),
(13075, 5075, 910),
(13076, 5076, 560),
(13077, 5077, 164),
(13078, 5078, 181),
(13079, 5079, 177),
(13080, 5080, 310),
(13081, 5081, 829),
(13082, 5082, 322),
(13083, 5083, 881),
(13084, 5084, 619),
(13085, 5085, 729),
(13086, 5086, 810),
(13087, 5087, 827),
(13088, 5088, 786),
(13089, 5089, 108),
(13090, 5090, 99),
(13091, 5091, 282),
(13092, 5092, 561),
(13093, 5093, 151),
(13094, 5094, 845),
(13095, 5095, 447),
(13096, 5096, 334),
(13097, 5097, 740),
(13098, 5098, 151),
(13099, 5099, 992);

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
(14000, '967844', 9000, '0.0000'),
(14001, '473387', 9001, '0.0000'),
(14006, '573432', 9006, '0.0000'),
(14007, '709076', 9007, '0.0000'),
(14008, '982408', 9008, '0.0000'),
(14009, '330804', 9009, '0.0000'),
(14010, '261490', 9010, '0.0000'),
(14011, '161910', 9011, '0.0000'),
(14012, '29807', 9012, '0.0000'),
(14013, '606152', 9013, '0.0000'),
(14014, '59544', 9014, '0.0000'),
(14015, '893523', 9015, '0.0000'),
(14016, '481782', 9016, '0.0000'),
(14017, '442365', 9017, '0.0000'),
(14018, '894084', 9018, '0.0000'),
(14019, '384723', 9019, '0.0000'),
(14020, '945698', 9020, '0.0000'),
(14021, '731535', 9021, '0.0000'),
(14022, '186913', 9022, '0.0000'),
(14023, '164985', 9023, '0.0000'),
(14024, '37426', 9024, '0.0000'),
(14025, '762881', 9025, '0.0000'),
(14026, '401430', 9026, '0.0000'),
(14027, '741484', 9027, '0.0000'),
(14028, '600243', 9028, '0.0000'),
(14029, '217696', 9029, '0.0000'),
(14030, '136506', 9030, '0.0000'),
(14031, '663944', 9031, '0.0000'),
(14032, '841802', 9032, '0.0000'),
(14033, '134064', 9033, '0.0000'),
(14034, '6258', 9034, '0.0000'),
(14035, '541885', 9035, '0.0000'),
(14036, '897704', 9036, '0.0000'),
(14037, '433787', 9037, '0.0000'),
(14038, '692097', 9038, '0.0000'),
(14039, '7894', 9039, '0.0000'),
(14040, '269999', 9040, '0.0000'),
(14041, '683529', 9041, '0.0000'),
(14042, '865741', 9042, '0.0000'),
(14043, '131649', 9043, '0.0000'),
(14044, '203155', 9044, '0.0000'),
(14045, '744616', 9045, '0.0000'),
(14046, '967965', 9046, '0.0000'),
(14047, '442227', 9047, '0.0000'),
(14048, '106827', 9048, '0.0000'),
(14049, '427566', 9049, '0.0000'),
(14050, '995806', 9050, '0.0000'),
(14051, '288676', 9051, '0.0000'),
(14052, '687765', 9052, '0.0000'),
(14053, '308934', 9053, '0.0000'),
(14054, '51059', 9054, '0.0000'),
(14055, '94014', 9055, '0.0000'),
(14056, '123912', 9056, '0.0000'),
(14057, '673620', 9057, '0.0000'),
(14058, '717504', 9058, '0.0000'),
(14059, '597446', 9059, '0.0000'),
(14060, '292958', 9060, '0.0000'),
(14061, '139217', 9061, '0.0000'),
(14062, '853317', 9062, '0.0000'),
(14063, '480278', 9063, '0.0000'),
(14064, '501716', 9064, '0.0000'),
(14065, '842875', 9065, '0.0000'),
(14066, '301436', 9066, '0.0000'),
(14067, '517269', 9067, '0.0000'),
(14068, '645911', 9068, '0.0000'),
(14069, '275736', 9069, '0.0000'),
(14070, '64125', 9070, '0.0000'),
(14071, '578612', 9071, '0.0000'),
(14072, '901361', 9072, '0.0000'),
(14073, '901868', 9073, '0.0000'),
(14074, '170130', 9074, '0.0000'),
(14075, '253853', 9075, '0.0000'),
(14076, '517186', 9076, '0.0000'),
(14077, '971227', 9077, '0.0000'),
(14078, '473676', 9078, '0.0000'),
(14079, '933711', 9079, '0.0000'),
(14080, '360798', 9080, '0.0000'),
(14081, '279424', 9081, '0.0000'),
(14082, '397158', 9082, '0.0000'),
(14083, '684582', 9083, '0.0000'),
(14084, '84676', 9084, '0.0000'),
(14085, '275747', 9085, '0.0000'),
(14086, '916186', 9086, '0.0000'),
(14087, '897083', 9087, '0.0000'),
(14088, '813865', 9088, '0.0000'),
(14089, '330883', 9089, '0.0000'),
(14090, '424651', 9090, '0.0000'),
(14091, '177212', 9091, '0.0000'),
(14092, '851277', 9092, '0.0000'),
(14093, '407870', 9093, '0.0000'),
(14094, '808294', 9094, '0.0000'),
(14095, '736226', 9095, '0.0000'),
(14096, '192980', 9096, '0.0000'),
(14097, '856246', 9097, '0.0000'),
(14098, '969850', 9098, '0.0000'),
(14099, '492102', 9099, '0.0000');

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
(11000, 'Felis Incorporated', 0, 'Sed nec', '(824) 295-0846', '(836) 232-7963', 1, 'Donec.egestas.Aliquam@tellus.ca'),
(11001, 'Nec Incorporated', 0, 'egestas.', '(955) 999-9305', '(639) 620-9891', 2, 'auctor.velit.eget@utsem.com'),
(11004, 'Ante Dictum Cursus Corporation', 0, 'ipsum. Suspendisse', '(315) 772-5696', '(831) 579-4465', 5, 'Nullam@laciniaorci.net'),
(11005, 'Sed LLC', 0, 'Sed', '(514) 400-9618', '(706) 656-8873', 6, 'euismod.in.dolor@risusvariusorci.com'),
(11006, 'Lorem Lorem LLP', 0, 'Quisque', '(431) 459-9197', '(271) 921-5157', 7, 'nunc.ullamcorper@tellusNunclectus.net'),
(11007, 'Maecenas PC', 0, 'nec ligula', '(177) 358-9033', '(395) 233-3217', 8, 'id.mollis@Maecenasmalesuada.org'),
(11008, 'Sed Inc.', 0, 'nibh.', '(466) 666-7070', '(615) 531-7553', 9, 'risus@lacus.co.uk'),
(11009, 'Torquent Company', 0, 'ipsum cursus', '(167) 855-5686', '(135) 670-4140', 10, 'iaculis.lacus@arcuVestibulumut.ca'),
(11010, 'Sed Eu Corp.', 0, 'nec', '(285) 306-4702', '(879) 237-3728', 11, 'Donec@dolor.org'),
(11011, 'Magnis Corp.', 0, 'mauris', '(553) 125-3418', '(992) 248-7166', 12, 'id.risus.quis@neque.org'),
(11012, 'Aliquam LLP', 0, 'aptent taciti', '(137) 523-5524', '(481) 324-8943', 13, 'neque.tellus@natoque.edu'),
(11013, 'Id Institute', 0, 'mauris', '(903) 347-4903', '(809) 379-6733', 14, 'dapibus.quam.quis@eleifend.co.uk'),
(11014, 'Blandit Congue Corp.', 0, 'mollis nec,', '(492) 416-0006', '(940) 320-6502', 15, 'fermentum.arcu@Sednunc.co.uk'),
(11015, 'Est Mollis LLC', 0, 'mus.', '(543) 106-6964', '(219) 288-8687', 16, 'natoque.penatibus@malesuada.org'),
(11016, 'Purus Maecenas Foundation', 0, 'sodales', '(814) 729-8760', '(848) 619-8325', 17, 'sagittis.placerat@consequat.co.uk'),
(11017, 'Lacus Mauris Non Institute', 0, 'Duis a', '(552) 368-9260', '(312) 225-7938', 18, 'amet.luctus@sociis.co.uk'),
(11018, 'Cum Sociis Corporation', 0, 'mollis. Duis', '(766) 583-2337', '(173) 915-7978', 19, 'commodo.at.libero@auctorquis.co.uk'),
(11019, 'Quis Diam Consulting', 0, 'convallis convallis', '(281) 771-6674', '(152) 456-1892', 20, 'Vestibulum.ante.ipsum@iaculisodio.com'),
(11020, 'Lorem Incorporated', 0, 'Duis', '(377) 663-7109', '(707) 704-0006', 21, 'aliquam.enim@duiFuscealiquam.co.uk'),
(11021, 'Suspendisse Commodo Tincidunt Consulting', 0, 'enim,', '(371) 693-8742', '(216) 555-5927', 22, 'laoreet.libero@loremsit.edu'),
(11022, 'Elit Consulting', 0, 'lobortis quis,', '(646) 453-7012', '(138) 919-2376', 23, 'et@magnisdis.ca'),
(11023, 'Sapien Cras Inc.', 0, 'fringilla ornare', '(749) 351-2875', '(710) 305-6622', 24, 'dui.Suspendisse@augueeutellus.org'),
(11024, 'Euismod Enim Incorporated', 0, 'orci.', '(976) 563-8303', '(715) 700-7028', 25, 'diam@tincidunt.org'),
(11025, 'Dictum Ultricies Ligula Ltd', 0, 'mollis dui,', '(293) 150-2635', '(937) 616-4762', 26, 'ac.mi@hendreritaarcu.net'),
(11026, 'Felis Ullamcorper Associates', 0, 'scelerisque neque.', '(291) 882-2709', '(233) 365-0047', 27, 'lorem.vehicula@sapien.ca'),
(11027, 'Felis Purus Institute', 0, 'interdum', '(521) 653-2929', '(947) 733-3287', 28, 'laoreet@orciUtsemper.ca'),
(11028, 'Elementum Lorem Ut LLP', 0, 'Fusce dolor', '(102) 786-4623', '(451) 607-4086', 29, 'ridiculus@tellussem.org'),
(11029, 'Scelerisque Mollis Phasellus Consulting', 0, 'lobortis quam', '(635) 325-3518', '(848) 878-0732', 30, 'ante.dictum.cursus@Aliquam.co.uk'),
(11030, 'Elit LLP', 0, 'diam', '(886) 345-7681', '(560) 677-0347', 31, 'ante@nunc.org'),
(11031, 'Augue Sed Molestie Inc.', 0, 'neque', '(313) 872-9080', '(353) 985-8545', 32, 'convallis.dolor.Quisque@ipsumnuncid.com'),
(11032, 'Rutrum LLP', 0, 'ante lectus', '(671) 634-0949', '(547) 700-5243', 33, 'quam@interdumenimnon.co.uk'),
(11033, 'Commodo Institute', 0, 'ac', '(989) 906-6042', '(622) 797-8135', 34, 'adipiscing@nibh.edu'),
(11034, 'Curae; PC', 0, 'mus.', '(768) 843-0706', '(992) 239-0735', 35, 'ac.feugiat@mollisPhasellus.org'),
(11035, 'Ipsum Primis In Company', 0, 'urna et', '(547) 252-1206', '(660) 794-4897', 36, 'lorem@volutpat.edu'),
(11036, 'Dolor Dolor Tempus Company', 0, 'Donec', '(179) 242-6605', '(753) 348-0992', 37, 'et@diamvel.ca'),
(11037, 'Fusce Corp.', 0, 'auctor quis,', '(331) 125-8578', '(548) 837-0429', 38, 'aliquam@atortorNunc.net'),
(11038, 'Ac Mattis Semper PC', 0, 'vel', '(327) 697-5863', '(626) 671-1576', 39, 'non.sollicitudin@malesuadaut.net'),
(11039, 'Vel Est Tempor Consulting', 0, 'urna', '(516) 812-0117', '(501) 369-9909', 40, 'est@Quisqueliberolacus.ca'),
(11040, 'Ac Mattis LLC', 0, 'Donec', '(448) 510-4945', '(864) 469-5281', 41, 'facilisis@cursusvestibulumMauris.co.uk'),
(11041, 'Arcu Vestibulum Ut Company', 0, 'sem semper', '(227) 998-9336', '(793) 498-2896', 42, 'magna@neque.ca'),
(11042, 'Est Ac Ltd', 0, 'risus. Quisque', '(504) 182-1528', '(974) 919-2384', 43, 'eu.dui@Proin.com'),
(11043, 'Tempor Arcu Vestibulum Limited', 0, 'ut', '(431) 782-0921', '(646) 869-9060', 44, 'dis@sedlibero.edu'),
(11044, 'Malesuada Institute', 0, 'nunc', '(798) 608-2758', '(523) 472-6678', 45, 'Phasellus.at@scelerisque.ca'),
(11045, 'Sed Hendrerit Corporation', 0, 'orci, adipiscing', '(789) 593-4923', '(854) 657-0685', 46, 'gravida.molestie.arcu@disparturientmontes.com'),
(11046, 'Nisi Sem Semper Limited', 0, 'eu', '(530) 947-3531', '(570) 621-7549', 47, 'eu.odio@facilisisvitae.ca'),
(11047, 'Odio Corporation', 0, 'nulla', '(200) 946-8804', '(517) 436-3743', 48, 'Aliquam.fringilla@Aliquamtincidunt.edu'),
(11048, 'Iaculis Quis Inc.', 0, 'enim,', '(167) 416-6695', '(745) 228-0959', 49, 'a.odio.semper@sit.ca'),
(11049, 'Arcu Vestibulum Inc.', 0, 'semper erat,', '(909) 267-3770', '(416) 714-8580', 50, 'a.nunc.In@rutrumeu.co.uk'),
(11050, 'Aliquet Institute', 0, 'augue ac', '(688) 799-7177', '(811) 956-2913', 51, 'malesuada@pede.org'),
(11051, 'Suspendisse Aliquet Molestie Company', 0, 'semper, dui', '(428) 912-2641', '(778) 942-3299', 52, 'tristique.aliquet@adipiscing.co.uk'),
(11052, 'Lectus Sit Incorporated', 0, 'cursus.', '(505) 268-0031', '(497) 116-3906', 53, 'sed.turpis.nec@Loremipsum.com'),
(11053, 'Elit A LLP', 0, 'sem ut', '(121) 851-9885', '(821) 859-1030', 54, 'commodo.hendrerit@tincidunt.com'),
(11054, 'Ut Quam Corp.', 0, 'auctor odio', '(795) 240-5229', '(526) 412-5296', 55, 'Phasellus.elit.pede@duinec.ca'),
(11055, 'Leo Elementum Limited', 0, 'a, auctor', '(322) 716-0631', '(341) 931-3887', 56, 'ornare@lectusquismassa.edu'),
(11056, 'Mauris Nulla Integer Limited', 0, 'purus gravida', '(745) 145-6007', '(765) 744-1723', 57, 'quam.quis@idmagnaet.com'),
(11057, 'Sed Est PC', 0, 'ridiculus', '(936) 938-0190', '(769) 235-2893', 58, 'parturient.montes@Nullaeuneque.org'),
(11058, 'Imperdiet Associates', 0, 'purus. Maecenas', '(149) 859-2778', '(801) 565-0608', 59, 'tellus.lorem@magnaet.org'),
(11059, 'Fermentum Institute', 0, 'justo nec', '(399) 537-9483', '(945) 419-7157', 60, 'in.consectetuer@mi.edu'),
(11060, 'Cursus Industries', 0, 'aliquam', '(810) 362-1209', '(361) 879-9289', 61, 'vitae.diam@duisemperet.ca'),
(11061, 'Elit Curabitur Sed LLP', 0, 'egestas', '(573) 679-4460', '(744) 334-6851', 62, 'nascetur@elit.net'),
(11062, 'Sit Amet LLC', 0, 'non, dapibus', '(756) 456-7817', '(734) 516-5933', 63, 'aliquam@sollicitudin.co.uk'),
(11063, 'Enim Sed Nulla Inc.', 0, 'vitae mauris', '(314) 587-5508', '(411) 453-3760', 64, 'elit.fermentum@vitaeodiosagittis.edu'),
(11064, 'Feugiat Nec Diam Ltd', 0, 'dui', '(129) 584-2893', '(776) 852-4466', 65, 'Aenean.sed.pede@viverra.edu'),
(11065, 'Sollicitudin Commodo Industries', 0, 'Suspendisse', '(702) 236-5419', '(951) 167-9756', 66, 'aliquet.molestie@euelit.edu'),
(11066, 'Tempus Non Lacinia Company', 0, 'diam', '(524) 334-2172', '(291) 713-2625', 67, 'et.euismod.et@sagittis.co.uk'),
(11067, 'Augue Consulting', 0, 'fermentum', '(833) 388-2792', '(586) 367-7235', 68, 'Donec@Vestibulumante.org'),
(11068, 'In At Industries', 0, 'Pellentesque ultricies', '(185) 391-8848', '(154) 576-4728', 69, 'Nunc.ullamcorper.velit@ridiculus.ca'),
(11069, 'Ac Turpis Industries', 0, 'adipiscing,', '(428) 760-7236', '(214) 426-2879', 70, 'Phasellus@nectempus.edu'),
(11070, 'Et Eros Proin Corp.', 0, 'purus', '(146) 832-2562', '(360) 456-5675', 71, 'urna@diamluctuslobortis.co.uk'),
(11071, 'Donec Egestas Aliquam Industries', 0, 'nec, eleifend', '(389) 189-3061', '(924) 316-5398', 72, 'nisl.sem@lobortis.org'),
(11072, 'Non Dui Nec Limited', 0, 'turpis nec', '(250) 805-0944', '(362) 745-0536', 73, 'egestas@felisorci.com'),
(11073, 'Nullam Feugiat Placerat Foundation', 0, 'mollis', '(117) 996-4155', '(697) 602-4582', 74, 'blandit.congue@Maurisutquam.com'),
(11074, 'Suspendisse Eleifend Associates', 0, 'diam at', '(723) 331-6445', '(202) 425-2287', 75, 'scelerisque.lorem@mieleifendegestas.co.uk'),
(11075, 'Dictum Foundation', 0, 'mauris sit', '(839) 963-3544', '(665) 649-3755', 76, 'vehicula@erat.net'),
(11076, 'Lacus Nulla Limited', 0, 'ante', '(484) 326-6056', '(724) 699-9199', 77, 'tempus@adipiscinglacusUt.org'),
(11077, 'Aliquet Diam Sed Foundation', 0, 'vitae sodales', '(480) 395-5170', '(171) 857-5762', 78, 'diam.Proin.dolor@mauris.org'),
(11078, 'Urna Et Arcu Incorporated', 0, 'Integer in', '(393) 696-5647', '(994) 809-9642', 79, 'Donec@pharetranibh.ca'),
(11079, 'Phasellus Dapibus Quam Associates', 0, 'Integer eu', '(223) 837-1295', '(526) 173-6714', 80, 'nisl@laciniaSedcongue.ca'),
(11080, 'A Scelerisque Company', 0, 'ante bibendum', '(866) 307-0070', '(132) 241-4984', 81, 'Suspendisse.aliquet@Loremipsumdolor.co.uk'),
(11081, 'Magna Limited', 0, 'In', '(146) 767-2594', '(459) 643-0269', 82, 'sollicitudin@tellusfaucibusleo.ca'),
(11082, 'Ac Ltd', 0, 'urna. Nullam', '(358) 478-1534', '(580) 522-2203', 83, 'blandit.congue@egetmetus.ca'),
(11083, 'Nec Malesuada LLC', 0, 'dui nec', '(436) 687-3733', '(972) 786-6140', 84, 'nunc.ac.mattis@velturpisAliquam.ca'),
(11084, 'Blandit Congue In Industries', 0, 'est arcu', '(209) 274-9914', '(678) 417-5501', 85, 'iaculis.enim@dolor.org'),
(11085, 'Sit Associates', 0, 'Aenean gravida', '(936) 597-9322', '(116) 887-8353', 86, 'Aliquam.adipiscing@musProin.net'),
(11086, 'Diam Inc.', 0, 'commodo', '(991) 161-7951', '(490) 263-6720', 87, 'et.rutrum@cursusinhendrerit.net'),
(11087, 'Sagittis Company', 0, 'eget', '(515) 919-7521', '(526) 967-6086', 88, 'posuere@consectetuer.co.uk'),
(11088, 'Ridiculus Mus Donec PC', 0, 'purus,', '(106) 513-7647', '(462) 391-2327', 89, 'iaculis.lacus.pede@nullamagnamalesuada.com'),
(11089, 'Est Associates', 0, 'enim. Curabitur', '(232) 736-8508', '(367) 574-6829', 90, 'est@dui.ca'),
(11090, 'Velit Cras Lorem Corp.', 0, 'Vestibulum ante', '(994) 732-6572', '(758) 200-8350', 91, 'ligula@consectetuer.ca'),
(11091, 'Ac Libero LLP', 0, 'semper,', '(603) 823-6716', '(276) 334-6872', 92, 'libero@urnaNullamlobortis.edu'),
(11092, 'Rhoncus Donec Est Corp.', 0, 'nec', '(372) 312-6033', '(343) 259-6988', 93, 'ultricies.dignissim.lacus@nonleoVivamus.ca'),
(11093, 'Quis Tristique Ac Institute', 0, 'orci.', '(798) 907-4387', '(739) 710-8572', 94, 'eu.euismod@arcuSed.co.uk'),
(11094, 'Tincidunt Nibh Corp.', 0, 'dolor.', '(703) 989-1979', '(686) 391-8276', 95, 'Cras.pellentesque.Sed@lorem.co.uk'),
(11095, 'Cubilia Curae; Ltd', 0, 'nibh vulputate', '(231) 526-0339', '(939) 617-1888', 96, 'bibendum.Donec.felis@gravida.co.uk'),
(11096, 'Auctor Vitae LLC', 0, 'rhoncus id,', '(373) 149-4843', '(915) 845-5598', 97, 'Curae@Donec.net'),
(11097, 'Malesuada Institute', 0, 'sed', '(857) 844-5477', '(402) 970-4050', 98, 'Phasellus.at@ornarefacilisis.com'),
(11098, 'Turpis Corp.', 0, 'bibendum', '(938) 606-3933', '(384) 251-6570', 99, 'egestas@telluseuaugue.edu'),
(11099, 'Mus Corp.', 0, 'felis purus', '(153) 293-7630', '(590) 585-3914', 100, 'egestas@diamluctuslobortis.org');

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
(3000, 11000, 55, '4.00'),
(3001, 11001, 13, '9.99'),
(3005, 11005, 77, '9.99'),
(3006, 11006, 76, '7.00'),
(3007, 11007, 10, '9.99'),
(3008, 11008, 80, '9.99'),
(3009, 11009, 79, '9.99'),
(3010, 11010, 99, '9.99'),
(3011, 11011, 91, '9.99'),
(3012, 11012, 77, '9.99'),
(3013, 11013, 68, '9.99'),
(3014, 11014, 12, '9.99'),
(3015, 11015, 66, '9.99'),
(3016, 11016, 2, '9.99'),
(3017, 11017, 16, '9.99'),
(3018, 11018, 88, '9.99'),
(3019, 11019, 71, '9.99'),
(3020, 11020, 33, '9.99'),
(3021, 11021, 59, '9.99'),
(3022, 11022, 84, '8.00'),
(3023, 11023, 75, '9.99'),
(3024, 11024, 98, '9.99'),
(3025, 11025, 76, '1.00'),
(3026, 11026, 24, '9.99'),
(3027, 11027, 56, '9.99'),
(3028, 11028, 6, '9.99'),
(3029, 11029, 54, '9.99'),
(3030, 11030, 76, '9.99'),
(3031, 11031, 58, '9.99'),
(3032, 11032, 76, '9.99'),
(3033, 11033, 38, '9.99'),
(3034, 11034, 13, '9.99'),
(3035, 11035, 57, '9.99'),
(3036, 11036, 51, '4.00'),
(3037, 11037, 46, '9.99'),
(3038, 11038, 42, '9.99'),
(3039, 11039, 70, '9.99'),
(3040, 11040, 91, '9.99'),
(3041, 11041, 89, '7.00'),
(3042, 11042, 23, '9.99'),
(3043, 11043, 58, '9.99'),
(3044, 11044, 68, '9.99'),
(3045, 11045, 63, '9.99'),
(3046, 11046, 35, '9.99'),
(3047, 11047, 56, '9.99'),
(3048, 11048, 89, '9.99'),
(3049, 11049, 8, '9.99'),
(3050, 11050, 53, '9.99'),
(3051, 11051, 94, '9.99'),
(3052, 11052, 6, '7.00'),
(3053, 11053, 95, '9.99'),
(3054, 11054, 45, '9.99'),
(3055, 11055, 96, '9.99'),
(3056, 11056, 29, '9.99'),
(3057, 11057, 27, '9.99'),
(3058, 11058, 93, '9.99'),
(3059, 11059, 21, '9.99'),
(3060, 11060, 65, '3.00'),
(3061, 11061, 75, '8.00'),
(3062, 11062, 9, '9.99'),
(3063, 11063, 27, '9.99'),
(3064, 11064, 98, '9.99'),
(3065, 11065, 70, '9.99'),
(3066, 11066, 3, '9.99'),
(3067, 11067, 39, '9.99'),
(3068, 11068, 63, '9.99'),
(3069, 11069, 82, '9.99'),
(3070, 11070, 96, '9.99'),
(3071, 11071, 4, '9.99'),
(3072, 11072, 80, '9.99'),
(3073, 11073, 3, '9.99'),
(3074, 11074, 72, '9.99'),
(3075, 11075, 57, '9.99'),
(3076, 11076, 99, '9.99'),
(3077, 11077, 94, '9.99'),
(3078, 11078, 63, '9.99'),
(3079, 11079, 93, '9.99'),
(3080, 11080, 91, '9.99'),
(3081, 11081, 49, '7.00'),
(3082, 11082, 55, '6.00'),
(3083, 11083, 63, '9.99'),
(3084, 11084, 42, '9.99'),
(3085, 11085, 55, '9.99'),
(3086, 11086, 15, '9.99'),
(3087, 11087, 70, '9.99'),
(3088, 11088, 80, '9.99'),
(3089, 11089, 38, '9.99'),
(3090, 11090, 85, '9.99'),
(3091, 11091, 78, '9.99'),
(3092, 11092, 5, '9.99'),
(3093, 11093, 75, '9.99'),
(3094, 11094, 37, '9.99'),
(3095, 11095, 71, '9.99'),
(3096, 11096, 86, '9.99'),
(3097, 11097, 68, '2.00'),
(3098, 11098, 16, '9.99'),
(3099, 11099, 75, '9.99');

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
(12004, 2004, 11004, '0000-00-00', '0.0000', '0.0000', '0.0000', '0.0000'),
(12005, 2005, 11005, '0000-00-00', '0.0000', '0.0000', '0.0000', '0.0000'),
(12006, 2006, 11006, '0000-00-00', '0.0000', '0.0000', '0.0000', '0.0000'),
(12007, 2007, 11007, '0000-00-00', '0.0000', '0.0000', '0.0000', '0.0000'),
(12008, 2008, 11008, '0000-00-00', '0.0000', '0.0000', '0.0000', '0.0000'),
(12009, 2009, 11009, '0000-00-00', '0.0000', '0.0000', '0.0000', '0.0000'),
(12010, 2010, 11010, '0000-00-00', '0.0000', '0.0000', '0.0000', '0.0000'),
(12011, 2011, 11011, '0000-00-00', '0.0000', '0.0000', '0.0000', '0.0000'),
(12012, 2012, 11012, '0000-00-00', '0.0000', '0.0000', '0.0000', '0.0000'),
(12013, 2013, 11013, '0000-00-00', '0.0000', '0.0000', '0.0000', '0.0000'),
(12014, 2014, 11014, '0000-00-00', '0.0000', '0.0000', '0.0000', '0.0000'),
(12015, 2015, 11015, '0000-00-00', '0.0000', '0.0000', '0.0000', '0.0000'),
(12016, 2016, 11016, '0000-00-00', '0.0000', '0.0000', '0.0000', '0.0000'),
(12017, 2017, 11017, '0000-00-00', '0.0000', '0.0000', '0.0000', '0.0000'),
(12018, 2018, 11018, '0000-00-00', '0.0000', '0.0000', '0.0000', '0.0000'),
(12019, 2019, 11019, '0000-00-00', '0.0000', '0.0000', '0.0000', '0.0000'),
(12020, 2020, 11020, '0000-00-00', '0.0000', '0.0000', '0.0000', '0.0000'),
(12021, 2021, 11021, '0000-00-00', '0.0000', '0.0000', '0.0000', '0.0000'),
(12022, 2022, 11022, '0000-00-00', '0.0000', '0.0000', '0.0000', '0.0000'),
(12023, 2023, 11023, '0000-00-00', '0.0000', '0.0000', '0.0000', '0.0000'),
(12024, 2024, 11024, '0000-00-00', '0.0000', '0.0000', '0.0000', '0.0000'),
(12025, 2025, 11025, '0000-00-00', '0.0000', '0.0000', '0.0000', '0.0000'),
(12026, 2026, 11026, '0000-00-00', '0.0000', '0.0000', '0.0000', '0.0000'),
(12027, 2027, 11027, '0000-00-00', '0.0000', '0.0000', '0.0000', '0.0000'),
(12028, 2028, 11028, '0000-00-00', '0.0000', '0.0000', '0.0000', '0.0000'),
(12029, 2029, 11029, '0000-00-00', '0.0000', '0.0000', '0.0000', '0.0000'),
(12030, 2030, 11030, '0000-00-00', '0.0000', '0.0000', '0.0000', '0.0000'),
(12031, 2031, 11031, '0000-00-00', '0.0000', '0.0000', '0.0000', '0.0000'),
(12032, 2032, 11032, '0000-00-00', '0.0000', '0.0000', '0.0000', '0.0000'),
(12033, 2033, 11033, '0000-00-00', '0.0000', '0.0000', '0.0000', '0.0000'),
(12034, 2034, 11034, '0000-00-00', '0.0000', '0.0000', '0.0000', '0.0000'),
(12035, 2035, 11035, '0000-00-00', '0.0000', '0.0000', '0.0000', '0.0000'),
(12036, 2036, 11036, '0000-00-00', '0.0000', '0.0000', '0.0000', '0.0000'),
(12037, 2037, 11037, '0000-00-00', '0.0000', '0.0000', '0.0000', '0.0000'),
(12038, 2038, 11038, '0000-00-00', '0.0000', '0.0000', '0.0000', '0.0000'),
(12039, 2039, 11039, '0000-00-00', '0.0000', '0.0000', '0.0000', '0.0000'),
(12040, 2040, 11040, '0000-00-00', '0.0000', '0.0000', '0.0000', '0.0000'),
(12041, 2041, 11041, '0000-00-00', '0.0000', '0.0000', '0.0000', '0.0000'),
(12042, 2042, 11042, '0000-00-00', '0.0000', '0.0000', '0.0000', '0.0000'),
(12043, 2043, 11043, '0000-00-00', '0.0000', '0.0000', '0.0000', '0.0000'),
(12044, 2044, 11044, '0000-00-00', '0.0000', '0.0000', '0.0000', '0.0000'),
(12045, 2045, 11045, '0000-00-00', '0.0000', '0.0000', '0.0000', '0.0000'),
(12046, 2046, 11046, '0000-00-00', '0.0000', '0.0000', '0.0000', '0.0000'),
(12047, 2047, 11047, '0000-00-00', '0.0000', '0.0000', '0.0000', '0.0000'),
(12048, 2048, 11048, '0000-00-00', '0.0000', '0.0000', '0.0000', '0.0000'),
(12049, 2049, 11049, '0000-00-00', '0.0000', '0.0000', '0.0000', '0.0000'),
(12050, 2050, 11050, '0000-00-00', '0.0000', '0.0000', '0.0000', '0.0000'),
(12051, 2051, 11051, '0000-00-00', '0.0000', '0.0000', '0.0000', '0.0000'),
(12052, 2052, 11052, '0000-00-00', '0.0000', '0.0000', '0.0000', '0.0000'),
(12053, 2053, 11053, '0000-00-00', '0.0000', '0.0000', '0.0000', '0.0000'),
(12054, 2054, 11054, '0000-00-00', '0.0000', '0.0000', '0.0000', '0.0000'),
(12055, 2055, 11055, '0000-00-00', '0.0000', '0.0000', '0.0000', '0.0000'),
(12056, 2056, 11056, '0000-00-00', '0.0000', '0.0000', '0.0000', '0.0000'),
(12057, 2057, 11057, '0000-00-00', '0.0000', '0.0000', '0.0000', '0.0000'),
(12058, 2058, 11058, '0000-00-00', '0.0000', '0.0000', '0.0000', '0.0000'),
(12059, 2059, 11059, '0000-00-00', '0.0000', '0.0000', '0.0000', '0.0000'),
(12060, 2060, 11060, '0000-00-00', '0.0000', '0.0000', '0.0000', '0.0000'),
(12061, 2061, 11061, '0000-00-00', '0.0000', '0.0000', '0.0000', '0.0000'),
(12062, 2062, 11062, '0000-00-00', '0.0000', '0.0000', '0.0000', '0.0000'),
(12063, 2063, 11063, '0000-00-00', '0.0000', '0.0000', '0.0000', '0.0000'),
(12064, 2064, 11064, '0000-00-00', '0.0000', '0.0000', '0.0000', '0.0000'),
(12065, 2065, 11065, '0000-00-00', '0.0000', '0.0000', '0.0000', '0.0000'),
(12066, 2066, 11066, '0000-00-00', '0.0000', '0.0000', '0.0000', '0.0000'),
(12067, 2067, 11067, '0000-00-00', '0.0000', '0.0000', '0.0000', '0.0000'),
(12068, 2068, 11068, '0000-00-00', '0.0000', '0.0000', '0.0000', '0.0000'),
(12069, 2069, 11069, '0000-00-00', '0.0000', '0.0000', '0.0000', '0.0000'),
(12070, 2070, 11070, '0000-00-00', '0.0000', '0.0000', '0.0000', '0.0000'),
(12071, 2071, 11071, '0000-00-00', '0.0000', '0.0000', '0.0000', '0.0000'),
(12072, 2072, 11072, '0000-00-00', '0.0000', '0.0000', '0.0000', '0.0000'),
(12073, 2073, 11073, '0000-00-00', '0.0000', '0.0000', '0.0000', '0.0000'),
(12074, 2074, 11074, '0000-00-00', '0.0000', '0.0000', '0.0000', '0.0000'),
(12075, 2075, 11075, '0000-00-00', '0.0000', '0.0000', '0.0000', '0.0000'),
(12076, 2076, 11076, '0000-00-00', '0.0000', '0.0000', '0.0000', '0.0000'),
(12077, 2077, 11077, '0000-00-00', '0.0000', '0.0000', '0.0000', '0.0000'),
(12078, 2078, 11078, '0000-00-00', '0.0000', '0.0000', '0.0000', '0.0000'),
(12079, 2079, 11079, '0000-00-00', '0.0000', '0.0000', '0.0000', '0.0000'),
(12080, 2080, 11080, '0000-00-00', '0.0000', '0.0000', '0.0000', '0.0000'),
(12081, 2081, 11081, '0000-00-00', '0.0000', '0.0000', '0.0000', '0.0000'),
(12082, 2082, 11082, '0000-00-00', '0.0000', '0.0000', '0.0000', '0.0000'),
(12083, 2083, 11083, '0000-00-00', '0.0000', '0.0000', '0.0000', '0.0000'),
(12084, 2084, 11084, '0000-00-00', '0.0000', '0.0000', '0.0000', '0.0000'),
(12085, 2085, 11085, '0000-00-00', '0.0000', '0.0000', '0.0000', '0.0000'),
(12086, 2086, 11086, '0000-00-00', '0.0000', '0.0000', '0.0000', '0.0000'),
(12087, 2087, 11087, '0000-00-00', '0.0000', '0.0000', '0.0000', '0.0000'),
(12088, 2088, 11088, '0000-00-00', '0.0000', '0.0000', '0.0000', '0.0000'),
(12089, 2089, 11089, '0000-00-00', '0.0000', '0.0000', '0.0000', '0.0000'),
(12090, 2090, 11090, '0000-00-00', '0.0000', '0.0000', '0.0000', '0.0000'),
(12091, 2091, 11091, '0000-00-00', '0.0000', '0.0000', '0.0000', '0.0000'),
(12092, 2092, 11092, '0000-00-00', '0.0000', '0.0000', '0.0000', '0.0000'),
(12093, 2093, 11093, '0000-00-00', '0.0000', '0.0000', '0.0000', '0.0000'),
(12094, 2094, 11094, '0000-00-00', '0.0000', '0.0000', '0.0000', '0.0000'),
(12095, 2095, 11095, '0000-00-00', '0.0000', '0.0000', '0.0000', '0.0000'),
(12096, 2096, 11096, '0000-00-00', '0.0000', '0.0000', '0.0000', '0.0000'),
(12097, 2097, 11097, '0000-00-00', '0.0000', '0.0000', '0.0000', '0.0000'),
(12098, 2098, 11098, '0000-00-00', '0.0000', '0.0000', '0.0000', '0.0000'),
(12099, 2099, 11099, '0000-00-00', '0.0000', '0.0000', '0.0000', '0.0000');

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
(2000, 'VTM19RNZ7YD', 1),
(2001, 'UUD87NNR1EW', 1),
(2002, 'CBJ54TVM1UH', 1),
(2003, 'BYX57OFC6ZX', 2),
(2004, 'KKF95FJA4CF', 1),
(2005, 'IAH85UIK9JC', 1),
(2006, 'MUG74EWX9ZZ', 1),
(2007, 'BPW84LOR2QI', 2),
(2008, 'LJI27JLJ7HQ', 1),
(2009, 'SSH61ODQ6JL', 1),
(2010, 'IUA15XUS4BR', 1),
(2011, 'JEG64OXN7JM', 1),
(2012, 'MNR67AUE9MW', 1),
(2013, 'CIM98WPU9EK', 2),
(2014, 'EDD77FGB8TA', 2),
(2015, 'TRG81YZQ1OJ', 2),
(2016, 'BMX40QAT5OM', 2),
(2017, 'MOL67ZXC7CE', 2),
(2018, 'ACT55LBR2TR', 2),
(2019, 'OPJ52YPL2JH', 2),
(2020, 'LGZ98JXQ0JO', 1),
(2021, 'YEJ39YPH3OX', 1),
(2022, 'OTH39APV6GF', 1),
(2023, 'SQO23KPP7LE', 2),
(2024, 'XIF91ITE6JL', 2),
(2025, 'HLW74MAX9QR', 1),
(2026, 'NVM46NXB1XU', 2),
(2027, 'FLF04XSI8UD', 2),
(2028, 'RYJ00TSZ8VP', 2),
(2029, 'BYV77CWV8MX', 2),
(2030, 'LHR10ZDV3YM', 1),
(2031, 'WAJ90EKV9VP', 2),
(2032, 'KPJ41JMV5JK', 1),
(2033, 'OFQ41TIQ3RS', 1),
(2034, 'AJO86CFE3ID', 2),
(2035, 'ETN42ELL8RV', 1),
(2036, 'BOR47OFF5EW', 1),
(2037, 'PDI68AMQ9KP', 1),
(2038, 'WPH65UTL1BS', 1),
(2039, 'MPJ00IFF1DI', 2),
(2040, 'MCK45ECD3II', 1),
(2041, 'AVY67RRB6JS', 1),
(2042, 'WSQ22WGR3QN', 1),
(2043, 'FST86VOW5RE', 2),
(2044, 'FGR83TXK0TZ', 2),
(2045, 'LFL27VWK4TY', 2),
(2046, 'TLJ77AIH1NL', 2),
(2047, 'VTG41GTF0OD', 1),
(2048, 'IGE91JTX2OG', 1),
(2049, 'QUG75UEA9HU', 2),
(2050, 'HPO15RKE8WF', 1),
(2051, 'UFJ51BBV2ZQ', 1),
(2052, 'RWX50VVQ8IO', 1),
(2053, 'VDN46EMF8WK', 1),
(2054, 'OWB37MAP6CI', 2),
(2055, 'ZTP17PND3LI', 2),
(2056, 'UGK02CKQ2WQ', 2),
(2057, 'XRH11USB1CP', 1),
(2058, 'UIO94NDX0NC', 2),
(2059, 'UUO72OGT6GG', 1),
(2060, 'NQZ89DRZ8WM', 1),
(2061, 'DWH14QFF7CP', 2),
(2062, 'YEJ96CQR4MH', 2),
(2063, 'YUT45RAD4YV', 2),
(2064, 'IET09PAY9JF', 1),
(2065, 'DCH72OKB0MO', 2),
(2066, 'JSJ05JPQ1FL', 2),
(2067, 'URR90IFU5YL', 1),
(2068, 'YFL19AQL9ON', 1),
(2069, 'NVV90XAA6AM', 2),
(2070, 'CJY33ATL9WX', 2),
(2071, 'JHT54KDV5WG', 2),
(2072, 'CUM14FLO9BU', 1),
(2073, 'EBB36FFM3QF', 1),
(2074, 'NOB57XHP0LF', 2),
(2075, 'SLZ76DJE0HP', 2),
(2076, 'LTB75SDX8CF', 2),
(2077, 'LIP69NXI0DE', 2),
(2078, 'CCE93RYK6BR', 1),
(2079, 'DNO15LYJ5FM', 1),
(2080, 'URG36LTY5YZ', 1),
(2081, 'XAP01TFJ2BT', 2),
(2082, 'PWS79AAS8BJ', 2),
(2083, 'OXJ43JOW6QL', 1),
(2084, 'XRY30FUJ1TB', 1),
(2085, 'OZE92FSY2YC', 1),
(2086, 'JEI59SOD4QD', 1),
(2087, 'DVV65KZH7WI', 2),
(2088, 'RIR53KXA6LV', 1),
(2089, 'VBM27TUP6TH', 2),
(2090, 'RTY48GRV0HY', 1),
(2091, 'SXI28XZL6IX', 2),
(2092, 'YMZ46LMG6YT', 2),
(2093, 'ULT80CVB7BL', 2),
(2094, 'MZB12RTT0AW', 1),
(2095, 'KFW54JSN6WP', 2),
(2096, 'FQB07EZR3WV', 2),
(2097, 'IZD55KAS9GZ', 1),
(2098, 'BTI30OXA7UI', 1),
(2099, 'IDR91LJC2ES', 2);

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
