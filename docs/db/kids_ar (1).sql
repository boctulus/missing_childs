-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 24, 2021 at 03:00 PM
-- Server version: 5.7.33-0ubuntu0.18.04.1
-- PHP Version: 7.4.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kids_ar`
--

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `uuid` varchar(36) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `file_ext` varchar(30) NOT NULL,
  `filename_as_stored` varchar(60) NOT NULL,
  `entity` varchar(40) DEFAULT NULL,
  `entity_id` varchar(36) DEFAULT NULL,
  `belongs_to` int(11) DEFAULT NULL,
  `guest_access` tinyint(4) DEFAULT NULL,
  `locked` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`uuid`, `filename`, `file_ext`, `filename_as_stored`, `entity`, `entity_id`, `belongs_to`, `guest_access`, `locked`, `created_at`, `deleted_at`) VALUES
('00eafd23-91d5-4eda-91c1-234a1386addc', 'JACQUELINE_TAMARA_PEDROZA.jpg', 'jpg', '44-605b5d7a536203.74991568.jpg', NULL, NULL, NULL, 0, 0, '2021-03-24 12:40:42', NULL),
('017ee08b-2ed9-4407-ad6f-e2798febe19c', 'DESIRE_YAQUELINE_O_VALENTIN_JOEL_SILVA.jpg', 'jpg', '17-605b5d6d9c7729.72698126.jpg', NULL, NULL, NULL, 0, 0, '2021-03-24 12:40:29', NULL),
('01f34b1d-b4be-4193-bdb3-c1d719f2b3e3', 'BENICIO_CORONEL_Y_MILAGRO_DE_LOS_ANGELES_AVELLANEDA.jpg', 'jpg', '39-605b5d7883f548.32082405.jpg', NULL, NULL, NULL, 0, 0, '2021-03-24 12:40:40', NULL),
('02bbebdc-eb3d-4f0f-ab5c-58df5041193a', 'GISELLA_NOEMI_GARNICA.jpg', 'jpg', '14-605b5d6bacaef8.30349648.jpg', NULL, NULL, NULL, 0, 0, '2021-03-24 12:40:27', NULL),
('037c3cf7-df6f-4d14-93a1-3a99b722f9b1', 'CANDELA_AGUSTINA_CORREAS_DE_MELO.jpg', 'jpg', '55-605b5d7e9fd781.58181486.jpg', NULL, NULL, NULL, 0, 0, '2021-03-24 12:40:46', NULL),
('0856c6f3-d473-43b5-8542-e4ad0304287c', 'LUZ_MORENA_OLIVA.jpg', 'jpg', '65-605b5d84ae7452.64258177.jpg', NULL, NULL, NULL, 0, 0, '2021-03-24 12:40:52', NULL),
('0986462f-282a-4cdb-8992-9d6442ad030a', 'JONATHAN_EZEQUIEL_ACOSTA.jpg', 'jpg', '15-605b5d6bf32e10.64537458.jpg', NULL, NULL, NULL, 0, 0, '2021-03-24 12:40:27', NULL),
('0edf14e0-b404-4048-80a4-23449bbb8f16', 'CANDELA_SOFIA_MUNOZ.jpg', 'jpg', '68-605b5d88f18c96.29069393.jpg', NULL, NULL, NULL, 0, 0, '2021-03-24 12:40:56', NULL),
('1443c800-c898-40bf-a128-4585fca30b69', 'ALEXANDER_NOZIGLIA.jpg', 'jpg', '60-605b5d80a21127.99037219.jpg', NULL, NULL, NULL, 0, 0, '2021-03-24 12:40:48', NULL),
('179ec713-42fb-4cbd-8c18-187f80dbf6e5', 'NAHIARA_GERALDINE_DE_ROSA.jpg', 'jpg', '41-605b5d7907ad78.32729296.jpg', NULL, NULL, NULL, 0, 0, '2021-03-24 12:40:41', NULL),
('18fb967e-c280-49ac-ae11-8d4c29f463ac', 'ABRAHAM_MIGUEL_RODRIGUEZ_PERESTRELO.jpg', 'jpg', '32-605b5d75d97072.23873557.jpg', NULL, NULL, NULL, 0, 0, '2021-03-24 12:40:37', NULL),
('1c62f768-a47d-44b2-8705-84bbd2e37397', 'ARIEL_SERGIO_MORINGO.jpg', 'jpg', '26-605b5d708bdc18.30050518.jpg', NULL, NULL, NULL, 0, 0, '2021-03-24 12:40:32', NULL),
('1ee551e5-f171-485f-b756-b51520a36abe', 'MAXIMILIANO_DANIEL_FALCONNAT.jpg', 'jpg', '25-605b5d7031a489.49290926.jpg', NULL, NULL, NULL, 0, 0, '2021-03-24 12:40:32', NULL),
('21edf892-b8dd-4134-9f50-b02f9100b4e9', 'MELISA_CHAVEZ.jpg', 'jpg', '27-605b5d72ecf985.68448423.jpg', NULL, NULL, NULL, 0, 0, '2021-03-24 12:40:34', NULL),
('230a534e-de27-43c4-8ce3-1ea6ed355cdc', 'EMANUEL_MAXIMLIANO_ESPINOSA.jpeg', 'jpeg', '13-605b5d6b810696.10731704.jpeg', NULL, NULL, NULL, 0, 0, '2021-03-24 12:40:27', NULL),
('37adb17d-e82a-426d-a8e2-085b016c7b68', 'EZEQUIEL_RESTIVO.jpeg', 'jpeg', '10-605b5d69ec27f2.25007943.jpeg', NULL, NULL, NULL, 0, 0, '2021-03-24 12:40:25', NULL),
('3ac03fc6-6620-4039-9cb4-b565181ab30a', 'ANGEL_MARTIN_MORE.jpg', 'jpg', '64-605b5d8365b487.67250410.jpg', NULL, NULL, NULL, 0, 0, '2021-03-24 12:40:51', NULL),
('3beb26d8-efea-4b4b-85fc-6295087048f8', 'THIAGO_CRISTIANO_EZEQUIEL_DIAZ.jpg', 'jpg', '49-605b5d7c1c3aa4.73525256.jpg', NULL, NULL, NULL, 0, 0, '2021-03-24 12:40:44', NULL),
('3c87af7e-9908-45a0-83bd-aabeec3231cd', 'SORAYA_LUZ_SOSA.jpg', 'jpg', '11-605b5d6a33bda6.19342560.jpg', NULL, NULL, NULL, 0, 0, '2021-03-24 12:40:26', NULL),
('3cd89d98-9973-4704-b6a5-a710fa3e54fa', 'LUNA_GIMENEZ_PEREIRA.jpeg', 'jpeg', '12-605b5d6ae2eef5.84143024.jpeg', NULL, NULL, NULL, 0, 0, '2021-03-24 12:40:26', NULL),
('42fa1e40-5af3-47ae-8779-213376a7c39b', 'JULIETA_TOMASSELLA.jpg', 'jpg', '52-605b5d7d1fdb95.62357341.jpg', NULL, NULL, NULL, 0, 0, '2021-03-24 12:40:45', NULL),
('472d64b8-edff-425b-b463-f5505d6cc3dd', 'VICTORIA_ABRIL_ORTIZ.jpg', 'jpg', '18-605b5d6dc83262.98603942.jpg', NULL, NULL, NULL, 0, 0, '2021-03-24 12:40:29', NULL),
('4b03a690-c45d-4430-a2fd-b0be5cbf97a0', 'MILAGROS_DE_LOS_ANGELES_NUNEZ.jpg', 'jpg', '69-605b5d89b3ada9.66640543.jpg', NULL, NULL, NULL, 0, 0, '2021-03-24 12:40:57', NULL),
('4b928ae7-d1e0-4617-8071-dc8581228e89', 'MATIAS_DAMIAN_HUANCO.jpg', 'jpg', '66-605b5d87005735.24521699.jpg', NULL, NULL, NULL, 0, 0, '2021-03-24 12:40:55', NULL),
('5a53b445-b1ca-48cb-b586-38e20758edc5', 'ENOC_EZEQUIEL_RODRIGUEZ_PERESTRELO.jpg', 'jpg', '33-605b5d767f03d2.95607655.jpg', NULL, NULL, NULL, 0, 0, '2021-03-24 12:40:38', NULL),
('5f14fa72-6dd2-4574-899a-af193a13b25a', 'BRISA_AYELEN_MEYER.jpg', 'jpg', '24-605b5d6febfa21.47650912.jpg', NULL, NULL, NULL, 0, 0, '2021-03-24 12:40:31', NULL),
('5f303b2b-0320-4ab1-b705-180ca93cc17f', 'GIANELLA_VILLEGAS.jpeg', 'jpeg', '5-605b5d68c2ea35.77222792.jpeg', NULL, NULL, NULL, 0, 0, '2021-03-24 12:40:24', NULL),
('648c1f57-94b2-47d3-8c0d-54256e1453a9', 'JONE_GIULIANA_ABRIL_GALIANO.jpg', 'jpg', '62-605b5d822b55f1.17199371.jpg', NULL, NULL, NULL, 0, 0, '2021-03-24 12:40:50', NULL),
('64d78d01-c1d1-48f9-8612-0b3ae79361a3', 'LUCAS_BOLOTTI.jpg', 'jpg', '57-605b5d7f6da379.33138075.jpg', NULL, NULL, NULL, 0, 0, '2021-03-24 12:40:47', NULL),
('6577bd7e-a663-4221-8ba9-22ce737da778', 'SOFIA_YASMIN_HERRERA.jpg', 'jpg', '71-605b5d8ac0fd32.23332087.jpg', NULL, NULL, NULL, 0, 0, '2021-03-24 12:40:58', NULL),
('66029063-d507-44e1-9108-3d0837f1a2fa', 'LAUTARO_LOBOS.jpeg', 'jpeg', '8-605b5d699cedb6.11897973.jpeg', NULL, NULL, NULL, 0, 0, '2021-03-24 12:40:25', NULL),
('68aaa6f1-4054-4c3d-b52b-918f64f59426', 'TIARA_NAHIR_ANDREOLI.jpg', 'jpg', '22-605b5d6ee5f1a8.28967881.jpg', NULL, NULL, NULL, 0, 0, '2021-03-24 12:40:30', NULL),
('6972abee-7dc2-44a2-ba0f-4230719c7d77', 'LEANDRO_GOMEZ.jpeg', 'jpeg', '9-605b5d69c095c0.00312838.jpeg', NULL, NULL, NULL, 0, 0, '2021-03-24 12:40:25', NULL),
('6b3386eb-1c38-4b45-bce7-d1e9e4b1dd1d', 'ALESSANDRA_KATERINA_TUCCE.jpg', 'jpg', '34-605b5d76c7c424.67545419.jpg', NULL, NULL, NULL, 0, 0, '2021-03-24 12:40:38', NULL),
('6fbff849-fbb8-446c-9b5c-8650e5e0945d', 'MARCOS_ROJAS.jpeg', 'jpeg', '2-605b5d6816c4b0.57028482.jpeg', NULL, NULL, NULL, 0, 0, '2021-03-24 12:40:24', NULL),
('78b9678a-c5cf-448c-86e3-66ac9384ff39', 'CAMILA_MARILIN_BARROSO_NAVARRO.jpg', 'jpg', '29-605b5d75040a61.35552222.jpg', NULL, NULL, NULL, 0, 0, '2021-03-24 12:40:37', NULL),
('7d9633d3-b40c-42da-8fc8-8ba003776d83', 'CELESTE_MARISA_CALVO.jpg', 'jpg', '72-605b5d8b70a2a3.09244767.jpg', NULL, NULL, NULL, 0, 0, '2021-03-24 12:40:59', NULL),
('7e851b71-9879-400a-80a3-ecf85d0d4c13', 'GALA_CANCINOS.jpg', 'jpg', '58-605b5d7fcbfa01.47570552.jpg', NULL, NULL, NULL, 0, 0, '2021-03-24 12:40:47', NULL),
('84f19e02-174c-4865-b7f1-be4179bb7ef8', 'MATIAS_EZEQUIEL_PEREIRA.jpg', 'jpg', '47-605b5d7b6500b5.58758896.jpg', NULL, NULL, NULL, 0, 0, '2021-03-24 12:40:43', NULL),
('88e10536-e786-4356-ae77-781c2309c04c', 'MARIA_LISANDRA_ALBORNOZ.jpg', 'jpg', '54-605b5d7e2bcd70.79965047.jpg', NULL, NULL, NULL, 0, 0, '2021-03-24 12:40:46', NULL),
('8bfc507e-bdb8-4eff-93f7-930ba79533fe', 'OLGA_MABEL_ESPINDOLA.jpeg', 'jpeg', '16-605b5d6d636385.29745219.jpeg', NULL, NULL, NULL, 0, 0, '2021-03-24 12:40:29', NULL),
('9104db87-d8b2-4948-8972-d2b2128e4237', 'MAXIMILIANO_SOSA.jpg', 'jpg', '61-605b5d817ed9c6.03362253.jpg', NULL, NULL, NULL, 0, 0, '2021-03-24 12:40:49', NULL),
('916ced60-ed4f-4abf-9c83-58a6285381fb', 'LUCAS_GABRIEL_MALDONADO.jpg', 'jpg', '19-605b5d6e1fe233.70160600.jpg', NULL, NULL, NULL, 0, 0, '2021-03-24 12:40:30', NULL),
('92f632a4-70ab-4454-bad1-d8b135675669', 'CAMILA_BELEN_CARDOZO.jpg', 'jpg', '35-605b5d77218420.92876651.jpg', NULL, NULL, NULL, 0, 0, '2021-03-24 12:40:39', NULL),
('a32aced6-b8b0-4151-8b93-e77bb6644c14', 'NAZARENO_AREVALO.jpg', 'jpg', '46-605b5d7b267e43.76925940.jpg', NULL, NULL, NULL, 0, 0, '2021-03-24 12:40:43', NULL),
('a6ef044f-a146-4ae5-b6f0-d17dcec42a9c', 'DELIA_GERONIMO_POLIJO.jpg', 'jpg', '51-605b5d7cbf1a45.81699458.jpg', NULL, NULL, NULL, 0, 0, '2021-03-24 12:40:44', NULL),
('a8bf86a5-36b6-444d-9b5b-28089e39474b', 'MARIANELA_GIMENEZ_Y_DILAN_PEREZ.jpg', 'jpg', '59-605b5d803a24a8.37633006.jpg', NULL, NULL, NULL, 0, 0, '2021-03-24 12:40:48', NULL),
('a9dd5610-ad1c-40c6-a117-1df0488f5edc', 'RODRIGO_IBARRA.jpg', 'jpg', '56-605b5d7f0b8f76.72390574.jpg', NULL, NULL, NULL, 0, 0, '2021-03-24 12:40:47', NULL),
('adea609a-f48c-4c71-bb0d-86d09bd7d2b1', 'RODOLFO_DALESSANDRO_SOLANO_VERA.jpg', 'jpg', '48-605b5d7bd1a8b4.01617509.jpg', NULL, NULL, NULL, 0, 0, '2021-03-24 12:40:43', NULL),
('afdf17f7-8f45-43b2-a126-a4fb2ccdc662', 'MATIAS_EZEQUIEL_MORALES_VERACIERTO.jpg', 'jpg', '31-605b5d7587f138.03581986.jpg', NULL, NULL, NULL, 0, 0, '2021-03-24 12:40:37', NULL),
('b5d653c3-c354-466b-9480-362f55d866c8', 'AGUSTIN_BATAGLIA.jpg', 'jpg', '67-605b5d889dffa5.96677639.jpg', NULL, NULL, NULL, 0, 0, '2021-03-24 12:40:56', NULL),
('baf1a9e9-652d-45f5-bb8b-3915f817768c', 'ABRIL_ABIGAIL_ARIAS.jpg', 'jpg', '28-605b5d73698409.21719315.jpg', NULL, NULL, NULL, 0, 0, '2021-03-24 12:40:35', NULL),
('bc3de127-a278-496f-955c-d201e6ef0c3a', 'ABRIL_AGUSTINA_TOMASSELLA.jpg', 'jpg', '53-605b5d7d79e839.94463517.jpg', NULL, NULL, NULL, 0, 0, '2021-03-24 12:40:45', NULL),
('bed462bf-0e24-42e8-b728-4f14da767c28', 'YENNIFER_ANN_MARLENE_BARREIRO.jpg', 'jpg', '36-605b5d7768e0b4.67234601.jpg', NULL, NULL, NULL, 0, 0, '2021-03-24 12:40:39', NULL),
('bf69e27b-7543-4f6b-b044-d858911cc3c6', 'ZOE_AMBAR_MARINO.jpeg', 'jpeg', '6-605b5d690532f6.94914276.jpeg', NULL, NULL, NULL, 0, 0, '2021-03-24 12:40:25', NULL),
('c3b4776e-e201-4689-93ad-7c9cd99d7bb2', 'MARTIN_IGNACIO_MORALES_VERACIERTO.jpg', 'jpg', '30-605b5d754e2f35.14690938.jpg', NULL, NULL, NULL, 0, 0, '2021-03-24 12:40:37', NULL),
('c7a15cbf-d8f9-4e5d-a575-8dc11f92fac8', 'SANDRA_CAMILA_LUCERO.jpeg', 'jpeg', '4-605b5d688405f0.40744303.jpeg', NULL, NULL, NULL, 0, 0, '2021-03-24 12:40:24', NULL),
('cb346105-74fb-4c96-ac86-993aafc67ccf', 'MICAELA_BELEN_FERNANDEZ.jpeg', 'jpeg', '7-605b5d69337f68.03037725.jpeg', NULL, NULL, NULL, 0, 0, '2021-03-24 12:40:25', NULL),
('cdc1e256-6573-4efc-9a77-1914ec0c21ee', 'MARIA_BELEN_SOTO.jpeg', 'jpeg', '3-605b5d68504d67.66846070.jpeg', NULL, NULL, NULL, 0, 0, '2021-03-24 12:40:24', NULL),
('d1b9759d-2209-403d-baee-7ee49e189646', 'LUJAN_INES_JOSEFINA_PEREIRO_IBARRA.jpg', 'jpg', '45-605b5d7ad946c7.11635059.jpg', NULL, NULL, NULL, 0, 0, '2021-03-24 12:40:42', NULL),
('d512d9ee-aba9-48f2-8ee2-9352c8ae2ae2', 'TIZIANO_SEBASTIAN_ECHEVERRIA.jpg', 'jpg', '37-605b5d77be7985.00118482.jpg', NULL, NULL, NULL, 0, 0, '2021-03-24 12:40:39', NULL),
('d62c154f-d42e-4401-9dbd-2e5885d30b15', 'IAN_FACUNDO_OVIEDO.jpg', 'jpg', '38-605b5d7813cd85.57214446.jpg', NULL, NULL, NULL, 0, 0, '2021-03-24 12:40:40', NULL),
('da53db7f-4345-4b23-9a76-6a62d85cde50', 'JESUS_ADRIAN_FERNANDEZ.jpg', 'jpg', '50-605b5d7c6cd770.29392145.jpg', NULL, NULL, NULL, 0, 0, '2021-03-24 12:40:44', NULL),
('dff04ae2-3889-4047-b57e-0280a1f1f25f', 'CARLOS_EZEQUIEL_ANDREOLI.jpg', 'jpg', '23-605b5d6f9cea50.71020961.jpg', NULL, NULL, NULL, 0, 0, '2021-03-24 12:40:31', NULL),
('e0580897-d354-4419-8da9-d3138f4bd553', 'NAHIARA_Y_GIOVANI_DE_ROSA.jpg', 'jpg', '42-605b5d7954dce0.49058368.jpg', NULL, NULL, NULL, 0, 0, '2021-03-24 12:40:41', NULL),
('e4996830-6eee-49e6-b589-797342d4e05b', 'BRISA_AYELEN_PEREYRA.jpg', 'jpg', '63-605b5d827d5f00.56164829.jpg', NULL, NULL, NULL, 0, 0, '2021-03-24 12:40:50', NULL),
('e4c39ba7-715b-474e-8fb7-cab016c66485', 'MILAGROS_DE_LOS_ANGELES_CORDERO.jpg', 'jpg', '70-605b5d8a717804.75117661.jpg', NULL, NULL, NULL, 0, 0, '2021-03-24 12:40:58', NULL),
('ef2f8b97-7a80-4f94-8ecf-a0f14f3397dc', 'MELANIE_AYLEN_INES_RIGAUDI.jpg', 'jpg', '21-605b5d6e7f4584.43053334.jpg', NULL, NULL, NULL, 0, 0, '2021-03-24 12:40:30', NULL),
('f201144a-dfed-4ebc-8752-8d7664960942', 'RAMIRO_URIEL_AVALOS.jpg', 'jpg', '20-605b5d6e5646b1.95880025.jpg', NULL, NULL, NULL, 0, 0, '2021-03-24 12:40:30', NULL),
('f6381508-fcfb-4ded-8938-40bce0919652', 'GIOVANNI_BRIAN_DE_ROSA.jpg', 'jpg', '40-605b5d78bfcdb9.66247793.jpg', NULL, NULL, NULL, 0, 0, '2021-03-24 12:40:40', NULL),
('fb225745-f66d-4026-976f-dbcb5bf3e0d5', 'DAISY_ROCIO_FLORENTIN_VELAZQUEZ.jpeg', 'jpeg', '1-605b5d672ddb01.76453046.jpeg', NULL, NULL, NULL, 0, 0, '2021-03-24 12:40:23', NULL),
('fb4beccf-a670-4fa3-a0f0-29bda3a6d89a', 'SOL_GEMMA_SALAZAR_SALAS.jpg', 'jpg', '43-605b5d79a11f27.62726952.jpg', NULL, NULL, NULL, 0, 0, '2021-03-24 12:40:41', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `kids`
--

CREATE TABLE `kids` (
  `id` int(11) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `date_birth` date DEFAULT NULL,
  `date_missing` date DEFAULT NULL,
  `thumbnail` varchar(36) DEFAULT NULL,
  `age_photo` tinyint(4) DEFAULT NULL COMMENT 'years',
  `place` varchar(255) DEFAULT NULL,
  `gender` enum('F','M') DEFAULT NULL,
  `eye_color` varchar(30) DEFAULT NULL,
  `hair` varchar(30) DEFAULT NULL,
  `height` int(11) DEFAULT NULL COMMENT 'cm',
  `weight` int(11) DEFAULT NULL COMMENT 'kg',
  `distinguishing_marks` varchar(255) DEFAULT NULL,
  `ori_data` varchar(120) NOT NULL,
  `ori_id` varchar(240) NOT NULL,
  `found` tinyint(1) NOT NULL DEFAULT '0',
  `extras` json DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `kids`
--

INSERT INTO `kids` (`id`, `fullname`, `date_birth`, `date_missing`, `thumbnail`, `age_photo`, `place`, `gender`, `eye_color`, `hair`, `height`, `weight`, `distinguishing_marks`, `ori_data`, `ori_id`, `found`, `extras`) VALUES
(1, 'DAISY ROCIO FLORENTIN VELAZQUEZ', NULL, '2021-03-08', 'fb225745-f66d-4026-976f-dbcb5bf3e0d5', 14, 'Moreno, Buenos Aires', NULL, NULL, NULL, NULL, NULL, NULL, 'missingchildren.org.ar', '2890', 0, NULL),
(2, 'MARCOS ROJAS', NULL, '2021-03-08', '6fbff849-fbb8-446c-9b5c-8650e5e0945d', 17, 'Moreno, Buenos Aires', NULL, NULL, NULL, NULL, NULL, NULL, 'missingchildren.org.ar', '2889', 0, NULL),
(3, 'MARIA BELEN SOTO', NULL, '2021-02-23', 'cdc1e256-6573-4efc-9a77-1914ec0c21ee', 17, 'Mendoza', NULL, NULL, NULL, NULL, NULL, NULL, 'missingchildren.org.ar', '2886', 0, NULL),
(4, 'SANDRA CAMILA LUCERO', NULL, '2021-02-23', 'c7a15cbf-d8f9-4e5d-a575-8dc11f92fac8', 16, 'Mendoza', NULL, NULL, NULL, NULL, NULL, NULL, 'missingchildren.org.ar', '2885', 0, NULL),
(5, 'GIANELLA VILLEGAS', NULL, '2021-02-23', '5f303b2b-0320-4ab1-b705-180ca93cc17f', 14, 'Mendoza', NULL, NULL, NULL, NULL, NULL, NULL, 'missingchildren.org.ar', '2884', 0, NULL),
(6, 'ZOE AMBAR MARINO', NULL, '2019-02-01', 'bf69e27b-7543-4f6b-b044-d858911cc3c6', 5, 'Lavallol, Lomas de Zamora, Buenos Aires', NULL, NULL, NULL, NULL, NULL, NULL, 'missingchildren.org.ar', '2881', 0, NULL),
(7, 'MICAELA BELEN FERNANDEZ', NULL, '2020-11-01', 'cb346105-74fb-4c96-ac86-993aafc67ccf', 14, 'Jose C Paz, Buenos Aires', NULL, NULL, NULL, NULL, NULL, NULL, 'missingchildren.org.ar', '2879', 0, NULL),
(8, 'LAUTARO LOBOS', NULL, '2021-02-19', '66029063-d507-44e1-9108-3d0837f1a2fa', 14, 'Jose C Paz, Buenos Aires', NULL, NULL, NULL, NULL, NULL, NULL, 'missingchildren.org.ar', '2875', 0, NULL),
(9, 'LEANDRO GOMEZ', NULL, '2021-02-17', '6972abee-7dc2-44a2-ba0f-4230719c7d77', 10, 'Jose C paz, Buenos Aires', NULL, NULL, NULL, NULL, NULL, NULL, 'missingchildren.org.ar', '2873', 0, NULL),
(10, 'EZEQUIEL RESTIVO', NULL, '2021-01-18', '37adb17d-e82a-426d-a8e2-085b016c7b68', 14, 'Mar del Plata, Buenos Aires', NULL, NULL, NULL, NULL, NULL, NULL, 'missingchildren.org.ar', '2850', 0, NULL),
(11, 'SORAYA LUZ SOSA', NULL, '2021-01-31', '3c87af7e-9908-45a0-83bd-aabeec3231cd', 13, 'La Plata, Buenos Aires', NULL, NULL, NULL, NULL, NULL, NULL, 'missingchildren.org.ar', '2848', 0, NULL),
(12, 'LUNA GIMENEZ PEREIRA', NULL, '2020-12-11', '3cd89d98-9973-4704-b6a5-a710fa3e54fa', NULL, 'Misiones', NULL, NULL, NULL, NULL, NULL, NULL, 'missingchildren.org.ar', '2843', 0, NULL),
(13, 'EMANUEL MAXIMLIANO ESPINOSA', NULL, '2021-01-06', '230a534e-de27-43c4-8ce3-1ea6ed355cdc', 15, 'San Vicente, Buenos Aires', NULL, NULL, NULL, NULL, NULL, NULL, 'missingchildren.org.ar', '2840', 0, NULL),
(14, 'GISELLA NOEMI GARNICA', NULL, '2021-01-07', '02bbebdc-eb3d-4f0f-ab5c-58df5041193a', 14, 'Temperley, Buenos Aires', NULL, NULL, NULL, NULL, NULL, NULL, 'missingchildren.org.ar', '2839', 0, NULL),
(15, 'JONATHAN EZEQUIEL ACOSTA', NULL, '2020-12-15', '0986462f-282a-4cdb-8992-9d6442ad030a', 16, 'Avellaneda, Buenos Aires', NULL, NULL, NULL, NULL, NULL, NULL, 'missingchildren.org.ar', '2833', 0, NULL),
(16, 'OLGA MABEL ESPINDOLA', NULL, '2020-12-25', '8bfc507e-bdb8-4eff-93f7-930ba79533fe', 17, 'Moreno, Buenos Aires', NULL, NULL, NULL, NULL, NULL, NULL, 'missingchildren.org.ar', '2830', 0, NULL),
(17, 'DESIRE YAQUELINE O VALENTIN JOEL SILVA', NULL, '2020-11-11', '017ee08b-2ed9-4407-ad6f-e2798febe19c', 16, 'Lomas de Zamora, Buenos Aires', NULL, NULL, NULL, NULL, NULL, NULL, 'missingchildren.org.ar', '2802', 0, NULL),
(18, 'VICTORIA ABRIL ORTIZ', NULL, '2020-05-05', '472d64b8-edff-425b-b463-f5505d6cc3dd', 15, 'San Vicente, Buenos Aires', NULL, NULL, NULL, NULL, NULL, NULL, 'missingchildren.org.ar', '2798', 0, NULL),
(19, 'LUCAS GABRIEL MALDONADO', NULL, '2020-10-23', '916ced60-ed4f-4abf-9c83-58a6285381fb', 14, 'Moreno, Buenos Aires', NULL, NULL, NULL, NULL, NULL, NULL, 'missingchildren.org.ar', '2796', 0, NULL),
(20, 'RAMIRO URIEL AVALOS', NULL, '2020-09-26', 'f201144a-dfed-4ebc-8752-8d7664960942', 13, 'San Francisco Solano / Alte Brown, Buenos Aires', NULL, NULL, NULL, NULL, NULL, NULL, 'missingchildren.org.ar', '2780', 0, NULL),
(21, 'MELANIE AYLEN INES RIGAUDI', NULL, '2020-08-28', 'ef2f8b97-7a80-4f94-8ecf-a0f14f3397dc', 15, 'Moreno, Buenos Aires', NULL, NULL, NULL, NULL, NULL, NULL, 'missingchildren.org.ar', '2771', 0, NULL),
(22, 'TIARA NAHIR ANDREOLI', NULL, '2020-09-23', '68aaa6f1-4054-4c3d-b52b-918f64f59426', 12, 'Moreno, Buenos Aires', NULL, NULL, NULL, NULL, NULL, NULL, 'missingchildren.org.ar', '2755', 0, NULL),
(23, 'CARLOS EZEQUIEL ANDREOLI', NULL, '2020-09-23', 'dff04ae2-3889-4047-b57e-0280a1f1f25f', 13, 'Moreno, Buenos Aires', NULL, NULL, NULL, NULL, NULL, NULL, 'missingchildren.org.ar', '2754', 0, NULL),
(24, 'BRISA AYELEN MEYER', NULL, '2020-06-25', '5f14fa72-6dd2-4574-899a-af193a13b25a', 15, 'Ciudad Autónoma de Buenos Aires', NULL, NULL, NULL, NULL, NULL, NULL, 'missingchildren.org.ar', '2732', 0, NULL),
(25, 'MAXIMILIANO DANIEL FALCONNAT', NULL, '2020-06-18', '1ee551e5-f171-485f-b756-b51520a36abe', 16, 'Mar del Plata, Buenos Aires', NULL, NULL, NULL, NULL, NULL, NULL, 'missingchildren.org.ar', '2729', 0, NULL),
(26, 'ARIEL SERGIO MORINGO', NULL, '2020-02-04', '1c62f768-a47d-44b2-8705-84bbd2e37397', 13, 'Avellaneda, Buenos Aires', NULL, NULL, NULL, NULL, NULL, NULL, 'missingchildren.org.ar', '2688', 0, NULL),
(27, 'MELISA CHAVEZ', NULL, '2020-02-29', '21edf892-b8dd-4134-9f50-b02f9100b4e9', 13, 'Lomas de Zamora, Buenos Aires', NULL, NULL, NULL, NULL, NULL, NULL, 'missingchildren.org.ar', '2678', 0, NULL),
(28, 'ABRIL ABIGAIL ARIAS', NULL, '2020-02-29', 'baf1a9e9-652d-45f5-bb8b-3915f817768c', 13, 'Villa Fiorito, Lomas de Zamora, Buenos Aires', NULL, NULL, NULL, NULL, NULL, NULL, 'missingchildren.org.ar', '2677', 0, NULL),
(29, 'CAMILA MARILIN BARROSO NAVARRO', NULL, '2020-01-20', '78b9678a-c5cf-448c-86e3-66ac9384ff39', 17, 'San Rafel, Mendoza', NULL, NULL, NULL, NULL, NULL, NULL, 'missingchildren.org.ar', '2654', 0, NULL),
(30, 'MARTIN IGNACIO MORALES VERACIERTO', NULL, '2018-01-12', 'c3b4776e-e201-4689-93ad-7c9cd99d7bb2', NULL, 'Ushuaia, Tierra del Fuego', NULL, NULL, NULL, NULL, NULL, NULL, 'missingchildren.org.ar', '2621', 0, NULL),
(31, 'MATIAS EZEQUIEL MORALES VERACIERTO', NULL, '2018-01-12', 'afdf17f7-8f45-43b2-a126-a4fb2ccdc662', 3, 'Ushuaia, Tierra del Fuego', NULL, NULL, NULL, NULL, NULL, NULL, 'missingchildren.org.ar', '2620', 0, NULL),
(32, 'ABRAHAM MIGUEL RODRIGUEZ PERESTRELO', NULL, '2019-12-28', '18fb967e-c280-49ac-ae11-8d4c29f463ac', 10, 'Mar del Plata, Buenos Aires', NULL, NULL, NULL, NULL, NULL, NULL, 'missingchildren.org.ar', '2618', 0, NULL),
(33, 'ENOC EZEQUIEL RODRIGUEZ PERESTRELO', NULL, '2019-12-28', '5a53b445-b1ca-48cb-b586-38e20758edc5', 9, 'Mar del Plata, Buenos Aires', NULL, NULL, NULL, NULL, NULL, NULL, 'missingchildren.org.ar', '2617', 0, NULL),
(34, 'ALESSANDRA KATERINA TUCCE', NULL, '2019-02-01', '6b3386eb-1c38-4b45-bce7-d1e9e4b1dd1d', 4, 'Mar Del Plata, Buenos Aires', NULL, NULL, NULL, NULL, NULL, NULL, 'missingchildren.org.ar', '2615', 0, NULL),
(35, 'CAMILA BELEN CARDOZO', NULL, '2019-12-06', '92f632a4-70ab-4454-bad1-d8b135675669', 17, 'Longchamps, Buenos Aires', NULL, NULL, NULL, NULL, NULL, NULL, 'missingchildren.org.ar', '2591', 0, NULL),
(36, 'YENNIFER ANN MARLENE BARREIRO', NULL, '2019-07-08', 'bed462bf-0e24-42e8-b728-4f14da767c28', 16, 'Alte Brown, Buenos Aires', NULL, NULL, NULL, NULL, NULL, NULL, 'missingchildren.org.ar', '2524', 0, NULL),
(37, 'TIZIANO SEBASTIAN ECHEVERRIA', NULL, '2019-04-05', 'd512d9ee-aba9-48f2-8ee2-9352c8ae2ae2', 4, 'Florencio Varela, Buenos Aires', NULL, NULL, NULL, NULL, NULL, NULL, 'missingchildren.org.ar', '2523', 0, NULL),
(38, 'IAN FACUNDO OVIEDO', NULL, '2019-06-18', 'd62c154f-d42e-4401-9dbd-2e5885d30b15', 17, 'La Matanza, Buenos Aires', NULL, NULL, NULL, NULL, NULL, NULL, 'missingchildren.org.ar', '2516', 0, NULL),
(39, 'BENICIO CORONEL Y MILAGRO DE LOS ANGELES AVELLANEDA', NULL, '2016-10-28', '01f34b1d-b4be-4193-bdb3-c1d719f2b3e3', NULL, 'Barrio Lola Mora, Tucumán', NULL, NULL, NULL, NULL, NULL, NULL, 'missingchildren.org.ar', '2446', 0, NULL),
(40, 'GIOVANNI BRIAN DE ROSA', NULL, '2019-07-26', 'f6381508-fcfb-4ded-8938-40bce0919652', 13, 'Moron, Buenos Aires', NULL, NULL, NULL, NULL, NULL, NULL, 'missingchildren.org.ar', '2435', 0, NULL),
(41, 'NAHIARA GERALDINE DE ROSA', NULL, '2019-07-26', '179ec713-42fb-4cbd-8c18-187f80dbf6e5', 7, 'Moron, Buenos Aires', NULL, NULL, NULL, NULL, NULL, NULL, 'missingchildren.org.ar', '2434', 0, NULL),
(42, 'NAHIARA Y GIOVANI DE ROSA', NULL, '2019-07-26', 'e0580897-d354-4419-8da9-d3138f4bd553', 13, 'Moron, Buenos Aires', NULL, NULL, NULL, NULL, NULL, NULL, 'missingchildren.org.ar', '2433', 0, NULL),
(43, 'SOL GEMMA SALAZAR SALAS', NULL, '2019-01-23', 'fb4beccf-a670-4fa3-a0f0-29bda3a6d89a', 9, 'Salta, Capital, Salta', NULL, NULL, NULL, NULL, NULL, NULL, 'missingchildren.org.ar', '2354', 0, NULL),
(44, 'JACQUELINE TAMARA PEDROZA', NULL, '2019-05-08', '00eafd23-91d5-4eda-91c1-234a1386addc', 17, 'Quilmes, Buenos Aires', NULL, NULL, NULL, NULL, NULL, NULL, 'missingchildren.org.ar', '2327', 0, NULL),
(45, 'LUJAN INES JOSEFINA PEREIRO IBARRA', NULL, '2019-02-27', 'd1b9759d-2209-403d-baee-7ee49e189646', 15, 'Boulogne, Buenos Aires', NULL, NULL, NULL, NULL, NULL, NULL, 'missingchildren.org.ar', '2274', 0, NULL),
(46, 'NAZARENO AREVALO', NULL, '2019-03-04', 'a32aced6-b8b0-4151-8b93-e77bb6644c14', 13, 'La Plata, Buenos Aires', NULL, NULL, NULL, NULL, NULL, NULL, 'missingchildren.org.ar', '2265', 0, NULL),
(47, 'MATIAS EZEQUIEL PEREIRA', NULL, '2019-01-21', '84f19e02-174c-4865-b7f1-be4179bb7ef8', 13, 'General Rodriguez, Buenos Aires', NULL, NULL, NULL, NULL, NULL, NULL, 'missingchildren.org.ar', '2215', 0, NULL),
(48, 'RODOLFO DALESSANDRO SOLANO VERA', NULL, '2018-11-22', 'adea609a-f48c-4c71-bb0d-86d09bd7d2b1', 2, 'Valentin Alsina, Buenos Aires', NULL, NULL, NULL, NULL, NULL, NULL, 'missingchildren.org.ar', '2183', 0, NULL),
(49, 'THIAGO CRISTIANO EZEQUIEL DIAZ', NULL, '2017-05-19', '3beb26d8-efea-4b4b-85fc-6295087048f8', 2, 'Tigre, Buenos Aires', NULL, NULL, NULL, NULL, NULL, NULL, 'missingchildren.org.ar', '2145', 0, NULL),
(50, 'JESUS ADRIAN FERNANDEZ', NULL, '2018-11-13', 'da53db7f-4345-4b23-9a76-6a62d85cde50', 13, 'Villa Centenario,Lomas de Zamora, Buenos Aires', NULL, NULL, NULL, NULL, NULL, NULL, 'missingchildren.org.ar', '2131', 0, NULL),
(51, 'DELIA GERONIMO POLIJO', NULL, '2018-09-18', 'a6ef044f-a146-4ae5-b6f0-d17dcec42a9c', 14, 'La Paz, Córdoba', NULL, NULL, NULL, NULL, NULL, NULL, 'missingchildren.org.ar', '2046', 0, NULL),
(52, 'JULIETA TOMASSELLA', NULL, '2016-06-08', '42fa1e40-5af3-47ae-8779-213376a7c39b', 6, 'Goya, Corrientes', NULL, NULL, NULL, NULL, NULL, NULL, 'missingchildren.org.ar', '2004', 0, NULL),
(53, 'ABRIL AGUSTINA TOMASSELLA', NULL, '2016-06-08', 'bc3de127-a278-496f-955c-d201e6ef0c3a', 11, 'Goya, Corrientes', NULL, NULL, NULL, NULL, NULL, NULL, 'missingchildren.org.ar', '2003', 0, NULL),
(54, 'MARIA LISANDRA ALBORNOZ', NULL, '2014-09-14', '88e10536-e786-4356-ae77-781c2309c04c', 12, 'Dto. Rivadavia, Salta', NULL, NULL, NULL, NULL, NULL, NULL, 'missingchildren.org.ar', '1904', 0, NULL),
(55, 'CANDELA AGUSTINA CORREAS DE MELO', NULL, '2018-02-03', '037c3cf7-df6f-4d14-93a1-3a99b722f9b1', 15, 'San Vicente, Misiones', NULL, NULL, NULL, NULL, NULL, NULL, 'missingchildren.org.ar', '1880', 0, NULL),
(56, 'RODRIGO IBARRA', NULL, '2018-02-26', 'a9dd5610-ad1c-40c6-a117-1df0488f5edc', 16, 'Lomas del Tafi, ', NULL, NULL, NULL, NULL, NULL, NULL, 'missingchildren.org.ar', '1875', 0, NULL),
(57, 'LUCAS BOLOTTI', NULL, '2017-07-19', '64d78d01-c1d1-48f9-8612-0b3ae79361a3', 24, 'Papagayos, San Luis', NULL, NULL, NULL, NULL, NULL, NULL, 'missingchildren.org.ar', '1777', 0, NULL),
(58, 'GALA CANCINOS', NULL, '2017-05-16', '7e851b71-9879-400a-80a3-ecf85d0d4c13', 14, 'Salta', NULL, NULL, NULL, NULL, NULL, NULL, 'missingchildren.org.ar', '1752', 0, NULL),
(59, 'MARIANELA GIMENEZ Y DILAN PEREZ', NULL, '2017-01-01', 'a8bf86a5-36b6-444d-9b5b-28089e39474b', NULL, 'Marcos Paz, Buenos Aires', NULL, NULL, NULL, NULL, NULL, NULL, 'missingchildren.org.ar', '1695', 0, NULL),
(60, 'ALEXANDER NOZIGLIA', NULL, '2015-04-16', '1443c800-c898-40bf-a128-4585fca30b69', 9, 'Ciudad Autónoma de Buenos Aires', NULL, NULL, NULL, NULL, NULL, NULL, 'missingchildren.org.ar', '1563', 0, NULL),
(61, 'MAXIMILIANO SOSA', NULL, '2015-12-21', '9104db87-d8b2-4948-8972-d2b2128e4237', 5, 'Ceres, Santa Fe', NULL, NULL, NULL, NULL, NULL, NULL, 'missingchildren.org.ar', '1527', 0, NULL),
(62, 'JONE GIULIANA ABRIL GALIANO', NULL, '2012-01-01', '648c1f57-94b2-47d3-8c0d-54256e1453a9', 5, 'Santa Fe', NULL, NULL, NULL, NULL, NULL, NULL, 'missingchildren.org.ar', '1488', 0, NULL),
(63, 'BRISA AYELEN PEREYRA', NULL, '2015-06-21', 'e4996830-6eee-49e6-b589-797342d4e05b', 5, 'Ciudad Autónoma de Buenos Aires', NULL, NULL, NULL, NULL, NULL, NULL, 'missingchildren.org.ar', '1467', 0, NULL),
(64, 'ANGEL MARTIN MORE', NULL, '2015-08-23', '3ac03fc6-6620-4039-9cb4-b565181ab30a', 13, 'Glew, Buenos Aires', NULL, NULL, NULL, NULL, NULL, NULL, 'missingchildren.org.ar', '1450', 0, NULL),
(65, 'LUZ MORENA OLIVA', NULL, '2014-02-01', '0856c6f3-d473-43b5-8542-e4ad0304287c', 2, 'Traslasierra, Córdoba', NULL, NULL, NULL, NULL, NULL, NULL, 'missingchildren.org.ar', '1282', 0, NULL),
(66, 'MATIAS DAMIAN HUANCO', NULL, '2011-03-02', '4b928ae7-d1e0-4617-8071-dc8581228e89', 5, 'Jujuy', NULL, NULL, NULL, NULL, NULL, NULL, 'missingchildren.org.ar', '638', 0, NULL),
(67, 'AGUSTIN BATAGLIA', NULL, '2010-12-24', 'b5d653c3-c354-466b-9480-362f55d866c8', 8, 'Formosa', NULL, NULL, NULL, NULL, NULL, NULL, 'missingchildren.org.ar', '490', 0, NULL),
(68, 'CANDELA SOFIA MUNOZ', NULL, '2010-04-01', '0edf14e0-b404-4048-80a4-23449bbb8f16', 2, 'El Palomar, Buenos Aires', NULL, NULL, NULL, NULL, NULL, NULL, 'missingchildren.org.ar', '436', 0, NULL),
(69, 'MILAGROS DE LOS ANGELES NUNEZ', NULL, '2009-12-17', '4b03a690-c45d-4430-a2fd-b0be5cbf97a0', 2, 'Escobar, Buenos Aires', NULL, NULL, NULL, NULL, NULL, NULL, 'missingchildren.org.ar', '395', 0, NULL),
(70, 'MILAGROS DE LOS ANGELES CORDERO', NULL, '2006-12-02', 'e4c39ba7-715b-474e-8fb7-cab016c66485', 5, 'Grand Bourg, Buenos Aires', NULL, NULL, NULL, NULL, NULL, NULL, 'missingchildren.org.ar', '159', 0, NULL),
(71, 'SOFIA YASMIN HERRERA', NULL, '2008-09-28', '6577bd7e-a663-4221-8ba9-22ce737da778', 13, 'Rio Grande, Tierra del Fuego', NULL, NULL, NULL, NULL, NULL, NULL, 'missingchildren.org.ar', '151', 0, NULL),
(72, 'CELESTE MARISA CALVO', NULL, '2001-10-23', '7d9633d3-b40c-42da-8fc8-8ba003776d83', 7, 'Lanus, Buenos Aires', NULL, NULL, NULL, NULL, NULL, NULL, 'missingchildren.org.ar', '106', 0, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`uuid`),
  ADD KEY `belongs_to` (`belongs_to`);

--
-- Indexes for table `kids`
--
ALTER TABLE `kids`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ori_data` (`ori_data`,`ori_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kids`
--
ALTER TABLE `kids`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
