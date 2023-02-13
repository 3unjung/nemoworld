-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: database:3306
-- Generation Time: Sep 29, 2022 at 10:34 AM
-- Server version: 5.7.39
-- PHP Version: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nemo`
--

-- --------------------------------------------------------

--
-- Table structure for table `store_cart`
--

CREATE TABLE `store_cart` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `store_cart`
--

INSERT INTO `store_cart` (`id`, `user_id`) VALUES
(9, 1);

-- --------------------------------------------------------

--
-- Table structure for table `store_cart_orders`
--

CREATE TABLE `store_cart_orders` (
  `id` bigint(20) NOT NULL,
  `cart_id` bigint(20) NOT NULL,
  `order_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `store_cart_orders`
--

INSERT INTO `store_cart_orders` (`id`, `cart_id`, `order_id`) VALUES
(18, 9, 18),
(19, 9, 19);

-- --------------------------------------------------------

--
-- Table structure for table `store_category`
--

CREATE TABLE `store_category` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `slug` varchar(100) NOT NULL,
  `parent_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `store_category`
--

INSERT INTO `store_category` (`id`, `name`, `slug`, `parent_id`) VALUES
(1, 'itezed', 'itz', NULL),
(2, 'margaux', 'margaux', NULL),
(3, 'sramnini', 'marg-itz-kid', 2),
(4, 'itezou', 'itezed-fille', 1),
(5, 'Remoras', 'remoras', NULL),
(6, 'australis', 'remoras-australis', 5),
(7, 'Douce', 'eau-douce', NULL),
(8, 'Sale', 'eau-salee', NULL),
(9, 'Sarcoptérygiens', 'Sarcoptérygiens', NULL),
(10, 'Actinoptérygiens', 'Actinoptérygiens', NULL),
(11, 'Petromyzontides', 'Petromyzontides', NULL),
(12, 'Chondrichtyens', 'Chondrichtyens', NULL),
(13, 'Chondrichtyens', 'Chondrichtyens', NULL),
(14, 'Petromyzontides', 'Petromyzontides', NULL),
(15, 'Itezed', 'Itezed', NULL),
(16, 'Actinoptérygiens', 'Actinoptérygiens', NULL),
(17, 'Sarcoptérygiens', 'Sarcoptérygiens', NULL),
(18, 'Actinoptérygiens', 'Actinoptérygiens', NULL),
(19, 'Chondrichtyens', 'Chondrichtyens', NULL),
(20, 'Itezed', 'Itezed', NULL),
(21, 'Petromyzontides', 'Petromyzontides', NULL),
(22, 'Sarcoptérygiens', 'Sarcoptérygiens', NULL),
(23, 'Petromyzontides', 'Petromyzontides', NULL),
(24, 'Actinoptérygiens', 'Actinoptérygiens', NULL),
(25, 'Itezed', 'Itezed', NULL),
(26, 'Chondrichtyens', 'Chondrichtyens', NULL),
(27, 'Sarcoptérygiens', 'Sarcoptérygiens', NULL),
(28, 'Actinoptérygiens', 'Actinoptérygiens', NULL),
(29, 'Petromyzontides', 'Petromyzontides', NULL),
(30, 'Itezed', 'Itezed', NULL),
(31, 'Chondrichtyens', 'Chondrichtyens', NULL),
(32, 'Sarcoptérygiens', 'Sarcoptérygiens', NULL),
(33, 'Petromyzontides', 'Petromyzontides', NULL),
(34, 'Sarcoptérygiens', 'Sarcoptérygiens', NULL),
(35, 'Chondrichtyens', 'Chondrichtyens', NULL),
(36, 'Actinoptérygiens', 'Actinoptérygiens', NULL),
(37, 'Itezed', 'Itezed', NULL),
(38, 'Actinoptérygiens', 'Actinoptérygiens', NULL),
(39, 'Sarcoptérygiens', 'Sarcoptérygiens', NULL),
(40, 'Chondrichtyens', 'Chondrichtyens', NULL),
(41, 'Petromyzontides', 'Petromyzontides', NULL),
(42, 'Itezed', 'Itezed', NULL),
(43, 'Petromyzontides', 'Petromyzontides', NULL),
(44, 'Sarcoptérygiens', 'Sarcoptérygiens', NULL),
(45, 'Chondrichtyens', 'Chondrichtyens', NULL),
(46, 'Itezed', 'Itezed', NULL),
(47, 'Actinoptérygiens', 'Actinoptérygiens', NULL),
(48, 'Sarcoptérygiens', 'Sarcoptérygiens', NULL),
(49, 'Itezed', 'Itezed', NULL),
(50, 'Sarcoptérygiens', 'Sarcoptérygiens', NULL),
(51, 'Actinoptérygiens', 'Actinoptérygiens', NULL),
(52, 'Chondrichtyens', 'Chondrichtyens', NULL),
(53, 'Petromyzontides', 'Petromyzontides', NULL),
(54, 'Sarcoptérygiens', 'Sarcoptérygiens', NULL),
(55, 'Sarcoptérygiens', 'Sarcoptérygiens', NULL),
(56, 'Chondrichtyens', 'Chondrichtyens', NULL),
(57, 'Chondrichtyens', 'Chondrichtyens', NULL),
(58, 'Chondrichtyens', 'Chondrichtyens', NULL),
(59, 'Chondrichtyens', 'Chondrichtyens', NULL),
(60, 'Itezed', 'Itezed', NULL),
(61, 'Actinoptérygiens', 'Actinoptérygiens', NULL),
(62, 'Actinoptérygiens', 'Actinoptérygiens', NULL),
(63, 'Actinoptérygiens', 'Actinoptérygiens', NULL),
(64, 'Actinoptérygiens', 'Actinoptérygiens', NULL),
(65, 'Actinoptérygiens', 'Actinoptérygiens', NULL),
(66, 'Chondrichtyens', 'Chondrichtyens', NULL),
(67, 'Chondrichtyens', 'Chondrichtyens', NULL),
(68, 'Petromyzontides', 'Petromyzontides', NULL),
(69, 'Chondrichtyens', 'Chondrichtyens', NULL),
(70, 'Chondrichtyens', 'Chondrichtyens', NULL),
(71, 'Sarcoptérygiens', 'Sarcoptérygiens', NULL),
(72, 'Actinoptérygiens', 'Actinoptérygiens', NULL),
(73, 'Itezed', 'Itezed', NULL),
(74, 'Itezed', 'Itezed', NULL),
(75, 'Petromyzontides', 'Petromyzontides', NULL),
(76, 'Itezed', 'Itezed', NULL),
(77, 'Itezed', 'Itezed', NULL),
(78, 'Petromyzontides', 'Petromyzontides', NULL),
(79, 'Sarcoptérygiens', 'Sarcoptérygiens', NULL),
(80, 'Sarcoptérygiens', 'Sarcoptérygiens', NULL),
(81, 'Chondrichtyens', 'Chondrichtyens', NULL),
(82, 'Itezed', 'Itezed', NULL),
(83, 'Actinoptérygiens', 'Actinoptérygiens', NULL),
(84, 'Actinoptérygiens', 'Actinoptérygiens', NULL),
(85, 'Petromyzontides', 'Petromyzontides', NULL),
(86, 'Chondrichtyens', 'Chondrichtyens', NULL),
(87, 'Chondrichtyens', 'Chondrichtyens', NULL),
(88, 'Sarcoptérygiens', 'Sarcoptérygiens', NULL),
(89, 'Petromyzontides', 'Petromyzontides', NULL),
(90, 'Actinoptérygiens', 'Actinoptérygiens', NULL),
(91, 'Actinoptérygiens', 'Actinoptérygiens', NULL),
(92, 'Actinoptérygiens', 'Actinoptérygiens', NULL),
(93, 'Sarcoptérygiens', 'Sarcoptérygiens', NULL),
(94, 'Itezed', 'Itezed', NULL),
(95, 'Chondrichtyens', 'Chondrichtyens', NULL),
(96, 'Sarcoptérygiens', 'Sarcoptérygiens', NULL),
(97, 'Petromyzontides', 'Petromyzontides', NULL),
(98, 'Itezed', 'Itezed', NULL),
(99, 'Sarcoptérygiens', 'Sarcoptérygiens', NULL),
(100, 'Sarcoptérygiens', 'Sarcoptérygiens', NULL),
(101, 'Itezed', 'Itezed', NULL),
(102, 'Petromyzontides', 'Petromyzontides', NULL),
(103, 'Actinoptérygiens', 'Actinoptérygiens', NULL),
(104, 'Sarcoptérygiens', 'Sarcoptérygiens', NULL),
(105, 'Petromyzontides', 'Petromyzontides', NULL),
(106, 'Chondrichtyens', 'Chondrichtyens', NULL),
(107, 'Chondrichtyens', 'Chondrichtyens', NULL),
(108, 'Actinoptérygiens', 'Actinoptérygiens', NULL),
(109, 'Chondrichtyens', 'Chondrichtyens', NULL),
(110, 'Itezed', 'Itezed', NULL),
(111, 'Chondrichtyens', 'Chondrichtyens', NULL),
(112, 'Petromyzontides', 'Petromyzontides', NULL),
(113, 'Petromyzontides', 'Petromyzontides', NULL),
(114, 'Chondrichtyens', 'Chondrichtyens', NULL),
(115, 'Itezed', 'Itezed', NULL),
(116, 'Chondrichtyens', 'Chondrichtyens', NULL),
(117, 'Petromyzontides', 'Petromyzontides', NULL),
(118, 'Chondrichtyens', 'Chondrichtyens', NULL),
(119, 'Petromyzontides', 'Petromyzontides', NULL),
(120, 'Actinoptérygiens', 'Actinoptérygiens', NULL),
(121, 'Itezed', 'Itezed', NULL),
(122, 'Actinoptérygiens', 'Actinoptérygiens', NULL),
(123, 'Itezed', 'Itezed', NULL),
(124, 'Chondrichtyens', 'Chondrichtyens', NULL),
(125, 'Sarcoptérygiens', 'Sarcoptérygiens', NULL),
(126, 'Chondrichtyens', 'Chondrichtyens', NULL),
(127, 'Sarcoptérygiens', 'Sarcoptérygiens', NULL),
(128, 'Chondrichtyens', 'Chondrichtyens', NULL),
(129, 'Itezed', 'Itezed', NULL),
(130, 'Petromyzontides', 'Petromyzontides', NULL),
(131, 'Sarcoptérygiens', 'Sarcoptérygiens', NULL),
(132, 'Sarcoptérygiens', 'Sarcoptérygiens', NULL),
(133, 'Petromyzontides', 'Petromyzontides', NULL),
(134, 'Petromyzontides', 'Petromyzontides', NULL),
(135, 'Petromyzontides', 'Petromyzontides', NULL),
(136, 'Itezed', 'Itezed', NULL),
(137, 'Sarcoptérygiens', 'Sarcoptérygiens', NULL),
(138, 'Petromyzontides', 'Petromyzontides', NULL),
(139, 'Sarcoptérygiens', 'Sarcoptérygiens', NULL),
(140, 'Actinoptérygiens', 'Actinopterygiens', 141),
(141, 'Vertebres', 'Vertebres', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `store_order`
--

CREATE TABLE `store_order` (
  `id` bigint(20) NOT NULL,
  `quantity` int(11) NOT NULL,
  `ordered` tinyint(1) NOT NULL,
  `ordered_date` datetime(6) DEFAULT NULL,
  `product_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `store_order`
--

INSERT INTO `store_order` (`id`, `quantity`, `ordered`, `ordered_date`, `product_id`, `user_id`) VALUES
(18, 1, 0, NULL, 87, 1),
(19, 1, 0, NULL, 92, 1);

-- --------------------------------------------------------

--
-- Table structure for table `store_product`
--

CREATE TABLE `store_product` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `slug` varchar(100) NOT NULL,
  `price` double NOT NULL,
  `quantity` int(11) NOT NULL,
  `description` longtext NOT NULL,
  `thumbnail` varchar(100) DEFAULT NULL,
  `category_id` bigint(20) NOT NULL,
  `supplier_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `store_product`
--

INSERT INTO `store_product` (`id`, `name`, `slug`, `price`, `quantity`, `description`, `thumbnail`, `category_id`, `supplier_id`) VALUES
(87, 'Blackbass', 'Blackbass', 740, 0, 'Réfléchir risquer entrée assurer rêver dépasser. Pencher souffler cour enfin sommeil nation façon sourire. Dès émotion présence ouvrage soit.', 'photos/avec.png', 131, NULL),
(88, 'Anguille', 'Anguille', 837, 0, 'Expliquer ce dépasser temps rire bas interrompre quelque. Premier étonner dame créer peu profondément trembler aujourd\'hui. Frais siècle rappeler.', 'photos/sept.png', 132, NULL),
(89, 'Bouviere', 'Bouviere', 920, 0, 'Alors paraître voisin hors leur établir. Point tourner perte. Voix fin véritable grâce bête.\nMine cour atteindre souffrir. Impression accord nécessaire blanc.', 'photos/unique.png', 133, NULL),
(90, 'Carassin', 'Carassin', 68, 0, 'Assister ramener résultat relever. Repousser papier commencement armer espace. Coûter lors haut ton extraordinaire pourquoi.', 'photos/dégager.png', 134, NULL),
(91, 'Chevesne', 'Chevesne', 494, 0, 'Poète hôtel écraser répéter séparer. Lueur prévoir détail arrière vieil visible.\nChaud front toit malade donc mon. Fil comme de accord.', 'photos/et.png', 135, NULL),
(92, 'Carpe', 'Carpe', 204, 0, 'Libre conseil malgré quelqu\'un savoir cruel. Étouffer étendre tout autorité système immense rejoindre.', 'photos/quoi.png', 136, NULL),
(93, 'Ecrevisses', 'Ecrevisses', 542, 0, 'Dame toit éclairer. Demain pendant ni.', 'photos/franchir.png', 137, NULL),
(94, 'Breme', 'Breme', 325, 0, 'Erreur coup bon pointe inspirer chien humain. Caresser voyager succès cinq plaisir. Sourire respect dent âgé.\nHaut dessiner conduire mur révéler expression. Sorte an moyen calme. Tirer tracer gloire.', 'photos/traîner.png', 138, NULL),
(95, 'Barbeau', 'Barbeau', 843, 0, 'Depuis rouler vol savoir demi. Intérêt étude ce goutte ensuite mieux note. Heure deux mort poste d\'abord ventre.', 'photos/cabinet.png', 139, NULL),
(96, 'Brochet', 'Brochet', 698, 0, 'Long gauche rouge emporter réel seigneur écarter. Presser million ensemble amuser.\nFer fine au général travail. Obliger trouver de enfant danger chant un.', 'photos/taire.png', 140, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `supplier_supplier`
--

CREATE TABLE `supplier_supplier` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `zipcode` varchar(50) NOT NULL,
  `city` varchar(100) NOT NULL,
  `siren` varchar(50) NOT NULL,
  `telephone` varchar(20) NOT NULL,
  `email` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supplier_supplier`
--

INSERT INTO `supplier_supplier` (`id`, `name`, `address`, `zipcode`, `city`, `siren`, `telephone`, `email`) VALUES
(1, 'adepteItezed', 'liege belgique', '1234567891', 'liege', '12345678910', '12345678', NULL),
(2, 'engie', '92228 Bagneux', '80650', 'amiens', '12345678910', '12345678910', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `store_cart`
--
ALTER TABLE `store_cart`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `store_cart_orders`
--
ALTER TABLE `store_cart_orders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `store_cart_orders_cart_id_order_id_a1c5cc0e_uniq` (`cart_id`,`order_id`),
  ADD KEY `store_cart_orders_order_id_5cd21146_fk_store_order_id` (`order_id`);

--
-- Indexes for table `store_category`
--
ALTER TABLE `store_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `store_category_parent_id_a6e736ff_fk_store_category_id` (`parent_id`),
  ADD KEY `store_category_slug_2d349264` (`slug`);

--
-- Indexes for table `store_order`
--
ALTER TABLE `store_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `store_order_product_id_11796f0f_fk_store_product_id` (`product_id`),
  ADD KEY `store_order_user_id_ae5f7a5f_fk_accounts_customer_id` (`user_id`);

--
-- Indexes for table `store_product`
--
ALTER TABLE `store_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `store_product_slug_6de8ee4b` (`slug`),
  ADD KEY `store_product_category_id_574bae65_fk_store_category_id` (`category_id`),
  ADD KEY `store_product_supplier_id_6737f1af_fk_supplier_supplier_id` (`supplier_id`);

--
-- Indexes for table `supplier_supplier`
--
ALTER TABLE `supplier_supplier`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `store_cart`
--
ALTER TABLE `store_cart`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `store_cart_orders`
--
ALTER TABLE `store_cart_orders`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `store_category`
--
ALTER TABLE `store_category`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=142;

--
-- AUTO_INCREMENT for table `store_order`
--
ALTER TABLE `store_order`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `store_product`
--
ALTER TABLE `store_product`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT for table `supplier_supplier`
--
ALTER TABLE `supplier_supplier`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `store_cart`
--
ALTER TABLE `store_cart`
  ADD CONSTRAINT `store_cart_user_id_99e99107_fk_accounts_customer_id` FOREIGN KEY (`user_id`) REFERENCES `accounts_customer` (`id`);

--
-- Constraints for table `store_cart_orders`
--
ALTER TABLE `store_cart_orders`
  ADD CONSTRAINT `store_cart_orders_cart_id_22f6138e_fk_store_cart_id` FOREIGN KEY (`cart_id`) REFERENCES `store_cart` (`id`),
  ADD CONSTRAINT `store_cart_orders_order_id_5cd21146_fk_store_order_id` FOREIGN KEY (`order_id`) REFERENCES `store_order` (`id`);

--
-- Constraints for table `store_category`
--
ALTER TABLE `store_category`
  ADD CONSTRAINT `store_category_parent_id_a6e736ff_fk_store_category_id` FOREIGN KEY (`parent_id`) REFERENCES `store_category` (`id`);

--
-- Constraints for table `store_order`
--
ALTER TABLE `store_order`
  ADD CONSTRAINT `store_order_product_id_11796f0f_fk_store_product_id` FOREIGN KEY (`product_id`) REFERENCES `store_product` (`id`),
  ADD CONSTRAINT `store_order_user_id_ae5f7a5f_fk_accounts_customer_id` FOREIGN KEY (`user_id`) REFERENCES `accounts_customer` (`id`);

--
-- Constraints for table `store_product`
--
ALTER TABLE `store_product`
  ADD CONSTRAINT `store_product_category_id_574bae65_fk_store_category_id` FOREIGN KEY (`category_id`) REFERENCES `store_category` (`id`),
  ADD CONSTRAINT `store_product_supplier_id_6737f1af_fk_supplier_supplier_id` FOREIGN KEY (`supplier_id`) REFERENCES `supplier_supplier` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
