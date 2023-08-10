-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.0.30 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Dumping structure for table touch_grass_db_dev.activities
CREATE TABLE IF NOT EXISTS `activities` (
  `id` int NOT NULL AUTO_INCREMENT,
  `activity` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `participants` int NOT NULL,
  `weather` enum('Thunderstorm','Drizzle','Rain','Snow','Mist','Smoke','Haze','Dust','Fog','Sand','Ash','Squall','Tornado','Clear','Clouds') NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `activity` (`activity`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table touch_grass_db_dev.activities: ~46 rows (approximately)
INSERT INTO `activities` (`id`, `activity`, `type`, `participants`, `weather`, `createdAt`, `updatedAt`) VALUES
	(1, 'Indoor Cooking Adventures', 'recreational', 1, 'Rain', '2023-08-10 13:24:34', '2023-08-10 13:24:34'),
	(2, 'Bookstore Browsing', 'recreational', 1, 'Rain', '2023-08-10 13:24:34', '2023-08-10 13:24:34'),
	(3, 'Movie Marathon at Home', 'recreational', 1, 'Rain', '2023-08-10 13:24:34', '2023-08-10 13:24:34'),
	(4, 'Creative Indoor Crafts', 'creative', 1, 'Rain', '2023-08-10 13:24:34', '2023-08-10 13:24:34'),
	(5, 'Cozy Tea and Reading Time', 'recreational', 1, 'Rain', '2023-08-10 13:24:34', '2023-08-10 13:24:34'),
	(7, 'Rainy Day Puzzle Solving', 'recreational', 1, 'Rain', '2023-08-10 13:24:34', '2023-08-10 13:24:34'),
	(8, 'Cooking Comfort Foods', 'recreational', 1, 'Rain', '2023-08-10 13:24:34', '2023-08-10 13:24:34'),
	(9, 'Home Garden Greening', 'recreational', 1, 'Rain', '2023-08-10 13:24:34', '2023-08-10 13:24:34'),
	(10, 'Listening to Rain Sounds', 'recreational', 1, 'Rain', '2023-08-10 13:24:34', '2023-08-10 13:24:34'),
	(12, 'Rainy Day Journaling', 'creative', 1, 'Rain', '2023-08-10 13:24:34', '2023-08-10 13:24:34'),
	(13, 'DIY Home DÃ©cor Projects', 'creative', 1, 'Rain', '2023-08-10 13:24:34', '2023-08-10 13:24:34'),
	(22, 'Snowy Landscape Photography', 'creative', 1, 'Snow', '2023-08-10 13:25:38', '2023-08-10 13:25:38'),
	(23, 'Cozy Fireplace Reading', 'recreational', 1, 'Snow', '2023-08-10 13:25:38', '2023-08-10 13:25:38'),
	(24, 'Winter Baking at Home', 'recreational', 1, 'Snow', '2023-08-10 13:25:38', '2023-08-10 13:25:38'),
	(26, 'Snowy Window Gazing', 'recreational', 1, 'Snow', '2023-08-10 13:25:38', '2023-08-10 13:25:38'),
	(27, 'Snowflake Art and Crafts', 'creative', 1, 'Snow', '2023-08-10 13:25:38', '2023-08-10 13:25:38'),
	(28, 'Cooking Hearty Winter Meals', 'recreational', 1, 'Snow', '2023-08-10 13:25:38', '2023-08-10 13:25:38'),
	(29, 'Park Picnic and Relaxation', 'recreational', 1, 'Clear', '2023-08-10 13:26:04', '2023-08-10 13:26:04'),
	(30, 'Outdoor Photography Expedition', 'creative', 1, 'Clear', '2023-08-10 13:26:04', '2023-08-10 13:26:04'),
	(31, 'Morning Jog in the Park', 'recreational', 1, 'Clear', '2023-08-10 13:26:04', '2023-08-10 13:26:04'),
	(32, 'Nature Sketching Session', 'creative', 1, 'Clear', '2023-08-10 13:26:04', '2023-08-10 13:26:04'),
	(33, 'Reading by the Lake', 'recreational', 1, 'Clear', '2023-08-10 13:26:04', '2023-08-10 13:26:04'),
	(34, 'Relaxing in the Garden', 'recreational', 1, 'Clear', '2023-08-10 13:26:04', '2023-08-10 13:26:04'),
	(35, 'Outdoor Yoga and Meditation', 'recreational', 1, 'Clear', '2023-08-10 13:26:04', '2023-08-10 13:26:04'),
	(36, 'Stargazing in Clear Night Sky', 'recreational', 1, 'Clear', '2023-08-10 13:26:04', '2023-08-10 13:26:04'),
	(45, 'Exploring Scenic Trails', 'recreational', 1, 'Clouds', '2023-08-10 13:26:28', '2023-08-10 13:26:28'),
	(46, 'Outdoor Photography Adventure', 'creative', 1, 'Clouds', '2023-08-10 13:26:28', '2023-08-10 13:26:28'),
	(47, 'Casual Bike Ride in the Park', 'recreational', 1, 'Clouds', '2023-08-10 13:26:28', '2023-08-10 13:26:28'),
	(48, 'Quiet Park Bench Reading', 'recreational', 1, 'Clouds', '2023-08-10 13:26:28', '2023-08-10 13:26:28'),
	(49, 'Refreshing Jog in Overcast Weather', 'recreational', 1, 'Clouds', '2023-08-10 13:26:28', '2023-08-10 13:26:28'),
	(50, 'Exploring Botanical Gardens', 'recreational', 1, 'Clouds', '2023-08-10 13:26:28', '2023-08-10 13:26:28'),
	(51, 'Relaxing Picnic in Overcast Day', 'recreational', 1, 'Clouds', '2023-08-10 13:26:28', '2023-08-10 13:26:28'),
	(67, 'Urban Exploring', 'recreational', 1, 'Drizzle', '2023-08-10 13:26:57', '2023-08-10 13:26:57'),
	(68, 'Gallery Hopping', 'recreational', 1, 'Drizzle', '2023-08-10 13:26:57', '2023-08-10 13:26:57'),
	(69, 'Coffee Shop Reading', 'recreational', 1, 'Drizzle', '2023-08-10 13:26:57', '2023-08-10 13:26:57'),
	(70, 'Art Museum Visit', 'recreational', 1, 'Drizzle', '2023-08-10 13:26:57', '2023-08-10 13:26:57'),
	(71, 'Quiet Park Walk', 'recreational', 1, 'Drizzle', '2023-08-10 13:26:57', '2023-08-10 13:26:57'),
	(72, 'Rainy Day Photography', 'creative', 1, 'Drizzle', '2023-08-10 13:26:57', '2023-08-10 13:26:57'),
	(73, 'Browsing Antique Stores', 'recreational', 1, 'Drizzle', '2023-08-10 13:26:57', '2023-08-10 13:26:57'),
	(74, 'Piano Practice at Park', 'recreational', 1, 'Drizzle', '2023-08-10 13:26:57', '2023-08-10 13:26:57'),
	(75, 'CafÃ© Sketching Session', 'creative', 1, 'Drizzle', '2023-08-10 13:26:57', '2023-08-10 13:26:57'),
	(76, 'Cultural Museum Exploration', 'recreational', 1, 'Drizzle', '2023-08-10 13:26:57', '2023-08-10 13:26:57'),
	(77, 'Cityscape Photography', 'creative', 1, 'Drizzle', '2023-08-10 13:26:57', '2023-08-10 13:26:57'),
	(78, 'Rainy Day Reading Nook', 'recreational', 1, 'Drizzle', '2023-08-10 13:26:57', '2023-08-10 13:26:57'),
	(79, 'Music Store Excursion', 'recreational', 1, 'Drizzle', '2023-08-10 13:26:57', '2023-08-10 13:26:57'),
	(80, 'Exploring Vintage Markets', 'recreational', 1, 'Drizzle', '2023-08-10 13:26:57', '2023-08-10 13:26:57');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
