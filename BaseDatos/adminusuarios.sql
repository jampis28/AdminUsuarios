-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 10-11-2023 a las 17:19:29
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `adminusuarios`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_11_10_155316_create_usuarios_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `apellido` varchar(255) NOT NULL,
  `correo_electronico` varchar(255) NOT NULL,
  `fecha_registro` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `apellido`, `correo_electronico`, `fecha_registro`, `created_at`, `updated_at`) VALUES
(1, 'Sister', 'Boehm', 'orn.donavon@gmail.com', '1989-09-07', '2023-11-10 21:01:27', '2023-11-10 21:01:27'),
(2, 'Jean', 'Ramos', 'jampis@jampis', '2023-12-06', '2023-11-10 21:01:27', '2023-11-10 21:11:38'),
(3, 'Trenton', 'Kerluke', 'rolfson.jeffrey@yahoo.com', '1983-08-29', '2023-11-10 21:01:27', '2023-11-10 21:01:27'),
(4, 'Joshua', 'Rolfson', 'ehaley@smith.com', '2016-06-06', '2023-11-10 21:01:27', '2023-11-10 21:01:27'),
(5, 'Hilton', 'Lakin', 'hjacobson@hotmail.com', '1981-05-17', '2023-11-10 21:01:27', '2023-11-10 21:01:27'),
(6, 'Donnell', 'Conroy', 'angelita.schinner@romaguera.com', '2016-05-26', '2023-11-10 21:01:27', '2023-11-10 21:01:27'),
(7, 'Kara', 'Kemmer', 'geovanny.haley@hotmail.com', '2013-01-02', '2023-11-10 21:01:27', '2023-11-10 21:01:27'),
(8, 'Alphonso', 'Abbott', 'hailee52@oconner.com', '2002-11-28', '2023-11-10 21:01:27', '2023-11-10 21:01:27'),
(9, 'Margaretta', 'Bode', 'watson.connelly@bergnaum.com', '1996-06-10', '2023-11-10 21:01:27', '2023-11-10 21:01:27'),
(10, 'Laverne', 'Schoen', 'hoppe.luz@hotmail.com', '2023-08-23', '2023-11-10 21:01:27', '2023-11-10 21:01:27'),
(11, 'Berniece', 'Blick', 'kub.laurence@hotmail.com', '2017-05-29', '2023-11-10 21:01:27', '2023-11-10 21:01:27'),
(12, 'Austyn', 'Botsford', 'erussel@koepp.com', '1991-06-18', '2023-11-10 21:01:27', '2023-11-10 21:01:27'),
(13, 'Annamarie', 'Klocko', 'phyllis74@swaniawski.org', '2007-05-03', '2023-11-10 21:01:27', '2023-11-10 21:01:27'),
(14, 'Arnold', 'Reinger', 'estanton@kozey.net', '1998-11-13', '2023-11-10 21:01:27', '2023-11-10 21:01:27'),
(15, 'Mona', 'Gusikowski', 'wrohan@gmail.com', '1995-10-27', '2023-11-10 21:01:27', '2023-11-10 21:01:27'),
(16, 'Alessandra', 'Schiller', 'elda.hansen@hotmail.com', '2008-12-31', '2023-11-10 21:01:27', '2023-11-10 21:01:27'),
(17, 'Gretchen', 'Emard', 'wunsch.benjamin@price.com', '1992-03-27', '2023-11-10 21:01:27', '2023-11-10 21:01:27'),
(18, 'Blair', 'Rogahn', 'nkutch@spinka.com', '2009-10-31', '2023-11-10 21:01:27', '2023-11-10 21:01:27'),
(19, 'Magnus', 'Koss', 'kassulke.delia@gmail.com', '1994-05-16', '2023-11-10 21:01:27', '2023-11-10 21:01:27'),
(20, 'Houston', 'Prohaska', 'patricia23@gmail.com', '2013-02-23', '2023-11-10 21:01:27', '2023-11-10 21:01:27'),
(21, 'Lucie', 'Bauch', 'runolfsson.jeramy@hotmail.com', '1984-06-24', '2023-11-10 21:01:27', '2023-11-10 21:01:27'),
(22, 'Adrien', 'Sporer', 'jayme43@kemmer.com', '2009-11-05', '2023-11-10 21:01:27', '2023-11-10 21:01:27'),
(23, 'Porter', 'Torphy', 'jast.helena@hotmail.com', '2011-11-03', '2023-11-10 21:01:27', '2023-11-10 21:01:27'),
(24, 'Griffin', 'Kemmer', 'gtorphy@hotmail.com', '1991-05-10', '2023-11-10 21:01:27', '2023-11-10 21:01:27'),
(25, 'Juwan', 'Hills', 'dach.helen@yahoo.com', '2005-12-09', '2023-11-10 21:01:27', '2023-11-10 21:01:27'),
(26, 'Owen', 'McLaughlin', 'zulauf.lea@swift.info', '2001-04-18', '2023-11-10 21:01:27', '2023-11-10 21:01:27'),
(27, 'Dejuan', 'Muller', 'felix.larkin@gmail.com', '1972-07-03', '2023-11-10 21:01:27', '2023-11-10 21:01:27'),
(28, 'Ashly', 'Stamm', 'rbrekke@hotmail.com', '2015-02-19', '2023-11-10 21:01:27', '2023-11-10 21:01:27'),
(29, 'Garrick', 'Cronin', 'rogahn.donavon@yahoo.com', '2001-06-16', '2023-11-10 21:01:27', '2023-11-10 21:01:27'),
(30, 'Nathanial', 'White', 'ignatius.predovic@kuhlman.com', '1993-10-06', '2023-11-10 21:01:27', '2023-11-10 21:01:27'),
(31, 'Antonia', 'Moen', 'paucek.eliza@gmail.com', '2020-05-27', '2023-11-10 21:01:27', '2023-11-10 21:01:27'),
(32, 'Kasey', 'Kilback', 'sally.nicolas@koelpin.net', '1991-02-04', '2023-11-10 21:01:27', '2023-11-10 21:01:27'),
(33, 'Veronica', 'Schmeler', 'douglas.santina@gmail.com', '1978-08-28', '2023-11-10 21:01:27', '2023-11-10 21:01:27'),
(34, 'Estelle', 'Conn', 'zparisian@berge.com', '2015-03-09', '2023-11-10 21:01:27', '2023-11-10 21:01:27'),
(35, 'Jarrod', 'Reilly', 'mcdermott.stefanie@spinka.com', '1992-11-12', '2023-11-10 21:01:27', '2023-11-10 21:01:27'),
(36, 'Delaney', 'Blick', 'emmy.wintheiser@little.info', '2001-07-07', '2023-11-10 21:01:27', '2023-11-10 21:01:27'),
(37, 'Destinee', 'Boyer', 'mary.kub@yahoo.com', '1992-06-07', '2023-11-10 21:01:27', '2023-11-10 21:01:27'),
(38, 'Aglae', 'Cremin', 'sking@corwin.com', '2016-03-04', '2023-11-10 21:01:27', '2023-11-10 21:01:27'),
(39, 'Eulah', 'Heathcote', 'ernie.spinka@wehner.com', '1973-07-31', '2023-11-10 21:01:27', '2023-11-10 21:01:27'),
(40, 'Marjory', 'Schowalter', 'erdman.neoma@welch.com', '2002-10-09', '2023-11-10 21:01:27', '2023-11-10 21:01:27'),
(41, 'Ewald', 'Sporer', 'bkub@hoppe.com', '2023-01-29', '2023-11-10 21:01:27', '2023-11-10 21:01:27'),
(42, 'Ramiro', 'Ledner', 'filomena43@mills.com', '2015-04-21', '2023-11-10 21:01:27', '2023-11-10 21:01:27'),
(43, 'Fletcher', 'DuBuque', 'christiana50@konopelski.info', '1970-01-30', '2023-11-10 21:01:27', '2023-11-10 21:01:27'),
(44, 'Evan', 'Kunde', 'haley66@conroy.com', '1983-06-21', '2023-11-10 21:01:27', '2023-11-10 21:01:27'),
(45, 'Timmy', 'O\'Kon', 'aletha.kuphal@hartmann.com', '1990-07-09', '2023-11-10 21:01:27', '2023-11-10 21:01:27'),
(46, 'Cameron', 'Kilback', 'ucorkery@zulauf.com', '1990-09-04', '2023-11-10 21:01:27', '2023-11-10 21:01:27'),
(47, 'Steve', 'Lakin', 'hermann.neal@ritchie.com', '1980-07-04', '2023-11-10 21:01:27', '2023-11-10 21:01:27'),
(48, 'Shanelle', 'McDermott', 'ettie84@gmail.com', '2019-11-30', '2023-11-10 21:01:27', '2023-11-10 21:01:27'),
(49, 'Jonathan', 'Murazik', 'marilou37@wisoky.com', '1990-03-13', '2023-11-10 21:01:27', '2023-11-10 21:01:27'),
(50, 'Raymond', 'Anderson', 'zlittel@moore.com', '1979-12-10', '2023-11-10 21:01:27', '2023-11-10 21:01:27'),
(51, 'Nicolas', 'Macejkovic', 'vicky12@yahoo.com', '2007-08-18', '2023-11-10 21:01:27', '2023-11-10 21:01:27'),
(52, 'Major', 'Beer', 'madilyn38@schowalter.info', '1993-08-19', '2023-11-10 21:01:27', '2023-11-10 21:01:27'),
(53, 'Garry', 'Nitzsche', 'jaclyn90@hotmail.com', '1974-11-04', '2023-11-10 21:01:27', '2023-11-10 21:01:27'),
(54, 'Princess', 'Hegmann', 'tiffany.kunze@sanford.com', '2018-11-16', '2023-11-10 21:01:27', '2023-11-10 21:01:27'),
(55, 'Candace', 'Rice', 'pemard@gmail.com', '1996-04-18', '2023-11-10 21:01:27', '2023-11-10 21:01:27'),
(56, 'Jasmin', 'Fahey', 'parker.parker@gmail.com', '2000-06-20', '2023-11-10 21:01:27', '2023-11-10 21:01:27'),
(57, 'Flavio', 'Cummings', 'ekilback@hotmail.com', '2013-03-04', '2023-11-10 21:01:27', '2023-11-10 21:01:27'),
(58, 'Piper', 'Schmeler', 'vhane@sanford.com', '2002-03-25', '2023-11-10 21:01:27', '2023-11-10 21:01:27'),
(59, 'Jackie', 'Davis', 'aliyah.jakubowski@berge.com', '2009-09-29', '2023-11-10 21:01:27', '2023-11-10 21:01:27'),
(60, 'Evans', 'Mayert', 'sflatley@upton.com', '1988-09-05', '2023-11-10 21:01:27', '2023-11-10 21:01:27'),
(61, 'Wilmer', 'Koch', 'ferne.volkman@erdman.com', '2004-02-19', '2023-11-10 21:01:27', '2023-11-10 21:01:27'),
(62, 'Zula', 'Hammes', 'rpagac@denesik.com', '1974-06-05', '2023-11-10 21:01:27', '2023-11-10 21:01:27'),
(63, 'Alvina', 'Sauer', 'chad91@yahoo.com', '1990-05-14', '2023-11-10 21:01:27', '2023-11-10 21:01:27'),
(64, 'Chadd', 'Marvin', 'delia.little@hotmail.com', '2015-07-04', '2023-11-10 21:01:27', '2023-11-10 21:01:27'),
(65, 'Conner', 'Watsica', 'sebastian64@yahoo.com', '1981-05-07', '2023-11-10 21:01:27', '2023-11-10 21:01:27'),
(66, 'Leon', 'Klein', 'itorphy@koch.com', '1979-11-29', '2023-11-10 21:01:27', '2023-11-10 21:01:27'),
(67, 'Erick', 'Fritsch', 'berenice.monahan@gmail.com', '1998-10-19', '2023-11-10 21:01:27', '2023-11-10 21:01:27'),
(68, 'Alfredo', 'Hayes', 'janick56@jaskolski.com', '2021-07-05', '2023-11-10 21:01:27', '2023-11-10 21:01:27'),
(69, 'Myriam', 'Waters', 'heloise62@baumbach.com', '1989-07-25', '2023-11-10 21:01:27', '2023-11-10 21:01:27'),
(70, 'Osborne', 'Satterfield', 'hugh.lehner@corwin.com', '1983-02-20', '2023-11-10 21:01:27', '2023-11-10 21:01:27'),
(71, 'Oren', 'Gibson', 'velma.jerde@hotmail.com', '1972-01-03', '2023-11-10 21:01:27', '2023-11-10 21:01:27'),
(72, 'Guiseppe', 'Ondricka', 'ykirlin@krajcik.com', '1971-12-13', '2023-11-10 21:01:27', '2023-11-10 21:01:27'),
(73, 'Terrance', 'Hegmann', 'allene48@trantow.com', '1989-02-05', '2023-11-10 21:01:27', '2023-11-10 21:01:27'),
(74, 'Jaren', 'Fadel', 'ledner.elena@konopelski.com', '2012-11-13', '2023-11-10 21:01:27', '2023-11-10 21:01:27'),
(75, 'Vernice', 'Bruen', 'christ.connelly@gerhold.com', '2004-09-24', '2023-11-10 21:01:27', '2023-11-10 21:01:27'),
(76, 'Janiya', 'Klocko', 'cleta.leuschke@gorczany.info', '2010-07-07', '2023-11-10 21:01:27', '2023-11-10 21:01:27'),
(77, 'Julius', 'Emmerich', 'caterina.carroll@casper.com', '1978-11-16', '2023-11-10 21:01:27', '2023-11-10 21:01:27'),
(78, 'Mason', 'Strosin', 'qziemann@ziemann.com', '1983-12-25', '2023-11-10 21:01:27', '2023-11-10 21:01:27'),
(79, 'Ned', 'Langworth', 'yundt.dereck@yahoo.com', '2013-08-11', '2023-11-10 21:01:27', '2023-11-10 21:01:27'),
(80, 'Leonard', 'Hagenes', 'brook.gutkowski@hotmail.com', '2009-09-08', '2023-11-10 21:01:27', '2023-11-10 21:01:27'),
(81, 'Weldon', 'Brekke', 'emard.pat@yahoo.com', '2010-12-25', '2023-11-10 21:01:27', '2023-11-10 21:01:27'),
(82, 'Cecelia', 'Toy', 'ulices.kovacek@keebler.com', '2015-02-08', '2023-11-10 21:01:27', '2023-11-10 21:01:27'),
(83, 'Jewel', 'Purdy', 'walter.estell@boehm.biz', '1990-09-19', '2023-11-10 21:01:27', '2023-11-10 21:01:27'),
(84, 'Donavon', 'Pacocha', 'jgleichner@gmail.com', '2000-01-21', '2023-11-10 21:01:27', '2023-11-10 21:01:27'),
(85, 'Rick', 'Kreiger', 'dlakin@oreilly.org', '2000-11-10', '2023-11-10 21:01:27', '2023-11-10 21:01:27'),
(86, 'Thea', 'Harvey', 'welch.hattie@yahoo.com', '2008-08-04', '2023-11-10 21:01:27', '2023-11-10 21:01:27'),
(87, 'Rudy', 'Cassin', 'oconner.reed@hotmail.com', '2013-04-09', '2023-11-10 21:01:27', '2023-11-10 21:01:27'),
(88, 'Jazmyn', 'Lesch', 'lesch.lucile@gmail.com', '2014-08-15', '2023-11-10 21:01:27', '2023-11-10 21:01:27'),
(89, 'Karelle', 'Cronin', 'emmett.osinski@hotmail.com', '1987-05-17', '2023-11-10 21:01:27', '2023-11-10 21:01:27'),
(90, 'Lucienne', 'Mertz', 'hkeebler@gmail.com', '1985-08-08', '2023-11-10 21:01:27', '2023-11-10 21:01:27'),
(91, 'Arch', 'Witting', 'corkery.heaven@hotmail.com', '1997-08-02', '2023-11-10 21:01:27', '2023-11-10 21:01:27'),
(92, 'Raegan', 'Wolff', 'clegros@yahoo.com', '1974-11-15', '2023-11-10 21:01:27', '2023-11-10 21:01:27'),
(93, 'Chanelle', 'Gottlieb', 'haltenwerth@hane.info', '1990-11-05', '2023-11-10 21:01:27', '2023-11-10 21:01:27'),
(94, 'Adrienne', 'Dach', 'zetta04@kuvalis.info', '1987-05-16', '2023-11-10 21:01:27', '2023-11-10 21:01:27'),
(95, 'Johnathan', 'Goldner', 'obie.ward@dach.com', '1983-07-07', '2023-11-10 21:01:27', '2023-11-10 21:01:27'),
(96, 'Lera', 'McLaughlin', 'borer.tate@yahoo.com', '1993-02-12', '2023-11-10 21:01:27', '2023-11-10 21:01:27'),
(97, 'Kirstin', 'Funk', 'cheyenne.welch@gmail.com', '1980-01-26', '2023-11-10 21:01:27', '2023-11-10 21:01:27'),
(98, 'Delores', 'O\'Conner', 'bwatsica@ratke.net', '1972-10-07', '2023-11-10 21:01:27', '2023-11-10 21:01:27'),
(99, 'Sven', 'Mraz', 'chesley06@gmail.com', '1976-03-06', '2023-11-10 21:01:27', '2023-11-10 21:01:27'),
(101, 'Carlos', 'Perea', 'carlos@carlos', '2023-12-06', '2023-11-10 21:12:51', '2023-11-10 21:12:51');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
