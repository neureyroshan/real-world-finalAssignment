-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 16, 2020 at 06:21 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `modernweb`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add feedback', 7, 'add_feedback'),
(26, 'Can change feedback', 7, 'change_feedback'),
(27, 'Can delete feedback', 7, 'delete_feedback'),
(28, 'Can view feedback', 7, 'view_feedback'),
(29, 'Can add showinsert', 8, 'add_showinsert'),
(30, 'Can change showinsert', 8, 'change_showinsert'),
(31, 'Can delete showinsert', 8, 'delete_showinsert'),
(32, 'Can view showinsert', 8, 'view_showinsert'),
(33, 'Can add cart', 9, 'add_cart'),
(34, 'Can change cart', 9, 'change_cart'),
(35, 'Can delete cart', 9, 'delete_cart'),
(36, 'Can view cart', 9, 'view_cart'),
(37, 'Can add news', 10, 'add_news'),
(38, 'Can change news', 10, 'change_news'),
(39, 'Can delete news', 10, 'delete_news'),
(40, 'Can view news', 10, 'view_news');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$180000$5jT4Bo4gmnBP$+eCVsJTz7HJJ7YMYjRDhmeBleZaHUu6002wsUraom7s=', '2020-02-16 17:01:30.850717', 0, 'ujwal', 'Ujwal', 'Lamichhane', 'krazyme53@gmail.com', 0, 1, '2020-02-13 02:56:34.384445'),
(2, 'pbkdf2_sha256$180000$QAMTpBWkXkEH$aJPNlVFuXxG6COenelftouTjFpQFUTGSGcq/FeAKw1c=', '2020-02-14 07:36:09.305611', 1, 'hp', '', '', 'krazyme53@gmail.com', 1, 1, '2020-02-13 02:57:52.140054'),
(3, 'pbkdf2_sha256$180000$MP8sLqmt7LxZ$nEQTR0+L5INKAl93JxtGYv5BbI1oSLrbWdNp8NcVG1Q=', '2020-02-13 19:04:57.697241', 0, 'reshika', 'Reshika', 'Shrestha', 'reshika@gmail.com', 0, 1, '2020-02-13 08:37:34.325167'),
(4, 'pbkdf2_sha256$180000$XtU2EERdtpzi$YY7mAB/7B59SOXfLZSdblWtsgYBOcd+DIU+Kpnd6izI=', '2020-02-13 19:06:19.042609', 0, 'rahul', 'Rahul', 'Roy', 'zkhjdbv@zlkj', 0, 1, '2020-02-13 17:39:43.377355'),
(5, 'pbkdf2_sha256$180000$aWGWkgtJp0lm$MjK+vYJuJZuzA4NexHlZt7M32C1fSl8HuqrbRYuqDXU=', '2020-02-14 07:34:36.345391', 0, '1', 'laiug', 'sflbjq', 'a/ldfknb@jdf', 0, 1, '2020-02-14 07:26:55.992503'),
(7, 'pbkdf2_sha256$180000$wnMdTARmaoUM$cfkxHAyPRtdeGkZ+n979jJ533R+VzjhYD2hQM9sp584=', '2020-02-14 07:49:17.200169', 0, '12', 'aksldf', 'a;dkfjbv', 'aodifuh@sgi', 0, 1, '2020-02-14 07:49:12.076177');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2020-02-13 02:58:36.217585', '1', 'Showinsert object (1)', 1, '[{\"added\": {}}]', 8, 2),
(2, '2020-02-13 02:59:48.481805', '2', 'Showinsert object (2)', 1, '[{\"added\": {}}]', 8, 2),
(3, '2020-02-13 03:01:01.410787', '3', 'Showinsert object (3)', 1, '[{\"added\": {}}]', 8, 2),
(4, '2020-02-13 03:01:39.222369', '2', 'Showinsert object (2)', 2, '[{\"changed\": {\"fields\": [\"ShowVenue\"]}}]', 8, 2),
(5, '2020-02-13 03:01:47.244112', '3', 'Showinsert object (3)', 2, '[{\"changed\": {\"fields\": [\"ShowVenue\"]}}]', 8, 2),
(6, '2020-02-13 14:46:14.024342', '4', 'Showinsert object (4)', 1, '[{\"added\": {}}]', 8, 2),
(7, '2020-02-13 20:15:47.350649', '1', 'News object (1)', 1, '[{\"added\": {}}]', 10, 2);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(9, 'moduleMusic', 'cart'),
(7, 'moduleMusic', 'feedback'),
(10, 'moduleMusic', 'news'),
(8, 'moduleMusic', 'showinsert'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2020-02-13 02:53:32.229163'),
(2, 'auth', '0001_initial', '2020-02-13 02:53:32.532838'),
(3, 'admin', '0001_initial', '2020-02-13 02:53:33.494247'),
(4, 'admin', '0002_logentry_remove_auto_add', '2020-02-13 02:53:33.750448'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2020-02-13 02:53:33.773560'),
(6, 'contenttypes', '0002_remove_content_type_name', '2020-02-13 02:53:33.951445'),
(7, 'auth', '0002_alter_permission_name_max_length', '2020-02-13 02:53:34.065515'),
(8, 'auth', '0003_alter_user_email_max_length', '2020-02-13 02:53:34.103201'),
(9, 'auth', '0004_alter_user_username_opts', '2020-02-13 02:53:34.124306'),
(10, 'auth', '0005_alter_user_last_login_null', '2020-02-13 02:53:34.246414'),
(11, 'auth', '0006_require_contenttypes_0002', '2020-02-13 02:53:34.251942'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2020-02-13 02:53:34.268525'),
(13, 'auth', '0008_alter_user_username_max_length', '2020-02-13 02:53:34.304204'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2020-02-13 02:53:34.337885'),
(15, 'auth', '0010_alter_group_name_max_length', '2020-02-13 02:53:34.388197'),
(16, 'auth', '0011_update_proxy_permissions', '2020-02-13 02:53:34.409305'),
(17, 'moduleMusic', '0001_initial', '2020-02-13 02:53:34.462076'),
(18, 'moduleMusic', '0002_showinsert', '2020-02-13 02:53:34.513416'),
(19, 'moduleMusic', '0003_cart', '2020-02-13 02:53:34.596609'),
(20, 'moduleMusic', '0004_cart_user', '2020-02-13 02:53:34.751878'),
(21, 'moduleMusic', '0005_delete_cart', '2020-02-13 02:53:34.768461'),
(22, 'moduleMusic', '0006_cart', '2020-02-13 02:53:34.838811'),
(23, 'moduleMusic', '0007_delete_cart', '2020-02-13 02:53:34.966950'),
(24, 'moduleMusic', '0008_cart', '2020-02-13 02:53:35.030767'),
(25, 'moduleMusic', '0009_delete_cart', '2020-02-13 02:53:35.139808'),
(26, 'moduleMusic', '0010_cart', '2020-02-13 02:53:35.198613'),
(27, 'sessions', '0001_initial', '2020-02-13 02:53:35.361186'),
(28, 'moduleMusic', '0011_remove_cart_user', '2020-02-13 11:46:39.929917'),
(29, 'moduleMusic', '0012_delete_cart', '2020-02-13 14:31:16.360362'),
(30, 'moduleMusic', '0013_cart', '2020-02-13 15:33:20.155076'),
(31, 'moduleMusic', '0014_auto_20200213_2120', '2020-02-13 15:35:14.659533'),
(32, 'moduleMusic', '0015_news', '2020-02-13 20:13:05.046892');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('gdhnrs1hmvik56u2zk16vvuqb3cc8j8k', 'YmIzNGIzYWY5NzI2ZGM1YTI4YTVjYjM2ZjdhNGJmMDk3ZWE3OGE2NTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhODNmOWIzZWQ2ZDJmOGVkZWVhMzQ5YmM0YzFhZjgxZWRhMDM4ODBkIn0=', '2020-03-01 17:01:30.860241');

-- --------------------------------------------------------

--
-- Table structure for table `modulemusic_cart`
--

CREATE TABLE `modulemusic_cart` (
  `id` int(11) NOT NULL,
  `showVenue` varchar(255) NOT NULL,
  `showDate` date NOT NULL,
  `price` double NOT NULL,
  `userId_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `modulemusic_cart`
--

INSERT INTO `modulemusic_cart` (`id`, `showVenue`, `showDate`, `price`, `userId_id`) VALUES
(1, 'Dasrath Stadium', '2020-02-20', 375, 1),
(2, 'Purple haze rock bar, Thamel', '2020-02-20', 375, 1),
(3, 'Dasrath Stadium', '2020-02-20', 375, 1),
(4, 'Rolling stones, Lakeside, Pokhara', '2020-02-18', 375, 1),
(5, 'Address lounge, Dillibazar, Kathmandu', '2020-02-18', 450, 1),
(6, 'Purple haze rock bar, Thamel', '2020-02-20', 500, 1),
(7, 'Rolling stones, Lakeside, Pokhara', '2020-02-18', 375, 1),
(8, 'Rolling stones, Lakeside, Pokhara', '2020-02-18', 375, 1),
(9, 'Purple haze rock bar, Thamel', '2020-02-20', 500, 1),
(10, 'Purple haze rock bar, Thamel', '2020-02-20', 500, 1),
(11, 'Purple haze rock bar, Thamel', '2020-02-20', 500, 1),
(12, 'Purple haze rock bar, Thamel', '2020-02-20', 500, 1),
(13, 'Purple haze rock bar, Thamel', '2020-02-20', 500, 1),
(14, 'Dasrath Stadium', '2020-02-20', 375, 1),
(15, 'Rolling stones, Lakeside, Pokhara', '2020-02-18', 375, 4),
(16, 'Purple haze rock bar, Thamel', '2020-02-20', 500, 4),
(17, 'Purple haze rock bar, Thamel', '2020-02-20', 500, 4),
(18, 'Rolling stones, Lakeside, Pokhara', '2020-02-18', 375, 4),
(19, 'Dasrath Stadium', '2020-02-20', 375, 1),
(20, 'Purple haze rock bar, Thamel', '2020-02-20', 500, 4),
(21, 'Rolling stones, Lakeside, Pokhara', '2020-02-18', 375, 4),
(23, 'Purple haze rock bar, Thamel', '2020-02-20', 500, 5),
(24, 'Rolling stones, Lakeside, Pokhara', '2020-02-18', 375, 5),
(25, 'Purple haze rock bar, Thamel', '2020-02-20', 500, 5),
(26, 'Rolling stones, Lakeside, Pokhara', '2020-02-18', 375, 7);

-- --------------------------------------------------------

--
-- Table structure for table `modulemusic_feedback`
--

CREATE TABLE `modulemusic_feedback` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `message` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `modulemusic_feedback`
--

INSERT INTO `modulemusic_feedback` (`id`, `name`, `email`, `message`) VALUES
(1, 'Ujwal Lamichhane', 'krazyme53@gmail.com', 'Hello');

-- --------------------------------------------------------

--
-- Table structure for table `modulemusic_news`
--

CREATE TABLE `modulemusic_news` (
  `id` int(11) NOT NULL,
  `newsImage` varchar(100) NOT NULL,
  `postDate` date NOT NULL,
  `newsTitle` varchar(255) NOT NULL,
  `news` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `modulemusic_news`
--

INSERT INTO `modulemusic_news` (`id`, `newsImage`, `postDate`, `newsTitle`, `news`) VALUES
(1, '4.jpg', '2020-02-13', 'Rock festival in Kathmandu', 'BOUDHA ROCK FEST started to develop the locality we stand at and encourage events , sports and drug awareness as well. We pride ourselves on our vast knowledge of the industry as well as our collective creativity with this experience we are better able to serve our community and youth. It develops a well public relation and a standard that can build a positive reputation and goodwill between the youth and community.');

-- --------------------------------------------------------

--
-- Table structure for table `modulemusic_showinsert`
--

CREATE TABLE `modulemusic_showinsert` (
  `id` int(11) NOT NULL,
  `image` varchar(100) NOT NULL,
  `showVenue` varchar(255) NOT NULL,
  `showDate` date NOT NULL,
  `price` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `modulemusic_showinsert`
--

INSERT INTO `modulemusic_showinsert` (`id`, `image`, `showVenue`, `showDate`, `price`) VALUES
(1, 'a3_uujIU2k.jpg', 'Purple haze rock bar, Thamel', '2020-02-20', 500),
(2, 'a3_WWieRP7.jpg', 'Rolling stones, Lakeside, Pokhara', '2020-02-18', 375),
(3, 'a3_kOxy0zH.jpg', 'Address lounge, Dillibazar, Kathmandu', '2020-02-18', 450),
(4, '6.jpg', 'Dasrath Stadium', '2020-02-20', 375);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `modulemusic_cart`
--
ALTER TABLE `modulemusic_cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `moduleMusic_cart_userId_id_ebc154aa` (`userId_id`);

--
-- Indexes for table `modulemusic_feedback`
--
ALTER TABLE `modulemusic_feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `modulemusic_news`
--
ALTER TABLE `modulemusic_news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `modulemusic_showinsert`
--
ALTER TABLE `modulemusic_showinsert`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `modulemusic_cart`
--
ALTER TABLE `modulemusic_cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `modulemusic_feedback`
--
ALTER TABLE `modulemusic_feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `modulemusic_news`
--
ALTER TABLE `modulemusic_news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `modulemusic_showinsert`
--
ALTER TABLE `modulemusic_showinsert`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `modulemusic_cart`
--
ALTER TABLE `modulemusic_cart`
  ADD CONSTRAINT `moduleMusic_cart_userId_id_ebc154aa_fk_auth_user_id` FOREIGN KEY (`userId_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
