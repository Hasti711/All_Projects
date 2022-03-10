-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 09, 2021 at 11:02 AM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `netcards`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
(25, 'Can add card_details', 7, 'add_card_details'),
(26, 'Can change card_details', 7, 'change_card_details'),
(27, 'Can delete card_details', 7, 'delete_card_details'),
(28, 'Can view card_details', 7, 'view_card_details'),
(29, 'Can add client_details', 8, 'add_client_details'),
(30, 'Can change client_details', 8, 'change_client_details'),
(31, 'Can delete client_details', 8, 'delete_client_details'),
(32, 'Can view client_details', 8, 'view_client_details'),
(33, 'Can add payment', 9, 'add_payment'),
(34, 'Can change payment', 9, 'change_payment'),
(35, 'Can delete payment', 9, 'delete_payment'),
(36, 'Can view payment', 9, 'view_payment'),
(37, 'Can add rate_review', 10, 'add_rate_review'),
(38, 'Can change rate_review', 10, 'change_rate_review'),
(39, 'Can delete rate_review', 10, 'delete_rate_review'),
(40, 'Can view rate_review', 10, 'view_rate_review');

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
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$260000$Iku80zyI4Hp7ajE07Xs3tz$VFi5Ziy564jiSCW9ihSRyFJYUeReqRSyJP8940oEtiE=', '2021-06-05 17:38:53.897592', 1, 'admin', '', '', 'parmarhasti711@gmail.com', 1, 1, '2021-06-05 17:38:24.966347'),
(2, 'pbkdf2_sha256$260000$jHm9aFhyCRZRCYXharJ5Sp$l7fQ0zos9M9R2sibA1WFz+QFMKI9ujuNIP6k5KovddY=', NULL, 0, 'hasti', '', '', '', 0, 1, '2021-06-05 17:40:02.553783');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `card_details`
--

CREATE TABLE `card_details` (
  `cdid` int(11) NOT NULL,
  `cdnm` varchar(100) NOT NULL,
  `cdimg` varchar(100) NOT NULL,
  `cdtype` varchar(100) NOT NULL,
  `cdprice` int(11) NOT NULL,
  `cdquantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `card_details`
--

INSERT INTO `card_details` (`cdid`, `cdnm`, `cdimg`, `cdtype`, `cdprice`, `cdquantity`) VALUES
(1, 'Birthday Card', 'assets/images/cards/birthday card/bdyeight.jpg', 'Birthday Wishing Cards', 500, 10),
(2, 'Birthday Card', 'assets/images/cards/birthday card/bdyfive.jpg', 'Birthday Wishing Cards', 500, 10),
(3, 'Greeting Giving Card', 'assets/images/cards/greeting card/geight.jpg', 'Greeting Giving Cards', 500, 10),
(4, 'Greeting Giving Card', 'assets/images/cards/greeting card/geleven.jpg', 'Greeting Giving Cards', 500, 10),
(5, 'Motivation Quotes Card', 'assets/images/cards/motivational quotes cards/meight.jpg', 'Motivation Quotes Cards', 500, 10),
(6, 'Motivation Quotes Card', 'assets/images/cards/motivational quotes cards/mfive.jpg', 'Motivation Quotes Cards', 500, 10),
(7, 'Various Occasional Card', 'assets/images/cards/occasional cards/oeight.jpg', 'Various Occasional Cards', 500, 10),
(8, 'Various Occasional Card', 'assets/images/cards/occasional cards/oeleven.jpg', 'Various Occasional Cards', 500, 10);

-- --------------------------------------------------------

--
-- Table structure for table `client_details`
--

CREATE TABLE `client_details` (
  `cid` int(11) NOT NULL,
  `cname` varchar(100) NOT NULL,
  `cpass` varchar(100) NOT NULL,
  `cemail` varchar(254) NOT NULL,
  `ccontact` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `client_details`
--

INSERT INTO `client_details` (`cid`, `cname`, `cpass`, `cemail`, `ccontact`) VALUES
(1, 'drashti', 'drast', 'parmardrashti9@gmail.com', 27834),
(2, 'heta', 'heta', 'hetaparmar1@gmail.com', 394856),
(3, 'shivangi', 'shivangi', 'shivangeesunilbhaiparekh@gmail.com', 93485693),
(5, 'hasti', 'hasti', 'parmarhasti711@gmail.com', 12847924),
(6, 'Madhukar Parmar', 'papa', 'madhukarsparmar@gmail.com', 20398570);

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2021-06-05 17:40:02.755415', '2', 'hasti', 1, '[{\"added\": {}}]', 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(7, 'netcards', 'card_details'),
(8, 'netcards', 'client_details'),
(9, 'netcards', 'payment'),
(10, 'netcards', 'rate_review'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2021-06-04 15:15:20.977231'),
(2, 'auth', '0001_initial', '2021-06-04 15:15:27.851039'),
(3, 'admin', '0001_initial', '2021-06-04 15:15:30.037806'),
(4, 'admin', '0002_logentry_remove_auto_add', '2021-06-04 15:15:30.131364'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2021-06-04 15:15:30.209472'),
(6, 'contenttypes', '0002_remove_content_type_name', '2021-06-04 15:15:31.381038'),
(7, 'auth', '0002_alter_permission_name_max_length', '2021-06-04 15:15:32.037124'),
(8, 'auth', '0003_alter_user_email_max_length', '2021-06-04 15:15:33.021310'),
(9, 'auth', '0004_alter_user_username_opts', '2021-06-04 15:15:33.083794'),
(10, 'auth', '0005_alter_user_last_login_null', '2021-06-04 15:15:33.459092'),
(11, 'auth', '0006_require_contenttypes_0002', '2021-06-04 15:15:33.505960'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2021-06-04 15:15:33.568057'),
(13, 'auth', '0008_alter_user_username_max_length', '2021-06-04 15:15:34.239735'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2021-06-04 15:15:35.036424'),
(15, 'auth', '0010_alter_group_name_max_length', '2021-06-04 15:15:35.676896'),
(16, 'auth', '0011_update_proxy_permissions', '2021-06-04 15:15:35.755002'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2021-06-04 15:15:36.442392'),
(18, 'sessions', '0001_initial', '2021-06-04 15:15:36.817293'),
(20, 'netcards', '0001_initial', '2021-06-06 05:08:34.608850');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('206avog9jkgpbqtx6ozaineofvr75fv1', 'e30:1lqG2x:MDPMhqfxxIhfTHnqcUU12bANs-YMYdwi6F5Hv4CeUdg', '2021-06-21 14:16:07.362466'),
('4661mch2s1fdw6azxn09zu0f0fwghk91', 'e30:1lqGsd:Mu6vJDHdxjCh8hPvtp9PzBFVMgd8pWQq7Wzl3_PkRWs', '2021-06-21 15:09:31.263136'),
('696f5130wvx3n1jlfisymd8zjgfp4y4a', 'e30:1lqKMt:_NsqLLwGpo6FAT7j8j3UI4dfRaNrFtI9HUNv-jwnFk4', '2021-06-21 18:52:59.838023'),
('8emw20czvbkuvvcgsaw34nfb3n1vjekx', 'e30:1lqJTi:yBfdMMHTrk35_BCCkQholis6ROZMMWBtMzoQG3-oT4s', '2021-06-21 17:55:58.860162'),
('9x5aexvcx50up2pfjwwy9ganqld2tk7l', 'e30:1lqJST:G2U7nhmsZyOGqxHJP2PxMlKsanW3P2rBwM5h9kjApmQ', '2021-06-21 17:54:41.159865'),
('apehpdaxzpx2vm0di1ldi23cjbtg34gk', 'e30:1lqGvU:tbbthxk77Wo8huyB22t9COXLiUVuhG1NALIGpj9m_LU', '2021-06-21 15:12:28.522802'),
('cue3siiq952pfb9ozadppnzzf9t1o3ni', 'eyJ1c2VyIjoic2hpdmFuZ2Vlc3VuaWxiaGFpcGFyZWtoQGdtYWlsLmNvbSJ9:1lqaf6:IZ3wCmIs2x8g5cxpzSw0PyyawvIBqVaRODwG6qelU30', '2021-06-22 12:16:52.040846'),
('d3kd6lob8xwcvree2oyvg2q8770xjoom', 'e30:1lqHG3:swsZ5aYR97fnE9rUv6CPaVx_mvHVSNZnLeLNwkvbVtM', '2021-06-21 15:33:43.644386'),
('dgttwd45qsgbhtm6okhje727a1vituck', 'e30:1lqGoW:KmQw6Ev9oN0i3hvT2q6Lznowv1SVncGwLm92NrRXJ-M', '2021-06-21 15:05:16.187427'),
('j2mudcdd2apqyo9bt2aauqozbg5p1fsu', 'e30:1lqHX4:TqcxmlqSSeuKqKXOESg9lUMZBu96lrEHcEB9oan1074', '2021-06-21 15:51:18.040572'),
('jcddb8hrjwlpw3fkuf7s40z4j45dyxnk', 'e30:1lqK2z:Z8fcyq4AHOYWduwXhhKwfDl33P5pL95Mvi2PXUDrUQY', '2021-06-21 18:32:25.436565'),
('oba3juhb3ohan9qbf0p1wysvfzbco2zm', 'e30:1lqf2t:ZLxH_9P8tT9zmoCv-jv0x1XTDLD_m-wj3wounmlbc1o', '2021-06-22 16:57:43.327332'),
('rkz0b95wp5bzbeug1calkvjsosokk5qc', 'e30:1lqHBu:UqW4MgpdpHEqUn3bDZKH5aAw2AQCpiiIJPJoqUW6Tks', '2021-06-21 15:29:26.180654'),
('tf00wp899z2t5iczh3owm6rylbwnlc3f', 'e30:1lqIpJ:guwYi7BYtxTEI6j509HVhrVOfRxbdLwkhq6EeT8X5Ic', '2021-06-21 17:14:13.640424'),
('vr9jdxgq1ai7v28iqw0i01cimglsogmd', 'e30:1lqGqg:wPKbR25HpzJBhgqknz8RrRlSlAD8glhODlvrrz61Zy4', '2021-06-21 15:07:30.400858');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `pid` int(11) NOT NULL,
  `cdid` int(11) NOT NULL,
  `cid` int(11) NOT NULL,
  `b_cdquantity` int(11) NOT NULL,
  `cdprice` int(11) NOT NULL,
  `totalprice` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`pid`, `cdid`, `cid`, `b_cdquantity`, `cdprice`, `totalprice`) VALUES
(1, 4, 43, 2, 500, 1000),
(2, 4, 43, 2, 500, 1000),
(3, 4, 43, 2, 500, 1000),
(4, 4, 43, 2, 500, 1000),
(5, 3, 43, 9, 500, 4500),
(6, 3, 43, 10, 500, 5000),
(7, 1, 1, 1, 500, 500),
(8, 4, 1, 9, 500, 4500),
(9, 4, 2, 9, 500, 4500),
(10, 2, 3, 10, 500, 5000),
(11, 4, 5, 4, 500, 2000),
(12, 2, 6, 10, 500, 5000);

-- --------------------------------------------------------

--
-- Table structure for table `rt_n_rv`
--

CREATE TABLE `rt_n_rv` (
  `rrid` int(11) NOT NULL,
  `rate` int(11) NOT NULL,
  `review` varchar(100) NOT NULL,
  `cdid` int(11) NOT NULL,
  `cid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
-- Indexes for table `card_details`
--
ALTER TABLE `card_details`
  ADD PRIMARY KEY (`cdid`);

--
-- Indexes for table `client_details`
--
ALTER TABLE `client_details`
  ADD PRIMARY KEY (`cid`);

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
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `rt_n_rv`
--
ALTER TABLE `rt_n_rv`
  ADD PRIMARY KEY (`rrid`);

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
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `card_details`
--
ALTER TABLE `card_details`
  MODIFY `cdid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `client_details`
--
ALTER TABLE `client_details`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `rt_n_rv`
--
ALTER TABLE `rt_n_rv`
  MODIFY `rrid` int(11) NOT NULL AUTO_INCREMENT;

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
