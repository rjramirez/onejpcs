-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 05, 2013 at 04:29 PM
-- Server version: 5.5.27
-- PHP Version: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `db_onejpcs`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_certificates`
--

CREATE TABLE IF NOT EXISTS `tb_certificates` (
  `cid` varchar(20) NOT NULL,
  `mid` int(11) NOT NULL,
  `eid` varchar(20) NOT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_events`
--

CREATE TABLE IF NOT EXISTS `tb_events` (
  `eid` varchar(8) NOT NULL,
  `type` varchar(50) NOT NULL,
  `name` varchar(255) NOT NULL,
  `time` varchar(17) NOT NULL,
  `fromDate` date NOT NULL,
  `toDate` date NOT NULL,
  `place` varchar(255) NOT NULL,
  PRIMARY KEY (`eid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_events`
--

INSERT INTO `tb_events` (`eid`, `type`, `name`, `time`, `fromDate`, `toDate`, `place`) VALUES
('E2012-01', 'Roadshow', 'ICT Roadshow 2012', '9:00AM - 5:00PM', '2012-08-14', '2012-08-16', 'FEU-EAC Technology Building'),
('E2012-02', 'Competition', 'ITE Cup 3', '9:00AM - 5:00PM', '2012-10-23', '2012-10-23', 'FEU-EAC Technology Building'),
('E2012-03', 'Assembly', 'JPCS Gathering 2012', '1:00PM - 5:00PM', '2013-03-14', '2013-03-16', 'FEU-EAC Technology Building'),
('E2012-04', 'Seminar', 'PHP Roadshow 2013', '1:00PM - 5:00PM', '2013-03-23', '2013-03-23', 'FEU-EAC Technology Building');

-- --------------------------------------------------------

--
-- Table structure for table `tb_gallery`
--

CREATE TABLE IF NOT EXISTS `tb_gallery` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `img_name` varchar(255) NOT NULL,
  `caption` varchar(100) NOT NULL,
  `album` varchar(40) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `tb_gallery`
--

INSERT INTO `tb_gallery` (`id`, `img_name`, `caption`, `album`) VALUES
(1, 'roadshow2012_1.jpg', 'Wala', 'Roadshow 2012'),
(2, 'roadshow2012_2.jpg', 'Wala po', 'Roadshow 2012'),
(3, 'roadshow2012_1.jpg', 'AWKO', 'Roadshow 2012');

-- --------------------------------------------------------

--
-- Table structure for table `tb_members`
--

CREATE TABLE IF NOT EXISTS `tb_members` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Email` varchar(255) NOT NULL,
  `Password` varchar(128) NOT NULL,
  `StudentNo` int(11) NOT NULL,
  `FirstName` varchar(255) NOT NULL,
  `LastName` varchar(255) NOT NULL,
  `MiddleName` varchar(255) NOT NULL,
  `Course` varchar(50) NOT NULL,
  `Gender` varchar(1) NOT NULL,
  `ContactNo` varchar(11) NOT NULL,
  `YearOfMembership` varchar(30) NOT NULL,
  `Role` varchar(10) NOT NULL,
  `Status` varchar(8) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=278 ;

--
-- Dumping data for table `tb_members`
--

INSERT INTO `tb_members` (`Id`, `Email`, `Password`, `StudentNo`, `FirstName`, `LastName`, `MiddleName`, `Course`, `Gender`, `ContactNo`, `YearOfMembership`, `Role`, `Status`) VALUES
(1, 'mdeguzman92@gmail.com', 'aa66a4a235ea203474ce4290b2deaf7732d75fd8', 200910969, 'Mark John', 'De Guzman', '', 'CS-SE', 'M', '0', 'N-2013', 'Member', 'Disabled'),
(3, 'nyxzehumanoid@gmail.com', 'c4b33a5782bc14a57e5dda2f6e0f36e695a55d6c', 201210657, 'Nicole', 'De Guzman', 'Serafica', 'CS-SE', 'F', '', 'N-2013', 'Member', 'Disabled'),
(4, 'francis_trinos@yahoo.com', '152a470d81914b5bb60b83c099af41860f2b865d', 201310500, 'Francis Benedict', 'Trinos', 'Querubin', 'CS-SE', 'M', '', 'N-2013', 'Member', 'Disabled'),
(5, 'ianpaolotalagon@gmail.com', 'd0c1b1da8aea10a0c178e19448313b45d7298716', 201210039, 'Christian Paolo', 'Talagon', 'Tanchoco', 'CS-SE', 'M', '', 'N-2013', 'Member', 'Disabled'),
(6, 'kcho_kulet@yahoo.com', '9e7df39f1cb385b7bfecc88b130ee67f3fe7f80b', 201110015, 'Keilani Caresse', 'Ho', 'Orquia', 'CS-SE', 'F', '', 'N-2013', 'Member', 'Disabled'),
(7, 'trixie18_mikki@yahoo.com', 'b19d4870dcb9b90eddb93da41690224d3bc4bca2', 201030060, 'Mikki Lester', 'Paragas', 'Tapay', 'IT-DA', 'F', '', 'N-2013', 'Member', 'Disabled'),
(8, 'sorafan23@gmail.com', 'f697f0c1befcc4373461e54d20342bedd1dd4e5f', 201010557, 'Sean Martin Philip', 'Serrano', 'Ng', 'IT-DA', 'M', '', 'N-2013', 'Member', 'Disabled'),
(9, 'njcarlo@gmail.com', 'e5e9fa1ba31ecd1ae84f75caaa474f3a663f05f4', 201310405, 'John Carlo', 'Navarro', 'Isip', 'CS-SE', 'M', '', 'N-2013', 'Member', 'Disabled'),
(10, 'csrdiaz@ymail.com', 'dd2edb87ea9eb7a32fd4057276d3a1fab861c1d5', 201011683, 'Carlo Stefano', 'Diaz', 'Rubio', 'CS-GDD', 'M', '', 'L-2013', 'Member', 'Disabled'),
(11, 'joshuamichalmundo@gmail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', 201310465, 'Joshua Micahal', 'Mundo', 'Cabrera', 'CS-SE', 'M', '', 'N-2013', 'Member', 'Disabled'),
(12, 'christinejane_jimenez@yahoo.com', '54014af6b7e97902c4130c355485920726628678', 201210599, 'Christine Jane', 'Jimenez', 'Espinocilla', 'IT-DA', 'F', '', 'N-2013', 'Member', 'Disabled'),
(13, 'llyodbranz@yahoo.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', 201311603, 'Llyod Aldrin', 'Branzuela', 'Marquz', 'CS-SE', 'M', '', 'N-2013', 'Member', 'Disabled'),
(14, 'ralph_angelo26@yahoo.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', 201312231, 'Ralph Angelo', 'Buan', 'Arendon', 'CS-SE', 'M', '', 'N-2013', 'Member', 'Disabled'),
(15, 'gallanoezikiel@yahoo.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', 201310688, 'Ezikiel Edison', 'Gallano', 'Meneses', 'CS-SE', 'M', '', 'N-2013', 'Member', 'Disabled'),
(16, 'may_esteron@yahoo.com.ph', '7c4a8d09ca3762af61e59520943dc26494f8941b', 201310768, 'Jessie Mae', 'Esteron', 'Formentera', 'CS-SE', 'F', '', 'N-2013', 'Member', 'Disabled'),
(17, 'kopipesuto@gmail.com', '6ad406706d5cb7db9a96bb8a5a5246df132819f4', 201310925, 'Aerylle Chriz', 'Doctora', 'Bajar', 'CS-SE', 'F', '0', 'N-2013', 'Member', 'Disabled'),
(18, 'pamcorrine19@yahoo.com', 'f1f21f3b0e6ea0b253ce3f0097f4bc1bab001073', 201310073, 'Pamela Corinne', 'Fontelera', 'Tolentino', 'CS-SE', 'F', '0', 'N-2013', 'Member', 'Disabled'),
(19, 'jpmu23@gmail.com', '042d58108e3ba8f71c80ef234b74bd715cfb83dc', 201310901, 'John Paul MIchael', 'Usabal', 'Gutierrez', 'CS-SE', 'M', '0', 'N-2013', 'Member', 'Disabled'),
(20, 'ivyespinarivera@yahoo.com', '564566889e453e01b1f034eacef432f5fa84ce2f', 201311161, 'Ivy', 'Rivera', 'Espina', 'CS-SE', 'F', '0', 'N-2013', 'Member', 'Disabled'),
(21, 'kukukukuku098@yahoo.com', '53038ed908c00b8d09d75652ad8ce5d91c176063', 201310926, 'Anferdie', 'Gelia', 'Vitor', 'CS-SE', 'M', '0', 'N-2013', 'Member', 'Disabled'),
(22, 'miatot_ako_29@yahoo.com.ph', '410feb43594529e1266e5837880d6752b28b25d6', 201311957, 'Rasmia', 'Quinones', 'Mirano', 'CS-SE', 'F', '0', 'N-2013', 'Member', 'Disabled'),
(23, 'joshua_yling@yahoo.com', 'b163afa438a49c6c8c5d9d8a04de337bed3a02c4', 201310923, 'Maverick Joshua Riel', 'Yling', 'Jamandre', 'CS-SE', 'M', '0', 'N-2013', 'Member', 'Disabled'),
(24, 'emcy009@gmail.com', '6cb355d7d1d1ad3c91d73ed719cf7b2b44f1106a', 201310279, 'Mc Bryan', 'Barit', 'Endaya', 'CS-SE', 'M', '0', 'N-2013', 'Member', 'Disabled'),
(25, 'ako_ay_agrbyado@yahoo.com', 'e97eab0c56f04131ed98ccbeafc1f09ae635342e', 200630031, 'Vincent John', 'Jimenez', 'Laureta', 'CS-SE', 'M', '0', 'N-2013', 'Member', 'Disabled'),
(26, 'janeczkalouise.cruz@gmail.com', '5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8', 201210584, 'Janeczka Louise ', 'Cruz', 'Morado', 'IT-DA', 'F', '0', 'N-2013', 'Member', 'Disabled'),
(27, 'ajsolomon31@gmail.com', 'a219b6e89ba480ff8a5ddb187f4dbb004a2e5a78', 201211015, 'Aliza Joy', 'Solomon', 'Benito', 'IT-DA', 'F', '0', 'N-2013', 'Member', 'Disabled'),
(28, 'elim_sison24@yahoo.com', '5932f5eabd8705458db0b6e3eb864f6661d2edfb', 201312219, 'Lady Elim', 'Sison', 'Gatdula', 'ACT', 'F', '0', 'N-2013', 'Member', 'Disabled'),
(29, 'aliah.paculan@gmail.com', '49aa3875b6afc73159769683e88f6e0c692eba59', 201211537, 'Aliah Mae', 'Paculan', 'Santiago', 'IT-WMA', 'F', '0', 'N-2013', 'Member', 'Disabled'),
(30, 'killermach23@yahoo.com', 'e017b9ef36eca1462adf256bc04b24e4c9af9708', 201312058, 'Cyril', 'Eloriaga', 'Harlan', 'CS-SE', 'M', '0', 'N-2013', 'Member', 'Disabled'),
(31, 'rozetteinoc@yahoo.com', '4024fc10d4f0c2b4ac3fb59ea325d2749d18561f', 201311278, 'Rozette Eriza', 'Inoc', 'Cabrera', 'CS-SE', 'F', '0', 'N-2013', 'Member', 'Disabled'),
(32, 'geo_gaviola@yahoo.com', '13d30fbeb1f717dc6219997f84ff4efb2cc64940', 201311156, 'Geelyne', 'Gaviola', 'Marzan', 'CS-SE', 'F', '0', 'N-2013', 'Member', 'Disabled'),
(33, 'colusojulieanne@gmail.com', 'c584ffce197c9a700f659e84335d9f5da1f2216b', 201310841, 'Julie Anne', 'Coluso', 'Figueroa', 'CS-SE', 'F', '0', 'N-2013', 'Member', 'Disabled'),
(34, 'she.seguin@yahoo.com', '369fb6b18528cdd312d338ef07b2d21b73f20a11', 201111474, 'Sherilyn', 'Seguin', 'Maniquis', 'IT-DA', 'F', '0', 'N-2013', 'Member', 'Disabled'),
(35, 'prettymarah_94@yahoo.com', '555fa5ed6a9a409352cb7437b29cf2c3b34f5ee2', 201111370, 'Maraiah Fate', 'Mendoza', 'Castro', 'IT-DA', 'F', '0', 'N-2013', 'Member', 'Disabled'),
(36, 'justisland@gmail.com', '25c2e351ce35c3ec53cee329272620a752e9e3ec', 201111520, 'Yves Justin', 'Cruz', 'Cruz', 'IT-DA', 'M', '0', 'N-2013', 'Member', 'Disabled'),
(37, 'marquezsamwell@yahoo.com', 'bfc1634edc2c04d13630910af3baf3355fe13885', 201110979, 'Samwell', 'Marquez', 'Abrera', 'IT-DA', 'M', '0', 'N-2013', 'Member', 'Disabled'),
(38, 'somera.glenna@gmail.com', '5d205227d78bddcfc601b797d099f38aa0accdb3', 201211267, 'Glenna', 'Somera', 'Agcaoili', 'IT-DA', 'F', '0', 'N-2013', 'Member', 'Disabled'),
(39, 'abrigo_nimrod@yahoo.com', '03ae291a2cb1108ac99eea96802faa3935eda366', 201210670, 'Nimrod', 'Abrigo', 'Ong', 'CS-SE', 'M', '0', 'N-2013', 'Member', 'Disabled'),
(40, 'chanjustin81@yahoo.com', '3524ee8b8cdc7eb5778025e6da0e42d9e2e3c0d5', 201210590, 'Justin Jasper', 'Chan', 'Chan', 'CS-SE', 'M', '0', 'N-2013', 'Member', 'Disabled'),
(41, 'astig_dan2001@yahoo.com', '494559ca59368d9b044021bcc5546adb2c47a599', 201310009, 'Dan Louis', 'Timbol', 'Dela Pena', 'CS-SE', 'M', '0', 'N-2013', 'Member', 'Disabled'),
(42, 'justine_judepura@yahoo.com', 'cccd9c8fbd64ecc21c04213b5e5b59f97413b8ab', 201310513, 'Justine Jude', 'Pura', 'Cerpo', 'CS-SE', 'M', '0', 'N-2013', 'Member', 'Disabled'),
(43, 'karlsanada10@gmail.com', '3ad5d38320d397096c4c9924a08c2af8d0de0498', 201312038, 'Karl Christopher', 'Cristobal', 'Casiano', 'CS-SE', 'M', '0', 'N-2013', 'Member', 'Disabled'),
(44, 'triforce90@yahoo.com', 'e0726c7fa3509f6bf84f43ccc33617db67044a10', 201210184, 'Ian Lamberth', 'Ang', 'Rozol', 'CS-SE', 'M', '0', 'N-2013', 'Member', 'Disabled'),
(49, 'chelseapropel@gmail.com', '0e9eb3fab88a99a3c7737c9c387394b475b2eb79', 201311813, 'Chelsea', 'Delos Santos', 'De Luna', 'CS-SE', 'F', '0', 'N-2013', 'Member', 'Disabled'),
(50, 'dave.ravina@yahaoo.com', '19687d154997b93331d12b2ef2accef04b57c265', 201210250, 'Dave', 'Ravina', 'Lizardo', 'CS-SE', 'M', '0', 'N-2013', 'Member', 'Disabled'),
(52, 'hanzmendez_hanzo@Yahoo.com', 'c29b42576de8c378ff84fc42028bd10c23eb0bae', 201311296, 'Hanz Christian', 'Mendez', 'A', 'IT-DA', 'M', '0', 'N-2013', 'Member', 'Disabled'),
(53, 'lloydbasquina@yahoo.com', '125673456800c7c56d1ed0be664ce5b21a8f390f', 201311467, 'Lloyd Patrick', 'Basquiña', 'Mendiola', 'IT-DA', 'M', '0', 'N-2013', 'Member', 'Disabled'),
(55, 'test2@test2.com', '5f3eecbab6f661d962662fadd1606586823c1b84', 201320010, 'TEST3', 'TEST2', 'TEST2', 'ACT', 'M', '9797970', 'N-2013', 'Member', 'Disabled'),
(56, 'dalmavs15@gmail.com', 'acd5b30dfcba97ecc4119cee6852cf812e10826d', 201210051, 'Maverick Elvin', 'Lim', 'Sy', 'CS-SE', 'M', '0', 'N-2013', 'Member', 'Disabled'),
(57, 'r_formeloza@yahoo.com', '91538f59ea5dac40ab53fe7e8a5ea48e892b35e6', 201011953, 'Raymund', 'Formeloza', 'Miranda', 'IT-DA', 'M', '0', 'N-2013', 'Member', 'Disabled'),
(58, 'marjorie_castil@yahoo.com', '8b8070b00cb425a7b4151bde72cc83a2f42c8adf', 201211061, 'Marjorie', 'Castil', 'Bacolongan', 'IT-DA', 'F', '0', 'N-2013', 'Member', 'Disabled'),
(59, 'catherinesalamat08@gmail.com', '5045d72d24b831e530ea266d1bf0d84ee733bb6c', 201211088, 'Catherine', 'Salamat', 'Vinsulan', 'IT-DA', 'F', '0', 'N-2013', 'Member', 'Disabled'),
(61, 'MarjoForcado@yahoo.com', '7803382325d25d292a4b6a9cb7d1cdda02df7597', 201211185, 'Marjo Andrio', 'Forcado', 'Gonzales', 'IT-DA', 'M', '09266808796', 'N-2013', 'Member', 'Disabled'),
(62, 'leimizej13@yahoo.com', '47bbbbd5a431f545c2925a0c6caa3b7e13003668', 201310894, 'Jezimeel', 'Amon', 'Dangla', 'CS-SE', 'M', '09091306287', 'N-2013', 'Member', 'Disabled'),
(64, 'rclx.barcinal@yahoo.com', '3bb60e1ab31995aa5adab2c37a92d09071394f62', 201310649, 'Arclexaei Carle', 'Barcinal', 'Koch', 'IT-DA', 'M', '09052122685', 'N-2013', 'Member', 'Disabled'),
(65, 'jayson.dio29@yahoo.com', 'ffa87d36611fa5ec1a87387c082998bf474aa76e', 201311821, 'Jayson', 'Dio', 'Villanueva', 'IT-DA', 'M', '09173432629', 'N-2013', 'Member', 'Disabled'),
(66, 'lheigh.valdez@rocketmail.com', '0875ddb4a1d800e0be1cd28fa177d9efdf352927', 201311841, 'Lheigh', 'Valdez', 'Saramosing', 'IT-DA', 'M', '09057575258', 'L-2013', 'Member', 'Disabled'),
(67, 'megmeg_eira@yahoo.com', '6579d0daccd6d53dd36552cc435d3374ce4e2a19', 201310534, 'Marie Gabrielle', 'Pelagio', 'Verga', 'IT-WMA', 'F', '09062990991', 'N-2013', 'Member', 'Disabled'),
(68, 'ery_leon07@yahoo.com', '68f6264d2a037598267792ba57748cbac24e9b46', 201310385, 'Ery John', 'Decembrano', 'Talusan', 'IT-WMA', 'M', '09059760437', 'N-2013', 'Member', 'Disabled'),
(69, 'vincentceldric24@yahoo.com', '379078097af0f50c7d661f713006ca68bdde6394', 201310758, 'Vincent Celdric', 'Miranda', 'Torres', 'IT-WMA', 'M', '09155482724', 'N-2013', 'Member', 'Disabled'),
(70, 'poly_real@yahoo.com', 'cdea915a70b9b502d235720ac21f3bfc4c742347', 201310562, 'Paul', 'Real', 'Verano', 'IT-WAD', 'M', '09152163407', 'N-2013', 'Member', 'Disabled'),
(71, 'kristelleann15@yahoo.com', '0bf4d378f94e86b3107c5f697fb00540c4c4d436', 201010251, 'Maria Kristelle Ann', 'Patola', ' ', 'IT-DA', 'F', '09278603580', 'N-2013', 'Member', 'Disabled'),
(72, 'avastronomia@gmail.com', 'b5c9a64bcb1b1ed4e385d98a1e9c4ddc471fac3a', 201030033, 'Andre Marcel', 'Astronomia', 'Valencia', 'CS-SE', 'M', '09158054176', 'N-2013', 'Member', 'Disabled'),
(73, 'marcgoyal@rocketmail.com', '69554b5de2681f06cc894500ccf44f18e58b818d', 201311441, 'Marc', 'Goyal', 'Chavez', 'CS-SE', 'M', '09272064195', 'N-2013', 'Member', 'Disabled'),
(74, 'rjayskie_04@yahoo.com', '10b03b4ee9f84e5b64b5f7b3e700379e9beb69eb', 201310728, 'Francis', 'Servito', 'Cruz', 'CS-SE', 'M', '09334610264', 'N-2013', 'Member', 'Disabled'),
(75, 'carlo_swato007@yahoo.com', '01b307acba4f54f55aafc33bb06bbbf6ca803e9a', 201310493, 'John Carlo', 'Babao', 'Garcia', 'CS-SE', 'M', '09193636888', 'N-2013', 'Member', 'Disabled'),
(76, 'jaolimcumpao@rocketmail.com', 'bb06175ceb75316fa2b55f2c783d2c97760d7e36', 201310747, 'Jao Nicolai', 'Limcumpao', 'Tubiera', 'IT-AGD', 'M', '09063360880', 'N-2013', 'Member', 'Disabled'),
(77, 'kae_darilag@yahoo.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', 201010823, 'Makamille Jaylene', 'Darilag', 'Dahilan', 'CS-SE', 'F', '09274660133', 'N-2013', 'Member', 'Disabled'),
(78, '715yvan@gmail.com', '6a408a2f84cf3a9159073fa13d37a8e4706198bc', 201212306, 'Yvan Robin', 'Maglalang', 'Fangon', 'ECE', 'M', '09175364374', 'N-2013', 'Member', 'Disabled'),
(79, 'dpr_farm@yahoo.com', 'aaea54fd8d24cfbb959f871439bf06c0712e1235', 201310236, 'Paolo Marco II', 'Reyes', 'Santiago', 'IT-WMA', 'M', '09176074410', 'N-2013', 'Member', 'Disabled'),
(80, 'annikamarchan@yahoo.com', '0af59d1e878c7d0440d4ddc0d6563b0fbee07f8c', 201110544, 'Annika Lea', 'Marchan', 'Cunignig', 'CPE', 'F', '09269836822', 'N-2013', 'Member', 'Disabled'),
(81, 'alvinquiogue@gmail.com', '381051d8c7c12afdddff6017cbf467c4035b32d3', 201112168, 'Alvin', 'Quiogue', 'Busa', 'CPE', 'M', '09063894403', 'N-2013', 'Member', 'Disabled'),
(82, 'dallaskevin41@yahoo.com', 'c352320544d8d525cc965ab58c49ec0bccebc5d3', 201210258, 'Kevin', 'Mercado', 'D.', 'CS-SE', 'M', '09156692867', 'N-2013', 'Member', 'Disabled'),
(83, 'miss_jigme@yahoo.com', '937bcebc6606a64bbb2490f6865133ec3690d0de', 201311671, 'Jigme Arhata ', 'Lagutan ', 'Mangoranca ', 'IT-AGD', 'F', '09275911135', 'N-2013', 'Member', 'Disabled'),
(84, 'nojarakiztah_yeah@yahoo.com', 'ab05e0cc40bbf21b4195f0fffe8d1f8a2428de97', 201310455, 'Johnedel', 'Manlincon', 'Manuel', 'IT-WMA', 'M', '09064802956', 'N-2013', 'Member', 'Disabled'),
(85, 'pierce.miralles@gmail.com', '43a64ca356e810775b4ccc49ce75bba22e62d5ee', 201010848, 'Pierce Dominique', 'Miralles', 'Paguio', 'CPE', 'M', '09063894582', 'N-2013', 'Member', 'Disabled'),
(86, 'rejonaldsalazar@yahoo.com', '824b2f7dcc3f12788dfda5daeda6fe1412671456', 201112222, 'Rejonald', 'Salazar', 'Bo', 'IT-DA', 'M', '09061824343', 'N-2013', 'Member', 'Disabled'),
(87, 'carlobauto@gmail.com', 'a48bee0a35bf254bf38bc966648f6da15353913a', 201312354, 'Carlo Cesar', 'Bauto', 'Leus', 'IT-WMA', 'M', '09154827688', 'N-2013', 'Member', 'Disabled'),
(88, 'carlosbasco367@yahoo.com', '0b83dd67aed33c4de12929a9b876fdf01f12e8aa', 201312122, 'Carlos', 'Basco', 'Calubad', 'CS-SE', 'M', '09432467262', 'N-2013', 'Member', 'Disabled'),
(89, 'camat_jonas@yahoo.com.ph', 'b39ca898327c170f2e591da1d771526801862444', 201310053, 'Jonas', 'Camat', 'Salud', 'CS-SE', 'M', '09160918547', 'N-2013', 'Member', 'Disabled'),
(90, 'rclintdel21@yahoo.com', '643d13bb1c577e917752927f8965846267e8a10a', 201112298, 'Ringo Clintdel', 'Pascual', 'Castillo', 'IT-DA', 'M', '09351120041', 'N-2013', 'Member', 'Disabled'),
(91, 'johnmirage17@yahoo.com', 'a56a523859be79dc584568724ec1e98a541ca1e7', 200811447, 'John', 'Lim', 'Oliver', 'CPE', 'M', '09152785637', 'N-2013', 'Member', 'Disabled'),
(92, 'markanjelosalvador@rocketmail.com', '00e51efd34a5c2dfcd8ae307272aa870e369558f', 201210547, 'Mark Anjelo', 'Salvadorr', 'Torres', 'IT-WAD', 'M', '09239296475', 'N-2013', 'Member', 'Disabled'),
(94, 'crsstm.9@gmail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', 201310277, 'Roselyn Mae', 'Crisostomo', 'Tadeo', 'CS-SE', 'F', '', 'N-2013', 'Member', 'Disabled'),
(95, 'anda_deleon@yahoo.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', 201311158, 'Maria Crizandra', 'Deleon', 'Flores', 'CS-SE', 'F', '', 'N-2013', 'Member', 'Disabled'),
(96, 'haseo_95@yahoo.com.ph', 'fe4451aabc243386e6b1b01bfbc06da280abdac9', 201211862, 'Jim Russell', 'Ang', 'Hohn', 'CS-SE', 'M', '', 'N-2013', 'Member', 'Disabled'),
(97, 'd.canlas07@gmail.com', 'b96fd52df2a5a3c3f9378de3be96fbedd84bc50b', 201011201, 'Dean Marty', 'Canlas', 'Balatbat', 'CS-SE', 'M', '', 'N-2013', 'Member', 'Disabled'),
(98, 'kylemari75@yahoo.com', '5182e899635f650415a83138e4f138554d99cd6f', 201310766, 'Kyle Mari', 'Torralba', 'Agulay', 'CS', 'M', '', 'N-2013', 'Member', 'Disabled'),
(99, 'g.dp740@yahoo.com.ph', 'e0077da07d91305fff5adb88f58d5d7f5cbb628a', 201310494, 'Giorgio', 'Dela Pena', 'Salentes', 'CS-SE', 'M', '', 'N-2013', 'Member', 'Disabled'),
(100, 'adrianleonardlee@ymail.com', 'f1925878dc2c957a13ce5e80f28e63ba6b35ce2f', 201210052, 'Adrian Leonard', 'Lee', 'Calacday', 'CS-SE', 'M', '', 'N-2013', 'Member', 'Disabled'),
(101, 'karlashane024@gmail.com', 'd3def7be5bfe4be4722aefb1086d513496f212a2', 201210004, 'Karla Shane', 'Landicho', 'Del Mundo', 'CS-SE', 'F', '', 'N-2013', 'Member', 'Disabled'),
(102, 'lawrence_lomotan@yahoo.com', 'b59ac77b76d0f2ddb6de3f1edfc8c6708d5ae8e2', 201310477, 'Lawrence', 'Lomotan', 'Herrera', 'CS', 'M', '', 'N-2013', 'Member', 'Disabled'),
(103, 'sonymikhael07@gmail.com', 'aaedf72244cd918f5f19cb95056d3e6f55dd5a01', 201111669, 'Sony Mikhael', 'Fampulme', 'Solis', 'CS-SE', 'M', '', 'N-2013', 'Member', 'Disabled'),
(104, 'john_marvin_123@yahoo.com', 'f09bcd7688d4c9f6f6eff86d1c2381bb3c4fdd0c', 201311266, 'John Marvin', 'Lin', 'Apawan', 'IT-DA', 'M', '', 'N-2013', 'Member', 'Disabled'),
(105, 'fjzm2010@yahoo.com', '6c03ac0ea7241c3b2e2b7d54ff1db5f5539dc198', 201311447, 'Francis John', 'Malajos', 'Zuniga', 'IT-DA', 'M', '', 'N-2013', 'Member', 'Disabled'),
(106, 'wilhelm_ang1990@yahoo.com', '8a2798cea12d0262de89a06d353b4af165b70154', 201312054, 'Ang', 'Ang', 'Wilhelm Grady ', 'CS-SE', 'M', '', 'N-2013', 'Member', 'Disabled'),
(107, 'gv058@yahoo.com', '68faa8a603db238271fe84d50b1935c6a908169e', 201210038, 'Gregorio Victor', 'Mendoza III', 'Gagui', 'CS-SE', 'M', '', 'N-2013', 'Member', 'Disabled'),
(108, 'dariencoleodell@gmail.com', '2153466677ad4be9bd27aca818738e1ed27f42be', 201112017, 'Darien Cole', 'O''Dell', 'Cobarrubias', 'IT-DA', 'M', '', 'N-2013', 'Member', 'Disabled'),
(109, 'leoparte0122@yahoo.com', 'fc9afe67f882cb7abd4b1256902ae14b59dd4466', 201210800, 'Lucky', 'Leoparte', 'Pabellano', 'IT-DA', 'M', '', 'N-2013', 'Member', 'Disabled'),
(110, 'hyung_sexyy23@yahoo.com', '581af2f14fd6bb166ba9dc499a9bca6a5e49d14c', 201311029, 'Arriane Mae', 'Vidad', 'Belda', 'CS-SE', 'F', '', 'N-2013', 'Member', 'Disabled'),
(111, 'zenitram.carl@yahoo.com', 'ad3654326c6900b3980e61f6cc9628de033c14f1', 201312109, 'Carl Emmanuel', 'Martinez', 'Penalosa', 'CS-SE', 'M', '', 'N-2013', 'Member', 'Disabled'),
(112, 'benedictarceo@yahoo.com', '9b6010e038bb2557133b83a501e20756c1bb6383', 201310017, 'John Benedict', 'Arceo', 'Diala', 'IT-DA', 'M', '', 'L-2013', 'Member', 'Disabled'),
(113, 'catacutanvincemanuel@yahoo.com', 'f968397cbeeebfc401f948e9c3a4a2d174a04611', 201310094, 'Vince Manuel', 'Catacutan', 'Romero', 'IT-DA', 'M', '', 'N-2013', 'Member', 'Disabled'),
(114, 'deguzmanhans05@yahoo.com', '152609692d24da73e6211494b6d5e3c8824bb3dd', 201030034, 'Hans Erikkson', 'De Guzman', 'Pagayonan', 'CS-SE', 'M', '09228665334', 'N-2013', 'Member', 'Disabled'),
(115, 'rene_napenas@yahoo.com', '0b2e5a5d2b205aa20d53a3f937502feae8b9c845', 201311954, 'Rene', 'Napenas', 'Odmundo', 'CS-SE', 'M', '09092862304', 'N-2013', 'Member', 'Disabled'),
(116, 'kramjoquico@yahoo.com', '56219f5bd0ad3f29ba506c9d1b96d3b93e7ee08f', 201311341, 'Mark Terence', 'Joquico', 'Miranda', 'CS-SE', 'M', '09162403774', 'N-2013', 'Member', 'Disabled'),
(117, 'eruelsoriano12@yahoo.com', '3a300c7ba9c3fbade92bd805a9fba1a431ca3f0e', 201311094, 'Eruel', 'Soriano', '', 'CS', 'M', '09355409416', 'N-2013', 'Member', 'Disabled'),
(118, 'kevin_bondocoy@yahoo.com', '95bc04e5a80a64972d4f10c64dde00f5ac712892', 201310404, 'Kevin John', 'Tiangco', 'Bondocoy', 'CS-SE', 'M', '09359007415', 'N-2013', 'Member', 'Disabled'),
(119, 'marvindemayo_ygar@yahoo.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', 201310824, 'Marvin', 'Ygar', 'De Mayo', 'CS-SE', 'M', '09276119536', 'N-2013', 'Member', 'Disabled'),
(120, 'shadow_lim26@yahoo.com', 'df3e01381e460188d446d1a0cb81a769c348b755', 201310556, 'Eddie', 'Lim ', 'Delavin', 'IT-WMA', 'M', '09179546343', 'N-2013', 'Member', 'Disabled'),
(121, 'noeadd@yahoo.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', 201310914, 'Lyra Sheene', 'Vinoya', 'Luna', 'CS-SE', 'F', '09151353682', 'N-2013', 'Member', 'Disabled'),
(122, 'randy.bucoy@yahoo.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', 201310384, 'Deun Randy', 'Bucoy', 'Aromin', 'CS-SE', 'M', '09178081296', 'N-2013', 'Member', 'Disabled'),
(123, 'jrme.perez@gmail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', 201311815, 'Jose Romeo', 'Perez', '', 'CS-SE', 'M', '09175689031', 'N-2013', 'Member', 'Disabled'),
(124, 'bk_kurt01@yahoo.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', 201310165, 'Bryon Kurt', 'Segunto', 'Sagales', 'CS-SE', 'M', '09263458505', 'N-2013', 'Member', 'Disabled'),
(125, 'jcgamboa09@yahoo.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', 201310219, 'Jan Carlo', 'Gamboa', 'Medina', 'CS-SE', 'M', '09279755347', 'N-2013', 'Member', 'Disabled'),
(126, 'julius_ortiz@rocketmail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', 201310285, 'Julius John Roel', 'Ortiz', 'Collado', 'CS-SE', 'M', '09267390709', 'N-2013', 'Member', 'Disabled'),
(127, 'matthewsagala@ymail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', 201310057, 'Matthew', 'Sagala', 'Pones', 'CS-SE', 'M', '09178928741', 'N-2013', 'Member', 'Disabled'),
(128, 'jfjestre@gmail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', 201311814, 'Jaimee', 'Jestre', 'Flores', 'CS-SE', 'M', '09205331977', 'N-2013', 'Member', 'Disabled'),
(129, 'casalla08@yahoo.com', '683700992216f0990e6a67108306f430ff118e02', 201310220, 'Angelito ', 'Casalla Jr.', 'Austria', 'CS-SE', 'M', '09062925414', 'N-2013', 'Member', 'Disabled'),
(130, 'jaemy927@gmail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', 201311953, 'Jaemy Aziz', 'Malik', 'Esguerra', 'CS-SE', 'M', '09173127774', 'N-2013', 'Member', 'Disabled'),
(131, 'rjug.gijapon@yahoo.com', 'f2420bfd1106a59a58e476ea53c306f30e9fa755', 201310673, 'Ralph Jann', 'GIJAPON', 'Urbiztondo', 'CS-SE', 'M', '09063895256', 'N-2013', 'Member', 'Disabled'),
(132, 'corbinreyes32@gmail.com', 'c08c7efc0c024b66b29c9c8066f3a0967a4ffeb0', 201311047, 'Corbin Carlyle', 'Reyes', 'Francisco', 'CS-SE', 'M', '09265708227', 'N-2013', 'Member', 'Disabled'),
(133, 'aron_cloyd@yahoo.com', '12a9d91d93e964aca7142bf6f1a48ceae02a8f33', 201310297, 'Aron Cloyd', 'Sazon', 'Canlas', 'IT-WMA', 'M', '09065512037', 'N-2013', 'Member', 'Disabled'),
(134, 'gladyspearl.018@gmail.com', '8e1dae89c8a4eb43970ca6ad5837631ee430ef9d', 201110905, 'Gladys Pearl', 'Sudara', 'Santillan', 'CPE', 'F', '09466813591', 'N-2013', 'Member', 'Disabled'),
(135, 'archie_sibug_22@yahoo.com', 'f2c57870308dc87f432e5912d4de6f8e322721ba', 201211112, 'Archie', 'Sibug', 'Malabanan', 'CS-SE', 'M', '09202197582', 'N-2013', 'Member', 'Disabled'),
(136, 'nikkiangel.bontogon@yahoo.com', '655f24e86a574d9684b0bb94a2476aab4907df9c', 201030102, 'Nikki Angel', 'Bontogon', 'Gultiano', 'CPE', 'F', '09176433995', 'N-2013', 'Member', 'Disabled'),
(137, 'ayane_jennifer@yahoo.com', '470c28624e43cc842143f2c6bf7e6b2fbdc5b202', 201310192, 'Mikhaela Jennifer', 'Cruz', 'Sanding', 'CPE', 'F', '09999313302', 'N-2013', 'Member', 'Disabled'),
(138, 'andiecdsevilla@gmail.com', '6bebecaeec741bbc7ef3cee05424164a714f5a0c', 201112103, 'Andrea Crisabel', 'Sevilla', 'Decilos', 'IT-DA', 'F', '09265564635', 'N-2013', 'Member', 'Disabled'),
(139, 'nicoloarenas@yahoo.com', 'b3d173b93aea2baec4096367a1c2a9a5ff8d2f0a', 201311600, 'Michael Nicolo', 'Arenas', 'Paro', 'IT-WMA', 'M', '09069304305', 'N-2013', 'Member', 'Disabled'),
(140, 'angelangelesiii@gmail.com', 'db3e8a820103294b1b36cfe25a8ac8abf92c6c96', 201230037, 'Angel III', 'Angeles', 'Tacugue', 'CE', 'M', '09177361997', 'N-2013', 'Member', 'Disabled'),
(141, 'ella_principe@yahoo.com', '00c04e14d499c08b3750c3d821e77ce2f6ef906f', 201311971, 'Marielle', 'Principe', 'Manlapaz', 'CS-SE', 'F', '09352302052', 'N-2013', 'Member', 'Disabled'),
(142, 'ferlynsoawesome@yahoo.com', '087014f23a2daec60be40a5cad7d29547bc97115', 201311695, 'Felyn', 'Dalida', 'Lacanlale', 'CS-SE', 'F', '09496471865', 'N-2013', 'Member', 'Disabled'),
(143, 'gsrhceline@gmail.com', '315264c2bb68449fc8194c775f1d13e1d78e4d33', 201310141, 'Roseheart Celine', 'Pardo', 'Navarro', 'CS-SE', 'F', '09069755142', 'N-2013', 'Member', 'Disabled'),
(144, 'Isaiah@herpderp.ru', '2f8c546548a0e7610f6231f6aa68d656b450aca4', 201110941, 'Isaiah James', 'Puzon', 'Dionela', 'CPE', 'M', '09274513889', 'N-2013', 'Member', 'Disabled'),
(145, 'tiny_tyne09@yahoo.com', 'b313f94d0bba4767c51a29db8f30ac94f9eb1c5c', 201211405, 'Christyne Nicole', 'Mijares', 'Torno', 'IT-DA', 'F', '09066192929', 'N-2013', 'Member', 'Disabled'),
(146, 'macapinlacjulienne@yahoo.com', '1f363d33c0a22ec6145353608a3676d5a716185c', 201211846, 'Julienne', 'Macapinlac', 'Jabson', 'IT-WMA', 'F', '09054087836', 'N-2013', 'Member', 'Disabled'),
(148, 'test@test.com', '5f3eecbab6f661d962662fadd1606586823c1b84', 123445556, 'TEST', 'TEST1', 'TEST', 'ACT', 'M', '090909203', 'N-2012', 'Member', 'Enabled'),
(149, 'rdramirez@feu-eac.edu.ph', 'de05f343b6be048ea9afca789b5f81843e9fc1c6', 200920003, 'Ren Joshua', 'Ramirez', 'De Torres', 'IT', 'M', '09063360880', 'N-2013', 'Admin', 'Enabled'),
(150, 'alexa_sutil@yahoo.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', 201311190, 'Alexa Jeanne', 'Recoco', '', 'CS-SE', 'F', '', 'N-2013', 'Member', 'Disabled'),
(151, 'rendao72@yahoo.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', 201310569, 'Biancha Mae', 'Hong', 'Repalda', 'CS-SE', 'F', '', 'N-2013', 'Member', 'Disabled'),
(152, 'chin_abadiano@yahoo.com', '5f3eecbab6f661d962662fadd1606586823c1b84', 201310137, 'Loureen Claire', 'Abadiano', 'Roxas', 'CS-SE', 'F', '', 'N-2013', 'Member', 'Disabled'),
(153, 'mkannah@yahoo.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', 201311753, 'Kannah Noerie', 'Millano', 'Morales', 'CS-SE', 'M', '', 'N-2013', 'Member', 'Disabled'),
(154, 'viapasia@ymail.com', 'e9eb1adc8ca186180a4b128e142def00c0a17845', 200910140, 'Via Paula', 'Pasia', 'Macavinta', 'IT-DA', 'F', '', 'N-2013', 'Member', 'Disabled'),
(155, 'patriciaanne_19@yahoo.com', '689c65485af400f7d3d70f4d8379a3ba2dad62ba', 201210811, 'Patricia Anne', 'Lopez', 'Ronquillo', 'CS-SE', 'F', '', 'N-2013', 'Member', 'Disabled'),
(156, 'kristinelhiznacionales@ymail.com', '575f941db597abb65704da04b62d68f5ea478688', 201210197, 'Kristine', 'Nacionales', 'Tabanao', 'CS-SE', 'F', '', 'N-2013', 'Member', 'Disabled'),
(158, 'johnken_07@yahoo.com', '07057b4ce11334d98187bb494bda139472ee7182', 201211669, 'John ', 'Falcasantos', 'Kenneth', 'CPE', 'M', '', 'N-2013', 'Member', 'Disabled'),
(159, 'macdeang@yahoo.com', '02fe017663a67cb358026c6dae89e8429cd69e18', 201212244, 'Mark Anthony', 'Deang', 'Cerezo', 'CPE', 'M', '', 'N-2013', 'Member', 'Disabled'),
(160, 'chynnadimaano@gmail.com', '886984a2cd076558a182080c95d6cf88beb1444d', 201311920, 'Chynna Krizzele', 'Dimaano', 'Eduarte', 'CS-SE', 'F', '', 'N-2013', 'Member', 'Disabled'),
(161, 'bloodycosmos@yahoo.com', 'b194fbe97bde371fb425100b6c46227bba7bcf17', 201011817, 'Mary Rose', 'Catangay', 'Jonson', 'IT-DA', 'F', '', 'N-2013', 'Member', 'Disabled'),
(162, 'physics32011@gmail.com', '70fa85937648919d31aabf3e70d2a8366a1793cd', 201011890, 'Robin', 'Sison', 'Crasco', 'CS-SE', 'M', '', 'N-2013', 'Member', 'Disabled'),
(163, 'jan.marvin97@fea-eac.edu.ph', '5fc61509e2ba0db9b6aecf583981be5741f347d1', 201311852, 'Jan Marvin', 'Cruz', 'De La', 'CS-SE', 'M', '', 'N-2013', 'Member', 'Disabled'),
(164, 'jrpalcoriza@outlook.com', 'bc513d628671113379445d37714612b7f005ebda', 201111244, 'Jann Raphael', 'Alcoriza', 'Perez', 'ECE', 'M', '', 'N-2013', 'Member', 'Disabled'),
(165, 'rahc_maine@yahoo.com', '91538f59ea5dac40ab53fe7e8a5ea48e892b35e6', 201011762, 'Charmaine', 'Estrella', 'Tibong', 'IT-DA', 'F', '', 'N-2013', 'Member', 'Disabled'),
(166, 'duanecarycusi@gmail.com', 'a63be7dc69116433f35ef0ffbdd2c03cc3209fff', 201210006, 'Duane', 'Cusi', 'Cruz', 'IT-WMA', 'M', '', 'N-2013', 'Member', 'Disabled'),
(167, 'cjudepineda@yahoo.com', '03cce0bd935d68717621ea6a8ce983249f3638d3', 201311130, 'Christian Jude', 'Pineda', 'Viesca', 'ECE', 'M', '', 'N-2013', 'Member', 'Disabled'),
(168, 'archie_pilar14@yahoo.com', '03fc1e3c8727a07b66759ea663ac04d172ab9d93', 201310158, 'Ray Christian', 'Pilar', 'Cruz', 'IT-DA', 'M', '', 'N-2013', 'Member', 'Disabled'),
(169, 'patrickpapa07@gmail.com', 'b49e15af1ab1ca5fedbcaf4878b4b95af1a0a932', 201311472, 'Patrick Aris', 'Papa', 'Clamor', 'IT-DA', 'M', '', 'N-2013', 'Member', 'Disabled'),
(170, 'clarencegonzales0614@gmail.com', '5426c513590dc51a24d5ba64cde07a6c05a44c32', 201310286, 'Clarence John', 'Gonzales', 'Dela Cruz', 'CS-SE', 'M', '', 'N-2013', 'Member', 'Disabled'),
(171, 'guevarraephraim@gmail.com', 'a84edeb3d2e6763b79a995870bd14c155825a30f', 201310524, 'Ephraim John', 'Guevarra', 'Lauriaga', 'CS-SE', 'M', '', 'N-2013', 'Member', 'Disabled'),
(172, 'josef_cinco@yahoo.com', 'f52262905e9fbf24cd8bc59399b9afbb36d70298', 201310481, 'Josef', 'Cinco', 'Ayson', 'CS-SE', 'M', '', 'N-2013', 'Member', 'Disabled'),
(173, 'mikeandianbatuigas@gmail.com', 'bfb3f3016a7c74616fbd4b4645921f89dbedabfa', 201310010, 'Mike Andrian', 'Batuigas', 'Dollete', 'CS-SE', 'M', '', 'N-2013', 'Member', 'Disabled'),
(174, 'rkesperas@yahoo.com.ph', '5a6737245f869589bded1f009a3695a32af70c60', 201310196, 'Raoul Kristoffer', 'Esperas', 'De Leon', 'CS-SE', 'M', '', 'N-2013', 'Member', 'Disabled'),
(175, 'von2x_15@yahoo.com', '38e50be5cb02fcadc8c839d0ec75693004a27fa9', 200810249, 'Von Jovy', 'Espiritu', 'Paca', 'CS', 'M', '', 'N-2013', 'Member', 'Disabled'),
(176, 'iamcee143@gmail.com', 'e13785a35c874fd9a7e49185a1189c4f6d5de6e0', 121310987, 'Liliana Clara', 'Benedicto', 'Alimboyong', 'IT-DA', 'F', '', 'N-2013', 'Member', 'Disabled'),
(177, 'catherinemaeho@yahoo.com', '62a1988949ce954327fd820a44ad23e03c2e8cc8', 201311045, 'Catherine Mae', 'Ho', 'Besonia', 'IT-WMA', 'F', '', 'N-2013', 'Member', 'Disabled'),
(178, 'aileenbaltazar@yahoo.com', '63ab4f1b78d33f309524bf8da473fb863bdac550', 200910226, 'Aileen', 'Baltazar', 'Dela Cruz', 'CS-SE', 'F', '', 'N-2013', 'Member', 'Disabled'),
(179, 'edisonfortuna@gmail.com', 'da7d5a0fafe011d7f6c7a618d5e56b141583e2cf', 201011712, 'Edison', 'Fortuna', 'Lumba', 'IT-WAD', 'M', '', 'N-2013', 'Member', 'Disabled'),
(181, 'jjc@yahoo.com', '5f3eecbab6f661d962662fadd1606586823c1b84', 201410090, 'Test', 'Test', 'Test', 'CS-SE', 'F', '09873421431', 'L-2013', 'Member', 'Disabled'),
(182, 'lezter_cargamento@yahoo.com', 'fbac4ad27fb31a1840f7c9da058efe47c45d38e8', 201310567, 'Jan Lezter', 'Cargamento', 'Mercado', 'IT-DA', 'M', '09061050342', 'N-2013', 'Member', 'Disabled'),
(183, 'edselasor_kim@yahoo.com', '2d8c41fa3ef44030c019fd20256ea15dbd88a6a8', 201311337, 'Kim', 'De Rosales', 'Regulto', 'IT-DA', 'M', '09109378435', 'N-2013', 'Member', 'Disabled'),
(184, 'joshua_camanga@yahoo.com', 'd6955d9721560531274cb8f50ff595a9bd39d66f', 201311811, 'Joshua', 'Camanga', 'Oliverso', 'IT-DA', 'M', '09067229430', 'N-2013', 'Member', 'Disabled'),
(185, 'cipriano_arwyn@yahoo.com', '6980e16e06ebefa95fec789602a30c29c36319ea', 201311033, 'Arwyn', 'Cipriano', 'Sababan', 'IT-DA', 'M', '09064887872', 'N-2013', 'Member', 'Disabled'),
(186, 'nikarose04@yahoo.com', '17c65be67b3ede9c7e37df9edb9ae1457c6ac308', 200811083, 'Janika Rose', 'Vidal', 'Alerta', 'IT-DA', 'F', '09266969714', 'N-2013', 'Member', 'Disabled'),
(187, 'sirleworlee@ymail.com', '98e1e3626590416c1eb480e37b44ab95494a60f6', 201311786, 'Sir Lewor', 'Lee', 'Canlas', 'IT-WMA', 'M', '09052720255', 'N-2013', 'Member', 'Disabled'),
(188, 'chello17_chelle@yahoo.com', '4565b67d5254b73a3ad12aab859266bc7bf692be', 200911048, 'Rachelle', 'Goto', 'Pesquera', 'IT-WMA', 'F', '09468117214', 'N-2013', 'Member', 'Disabled'),
(189, 'cherry_egmilan@yahoo.com', 'a11cfd40493dd034ef76689a27a2a90b6aaccccf', 201010716, 'Cherry', 'Egmilan', 'Cuyno', 'CS-SE', 'F', '09093667607', 'N-2013', 'Member', 'Disabled'),
(190, 'afparentela@gmail.com', '7be746f800b7fb8a4383214563c256932067bc33', 201011391, 'Ana Felyn', 'Parentela', 'Segarra', 'IT-WAD', 'F', '09229882224', 'N-2013', 'Member', 'Disabled'),
(191, 'sc.leyva@yahoo.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', 201312177, 'Sherene', 'Leyva', 'Cordova', 'CS-SE', 'F', '09353603353', 'N-2013', 'Member', 'Disabled'),
(192, 'ddurns@gmail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', 201312287, 'Daniel', 'Viernes', 'Dangca', 'CS-SE', 'F', '09332257277', 'N-2013', 'Member', 'Disabled'),
(193, 'rocksomeass@gmail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', 201312475, 'Jim Rainier', 'Manuel', 'Laureta', 'CS-SE', 'M', '09275363210', 'N-2013', 'Member', 'Disabled'),
(194, 'adrianlaganas@yahoo.com', 'f46cc59680aebbcc79646930f050dec4a901b378', 201310383, 'Ray Adrian', 'Laganas', 'Pasagui', 'CS-SE', 'M', '09238915878', 'N-2013', 'Member', 'Disabled'),
(195, 'arvin_eduarte@yahoo.com', 'd220ed3524e9be589ffb8792959e72253c14367b', 201311312, 'Wedrick Arvin', 'Eduarte', 'Santos', 'CPE', 'M', '09066755251', 'N-2013', 'Member', 'Disabled'),
(196, 'kieveveron@gmail.com', 'dd143544481843aa8712e86a96fa13e8aab4e498', 201312163, 'Kieve Dainell Dominique', 'Veron', 'Baldomero', 'CS-SE', 'M', '09178524044', 'N-2013', 'Member', 'Disabled'),
(197, 'te_03benedict@yahoo.com', 'e7e47d8de78233bd95505804b14df636d66f74e0', 201310952, 'Benedict', 'Te', 'Anastacio', 'CS-SE', 'M', '09262368946', 'N-2013', 'Member', 'Disabled'),
(198, 'kalbo_heny@yahoo.com', '10c67066b2ed56e2d1bb570aea1c5ce62e5fbd58', 201211574, 'Henny', 'Corvera', 'Montero', 'CS-SE', 'M', '09279122961', 'N-2013', 'Member', 'Disabled'),
(199, 'mike_cajurao12@yahoo.com', '6609756a310afcab3150017d28d00c90d790dc25', 201030104, 'Mike Nicole', 'Cajurao', 'Apolinar', 'CPE', 'M', '09999598452', 'N-2013', 'Member', 'Disabled'),
(200, 'thalyarizzpatagan@yahoo.com', '2256f665493470c25b9ebc319e093be61b1a3912', 201310301, 'Thalia Mariz', 'Patagan', 'Punzalan', 'CS-SE', 'F', '09067667353', 'N-2013', 'Member', 'Disabled'),
(201, 'leorenz_zuniga@yahoo.com', 'ee5f8b77908538f27db1a9b5ec9cf1bc81d46886', 201312407, 'Leorenz', 'Zuniga', 'Angalot', 'CS-SE', 'M', '09178999320', 'N-2013', 'Member', 'Disabled'),
(202, 'jolyn_sigua@yahoo.com', '51dfa87147117bdd449887375131fbfa6933796f', 201310577, 'Joenalyn', 'Sigua', 'S.', 'CS', 'F', '09177913642', 'L-2013', 'Member', 'Disabled'),
(203, 'sharon_mara2002@yahoo.com', 'f25b72cf45c8ef0687d919e455f9064205653713', 201311470, 'Ma.sharon Rose', 'Mara', '', 'CS', 'F', '09236499064', 'L-2013', 'Member', 'Disabled'),
(204, 'mharcel_apostol@yahoo.com', '6c2d8e1aad7944ea24c10730f040cc3b78a94a2c', 201112440, 'Mharcel', 'Apostol', 'Alarcon', 'ECE', 'M', '09066838021', 'N-2013', 'Member', 'Disabled'),
(205, 'sherilynocenar@yahoo.com', 'd30d77bc8442db84a0f7343d0256480d3f1b74c4', 201011893, 'Sherilyn', 'Ocenar', 'Lugasan', 'IT-DA', 'F', '09274997181', 'N-2013', 'Member', 'Disabled'),
(206, 'michaelangelo.arocena@yahoo.com', '10091701b9be4d7c83ac22321ede9bdac504d9a5', 201010845, 'Michael Angelo', 'Arocena', 'Tumbaga', 'CPE', 'M', '09165158577', 'N-2013', 'Member', 'Disabled'),
(207, 'ammalimban02@gmail.com', 'f34efc180c5c635e65d96c09c009cfa4b065530d', 201011378, 'Angelica', 'Malimban', 'Mendoza', 'IT-WAD', 'F', '09063896328', 'N-2013', 'Member', 'Disabled'),
(208, 'dcbiado@gmail.com', 'ca0481757abb13948dcc4327a50e56260aa2d3bd', 201011923, 'Diosa Bianca', 'Biado', 'Cabuhat', 'IT-WAD', 'F', '09063896322', 'N-2013', 'Member', 'Disabled'),
(209, 'yurnazhero@yahoo.com', 'd194fe73634058c00587eab425f572160e5f8eb7', 201311267, 'Mac Karlo Davies', 'Que', 'Elecanal', 'CPE', 'M', '09477271117', 'L-2013', 'Member', 'Disabled'),
(210, 'santosjoseph01@gmail.com', 'bf32244a30bb986bd5cc80c460579ca352dfd61b', 201312269, 'Joseph Abraham', 'Santos', 'Cambay', 'CPE', 'M', '09063895275', 'N-2013', 'Member', 'Disabled'),
(211, 'alyssagarcia_0001@yahoo.com.ph', 'ac1570628d46ce6ed4bca46d239c3d119465b62e', 201311145, 'Alyssa', 'Garcia', 'Martin', 'IT-WMA', 'F', '09175702602', 'L-2013', 'Member', 'Disabled'),
(212, 'daniloesquivel_16@yahoo.com', '370065cf0e0444c2c3391adadbab283cbe142ffb', 201310175, 'Danilo', 'Esquivel', 'Rocabo', 'CS-SE', 'M', '09062793298', 'N-2013', 'Member', 'Disabled'),
(213, 'adrian_hassle0410@yahoo.com', 'c17b366111ee9c51d19f2b835dc0a48cb0d5144e', 201312291, 'Adrian', 'Barcelon', 'Hilario', 'IT-WMA', 'M', '09178068302', 'N-2013', 'Member', 'Disabled'),
(214, 'crowned_clown23@yahoo.com', '4ec0663ffb3ff24c418e73595dbaa1b9b327d87b', 201311281, 'Bernadette', 'Narciso', 'Santos', 'CPE', 'F', '09061058155', 'N-2013', 'Member', 'Disabled'),
(215, 'daniellebagares@yahoo.com', '835a1a512049eb474ee17b494b24cbac78da6e56', 201311476, 'Danielle', 'Bagares', 'Justiniano', 'CPE', 'F', '09424650001', 'N-2013', 'Member', 'Disabled'),
(216, 'jocelleqasilad@yahoo.com', 'e69b8c1b51be37818f79040469fa0a96484673a8', 201311712, 'Jochelle', 'Casilad', 'Garcia', 'IT-AGD', 'F', '09275911135', 'N-2013', 'Member', 'Disabled'),
(217, 'Bestilem@yahoo.com', '9a67a9d58968805ee9a68543107d1e729488938b', 201310539, 'Em', 'Bestil', 'Parohinog', 'IT-WMA', 'M', '09062000266', 'N-2013', 'Member', 'Disabled'),
(218, 'lukearvincortez@gmail.com', '0742ceeb5c0ff686c94d9770a6a761424ee5179c', 201020041, 'Luke Arvin', 'Cortez', 'Mauzar', 'IT-WAD', 'M', '09266308423', 'N-2013', 'Member', 'Disabled'),
(219, 'jatorre@feu-eac.edu.ph', '47b682e33568aec393ddb180d63abd141bae452e', 201310321, 'John Kenneth', 'Torre', 'Arbuyes', 'CS-SE', 'M', '09061071421', 'N-2013', 'Member', 'Disabled'),
(220, 'aldwingaa@yahoo.com', '6a08881c047a5fdc5e0779b6d0662eb3e48efd73', 201311855, 'John Aldwin', 'Gaa', '-', 'CS-SE', 'M', '09077538263', 'N-2013', 'Member', 'Disabled'),
(221, 'alfonsotamoriao@yahoo.com', '25f800dc41165988246deda694ab81df2f38318b', 201311302, 'Alfonso', 'Tamoria', 'Bangawan', 'CS-SE', 'M', '09267578343', 'L-2013', 'Member', 'Disabled'),
(222, 'alfonsotamoria@yahoo.com', '68906335b9934a735422716cd23f0ee62d1ab4c1', 201311625, 'Alfonso', 'Tamoria', 'Bangawan', 'CS-SE', 'M', '09267578343', 'L-2013', 'Member', 'Disabled'),
(223, 'joshua.dolor01@yahoo.com', 'ad70ab97ae1376e656002641cfb067c9c94906a2', 201210369, 'Joshua', 'Dolor', 'Olbes', 'IT-WMA', 'M', '09432539319', 'N-2013', 'Member', 'Disabled'),
(224, 'haazegarcia@yahoo.com', '089803a075fefa590d0855b55f818dadec3950c8', 201211778, 'Hazel Jayne', 'Garcia', 'De Vera', 'IT-WMA', 'F', '09054087837', 'N-2013', 'Member', 'Disabled'),
(225, 'raed_figueroa16@yahoo.com', 'c35b07262fca57647e4281358eec6674c2c5bb44', 201210546, 'Raed', 'Figueroa', 'Avenido', 'CPE', 'M', '09063893538', 'N-2013', 'Member', 'Disabled'),
(226, 'perezmarbobagustin@yahoo.com', '2d0fe3d2bac949b69dbb94d1da609113d4be7e68', 201311622, 'Maynard Lance', 'Perez', 'Agustin', 'CS-SE', 'M', '09152183816', 'N-2013', 'Member', 'Disabled'),
(227, 'paulino_recondo0725@yahoo.com', '466a80dd15d8d9aef3fd9d290ea303f2be7d5fac', 201310304, 'Paulino III', 'Recondo', 'Diokno', 'CS-SE', 'M', '09153027603', 'N-2013', 'Member', 'Disabled'),
(228, 'clarkblas_xd@yahoo.com', 'fa6690cbb4c28e783d433f5043f9a73bc1fea9f5', 201311682, 'Clark', 'Blas', 'Darlucio', 'CS-SE', 'M', '09177375547', 'N-2013', 'Member', 'Disabled'),
(229, 'truthcustom@yahoo.com', 'f878529cc9cc4bbda536b75dc030bb3c33ffca2f', 201210296, 'Justine', 'Laxamana', 'N/a', 'IT-WAD', 'M', '09053514769', 'N-2013', 'Member', 'Disabled'),
(230, 'slt1089@yahoo.com', '714f996249fb8ce1ba7ab52bc67ba393cb80997b', 200930120, 'Spielberg', 'Tan', 'Laborada', 'CS-GDD', 'M', '09224641007', 'L-2013', 'Member', 'Disabled'),
(231, 'lesacatristan@yahoo.com', '520dde20ef97b7419e26c136b8b811968d951b5a', 201312223, 'Tristan', 'Lesaca', 'Sardea', 'CS-SE', 'M', '09228332685', 'N-2013', 'Member', 'Disabled'),
(232, 'almazarpatpat@yahoo.com', 'b625b6c453463536dbb43c2d083b6e08b44124b5', 201212506, 'Patrick Joseph', 'Almazar', 'Catacutan', 'CE', 'M', '09265303975', 'N-2013', 'Member', 'Disabled'),
(233, 'charlyj_07@yahoo.com', 'ee60240c0759577f9b064e7e13f7935b85bb1f4c', 201310242, 'John Charly', 'Arceo', 'Atencia', 'CS-SE', 'M', '09263322754', 'N-2013', 'Member', 'Disabled'),
(234, 'antoneth.mendoza@yahoo.com', '3f405cde2fbf65dd594f1f000759f850234eadb9', 201311797, 'Jon Kenneth', 'Mendoza', 'Tumolva', 'CS-SE', 'M', '09067105737', 'N-2013', 'Member', 'Disabled'),
(235, 'cessgarin@gmail.com', 'dd277166c339880adf07e75f10475dbf13b6a029', 201011499, 'Princess', 'Garin', 'Macugay', 'IT-DA', 'F', '09066267977', 'N-2013', 'Member', 'Disabled'),
(236, 'carlosjr.cueto@yahoo.com', 'e6b6afbd6d76bb5d2041542d7d2e3fac5bb05593', 201020031, 'Carlos, Jr.', 'Cueto', 'Mercado', 'IT-WAD', 'M', '09157726156', 'N-2013', 'Member', 'Disabled'),
(237, 'haroldkenoks@yahoo.com', '0e0b22ad4a6066b3ebaee6703b12f442ea8f525d', 201011715, 'Harold', 'Quinones', 'Galero', 'IT-WAD', 'M', '09052265455', 'N-2013', 'Member', 'Disabled'),
(238, 'coronadocarlo11@yahoo.com', 'e70cae96129a8c3d52fe778cbb23abf75b870730', 201020027, 'Carlo', 'Coronado', 'Lucido', 'IT-WAD', 'M', '09352989982', 'N-2013', 'Member', 'Disabled'),
(239, 'arman.17@me.com', 'bbd27933ee82e388d7c1c145fb69ca46a120e687', 201011730, 'Arman King', 'Barrios', 'Aguna', 'IT-WAD', 'M', '09069390775', 'N-2013', 'Member', 'Disabled'),
(240, 'krishia_15@yahoo.com', 'd5cb6ad5c8fe1fc643041ea84f40080abc9df718', 201010678, 'Krishia Marrell Jean', 'Yan', 'Laprodes', 'CS-GDD', 'F', '09324747912', 'N-2013', 'Member', 'Disabled'),
(241, 'jerico.ferido@gmail.com', '73230b5c529f4ce742d135d7c53f9356e80da2a4', 201311040, 'Joshua Jerico Simon', 'Ferido', 'Barra', 'CS-SE', 'M', '09053471035', 'N-2013', 'Member', 'Disabled'),
(242, 'a_jason14@yahoo.com', 'a752c412b5dc43009870683e803d89721cfc6d55', 200930093, 'Neil Jason', 'Tan Lee', 'Vengado', 'CS-SE', 'M', '09173117423', 'N-2013', 'Member', 'Disabled'),
(243, 'paulo.ramos73@yahoo.com', '8df90f2cd7a09131d4ed9eb76555eaf140b09890', 201010310, 'Paulo', 'Ramos', 'Conde', 'CS-SE', 'M', '09167939174', 'N-2013', 'Member', 'Disabled'),
(244, 'bautista_1800@yahoo.com.ph', '6dbaaeb33830a6b053bf4de70129531b56954f4c', 201311298, 'Raineill Joshua', 'Bautista', 'Laguardia', 'CS-SE', 'M', '09272867188', 'N-2013', 'Member', 'Disabled'),
(245, 'arjaysiako@yahoo.com', '2e4046674e3c419955c9e5245090226a40026c2b', 201311180, 'Arjay', 'Valdez', 'De Vega', 'CS-SE', 'M', '09279565565', 'N-2013', 'Member', 'Disabled'),
(246, 'elric_takana@yahoo.com', '8d4d78fdbb7db9a79e46970a0de36c9c6b978572', 201112106, 'Fernando Khalil', 'Oroza', 'Laluna', 'CS-SE', 'M', '0', 'N-2013', 'Member', 'Disabled'),
(248, 'sunbunny_joanne@yahoo.com', 'a9f6894c6dbdbccb99a1fc4771afdfbdaa1c91ce', 200910480, 'Joanne', 'Silva', 'Dizon', 'CS-SE', 'F', '0', 'N-2013', 'Member', 'Disabled'),
(249, 'itzmenytz@yahoo.com', 'a9bf90749b40467d50c81c98b6cf74a980144b37', 201210757, 'Joseph', 'Dela Cruz', 'Medina', 'CS-SE', 'M', '0', 'N-2013', 'Member', 'Disabled'),
(250, 'mkcords@yahoo.com', '9623e992dba738080d9a6d0544227edc63ed0f79', 201011941, 'Jan Lou Adam', 'Cordero', 'Feria', 'IT-WAD', 'M', '0', 'N-2013', 'Member', 'Disabled'),
(251, 'aeireizielpalomares@yahoo.com', '44091588b0805728112d4a65534212b1fcf11fd4', 201010241, 'Aeireiziel', 'Palomares', 'TIu', 'IT-DA', 'F', '0', 'N-2013', 'Member', 'Disabled'),
(252, 'zedriz.deguia@outlook.com', '65afdaac4e345ac107a8b5f81b0dee43d7309316', 201110854, 'Zedriz', 'Guia', 'De', 'CPE', 'M', '09063894399', 'N-2013', 'Member', 'Disabled'),
(253, 'joenelle.caniza@yahoo.com', '617620b20eb45feceb54730b2c2cfdd423d1c7ab', 201212073, 'Joenelle Audrie', 'Caniza', 'Acbang', 'CS-SE', 'M', '09277733433', 'N-2013', 'Member', 'Disabled'),
(254, 'arnethlorrainecruz@yahoo.com', 'ecad9a58403cec71cf8c042d4e4c82374c3bc3b9', 201312162, 'Arneth Lorraine', 'Cruz', 'Cruz', 'ACT', 'F', '09428085316', 'L-2013', 'Member', 'Disabled'),
(255, 'vicbuluran@ymail.com', 'ecad9a58403cec71cf8c042d4e4c82374c3bc3b9', 201111728, 'Vic', 'Buluran', 'Torio', 'CS-SE', 'M', '09275509713', 'L-2013', 'Member', 'Disabled'),
(256, 'meiz_r@yahoo.com', '51220f022286b39f20b2e72f2b8d34795321941a', 201311150, 'Maria Krizza Meiz', 'Rosales', 'Delos Santos', 'CPE', 'F', '09355297304', 'N-2013', 'Member', 'Disabled'),
(276, 'russellpogi23@yahoo.com', '6852947aaabc02273837093f4dcce3d8c42f4cb3', 201312350, 'Russell', 'Cruz', 'A ', 'CS-SE', 'M', '', 'N-2013', 'Member', 'Disabled');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
