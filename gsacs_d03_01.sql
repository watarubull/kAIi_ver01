-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- ホスト: localhost
-- 生成日時: 2021 年 10 月 08 日 01:31
-- サーバのバージョン： 10.4.11-MariaDB
-- PHP のバージョン: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- データベース: `gsacs_d03_01`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `class_table`
--

CREATE TABLE `class_table` (
  `classID` int(11) NOT NULL,
  `className` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `courseTerm` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `class_table`
--

INSERT INTO `class_table` (`classID`, `className`, `courseTerm`) VALUES
(1, 'Webデザイナー専攻', 6),
(2, '主婦ママクラス', 7),
(3, 'Webデザイナー専攻（グラフィック経験者）', 6),
(4, 'Webデザイナー専攻（フリーランススタートアップパック）', 6),
(5, 'Webデザイナー専攻（超実践型就転職プラン）', 7),
(6, 'ネット動画クリエイター専攻', 4);

-- --------------------------------------------------------

--
-- テーブルの構造 `epi_table`
--

CREATE TABLE `epi_table` (
  `id` int(12) NOT NULL,
  `epi_title` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `epi_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `userID` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- テーブルの構造 `ex_attend_table`
--

CREATE TABLE `ex_attend_table` (
  `exattendID` int(11) NOT NULL,
  `exID` int(11) NOT NULL,
  `stuID` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL,
  `addDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `ex_attend_table`
--

INSERT INTO `ex_attend_table` (`exattendID`, `exID`, `stuID`, `addDate`) VALUES
(44, 1, 'wsap211101', '2021-10-01 11:52:01'),
(45, 3, 'wsap211101', '2021-10-01 11:52:01'),
(46, 1, 'wsap211102', '2021-10-01 12:00:53'),
(47, 3, 'wsap211102', '2021-10-01 12:00:53'),
(48, 1, 'wsap211103', '2021-10-02 03:45:45'),
(49, 3, 'wsap211103', '2021-10-02 03:45:45'),
(50, 5, 'wsap211103', '2021-10-02 03:45:45'),
(51, 1, 'wsap211104', '2021-10-02 04:21:34'),
(52, 5, 'wsap211104', '2021-10-02 04:21:34'),
(53, 6, 'wsap211104', '2021-10-02 04:21:34');

-- --------------------------------------------------------

--
-- テーブルの構造 `ex_table`
--

CREATE TABLE `ex_table` (
  `exID` int(11) NOT NULL,
  `exName` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `courseTerm` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `ex_table`
--

INSERT INTO `ex_table` (`exID`, `exName`, `courseTerm`) VALUES
(1, 'wordpress講座', 2),
(3, 'PHP講座', 2),
(4, 'バナー制作実践講座', 0),
(5, '動画編集マスター講座', 1),
(6, 'モーショングラフィック講座', 1),
(7, 'お仕事TRYプログラム', 1);

-- --------------------------------------------------------

--
-- テーブルの構造 `stu_table`
--

CREATE TABLE `stu_table` (
  `stuID` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stuName` varchar(24) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stuRuby` varchar(24) COLLATE utf8mb4_unicode_ci NOT NULL,
  `classID` int(11) NOT NULL,
  `startMonth` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gradMonth` varchar(12) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attendStart` date DEFAULT NULL,
  `orientation` date DEFAULT NULL,
  `trainerID` int(12) DEFAULT NULL,
  `1stPresen` date DEFAULT NULL,
  `2ndPresen` date DEFAULT NULL,
  `3rdPresen` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `stu_table`
--

INSERT INTO `stu_table` (`stuID`, `stuName`, `stuRuby`, `classID`, `startMonth`, `gradMonth`, `attendStart`, `orientation`, `trainerID`, `1stPresen`, `2ndPresen`, `3rdPresen`) VALUES
('wsap211101', '五十嵐渉', 'いがらしわたる', 1, '2021-11', '2022-8', NULL, NULL, NULL, NULL, NULL, NULL),
('wsap211102', '五十嵐わた子', 'いがらしわたこ', 2, '2021-11', '2022-9', NULL, NULL, NULL, NULL, NULL, NULL),
('wsap211103', 'ましゃ', 'ましゃ', 2, '2021-11', '2022-10', NULL, NULL, NULL, NULL, NULL, NULL),
('wsap211104', '五十嵐わた子', 'いがらしわたこ', 4, '2021-11', '2022-8', NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- テーブルの構造 `users_table`
--

CREATE TABLE `users_table` (
  `id` int(12) NOT NULL,
  `username` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_admin` int(1) NOT NULL,
  `is_deleted` int(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `users_table`
--

INSERT INTO `users_table` (`id`, `username`, `password`, `is_admin`, `is_deleted`, `created_at`, `updated_at`) VALUES
(1, 'わたる', 'wataru1234', 1, 0, '2021-10-06 19:32:16', '2021-10-06 19:32:16'),
(2, 'test', 'test01', 0, 0, '2021-10-08 08:27:15', '2021-10-08 08:27:15');

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `class_table`
--
ALTER TABLE `class_table`
  ADD PRIMARY KEY (`classID`);

--
-- テーブルのインデックス `epi_table`
--
ALTER TABLE `epi_table`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `ex_attend_table`
--
ALTER TABLE `ex_attend_table`
  ADD PRIMARY KEY (`exattendID`);

--
-- テーブルのインデックス `ex_table`
--
ALTER TABLE `ex_table`
  ADD PRIMARY KEY (`exID`);

--
-- テーブルのインデックス `stu_table`
--
ALTER TABLE `stu_table`
  ADD PRIMARY KEY (`stuID`);

--
-- テーブルのインデックス `users_table`
--
ALTER TABLE `users_table`
  ADD PRIMARY KEY (`id`);

--
-- ダンプしたテーブルのAUTO_INCREMENT
--

--
-- テーブルのAUTO_INCREMENT `class_table`
--
ALTER TABLE `class_table`
  MODIFY `classID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- テーブルのAUTO_INCREMENT `epi_table`
--
ALTER TABLE `epi_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT;

--
-- テーブルのAUTO_INCREMENT `ex_attend_table`
--
ALTER TABLE `ex_attend_table`
  MODIFY `exattendID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- テーブルのAUTO_INCREMENT `ex_table`
--
ALTER TABLE `ex_table`
  MODIFY `exID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- テーブルのAUTO_INCREMENT `users_table`
--
ALTER TABLE `users_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
