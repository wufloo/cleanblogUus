-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Loomise aeg: Okt 06, 2015 kell 09:09 PL
-- Serveri versioon: 5.6.26
-- PHP versioon: 5.6.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT = @@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS = @@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION = @@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Andmebaas: `cleanblog`
--

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `authors`
--

CREATE TABLE IF NOT EXISTS `authors` (
  `author_id`   INT(11) UNSIGNED NOT NULL,
  `author_name` VARCHAR(255)     NOT NULL
)
  ENGINE = InnoDB
  AUTO_INCREMENT = 3
  DEFAULT CHARSET = latin1;

--
-- Andmete tõmmistamine tabelile `authors`
--

INSERT INTO `authors` (`author_id`, `author_name`) VALUES
  (1, 'Klaabu'),
  (2, 'Sipsik');

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `posts`
--

CREATE TABLE IF NOT EXISTS `posts` (
  `post_id`          INT(11) UNSIGNED NOT NULL,
  `author_id`        INT(10) UNSIGNED NOT NULL,
  `post_title`       VARCHAR(255)     NOT NULL,
  `post_description` VARCHAR(255)     NOT NULL,
  `post_text`        TEXT             NOT NULL,
  `post_created`     DATETIME         NOT NULL DEFAULT CURRENT_TIMESTAMP
)
  ENGINE = InnoDB
  AUTO_INCREMENT = 3
  DEFAULT CHARSET = latin1;

--
-- Andmete tõmmistamine tabelile `posts`
--

INSERT INTO `posts` (`post_id`, `author_id`, `post_title`, `post_description`, `post_text`, `post_created`) VALUES
  (1, 1, 'jkiojoijioj', 'yguyguyguyuy',
   'asdjklxfupeci qwuyxjpiuxerynpi jhegfcuhnuiqaxynkpwe JHB UIFQEYNXFUFIPUXNIW  YI ', '2015-10-06 21:39:24'),
  (2, 2, 'Jah siin ma olen    ', 'Teine katse', 'sedasi istun ma koledasti', '2015-10-06 21:49:39');

--
-- Indeksid tõmmistatud tabelitele
--

--
-- Indeksid tabelile `authors`
--
ALTER TABLE `authors`
ADD PRIMARY KEY (`author_id`);

--
-- Indeksid tabelile `posts`
--
ALTER TABLE `posts`
ADD PRIMARY KEY (`post_id`),
ADD KEY `author_id` (`author_id`);

--
-- AUTO_INCREMENT tõmmistatud tabelitele
--

--
-- AUTO_INCREMENT tabelile `authors`
--
ALTER TABLE `authors`
MODIFY `author_id` INT(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT = 3;
--
-- AUTO_INCREMENT tabelile `posts`
--
ALTER TABLE `posts`
MODIFY `post_id` INT(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT = 3;
--
-- Tõmmistatud tabelite piirangud
--

--
-- Piirangud tabelile `posts`
--
ALTER TABLE `posts`
ADD CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`author_id`) REFERENCES `authors` (`author_id`);

/*!40101 SET CHARACTER_SET_CLIENT = @OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS = @OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION = @OLD_COLLATION_CONNECTION */;