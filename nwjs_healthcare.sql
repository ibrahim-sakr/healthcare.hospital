--
-- Database: `nwjs_healthcare`
--
-- CREATE DATABASE IF NOT EXISTS `nwjs_healthcare` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
-- USE `nwjs_healthcare`;

-- -- --------------------------------------------------------

--
-- Table structure for table `acc_inventory_items`
--

DROP TABLE IF EXISTS `acc_inventory_items`;
CREATE TABLE IF NOT EXISTS `acc_inventory_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `measurement_unit_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `desc` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `acc_measurement_units`
--

DROP TABLE IF EXISTS `acc_measurement_units`;
CREATE TABLE IF NOT EXISTS `acc_measurement_units` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `desc` text CHARACTER SET utf8 NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `beds`
--

DROP TABLE IF EXISTS `beds`;
CREATE TABLE IF NOT EXISTS `beds` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `active` int(1) NOT NULL DEFAULT 0,
  `deleted` int(1) NULL DEFAULT 0,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `deleted` int(1) NULL DEFAULT 0,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `diets`
--

DROP TABLE IF EXISTS `diets`;
CREATE TABLE IF NOT EXISTS `diets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `details` text CHARACTER SET utf8 NOT NULL,
  `deleted` int(1) NULL DEFAULT 0,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

DROP TABLE IF EXISTS `events`;
CREATE TABLE IF NOT EXISTS `events` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_id` int(11) NOT NULL,
  `bed_id` int(11) NOT NULL,
  `session_id` int(11) NOT NULL,
  `date_from` datetime NOT NULL,
  `date_to` datetime NOT NULL,
  `created_at` datetime NOT NULL,
  `deleted` int(1) NULL DEFAULT 0,
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

DROP TABLE IF EXISTS `groups`;
CREATE TABLE IF NOT EXISTS `groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `discount` int(3) NOT NULL,
  `fixed` int(11) NOT NULL,
  `deleted` int(1) NULL DEFAULT 0,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `machines`
--

DROP TABLE IF EXISTS `machines`;
CREATE TABLE IF NOT EXISTS `machines` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) NOT NULL,
  `share_ratio` int(3) NOT NULL,
  `serial` varchar(30) NOT NULL,
  `country` varchar(30) NOT NULL,
  `price` int(11) NOT NULL,
  `deleted` int(1) NULL DEFAULT 0,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `patients`
--

DROP TABLE IF EXISTS `patients`;
CREATE TABLE IF NOT EXISTS `patients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `age` int(3) NOT NULL,
  `gender` varchar(6) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `address` text NOT NULL,
  `occupation` text NOT NULL,
  `onset_treatment` text NOT NULL,
  `onset` text NOT NULL,
  `habits` text NOT NULL,
  `course` varchar(100) NOT NULL,
  `duration` int(5) NOT NULL,
  `problem` text NOT NULL,
  `past` text NOT NULL,
  `present` text NOT NULL,
  `diag` text NOT NULL,
  `method` text NOT NULL,
  `group_id` int(11) DEFAULT NULL,
  `active` int(1) NOT NULL DEFAULT 0,
  `confirm` int(1) NOT NULL,
  `deleted` int(1) NULL DEFAULT 0,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `abdomen`
--

DROP TABLE IF EXISTS `abdomen`;
CREATE TABLE IF NOT EXISTS `abdomen` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_id` int(11) NOT NULL,
  `level_1` varchar(20) NOT NULL,
  `level_2` varchar(20) NOT NULL,
  `below_5_1` varchar(20) NOT NULL,
  `below_5_2` varchar(20) NOT NULL,
  `below_10_1` varchar(20) NOT NULL,
  `below_10_2` varchar(20) NOT NULL,
  `below_15_1` varchar(20) NOT NULL,
  `below_15_2` varchar(20) NOT NULL,
  `above_5_1` varchar(20) NOT NULL,
  `above_5_2` varchar(20) NOT NULL,
  `above_10_1` varchar(20) NOT NULL,
  `above_10_2` varchar(20) NOT NULL,
  `above_15_1` varchar(20) NOT NULL,
  `above_15_2` varchar(20) NOT NULL,
  `total_1` varchar(20) NOT NULL,
  `total_2` varchar(20) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `arm_left`
--

DROP TABLE IF EXISTS `arm_left`;
CREATE TABLE IF NOT EXISTS `arm_left` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_id` int(11) NOT NULL,
  `olecroneon_1` varchar(20) NOT NULL,
  `olecroneon_2` varchar(20) NOT NULL,
  `above_5_1` varchar(20) NOT NULL,
  `above_5_2` varchar(20) NOT NULL,
  `above_10_1` varchar(20) NOT NULL,
  `above_10_2` varchar(20) NOT NULL,
  `above_15_1` varchar(20) NOT NULL,
  `above_15_2` varchar(20) NOT NULL,
  `above_20_1` varchar(20) NOT NULL,
  `above_20_2` varchar(20) NOT NULL,
  `total_1` varchar(20) NOT NULL,
  `total_2` varchar(20) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `arm_right`
--

DROP TABLE IF EXISTS `arm_right`;
CREATE TABLE IF NOT EXISTS `arm_right` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_id` int(11) NOT NULL,
  `olecroneon_1` varchar(20) NOT NULL,
  `olecroneon_2` varchar(20) NOT NULL,
  `above_5_1` varchar(20) NOT NULL,
  `above_5_2` varchar(20) NOT NULL,
  `above_10_1` varchar(20) NOT NULL,
  `above_10_2` varchar(20) NOT NULL,
  `above_15_1` varchar(20) NOT NULL,
  `above_15_2` varchar(20) NOT NULL,
  `above_20_1` varchar(20) NOT NULL,
  `above_20_2` varchar(20) NOT NULL,
  `total_1` varchar(20) NOT NULL,
  `total_2` varchar(20) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `butocks`
--

DROP TABLE IF EXISTS `butocks`;
CREATE TABLE IF NOT EXISTS `butocks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_id` int(11) NOT NULL,
  `below_a_1` int(11) NOT NULL,
  `below_a_2` int(11) NOT NULL,
  `below_5_1` int(11) NOT NULL,
  `below_5_2` int(11) NOT NULL,
  `below_10_1` int(11) NOT NULL,
  `below_10_2` int(11) NOT NULL,
  `total_1` int(11) NOT NULL,
  `total_2` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `obesity`
--

DROP TABLE IF EXISTS `obesity`;
CREATE TABLE IF NOT EXISTS `obesity` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `weight` varchar(20) NOT NULL,
  `body_fat` varchar(20) NOT NULL,
  `b_f` varchar(20) NOT NULL,
  `water` varchar(20) NOT NULL,
  `muscle` varchar(20) NOT NULL,
  `bone` varchar(20) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `thight_left`
--

DROP TABLE IF EXISTS `thight_left`;
CREATE TABLE IF NOT EXISTS `thight_left` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_id` int(11) NOT NULL,
  `below_a_1` varchar(20) NOT NULL,
  `below_a_2` varchar(20) NOT NULL,
  `below_5_1` varchar(20) NOT NULL,
  `below_5_2` varchar(20) NOT NULL,
  `below_10_1` varchar(20) NOT NULL,
  `below_10_2` varchar(20) NOT NULL,
  `below_15_1` varchar(20) NOT NULL,
  `below_15_2` varchar(20) NOT NULL,
  `below_20_1` varchar(20) NOT NULL,
  `below_20_2` varchar(20) NOT NULL,
  `total_1` varchar(20) NOT NULL,
  `total_2` varchar(20) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `thight_right`
--

DROP TABLE IF EXISTS `thight_right`;
CREATE TABLE IF NOT EXISTS `thight_right` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_id` int(11) NOT NULL,
  `below_a_1` varchar(20) NOT NULL,
  `below_a_2` varchar(20) NOT NULL,
  `below_5_1` varchar(20) NOT NULL,
  `below_5_2` varchar(20) NOT NULL,
  `below_10_1` varchar(20) NOT NULL,
  `below_10_2` varchar(20) NOT NULL,
  `below_15_1` varchar(20) NOT NULL,
  `below_15_2` varchar(20) NOT NULL,
  `below_20_1` varchar(20) NOT NULL,
  `below_20_2` varchar(20) NOT NULL,
  `total_1` varchar(20) NOT NULL,
  `total_2` varchar(20) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
CREATE TABLE IF NOT EXISTS `sessions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `price` int(11) NOT NULL,
  `deleted` int(1) NULL DEFAULT 0,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

DROP TABLE IF EXISTS `options`;
CREATE TABLE IF NOT EXISTS `options` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `value` varchar(50) NOT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `permissions`
--

INSERT INTO `options` (`name`, `value`) VALUES
('cash', 200);

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
CREATE TABLE IF NOT EXISTS `permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `display_name` varchar(50) NOT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`name`, `display_name`) VALUES
('showPatients', 'Show Patients'),
('editPatients', 'Edit Patients'),
('addPatients', 'Add Patients'),
('deletePatients', 'Delete Patients'),
('showBooking', 'Show Booking'),
('addBooking', 'Add Booking'),
('editBooking', 'Edit Booking'),
('deleteBooking', 'Delete Booking'),
('showDiets', 'Show Diets'),
('addDiets', 'Add Diets'),
('editDiets', 'Edit Diets'),
('deleteDiets', 'Delete Diets'),
('showEmployees', 'Show Employees'),
('addEmployees', 'Add Employees'),
('editEmployees', 'Edit Employees'),
('deleteEmployees', 'Delete Employees'),
('showGroups', 'Show Groups'),
('addGroups', 'Add Groups'),
('editGroups', 'Edit Groups'),
('deleteGroups', 'Delete Groups'),
('showMachines', 'Show Machines'),
('addMachines', 'Add Machines'),
('editMachines', 'Edit Machines'),
('deleteMachines', 'Delete Machines'),
('showCategories', 'Show Categories'),
('addCategories', 'Add Categories'),
('editCategories', 'Edit Categories'),
('deleteCategories', 'Delete Categories'),
('showSessions', 'Show Sessions'),
('addSessions', 'Add Sessions'),
('editSessions', 'Edit Sessions'),
('deleteSessions', 'Delete Sessions'),
('showBeds', 'Show Beds'),
('addBeds', 'Add Beds'),
('editBeds', 'Edit Beds'),
('deleteBeds', 'Delete Beds'),
('deactivateBeds', 'Deactivate Beds');

-- --------------------------------------------------------

--
-- Table structure for table `role_permission`
--

DROP TABLE IF EXISTS `role_permission`;
CREATE TABLE IF NOT EXISTS `role_permission` (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `role_permission`
--

INSERT INTO `role_permission` (`role_id`, `permission_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(1, 7),
(1, 8),
(1, 9),
(1, 10),
(1, 11),
(1, 12),
(1, 13),
(1, 14),
(1, 15),
(1, 16),
(1, 17),
(1, 18),
(1, 19),
(1, 20),
(1, 21),
(1, 22),
(1, 23),
(1, 24),
(1, 25),
(1, 26),
(1, 27),
(1, 28),
(1, 29),
(1, 30),
(1, 31),
(1, 32),
(1, 33),
(1, 34),
(1, 35),
(1, 36),
(1, 37);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
CREATE TABLE IF NOT EXISTS `roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `deleted` int(1) NULL DEFAULT 0,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`name`, `created_at`, `updated_at`) VALUES
('Adminstrator', NOW(), NOW());

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `first_name` varchar(20) NOT NULL,
  `last_name` varchar(20) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `password` varchar(60) NOT NULL,
  `role_id` int(11) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `archive` int(1) NOT NULL DEFAULT 0,
  `deleted` int(1) NOT NULL DEFAULT 0,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`username`, `first_name`, `last_name`, `phone`, `password`, `role_id`, `created_at`, `updated_at`) VALUES
('root', 'App', 'Admin', '01118718763', '$2a$10$L3sQUZN6e4clUDXsM.p3ceJP3ftBKjjsQLYtPWz4syj2DKxmmrV1.', 1, NOW(), NOW());
