-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 26, 2016 at 12:13 AM
-- Server version: 10.1.10-MariaDB
-- PHP Version: 5.6.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `4750`
--

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE `address` (
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

CREATE TABLE `craft` (
  `craft_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `craft_materials`
--

CREATE TABLE `craft_materials` (
  `material_id` int(11) NOT NULL,
  `craft_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(11) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `phone_number` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `address_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `custom_order`
--

CREATE TABLE `custom_order` (
  `custom_order_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `price_estimation` decimal(19,4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
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

CREATE TABLE `gift_order` (
  `gift_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `rec_last_name` varchar(50) NOT NULL,
  `rec_first_name` varchar(50) NOT NULL,
  `address_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `gift_shipping`
--

CREATE TABLE `gift_shipping` (
  `ship_id` int(11) NOT NULL,
  `address_id` int(11) NOT NULL,
  `gift_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `item_id` int(11) NOT NULL,
  `qoh` decimal(10,4) NOT NULL,
  `calculated_qoh` decimal(10,4) NOT NULL,
  `name` varchar(50) NOT NULL,
  `original_price` decimal(19,4) NOT NULL,
  `current_price` decimal(19,4) NOT NULL,
  `min_price` decimal(19,4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `local_vendors`
--

CREATE TABLE `local_vendors` (
  `vendor_id` int(11) NOT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `vendor_name` varchar(50) DEFAULT NULL,
  `phone_number` varchar(20) DEFAULT NULL,
  `address_id` int(11) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `material`
--

CREATE TABLE `material` (
  `material_id` int(11) NOT NULL,
  `supplier_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `unit_price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `employee_id` int(11) NOT NULL,
  `order_date` date NOT NULL,
  `subtotal` decimal(19,4) NOT NULL,
  `tax_amount` decimal(19,4) NOT NULL,
  `total_price` decimal(19,4) NOT NULL,
  `order_type` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `order_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `item_price` decimal(19,4) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `order_materials`
--

CREATE TABLE `order_materials` (
  `material_id` int(11) NOT NULL,
  `supplier_order_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `discount_amount` decimal(19,4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `returns_inventory`
--

CREATE TABLE `returns_inventory` (
  `return_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `return_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `return_details`
--

CREATE TABLE `return_details` (
  `return_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ship_cost`
--

CREATE TABLE `ship_cost` (
  `ship_cost_id` int(11) NOT NULL,
  `ship_distance` varchar(25) NOT NULL,
  `ship_id` int(11) NOT NULL,
  `shipping_cost` decimal(19,4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `supplier_id` int(11) NOT NULL,
  `company_name` varchar(50) NOT NULL,
  `contact_name` int(11) NOT NULL,
  `contact_job_title` varchar(50) DEFAULT NULL,
  `company_phone` varchar(20) NOT NULL,
  `contact_phone` varchar(20) NOT NULL,
  `address_id` int(11) NOT NULL,
  `email` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `supplier_discount`
--

CREATE TABLE `supplier_discount` (
  `material_id` int(11) NOT NULL,
  `supplier_id` int(11) NOT NULL,
  `min_qty` int(11) NOT NULL,
  `discount_percent` decimal(3,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `supplier_order`
--

CREATE TABLE `supplier_order` (
  `supplier_order_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `supplier_id` int(11) NOT NULL,
  `order_date` date NOT NULL,
  `subtotal` decimal(19,4) NOT NULL,
  `tax_amount` decimal(19,4) NOT NULL,
  `total_discount` decimal(19,4) NOT NULL,
  `total_price` decimal(19,4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
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
  ADD PRIMARY KEY (`craft_id`),
  ADD KEY `Craft_Item` (`item_id`);

--
-- Indexes for table `craft_materials`
--
ALTER TABLE `craft_materials`
  ADD PRIMARY KEY (`material_id`,`craft_id`),
  ADD KEY `Craft_materials_Craft` (`craft_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`),
  ADD KEY `Customer_Address` (`address_id`);

--
-- Indexes for table `custom_order`
--
ALTER TABLE `custom_order`
  ADD PRIMARY KEY (`custom_order_id`),
  ADD KEY `Custom_Order_Order` (`order_id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`employee_id`),
  ADD KEY `Employee_Address` (`address_id`);

--
-- Indexes for table `gift_order`
--
ALTER TABLE `gift_order`
  ADD PRIMARY KEY (`gift_id`),
  ADD KEY `Gift_Order_Address` (`address_id`),
  ADD KEY `Gift_Order_Order` (`order_id`);

--
-- Indexes for table `gift_shipping`
--
ALTER TABLE `gift_shipping`
  ADD PRIMARY KEY (`ship_id`),
  ADD KEY `Gift_Shipping_Address` (`address_id`),
  ADD KEY `Gift_Shipping_Gift_Order` (`gift_id`);

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`item_id`);

--
-- Indexes for table `local_vendors`
--
ALTER TABLE `local_vendors`
  ADD PRIMARY KEY (`vendor_id`),
  ADD KEY `Local_vendors_Address` (`address_id`);

--
-- Indexes for table `material`
--
ALTER TABLE `material`
  ADD PRIMARY KEY (`material_id`),
  ADD KEY `Material_Item` (`item_id`),
  ADD KEY `Material_Supplier` (`supplier_id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `Order_Employee` (`employee_id`),
  ADD KEY `client_order` (`customer_id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`order_id`,`item_id`),
  ADD KEY `Order_Details_Item` (`item_id`);

--
-- Indexes for table `order_materials`
--
ALTER TABLE `order_materials`
  ADD PRIMARY KEY (`material_id`,`supplier_order_id`),
  ADD KEY `Order_Materials_Supplier_Order` (`supplier_order_id`);

--
-- Indexes for table `returns_inventory`
--
ALTER TABLE `returns_inventory`
  ADD PRIMARY KEY (`return_id`),
  ADD KEY `Returns_Inventory_Order` (`order_id`);

--
-- Indexes for table `return_details`
--
ALTER TABLE `return_details`
  ADD PRIMARY KEY (`return_id`,`item_id`),
  ADD KEY `return_details_Item` (`item_id`);

--
-- Indexes for table `ship_cost`
--
ALTER TABLE `ship_cost`
  ADD PRIMARY KEY (`ship_cost_id`),
  ADD KEY `Ship_Cost_Gift_Shipping` (`ship_id`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`supplier_id`),
  ADD KEY `Supplier_Address` (`address_id`);

--
-- Indexes for table `supplier_discount`
--
ALTER TABLE `supplier_discount`
  ADD PRIMARY KEY (`material_id`,`supplier_id`),
  ADD KEY `Discount_Supplier` (`supplier_id`);

--
-- Indexes for table `supplier_order`
--
ALTER TABLE `supplier_order`
  ADD PRIMARY KEY (`supplier_order_id`),
  ADD KEY `Supplier_Order_Employee` (`employee_id`),
  ADD KEY `Supplier_Order_Supplier` (`supplier_id`);

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
