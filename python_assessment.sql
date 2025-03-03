-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 03, 2025 at 10:15 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `python_assessment`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
(25, 'Can add user history', 7, 'add_userhistory'),
(26, 'Can change user history', 7, 'change_userhistory'),
(27, 'Can delete user history', 7, 'delete_userhistory'),
(28, 'Can view user history', 7, 'view_userhistory'),
(29, 'Can add comment', 8, 'add_comment'),
(30, 'Can change comment', 8, 'change_comment'),
(31, 'Can delete comment', 8, 'delete_comment'),
(32, 'Can view comment', 8, 'view_comment'),
(33, 'Can add video', 9, 'add_video'),
(34, 'Can change video', 9, 'change_video'),
(35, 'Can delete video', 9, 'delete_video'),
(36, 'Can view video', 9, 'view_video');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$600000$023wGcQAqQbjGU3TZGUn7C$+qslQVQBkVtoZ+D7Vw11yDfCpwrevOX+bqagl6x1cyo=', '2025-03-03 05:12:42.464236', 0, 'franker', 'Frank', 'Rondon', 'mail@mail.com', 0, 1, '2025-03-02 04:14:42.715968'),
(2, 'pbkdf2_sha256$600000$w6jmOHfCdsG1wr6Rm1YWTl$hBZQVw1tU0z3jkej85SA60pCHcXtJv1pXY2JXPVz05I=', '2025-03-03 08:56:31.398913', 1, 'frankerportatil', '', '', 'mail1@mail.com', 1, 1, '2025-03-02 04:19:11.491877'),
(3, 'pbkdf2_sha256$600000$8QSH3lcCoNZguyAx1YxbNk$92LF+0LAN51S71CjIGKnj4D6R2GpDGQ1P1QXS+4+5qU=', '2025-03-02 07:10:33.188044', 0, 'emi', 'Emi', 'House', 'risus@yahoo.ca', 0, 1, '2025-03-02 07:09:17.208082'),
(4, 'pbkdf2_sha256$600000$L0ywLplvMdeJK83uz3Q3ZC$TNUigwzhLlZ3U2OR6W2J8RLVsGAolbwfDmv9CwnfC14=', '2025-03-03 04:25:31.309080', 0, 'srico', 'Jose', 'Echevarria', 'srico@hidalgo.net', 0, 1, '2025-03-03 02:26:52.728907'),
(5, 'pbkdf2_sha256$600000$VxmxCJnUSCsi8eFj7ZD2xF$JB0Z3HMOx2QYgGvqGzP9kDl8wqneyYIvZSQ4SPKZ5Lo=', NULL, 0, 'ander28', 'Dario', 'Granado', 'ander28@yahoo.com', 0, 1, '2025-03-03 02:27:34.816669'),
(6, 'pbkdf2_sha256$600000$Gjo27mwFbikJAwjleAugAh$9lXpsjdtUUpqOwLbS9UeEfPBNKza30NWGkBhkGsa4OY=', NULL, 0, 'rivero.manuela', 'Jan', 'Lucero', 'rivero.manuela@mejia.com.ve', 0, 1, '2025-03-03 02:28:17.237210'),
(7, 'pbkdf2_sha256$600000$qklw20f7KgOyUKHnhazcvw$pf1khIbYf5J5SD7DxQnt9FQBYPVAkouNKoXtiFi7axQ=', '2025-03-03 04:33:00.881793', 0, 'emoreno', 'Noelia', 'Nieto', 'emoreno@gallego.org', 0, 1, '2025-03-03 02:29:09.931532'),
(8, 'pbkdf2_sha256$600000$H8jCnQL0NjfngmbUDlISL7$MrIZ0F47Ses67yGSzoAsSLQoF/POHrxVxwi1MdKX5XU=', '2025-03-03 04:16:17.615965', 0, 'ojeda.ariadna', 'Leonardo', 'Blasco', 'ojeda.ariadna@latinmail.com', 0, 1, '2025-03-03 02:29:44.929596'),
(9, 'pbkdf2_sha256$600000$3Dh8ixN4bgwgXIAiLpPkWJ$U3leFiS7cjunrtrWhjLc99wKt74hf7O9+kRciDcl5zY=', '2025-03-03 08:01:37.328172', 0, 'idelafuente', 'Eduardo', 'Villaseñor', 'idelafuente@zepeda.web.ve', 0, 1, '2025-03-03 02:30:18.086690'),
(10, 'pbkdf2_sha256$600000$9dxBKFUdtX3MyTMej2qEXg$VNEjYscii4qPLJF7K/um6YcBxSO8ucSGo1Afp9WacJQ=', '2025-03-03 07:05:50.488463', 0, 'eduardo66', 'Naiara', 'Ibáñez', 'eduardo66@terra.com', 0, 1, '2025-03-03 02:30:44.652160'),
(11, 'pbkdf2_sha256$600000$rthlJSYQOCuFCMfQQGJlcD$riyWbUc8GHMo9CXSu9g1tkvHEfJdqXQusR51aJUG0LM=', '2025-03-03 08:59:07.237953', 0, 'manuela44', 'Oliver', 'Vélez', 'manuela44@latinmail.com', 0, 1, '2025-03-03 02:41:02.635816'),
(12, 'pbkdf2_sha256$600000$fF85DZQ0cQb5sw6VBmFohA$gdTY/I1GtnLKrMYMlRKvUbY095Ae4FB5y8rr8DInjQY=', NULL, 0, 'manuel.galvan', 'Africa', 'Requena', 'manuel.galvan@torres.com.ve', 0, 1, '2025-03-03 02:41:38.159645'),
(13, 'pbkdf2_sha256$600000$Y0dNeriAQnGoNlyCjYG85l$9kuEZGC/eSkBonlzsJUW8zrkfKluWCOZEwSYNlCVG7Q=', '2025-03-03 08:06:21.736197', 0, 'eric.duarte', 'Francisco', 'Pastor', 'eric.duarte@live.com', 0, 1, '2025-03-03 02:42:18.527144'),
(14, 'pbkdf2_sha256$600000$Mlt1mzir9NdbG4YEuSgRXg$kFAZdGUyeaUh3caZztAMQ9WVMQy4UzRMTaFCfkrn3pc=', '2025-03-03 04:44:45.769029', 0, 'lorenaro', 'Lorena', 'Castro', 'vornelas@hispavista.com', 0, 1, '2025-03-03 02:43:05.065983'),
(15, 'pbkdf2_sha256$600000$YeWnxn5grRWEjxebakNyUz$1w0kIPNcY7FvUeXv4Vhod/7MPCGBTOPn04dXWIYl67M=', '2025-03-03 03:38:54.149983', 0, 'veroniega', 'Verónica', 'Vega', 'nadia44@yahoo.com', 0, 1, '2025-03-03 02:43:43.815295'),
(16, 'pbkdf2_sha256$600000$yS9k64FSGa6njeg1OhQCRw$2KHk4aGZBB3WZFCZ4wmyL8G6bXw32KjfEXFSQkxFpuk=', '2025-03-03 07:07:42.373651', 0, 'tomaas', 'Tomas', 'Iglesias', 'javier.exposito@terra.com', 0, 1, '2025-03-03 02:44:30.787678'),
(17, 'pbkdf2_sha256$600000$CfLdKwp12DrxpHUoIHfBJw$XZ8JNxZ8OJxxG+y1QEx+fbZceEJbN4i8uK2Cu+TuYIY=', NULL, 0, 'alberrra', 'Albert', 'Parra', 'cesar94@delacruz.org', 0, 1, '2025-03-03 02:45:30.564279'),
(18, 'pbkdf2_sha256$600000$zjITqxiK23uD378POgySVj$zg2BXNM3/dKJ+GhujBbj3irthyP+6h53ojxY8azdSvM=', NULL, 0, 'joanvial', 'Joan', 'Vidal', 'nuria87@manzanares.com', 0, 1, '2025-03-03 02:46:18.047854'),
(19, 'pbkdf2_sha256$600000$OQNBvhvH0azQRgjADewFkt$BZUhI9qpCW+iFcI9B5L7tW0WpbrH4I9Py/44V2K97UE=', NULL, 0, 'albaon', 'Alba', 'Leon', 'leo30@serra.es', 0, 1, '2025-03-03 02:46:57.471757');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2025-03-02 06:09:11.534770', '1', 'Barrieron el piso con Zelensky by N Noticias', 1, '[{\"added\": {}}]', 9, 2),
(2, '2025-03-02 06:19:24.768979', '2', 'Se prendio la casa blanca by Politica Visual', 1, '[{\"added\": {}}]', 9, 2),
(3, '2025-03-02 06:23:48.344742', '3', 'Fallecio una actriz de hollywood by delcarajotv', 1, '[{\"added\": {}}]', 9, 2),
(4, '2025-03-03 03:23:49.541273', '4', 'Qué hizo FRANCO por las lenguas de España? by Linguriosa', 1, '[{\"added\": {}}]', 9, 2),
(5, '2025-03-03 03:25:41.189874', '5', 'La oscura noche de George Harris en el Festival de Viña 2025 by Mega noticias', 1, '[{\"added\": {}}]', 9, 2),
(6, '2025-03-03 03:27:19.248699', '6', 'MARKETING HUMILDE by zirancomms', 1, '[{\"added\": {}}]', 9, 2),
(7, '2025-03-03 03:28:39.414051', '7', 'COCHES PROHIBIDOS by Garaje Hermanos', 1, '[{\"added\": {}}]', 9, 2),
(8, '2025-03-03 03:29:40.884296', '8', 'La Mejor Peli Latinoamericana de Adolescentes by Coffe TV', 1, '[{\"added\": {}}]', 9, 2),
(9, '2025-03-03 03:30:24.038456', '9', '¿Qué DIABLOS pasó con ACCLAIM? by Cultura VJ', 1, '[{\"added\": {}}]', 9, 2),
(10, '2025-03-03 03:32:38.129116', '10', 'Why Did 2000s Games Look Like That? by ExtraMintyy', 1, '[{\"added\": {}}]', 9, 2),
(11, '2025-03-03 08:16:58.355419', '11', 'Why the Soviet Union was obsessed with corn by PhilEdwardsInc', 1, '[{\"added\": {}}]', 9, 2),
(12, '2025-03-03 08:17:44.872630', '12', 'How Stellantis Destroyed Jeep by more perfect union', 1, '[{\"added\": {}}]', 9, 2),
(13, '2025-03-03 08:18:16.041221', '13', '????GLORIA ÁLVAREZ: Inicios, auge y CAÍDA (IMPERDIBLE) by soldado cultural', 1, '[{\"added\": {}}]', 9, 2),
(14, '2025-03-03 08:18:55.800559', '14', 'No soy mejor amiga de nadie by kykyvlogs', 1, '[{\"added\": {}}]', 9, 2),
(15, '2025-03-03 08:19:36.793049', '15', 'La Expo de Tecnología MAS IMPRESIONANTE DEL MUNDO by max y noelia', 1, '[{\"added\": {}}]', 9, 2),
(16, '2025-03-03 08:20:16.637537', '16', '¿Por qué Estados Unidos es rico e Hispanoamérica pobre? by Brigada Antifraude', 1, '[{\"added\": {}}]', 9, 2),
(17, '2025-03-03 08:20:59.209584', '17', 'SH*TFLATION by Micro Econ YT', 1, '[{\"added\": {}}]', 9, 2),
(18, '2025-03-03 08:38:13.635770', '18', 'Una ciudad dentro de una ciudad by erikpastran', 1, '[{\"added\": {}}]', 9, 2),
(19, '2025-03-03 08:38:45.747577', '19', 'El Problema del Turismo \"INSTAGRAMEABLE\" by factualidad', 1, '[{\"added\": {}}]', 9, 2),
(20, '2025-03-03 08:39:35.258577', '20', 'Courtney Love: The Girl With The Most Cake by antiheroines', 1, '[{\"added\": {}}]', 9, 2),
(21, '2025-03-03 08:57:38.245074', '21', 'The INVENTION that CHANGED TECHNOLOGY by LinuxChad', 1, '[{\"added\": {}}]', 9, 2);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(7, 'profiles', 'userhistory'),
(6, 'sessions', 'session'),
(8, 'videos', 'comment'),
(9, 'videos', 'video');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2025-03-02 03:37:56.269251'),
(2, 'auth', '0001_initial', '2025-03-02 03:37:56.822347'),
(3, 'admin', '0001_initial', '2025-03-02 03:37:56.963782'),
(4, 'admin', '0002_logentry_remove_auto_add', '2025-03-02 03:37:56.987375'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2025-03-02 03:37:57.002996'),
(6, 'contenttypes', '0002_remove_content_type_name', '2025-03-02 03:37:57.120726'),
(7, 'auth', '0002_alter_permission_name_max_length', '2025-03-02 03:37:57.185671'),
(8, 'auth', '0003_alter_user_email_max_length', '2025-03-02 03:37:57.209254'),
(9, 'auth', '0004_alter_user_username_opts', '2025-03-02 03:37:57.221340'),
(10, 'auth', '0005_alter_user_last_login_null', '2025-03-02 03:37:57.292530'),
(11, 'auth', '0006_require_contenttypes_0002', '2025-03-02 03:37:57.298598'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2025-03-02 03:37:57.313736'),
(13, 'auth', '0008_alter_user_username_max_length', '2025-03-02 03:37:57.333795'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2025-03-02 03:37:57.352192'),
(15, 'auth', '0010_alter_group_name_max_length', '2025-03-02 03:37:57.373749'),
(16, 'auth', '0011_update_proxy_permissions', '2025-03-02 03:37:57.384535'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2025-03-02 03:37:57.406968'),
(18, 'videos', '0001_initial', '2025-03-02 03:37:57.871659'),
(19, 'videos', '0002_remove_video_active', '2025-03-02 03:37:57.900022'),
(20, 'videos', '0003_video_active', '2025-03-02 03:37:57.933402'),
(21, 'videos', '0004_auto_20180915_1501', '2025-03-02 03:37:57.987485'),
(22, 'videos', '0005_video_created_at', '2025-03-02 03:37:58.033764'),
(23, 'profiles', '0001_initial', '2025-03-02 03:37:58.290905'),
(24, 'sessions', '0001_initial', '2025-03-02 03:37:58.322067');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('4360lll9g6q7kiuignu61isef822xexf', '.eJxVjMEOwiAQRP-FsyFgoYJH7_0GsssuUjWQlPZk_Hdp0oPeJvPezFsE2NYctsZLmElchRGn3w4hPrnsgB5Q7lXGWtZlRrkr8qBNTpX4dTvcv4MMLfc168G56F0aiNkiAfkRHSSrLJ8jm2Q7SjZ5FS_YM-lxMIbQk9LgPYjPFxCvOOQ:1toxMx:kvnGMy_oDrtXatyB_F_Lpl_B-j3xt78GAvyWVTieSoc', '2025-03-17 04:25:31.328240'),
('af5p3ld4b8qk1goqo8gpdudj278coz3l', '.eJxVjEEOwiAQRe_C2hBmUgbq0r1nIAwDUjU0Ke3KeHdt0oVu_3vvv1SI21rD1vMSJlFnher0u3FMj9x2IPfYbrNOc1uXifWu6IN2fZ0lPy-H-3dQY6_fGgYWy2hARiQxSJA55ZI8sGVHxdDgjEfE0YMtDAyFHJNLwGSNd-r9Adb7NzY:1tp0vG:D6UqIAgTDd6Nl-1tCXThpzNuaqVEm_4K4blzd7qUTe8', '2025-03-17 08:13:10.557788'),
('cd4dwq8711o3tttwylij7el2fc8ybkb9', '.eJxVjDkOwjAURO_iGlnev0NJnzNY3xsOIFuKkwpxdxwpBVQjzXszb-Jw34rbe1rdEsmVALn8dh7DM9UDxAfWe6Oh1W1dPD0UetJO5xbT63a6fwcFexlrxTKXPEk_YtLAmDDAM2eTtVKhBQg5B2GUAPCgubfeJDTDjUMyoMnnC7ByNo4:1toxUC:64VlsSf0psjeTZoXLInEq0wRDKHgTGcVewA2a_3fRoE', '2025-03-17 04:33:00.887445'),
('eje4o2czntvbawf4fxzuvlwpvmbhukdl', '.eJxVjDsOwjAQBe_iGlkbf2Kbkp4zWG-9FgmgRIqTCnF3iJQC2jcz76UytnXIW6tLHkWdVUfq9DsyyqNOO5E7ptusyzyty8h6V_RBm77OUp-Xw_07GNCGb50CB6kAg7kkUxAI6IPE3pITn6gAjoRgYiBjKXYO1vrQsY8GhdX7AyktODc:1tozs6:QOelZZ5FLqBSU5Kav2KPS82C7PfCx2W_kzqyzGWrvmk', '2025-03-17 07:05:50.494240'),
('kr4mfnk96hd97uj5x1plgxp0wn3t9gh2', '.eJxVjM0OwiAQhN-FsyH8lAU9evcZyC4LUjU0Ke3J-O62SQ96m8z3zbxFxHWpce15jiOLi9AgTr8lYXrmthN-YLtPMk1tmUeSuyIP2uVt4vy6Hu7fQcVet3UxBrT2FmBL1pgCnDgMjsAF4kSszsohW6ZibXLFBoJBOc-oMYfgxecL-U04BA:1toztu:CT5zYaOhMmcI_GtJqvspO4AzS-fodHLeXH6ttzT_vQo', '2025-03-17 07:07:42.382701'),
('wvbpx4m7a68bkadk383a3hlulajqbcne', '.eJxVjEEOwiAQRe_C2hBmUgbq0r1nIAwDUjU0Ke3KeHdt0oVu_3vvv1SI21rD1vMSJlFnher0u3FMj9x2IPfYbrNOc1uXifWu6IN2fZ0lPy-H-3dQY6_fGgYWy2hARiQxSJA55ZI8sGVHxdDgjEfE0YMtDAyFHJNLwGSNd-r9Adb7NzY:1toseS:oLvyujBdD_6NKYYbKNsbcpTLgqlrtNSYlG42ysSmnv0', '2025-03-16 23:23:16.533352');

-- --------------------------------------------------------

--
-- Table structure for table `profiles_userhistory`
--

CREATE TABLE `profiles_userhistory` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `profiles_userhistory`
--

INSERT INTO `profiles_userhistory` (`id`, `user_id`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10),
(11, 11),
(12, 12),
(13, 13),
(14, 14),
(15, 15),
(16, 16),
(17, 17),
(18, 18),
(19, 19);

-- --------------------------------------------------------

--
-- Table structure for table `profiles_userhistory_history`
--

CREATE TABLE `profiles_userhistory_history` (
  `id` int(11) NOT NULL,
  `userhistory_id` int(11) NOT NULL,
  `video_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `profiles_userhistory_history`
--

INSERT INTO `profiles_userhistory_history` (`id`, `userhistory_id`, `video_id`) VALUES
(61, 1, 9),
(1, 2, 1),
(9, 2, 2),
(15, 2, 3),
(25, 2, 4),
(69, 2, 5),
(68, 2, 6),
(22, 2, 7),
(65, 2, 9),
(62, 2, 10),
(96, 2, 13),
(93, 2, 14),
(98, 2, 21),
(20, 3, 1),
(44, 4, 1),
(46, 4, 5),
(51, 7, 1),
(52, 7, 3),
(48, 7, 8),
(43, 8, 5),
(40, 8, 6),
(42, 8, 9),
(84, 9, 1),
(36, 9, 4),
(38, 9, 7),
(81, 9, 8),
(34, 10, 1),
(70, 10, 7),
(103, 11, 8),
(101, 11, 18),
(32, 13, 1),
(90, 13, 6),
(87, 13, 10),
(56, 14, 1),
(54, 14, 5),
(26, 15, 1),
(71, 16, 1),
(79, 16, 4),
(76, 16, 6),
(74, 16, 8);

-- --------------------------------------------------------

--
-- Table structure for table `videos_comment`
--

CREATE TABLE `videos_comment` (
  `id` int(11) NOT NULL,
  `comment` varchar(300) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `user_id` int(11) NOT NULL,
  `video_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `videos_comment`
--

INSERT INTO `videos_comment` (`id`, `comment`, `created_at`, `updated_at`, `user_id`, `video_id`) VALUES
(1, 'Que mal por el presi de Ucrania', '2025-03-02 06:12:20.169507', '2025-03-02 06:12:20.169594', 2, 1),
(2, 'Que en paz descanse', '2025-03-02 06:24:46.612438', '2025-03-02 06:24:46.612475', 2, 3),
(3, 'muy triste', '2025-03-02 07:10:07.400398', '2025-03-02 07:10:07.400454', 3, 1),
(4, 'Que mal que prohiban estos vehiculos', '2025-03-03 03:34:45.535056', '2025-03-03 03:34:45.535116', 2, 7),
(5, 'europa debe ser independiente de los EEUU', '2025-03-03 03:39:44.440984', '2025-03-03 03:39:44.441050', 15, 1),
(6, 'Que hermosa esa pelicula', '2025-03-03 04:33:39.574917', '2025-03-03 04:33:39.574971', 7, 8),
(7, 'que mal le fue', '2025-03-03 04:45:33.159563', '2025-03-03 04:45:33.159612', 14, 5),
(8, 'Trump es el nuevo aliado de rusia.', '2025-03-03 04:47:16.463359', '2025-03-03 04:47:16.463392', 14, 1),
(9, 'MAGA arriba', '2025-03-03 07:08:05.957312', '2025-03-03 07:08:05.957341', 16, 1),
(10, 'viva mexico', '2025-03-03 08:02:01.405697', '2025-03-03 08:02:01.405733', 9, 8),
(11, 'viva trump', '2025-03-03 08:03:08.831992', '2025-03-03 08:03:08.832050', 9, 1),
(12, 'hola bebe', '2025-03-03 08:36:29.115178', '2025-03-03 08:36:29.115214', 2, 14),
(13, 'excelente', '2025-03-03 08:58:11.279112', '2025-03-03 08:58:11.279221', 2, 21),
(14, 'quisiera conocer parque central', '2025-03-03 08:59:29.162110', '2025-03-03 08:59:29.162142', 11, 18),
(15, 'amor de adolescente', '2025-03-03 09:01:04.524520', '2025-03-03 09:01:04.524553', 11, 8);

-- --------------------------------------------------------

--
-- Table structure for table `videos_video`
--

CREATE TABLE `videos_video` (
  `id` int(11) NOT NULL,
  `title` varchar(256) NOT NULL,
  `views` int(11) NOT NULL,
  `author` varchar(200) NOT NULL,
  `youtube_id` varchar(50) NOT NULL,
  `thumbnail_url` varchar(200) NOT NULL,
  `slug` varchar(200) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `created_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `videos_video`
--

INSERT INTO `videos_video` (`id`, `title`, `views`, `author`, `youtube_id`, `thumbnail_url`, `slug`, `active`, `created_at`) VALUES
(1, 'Barrieron el piso con Zelensky', 48, 'N Noticias', 'e1t_t2ZCZM4', 'https://img.youtube.com/vi/e1t_t2ZCZM4/mqdefault.jpg', '1', 1, '2025-03-02'),
(2, 'Se prendio la casa blanca', 11, 'Politica Visual', '52RyXr_XoLA', 'https://img.youtube.com/vi/52RyXr_XoLA/mqdefault.jpg', '2', 1, '2025-03-02'),
(3, 'Fallecio una actriz de hollywood', 10, 'delcarajotv', '5AZDcaJYxCI', 'https://img.youtube.com/vi/5AZDcaJYxCI/mqdefault.jpg', '3', 1, '2025-03-02'),
(4, 'Qué hizo FRANCO por las lenguas de España?', 6, 'Linguriosa', 'WW4D-1Sa-r8', 'https://img.youtube.com/vi/WW4D-1Sa-r8/mqdefault.jpg', '4', 1, '2025-03-02'),
(5, 'La oscura noche de George Harris en el Festival de Viña 2025', 8, 'Mega noticias', 'c9hLIKlF8Bk', 'https://img.youtube.com/vi/c9hLIKlF8Bk/mqdefault.jpg', '5', 1, '2025-03-02'),
(6, 'MARKETING HUMILDE', 9, 'zirancomms', '0I1YhwNKoF0', 'https://img.youtube.com/vi/0I1YhwNKoF0/mqdefault.jpg', '6', 1, '2025-03-02'),
(7, 'COCHES PROHIBIDOS', 7, 'Garaje Hermanos', 'UL_eA8fFoz0', 'https://img.youtube.com/vi/UL_eA8fFoz0/mqdefault.jpg', '7', 1, '2025-03-02'),
(8, 'La Mejor Peli Latinoamericana de Adolescentes', 11, 'Coffe TV', 'zL23r7hJ4zc', 'https://img.youtube.com/vi/zL23r7hJ4zc/mqdefault.jpg', '8', 1, '2025-03-02'),
(9, '¿Qué DIABLOS pasó con ACCLAIM?', 8, 'Cultura VJ', 'xuP_rqsJeNI', 'https://img.youtube.com/vi/xuP_rqsJeNI/mqdefault.jpg', '9', 1, '2025-03-02'),
(10, 'Why Did 2000s Games Look Like That?', 4, 'ExtraMintyy', '5tV3nDPQAyI', 'https://img.youtube.com/vi/5tV3nDPQAyI/mqdefault.jpg', '10', 1, '2025-03-02'),
(11, 'Why the Soviet Union was obsessed with corn', 0, 'PhilEdwardsInc', '9w7WrXsHkIQ', 'https://img.youtube.com/vi/9w7WrXsHkIQ/mqdefault.jpg', '11', 1, '2025-03-03'),
(12, 'How Stellantis Destroyed Jeep', 0, 'more perfect union', 'Lb_mSTnnEaQ', 'https://img.youtube.com/vi/Lb_mSTnnEaQ/mqdefault.jpg', '12', 1, '2025-03-03'),
(13, '????GLORIA ÁLVAREZ: Inicios, auge y CAÍDA (IMPERDIBLE)', 3, 'soldado cultural', 'ODz9E-YvbYo', 'https://img.youtube.com/vi/ODz9E-YvbYo/mqdefault.jpg', '13', 1, '2025-03-03'),
(14, 'No soy mejor amiga de nadie', 4, 'kykyvlogs', '4rtDhBCC9QE', 'https://img.youtube.com/vi/4rtDhBCC9QE/mqdefault.jpg', '14', 1, '2025-03-03'),
(15, 'La Expo de Tecnología MAS IMPRESIONANTE DEL MUNDO', 0, 'max y noelia', 'LsG2fd0HwMU', 'https://img.youtube.com/vi/LsG2fd0HwMU/mqdefault.jpg', '15', 1, '2025-03-03'),
(16, '¿Por qué Estados Unidos es rico e Hispanoamérica pobre?', 0, 'Brigada Antifraude', 'bT6EpuONsIo', 'https://img.youtube.com/vi/bT6EpuONsIo/mqdefault.jpg', '16', 1, '2025-03-03'),
(17, 'SH*TFLATION', 0, 'Micro Econ YT', '2JoWfQKQAzc', 'https://img.youtube.com/vi/2JoWfQKQAzc/mqdefault.jpg', '17', 1, '2025-03-03'),
(18, 'Una ciudad dentro de una ciudad', 3, 'erikpastran', 'IK_VZpOg3yU', 'https://img.youtube.com/vi/IK_VZpOg3yU/mqdefault.jpg', '18', 1, '2025-03-03'),
(19, 'El Problema del Turismo \"INSTAGRAMEABLE\"', 0, 'factualidad', '5UqV6V51ZXw', 'https://img.youtube.com/vi/5UqV6V51ZXw/mqdefault.jpg', '19', 1, '2025-03-03'),
(20, 'Courtney Love: The Girl With The Most Cake', 0, 'antiheroines', 'bm47xADL0Tw', 'https://img.youtube.com/vi/bm47xADL0Tw/mqdefault.jpg', '20', 1, '2025-03-03'),
(21, 'The INVENTION that CHANGED TECHNOLOGY', 3, 'LinuxChad', 'TX-x7vwwJGM', 'https://img.youtube.com/vi/TX-x7vwwJGM/mqdefault.jpg', '21', 1, '2025-03-03');

-- --------------------------------------------------------

--
-- Table structure for table `videos_video_dislikes`
--

CREATE TABLE `videos_video_dislikes` (
  `id` int(11) NOT NULL,
  `video_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `videos_video_dislikes`
--

INSERT INTO `videos_video_dislikes` (`id`, `video_id`, `user_id`) VALUES
(1, 1, 2),
(11, 1, 3),
(5, 2, 2),
(6, 3, 2),
(17, 4, 14),
(26, 5, 4),
(18, 5, 17),
(19, 6, 17),
(24, 7, 2),
(25, 7, 9),
(20, 7, 17),
(21, 8, 17),
(22, 9, 17),
(23, 10, 17),
(27, 11, 17),
(28, 12, 17),
(34, 13, 2),
(29, 13, 17),
(30, 14, 17),
(31, 15, 17),
(32, 16, 17),
(33, 17, 17),
(35, 18, 17),
(36, 19, 17),
(37, 20, 17),
(38, 21, 17);

-- --------------------------------------------------------

--
-- Table structure for table `videos_video_likes`
--

CREATE TABLE `videos_video_likes` (
  `id` int(11) NOT NULL,
  `video_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `videos_video_likes`
--

INSERT INTO `videos_video_likes` (`id`, `video_id`, `user_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(20, 1, 3),
(45, 1, 4),
(47, 1, 7),
(53, 1, 9),
(40, 1, 10),
(37, 1, 13),
(50, 1, 14),
(36, 1, 15),
(10, 2, 1),
(11, 3, 1),
(12, 3, 2),
(48, 3, 7),
(27, 4, 5),
(41, 4, 9),
(25, 4, 10),
(24, 4, 17),
(26, 4, 19),
(44, 5, 8),
(49, 5, 14),
(28, 5, 19),
(42, 6, 8),
(54, 6, 13),
(29, 6, 19),
(34, 7, 2),
(30, 7, 19),
(46, 8, 7),
(52, 8, 9),
(68, 8, 11),
(31, 8, 19),
(51, 9, 1),
(43, 9, 8),
(32, 9, 19),
(33, 10, 19),
(55, 11, 19),
(56, 12, 19),
(57, 13, 19),
(62, 14, 2),
(58, 14, 19),
(59, 15, 19),
(60, 16, 19),
(61, 17, 19),
(67, 18, 11),
(63, 18, 19),
(64, 19, 19),
(65, 20, 19),
(66, 21, 19);

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
-- Indexes for table `profiles_userhistory`
--
ALTER TABLE `profiles_userhistory`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `profiles_userhistory_history`
--
ALTER TABLE `profiles_userhistory_history`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `profiles_userhistory_his_userhistory_id_video_id_f99bb9b5_uniq` (`userhistory_id`,`video_id`),
  ADD KEY `profiles_userhistory_video_id_080308db_fk_videos_vi` (`video_id`);

--
-- Indexes for table `videos_comment`
--
ALTER TABLE `videos_comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `videos_comment_video_id_addacfa1_fk_videos_video_id` (`video_id`),
  ADD KEY `videos_comment_user_id_03f7fd8b_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `videos_video`
--
ALTER TABLE `videos_video`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `videos_video_dislikes`
--
ALTER TABLE `videos_video_dislikes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `videos_video_dislikes_to_video_id_user_id_f73a0563_uniq` (`video_id`,`user_id`),
  ADD KEY `videos_video_dislikes_to_user_id_9a195b15_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `videos_video_likes`
--
ALTER TABLE `videos_video_likes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `videos_video_likes_to_video_id_user_id_79c1c1bd_uniq` (`video_id`,`user_id`),
  ADD KEY `videos_video_likes_to_user_id_3bc1fd97_fk_auth_user_id` (`user_id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `profiles_userhistory`
--
ALTER TABLE `profiles_userhistory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `profiles_userhistory_history`
--
ALTER TABLE `profiles_userhistory_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT for table `videos_comment`
--
ALTER TABLE `videos_comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `videos_video`
--
ALTER TABLE `videos_video`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `videos_video_dislikes`
--
ALTER TABLE `videos_video_dislikes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `videos_video_likes`
--
ALTER TABLE `videos_video_likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

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
-- Constraints for table `profiles_userhistory`
--
ALTER TABLE `profiles_userhistory`
  ADD CONSTRAINT `profiles_userhistory_user_id_38a5b701_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `profiles_userhistory_history`
--
ALTER TABLE `profiles_userhistory_history`
  ADD CONSTRAINT `profiles_userhistory_userhistory_id_e6049160_fk_profiles_` FOREIGN KEY (`userhistory_id`) REFERENCES `profiles_userhistory` (`id`),
  ADD CONSTRAINT `profiles_userhistory_video_id_080308db_fk_videos_vi` FOREIGN KEY (`video_id`) REFERENCES `videos_video` (`id`);

--
-- Constraints for table `videos_comment`
--
ALTER TABLE `videos_comment`
  ADD CONSTRAINT `videos_comment_user_id_03f7fd8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `videos_comment_video_id_addacfa1_fk_videos_video_id` FOREIGN KEY (`video_id`) REFERENCES `videos_video` (`id`);

--
-- Constraints for table `videos_video_dislikes`
--
ALTER TABLE `videos_video_dislikes`
  ADD CONSTRAINT `videos_video_dislikes_to_user_id_9a195b15_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `videos_video_dislikes_to_video_id_7395aad4_fk_videos_video_id` FOREIGN KEY (`video_id`) REFERENCES `videos_video` (`id`);

--
-- Constraints for table `videos_video_likes`
--
ALTER TABLE `videos_video_likes`
  ADD CONSTRAINT `videos_video_likes_to_user_id_3bc1fd97_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `videos_video_likes_to_video_id_adb125b0_fk_videos_video_id` FOREIGN KEY (`video_id`) REFERENCES `videos_video` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
