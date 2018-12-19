-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- 생성 시간: 18-10-26 02:39
-- 서버 버전: 10.1.34-MariaDB
-- PHP 버전: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 데이터베이스: `cuweb`
--

-- --------------------------------------------------------

--
-- 테이블 구조 `cu`
--

CREATE TABLE `cu` (
  `username` varchar(20) CHARACTER SET utf8 NOT NULL,
  `userid` varchar(20) CHARACTER SET utf8 NOT NULL,
  `userpw` varchar(50) CHARACTER SET utf8 NOT NULL,
  `phone` varchar(20) CHARACTER SET utf8 NOT NULL,
  `email` varchar(30) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- 테이블 구조 `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `title` varchar(100) CHARACTER SET utf8 NOT NULL,
  `body` text CHARACTER SET utf8 NOT NULL,
  `writer` varchar(20) CHARACTER SET utf8 NOT NULL,
  `wdate` datetime NOT NULL,
  `file` varchar(100) CHARACTER SET utf8 NOT NULL,
  `hit` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 테이블의 덤프 데이터 `news`
--

INSERT INTO `news` (`id`, `title`, `body`, `writer`, `wdate`, `file`, `hit`) VALUES
(0, '글쓰기 테스트 입니다.', '잘 써집니까?', '박지희', '2018-10-25 20:16:37', 'yellow.png', 0);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
