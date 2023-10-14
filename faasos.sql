-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 30, 2023 at 10:46 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `faasos`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers_details`
--

CREATE TABLE `customers_details` (
  `customer_id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone_number` varchar(20) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `zip_code` varchar(10) DEFAULT NULL,
  `registration_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customers_details`
--

INSERT INTO `customers_details` (`customer_id`, `first_name`, `last_name`, `email`, `phone_number`, `address`, `city`, `state`, `zip_code`, `registration_date`) VALUES
(1, 'Saranya', 'Krishnan', 'saranya.krish@example.com', '987-654-3210', '123 Gopalapuram Main Road', 'Chennai', 'Tamil Nadu', '600086', '2023-08-28'),
(2, 'Rajesh', 'Sharma', 'rajesh.sharma@example.com', '555-555-5555', '456 Anna Salai', 'Chennai', 'Tamil Nadu', '600002', '2023-08-29'),
(3, 'Aishwarya', 'Singh', 'aishwarya.singh@example.com', '999-888-7777', '789 Besant Nagar Beach Road', 'Chennai', 'Tamil Nadu', '600090', '2023-08-30'),
(4, 'Anand', 'Verma', 'anand.verma@example.com', '777-888-9999', '987 T. Nagar', 'Chennai', 'Tamil Nadu', '600017', '2023-08-31'),
(5, 'Divya', 'Rajendran', 'divya.raj@example.com', '111-222-3333', '543 Velachery Main Road', 'Chennai', 'Tamil Nadu', '600042', '2023-09-01');

-- --------------------------------------------------------

--
-- Table structure for table `customer_order`
--

CREATE TABLE `customer_order` (
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `order_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `total_amount` decimal(10,2) DEFAULT NULL,
  `payment_method` varchar(50) DEFAULT NULL,
  `delivery_address` varchar(255) DEFAULT NULL,
  `delivery_city` varchar(50) DEFAULT NULL,
  `delivery_state` varchar(50) DEFAULT NULL,
  `delivery_zip_code` varchar(10) DEFAULT NULL,
  `order_status` varchar(20) DEFAULT NULL,
  `instruction_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer_order`
--

INSERT INTO `customer_order` (`order_id`, `customer_id`, `order_date`, `total_amount`, `payment_method`, `delivery_address`, `delivery_city`, `delivery_state`, `delivery_zip_code`, `order_status`, `instruction_id`) VALUES
(1, 1, '2023-08-28 06:30:00', 25.99, 'Credit Card', '123 Gopalapuram Main Road', 'Chennai', 'Tamil Nadu', '600035', 'Confirmed', 1),
(2, 2, '2023-08-28 06:30:00', 265.99, 'Cash On Delivery', '456 Anna Salai', 'Chennai', 'Tamil Nadu', '600032', 'Delivered', 2);

-- --------------------------------------------------------

--
-- Table structure for table `customise_your_taste`
--

CREATE TABLE `customise_your_taste` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(50) NOT NULL,
  `category` varchar(50) NOT NULL,
  `price` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customise_your_taste`
--

INSERT INTO `customise_your_taste` (`product_id`, `product_name`, `category`, `price`) VALUES
(1, 'Maida Paratha', 'Wrap Base', 10),
(2, 'Whole Wheat Paratha(Healthy)', 'Wrap Base', 30),
(3, 'Lachha Paratha(Hand crafted)', 'Wrap Base', 40),
(4, 'Crispy Bake(Chef Special)', 'Wrap Base', 50),
(5, 'French Fries(save Rs 24)', 'Sides', 85),
(6, 'Potato Wedges(M)(save Rs 20)', 'Sides', 54),
(7, 'Coca-cola Bottle(475ml)', 'Sides', 57),
(8, 'Chocolate Ice Cream(save Rs 10)', 'Sides', 89),
(9, 'Mango Ice Cream(save Rs 10)', 'Sides', 89),
(10, 'Chocolate Lava(save Rs 20)', 'Sides', 79),
(11, 'Chocolate Muffin(save Rs 20)', 'Sides', 79),
(12, 'Mint Chaas(Buttermilk)', 'Sides', 48),
(13, 'Cheese Dip', 'Add On', 25),
(14, 'Chipotle Cheese Dip(20 gm)', 'Add On', 25),
(15, 'Teekha Chaska(2 packet)', 'Add 0n', 10),
(16, 'Teekha Chaska(10 packet)', 'Add 0n', 50),
(17, 'Extra Cheese(In The Wrap)', 'Extras', 35),
(18, 'Extra Mayo(In The Wrap)', 'Extras', 20),
(19, 'No Mayo', 'Do Not Include', 0),
(20, 'No Raw Onion', 'Do Not Include', 0);

-- --------------------------------------------------------

--
-- Table structure for table `deliverer`
--

CREATE TABLE `deliverer` (
  `deliverer_id` int(11) NOT NULL,
  `deliverer_name` varchar(255) NOT NULL,
  `street_address` varchar(255) NOT NULL,
  `city` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `pincode` varchar(10) NOT NULL,
  `phone_no` varchar(10) NOT NULL,
  `date_of_joining` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `deliverer`
--

INSERT INTO `deliverer` (`deliverer_id`, `deliverer_name`, `street_address`, `city`, `state`, `pincode`, `phone_no`, `date_of_joining`) VALUES
(1, 'Arun Kumar', '123 Anna Nagar Main Road', 'Chennai', 'Tamil Nadu', '600040', '9876543210', '2022-01-15'),
(2, 'Bala Raja', '456 Besant Avenue Road', 'Chennai', 'Tamil Nadu', '600020', '8765432109', '2022-03-20'),
(3, 'Chandran Suresh', '789 Kutchery Road', 'Chennai', 'Tamil Nadu', '600006', '7654321098', '2022-05-10'),
(4, 'Dinesh Prakash', '101 College Road', 'Chennai', 'Tamil Nadu', '600008', '6543210987', '2022-07-05'),
(5, 'Elango Venkat', '234 Thyagaraya Road', 'Chennai', 'Tamil Nadu', '600017', '5432109876', '2022-09-12'),
(6, 'Ganesh Iyer', '567 Mount Road', 'Chennai', 'Tamil Nadu', '600002', '4321098765', '2023-01-30'),
(7, 'Hari Manohar', '890 Velachery Main Road', 'Chennai', 'Tamil Nadu', '600042', '3210987654', '2023-03-25'),
(8, 'Ilango Sundar', '123 Egmore High Road', 'Chennai', 'Tamil Nadu', '600008', '2109876543', '2023-05-18'),
(9, 'Jagan Ganapathy', '567 Saidapet Road', 'Chennai', 'Tamil Nadu', '600015', '1098765432', '2023-07-10'),
(10, 'Karthik Rajan', '987 Kilpauk Garden Road', 'Chennai', 'Tamil Nadu', '600010', '9876543210', '2023-09-05');

-- --------------------------------------------------------

--
-- Table structure for table `delivering_orders`
--

CREATE TABLE `delivering_orders` (
  `delivery_id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `deliverer_id` int(11) DEFAULT NULL,
  `delivery_start_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `estimated_delivery_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `delivering_orders`
--

INSERT INTO `delivering_orders` (`delivery_id`, `order_id`, `deliverer_id`, `delivery_start_time`, `estimated_delivery_time`) VALUES
(1, 1, 1, '2023-08-28 08:30:00', '2023-08-28 14:30:00'),
(2, 2, 2, '2023-08-29 04:30:00', '2023-08-29 10:45:00');

-- --------------------------------------------------------

--
-- Table structure for table `wrapping_instructions`
--

CREATE TABLE `wrapping_instructions` (
  `instruction_id` int(11) NOT NULL,
  `wrap_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `instructions` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `wrapping_instructions`
--

INSERT INTO `wrapping_instructions` (`instruction_id`, `wrap_id`, `product_id`, `instructions`) VALUES
(1, 3, 1, 'Fold the wrap gently and secure with a toothpick.'),
(2, 2, 2, 'Roll the wrap tightly and wrap in parchment paper.'),
(3, 8, 3, 'Fold the sides of the wrap and then roll it up.'),
(4, 9, 4, 'Wrap the contents in a snug fold and serve in a paper wrapper.');

-- --------------------------------------------------------

--
-- Table structure for table `wraps_and_rolls`
--

CREATE TABLE `wraps_and_rolls` (
  `wrap_id` int(11) NOT NULL,
  `wrap_name` varchar(50) NOT NULL,
  `more_details` varchar(100) NOT NULL,
  `category` varchar(30) DEFAULT NULL,
  `calories_Kcals` int(11) DEFAULT NULL,
  `carbs_Gms` int(11) DEFAULT NULL,
  `proteins_Gms` int(11) DEFAULT NULL,
  `fats_Gms` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `wraps_and_rolls`
--

INSERT INTO `wraps_and_rolls` (`wrap_id`, `wrap_name`, `more_details`, `category`, `calories_Kcals`, `carbs_Gms`, `proteins_Gms`, `fats_Gms`, `price`) VALUES
(1, 'Cheese Melt Paneer Wrap', 'Cottage cheese is seasoned with select spices, slathered with creamy, gooey cheese & snuggly wrapped', 'Veg', 688, 59, 26, 39, 195),
(2, 'Masala Paneer Tikka Wrap', 'Fresh Paneer is smoked to perfection & drizzled with minty,spicy mayonnaise & wrapped in soft roti.', 'veg', 667, 61, 22, 38, 179),
(3, 'Masala Paneer Tikka Whole Wheat Wrap', 'Fresh Paneer is smoked to perfection & drizzled with minty,spicy mayonnaise & wrapped in soft roti.', 'veg', 667, 61, 22, 38, 194),
(4, 'Cheesy Corn Salsa Wrap', 'Mexican inspired corn salsa with a generous serving of cheese is wrapped in a soft roti.', 'veg', 693, 76, 13, 38, 165),
(5, '@ Classic Veg Rolls at 140 each', 'Double surprise and Amazing SAVINGS of Rs. 70 await you with this veg classic wraps.', 'veg', 0, 0, 0, 0, 285),
(6, 'Veg Falafel Wrap', 'We roll up cripsy falafel made from the finest chickpeas, with classis mayo and crunchy onions in so', 'veg', 641, 77, 17, 30, 145),
(7, 'Chatpate Chole Roll', 'we created a wrap that has tangy burst of chole with flavorfu indian spices and crunchy onions, wrap', 'veg', 562, 72, 14, 25, 99),
(8, 'Malai Chicken Cheese Melt Wrap', 'Chunks of chicken cooked in reshmi masala,topped with sinful cheese into soft roti.', 'Non-veg', 643, 60, 25, 34, 225),
(9, 'Egg Cheese Chicken Sausage Wrap', 'This is absolutely amazing wrap made with juicy sausages,omelette & lots of cheese us here to roll y', 'Non-veg', 815, 26, 56, 53, 145),
(10, 'American Smaoked Sausage Wrap', 'Smoked chicken sausage lathered in barbeque sauce, chipotle-flavoured cheese and crunchy onions, wra', 'Non-veg', 849, 62, 28, 55, 249);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers_details`
--
ALTER TABLE `customers_details`
  ADD PRIMARY KEY (`customer_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `customer_order`
--
ALTER TABLE `customer_order`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `instruction_id` (`instruction_id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `customise_your_taste`
--
ALTER TABLE `customise_your_taste`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `deliverer`
--
ALTER TABLE `deliverer`
  ADD PRIMARY KEY (`deliverer_id`);

--
-- Indexes for table `delivering_orders`
--
ALTER TABLE `delivering_orders`
  ADD PRIMARY KEY (`delivery_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `deliverer_id` (`deliverer_id`);

--
-- Indexes for table `wrapping_instructions`
--
ALTER TABLE `wrapping_instructions`
  ADD PRIMARY KEY (`instruction_id`),
  ADD KEY `wrap_id` (`wrap_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `wraps_and_rolls`
--
ALTER TABLE `wraps_and_rolls`
  ADD PRIMARY KEY (`wrap_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers_details`
--
ALTER TABLE `customers_details`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `customise_your_taste`
--
ALTER TABLE `customise_your_taste`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `deliverer`
--
ALTER TABLE `deliverer`
  MODIFY `deliverer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `wrapping_instructions`
--
ALTER TABLE `wrapping_instructions`
  MODIFY `instruction_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `wraps_and_rolls`
--
ALTER TABLE `wraps_and_rolls`
  MODIFY `wrap_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `customer_order`
--
ALTER TABLE `customer_order`
  ADD CONSTRAINT `customer_order_ibfk_1` FOREIGN KEY (`instruction_id`) REFERENCES `wrapping_instructions` (`instruction_id`),
  ADD CONSTRAINT `customer_order_ibfk_2` FOREIGN KEY (`customer_id`) REFERENCES `customers_details` (`customer_id`);

--
-- Constraints for table `delivering_orders`
--
ALTER TABLE `delivering_orders`
  ADD CONSTRAINT `delivering_orders_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `customer_order` (`order_id`),
  ADD CONSTRAINT `delivering_orders_ibfk_2` FOREIGN KEY (`deliverer_id`) REFERENCES `deliverer` (`deliverer_id`);

--
-- Constraints for table `wrapping_instructions`
--
ALTER TABLE `wrapping_instructions`
  ADD CONSTRAINT `wrapping_instructions_ibfk_1` FOREIGN KEY (`wrap_id`) REFERENCES `wraps_and_rolls` (`wrap_id`),
  ADD CONSTRAINT `wrapping_instructions_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `customise_your_taste` (`product_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
