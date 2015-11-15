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
  ENGINE = cleanbloguus
  AUTO_INCREMENT = 3
  DEFAULT CHARSET = latin1;

--
-- Andmete t�mmistamine tabelile `authors`
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
  ENGINE = cleanbloguus
  AUTO_INCREMENT = 3
  DEFAULT CHARSET = latin1;

--
-- Andmete t�mmistamine tabelile `posts`
--

INSERT INTO `posts` (`post_id`, `author_id`, `post_title`, `post_description`, `post_text`, `post_created`) VALUES
  (1, 1, 'Mees peab uurma ja see uurimus on v�gevaim.', 'Probleemid v�ivad n�ha v�ga tillukestena 150 miili k�rguselt.',
   'Kunagi kogu oma ajaloo on mehed suutnud t�eliselt kujutleda maailma �ks: �he sf��ri, maakera, millel omadusi maakera, �mmargune maa, kus k�ik suunad l�puks kohtuda, kus puudub keskus, sest iga punkt v�i neid pole, keskus - v�rdne Maa, mis k�ik mehed h�ivata v�rdsetena. Airman muld, kui vabad mehed teevad seda, mis on t�eliselt ringi: maakera praktikas, mitte teoorias.

Teadus l�ikab kaks v�imalust, muidugi; Oma tooteid saab kasutada nii hea ja kurja vahel. Aga seal ei ole enam tagasiteed teadusest. Varajased hoiatused tehnoloogiliste ohtude tulla ka teaduses.

Mis oli k�ige olulisem umbes Kuu reisi ei olnud, et mees jalg Moon, kuid mida nad m��rata silma maa peal.

�ks Hiina lugu r��gib m�ned mehed saadeti kahjustada noor t�druk, kes n�hes tema ilu, muutub tema kaitsjad, mitte tema rikkujaid. See, kuidas ma tundsin n�hes Maa esmakordselt. Ma ei saa aidata, kuid armastan ja kalliks teda.

Neile, kes on n�inud Maa kosmosest, ja sadu ja v�ib-olla veel tuhandeid, kes on kogemus kindlasti muudab oma vaatenurgast. Asju, mida me jagame meie maailmas on palju v��rtuslikum kui need, mis meid lahutavad.',
   '2015-10-06 21:39:24'),
  (2, 2, 'Life suxx', 'Blaa', 'Urrjuhh', '2015-10-06 21:49:39');
(4, 1, 'dfdsfdszfs', 'dfsfxcsxzfdsx', 'fdsfdszxfc', '2015-10-06 21:49:39');

--
-- Indeksid t�mmistatud tabelitele
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
-- AUTO_INCREMENT t�mmistatud tabelitele
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
-- T�mmistatud tabelite piirangud
--

--
-- Piirangud tabelile `posts`
--
ALTER TABLE `posts`
ADD CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`author_id`) REFERENCES `authors` (`author_id`);

/*!40101 SET CHARACTER_SET_CLIENT = @OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS = @OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION = @OLD_COLLATION_CONNECTION */;