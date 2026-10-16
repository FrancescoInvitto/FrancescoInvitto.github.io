-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 16, 2026 at 04:18 PM
-- Server version: 8.4.3
-- PHP Version: 8.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `clinica_veterinaria_petcare`
--
CREATE DATABASE IF NOT EXISTS `clinica_veterinaria_petcare` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `clinica_veterinaria_petcare`;

-- --------------------------------------------------------

--
-- Table structure for table `animali`
--

DROP TABLE IF EXISTS `animali`;
CREATE TABLE `animali` (
  `id_animale` int NOT NULL,
  `nome` varchar(35) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `specie` varchar(20) NOT NULL,
  `razza` varchar(20) NOT NULL,
  `data_nascita` date NOT NULL,
  `id_proprietario` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `animali`
--

INSERT INTO `animali` (`id_animale`, `nome`, `specie`, `razza`, `data_nascita`, `id_proprietario`) VALUES
(1, 'Fido', 'Cane', 'Pastore Tedesco', '2019-03-15', 1),
(2, 'Fuffi', 'Gatto', 'Persiano', '2021-06-20', 1),
(3, 'Milo', 'Gatto', 'Europeo', '2018-11-02', 2),
(4, 'Luna', 'Cane', 'Labrador Retriever', '2020-01-10', 3),
(5, 'Pallino', 'Coniglio', 'Nano Olandese', '2022-04-05', 4),
(6, 'Birba', 'Gatto', 'Siamese', '2017-08-30', 5),
(7, 'Rocky', 'Cane', 'Boxer', '2021-12-12', 5),
(8, 'Briciola', 'Cane', 'Chihuahua', '2022-09-01', 6),
(9, 'Simba', 'Gatto', 'Maine Coon', '2020-05-18', 7),
(10, 'Oliver', 'Gatto', 'Europeo', '2023-02-14', 8),
(11, 'Thor', 'Cane', 'Rottweiler', '2018-07-22', 8),
(12, 'Leo', 'Tartaruga', 'Testudo Hermanni', '2015-05-10', 9),
(13, 'Mia', 'Gatto', 'Sphynx', '2022-10-05', 10),
(14, 'Jack', 'Cane', 'Jack Russell Terrier', '2021-03-30', 2),
(15, 'Kira', 'Cane', 'Husky Siberiano', '2019-11-11', 4);

-- --------------------------------------------------------

--
-- Table structure for table `dettagli_visite`
--

DROP TABLE IF EXISTS `dettagli_visite`;
CREATE TABLE `dettagli_visite` (
  `id_visita` int NOT NULL,
  `id_prestazione` int NOT NULL,
  `prezzo_applicato` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `dettagli_visite`
--

INSERT INTO `dettagli_visite` (`id_visita`, `id_prestazione`, `prezzo_applicato`) VALUES
(1, 1, 40),
(1, 2, 35),
(2, 1, 40),
(3, 1, 40),
(3, 6, 50),
(4, 2, 35),
(5, 1, 40),
(5, 4, 110),
(6, 1, 40),
(6, 6, 50),
(6, 7, 180),
(7, 1, 40),
(8, 1, 40),
(8, 5, 30),
(9, 8, 60),
(10, 1, 40),
(11, 1, 40),
(11, 2, 35),
(12, 1, 40),
(12, 3, 85);

-- --------------------------------------------------------

--
-- Table structure for table `prestazioni`
--

DROP TABLE IF EXISTS `prestazioni`;
CREATE TABLE `prestazioni` (
  `id_prestazione` int NOT NULL,
  `descrizione` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `costo_base` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `prestazioni`
--

INSERT INTO `prestazioni` (`id_prestazione`, `descrizione`, `costo_base`) VALUES
(1, 'Visita Generale di Controllo', 40),
(2, 'Vaccinazione Pentavalente', 35),
(3, 'Ecografia Addominale', 85),
(4, 'Pulizia Dentale (Ablazione Tartaro)', 120),
(5, 'Applicazione Microchip e Registrazione', 30),
(6, 'Esame del Sangue Completo', 50),
(7, 'Intervento Chirurgico di Sterilizzazione', 180),
(8, 'Visita Specialistica Animali Esotici', 60);

-- --------------------------------------------------------

--
-- Table structure for table `proprietari`
--

DROP TABLE IF EXISTS `proprietari`;
CREATE TABLE `proprietari` (
  `id_proprietario` int NOT NULL,
  `cod_fiscale` char(16) NOT NULL,
  `nome` varchar(25) NOT NULL,
  `cognome` varchar(25) NOT NULL,
  `telefono` varchar(15) NOT NULL,
  `email` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `proprietari`
--

INSERT INTO `proprietari` (`id_proprietario`, `cod_fiscale`, `nome`, `cognome`, `telefono`, `email`) VALUES
(1, 'RSSMRA85A01L219K', 'Mario', 'Rossi', '3331234567', 'mario.rossi@email.it'),
(2, 'BNCVRG90M42F205Z', 'Virginia', 'Bianchi', '3479876543', 'virginia.b@email.it'),
(3, 'VRDLGI78R15H501U', 'Luigi', 'Verdi', '3201122333', 'luigi.verdi@gmail.com'),
(4, 'FRRGLI92D50F205X', 'Giulia', 'Ferrari', '3405566777', 'giulia.ferrari@tin.it'),
(5, 'RSPGNN75E12H501Y', 'Giovanni', 'Russo', '3389900111', 'g.russo@outlook.it'),
(6, 'LMBFNC88P60F205W', 'Francesca', 'Lombardi', '3294433221', 'francesca.lombardi@gmail.com'),
(7, 'CNTNLT82T20H501Z', 'Alberto', 'Conti', '3358877665', 'alberto.conti@fastwebnet.it'),
(8, 'GLSMRA95C45F205V', 'Maria', 'Galli', '3481122334', 'maria.galli@yahoo.it'),
(9, 'MNTMRO70A10H501W', 'Mauro', 'Monti', '3287766554', 'm.monti@libero.it'),
(10, 'BRNCLD98S18F205R', 'Claudio', 'Bruno', '3396655443', 'claudio.bruno@email.it');

-- --------------------------------------------------------

--
-- Table structure for table `veterinari`
--

DROP TABLE IF EXISTS `veterinari`;
CREATE TABLE `veterinari` (
  `id_veterinario` int NOT NULL,
  `nome` varchar(25) NOT NULL,
  `cognome` varchar(25) NOT NULL,
  `specializzazione` varchar(35) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `telefono` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `veterinari`
--

INSERT INTO `veterinari` (`id_veterinario`, `nome`, `cognome`, `specializzazione`, `telefono`) VALUES
(1, 'Stefano', 'De Luca', 'Chirurgia Generale', '3201111111'),
(2, 'Laura', 'Neri', 'Dermatologia ed Ematologia', '3402222222'),
(3, 'Marco', 'Romano', 'Anestesia e Terapia Intensiva', '3383333333'),
(4, 'Elena', 'Costa', 'Animali Esotici e Non Convenzionali', '3294444444');

-- --------------------------------------------------------

--
-- Table structure for table `visite`
--

DROP TABLE IF EXISTS `visite`;
CREATE TABLE `visite` (
  `id_visita` int NOT NULL,
  `data_visita` date NOT NULL,
  `ora_visita` time NOT NULL,
  `diagnosi` varchar(50) NOT NULL,
  `note` varchar(50) NOT NULL,
  `id_animale` int NOT NULL,
  `id_veterinario` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `visite`
--

INSERT INTO `visite` (`id_visita`, `data_visita`, `ora_visita`, `diagnosi`, `note`, `id_animale`, `id_veterinario`) VALUES
(1, '2026-08-10', '09:30:00', 'Controllo periodico e vaccinazione', 'Paziente in ottima salute.', 1, 1),
(2, '2026-08-12', '11:00:00', 'Lieve dermatite cutanea', 'Prescritto shampoo dermatologico specifico.', 3, 2),
(3, '2026-08-20', '15:00:00', 'Lieve disidratazione e inappetenza', 'Consigliati esami ematici approfonditi.', 6, 2),
(4, '2026-09-01', '10:15:00', 'Richiamo vaccinale annuale', 'Nessuna reazione avversa riscontrata.', 4, 1),
(5, '2026-09-05', '16:30:00', 'Tartaro diffuso con iniziale gengivite', 'Programmata seduta di ablazione.', 7, 1),
(6, '2026-09-12', '09:00:00', 'Sterilizzazione preventiva programmata', 'Intervento riuscito senza complicazioni.', 2, 3),
(7, '2026-09-15', '14:00:00', 'Presenza di pulci e irritazione', 'Applicato antiparassitario spot-on.', 8, 2),
(8, '2026-09-22', '11:30:00', 'Punto di forza e controllo microchip', 'Microchip verificato e perfettamente leggibile.', 10, 1),
(9, '2026-10-01', '10:00:00', 'Controllo crescita incisivi', 'Limatura dentale effettuata con successo.', 5, 4),
(10, '2026-10-03', '17:00:00', 'Lieve zoppia arto posteriore destro', 'Paziente tenuto a riposo per 5 giorni.', 11, 1),
(11, '2026-10-05', '09:30:00', 'Controllo generale e profilassi vaccinale', 'Somministrato vaccino pentavalente.', 14, 2),
(12, '2026-10-08', '15:45:00', 'Sospetto corpo estraneo nello stomaco', 'Prescritta ecografia urgente.', 15, 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `animali`
--
ALTER TABLE `animali`
  ADD PRIMARY KEY (`id_animale`),
  ADD KEY `id_proprietario` (`id_proprietario`);

--
-- Indexes for table `dettagli_visite`
--
ALTER TABLE `dettagli_visite`
  ADD PRIMARY KEY (`id_visita`,`id_prestazione`),
  ADD KEY `id_visita` (`id_visita`,`id_prestazione`),
  ADD KEY `id_prestazione` (`id_prestazione`);

--
-- Indexes for table `prestazioni`
--
ALTER TABLE `prestazioni`
  ADD PRIMARY KEY (`id_prestazione`);

--
-- Indexes for table `proprietari`
--
ALTER TABLE `proprietari`
  ADD PRIMARY KEY (`id_proprietario`);

--
-- Indexes for table `veterinari`
--
ALTER TABLE `veterinari`
  ADD PRIMARY KEY (`id_veterinario`);

--
-- Indexes for table `visite`
--
ALTER TABLE `visite`
  ADD PRIMARY KEY (`id_visita`),
  ADD KEY `id_animale` (`id_animale`,`id_veterinario`),
  ADD KEY `id_veterinario` (`id_veterinario`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `animali`
--
ALTER TABLE `animali`
  MODIFY `id_animale` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `prestazioni`
--
ALTER TABLE `prestazioni`
  MODIFY `id_prestazione` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `proprietari`
--
ALTER TABLE `proprietari`
  MODIFY `id_proprietario` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `veterinari`
--
ALTER TABLE `veterinari`
  MODIFY `id_veterinario` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `visite`
--
ALTER TABLE `visite`
  MODIFY `id_visita` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `animali`
--
ALTER TABLE `animali`
  ADD CONSTRAINT `animali_ibfk_1` FOREIGN KEY (`id_proprietario`) REFERENCES `proprietari` (`id_proprietario`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `dettagli_visite`
--
ALTER TABLE `dettagli_visite`
  ADD CONSTRAINT `dettagli_visite_ibfk_1` FOREIGN KEY (`id_prestazione`) REFERENCES `prestazioni` (`id_prestazione`) ON UPDATE CASCADE,
  ADD CONSTRAINT `dettagli_visite_ibfk_2` FOREIGN KEY (`id_visita`) REFERENCES `visite` (`id_visita`) ON UPDATE CASCADE;

--
-- Constraints for table `visite`
--
ALTER TABLE `visite`
  ADD CONSTRAINT `visite_ibfk_1` FOREIGN KEY (`id_animale`) REFERENCES `animali` (`id_animale`) ON UPDATE CASCADE,
  ADD CONSTRAINT `visite_ibfk_2` FOREIGN KEY (`id_veterinario`) REFERENCES `veterinari` (`id_veterinario`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
