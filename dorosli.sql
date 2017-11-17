-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 17 Lis 2017, 09:36
-- Wersja serwera: 10.1.26-MariaDB
-- Wersja PHP: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `pytania_do_gier_edukacyjnych`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `dorosli`
--

CREATE TABLE `dorosli` (
  `id_pytania` int(3) NOT NULL,
  `Tresc_Pytania` text COLLATE utf8mb4_polish_ci NOT NULL,
  `OdpA` varchar(30) COLLATE utf8mb4_polish_ci NOT NULL,
  `OdpB` varchar(30) COLLATE utf8mb4_polish_ci NOT NULL,
  `OdpC` varchar(30) COLLATE utf8mb4_polish_ci DEFAULT NULL,
  `OdpD` varchar(30) COLLATE utf8mb4_polish_ci DEFAULT NULL,
  `Poprawna` varchar(30) COLLATE utf8mb4_polish_ci NOT NULL,
  `Kategoria` int(30) NOT NULL,
  `ilosc_pts` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Zrzut danych tabeli `dorosli`
--

INSERT INTO `dorosli` (`id_pytania`, `Tresc_Pytania`, `OdpA`, `OdpB`, `OdpC`, `OdpD`, `Poprawna`, `Kategoria`, `ilosc_pts`) VALUES
(0, 'Rozwiń skrót GTA', 'Green Thief Arnold', 'Grand Theft Auto', 'Grajmy tutaj A', NULL, 'Grand Theft Auto', 12, 1),
(0, 'Rozwiń skrót GTA', 'Green Thief Arnold', 'Grand Theft Auto', 'Grajmy tutaj A', NULL, 'Grand Theft Auto', 12, 1);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
