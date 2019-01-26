-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- 생성 시간: 19-01-26 12:08
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
-- 테이블 구조 `cunews`
--

CREATE TABLE `cunews` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `body` text NOT NULL,
  `writer` varchar(50) NOT NULL,
  `wdate` date NOT NULL,
  `file` varchar(100) NOT NULL,
  `hit` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 테이블의 덤프 데이터 `cunews`
--

INSERT INTO `cunews` (`id`, `title`, `body`, `writer`, `wdate`, `file`, `hit`) VALUES
(1, '문의합니다', '상품 문의합니다.', '박방울', '2019-01-24', 'api.jpg', 8);

-- --------------------------------------------------------

--
-- 테이블 구조 `cuuser`
--

CREATE TABLE `cuuser` (
  `id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `userid` varchar(20) NOT NULL,
  `userpw` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 테이블의 덤프 데이터 `cuuser`
--

INSERT INTO `cuuser` (`id`, `username`, `userid`, `userpw`, `phone`, `email`) VALUES
(1, '박지희', 'brs0704', '1010qkrwlgml', '01097055061', 'brs0704@naver.com');

--
-- 덤프된 테이블의 인덱스
--

--
-- 테이블의 인덱스 `cunews`
--
ALTER TABLE `cunews`
  ADD PRIMARY KEY (`id`);

--
-- 테이블의 인덱스 `cuuser`
--
ALTER TABLE `cuuser`
  ADD PRIMARY KEY (`id`);

--
-- 덤프된 테이블의 AUTO_INCREMENT
--

--
-- 테이블의 AUTO_INCREMENT `cunews`
--
ALTER TABLE `cunews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 테이블의 AUTO_INCREMENT `cuuser`
--
ALTER TABLE `cuuser`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
