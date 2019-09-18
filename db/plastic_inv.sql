-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 18, 2019 at 09:05 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `plastic_inv`
--

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `id` int(11) NOT NULL,
  `iso` char(2) NOT NULL,
  `name` varchar(80) NOT NULL,
  `nicename` varchar(80) NOT NULL,
  `iso3` char(3) DEFAULT NULL,
  `numcode` smallint(6) DEFAULT NULL,
  `phonecode` int(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES
(1, 'AF', 'AFGHANISTAN', 'Afghanistan', 'AFG', 4, 93),
(2, 'AL', 'ALBANIA', 'Albania', 'ALB', 8, 355),
(3, 'DZ', 'ALGERIA', 'Algeria', 'DZA', 12, 213),
(4, 'AS', 'AMERICAN SAMOA', 'American Samoa', 'ASM', 16, 1684),
(5, 'AD', 'ANDORRA', 'Andorra', 'AND', 20, 376),
(6, 'AO', 'ANGOLA', 'Angola', 'AGO', 24, 244),
(7, 'AI', 'ANGUILLA', 'Anguilla', 'AIA', 660, 1264),
(8, 'AQ', 'ANTARCTICA', 'Antarctica', NULL, NULL, 0),
(9, 'AG', 'ANTIGUA AND BARBUDA', 'Antigua and Barbuda', 'ATG', 28, 1268),
(10, 'AR', 'ARGENTINA', 'Argentina', 'ARG', 32, 54),
(11, 'AM', 'ARMENIA', 'Armenia', 'ARM', 51, 374),
(12, 'AW', 'ARUBA', 'Aruba', 'ABW', 533, 297),
(13, 'AU', 'AUSTRALIA', 'Australia', 'AUS', 36, 61),
(14, 'AT', 'AUSTRIA', 'Austria', 'AUT', 40, 43),
(15, 'AZ', 'AZERBAIJAN', 'Azerbaijan', 'AZE', 31, 994),
(16, 'BS', 'BAHAMAS', 'Bahamas', 'BHS', 44, 1242),
(17, 'BH', 'BAHRAIN', 'Bahrain', 'BHR', 48, 973),
(18, 'BD', 'BANGLADESH', 'Bangladesh', 'BGD', 50, 880),
(19, 'BB', 'BARBADOS', 'Barbados', 'BRB', 52, 1246),
(20, 'BY', 'BELARUS', 'Belarus', 'BLR', 112, 375),
(21, 'BE', 'BELGIUM', 'Belgium', 'BEL', 56, 32),
(22, 'BZ', 'BELIZE', 'Belize', 'BLZ', 84, 501),
(23, 'BJ', 'BENIN', 'Benin', 'BEN', 204, 229),
(24, 'BM', 'BERMUDA', 'Bermuda', 'BMU', 60, 1441),
(25, 'BT', 'BHUTAN', 'Bhutan', 'BTN', 64, 975),
(26, 'BO', 'BOLIVIA', 'Bolivia', 'BOL', 68, 591),
(27, 'BA', 'BOSNIA AND HERZEGOVINA', 'Bosnia and Herzegovina', 'BIH', 70, 387),
(28, 'BW', 'BOTSWANA', 'Botswana', 'BWA', 72, 267),
(29, 'BV', 'BOUVET ISLAND', 'Bouvet Island', NULL, NULL, 0),
(30, 'BR', 'BRAZIL', 'Brazil', 'BRA', 76, 55),
(31, 'IO', 'BRITISH INDIAN OCEAN TERRITORY', 'British Indian Ocean Territory', NULL, NULL, 246),
(32, 'BN', 'BRUNEI DARUSSALAM', 'Brunei Darussalam', 'BRN', 96, 673),
(33, 'BG', 'BULGARIA', 'Bulgaria', 'BGR', 100, 359),
(34, 'BF', 'BURKINA FASO', 'Burkina Faso', 'BFA', 854, 226),
(35, 'BI', 'BURUNDI', 'Burundi', 'BDI', 108, 257),
(36, 'KH', 'CAMBODIA', 'Cambodia', 'KHM', 116, 855),
(37, 'CM', 'CAMEROON', 'Cameroon', 'CMR', 120, 237),
(38, 'CA', 'CANADA', 'Canada', 'CAN', 124, 1),
(39, 'CV', 'CAPE VERDE', 'Cape Verde', 'CPV', 132, 238),
(40, 'KY', 'CAYMAN ISLANDS', 'Cayman Islands', 'CYM', 136, 1345),
(41, 'CF', 'CENTRAL AFRICAN REPUBLIC', 'Central African Republic', 'CAF', 140, 236),
(42, 'TD', 'CHAD', 'Chad', 'TCD', 148, 235),
(43, 'CL', 'CHILE', 'Chile', 'CHL', 152, 56),
(44, 'CN', 'CHINA', 'China', 'CHN', 156, 86),
(45, 'CX', 'CHRISTMAS ISLAND', 'Christmas Island', NULL, NULL, 61),
(46, 'CC', 'COCOS (KEELING) ISLANDS', 'Cocos (Keeling) Islands', NULL, NULL, 672),
(47, 'CO', 'COLOMBIA', 'Colombia', 'COL', 170, 57),
(48, 'KM', 'COMOROS', 'Comoros', 'COM', 174, 269),
(49, 'CG', 'CONGO', 'Congo', 'COG', 178, 242),
(50, 'CD', 'CONGO, THE DEMOCRATIC REPUBLIC OF THE', 'Congo, the Democratic Republic of the', 'COD', 180, 242),
(51, 'CK', 'COOK ISLANDS', 'Cook Islands', 'COK', 184, 682),
(52, 'CR', 'COSTA RICA', 'Costa Rica', 'CRI', 188, 506),
(53, 'CI', 'COTE D\'IVOIRE', 'Cote D\'Ivoire', 'CIV', 384, 225),
(54, 'HR', 'CROATIA', 'Croatia', 'HRV', 191, 385),
(55, 'CU', 'CUBA', 'Cuba', 'CUB', 192, 53),
(56, 'CY', 'CYPRUS', 'Cyprus', 'CYP', 196, 357),
(57, 'CZ', 'CZECH REPUBLIC', 'Czech Republic', 'CZE', 203, 420),
(58, 'DK', 'DENMARK', 'Denmark', 'DNK', 208, 45),
(59, 'DJ', 'DJIBOUTI', 'Djibouti', 'DJI', 262, 253),
(60, 'DM', 'DOMINICA', 'Dominica', 'DMA', 212, 1767),
(61, 'DO', 'DOMINICAN REPUBLIC', 'Dominican Republic', 'DOM', 214, 1809),
(62, 'EC', 'ECUADOR', 'Ecuador', 'ECU', 218, 593),
(63, 'EG', 'EGYPT', 'Egypt', 'EGY', 818, 20),
(64, 'SV', 'EL SALVADOR', 'El Salvador', 'SLV', 222, 503),
(65, 'GQ', 'EQUATORIAL GUINEA', 'Equatorial Guinea', 'GNQ', 226, 240),
(66, 'ER', 'ERITREA', 'Eritrea', 'ERI', 232, 291),
(67, 'EE', 'ESTONIA', 'Estonia', 'EST', 233, 372),
(68, 'ET', 'ETHIOPIA', 'Ethiopia', 'ETH', 231, 251),
(69, 'FK', 'FALKLAND ISLANDS (MALVINAS)', 'Falkland Islands (Malvinas)', 'FLK', 238, 500),
(70, 'FO', 'FAROE ISLANDS', 'Faroe Islands', 'FRO', 234, 298),
(71, 'FJ', 'FIJI', 'Fiji', 'FJI', 242, 679),
(72, 'FI', 'FINLAND', 'Finland', 'FIN', 246, 358),
(73, 'FR', 'FRANCE', 'France', 'FRA', 250, 33),
(74, 'GF', 'FRENCH GUIANA', 'French Guiana', 'GUF', 254, 594),
(75, 'PF', 'FRENCH POLYNESIA', 'French Polynesia', 'PYF', 258, 689),
(76, 'TF', 'FRENCH SOUTHERN TERRITORIES', 'French Southern Territories', NULL, NULL, 0),
(77, 'GA', 'GABON', 'Gabon', 'GAB', 266, 241),
(78, 'GM', 'GAMBIA', 'Gambia', 'GMB', 270, 220),
(79, 'GE', 'GEORGIA', 'Georgia', 'GEO', 268, 995),
(80, 'DE', 'GERMANY', 'Germany', 'DEU', 276, 49),
(81, 'GH', 'GHANA', 'Ghana', 'GHA', 288, 233),
(82, 'GI', 'GIBRALTAR', 'Gibraltar', 'GIB', 292, 350),
(83, 'GR', 'GREECE', 'Greece', 'GRC', 300, 30),
(84, 'GL', 'GREENLAND', 'Greenland', 'GRL', 304, 299),
(85, 'GD', 'GRENADA', 'Grenada', 'GRD', 308, 1473),
(86, 'GP', 'GUADELOUPE', 'Guadeloupe', 'GLP', 312, 590),
(87, 'GU', 'GUAM', 'Guam', 'GUM', 316, 1671),
(88, 'GT', 'GUATEMALA', 'Guatemala', 'GTM', 320, 502),
(89, 'GN', 'GUINEA', 'Guinea', 'GIN', 324, 224),
(90, 'GW', 'GUINEA-BISSAU', 'Guinea-Bissau', 'GNB', 624, 245),
(91, 'GY', 'GUYANA', 'Guyana', 'GUY', 328, 592),
(92, 'HT', 'HAITI', 'Haiti', 'HTI', 332, 509),
(93, 'HM', 'HEARD ISLAND AND MCDONALD ISLANDS', 'Heard Island and Mcdonald Islands', NULL, NULL, 0),
(94, 'VA', 'HOLY SEE (VATICAN CITY STATE)', 'Holy See (Vatican City State)', 'VAT', 336, 39),
(95, 'HN', 'HONDURAS', 'Honduras', 'HND', 340, 504),
(96, 'HK', 'HONG KONG', 'Hong Kong', 'HKG', 344, 852),
(97, 'HU', 'HUNGARY', 'Hungary', 'HUN', 348, 36),
(98, 'IS', 'ICELAND', 'Iceland', 'ISL', 352, 354),
(99, 'IN', 'INDIA', 'India', 'IND', 356, 91),
(100, 'ID', 'INDONESIA', 'Indonesia', 'IDN', 360, 62),
(101, 'IR', 'IRAN, ISLAMIC REPUBLIC OF', 'Iran, Islamic Republic of', 'IRN', 364, 98),
(102, 'IQ', 'IRAQ', 'Iraq', 'IRQ', 368, 964),
(103, 'IE', 'IRELAND', 'Ireland', 'IRL', 372, 353),
(104, 'IL', 'ISRAEL', 'Israel', 'ISR', 376, 972),
(105, 'IT', 'ITALY', 'Italy', 'ITA', 380, 39),
(106, 'JM', 'JAMAICA', 'Jamaica', 'JAM', 388, 1876),
(107, 'JP', 'JAPAN', 'Japan', 'JPN', 392, 81),
(108, 'JO', 'JORDAN', 'Jordan', 'JOR', 400, 962),
(109, 'KZ', 'KAZAKHSTAN', 'Kazakhstan', 'KAZ', 398, 7),
(110, 'KE', 'KENYA', 'Kenya', 'KEN', 404, 254),
(111, 'KI', 'KIRIBATI', 'Kiribati', 'KIR', 296, 686),
(112, 'KP', 'KOREA, DEMOCRATIC PEOPLE\'S REPUBLIC OF', 'Korea, Democratic People\'s Republic of', 'PRK', 408, 850),
(113, 'KR', 'KOREA, REPUBLIC OF', 'Korea', 'KOR', 410, 82),
(114, 'KW', 'KUWAIT', 'Kuwait', 'KWT', 414, 965),
(115, 'KG', 'KYRGYZSTAN', 'Kyrgyzstan', 'KGZ', 417, 996),
(116, 'LA', 'LAO PEOPLE\'S DEMOCRATIC REPUBLIC', 'Lao People\'s Democratic Republic', 'LAO', 418, 856),
(117, 'LV', 'LATVIA', 'Latvia', 'LVA', 428, 371),
(118, 'LB', 'LEBANON', 'Lebanon', 'LBN', 422, 961),
(119, 'LS', 'LESOTHO', 'Lesotho', 'LSO', 426, 266),
(120, 'LR', 'LIBERIA', 'Liberia', 'LBR', 430, 231),
(121, 'LY', 'LIBYAN ARAB JAMAHIRIYA', 'Libyan Arab Jamahiriya', 'LBY', 434, 218),
(122, 'LI', 'LIECHTENSTEIN', 'Liechtenstein', 'LIE', 438, 423),
(123, 'LT', 'LITHUANIA', 'Lithuania', 'LTU', 440, 370),
(124, 'LU', 'LUXEMBOURG', 'Luxembourg', 'LUX', 442, 352),
(125, 'MO', 'MACAO', 'Macao', 'MAC', 446, 853),
(126, 'MK', 'MACEDONIA, THE FORMER YUGOSLAV REPUBLIC OF', 'Macedonia, the Former Yugoslav Republic of', 'MKD', 807, 389),
(127, 'MG', 'MADAGASCAR', 'Madagascar', 'MDG', 450, 261),
(128, 'MW', 'MALAWI', 'Malawi', 'MWI', 454, 265),
(129, 'MY', 'MALAYSIA', 'Malaysia', 'MYS', 458, 60),
(130, 'MV', 'MALDIVES', 'Maldives', 'MDV', 462, 960),
(131, 'ML', 'MALI', 'Mali', 'MLI', 466, 223),
(132, 'MT', 'MALTA', 'Malta', 'MLT', 470, 356),
(133, 'MH', 'MARSHALL ISLANDS', 'Marshall Islands', 'MHL', 584, 692),
(134, 'MQ', 'MARTINIQUE', 'Martinique', 'MTQ', 474, 596),
(135, 'MR', 'MAURITANIA', 'Mauritania', 'MRT', 478, 222),
(136, 'MU', 'MAURITIUS', 'Mauritius', 'MUS', 480, 230),
(137, 'YT', 'MAYOTTE', 'Mayotte', NULL, NULL, 269),
(138, 'MX', 'MEXICO', 'Mexico', 'MEX', 484, 52),
(139, 'FM', 'MICRONESIA, FEDERATED STATES OF', 'Micronesia, Federated States of', 'FSM', 583, 691),
(140, 'MD', 'MOLDOVA, REPUBLIC OF', 'Moldova, Republic of', 'MDA', 498, 373),
(141, 'MC', 'MONACO', 'Monaco', 'MCO', 492, 377),
(142, 'MN', 'MONGOLIA', 'Mongolia', 'MNG', 496, 976),
(143, 'MS', 'MONTSERRAT', 'Montserrat', 'MSR', 500, 1664),
(144, 'MA', 'MOROCCO', 'Morocco', 'MAR', 504, 212),
(145, 'MZ', 'MOZAMBIQUE', 'Mozambique', 'MOZ', 508, 258),
(146, 'MM', 'MYANMAR', 'Myanmar', 'MMR', 104, 95),
(147, 'NA', 'NAMIBIA', 'Namibia', 'NAM', 516, 264),
(148, 'NR', 'NAURU', 'Nauru', 'NRU', 520, 674),
(149, 'NP', 'NEPAL', 'Nepal', 'NPL', 524, 977),
(150, 'NL', 'NETHERLANDS', 'Netherlands', 'NLD', 528, 31),
(151, 'AN', 'NETHERLANDS ANTILLES', 'Netherlands Antilles', 'ANT', 530, 599),
(152, 'NC', 'NEW CALEDONIA', 'New Caledonia', 'NCL', 540, 687),
(153, 'NZ', 'NEW ZEALAND', 'New Zealand', 'NZL', 554, 64),
(154, 'NI', 'NICARAGUA', 'Nicaragua', 'NIC', 558, 505),
(155, 'NE', 'NIGER', 'Niger', 'NER', 562, 227),
(156, 'NG', 'NIGERIA', 'Nigeria', 'NGA', 566, 234),
(157, 'NU', 'NIUE', 'Niue', 'NIU', 570, 683),
(158, 'NF', 'NORFOLK ISLAND', 'Norfolk Island', 'NFK', 574, 672),
(159, 'MP', 'NORTHERN MARIANA ISLANDS', 'Northern Mariana Islands', 'MNP', 580, 1670),
(160, 'NO', 'NORWAY', 'Norway', 'NOR', 578, 47),
(161, 'OM', 'OMAN', 'Oman', 'OMN', 512, 968),
(162, 'PK', 'PAKISTAN', 'Pakistan', 'PAK', 586, 92),
(163, 'PW', 'PALAU', 'Palau', 'PLW', 585, 680),
(164, 'PS', 'PALESTINIAN TERRITORY, OCCUPIED', 'Palestinian Territory, Occupied', NULL, NULL, 970),
(165, 'PA', 'PANAMA', 'Panama', 'PAN', 591, 507),
(166, 'PG', 'PAPUA NEW GUINEA', 'Papua New Guinea', 'PNG', 598, 675),
(167, 'PY', 'PARAGUAY', 'Paraguay', 'PRY', 600, 595),
(168, 'PE', 'PERU', 'Peru', 'PER', 604, 51),
(169, 'PH', 'PHILIPPINES', 'Philippines', 'PHL', 608, 63),
(170, 'PN', 'PITCAIRN', 'Pitcairn', 'PCN', 612, 0),
(171, 'PL', 'POLAND', 'Poland', 'POL', 616, 48),
(172, 'PT', 'PORTUGAL', 'Portugal', 'PRT', 620, 351),
(173, 'PR', 'PUERTO RICO', 'Puerto Rico', 'PRI', 630, 1787),
(174, 'QA', 'QATAR', 'Qatar', 'QAT', 634, 974),
(175, 'RE', 'REUNION', 'Reunion', 'REU', 638, 262),
(176, 'RO', 'ROMANIA', 'Romania', 'ROM', 642, 40),
(177, 'RU', 'RUSSIAN FEDERATION', 'Russian Federation', 'RUS', 643, 70),
(178, 'RW', 'RWANDA', 'Rwanda', 'RWA', 646, 250),
(179, 'SH', 'SAINT HELENA', 'Saint Helena', 'SHN', 654, 290),
(180, 'KN', 'SAINT KITTS AND NEVIS', 'Saint Kitts and Nevis', 'KNA', 659, 1869),
(181, 'LC', 'SAINT LUCIA', 'Saint Lucia', 'LCA', 662, 1758),
(182, 'PM', 'SAINT PIERRE AND MIQUELON', 'Saint Pierre and Miquelon', 'SPM', 666, 508),
(183, 'VC', 'SAINT VINCENT AND THE GRENADINES', 'Saint Vincent and the Grenadines', 'VCT', 670, 1784),
(184, 'WS', 'SAMOA', 'Samoa', 'WSM', 882, 684),
(185, 'SM', 'SAN MARINO', 'San Marino', 'SMR', 674, 378),
(186, 'ST', 'SAO TOME AND PRINCIPE', 'Sao Tome and Principe', 'STP', 678, 239),
(187, 'SA', 'SAUDI ARABIA', 'Saudi Arabia', 'SAU', 682, 966),
(188, 'SN', 'SENEGAL', 'Senegal', 'SEN', 686, 221),
(189, 'CS', 'SERBIA AND MONTENEGRO', 'Serbia and Montenegro', NULL, NULL, 381),
(190, 'SC', 'SEYCHELLES', 'Seychelles', 'SYC', 690, 248),
(191, 'SL', 'SIERRA LEONE', 'Sierra Leone', 'SLE', 694, 232),
(192, 'SG', 'SINGAPORE', 'Singapore', 'SGP', 702, 65),
(193, 'SK', 'SLOVAKIA', 'Slovakia', 'SVK', 703, 421),
(194, 'SI', 'SLOVENIA', 'Slovenia', 'SVN', 705, 386),
(195, 'SB', 'SOLOMON ISLANDS', 'Solomon Islands', 'SLB', 90, 677),
(196, 'SO', 'SOMALIA', 'Somalia', 'SOM', 706, 252),
(197, 'ZA', 'SOUTH AFRICA', 'South Africa', 'ZAF', 710, 27),
(198, 'GS', 'SOUTH GEORGIA AND THE SOUTH SANDWICH ISLANDS', 'South Georgia and the South Sandwich Islands', NULL, NULL, 0),
(199, 'ES', 'SPAIN', 'Spain', 'ESP', 724, 34),
(200, 'LK', 'SRI LANKA', 'Sri Lanka', 'LKA', 144, 94),
(201, 'SD', 'SUDAN', 'Sudan', 'SDN', 736, 249),
(202, 'SR', 'SURINAME', 'Suriname', 'SUR', 740, 597),
(203, 'SJ', 'SVALBARD AND JAN MAYEN', 'Svalbard and Jan Mayen', 'SJM', 744, 47),
(204, 'SZ', 'SWAZILAND', 'Swaziland', 'SWZ', 748, 268),
(205, 'SE', 'SWEDEN', 'Sweden', 'SWE', 752, 46),
(206, 'CH', 'SWITZERLAND', 'Switzerland', 'CHE', 756, 41),
(207, 'SY', 'SYRIAN ARAB REPUBLIC', 'Syrian Arab Republic', 'SYR', 760, 963),
(208, 'TW', 'TAIWAN, PROVINCE OF CHINA', 'Taiwan, Province of China', 'TWN', 158, 886),
(209, 'TJ', 'TAJIKISTAN', 'Tajikistan', 'TJK', 762, 992),
(210, 'TZ', 'TANZANIA, UNITED REPUBLIC OF', 'Tanzania, United Republic of', 'TZA', 834, 255),
(211, 'TH', 'THAILAND', 'Thailand', 'THA', 764, 66),
(212, 'TL', 'TIMOR-LESTE', 'Timor-Leste', NULL, NULL, 670),
(213, 'TG', 'TOGO', 'Togo', 'TGO', 768, 228),
(214, 'TK', 'TOKELAU', 'Tokelau', 'TKL', 772, 690),
(215, 'TO', 'TONGA', 'Tonga', 'TON', 776, 676),
(216, 'TT', 'TRINIDAD AND TOBAGO', 'Trinidad and Tobago', 'TTO', 780, 1868),
(217, 'TN', 'TUNISIA', 'Tunisia', 'TUN', 788, 216),
(218, 'TR', 'TURKEY', 'Turkey', 'TUR', 792, 90),
(219, 'TM', 'TURKMENISTAN', 'Turkmenistan', 'TKM', 795, 7370),
(220, 'TC', 'TURKS AND CAICOS ISLANDS', 'Turks and Caicos Islands', 'TCA', 796, 1649),
(221, 'TV', 'TUVALU', 'Tuvalu', 'TUV', 798, 688),
(222, 'UG', 'UGANDA', 'Uganda', 'UGA', 800, 256),
(223, 'UA', 'UKRAINE', 'Ukraine', 'UKR', 804, 380),
(224, 'AE', 'UNITED ARAB EMIRATES', 'United Arab Emirates', 'ARE', 784, 971),
(225, 'GB', 'UNITED KINGDOM', 'United Kingdom', 'GBR', 826, 44),
(226, 'US', 'UNITED STATES', 'United States', 'USA', 840, 1),
(227, 'UM', 'UNITED STATES MINOR OUTLYING ISLANDS', 'United States Minor Outlying Islands', NULL, NULL, 1),
(228, 'UY', 'URUGUAY', 'Uruguay', 'URY', 858, 598),
(229, 'UZ', 'UZBEKISTAN', 'Uzbekistan', 'UZB', 860, 998),
(230, 'VU', 'VANUATU', 'Vanuatu', 'VUT', 548, 678),
(231, 'VE', 'VENEZUELA', 'Venezuela', 'VEN', 862, 58),
(232, 'VN', 'VIET NAM', 'Viet Nam', 'VNM', 704, 84),
(233, 'VG', 'VIRGIN ISLANDS, BRITISH', 'Virgin Islands, British', 'VGB', 92, 1284),
(234, 'VI', 'VIRGIN ISLANDS, U.S.', 'Virgin Islands, U.s.', 'VIR', 850, 1340),
(235, 'WF', 'WALLIS AND FUTUNA', 'Wallis and Futuna', 'WLF', 876, 681),
(236, 'EH', 'WESTERN SAHARA', 'Western Sahara', 'ESH', 732, 212),
(237, 'YE', 'YEMEN', 'Yemen', 'YEM', 887, 967),
(238, 'ZM', 'ZAMBIA', 'Zambia', 'ZMB', 894, 260),
(239, 'ZW', 'ZIMBABWE', 'Zimbabwe', 'ZWE', 716, 263);

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `id` int(10) UNSIGNED NOT NULL,
  `type_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `entity_id` int(10) UNSIGNED DEFAULT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `assets` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`id`, `type_id`, `user_id`, `entity_id`, `icon`, `class`, `text`, `assets`, `created_at`, `updated_at`) VALUES
(1, 3, 1, 49, 'plus', 'bg-green', 'trans(\"history.backend.permissions.created\") <strong>create-plant-equipment</strong>', NULL, '2019-01-21 10:42:35', '2019-01-21 10:42:35'),
(2, 3, 1, 49, 'save', 'bg-aqua', 'trans(\"history.backend.permissions.updated\") <strong>create-plant-equipment</strong>', NULL, '2019-01-21 10:43:48', '2019-01-21 10:43:48'),
(3, 2, 1, 2, 'save', 'bg-aqua', 'trans(\"history.backend.roles.updated\") <strong>Executive</strong>', NULL, '2019-01-21 10:46:25', '2019-01-21 10:46:25'),
(4, 1, 1, 4, 'plus', 'bg-green', 'trans(\"history.backend.users.created\") <strong>{user}</strong>', '{\"user_link\":[\"admin.access.user.show\",\"Rashed Al Banna\",4]}', '2019-02-03 08:18:51', '2019-02-03 08:18:51'),
(5, 1, 1, 4, 'save', 'bg-aqua', 'trans(\"history.backend.users.updated\") <strong>{user}</strong>', '{\"user_link\":[\"admin.access.user.show\",\"Rashed Al Banna\",4]}', '2019-02-03 08:21:04', '2019-02-03 08:21:04'),
(6, 3, 1, 50, 'plus', 'bg-green', 'trans(\"history.backend.permissions.created\") <strong>edit-plant-equipment</strong>', NULL, '2019-02-09 03:20:08', '2019-02-09 03:20:08'),
(7, 3, 1, 51, 'plus', 'bg-green', 'trans(\"history.backend.permissions.created\") <strong>view-plant-equipment</strong>', NULL, '2019-02-09 03:21:08', '2019-02-09 03:21:08'),
(8, 3, 1, 52, 'plus', 'bg-green', 'trans(\"history.backend.permissions.created\") <strong>delete-plant-equipment</strong>', NULL, '2019-02-09 03:22:25', '2019-02-09 03:22:25'),
(9, 3, 1, 53, 'plus', 'bg-green', 'trans(\"history.backend.permissions.created\") <strong>view-reports</strong>', NULL, '2019-02-09 03:48:43', '2019-02-09 03:48:43'),
(10, 3, 1, 54, 'plus', 'bg-green', 'trans(\"history.backend.permissions.created\") <strong>create-projects</strong>', NULL, '2019-02-09 07:33:20', '2019-02-09 07:33:20'),
(11, 3, 1, 55, 'plus', 'bg-green', 'trans(\"history.backend.permissions.created\") <strong>edit-projects</strong>', NULL, '2019-02-09 07:46:59', '2019-02-09 07:46:59'),
(12, 3, 1, 56, 'plus', 'bg-green', 'trans(\"history.backend.permissions.created\") <strong>view-projects</strong>', NULL, '2019-02-09 08:12:35', '2019-02-09 08:12:35'),
(13, 3, 1, 57, 'plus', 'bg-green', 'trans(\"history.backend.permissions.created\") <strong>delete-projects</strong>', NULL, '2019-02-09 08:13:20', '2019-02-09 08:13:20'),
(14, 1, 1, 4, 'save', 'bg-aqua', 'trans(\"history.backend.users.updated\") <strong>{user}</strong>', '{\"user_link\":[\"admin.access.user.show\",\"Rashed Al Banna\",4]}', '2019-02-11 05:42:08', '2019-02-11 05:42:08'),
(15, 3, 1, 58, 'plus', 'bg-green', 'trans(\"history.backend.permissions.created\") <strong>create-items</strong>', NULL, '2019-02-22 17:14:05', '2019-02-22 17:14:05'),
(16, 3, 1, 59, 'plus', 'bg-green', 'trans(\"history.backend.permissions.created\") <strong>edit-items</strong>', NULL, '2019-02-22 17:15:10', '2019-02-22 17:15:10'),
(17, 3, 1, 60, 'plus', 'bg-green', 'trans(\"history.backend.permissions.created\") <strong>view-items</strong>', NULL, '2019-02-22 17:15:38', '2019-02-22 17:15:38'),
(18, 3, 1, 61, 'plus', 'bg-green', 'trans(\"history.backend.permissions.created\") <strong>delete-items</strong>', NULL, '2019-02-22 17:16:35', '2019-02-22 17:16:35'),
(19, 3, 1, 62, 'plus', 'bg-green', 'trans(\"history.backend.permissions.created\") <strong>view-products</strong>', NULL, '2019-02-22 18:09:38', '2019-02-22 18:09:38'),
(20, 3, 1, 63, 'plus', 'bg-green', 'trans(\"history.backend.permissions.created\") <strong>create-products</strong>', NULL, '2019-02-22 18:10:22', '2019-02-22 18:10:22'),
(21, 3, 1, 64, 'plus', 'bg-green', 'trans(\"history.backend.permissions.created\") <strong>edit-Products</strong>', NULL, '2019-02-22 18:10:55', '2019-02-22 18:10:55'),
(22, 3, 1, 65, 'plus', 'bg-green', 'trans(\"history.backend.permissions.created\") <strong>delete-products</strong>', NULL, '2019-02-22 18:11:18', '2019-02-22 18:11:18'),
(23, 3, 1, 65, 'save', 'bg-aqua', 'trans(\"history.backend.permissions.updated\") <strong>delete-products</strong>', NULL, '2019-02-22 18:11:35', '2019-02-22 18:11:35'),
(24, 3, 1, 64, 'save', 'bg-aqua', 'trans(\"history.backend.permissions.updated\") <strong>edit-products</strong>', NULL, '2019-02-22 18:11:59', '2019-02-22 18:11:59'),
(25, 3, 1, 66, 'plus', 'bg-green', 'trans(\"history.backend.permissions.created\") <strong>create-product-receive</strong>', NULL, '2019-02-22 19:51:48', '2019-02-22 19:51:48'),
(26, 3, 1, 67, 'plus', 'bg-green', 'trans(\"history.backend.permissions.created\") <strong>edit-product-receive</strong>', NULL, '2019-02-22 19:52:36', '2019-02-22 19:52:36'),
(27, 3, 1, 68, 'plus', 'bg-green', 'trans(\"history.backend.permissions.created\") <strong>view-product-receive</strong>', NULL, '2019-02-22 19:53:22', '2019-02-22 19:53:22'),
(28, 3, 1, 69, 'plus', 'bg-green', 'trans(\"history.backend.permissions.created\") <strong>delete-product-receive</strong>', NULL, '2019-02-22 19:54:06', '2019-02-22 19:54:06'),
(29, 3, 1, 70, 'plus', 'bg-green', 'trans(\"history.backend.permissions.created\") <strong>create-project-challan</strong>', NULL, '2019-02-22 21:14:49', '2019-02-22 21:14:49'),
(30, 3, 1, 71, 'plus', 'bg-green', 'trans(\"history.backend.permissions.created\") <strong>edit-project-challan</strong>', NULL, '2019-02-22 21:15:22', '2019-02-22 21:15:22'),
(31, 3, 1, 72, 'plus', 'bg-green', 'trans(\"history.backend.permissions.created\") <strong>view-project-challan</strong>', NULL, '2019-02-22 21:15:58', '2019-02-22 21:15:58'),
(32, 3, 1, 73, 'plus', 'bg-green', 'trans(\"history.backend.permissions.created\") <strong>delete-project-challan</strong>', NULL, '2019-02-22 21:16:33', '2019-02-22 21:16:33'),
(33, 3, 1, 33, 'trash', 'bg-maroon', 'trans(\"history.backend.permissions.deleted\") <strong>view-blog-category</strong>', NULL, '2019-02-24 04:34:13', '2019-02-24 04:34:13'),
(34, 3, 1, 34, 'trash', 'bg-maroon', 'trans(\"history.backend.permissions.deleted\") <strong>create-blog-category</strong>', NULL, '2019-02-24 04:34:24', '2019-02-24 04:34:24'),
(35, 3, 1, 35, 'trash', 'bg-maroon', 'trans(\"history.backend.permissions.deleted\") <strong>edit-blog-category</strong>', NULL, '2019-02-24 04:34:36', '2019-02-24 04:34:36'),
(36, 3, 1, 36, 'trash', 'bg-maroon', 'trans(\"history.backend.permissions.deleted\") <strong>delete-blog-category</strong>', NULL, '2019-02-24 04:34:47', '2019-02-24 04:34:47'),
(37, 3, 1, 37, 'trash', 'bg-maroon', 'trans(\"history.backend.permissions.deleted\") <strong>view-blog-tag</strong>', NULL, '2019-02-24 04:34:57', '2019-02-24 04:34:57'),
(38, 3, 1, 38, 'trash', 'bg-maroon', 'trans(\"history.backend.permissions.deleted\") <strong>create-blog-tag</strong>', NULL, '2019-02-24 04:35:08', '2019-02-24 04:35:08'),
(39, 3, 1, 39, 'trash', 'bg-maroon', 'trans(\"history.backend.permissions.deleted\") <strong>edit-blog-tag</strong>', NULL, '2019-02-24 04:35:19', '2019-02-24 04:35:19'),
(40, 3, 1, 40, 'trash', 'bg-maroon', 'trans(\"history.backend.permissions.deleted\") <strong>delete-blog-tag</strong>', NULL, '2019-02-24 04:35:29', '2019-02-24 04:35:29'),
(41, 3, 1, 41, 'trash', 'bg-maroon', 'trans(\"history.backend.permissions.deleted\") <strong>view-blog</strong>', NULL, '2019-02-24 04:35:52', '2019-02-24 04:35:52'),
(42, 3, 1, 43, 'trash', 'bg-maroon', 'trans(\"history.backend.permissions.deleted\") <strong>edit-blog</strong>', NULL, '2019-02-24 04:36:03', '2019-02-24 04:36:03'),
(43, 3, 1, 42, 'trash', 'bg-maroon', 'trans(\"history.backend.permissions.deleted\") <strong>create-blog</strong>', NULL, '2019-02-24 04:36:14', '2019-02-24 04:36:14'),
(44, 3, 1, 44, 'trash', 'bg-maroon', 'trans(\"history.backend.permissions.deleted\") <strong>delete-blog</strong>', NULL, '2019-02-24 04:37:55', '2019-02-24 04:37:55'),
(45, 3, 1, 45, 'trash', 'bg-maroon', 'trans(\"history.backend.permissions.deleted\") <strong>view-faq</strong>', NULL, '2019-02-24 04:38:04', '2019-02-24 04:38:04'),
(46, 3, 1, 46, 'trash', 'bg-maroon', 'trans(\"history.backend.permissions.deleted\") <strong>create-faq</strong>', NULL, '2019-02-24 04:38:12', '2019-02-24 04:38:12'),
(47, 3, 1, 47, 'trash', 'bg-maroon', 'trans(\"history.backend.permissions.deleted\") <strong>edit-faq</strong>', NULL, '2019-02-24 04:38:21', '2019-02-24 04:38:21'),
(48, 3, 1, 48, 'trash', 'bg-maroon', 'trans(\"history.backend.permissions.deleted\") <strong>delete-faq</strong>', NULL, '2019-02-24 04:38:54', '2019-02-24 04:38:54'),
(49, 3, 1, 74, 'plus', 'bg-green', 'trans(\"history.backend.permissions.created\") <strong>view-suppliers</strong>', NULL, '2019-02-24 04:40:07', '2019-02-24 04:40:07'),
(50, 3, 1, 75, 'plus', 'bg-green', 'trans(\"history.backend.permissions.created\") <strong>edit-suppliers</strong>', NULL, '2019-02-24 04:40:39', '2019-02-24 04:40:39'),
(51, 3, 1, 76, 'plus', 'bg-green', 'trans(\"history.backend.permissions.created\") <strong>create-suppliers</strong>', NULL, '2019-02-24 04:41:08', '2019-02-24 04:41:08'),
(52, 3, 1, 77, 'plus', 'bg-green', 'trans(\"history.backend.permissions.created\") <strong>delete-suppliers</strong>', NULL, '2019-02-24 04:41:39', '2019-02-24 04:41:39'),
(53, 1, 1, 5, 'plus', 'bg-green', 'trans(\"history.backend.users.created\") <strong>{user}</strong>', '{\"user_link\":[\"admin.access.user.show\",\"Jalil Nayan\",5]}', '2019-05-10 19:24:40', '2019-05-10 19:24:40'),
(54, 1, 1, 5, 'save', 'bg-aqua', 'trans(\"history.backend.users.updated\") <strong>{user}</strong>', '{\"user_link\":[\"admin.access.user.show\",\"Jalil Nayan\",5]}', '2019-05-11 17:07:42', '2019-05-11 17:07:42'),
(55, 3, 1, 78, 'plus', 'bg-green', 'trans(\"history.backend.permissions.created\") <strong>issue-management</strong>', NULL, '2019-05-12 16:32:51', '2019-05-12 16:32:51'),
(56, 1, 1, 5, 'save', 'bg-aqua', 'trans(\"history.backend.users.updated\") <strong>{user}</strong>', '{\"user_link\":[\"admin.access.user.show\",\"Jalil Nayan\",5]}', '2019-05-12 16:35:26', '2019-05-12 16:35:26'),
(57, 1, 1, 5, 'save', 'bg-aqua', 'trans(\"history.backend.users.updated\") <strong>{user}</strong>', '{\"user_link\":[\"admin.access.user.show\",\"Jalil Nayan\",5]}', '2019-05-12 16:36:57', '2019-05-12 16:36:57');

-- --------------------------------------------------------

--
-- Table structure for table `history_types`
--

CREATE TABLE `history_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `history_types`
--

INSERT INTO `history_types` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'User', '2019-01-14 06:17:13', '2019-01-14 06:17:13'),
(2, 'Role', '2019-01-14 06:17:13', '2019-01-14 06:17:13'),
(3, 'Permission', '2019-01-14 06:17:13', '2019-01-14 06:17:13'),
(4, 'Page', '2019-01-14 06:17:13', '2019-01-14 06:17:13'),
(5, 'BlogTag', '2019-01-14 06:17:13', '2019-01-14 06:17:13'),
(6, 'BlogCategory', '2019-01-14 06:17:13', '2019-01-14 06:17:13'),
(7, 'Blog', '2019-01-14 06:17:13', '2019-01-14 06:17:13');

-- --------------------------------------------------------

--
-- Table structure for table `inv_ga_listunit`
--

CREATE TABLE `inv_ga_listunit` (
  `id` int(11) NOT NULL,
  `lunit_id` varchar(10) CHARACTER SET utf8 NOT NULL,
  `lunit_name` varchar(25) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `inv_issue`
--

CREATE TABLE `inv_issue` (
  `id` int(11) NOT NULL,
  `issue_id` varchar(25) NOT NULL,
  `issue_date` date NOT NULL,
  `buyer_id` varchar(25) CHARACTER SET utf8 NOT NULL,
  `posted_to_gl` int(11) NOT NULL,
  `remarks` varchar(100) CHARACTER SET utf8 NOT NULL,
  `issue_type` varchar(20) CHARACTER SET utf8 NOT NULL,
  `issue_unit_id` varchar(20) CHARACTER SET utf8 NOT NULL,
  `chk_year_end` int(11) NOT NULL,
  `no_of_material` float NOT NULL,
  `issue_total` float NOT NULL,
  `indent_no` varchar(255) DEFAULT NULL,
  `receiver_name` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inv_issue`
--

INSERT INTO `inv_issue` (`id`, `issue_id`, `issue_date`, `buyer_id`, `posted_to_gl`, `remarks`, `issue_type`, `issue_unit_id`, `chk_year_end`, `no_of_material`, `issue_total`, `indent_no`, `receiver_name`) VALUES
(1, 'IS001', '2019-07-22', '1', 0, 'Good ', 'issue', 'issue', 0, 45, 530, '1', 'Test Receiver'),
(2, 'IS002', '2019-08-06', '1', 0, 'remarks ', 'issue', 'issue', 0, 10, 2000, '1', 'adil');

-- --------------------------------------------------------

--
-- Table structure for table `inv_issuedetail`
--

CREATE TABLE `inv_issuedetail` (
  `id` int(11) NOT NULL,
  `issue_id` varchar(15) CHARACTER SET utf8 NOT NULL,
  `material_id` varchar(9) CHARACTER SET utf8 NOT NULL,
  `unit_id` int(11) NOT NULL,
  `expense_acct_id` varchar(9) CHARACTER SET utf8 NOT NULL,
  `cost_center` varchar(9) CHARACTER SET utf8 NOT NULL,
  `issue_qty` float NOT NULL,
  `issue_price` float NOT NULL,
  `sl_no` int(11) NOT NULL,
  `total_issue` float NOT NULL,
  `sales_price` float NOT NULL,
  `total_sales` float NOT NULL,
  `sales_profit` int(11) NOT NULL,
  `sales_margin` float NOT NULL,
  `id_serial_id` varchar(50) CHARACTER SET utf8 NOT NULL,
  `part_no` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inv_issuedetail`
--

INSERT INTO `inv_issuedetail` (`id`, `issue_id`, `material_id`, `unit_id`, `expense_acct_id`, `cost_center`, `issue_qty`, `issue_price`, `sl_no`, `total_issue`, `sales_price`, `total_sales`, `sales_profit`, `sales_margin`, `id_serial_id`, `part_no`) VALUES
(5, 'IS001', '01-01-001', 1, '0', '0', 20, 12, 1, 240, 0, 0, 0, 0, '0', '132'),
(6, 'IS001', '02-01-001', 2, '0', '0', 15, 12, 1, 180, 0, 0, 0, 0, '0', '132'),
(7, 'IS001', '02-01-001', 2, '0', '0', 10, 11, 1, 110, 0, 0, 0, 0, '0', '132'),
(9, 'IS002', '02-01-001', 2, '0', '0', 10, 200, 1, 2000, 0, 0, 0, 0, '0', '147');

-- --------------------------------------------------------

--
-- Table structure for table `inv_item_unit`
--

CREATE TABLE `inv_item_unit` (
  `id` int(11) NOT NULL,
  `unit_name` varchar(400) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inv_item_unit`
--

INSERT INTO `inv_item_unit` (`id`, `unit_name`) VALUES
(1, 'kg'),
(2, 'bag'),
(3, 'pcs');

-- --------------------------------------------------------

--
-- Table structure for table `inv_material`
--

CREATE TABLE `inv_material` (
  `id` int(11) NOT NULL,
  `material_id_code` varchar(10) DEFAULT NULL,
  `material_id` varchar(15) CHARACTER SET utf8 NOT NULL,
  `material_sub_id` varchar(25) CHARACTER SET utf8 NOT NULL,
  `material_description` varchar(75) CHARACTER SET utf8 NOT NULL,
  `material_min_stock` int(11) NOT NULL,
  `avg_con_sump` int(11) NOT NULL,
  `lead_time` int(11) NOT NULL,
  `re_order_level` int(11) NOT NULL,
  `qty_unit` varchar(15) CHARACTER SET utf8 NOT NULL,
  `op_balance_qty` int(11) NOT NULL,
  `op_balance_val` int(11) NOT NULL,
  `chk_print` int(11) NOT NULL,
  `cur_qty` int(11) NOT NULL,
  `cur_price` int(11) NOT NULL,
  `cur_value` int(11) NOT NULL,
  `last_issue` date NOT NULL,
  `last_receive` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inv_material`
--

INSERT INTO `inv_material` (`id`, `material_id_code`, `material_id`, `material_sub_id`, `material_description`, `material_min_stock`, `avg_con_sump`, `lead_time`, `re_order_level`, `qty_unit`, `op_balance_qty`, `op_balance_val`, `chk_print`, `cur_qty`, `cur_price`, `cur_value`, `last_issue`, `last_receive`) VALUES
(15, '01-01-001', '12', '15', 'juice 100 ml', 20, 0, 0, 0, '1', 0, 0, 0, 0, 0, 0, '0000-00-00', '0000-00-00'),
(16, '02-01-001', '13', '16', 'cement 400 bag', 30, 0, 0, 0, '2', 0, 0, 0, 0, 0, 0, '0000-00-00', '0000-00-00'),
(17, '02-02-001', '13', '17', 'sylhet sand', 20, 0, 0, 0, '2', 0, 0, 0, 0, 0, 0, '0000-00-00', '0000-00-00'),
(18, '03-01-001', '14', '18', 'watt 18', 12, 0, 0, 0, '3', 0, 0, 0, 0, 0, 0, '0000-00-00', '0000-00-00'),
(19, '04-01-001', '15', '19', 'bsrm 60 grade 2o ml', 345, 0, 0, 0, '3', 0, 0, 0, 0, 0, 0, '0000-00-00', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `inv_materialbalance`
--

CREATE TABLE `inv_materialbalance` (
  `id` int(11) NOT NULL,
  `mb_ref_id` varchar(25) CHARACTER SET utf8 NOT NULL,
  `mb_materialid` varchar(25) CHARACTER SET utf8 NOT NULL,
  `mb_date` date NOT NULL,
  `mbin_qty` float NOT NULL,
  `mbin_val` float NOT NULL,
  `mbout_qty` float NOT NULL,
  `mbout_val` float NOT NULL,
  `mbprice` float NOT NULL,
  `mbtype` varchar(30) CHARACTER SET utf8 NOT NULL,
  `mbserial` float NOT NULL,
  `mbserial_id` varchar(10) CHARACTER SET utf8 NOT NULL,
  `mbunit_id` varchar(15) CHARACTER SET utf8 NOT NULL,
  `jvno` varchar(25) CHARACTER SET utf8 NOT NULL,
  `part_no` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `history_type_id_foreign` (`type_id`),
  ADD KEY `history_user_id_foreign` (`user_id`);

--
-- Indexes for table `history_types`
--
ALTER TABLE `history_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_ga_listunit`
--
ALTER TABLE `inv_ga_listunit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_issue`
--
ALTER TABLE `inv_issue`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_issuedetail`
--
ALTER TABLE `inv_issuedetail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_item_unit`
--
ALTER TABLE `inv_item_unit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_material`
--
ALTER TABLE `inv_material`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_materialbalance`
--
ALTER TABLE `inv_materialbalance`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=240;

--
-- AUTO_INCREMENT for table `history`
--
ALTER TABLE `history`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `history_types`
--
ALTER TABLE `history_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `inv_ga_listunit`
--
ALTER TABLE `inv_ga_listunit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inv_issue`
--
ALTER TABLE `inv_issue`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `inv_issuedetail`
--
ALTER TABLE `inv_issuedetail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `inv_item_unit`
--
ALTER TABLE `inv_item_unit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `inv_material`
--
ALTER TABLE `inv_material`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
