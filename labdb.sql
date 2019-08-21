-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2019 年 08 月 21 日 11:39
-- 伺服器版本： 10.3.16-MariaDB
-- PHP 版本： 7.1.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `labdb`
--

-- --------------------------------------------------------

--
-- 資料表結構 `news`
--

CREATE TABLE `news` (
  `todoID` int(10) UNSIGNED NOT NULL COMMENT '清單編號',
  `title` varchar(50) NOT NULL DEFAULT '' COMMENT '待辦內容',
  `deadline` varchar(20) DEFAULT '' COMMENT '截止日期',
  `status` char(3) DEFAULT '未完成' COMMENT '完成狀態'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `news`
--

INSERT INTO `news` (`todoID`, `title`, `deadline`, `status`) VALUES
(21, 't1', '', '未完成'),
(22, 'v', '', '完成');

-- --------------------------------------------------------

--
-- 資料表結構 `news0`
--

CREATE TABLE `news0` (
  `newsId` int(11) NOT NULL,
  `ymd` char(10) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `news0`
--

INSERT INTO `news0` (`newsId`, `ymd`, `title`) VALUES
(1, '2017-05-01', 'News A'),
(2, '2017-05-02', 'News B'),
(3, '2017-05-03', 'News C'),
(4, '2017-05-04', 'News D'),
(5, '2017-05-05', 'News E'),
(8, 'r', 'eee'),
(11, '-.-', '000');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`todoID`);

--
-- 資料表索引 `news0`
--
ALTER TABLE `news0`
  ADD PRIMARY KEY (`newsId`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `news`
--
ALTER TABLE `news`
  MODIFY `todoID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '清單編號', AUTO_INCREMENT=23;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `news0`
--
ALTER TABLE `news0`
  MODIFY `newsId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
