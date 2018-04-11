-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 14, 2018 at 10:04 AM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `printerproject`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `ISBN` mediumint(9) DEFAULT NULL,
  `Livre_name` text,
  `Livre_theme` text
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `ISBN`, `Livre_name`, `Livre_theme`) VALUES
(1, 1, 'tempor erat', 'ipsum'),
(2, 2, 'Vestibulum ante', 'Donec'),
(3, 3, 'semper auctor.', 'Cras'),
(4, 4, 'lorem ipsum', 'id'),
(5, 5, 'Vivamus rhoncus.', 'sed'),
(6, 6, 'nec enim.', 'dolor'),
(7, 7, 'Nullam scelerisque', 'et'),
(8, 8, 'eu eros.', 'ac,'),
(9, 9, 'diam luctus', 'ornare'),
(10, 10, 'dictum eleifend,', 'Ut'),
(11, 11, 'vulputate velit', 'parturient'),
(12, 12, 'mauris sagittis', 'diam.'),
(13, 13, 'Nulla tincidunt,', 'nibh'),
(14, 14, 'eget metus.', 'euismod'),
(15, 15, 'in magna.', 'Maecenas'),
(16, 16, 'Nulla eget', 'eu'),
(17, 17, 'ornare, elit', 'et'),
(18, 18, 'odio semper', 'natoque'),
(19, 19, 'metus. In', 'orci.'),
(20, 20, 'convallis, ante', 'eleifend,'),
(21, 21, 'velit. Quisque', 'neque'),
(22, 22, 'commodo hendrerit.', 'imperdiet'),
(23, 23, 'morbi tristique', 'vitae'),
(24, 24, 'nec tempus', 'dui,'),
(25, 25, 'massa lobortis', 'nec,'),
(26, 26, 'ornare sagittis', 'eleifend,'),
(27, 27, 'eu tellus', 'tellus.'),
(28, 28, 'Sed molestie.', 'sem,'),
(29, 29, 'non nisi.', 'urna'),
(30, 30, 'egestas rhoncus.', 'commodo'),
(31, 31, 'tristique neque', 'sagittis.'),
(32, 32, 'Aliquam erat', 'dui.'),
(33, 33, 'venenatis vel,', 'urna'),
(34, 34, 'fringilla, porttitor', 'eu'),
(35, 35, 'fermentum risus,', 'vitae'),
(36, 36, 'erat, eget', 'mus.'),
(37, 37, 'lobortis mauris.', 'vulputate,'),
(38, 38, 'in magna.', 'neque'),
(39, 39, 'dolor dolor,', 'facilisis'),
(40, 40, 'ac arcu.', 'odio,'),
(41, 41, 'sem. Nulla', 'ipsum'),
(42, 42, 'posuere cubilia', 'neque'),
(43, 43, 'Vivamus rhoncus.', 'non,'),
(44, 44, 'laoreet, libero', 'Phasellus'),
(45, 45, 'quis turpis', 'vel'),
(46, 46, 'Integer vulputate,', 'gravida.'),
(47, 47, 'Nunc sed', 'sollicitudin'),
(48, 48, 'erat semper', 'elementum,'),
(49, 49, 'dolor sit', 'a,'),
(50, 50, 'nec, malesuada', 'non,'),
(51, 51, 'ac mattis', 'Sed'),
(52, 52, 'leo. Vivamus', 'mattis'),
(53, 53, 'lectus sit', 'semper'),
(54, 54, 'ac orci.', 'Integer'),
(55, 55, 'eget mollis', 'scelerisque'),
(56, 56, 'nisi nibh', 'Lorem'),
(57, 57, 'Donec tempus,', 'cubilia'),
(58, 58, 'purus, in', 'semper'),
(59, 59, 'ut, molestie', 'et'),
(60, 60, 'facilisis eget,', 'nec,'),
(61, 61, 'elementum, lorem', 'leo'),
(62, 62, 'odio vel', 'et'),
(63, 63, 'Quisque purus', 'Morbi'),
(64, 64, 'et netus', 'placerat'),
(65, 65, 'Cum sociis', 'mus.'),
(66, 66, 'sociis natoque', 'Ut'),
(67, 67, 'montes, nascetur', 'leo.'),
(68, 68, 'eget metus', 'a'),
(69, 69, 'tellus eu', 'quis,'),
(70, 70, 'amet massa.', 'justo'),
(71, 71, 'eros. Nam', 'tincidunt'),
(72, 72, 'sollicitudin a,', 'metus.'),
(73, 73, 'posuere at,', 'cursus'),
(74, 74, 'purus, in', 'ipsum'),
(75, 75, 'enim. Suspendisse', 'eget'),
(76, 76, 'ornare, facilisis', 'aliquet,'),
(77, 77, 'velit justo', 'adipiscing'),
(78, 78, 'aliquam eros', 'et'),
(79, 79, 'eget varius', 'Suspendisse'),
(80, 80, 'auctor odio', 'dictum.'),
(81, 81, 'Donec egestas.', 'parturient'),
(82, 82, 'ante. Vivamus', 'risus'),
(83, 83, 'egestas. Aliquam', 'amet,'),
(84, 84, 'est mauris,', 'pede'),
(85, 85, 'libero dui', 'eleifend'),
(86, 86, 'porta elit,', 'et'),
(87, 87, 'luctus felis', 'magna'),
(88, 88, 'Nam porttitor', 'Integer'),
(89, 89, 'orci. Ut', 'eleifend,'),
(90, 90, 'orci, adipiscing', 'eleifend'),
(91, 91, 'gravida sit', 'cursus.'),
(92, 92, 'Donec tempus,', 'dui.'),
(93, 93, 'commodo hendrerit.', 'ultrices'),
(94, 94, 'Integer aliquam', 'sollicitudin'),
(95, 95, 'justo. Proin', 'Nunc'),
(96, 96, 'orci sem', 'libero'),
(97, 97, 'magna sed', 'rutrum.'),
(98, 98, 'massa. Integer', 'vulputate,'),
(99, 99, 'pede blandit', 'ornare,'),
(100, 100, 'Proin vel', 'eu,');

-- --------------------------------------------------------

--
-- Table structure for table `etudiant`
--

CREATE TABLE `etudiant` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `Etudiant_Name` varchar(255) DEFAULT NULL,
  `Etudiant_lastName` varchar(255) DEFAULT NULL,
  `Addresse` varchar(255) DEFAULT NULL,
  `Telephone` varchar(100) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `etudiant`
--

INSERT INTO `etudiant` (`id`, `Etudiant_Name`, `Etudiant_lastName`, `Addresse`, `Telephone`, `Email`) VALUES
(1, 'Mcdaniel', 'Michael', 'Ap #888-6176 Tellus Street', '03 56 54 94 07', 'non.lacinia@inmolestie.com'),
(2, 'Dickerson', 'Nomlanga', '801-9763 Pellentesque Rd.', '08 54 05 33 52', 'vehicula@dictumcursusNunc.com'),
(3, 'Gregory', 'Silas', '2221 Morbi Rd.', '01 39 32 12 27', 'vitae.nibh.Donec@ornareInfaucibus.edu'),
(4, 'Mcpherson', 'Kirestin', 'Ap #944-8538 Rhoncus. Avenue', '06 47 69 81 58', 'fringilla.est.Mauris@consequatnec.com'),
(5, 'Manning', 'Iliana', 'Ap #191-166 Nullam Av.', '05 98 21 53 41', 'et.ipsum@eudolor.co.uk'),
(6, 'Kelley', 'Carol', 'P.O. Box 852, 4473 Sit Rd.', '09 54 25 01 76', 'risus@Donecegestas.edu'),
(7, 'Maldonado', 'Vaughan', '173-767 Nunc, Rd.', '08 32 19 54 32', 'lacus@feugiatnon.org'),
(8, 'Moses', 'Jessamine', '657-5094 Sed Avenue', '06 32 97 45 25', 'Sed.nulla@arcueuodio.org'),
(9, 'Koch', 'Adria', '1251 Scelerisque Rd.', '07 52 00 93 95', 'enim.nisl.elementum@Aliquamtincidunt.edu'),
(10, 'Keith', 'Jordan', 'P.O. Box 471, 7793 Tempus St.', '03 91 56 83 57', 'Sed@odioauctor.org'),
(11, 'Potter', 'Gloria', 'Ap #177-4600 Nibh. Ave', '09 66 83 10 50', 'vel@FuscemollisDuis.net'),
(12, 'Page', 'Charles', '3113 Vulputate Street', '01 82 06 99 29', 'ut.erat@sagittisaugue.com'),
(13, 'Bray', 'Harriet', '933-3761 Molestie Rd.', '05 86 77 02 63', 'libero.at.auctor@aptent.org'),
(14, 'Guerra', 'Kamal', '6428 Vel Road', '03 98 31 82 85', 'nonummy@Donec.co.uk'),
(15, 'Weber', 'Kirsten', 'P.O. Box 332, 308 A Ave', '08 90 40 39 08', 'eu.eleifend@pedeCumsociis.org'),
(16, 'Contreras', 'Fuller', '2560 Velit. Ave', '06 05 67 70 08', 'Morbi.quis.urna@rhoncus.ca'),
(17, 'Matthews', 'Aaron', '9540 Lobortis Av.', '04 27 22 01 89', 'eros.Proin.ultrices@placeratvelit.org'),
(18, 'Francis', 'Hayes', '6276 Egestas Street', '04 71 24 93 72', 'Pellentesque.habitant@tortor.ca'),
(19, 'Solis', 'Ahmed', 'P.O. Box 983, 9821 Venenatis Av.', '01 23 28 55 48', 'vulputate.eu.odio@odiosagittis.net'),
(20, 'Nieves', 'Anastasia', '218-2010 In St.', '08 72 70 38 17', 'non.feugiat.nec@risusInmi.co.uk'),
(21, 'Leach', 'Aubrey', 'P.O. Box 882, 1792 Donec Av.', '08 53 19 91 05', 'quis@imperdietornare.edu'),
(22, 'Abbott', 'Acton', 'Ap #284-2812 Faucibus Street', '06 52 74 95 24', 'pede@odiosagittis.ca'),
(23, 'Hoffman', 'Alexandra', 'P.O. Box 939, 523 Consectetuer Street', '01 83 84 14 60', 'egestas.a.dui@aenimSuspendisse.co.uk'),
(24, 'Lyons', 'Cruz', 'P.O. Box 709, 5831 Interdum Street', '02 96 48 54 78', 'tellus.imperdiet@maurisSuspendisse.co.uk'),
(25, 'Booth', 'Mohammad', 'P.O. Box 388, 5937 Enim Road', '02 94 09 96 39', 'in@neque.net'),
(26, 'Bentley', 'Jarrod', '226-6105 Ornare Street', '03 60 94 92 14', 'mus@felis.ca'),
(27, 'Frank', 'Kai', '186-3684 Ipsum. St.', '03 71 10 87 52', 'et@Etiam.net'),
(28, 'Tillman', 'Faith', '9636 Id, Rd.', '02 30 88 82 49', 'risus.varius.orci@vulputateullamcorpermagna.org'),
(29, 'Witt', 'Nyssa', '8298 Non Avenue', '01 23 17 96 58', 'non.quam.Pellentesque@quislectusNullam.edu'),
(30, 'Schwartz', 'Ruth', '1335 Duis Road', '03 88 82 98 12', 'nisl@Aliquamvulputateullamcorper.edu'),
(31, 'Wooten', 'Sade', '808-2955 Elementum Rd.', '07 24 14 58 95', 'Aenean@etmagnis.org'),
(32, 'Cobb', 'Doris', 'P.O. Box 711, 7550 Nec, St.', '01 41 05 09 62', 'dolor.sit.amet@semper.edu'),
(33, 'Levy', 'Phillip', '499-8588 Sagittis. Road', '02 73 05 68 57', 'enim.sit.amet@seddolor.net'),
(34, 'Melton', 'Yoshi', '5598 Sed Road', '02 55 26 47 40', 'adipiscing.lobortis@aenim.edu'),
(35, 'Burgess', 'Carl', '9592 Vestibulum Av.', '01 59 82 08 17', 'bibendum.fermentum@semper.net'),
(36, 'Weber', 'Dai', 'Ap #527-2595 Pulvinar Road', '04 11 75 13 86', 'massa@facilisis.ca'),
(37, 'Haynes', 'Alan', 'Ap #649-4461 Faucibus Street', '04 45 10 23 62', 'magna.malesuada@accumsannequeet.net'),
(38, 'Hickman', 'Byron', '543-2178 Faucibus Avenue', '06 10 27 56 22', 'lectus@Fusce.com'),
(39, 'Horne', 'Ulysses', 'P.O. Box 393, 2164 Semper Road', '01 69 78 75 56', 'erat.vitae@Curabitur.com'),
(40, 'Gould', 'Connor', '185-8664 Tellus. Avenue', '03 00 65 67 83', 'Integer.tincidunt.aliquam@Crassed.edu'),
(41, 'Bradford', 'Dolan', 'P.O. Box 944, 1892 Nunc Street', '01 41 51 73 71', 'penatibus.et.magnis@Vivamusnon.com'),
(42, 'Velazquez', 'Yuli', '3025 Non Rd.', '03 98 58 47 16', 'magna.a.neque@nuncsedpede.ca'),
(43, 'Holcomb', 'Porter', 'Ap #179-2758 Sit St.', '01 16 61 82 20', 'ridiculus@Nullam.edu'),
(44, 'Saunders', 'Odysseus', '858-930 Phasellus Ave', '08 31 98 65 02', 'orci@leoelementum.edu'),
(45, 'Palmer', 'Keaton', '8532 Sed Rd.', '06 36 79 41 68', 'Morbi@nectempusscelerisque.net'),
(46, 'Harrington', 'Beau', 'P.O. Box 368, 7640 Nulla Street', '07 68 62 98 23', 'faucibus.leo@Vivamussitamet.net'),
(47, 'Larson', 'Scarlett', '1447 Faucibus. St.', '08 58 82 86 12', 'Sed.nec.metus@dictumeuplacerat.co.uk'),
(48, 'Horton', 'Gillian', 'P.O. Box 561, 6705 Elit Avenue', '02 16 45 29 79', 'nascetur@nec.edu'),
(49, 'Chang', 'Chester', '942-3711 Nunc Av.', '06 00 62 19 32', 'leo.Cras@porttitor.org'),
(50, 'Fields', 'Sigourney', 'Ap #422-1900 Egestas St.', '05 47 97 88 76', 'dolor.egestas.rhoncus@Quisqueimperdieterat.org'),
(51, 'English', 'Sandra', 'Ap #949-425 Nunc Rd.', '07 37 65 52 08', 'gravida.nunc.sed@miDuis.org'),
(52, 'Ward', 'Ariana', '1916 Magna, Rd.', '04 23 43 46 87', 'vitae@aduiCras.org'),
(53, 'Mcdonald', 'Kirk', 'P.O. Box 550, 2819 Aliquam Rd.', '05 62 33 09 49', 'Cras.eget@nec.co.uk'),
(54, 'Holman', 'Michael', '8086 Fringilla Road', '06 39 27 88 62', 'Cras@rhoncusDonecest.edu'),
(55, 'Nicholson', 'Tad', 'Ap #488-3196 Sollicitudin Street', '08 87 83 70 03', 'ridiculus@luctusetultrices.com'),
(56, 'Osborn', 'Colt', '5511 Ridiculus Avenue', '07 24 82 21 59', 'orci@Proin.edu'),
(57, 'Gibson', 'Abraham', 'Ap #907-2030 Eget, Avenue', '06 41 85 09 79', 'vestibulum.neque@liberolacus.ca'),
(58, 'Hendricks', 'Keefe', 'P.O. Box 843, 4285 Egestas. Road', '05 63 37 58 81', 'dui.Cum@nislQuisquefringilla.net'),
(59, 'Leach', 'Evelyn', 'Ap #335-3630 Metus Rd.', '09 31 61 83 86', 'adipiscing@bibendumullamcorperDuis.org'),
(60, 'Cummings', 'Nita', 'Ap #161-8057 Metus St.', '02 54 62 78 03', 'mauris.Suspendisse.aliquet@morbi.edu'),
(61, 'Perez', 'Sloane', 'Ap #583-9977 Nascetur Rd.', '07 51 44 78 06', 'nulla.vulputate.dui@torquent.edu'),
(62, 'Acosta', 'Hoyt', 'P.O. Box 201, 9419 Lobortis Street', '01 14 22 78 59', 'dui@tempusscelerisque.com'),
(63, 'Sanchez', 'Athena', '762-9935 Eros Road', '08 96 96 09 18', 'vitae.posuere@commodoipsumSuspendisse.net'),
(64, 'Beck', 'Raymond', 'P.O. Box 606, 9833 Dictum Av.', '01 64 65 13 81', 'sed.turpis.nec@Aliquam.com'),
(65, 'Key', 'Carolyn', 'P.O. Box 487, 9345 Donec St.', '03 76 53 22 65', 'molestie@parturientmontesnascetur.edu'),
(66, 'Randolph', 'Samantha', '4947 Pellentesque. St.', '04 42 14 23 22', 'montes@eutemporerat.com'),
(67, 'Stark', 'Colin', '138-1979 Id Av.', '09 17 39 99 65', 'iaculis.lacus@metussitamet.ca'),
(68, 'Cameron', 'Mannix', '5897 Hendrerit Avenue', '06 35 82 83 09', 'aliquet.Phasellus.fermentum@cursusaenim.org'),
(69, 'Villarreal', 'Hedda', '8029 Lacus. Av.', '03 86 80 03 86', 'et.libero.Proin@arcuCurabitur.ca'),
(70, 'Downs', 'Kimberly', 'Ap #861-233 Dui. St.', '03 21 38 68 33', 'Praesent@inmagnaPhasellus.net'),
(71, 'Cotton', 'Otto', 'Ap #890-5501 Nonummy Avenue', '08 11 84 08 11', 'risus.Donec@est.edu'),
(72, 'Roach', 'Ciara', '3197 Dolor Street', '08 96 81 71 51', 'adipiscing.elit@ametultriciessem.com'),
(73, 'Morse', 'Yardley', '150-4614 Integer Rd.', '05 09 58 99 70', 'sagittis.Nullam.vitae@Suspendisse.net'),
(74, 'Camacho', 'Wilma', '8350 At, Av.', '08 34 82 30 47', 'mollis.vitae.posuere@odioEtiam.org'),
(75, 'Hood', 'Colin', 'P.O. Box 419, 3558 Dolor, Rd.', '01 12 22 22 24', 'dolor@a.co.uk'),
(76, 'Barker', 'William', 'P.O. Box 619, 4371 Sem Road', '06 66 47 56 96', 'libero.Donec@utquam.com'),
(77, 'Macdonald', 'Flavia', 'Ap #214-3358 Eros. Rd.', '09 39 45 83 97', 'neque.et.nunc@portaelit.ca'),
(78, 'Shaw', 'Laurel', '227-5710 Duis Road', '06 05 50 34 12', 'consectetuer.adipiscing@anteMaecenas.org'),
(79, 'Greene', 'Hedley', 'Ap #370-4850 Aliquet, Av.', '02 58 60 93 19', 'morbi.tristique@arcu.com'),
(80, 'Wilder', 'Zane', '3490 Enim. Rd.', '05 30 38 73 56', 'non@volutpatNulladignissim.co.uk'),
(81, 'Aguirre', 'Dane', '838-1014 Duis Street', '03 82 07 74 65', 'a.scelerisque@faucibus.org'),
(82, 'Boyer', 'Briar', '483-6862 Risus. St.', '05 36 25 37 48', 'laoreet.libero.et@orciDonecnibh.ca'),
(83, 'Butler', 'Keane', '295-6750 Nullam Rd.', '08 92 36 09 00', 'lacinia@magnis.com'),
(84, 'Cooper', 'Ahmed', '637 Metus St.', '01 50 74 64 92', 'et.libero.Proin@cubilia.org'),
(85, 'Arnold', 'Colton', '868-4192 Volutpat Ave', '07 17 87 03 31', 'nulla.ante@enimEtiam.edu'),
(86, 'Joyce', 'Neil', 'P.O. Box 380, 4056 Senectus Av.', '05 12 50 19 64', 'molestie.tortor.nibh@vitae.edu'),
(87, 'Obrien', 'Ronan', 'Ap #140-848 Dolor. St.', '09 69 81 02 03', 'eget@atpede.com'),
(88, 'Kim', 'Mannix', 'P.O. Box 299, 192 Dis Street', '09 83 82 68 40', 'pede.nonummy@felis.ca'),
(89, 'Cline', 'Timothy', 'P.O. Box 777, 6577 Fusce St.', '02 99 69 12 08', 'risus.Nunc@auguemalesuada.net'),
(90, 'Pickett', 'Yuli', 'P.O. Box 395, 7770 Egestas St.', '04 94 15 14 57', 'Nunc.mauris.elit@convallisest.ca'),
(91, 'Klein', 'Autumn', '737-6176 Libero Av.', '01 21 62 82 22', 'sit.amet@accumsan.com'),
(92, 'Day', 'Benedict', 'P.O. Box 475, 8179 Nulla Avenue', '05 81 55 38 52', 'lacinia@eunequepellentesque.com'),
(93, 'Conner', 'Orli', '325-4957 Risus. Street', '07 66 68 47 19', 'Donec.nibh@quam.co.uk'),
(94, 'Hogan', 'Cedric', 'Ap #242-6684 In Rd.', '03 18 57 29 73', 'tincidunt.adipiscing.Mauris@liberoatauctor.com'),
(95, 'Wagner', 'Felix', 'P.O. Box 427, 732 Sollicitudin Rd.', '04 32 85 46 70', 'leo.in.lobortis@vitaedolorDonec.net'),
(96, 'Parrish', 'Ramona', '849-3650 Dictum. Road', '09 00 99 42 93', 'in.consectetuer@Sedpharetrafelis.ca'),
(97, 'Hendrix', 'Cody', 'P.O. Box 790, 5085 Sem St.', '06 67 19 70 19', 'lobortis.mauris@etpedeNunc.org'),
(98, 'Allen', 'Ariana', '7010 Et, St.', '07 11 15 22 00', 'volutpat@lacusMaurisnon.net'),
(99, 'Owen', 'Sloane', 'P.O. Box 643, 4510 Eu Street', '08 63 75 13 49', 'tristique.pharetra.Quisque@etcommodoat.org'),
(100, 'Walton', 'Xavier', 'P.O. Box 636, 7058 Torquent St.', '02 28 26 90 79', 'Mauris@necimperdietnec.edu');

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `Date_Emprunt` varchar(255) DEFAULT NULL,
  `Date_Retour` varchar(255) DEFAULT NULL,
  `Id_Etudiant` mediumint(9) DEFAULT NULL,
  `ISBN` mediumint(9) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`id`, `Date_Emprunt`, `Date_Retour`, `Id_Etudiant`, `ISBN`) VALUES
(1, '11.14.18', '01.20.19', 57, 29),
(2, '12.01.18', '11.10.17', 55, 81),
(3, '07.30.17', '12.14.17', 1, 46),
(4, '02.24.17', '07.27.17', 16, 50),
(5, '02.23.18', '07.09.18', 51, 52),
(6, '07.29.18', '12.17.18', 83, 8),
(7, '11.16.18', '02.20.17', 52, 44),
(8, '11.02.18', '04.23.18', 18, 5),
(9, '11.24.17', '03.25.18', 1, 69),
(10, '02.12.18', '08.03.18', 40, 90),
(11, '10.21.18', '08.21.18', 24, 44),
(12, '12.09.17', '04.25.17', 38, 45),
(13, '02.04.18', '04.09.17', 46, 14),
(14, '04.23.17', '04.12.18', 18, 15),
(15, '12.28.18', '03.30.17', 49, 55),
(16, '03.13.17', '09.13.17', 29, 93),
(17, '09.05.17', '02.03.18', 99, 67),
(18, '10.30.17', '09.01.17', 62, 61),
(19, '08.10.17', '01.01.19', 6, 28),
(20, '01.21.19', '08.12.17', 90, 96),
(21, '06.20.17', '08.01.17', 69, 60),
(22, '04.24.17', '04.09.17', 41, 29),
(23, '09.20.17', '12.19.17', 73, 68),
(24, '06.10.18', '06.19.17', 31, 90),
(25, '05.03.18', '07.18.17', 6, 11),
(26, '11.19.17', '10.28.18', 45, 4),
(27, '02.11.18', '01.01.19', 38, 84),
(28, '01.17.18', '02.23.17', 43, 18),
(29, '07.16.18', '08.06.18', 95, 39),
(30, '06.10.18', '07.17.17', 63, 46),
(31, '05.05.18', '08.17.18', 53, 15),
(32, '11.25.18', '03.03.17', 49, 10),
(33, '02.03.17', '03.10.18', 73, 48),
(34, '05.01.18', '05.18.18', 2, 33),
(35, '04.20.18', '10.14.18', 70, 42),
(36, '10.10.18', '06.06.18', 84, 6),
(37, '03.08.17', '05.09.17', 100, 65),
(38, '11.07.18', '09.30.18', 87, 33),
(39, '02.01.19', '09.11.18', 77, 74),
(40, '04.05.18', '04.04.18', 87, 44),
(41, '05.27.17', '01.03.18', 78, 46),
(42, '12.16.17', '03.18.17', 90, 16),
(43, '11.27.17', '12.12.17', 100, 81),
(44, '11.29.17', '12.11.18', 100, 85),
(45, '01.15.19', '07.08.17', 94, 42),
(46, '06.21.18', '09.17.17', 85, 62),
(47, '07.27.18', '05.16.18', 68, 51),
(48, '04.06.18', '02.21.18', 88, 55),
(49, '12.18.17', '04.23.17', 32, 94),
(50, '11.19.17', '09.01.18', 95, 12),
(51, '03.10.17', '12.17.18', 42, 67),
(52, '03.15.18', '01.22.18', 27, 28),
(53, '07.18.18', '01.15.18', 100, 94),
(54, '03.18.18', '10.10.17', 87, 86),
(55, '11.01.17', '12.25.17', 25, 50),
(56, '08.28.18', '05.21.18', 61, 18),
(57, '12.21.18', '04.27.18', 25, 71),
(58, '01.20.18', '07.07.17', 26, 62),
(59, '06.23.18', '11.14.17', 37, 84),
(60, '08.18.17', '03.02.17', 96, 26),
(61, '02.09.17', '04.18.18', 33, 4),
(62, '12.20.18', '05.04.18', 2, 34),
(63, '01.21.19', '12.18.17', 51, 41),
(64, '07.09.17', '09.10.18', 77, 74),
(65, '05.19.17', '07.28.17', 24, 6),
(66, '07.06.18', '02.01.17', 1, 22),
(67, '11.26.18', '08.04.17', 34, 43),
(68, '07.20.18', '02.02.17', 60, 26),
(69, '08.30.18', '09.15.18', 42, 80),
(70, '10.15.18', '09.17.17', 64, 81),
(71, '05.22.17', '01.18.19', 49, 96),
(72, '12.10.17', '07.07.18', 99, 87),
(73, '12.10.17', '06.08.17', 46, 40),
(74, '10.12.18', '07.21.17', 98, 74),
(75, '09.12.18', '10.19.17', 10, 6),
(76, '08.22.18', '05.02.18', 81, 35),
(77, '08.12.18', '10.03.17', 10, 15),
(78, '06.10.17', '06.24.18', 84, 33),
(79, '10.15.17', '12.23.18', 23, 52),
(80, '02.17.17', '10.16.17', 94, 20),
(81, '06.13.17', '06.06.17', 32, 23),
(82, '06.06.18', '08.28.18', 73, 12),
(83, '11.13.17', '09.09.17', 38, 64),
(84, '04.29.17', '08.13.18', 38, 53),
(85, '04.21.17', '04.15.17', 95, 92),
(86, '12.08.17', '03.17.18', 12, 34),
(87, '04.16.18', '10.02.17', 48, 100),
(88, '12.18.17', '10.01.18', 83, 79),
(89, '11.26.17', '02.21.18', 65, 62),
(90, '04.19.18', '02.05.18', 6, 9),
(91, '03.04.18', '10.22.17', 83, 47),
(92, '06.24.17', '02.26.18', 27, 82),
(93, '05.22.17', '11.22.18', 15, 10),
(94, '07.24.18', '03.03.18', 65, 59),
(95, '01.19.19', '06.27.17', 56, 74),
(96, '11.25.17', '12.25.18', 49, 36),
(97, '10.06.17', '11.09.17', 69, 10),
(98, '03.08.17', '04.26.17', 38, 12),
(99, '11.11.17', '10.03.18', 19, 85),
(100, '02.01.19', '01.29.18', 72, 43),
(101, '09.10.17', '03.17.18', 70, 68),
(102, '03.05.17', '10.25.17', 62, 50),
(103, '05.01.18', '11.28.17', 84, 84),
(104, '06.04.18', '08.09.17', 14, 15),
(105, '02.14.18', '06.28.18', 16, 29),
(106, '03.21.17', '06.17.18', 18, 23),
(107, '09.16.18', '07.30.17', 82, 29),
(108, '03.16.18', '11.21.17', 92, 98),
(109, '10.11.17', '10.28.17', 49, 29),
(110, '02.07.19', '10.04.18', 67, 69),
(111, '07.31.18', '11.14.17', 68, 33),
(112, '11.11.17', '12.13.18', 63, 54),
(113, '05.03.18', '03.09.17', 5, 12),
(114, '01.19.19', '01.07.19', 27, 76),
(115, '01.20.18', '11.29.17', 62, 24),
(116, '03.02.17', '11.21.17', 42, 29),
(117, '04.19.17', '03.18.18', 93, 51),
(118, '09.30.17', '10.20.17', 90, 23),
(119, '12.18.18', '12.25.18', 7, 11),
(120, '04.23.17', '05.08.17', 35, 59),
(121, '05.20.17', '02.08.17', 49, 97),
(122, '04.05.17', '04.12.18', 96, 49),
(123, '10.22.18', '01.04.18', 63, 11),
(124, '01.11.19', '03.25.18', 21, 72),
(125, '10.10.18', '04.02.18', 37, 83),
(126, '01.06.19', '10.13.17', 94, 78),
(127, '10.05.18', '04.29.18', 6, 88),
(128, '12.28.17', '12.17.18', 95, 64),
(129, '02.06.18', '02.03.18', 57, 70),
(130, '10.07.17', '01.15.18', 78, 85),
(131, '04.02.17', '03.23.18', 48, 38),
(132, '05.11.18', '07.23.18', 54, 39),
(133, '02.21.18', '05.25.17', 87, 40),
(134, '09.06.17', '05.10.18', 96, 60),
(135, '06.22.17', '06.06.18', 67, 100),
(136, '04.07.17', '11.19.18', 35, 43),
(137, '09.16.18', '12.07.17', 81, 18),
(138, '08.02.17', '07.26.17', 66, 75),
(139, '01.07.18', '02.16.18', 30, 87),
(140, '01.14.18', '08.22.17', 87, 15),
(141, '10.10.18', '07.27.17', 53, 52),
(142, '11.21.17', '10.29.18', 10, 94),
(143, '01.07.19', '03.14.17', 31, 54),
(144, '10.16.18', '09.06.17', 69, 96),
(145, '12.21.17', '07.29.17', 100, 6),
(146, '11.19.18', '01.16.19', 94, 77),
(147, '07.20.18', '03.02.18', 6, 69),
(148, '08.04.17', '02.13.18', 46, 59),
(149, '02.17.17', '12.01.18', 84, 93),
(150, '09.12.17', '10.18.18', 59, 81),
(151, '02.15.18', '10.04.18', 89, 68),
(152, '07.24.17', '09.27.17', 57, 78),
(153, '07.05.17', '07.10.18', 51, 33),
(154, '07.08.17', '12.18.17', 87, 43),
(155, '06.05.18', '04.15.17', 92, 12),
(156, '05.15.18', '09.22.17', 28, 7),
(157, '08.02.18', '09.24.17', 59, 45),
(158, '04.02.17', '11.26.17', 41, 25),
(159, '11.26.17', '01.13.19', 38, 15),
(160, '02.18.18', '01.17.18', 75, 46),
(161, '08.25.18', '03.12.17', 60, 54),
(162, '11.10.17', '04.07.18', 43, 84),
(163, '08.07.18', '04.15.18', 35, 7),
(164, '10.10.17', '03.04.17', 13, 82),
(165, '12.10.18', '02.11.17', 59, 24),
(166, '05.20.18', '05.31.18', 10, 62),
(167, '12.07.17', '01.08.19', 97, 69),
(168, '11.12.18', '02.06.19', 93, 88),
(169, '10.25.18', '02.20.18', 65, 27),
(170, '04.14.17', '01.02.19', 61, 89),
(171, '03.23.17', '01.22.19', 55, 84),
(172, '10.22.17', '05.13.17', 42, 54),
(173, '09.19.17', '03.23.18', 39, 72),
(174, '07.06.18', '05.28.17', 99, 97),
(175, '08.29.17', '12.10.17', 94, 12),
(176, '10.28.18', '07.31.18', 7, 33),
(177, '11.22.18', '07.06.17', 28, 25),
(178, '09.12.18', '01.09.18', 78, 30),
(179, '11.16.18', '02.22.18', 100, 53),
(180, '11.29.17', '06.22.17', 70, 56),
(181, '03.15.18', '10.28.17', 86, 52),
(182, '12.15.18', '09.02.17', 93, 80),
(183, '11.23.17', '08.03.17', 45, 15),
(184, '04.21.18', '04.20.17', 93, 72),
(185, '11.05.17', '08.27.18', 17, 32),
(186, '12.11.18', '09.16.17', 26, 34),
(187, '07.29.17', '05.08.17', 65, 97),
(188, '02.11.18', '02.13.18', 62, 88),
(189, '01.18.19', '03.26.17', 88, 68),
(190, '10.10.18', '02.15.18', 94, 73),
(191, '04.11.17', '09.21.17', 6, 82),
(192, '12.05.17', '09.22.17', 7, 39),
(193, '08.15.18', '12.09.18', 26, 4),
(194, '02.16.17', '10.08.18', 91, 61),
(195, '12.02.17', '12.13.18', 7, 91),
(196, '04.16.17', '03.30.17', 23, 71),
(197, '12.29.18', '10.20.18', 34, 1),
(198, '06.05.18', '09.30.18', 37, 36),
(199, '03.15.18', '02.18.18', 38, 16),
(200, '01.04.19', '01.06.19', 57, 7);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `etudiant`
--
ALTER TABLE `etudiant`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_ISBN` (`ISBN`),
  ADD KEY `fk_Etudiant_id` (`Id_Etudiant`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
--
-- AUTO_INCREMENT for table `etudiant`
--
ALTER TABLE `etudiant`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
--
-- AUTO_INCREMENT for table `history`
--
ALTER TABLE `history`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
