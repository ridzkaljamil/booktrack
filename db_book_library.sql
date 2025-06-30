-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 30, 2025 at 09:37 PM
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
-- Database: `db_book_library`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_groups_users`
--

CREATE TABLE `auth_groups_users` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `group` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `auth_groups_users`
--

INSERT INTO `auth_groups_users` (`id`, `user_id`, `group`, `created_at`) VALUES
(1, 1, 'superadmin', '2025-06-30 22:04:06'),
(2, 3, 'admin', '2025-06-30 23:15:48');

-- --------------------------------------------------------

--
-- Table structure for table `auth_identities`
--

CREATE TABLE `auth_identities` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `type` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `secret` varchar(255) NOT NULL,
  `secret2` varchar(255) DEFAULT NULL,
  `expires` datetime DEFAULT NULL,
  `extra` text DEFAULT NULL,
  `force_reset` tinyint(1) NOT NULL DEFAULT 0,
  `last_used_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `auth_identities`
--

INSERT INTO `auth_identities` (`id`, `user_id`, `type`, `name`, `secret`, `secret2`, `expires`, `extra`, `force_reset`, `last_used_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'email_password', NULL, 'superadmin@admin.com', '$2y$12$6lIhnaSbtIQhx7zPOFuSrux9EKPEZuSyh44ebp00Fz/SSmLlaRuBq', NULL, NULL, 0, '2025-06-30 23:39:19', '2025-06-30 22:04:06', '2025-06-30 23:39:19'),
(2, 3, 'email_password', NULL, 'ridzkal@gmail.com', '$2y$12$URvLs5H1RNHeDwD4xJO8IO28HhSeMpXLvXfCamqR5K9xllzc2JVDG', NULL, NULL, 0, '2025-07-01 02:35:52', '2025-06-30 23:15:48', '2025-07-01 02:35:52');

-- --------------------------------------------------------

--
-- Table structure for table `auth_logins`
--

CREATE TABLE `auth_logins` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `user_agent` varchar(255) DEFAULT NULL,
  `id_type` varchar(255) NOT NULL,
  `identifier` varchar(255) NOT NULL,
  `user_id` int(11) UNSIGNED DEFAULT NULL,
  `date` datetime NOT NULL,
  `success` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `auth_logins`
--

INSERT INTO `auth_logins` (`id`, `ip_address`, `user_agent`, `id_type`, `identifier`, `user_id`, `date`, `success`) VALUES
(1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:140.0) Gecko/20100101 Firefox/140.0', 'email_password', 'ridzkal@gmail.com', NULL, '2025-06-30 23:14:28', 0),
(2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:140.0) Gecko/20100101 Firefox/140.0', 'email_password', 'superadmin@admin.com', 1, '2025-06-30 23:14:47', 1),
(3, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:140.0) Gecko/20100101 Firefox/140.0', 'email_password', 'ridzkal@gmail.com', 3, '2025-06-30 23:16:16', 1),
(4, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:140.0) Gecko/20100101 Firefox/140.0', 'email_password', 'ridzkal@gmail.com', 3, '2025-06-30 23:17:45', 1),
(5, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:140.0) Gecko/20100101 Firefox/140.0', 'email_password', 'ridzkal@gmail.com', 3, '2025-06-30 23:32:40', 1),
(6, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:140.0) Gecko/20100101 Firefox/140.0', 'email_password', 'superadmin@admin.com', 1, '2025-06-30 23:39:19', 1),
(7, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:140.0) Gecko/20100101 Firefox/140.0', 'email_password', 'ridzkal@gmail.com', 3, '2025-06-30 23:39:47', 1),
(8, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:140.0) Gecko/20100101 Firefox/140.0', 'email_password', 'ridzkal@gmail.com', 3, '2025-06-30 23:47:08', 1),
(9, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:140.0) Gecko/20100101 Firefox/140.0', 'email_password', 'ridzkal@gmail.com', 3, '2025-06-30 23:54:51', 1),
(10, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:140.0) Gecko/20100101 Firefox/140.0', 'email_password', 'ridzkal@gmail.com', 3, '2025-07-01 02:35:52', 1);

-- --------------------------------------------------------

--
-- Table structure for table `auth_permissions_users`
--

CREATE TABLE `auth_permissions_users` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `permission` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_remember_tokens`
--

CREATE TABLE `auth_remember_tokens` (
  `id` int(11) UNSIGNED NOT NULL,
  `selector` varchar(255) NOT NULL,
  `hashedValidator` varchar(255) NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `expires` datetime NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_token_logins`
--

CREATE TABLE `auth_token_logins` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `user_agent` varchar(255) DEFAULT NULL,
  `id_type` varchar(255) NOT NULL,
  `identifier` varchar(255) NOT NULL,
  `user_id` int(11) UNSIGNED DEFAULT NULL,
  `date` datetime NOT NULL,
  `success` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(255) NOT NULL,
  `title` varchar(127) NOT NULL,
  `author` varchar(64) NOT NULL,
  `publisher` varchar(64) NOT NULL,
  `isbn` varchar(13) NOT NULL,
  `year` year(4) NOT NULL,
  `rack_id` int(11) UNSIGNED NOT NULL,
  `category_id` int(11) UNSIGNED NOT NULL,
  `book_cover` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `slug`, `title`, `author`, `publisher`, `isbn`, `year`, `rack_id`, `category_id`, `book_cover`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'harry-potter-philosophers-stone-1751311603', 'Harry Potter and the Philosopher\'s Stone', 'J.K. Rowling', 'Bloomsbury', '9780747532699', '1997', 10, 1, 'book-2.jpg', '2025-06-30 15:04:06', '2025-06-30 19:30:26', NULL),
(2, 'sapiens-brief-history-humankind-2', 'Sapiens: A Brief History of Humankind', 'Yuval Noah Harari', 'Harvill Secker', '9780062316097', '2014', 2, 2, 'book-6.jpg', '2025-06-30 15:04:06', '2025-06-30 15:04:06', NULL),
(3, 'to-kill-mockingbird-3', 'To Kill a Mockingbird', 'Harper Lee', 'J.B. Lippincott & Co.', '9780061120084', '1960', 6, 5, 'book-6.jpg', '2025-06-30 15:04:06', '2025-06-30 15:04:06', NULL),
(4, 'steve-jobs-biography-4', 'Steve Jobs', 'Walter Isaacson', 'Simon & Schuster', '9781451648539', '2011', 10, 3, 'book-4.jpg', '2025-06-30 15:04:06', '2025-06-30 15:04:06', NULL),
(5, 'the-alchemist-5', 'The Alchemist', 'Paulo Coelho', 'HarperCollins', '9780062315007', '1988', 3, 1, 'book-9.jpg', '2025-06-30 15:04:06', '2025-06-30 15:04:06', NULL),
(6, 'clean-code-6', 'Clean Code: A Handbook of Agile Software Craftsmanship', 'Robert C. Martin', 'Prentice Hall', '9780132350884', '2008', 9, 4, 'book-2.jpg', '2025-06-30 15:04:06', '2025-06-30 15:04:06', NULL),
(7, 'laskar-pelangi-7', 'Laskar Pelangi', 'Andrea Hirata', 'Bentang Pustaka', '9789797809847', '2005', 3, 1, 'book-9.jpg', '2025-06-30 15:04:06', '2025-06-30 15:04:06', NULL),
(8, 'thinking-fast-slow-8', 'Thinking, Fast and Slow', 'Daniel Kahneman', 'Farrar, Straus and Giroux', '9780374533557', '2011', 2, 2, 'book-10.jpg', '2025-06-30 15:04:06', '2025-06-30 15:04:06', NULL),
(9, 'pride-prejudice-9', 'Pride and Prejudice', 'Jane Austen', 'T. Egerton', '9780141439518', '0000', 10, 5, 'book-2.jpg', '2025-06-30 15:04:06', '2025-06-30 15:04:06', NULL),
(10, 'educated-memoir-10', 'Educated: A Memoir', 'Tara Westover', 'Random House', '9780399590504', '2018', 9, 3, 'book-5.jpg', '2025-06-30 15:04:06', '2025-06-30 15:04:06', NULL),
(11, 'atomic-habits-11', 'Atomic Habits', 'James Clear', 'Avery', '9780735211292', '2018', 3, 2, 'book-5.jpg', '2025-06-30 15:04:06', '2025-06-30 15:04:06', NULL),
(12, 'the-kite-runner-12', 'The Kite Runner', 'Khaled Hosseini', 'Riverhead Books', '9781594631931', '2003', 8, 1, 'book-4.jpg', '2025-06-30 15:04:06', '2025-06-30 15:04:06', NULL),
(13, 'bumi-manusia-13', 'Bumi Manusia', 'Pramoedya Ananta Toer', 'Hasta Mitra', '9789799731240', '1980', 9, 3, 'book-8.jpg', '2025-06-30 15:04:06', '2025-06-30 15:04:06', NULL),
(14, 'the-lean-startup-14', 'The Lean Startup', 'Eric Ries', 'Crown Business', '9780307887894', '2011', 6, 4, 'book-2.jpg', '2025-06-30 15:04:06', '2025-06-30 15:04:06', NULL),
(15, 'one-hundred-years-solitude-15', 'One Hundred Years of Solitude', 'Gabriel García Márquez', 'Harper & Row', '9780060883287', '1967', 6, 5, 'book-7.jpg', '2025-06-30 15:04:06', '2025-06-30 15:04:06', NULL),
(16, 'becoming-michelle-obama-16', 'Becoming', 'Michelle Obama', 'Crown Publishing', '9781524763138', '2018', 6, 3, 'book-7.jpg', '2025-06-30 15:04:06', '2025-06-30 15:04:06', NULL),
(17, 'the-great-gatsby-17', 'The Great Gatsby', 'F. Scott Fitzgerald', 'Charles Scribner\'s Sons', '9780743273565', '1925', 10, 5, 'book-3.jpg', '2025-06-30 15:04:06', '2025-06-30 15:04:06', NULL),
(18, 'homo-deus-18', 'Homo Deus: A Brief History of Tomorrow', 'Yuval Noah Harari', 'Harvill Secker', '9780062464316', '2016', 1, 2, 'book-8.jpg', '2025-06-30 15:04:06', '2025-06-30 15:04:06', NULL),
(19, 'dilan-1990-19', 'Dilan: Dia adalah Dilanku Tahun 1990', 'Pidi Baiq', 'Pastel Books', '9786020318039', '2014', 7, 1, 'book-7.jpg', '2025-06-30 15:04:06', '2025-06-30 15:04:06', NULL),
(20, 'algorithms-to-live-by-20', 'Algorithms to Live By', 'Brian Christian & Tom Griffiths', 'Henry Holt and Co.', '9781627790369', '2016', 10, 4, 'book-2.jpg', '2025-06-30 15:04:06', '2025-06-30 15:04:06', NULL),
(21, 'norwegian-wood-21', 'Norwegian Wood', 'Haruki Murakami', 'Kodansha', '9780375704024', '1987', 4, 1, 'book-2.jpg', '2025-06-30 15:04:06', '2025-06-30 19:33:57', NULL),
(22, 'the-power-of-habit-22', 'The Power of Habit', 'Charles Duhigg', 'Random House', '9781400069286', '2012', 4, 2, 'book-3.jpg', '2025-06-30 15:04:06', '2025-06-30 15:04:06', NULL),
(23, 'ayat-ayat-cinta-23', 'Ayat-Ayat Cinta', 'Habiburrahman El Shirazy', 'Republika', '9789797692087', '2004', 4, 1, 'book-5.jpg', '2025-06-30 15:04:06', '2025-06-30 15:04:06', NULL),
(24, 'the-design-of-everyday-things-24', 'The Design of Everyday Things', 'Don Norman', 'Basic Books', '9780465050659', '1988', 8, 4, 'book-6.jpg', '2025-06-30 15:04:06', '2025-06-30 15:04:06', NULL),
(25, 'beloved-25', 'Beloved', 'Toni Morrison', 'Alfred A. Knopf', '9781400033416', '1987', 5, 5, 'book-10.jpg', '2025-06-30 15:04:06', '2025-06-30 15:04:06', NULL),
(26, 'long-walk-to-freedom-26', 'Long Walk to Freedom', 'Nelson Mandela', 'Little, Brown and Company', '9780316548182', '1994', 6, 3, 'book-1.jpg', '2025-06-30 15:04:06', '2025-06-30 15:04:06', NULL),
(27, 'kafka-on-the-shore-27', 'Kafka on the Shore', 'Haruki Murakami', 'Shinchosha', '9781400079278', '2002', 2, 1, 'book-3.jpg', '2025-06-30 15:04:06', '2025-06-30 15:04:06', NULL),
(28, 'freakonomics-28', 'Freakonomics', 'Steven D. Levitt & Stephen J. Dubner', 'William Morrow', '9780060731328', '2005', 4, 2, 'book-6.jpg', '2025-06-30 15:04:06', '2025-06-30 15:04:06', NULL),
(29, 'perahu-kertas-29', 'Perahu Kertas', 'Dee Lestari', 'Bentang Pustaka', '9786020318825', '2009', 8, 1, 'book-8.jpg', '2025-06-30 15:04:06', '2025-06-30 15:04:06', NULL),
(30, 'artificial-intelligence-modern-approach-30', 'Artificial Intelligence: A Modern Approach', 'Stuart Russell & Peter Norvig', 'Pearson', '9780134610993', '2020', 6, 4, 'book-2.jpg', '2025-06-30 15:04:06', '2025-06-30 15:04:06', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `book_stock`
--

CREATE TABLE `book_stock` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `book_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(11) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `book_stock`
--

INSERT INTO `book_stock` (`id`, `book_id`, `quantity`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 34, '2025-06-30 08:04:06', '2025-06-30 08:04:06', NULL),
(2, 2, 7, '2025-06-30 08:04:06', '2025-06-30 08:04:06', NULL),
(3, 3, 91, '2025-06-30 08:04:06', '2025-06-30 08:04:06', NULL),
(4, 4, 8, '2025-06-30 08:04:06', '2025-06-30 08:04:06', NULL),
(5, 5, 79, '2025-06-30 08:04:06', '2025-06-30 08:04:06', NULL),
(6, 6, 60, '2025-06-30 08:04:06', '2025-06-30 08:04:06', NULL),
(7, 7, 100, '2025-06-30 08:04:06', '2025-06-30 08:04:06', NULL),
(8, 8, 41, '2025-06-30 08:04:06', '2025-06-30 08:04:06', NULL),
(9, 9, 88, '2025-06-30 08:04:06', '2025-06-30 08:04:06', NULL),
(10, 10, 47, '2025-06-30 08:04:06', '2025-06-30 08:04:06', NULL),
(11, 11, 83, '2025-06-30 08:04:06', '2025-06-30 08:04:06', NULL),
(12, 12, 35, '2025-06-30 08:04:06', '2025-06-30 08:04:06', NULL),
(13, 13, 24, '2025-06-30 08:04:06', '2025-06-30 08:04:06', NULL),
(14, 14, 85, '2025-06-30 08:04:06', '2025-06-30 08:04:06', NULL),
(15, 15, 12, '2025-06-30 08:04:06', '2025-06-30 08:04:06', NULL),
(16, 16, 37, '2025-06-30 08:04:06', '2025-06-30 08:04:06', NULL),
(17, 17, 47, '2025-06-30 08:04:06', '2025-06-30 08:04:06', NULL),
(18, 18, 48, '2025-06-30 08:04:06', '2025-06-30 08:04:06', NULL),
(19, 19, 51, '2025-06-30 08:04:06', '2025-06-30 08:04:06', NULL),
(20, 20, 56, '2025-06-30 08:04:06', '2025-06-30 08:04:06', NULL),
(21, 21, 74, '2025-06-30 08:04:06', '2025-06-30 19:33:57', NULL),
(22, 22, 29, '2025-06-30 08:04:06', '2025-06-30 08:04:06', NULL),
(23, 23, 79, '2025-06-30 08:04:06', '2025-06-30 08:04:06', NULL),
(24, 24, 44, '2025-06-30 08:04:06', '2025-06-30 08:04:06', NULL),
(25, 25, 14, '2025-06-30 08:04:06', '2025-06-30 08:04:06', NULL),
(26, 26, 64, '2025-06-30 08:04:06', '2025-06-30 08:04:06', NULL),
(27, 27, 74, '2025-06-30 08:04:06', '2025-06-30 08:04:06', NULL),
(28, 28, 82, '2025-06-30 08:04:06', '2025-06-30 08:04:06', NULL),
(29, 29, 47, '2025-06-30 08:04:06', '2025-06-30 08:04:06', NULL),
(30, 30, 85, '2025-06-30 08:04:06', '2025-06-30 08:04:06', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(64) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Novel', '2025-06-30 15:04:06', '2025-06-30 15:04:06', NULL),
(2, 'Non-Fiksi', '2025-06-30 15:04:06', '2025-06-30 15:04:06', NULL),
(3, 'Sejarah & Biografi', '2025-06-30 15:04:06', '2025-06-30 15:04:06', NULL),
(4, 'Teknologi & Sains', '2025-06-30 15:04:06', '2025-06-30 15:04:06', NULL),
(5, 'Sastra & Puisi', '2025-06-30 15:04:06', '2025-06-30 15:04:06', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `fines`
--

CREATE TABLE `fines` (
  `id` int(11) UNSIGNED NOT NULL,
  `loan_id` bigint(20) UNSIGNED DEFAULT NULL,
  `amount_paid` int(11) UNSIGNED DEFAULT NULL,
  `fine_amount` int(11) UNSIGNED NOT NULL,
  `paid_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `fines`
--

INSERT INTO `fines` (`id`, `loan_id`, `amount_paid`, `fine_amount`, `paid_at`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 3, NULL, 20000, NULL, '2025-06-30 15:04:06', '2025-06-30 15:04:06', NULL),
(2, 4, 15000, 15000, '2025-07-01 20:26:06', '2025-06-30 15:04:06', '2025-06-30 15:04:06', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `fines_per_day`
--

CREATE TABLE `fines_per_day` (
  `id` int(11) UNSIGNED NOT NULL,
  `amount` int(11) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `fines_per_day`
--

INSERT INTO `fines_per_day` (`id`, `amount`, `created_at`, `updated_at`) VALUES
(1, 1000, '2025-06-30 15:02:08', '2025-06-30 15:02:08');

-- --------------------------------------------------------

--
-- Table structure for table `loans`
--

CREATE TABLE `loans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uid` varchar(255) NOT NULL,
  `book_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(11) UNSIGNED NOT NULL DEFAULT 1,
  `member_id` int(11) UNSIGNED NOT NULL,
  `loan_date` datetime NOT NULL,
  `due_date` date NOT NULL,
  `return_date` datetime DEFAULT NULL,
  `qr_code` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `loans`
--

INSERT INTO `loans` (`id`, `uid`, `book_id`, `quantity`, `member_id`, `loan_date`, `due_date`, `return_date`, `qr_code`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '356a192b7913b04c54574d18c28d46e6395428ab', 1, 1, 1, '2025-05-21 21:50:06', '2025-06-06', '2025-05-31 00:07:06', NULL, '2025-06-30 15:04:06', '2025-06-30 15:04:06', NULL),
(2, 'da4b9237bacccdf19c0760cab7aec4a8359010b0', 4, 1, 2, '2025-05-25 18:11:06', '2025-07-10', NULL, NULL, '2025-06-30 15:04:06', '2025-06-30 15:04:06', NULL),
(3, '77de68daecd823babbb58edb1c8e14d7106e83bb', 2, 5, 3, '2025-05-29 19:50:06', '2025-06-11', '2025-07-01 23:36:06', NULL, '2025-06-30 15:04:06', '2025-06-30 15:04:06', NULL),
(4, '1b6453892473a467d07372d45eb05abc2031647a', 1, 1, 4, '2025-05-24 19:34:06', '2025-06-19', '2025-06-25 20:26:06', NULL, '2025-06-30 15:04:06', '2025-06-30 15:04:06', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `id` int(11) UNSIGNED NOT NULL,
  `uid` varchar(255) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `address` text DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `gender` enum('Male','Female') NOT NULL,
  `qr_code` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`id`, `uid`, `first_name`, `last_name`, `email`, `phone`, `address`, `date_of_birth`, `gender`, `qr_code`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '1d2a1bbf80f6d95a109785f6d0e8c40026b63388', 'Kamaria', 'Purnawati', 'danu18@yahoo.com', '(+62) 905 9966 7902', 'Ds. Pahlawan No. 495, Tual 35352, DIY', '2004-06-16', 'Female', NULL, '2025-06-30 15:04:06', '2025-06-30 15:04:06', NULL),
(2, '4171ddd568e19c0a3b9a66972be3e827fb0cc880', 'Edison', 'Damanik', 'tnamaga@saputra.tv', '(+62) 500 8633 110', 'Dk. Veteran No. 272, Depok 78550, Jambi', '2012-11-16', 'Male', NULL, '2025-06-30 15:04:06', '2025-06-30 15:04:06', NULL),
(3, 'b3d70bb7fb483d12603229c07449494c48893e19', 'Diah', 'Uyainah', 'mursinin.lailasari@winarsih.mil.id', '0218 6469 619', 'Dk. Lembong No. 98, Tidore Kepulauan 73891, NTB', '1995-01-26', 'Female', NULL, '2025-06-30 15:04:06', '2025-06-30 15:04:06', NULL),
(4, '6fe973d5271595abf019d0a4672d05c85c02be9b', 'Jane', 'Permata', 'qsusanti@nurdiyanti.net', '0984 8118 3207', 'Gg. Babakan No. 38, Administrasi Jakarta Timur 45384, Sulsel', '1978-12-16', 'Female', NULL, '2025-06-30 15:04:06', '2025-06-30 15:04:06', NULL),
(5, '6a85ad12dcca74d13e7a09b9774c1d530e4f408c', 'Yusuf', 'Kuswoyo', 'rahmi.sudiati@haryanti.asia', '(+62) 424 5167 933', 'Ki. Sutarjo No. 202, Kupang 86302, Jatim', '2012-06-18', 'Male', NULL, '2025-06-30 15:04:06', '2025-06-30 15:04:06', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(1, '2020-12-28-223112', 'CodeIgniter\\Shield\\Database\\Migrations\\CreateAuthTables', 'default', 'CodeIgniter\\Shield', 1751295728, 1),
(2, '2021-07-04-041948', 'CodeIgniter\\Settings\\Database\\Migrations\\CreateSettingsTable', 'default', 'CodeIgniter\\Settings', 1751295728, 1),
(3, '2021-11-14-143905', 'CodeIgniter\\Settings\\Database\\Migrations\\AddContextColumn', 'default', 'CodeIgniter\\Settings', 1751295728, 1),
(4, '2023-08-12-000001', 'App\\Database\\Migrations\\CreateRacksTable', 'default', 'App', 1751295728, 1),
(5, '2023-08-12-000002', 'App\\Database\\Migrations\\CreateCategoriesTable', 'default', 'App', 1751295728, 1),
(6, '2023-08-12-000003', 'App\\Database\\Migrations\\CreateBooksTable', 'default', 'App', 1751295728, 1),
(7, '2023-08-12-000004', 'App\\Database\\Migrations\\CreateBookStockTable', 'default', 'App', 1751295728, 1),
(8, '2023-08-12-000005', 'App\\Database\\Migrations\\CreateMembersTable', 'default', 'App', 1751295728, 1),
(9, '2023-08-12-000006', 'App\\Database\\Migrations\\CreateLoansTable', 'default', 'App', 1751295728, 1),
(10, '2023-08-12-000007', 'App\\Database\\Migrations\\CreateFinesTable', 'default', 'App', 1751295728, 1),
(11, '2024-07-08-045735', 'App\\Database\\Migrations\\CreateFinesPerDayTable', 'default', 'App', 1751295728, 1);

-- --------------------------------------------------------

--
-- Table structure for table `racks`
--

CREATE TABLE `racks` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(8) NOT NULL,
  `floor` varchar(16) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `racks`
--

INSERT INTO `racks` (`id`, `name`, `floor`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '1A', '1', '2025-06-30 15:04:06', '2025-06-30 15:04:06', NULL),
(2, '1B', '1', '2025-06-30 15:04:06', '2025-06-30 15:04:06', NULL),
(3, '1C', '1', '2025-06-30 15:04:06', '2025-06-30 15:04:06', NULL),
(4, '2A', '2', '2025-06-30 15:04:06', '2025-06-30 15:04:06', NULL),
(5, '2B', '2', '2025-06-30 15:04:06', '2025-06-30 15:04:06', NULL),
(6, '2C', '2', '2025-06-30 15:04:06', '2025-06-30 15:04:06', NULL),
(7, '3A', '3', '2025-06-30 15:04:06', '2025-06-30 15:04:06', NULL),
(8, '3B', '3', '2025-06-30 15:04:06', '2025-06-30 15:04:06', NULL),
(9, '3C', '3', '2025-06-30 15:04:06', '2025-06-30 15:04:06', NULL),
(10, '3D', '3', '2025-06-30 15:04:06', '2025-06-30 15:04:06', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(9) NOT NULL,
  `class` varchar(255) NOT NULL,
  `key` varchar(255) NOT NULL,
  `value` text DEFAULT NULL,
  `type` varchar(31) NOT NULL DEFAULT 'string',
  `context` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `status_message` varchar(255) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 0,
  `last_active` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `status`, `status_message`, `active`, `last_active`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'superadmin', NULL, NULL, 1, '2025-06-30 23:39:19', '2025-06-30 22:04:06', '2025-06-30 22:04:06', NULL),
(3, 'ridzkaljamil', NULL, NULL, 1, '2025-07-01 02:36:18', '2025-06-30 23:15:48', '2025-06-30 23:15:48', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_groups_users`
--
ALTER TABLE `auth_groups_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `auth_groups_users_user_id_foreign` (`user_id`);

--
-- Indexes for table `auth_identities`
--
ALTER TABLE `auth_identities`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `type_secret` (`type`,`secret`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `auth_logins`
--
ALTER TABLE `auth_logins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_type_identifier` (`id_type`,`identifier`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `auth_permissions_users`
--
ALTER TABLE `auth_permissions_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `auth_permissions_users_user_id_foreign` (`user_id`);

--
-- Indexes for table `auth_remember_tokens`
--
ALTER TABLE `auth_remember_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `selector` (`selector`),
  ADD KEY `auth_remember_tokens_user_id_foreign` (`user_id`);

--
-- Indexes for table `auth_token_logins`
--
ALTER TABLE `auth_token_logins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_type_identifier` (`id_type`,`identifier`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`),
  ADD KEY `books_rack_id_foreign` (`rack_id`),
  ADD KEY `books_category_id_foreign` (`category_id`);

--
-- Indexes for table `book_stock`
--
ALTER TABLE `book_stock`
  ADD PRIMARY KEY (`id`),
  ADD KEY `book_stock_book_id_foreign` (`book_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fines`
--
ALTER TABLE `fines`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fines_loan_id_foreign` (`loan_id`);

--
-- Indexes for table `fines_per_day`
--
ALTER TABLE `fines_per_day`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loans`
--
ALTER TABLE `loans`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uid` (`uid`),
  ADD KEY `loans_book_id_foreign` (`book_id`),
  ADD KEY `loans_member_id_foreign` (`member_id`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uid` (`uid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `racks`
--
ALTER TABLE `racks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_groups_users`
--
ALTER TABLE `auth_groups_users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `auth_identities`
--
ALTER TABLE `auth_identities`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `auth_logins`
--
ALTER TABLE `auth_logins`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `auth_permissions_users`
--
ALTER TABLE `auth_permissions_users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_remember_tokens`
--
ALTER TABLE `auth_remember_tokens`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `auth_token_logins`
--
ALTER TABLE `auth_token_logins`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `book_stock`
--
ALTER TABLE `book_stock`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `fines`
--
ALTER TABLE `fines`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `fines_per_day`
--
ALTER TABLE `fines_per_day`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `loans`
--
ALTER TABLE `loans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `racks`
--
ALTER TABLE `racks`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_groups_users`
--
ALTER TABLE `auth_groups_users`
  ADD CONSTRAINT `auth_groups_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `auth_identities`
--
ALTER TABLE `auth_identities`
  ADD CONSTRAINT `auth_identities_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `auth_permissions_users`
--
ALTER TABLE `auth_permissions_users`
  ADD CONSTRAINT `auth_permissions_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `auth_remember_tokens`
--
ALTER TABLE `auth_remember_tokens`
  ADD CONSTRAINT `auth_remember_tokens_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `books`
--
ALTER TABLE `books`
  ADD CONSTRAINT `books_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `books_rack_id_foreign` FOREIGN KEY (`rack_id`) REFERENCES `racks` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `book_stock`
--
ALTER TABLE `book_stock`
  ADD CONSTRAINT `book_stock_book_id_foreign` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `fines`
--
ALTER TABLE `fines`
  ADD CONSTRAINT `fines_loan_id_foreign` FOREIGN KEY (`loan_id`) REFERENCES `loans` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `loans`
--
ALTER TABLE `loans`
  ADD CONSTRAINT `loans_book_id_foreign` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `loans_member_id_foreign` FOREIGN KEY (`member_id`) REFERENCES `members` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
