-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- ホスト: localhost:8889
-- 生成日時: 2022 年 4 月 06 日 11:07
-- サーバのバージョン： 5.7.34
-- PHP のバージョン: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- データベース: `ramen site`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `good`
--

CREATE TABLE `good` (
  `post_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `delete_flg` tinyint(4) NOT NULL DEFAULT '0',
  `created_data` datetime NOT NULL,
  `updata_data` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- テーブルのデータのダンプ `good`
--

INSERT INTO `good` (`post_id`, `user_id`, `delete_flg`, `created_data`, `updata_data`) VALUES
(133, 34, 0, '2022-04-01 15:23:11', '2022-04-01 13:23:11'),
(135, 34, 0, '2022-04-01 15:29:22', '2022-04-01 13:29:22'),
(127, 34, 0, '2022-04-01 15:40:23', '2022-04-01 13:40:23'),
(132, 34, 0, '2022-04-01 15:40:25', '2022-04-01 13:40:25'),
(132, 33, 0, '2022-04-01 15:46:19', '2022-04-01 13:46:19'),
(135, 33, 0, '2022-04-01 15:46:23', '2022-04-01 13:46:23'),
(133, 33, 0, '2022-04-01 15:47:39', '2022-04-01 13:47:39'),
(127, 33, 0, '2022-04-01 16:27:40', '2022-04-01 14:27:40'),
(136, 33, 0, '2022-04-04 07:00:59', '2022-04-04 05:00:59'),
(137, 35, 0, '2022-04-04 07:05:25', '2022-04-04 05:05:25'),
(136, 35, 0, '2022-04-04 07:05:26', '2022-04-04 05:05:26'),
(134, 35, 0, '2022-04-04 07:05:28', '2022-04-04 05:05:28'),
(134, 33, 0, '2022-04-04 07:44:56', '2022-04-04 05:44:56'),
(137, 33, 0, '2022-04-04 07:45:04', '2022-04-04 05:45:04'),
(136, 34, 0, '2022-04-04 07:47:41', '2022-04-04 05:47:41'),
(134, 34, 0, '2022-04-04 07:47:43', '2022-04-04 05:47:43'),
(136, 37, 0, '2022-04-05 06:02:24', '2022-04-05 04:02:24'),
(137, 39, 0, '2022-04-05 06:21:59', '2022-04-05 04:21:59'),
(138, 39, 0, '2022-04-05 06:22:00', '2022-04-05 04:22:00'),
(139, 39, 0, '2022-04-05 06:22:01', '2022-04-05 04:22:01'),
(137, 40, 0, '2022-04-05 06:41:23', '2022-04-05 04:41:23'),
(139, 40, 0, '2022-04-05 06:41:24', '2022-04-05 04:41:24'),
(137, 41, 0, '2022-04-05 06:59:13', '2022-04-05 04:59:13'),
(138, 41, 0, '2022-04-05 06:59:16', '2022-04-05 04:59:16'),
(140, 33, 0, '2022-04-05 07:05:36', '2022-04-05 05:05:36'),
(137, 43, 0, '2022-04-05 09:11:38', '2022-04-05 07:11:38'),
(138, 43, 0, '2022-04-05 09:11:40', '2022-04-05 07:11:40'),
(139, 43, 0, '2022-04-05 09:11:41', '2022-04-05 07:11:41'),
(138, 33, 0, '2022-04-05 13:48:34', '2022-04-05 11:48:34'),
(139, 33, 0, '2022-04-05 13:48:36', '2022-04-05 11:48:36'),
(143, 33, 0, '2022-04-05 13:54:54', '2022-04-05 11:54:54');

-- --------------------------------------------------------

--
-- テーブルの構造 `ramens`
--

CREATE TABLE `ramens` (
  `id` int(11) NOT NULL,
  `storename` varchar(100) NOT NULL,
  `kindoframen` varchar(100) NOT NULL,
  `recommends` varchar(100) NOT NULL,
  `price` varchar(100) NOT NULL,
  `station` varchar(100) NOT NULL,
  `impression` varchar(300) NOT NULL,
  `exercise_comment` varchar(300) NOT NULL,
  `imagename` varchar(288) NOT NULL,
  `imagepath` varchar(288) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- テーブルのデータのダンプ `ramens`
--

INSERT INTO `ramens` (`id`, `storename`, `kindoframen`, `recommends`, `price`, `station`, `impression`, `exercise_comment`, `imagename`, `imagepath`, `user_id`, `created_at`) VALUES
(139, '中本', '4', '3', '1000円', '上野駅', '濃厚でした！', '明日、公園をランニングします！', '695256-5c54315467bdb.jpg', 'upload/images20220405062143695256-5c54315467bdb.jpg', 39, NULL),
(140, '麺屋TEST', '3', '2', '700円', '新宿駅', '思ったより、あっさりしていた。', '家に帰ったら、腹筋２０回頑張る', 'IMG01_691573d1f91dee833ebf661cec6425c58958aa7f.jpg', 'upload/images20220405064107IMG01_691573d1f91dee833ebf661cec6425c58958aa7f.jpg', 40, NULL),
(145, 'あああ', '1', '3', '700円', 'テスト駅', 'rr', 'rr', 'IMG01_691573d1f91dee833ebf661cec6425c58958aa7f.jpg', '../upload/images20220405135741IMG01_691573d1f91dee833ebf661cec6425c58958aa7f.jpg', 33, NULL),
(146, 'あああ', '1', '3', '700円', 'テスト駅', 'rr', 'rr', 'IMG01_691573d1f91dee833ebf661cec6425c58958aa7f.jpg', '../upload/images20220405135806IMG01_691573d1f91dee833ebf661cec6425c58958aa7f.jpg', 33, NULL);

-- --------------------------------------------------------

--
-- テーブルの構造 `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `mail` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `tmp_key` varchar(100) DEFAULT NULL,
  `favorite_ramen` varchar(100) NOT NULL,
  `exercise_goal` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `role` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- テーブルのデータのダンプ `users`
--

INSERT INTO `users` (`id`, `name`, `mail`, `password`, `tmp_key`, `favorite_ramen`, `exercise_goal`, `created_at`, `updated_at`, `role`) VALUES
(27, '山田太郎', 'yamada@gmail.com', '$2y$10$eoqTNejFkjAbE/S9fPX3ueD/FSAG3UChTkz7Qw.3dlYag2jdJDShi', NULL, '辛味噌', 'スクワット1日3回', '2022-03-26 00:00:00', '2022-03-26 00:00:00', 0),
(34, 'らーめんサイト管理者', 'ramenman@gmail.com', '$2y$10$gRk.DkdJ/GCUwEeXz5fRoOcs6Qcc.K5pygb4RXgsq2yevxNdGKUzW', NULL, '醤油', 'スクワット', '2022-03-31 00:00:00', '2022-03-31 00:00:00', 1),
(37, 'みぞはた ', 'mizohata@gmail.com', '$2y$10$XVfsIegvQ.7mNkizca0seeCcsfBQHbOkpof7g80k3/IFa4vq/rJ4a', NULL, '味噌', '週3日ランニングします', '2022-04-05 00:00:00', '2022-04-05 00:00:00', 0),
(39, '山田花子', 'yamadahanako@gmail.com', '$2y$10$8UbwvUmJJt/XUJrNTtDe/.DuTDADeJNAgG/OuC/pLv2ypGnk6u3LO', NULL, 'トンコツ', '腹筋毎日やる', '2022-04-05 00:00:00', '2022-04-05 00:00:00', 0),
(40, 'みぞはたテスト', 'mizohatatesuto@gmail.com', '$2y$10$PBWG2d31sGrvxchh/hEW.On.VbXGb3tz.g7yWRw.wk3dgL89.wLcC', NULL, '鶏白湯', 'スクワット一日３回', '2022-04-05 00:00:00', '2022-04-05 00:00:00', 0),
(43, '発表太郎', 'taro@gmail.com', '$2y$10$DbJLa.mUlx4fPADUMJ1k3.FFnGg7IA9StfoivoJw7ckHsGUlFTXPa', NULL, '辛味噌', 'スクワット一日３回', '2022-04-05 00:00:00', '2022-04-05 00:00:00', 0);

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `ramens`
--
ALTER TABLE `ramens`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `mail` (`mail`);

--
-- ダンプしたテーブルの AUTO_INCREMENT
--

--
-- テーブルの AUTO_INCREMENT `ramens`
--
ALTER TABLE `ramens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=147;

--
-- テーブルの AUTO_INCREMENT `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
