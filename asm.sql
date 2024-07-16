-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost:3306
-- Thời gian đã tạo: Th7 16, 2024 lúc 07:47 AM
-- Phiên bản máy phục vụ: 8.0.30
-- Phiên bản PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `asm`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `articles`
--

CREATE TABLE `articles` (
  `id` int NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `content` text,
  `views` int DEFAULT '0',
  `img_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `is_featured` tinyint(1) DEFAULT '0',
  `category_id` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `articles`
--

INSERT INTO `articles` (`id`, `title`, `content`, `views`, `img_url`, `is_featured`, `category_id`, `created_at`, `updated_at`) VALUES
(306, 'Tôi yêu Việt Nam', 'Nội dung chi tiết của bài viết1. Đây là một đoạn ...', 133, 'http://asm.test/assets/img/trending/right4.jpg', 1, 3, '2024-07-14 05:16:37', '2024-07-14 05:16:37'),
(307, 'Bài viết2', 'Nội dung chi tiết của bài viết2. Đây là một đoạn ...', 454, 'http://asm.test/assets/img/trending/trending_bottom1.jpg', 0, 3, '2024-07-14 05:16:37', '2024-07-14 05:16:37'),
(308, 'Bài viết3', 'Nội dung chi tiết của bài viết3. Đây là một đoạn ...', 212, 'http://asm.test/assets/img/trending/right5.jpg', 0, 2, '2024-07-14 05:16:37', '2024-07-14 05:16:37'),
(309, 'Bài viết4', 'Nội dung chi tiết của bài viết4. Đây là một đoạn ...', 215, 'http://asm.test/assets/img/trending/right5.jpg', 0, 5, '2024-07-14 05:16:37', '2024-07-14 05:16:37'),
(310, 'Bài viết5', 'Nội dung chi tiết của bài viết5. Đây là một đoạn ...', 113, 'http://asm.test/assets/img/trending/right3.jpg', 0, 2, '2024-07-14 05:16:37', '2024-07-14 05:16:37'),
(311, 'Bài viết6', 'Nội dung chi tiết của bài viết6. Đây là một đoạn ...', 218, 'http://asm.test/assets/img/trending/right3.jpg', 0, 3, '2024-07-14 05:16:37', '2024-07-14 05:16:37'),
(312, 'Bài viết7', 'Nội dung chi tiết của bài viết7. Đây là một đoạn ...', 210, 'http://asm.test/assets/img/trending/trending_bottom1.jpg', 0, 5, '2024-07-14 05:16:37', '2024-07-14 05:16:37'),
(313, 'Bài viết8', 'Nội dung chi tiết của bài viết8. Đây là một đoạn ...', 98, 'http://asm.test/assets/img/trending/trending_bottom1.jpg', 0, 1, '2024-07-14 05:16:37', '2024-07-14 05:16:37'),
(314, 'Bài viết9', 'Nội dung chi tiết của bài viết9. Đây là một đoạn ...', 155, 'http://asm.test/assets/img/trending/right4.jpg', 0, 1, '2024-07-14 05:16:37', '2024-07-14 05:16:37'),
(315, 'Bài viết10', 'Nội dung chi tiết của bài viết10. Đây là một đoạn ...', 483, 'http://asm.test/assets/img/trending/right1.jpg', 0, 3, '2024-07-14 05:16:37', '2024-07-14 05:16:37'),
(316, 'Bài viết11', 'Nội dung chi tiết của bài viết11. Đây là một đoạn ...', 144, 'http://asm.test/assets/img/trending/right3.jpg', 0, 1, '2024-07-14 05:16:37', '2024-07-14 05:16:37'),
(317, 'Bài viết12', 'Nội dung chi tiết của bài viết12. Đây là một đoạn ...', 34, 'http://asm.test/assets/img/trending/right3.jpg', 0, 4, '2024-07-14 05:16:37', '2024-07-14 05:16:37'),
(318, 'Bài viết13', 'Nội dung chi tiết của bài viết13. Đây là một đoạn ...', 165, 'http://asm.test/assets/img/trending/right5.jpg', 0, 2, '2024-07-14 05:16:37', '2024-07-14 05:16:37'),
(319, 'Bài viết14', 'Nội dung chi tiết của bài viết14. Đây là một đoạn ...', 87, 'http://asm.test/assets/img/trending/right4.jpg', 0, 1, '2024-07-14 05:16:37', '2024-07-14 05:16:37'),
(320, 'Bài viết15', 'Nội dung chi tiết của bài viết15. Đây là một đoạn ...', 344, 'http://asm.test/assets/img/trending/trending_bottom2.jpg', 0, 2, '2024-07-14 05:16:37', '2024-07-14 05:16:37'),
(321, 'Bài viết16', 'Nội dung chi tiết của bài viết16. Đây là một đoạn ...', 477, 'http://asm.test/assets/img/trending/trending_bottom2.jpg', 0, 3, '2024-07-14 05:16:37', '2024-07-14 05:16:37'),
(322, 'Bài viết17', 'Nội dung chi tiết của bài viết17. Đây là một đoạn ...', 343, 'http://asm.test/assets/img/trending/right1.jpg', 0, 2, '2024-07-14 05:16:37', '2024-07-14 05:16:37'),
(323, 'Bài viết18', 'Nội dung chi tiết của bài viết18. Đây là một đoạn ...', 457, 'http://asm.test/assets/img/trending/right3.jpg', 0, 1, '2024-07-14 05:16:37', '2024-07-14 05:16:37'),
(324, 'Bài viết19', 'Nội dung chi tiết của bài viết19. Đây là một đoạn ...', 169, 'http://asm.test/assets/img/trending/trending_bottom1.jpg', 0, 5, '2024-07-14 05:16:37', '2024-07-14 05:16:37'),
(325, 'Bài viết20', 'Nội dung chi tiết của bài viết20. Đây là một đoạn ...', 214, 'http://asm.test/assets/img/trending/right4.jpg', 0, 3, '2024-07-14 05:16:37', '2024-07-14 05:16:37'),
(326, 'Bài viết21', 'Nội dung chi tiết của bài viết21. Đây là một đoạn ...', 98, 'http://asm.test/assets/img/trending/right2.jpg', 0, 4, '2024-07-14 05:16:37', '2024-07-14 05:16:37'),
(327, 'Bài viết22', 'Nội dung chi tiết của bài viết22. Đây là một đoạn ...', 6, 'http://asm.test/assets/img/trending/right5.jpg', 0, 2, '2024-07-14 05:16:37', '2024-07-14 05:16:37'),
(328, 'Bài viết23', 'Nội dung chi tiết của bài viết23. Đây là một đoạn ...', 445, 'http://asm.test/assets/img/trending/right2.jpg', 0, 3, '2024-07-14 05:16:37', '2024-07-14 05:16:37'),
(329, 'Bài viết24', 'Nội dung chi tiết của bài viết24. Đây là một đoạn ...', 12, 'http://asm.test/assets/img/trending/right2.jpg', 0, 4, '2024-07-14 05:16:37', '2024-07-14 05:16:37'),
(330, 'Bài viết25', 'Nội dung chi tiết của bài viết25. Đây là một đoạn ...', 83, 'http://asm.test/assets/img/trending/trending_bottom1.jpg', 0, 1, '2024-07-14 05:16:37', '2024-07-14 05:16:37'),
(331, 'Bài viết26', 'Nội dung chi tiết của bài viết26. Đây là một đoạn ...', 470, 'http://asm.test/assets/img/trending/right1.jpg', 0, 5, '2024-07-14 05:16:37', '2024-07-14 05:16:37'),
(332, 'Bài viết27', 'Nội dung chi tiết của bài viết27. Đây là một đoạn ...', 221, 'http://asm.test/assets/img/trending/trending_bottom1.jpg', 0, 1, '2024-07-14 05:16:37', '2024-07-14 05:16:37'),
(333, 'Bài viết28', 'Nội dung chi tiết của bài viết28. Đây là một đoạn ...', 124, 'http://asm.test/assets/img/trending/right5.jpg', 0, 1, '2024-07-14 05:16:37', '2024-07-14 05:16:37'),
(334, 'Bài viết29', 'Nội dung chi tiết của bài viết29. Đây là một đoạn ...', 408, 'http://asm.test/assets/img/trending/trending_bottom3.jpg', 0, 2, '2024-07-14 05:16:37', '2024-07-14 05:16:37'),
(335, 'Bài viết30', 'Nội dung chi tiết của bài viết30. Đây là một đoạn ...', 143, 'http://asm.test/assets/img/trending/right4.jpg', 0, 4, '2024-07-14 05:16:37', '2024-07-14 05:16:37'),
(336, 'Bài viết31', 'Nội dung chi tiết của bài viết31. Đây là một đoạn ...', 323, 'http://asm.test/assets/img/trending/right3.jpg', 0, 3, '2024-07-14 05:16:37', '2024-07-14 05:16:37'),
(337, 'Bài viết32', 'Nội dung chi tiết của bài viết32. Đây là một đoạn ...', 490, 'http://asm.test/assets/img/trending/right2.jpg', 0, 4, '2024-07-14 05:16:37', '2024-07-14 05:16:37'),
(338, 'Bài viết33', 'Nội dung chi tiết của bài viết33. Đây là một đoạn ...', 21, 'http://asm.test/assets/img/trending/trending_bottom3.jpg', 0, 4, '2024-07-14 05:16:37', '2024-07-14 05:16:37'),
(339, 'Bài viết34', 'Nội dung chi tiết của bài viết34. Đây là một đoạn ...', 51, 'http://asm.test/assets/img/trending/trending_bottom1.jpg', 0, 3, '2024-07-14 05:16:37', '2024-07-14 05:16:37'),
(340, 'Bài viết35', 'Nội dung chi tiết của bài viết35. Đây là một đoạn ...', 343, 'http://asm.test/assets/img/trending/trending_bottom1.jpg', 0, 5, '2024-07-14 05:16:37', '2024-07-14 05:16:37'),
(341, 'Bài viết36', 'Nội dung chi tiết của bài viết36. Đây là một đoạn ...', 464, 'http://asm.test/assets/img/trending/right2.jpg', 0, 5, '2024-07-14 05:16:37', '2024-07-14 05:16:37'),
(342, 'Bài viết37', 'Nội dung chi tiết của bài viết37. Đây là một đoạn ...', 55, 'http://asm.test/assets/img/trending/trending_bottom3.jpg', 0, 1, '2024-07-14 05:16:37', '2024-07-14 05:16:37'),
(343, 'Bài viết38', 'Nội dung chi tiết của bài viết38. Đây là một đoạn ...', 443, 'http://asm.test/assets/img/trending/right5.jpg', 0, 5, '2024-07-14 05:16:37', '2024-07-14 05:16:37'),
(344, 'Bài viết39', 'Nội dung chi tiết của bài viết39. Đây là một đoạn ...', 440, 'http://asm.test/assets/img/trending/trending_bottom2.jpg', 0, 4, '2024-07-14 05:16:37', '2024-07-14 05:16:37'),
(345, 'Bài viết40', 'Nội dung chi tiết của bài viết40. Đây là một đoạn ...', 384, 'http://asm.test/assets/img/trending/right3.jpg', 0, 3, '2024-07-14 05:16:37', '2024-07-14 05:16:37'),
(346, 'Bài viết41', 'Nội dung chi tiết của bài viết41. Đây là một đoạn ...', 473, 'http://asm.test/assets/img/trending/right5.jpg', 0, 2, '2024-07-14 05:16:37', '2024-07-14 05:16:37'),
(347, 'Bài viết42', 'Nội dung chi tiết của bài viết42. Đây là một đoạn ...', 30, 'http://asm.test/assets/img/trending/right5.jpg', 0, 1, '2024-07-14 05:16:37', '2024-07-14 05:16:37'),
(348, 'Bài viết43', 'Nội dung chi tiết của bài viết43. Đây là một đoạn ...', 175, 'http://asm.test/assets/img/trending/trending_bottom1.jpg', 0, 5, '2024-07-14 05:16:37', '2024-07-14 05:16:37'),
(349, 'Bài viết44', 'Nội dung chi tiết của bài viết44. Đây là một đoạn ...', 313, 'http://asm.test/assets/img/trending/right4.jpg', 0, 5, '2024-07-14 05:16:37', '2024-07-14 05:16:37'),
(350, 'Bài viết45', 'Nội dung chi tiết của bài viết45. Đây là một đoạn ...', 241, 'http://asm.test/assets/img/trending/right1.jpg', 0, 3, '2024-07-14 05:16:37', '2024-07-14 05:16:37'),
(351, 'Bài viết46', 'Nội dung chi tiết của bài viết46. Đây là một đoạn ...', 478, 'http://asm.test/assets/img/trending/right5.jpg', 0, 4, '2024-07-14 05:16:37', '2024-07-14 05:16:37'),
(352, 'Bài viết47', 'Nội dung chi tiết của bài viết47. Đây là một đoạn ...', 119, 'http://asm.test/assets/img/trending/right1.jpg', 0, 2, '2024-07-14 05:16:37', '2024-07-14 05:16:37'),
(353, 'Bài viết48', 'Nội dung chi tiết của bài viết48. Đây là một đoạn ...', 392, 'http://asm.test/assets/img/trending/right4.jpg', 0, 3, '2024-07-14 05:16:37', '2024-07-14 05:16:37'),
(354, 'Bài viết49', 'Nội dung chi tiết của bài viết49. Đây là một đoạn ...', 163, 'http://asm.test/assets/img/trending/right3.jpg', 0, 5, '2024-07-14 05:16:37', '2024-07-14 05:16:37'),
(355, 'Bài viết50', 'Nội dung chi tiết của bài viết50. Đây là một đoạn ...', 369, 'http://asm.test/assets/img/trending/trending_bottom3.jpg', 0, 1, '2024-07-14 05:16:37', '2024-07-14 05:16:37'),
(356, 'Bài viết51', 'Nội dung chi tiết của bài viết51. Đây là một đoạn ...', 317, 'http://asm.test/assets/img/trending/trending_bottom1.jpg', 0, 5, '2024-07-14 05:16:37', '2024-07-14 05:16:37'),
(357, 'Bài viết52', 'Nội dung chi tiết của bài viết52. Đây là một đoạn ...', 443, 'http://asm.test/assets/img/trending/right5.jpg', 1, 1, '2024-07-14 05:16:37', '2024-07-14 05:16:37'),
(358, 'Bài viết53', 'Nội dung chi tiết của bài viết53. Đây là một đoạn ...', 269, 'http://asm.test/assets/img/trending/right4.jpg', 0, 5, '2024-07-14 05:16:37', '2024-07-14 05:16:37'),
(359, 'Bài viết54', 'Nội dung chi tiết của bài viết54. Đây là một đoạn ...', 79, 'http://asm.test/assets/img/trending/right3.jpg', 0, 1, '2024-07-14 05:16:37', '2024-07-14 05:16:37'),
(360, 'Bài viết55', 'Nội dung chi tiết của bài viết55. Đây là một đoạn ...', 154, 'http://asm.test/assets/img/trending/trending_bottom3.jpg', 1, 4, '2024-07-14 05:16:37', '2024-07-14 05:16:37'),
(361, 'Bài viết56', 'Nội dung chi tiết của bài viết56. Đây là một đoạn ...', 470, 'http://asm.test/assets/img/trending/trending_bottom1.jpg', 0, 4, '2024-07-14 05:16:37', '2024-07-14 05:16:37'),
(362, 'Bài viết57', 'Nội dung chi tiết của bài viết57. Đây là một đoạn ...', 114, 'http://asm.test/assets/img/trending/right4.jpg', 0, 2, '2024-07-14 05:16:37', '2024-07-14 05:16:37'),
(363, 'Bài viết58', 'Nội dung chi tiết của bài viết58. Đây là một đoạn ...', 186, 'http://asm.test/assets/img/trending/right2.jpg', 1, 4, '2024-07-14 05:16:37', '2024-07-14 05:16:37'),
(364, 'Bài viết59', 'Nội dung chi tiết của bài viết59. Đây là một đoạn ...', 255, 'http://asm.test/assets/img/trending/trending_bottom1.jpg', 0, 3, '2024-07-14 05:16:37', '2024-07-14 05:16:37'),
(365, 'Bài viết60', 'Nội dung chi tiết của bài viết60. Đây là một đoạn ...', 41, 'http://asm.test/assets/img/trending/trending_bottom1.jpg', 1, 5, '2024-07-14 05:16:37', '2024-07-14 05:16:37'),
(366, 'Bài viết61', 'Nội dung chi tiết của bài viết61. Đây là một đoạn ...', 207, 'http://asm.test/assets/img/trending/trending_bottom2.jpg', 0, 4, '2024-07-14 05:16:37', '2024-07-14 05:16:37'),
(367, 'Bài viết62', 'Nội dung chi tiết của bài viết62. Đây là một đoạn ...', 101, 'http://asm.test/assets/img/trending/trending_bottom3.jpg', 0, 4, '2024-07-14 05:16:37', '2024-07-14 05:16:37'),
(368, 'Bài viết63', 'Nội dung chi tiết của bài viết63. Đây là một đoạn ...', 500, 'http://asm.test/assets/img/trending/right2.jpg', 0, 5, '2024-07-14 05:16:37', '2024-07-14 05:16:37'),
(369, 'Bài viết64', 'Nội dung chi tiết của bài viết64. Đây là một đoạn ...', 224, 'http://asm.test/assets/img/trending/right3.jpg', 0, 5, '2024-07-14 05:16:37', '2024-07-14 05:16:37'),
(370, 'Bài viết65', 'Nội dung chi tiết của bài viết65. Đây là một đoạn ...', 470, 'http://asm.test/assets/img/trending/right1.jpg', 1, 1, '2024-07-14 05:16:37', '2024-07-14 05:16:37'),
(371, 'Bài viết66', 'Nội dung chi tiết của bài viết66. Đây là một đoạn ...', 96, 'http://asm.test/assets/img/trending/right4.jpg', 0, 5, '2024-07-14 05:16:37', '2024-07-14 05:16:37'),
(372, 'Bài viết67', 'Nội dung chi tiết của bài viết67. Đây là một đoạn ...', 71, 'http://asm.test/assets/img/trending/right5.jpg', 0, 5, '2024-07-14 05:16:37', '2024-07-14 05:16:37'),
(373, 'Bài viết68', 'Nội dung chi tiết của bài viết68. Đây là một đoạn ...', 118, 'http://asm.test/assets/img/trending/right4.jpg', 0, 1, '2024-07-14 05:16:37', '2024-07-14 05:16:37'),
(374, 'Bài viết69', 'Nội dung chi tiết của bài viết69. Đây là một đoạn ...', 220, 'http://asm.test/assets/img/trending/right4.jpg', 0, 4, '2024-07-14 05:16:37', '2024-07-14 05:16:37'),
(375, 'Bài viết70', 'Nội dung chi tiết của bài viết70. Đây là một đoạn ...', 246, 'http://asm.test/assets/img/trending/trending_bottom3.jpg', 0, 4, '2024-07-14 05:16:37', '2024-07-14 05:16:37'),
(376, 'Bài viết71', 'Nội dung chi tiết của bài viết71. Đây là một đoạn ...', 259, 'http://asm.test/assets/img/trending/right3.jpg', 0, 4, '2024-07-14 05:16:37', '2024-07-14 05:16:37'),
(377, 'Bài viết72', 'Nội dung chi tiết của bài viết72. Đây là một đoạn ...', 294, 'http://asm.test/assets/img/trending/right3.jpg', 0, 4, '2024-07-14 05:16:37', '2024-07-14 05:16:37'),
(378, 'Bài viết73', 'Nội dung chi tiết của bài viết73. Đây là một đoạn ...', 361, 'http://asm.test/assets/img/trending/trending_bottom3.jpg', 0, 2, '2024-07-14 05:16:37', '2024-07-14 05:16:37'),
(379, 'Bài viết74', 'Nội dung chi tiết của bài viết74. Đây là một đoạn ...', 403, 'http://asm.test/assets/img/trending/right5.jpg', 0, 5, '2024-07-14 05:16:37', '2024-07-14 05:16:37'),
(380, 'Bài viết75', 'Nội dung chi tiết của bài viết75. Đây là một đoạn ...', 21, 'http://asm.test/assets/img/trending/right4.jpg', 0, 5, '2024-07-14 05:16:37', '2024-07-14 05:16:37'),
(381, 'Bài viết76', 'Nội dung chi tiết của bài viết76. Đây là một đoạn ...', 70, 'http://asm.test/assets/img/trending/right2.jpg', 0, 3, '2024-07-14 05:16:37', '2024-07-14 05:16:37'),
(382, 'Bài viết77', 'Nội dung chi tiết của bài viết77. Đây là một đoạn ...', 443, 'http://asm.test/assets/img/trending/right1.jpg', 0, 5, '2024-07-14 05:16:37', '2024-07-14 05:16:37'),
(383, 'Bài viết78', 'Nội dung chi tiết của bài viết78. Đây là một đoạn ...', 194, 'http://asm.test/assets/img/trending/right4.jpg', 0, 4, '2024-07-14 05:16:37', '2024-07-14 05:16:37'),
(384, 'Bài viết79', 'Nội dung chi tiết của bài viết79. Đây là một đoạn ...', 145, 'http://asm.test/assets/img/trending/right5.jpg', 0, 3, '2024-07-14 05:16:37', '2024-07-14 05:16:37'),
(385, 'Bài viết80', 'Nội dung chi tiết của bài viết80. Đây là một đoạn ...', 407, 'http://asm.test/assets/img/trending/trending_bottom3.jpg', 0, 3, '2024-07-14 05:16:37', '2024-07-14 05:16:37'),
(386, 'Bài viết81', 'Nội dung chi tiết của bài viết81. Đây là một đoạn ...', 175, 'http://asm.test/assets/img/trending/trending_bottom1.jpg', 0, 1, '2024-07-14 05:16:37', '2024-07-14 05:16:37'),
(387, 'Bài viết82', 'Nội dung chi tiết của bài viết82. Đây là một đoạn ...', 281, 'http://asm.test/assets/img/trending/right1.jpg', 0, 4, '2024-07-14 05:16:37', '2024-07-14 05:16:37'),
(388, 'Bài viết83', 'Nội dung chi tiết của bài viết83. Đây là một đoạn ...', 304, 'http://asm.test/assets/img/trending/right3.jpg', 0, 1, '2024-07-14 05:16:37', '2024-07-14 05:16:37'),
(389, 'Bài viết84', 'Nội dung chi tiết của bài viết84. Đây là một đoạn ...', 225, 'http://asm.test/assets/img/trending/trending_bottom3.jpg', 0, 5, '2024-07-14 05:16:37', '2024-07-14 05:16:37'),
(390, 'Bài viết85', 'Nội dung chi tiết của bài viết85. Đây là một đoạn ...', 381, 'http://asm.test/assets/img/trending/trending_bottom2.jpg', 0, 3, '2024-07-14 05:16:37', '2024-07-14 05:16:37'),
(391, 'Bài viết86', 'Nội dung chi tiết của bài viết86. Đây là một đoạn ...', 257, 'http://asm.test/assets/img/trending/right5.jpg', 0, 1, '2024-07-14 05:16:37', '2024-07-14 05:16:37'),
(392, 'Bài viết87', 'Nội dung chi tiết của bài viết87. Đây là một đoạn ...', 400, 'http://asm.test/assets/img/trending/right1.jpg', 0, 1, '2024-07-14 05:16:37', '2024-07-14 05:16:37'),
(393, 'Bài viết88', 'Nội dung chi tiết của bài viết88. Đây là một đoạn ...', 496, 'http://asm.test/assets/img/trending/right3.jpg', 0, 4, '2024-07-14 05:16:37', '2024-07-14 05:16:37'),
(394, 'Bài viết89', 'Nội dung chi tiết của bài viết89. Đây là một đoạn ...', 369, 'http://asm.test/assets/img/trending/trending_bottom1.jpg', 0, 3, '2024-07-14 05:16:37', '2024-07-14 05:16:37'),
(395, 'Bài viết90', 'Nội dung chi tiết của bài viết90. Đây là một đoạn ...', 349, 'http://asm.test/assets/img/trending/trending_bottom1.jpg', 0, 5, '2024-07-14 05:16:37', '2024-07-14 05:16:37'),
(396, 'Bài viết91', 'Nội dung chi tiết của bài viết91. Đây là một đoạn ...', 139, 'http://asm.test/assets/img/trending/trending_bottom3.jpg', 0, 1, '2024-07-14 05:16:37', '2024-07-14 05:16:37'),
(397, 'Bài viết92', 'Nội dung chi tiết của bài viết92. Đây là một đoạn ...', 331, 'http://asm.test/assets/img/trending/trending_bottom1.jpg', 0, 4, '2024-07-14 05:16:37', '2024-07-14 05:16:37'),
(398, 'Bài viết93', 'Nội dung chi tiết của bài viết93. Đây là một đoạn ...', 497, 'http://asm.test/assets/img/trending/trending_bottom3.jpg', 0, 4, '2024-07-14 05:16:37', '2024-07-14 05:16:37'),
(399, 'Bài viết94', 'Nội dung chi tiết của bài viết94. Đây là một đoạn ...', 158, 'http://asm.test/assets/img/trending/right5.jpg', 0, 2, '2024-07-14 05:16:37', '2024-07-14 05:16:37'),
(400, 'Bài viết95', 'Nội dung chi tiết của bài viết95. Đây là một đoạn ...', 469, 'http://asm.test/assets/img/trending/right2.jpg', 0, 4, '2024-07-14 05:16:37', '2024-07-14 05:16:37'),
(401, 'Bài viết96', 'Nội dung chi tiết của bài viết96. Đây là một đoạn ...', 298, 'http://asm.test/assets/img/trending/right3.jpg', 0, 2, '2024-07-14 05:16:37', '2024-07-14 05:16:37'),
(402, 'Bài viết97', 'Nội dung chi tiết của bài viết97. Đây là một đoạn ...', 229, 'http://asm.test/assets/img/trending/trending_bottom3.jpg', 0, 3, '2024-07-14 05:16:37', '2024-07-14 05:16:37'),
(403, 'Bài viết98', 'Nội dung chi tiết của bài viết98. Đây là một đoạn ...', 335, 'http://asm.test/assets/img/trending/right2.jpg', 0, 4, '2024-07-14 05:16:37', '2024-07-14 05:16:37'),
(404, 'Bài viết99', 'Nội dung chi tiết của bài viết99. Đây là một đoạn ...', 124, 'http://asm.test/assets/img/trending/right2.jpg', 0, 5, '2024-07-14 05:16:37', '2024-07-14 05:16:37'),
(405, 'Bài viết100', 'Nội dung chi tiết của bài viết100. Đây là một đoạn ...', 316, 'http://asm.test/assets/img/trending/right5.jpg', 0, 3, '2024-07-14 05:16:37', '2024-07-14 05:16:37'),
(406, 'Bài viết101', 'Nội dung chi tiết của bài viết101. Đây là một đoạn ...', 177, 'http://asm.test/assets/img/trending/right1.jpg', 0, 5, '2024-07-14 05:16:37', '2024-07-14 05:16:37'),
(407, 'Bài viết102', 'Nội dung chi tiết của bài viết102. Đây là một đoạn ...', 13, 'http://asm.test/assets/img/trending/right2.jpg', 0, 2, '2024-07-14 05:16:37', '2024-07-14 05:16:37'),
(408, 'Bài viết103', 'Nội dung chi tiết của bài viết103. Đây là một đoạn ...', 280, 'http://asm.test/assets/img/trending/right4.jpg', 0, 4, '2024-07-14 05:16:37', '2024-07-14 05:16:37'),
(409, 'Bài viết104', 'Nội dung chi tiết của bài viết104. Đây là một đoạn ...', 468, 'http://asm.test/assets/img/trending/trending_bottom2.jpg', 0, 3, '2024-07-14 05:16:37', '2024-07-14 05:16:37'),
(410, 'Bài viết105', 'Nội dung chi tiết của bài viết105. Đây là một đoạn ...', 198, 'http://asm.test/assets/img/trending/trending_bottom2.jpg', 0, 1, '2024-07-14 05:16:37', '2024-07-14 05:16:37'),
(411, 'Bài viết106', 'Nội dung chi tiết của bài viết106. Đây là một đoạn ...', 254, 'http://asm.test/assets/img/trending/right4.jpg', 0, 4, '2024-07-14 05:16:37', '2024-07-14 05:16:37'),
(412, 'Bài viết107', 'Nội dung chi tiết của bài viết107. Đây là một đoạn ...', 137, 'http://asm.test/assets/img/trending/right3.jpg', 0, 4, '2024-07-14 05:16:37', '2024-07-14 05:16:37'),
(413, 'Bài viết108', 'Nội dung chi tiết của bài viết108. Đây là một đoạn ...', 136, 'http://asm.test/assets/img/trending/right3.jpg', 0, 4, '2024-07-14 05:16:37', '2024-07-14 05:16:37'),
(414, 'Bài viết109', 'Nội dung chi tiết của bài viết109. Đây là một đoạn ...', 6, 'http://asm.test/assets/img/trending/right2.jpg', 0, 3, '2024-07-14 05:16:37', '2024-07-14 05:16:37'),
(415, 'Bài viết110', 'Nội dung chi tiết của bài viết110. Đây là một đoạn ...', 133, 'http://asm.test/assets/img/trending/right1.jpg', 0, 5, '2024-07-14 05:16:37', '2024-07-14 05:16:37'),
(416, 'Bài viết111', 'Nội dung chi tiết của bài viết111. Đây là một đoạn ...', 172, 'http://asm.test/assets/img/trending/right4.jpg', 0, 1, '2024-07-14 05:16:37', '2024-07-14 05:16:37'),
(417, 'Bài viết112', 'Nội dung chi tiết của bài viết112. Đây là một đoạn ...', 145, 'http://asm.test/assets/img/trending/trending_bottom2.jpg', 0, 1, '2024-07-14 05:16:37', '2024-07-14 05:16:37'),
(418, 'Bài viết113', 'Nội dung chi tiết của bài viết113. Đây là một đoạn ...', 83, 'http://asm.test/assets/img/trending/trending_bottom3.jpg', 0, 5, '2024-07-14 05:16:37', '2024-07-14 05:16:37'),
(419, 'Bài viết114', 'Nội dung chi tiết của bài viết114. Đây là một đoạn ...', 213, 'http://asm.test/assets/img/trending/trending_bottom3.jpg', 0, 3, '2024-07-14 05:16:37', '2024-07-14 05:16:37'),
(420, 'Bài viết115', 'Nội dung chi tiết của bài viết115. Đây là một đoạn ...', 216, 'http://asm.test/assets/img/trending/right5.jpg', 0, 2, '2024-07-14 05:16:37', '2024-07-14 05:16:37'),
(421, 'Bài viết116', 'Nội dung chi tiết của bài viết116. Đây là một đoạn ...', 95, 'http://asm.test/assets/img/trending/right2.jpg', 0, 4, '2024-07-14 05:16:37', '2024-07-14 05:16:37'),
(422, 'Bài viết117', 'Nội dung chi tiết của bài viết117. Đây là một đoạn ...', 157, 'http://asm.test/assets/img/trending/trending_bottom1.jpg', 0, 3, '2024-07-14 05:16:37', '2024-07-14 05:16:37'),
(423, 'Bài viết118', 'Nội dung chi tiết của bài viết118. Đây là một đoạn ...', 35, 'http://asm.test/assets/img/trending/right3.jpg', 0, 5, '2024-07-14 05:16:37', '2024-07-14 05:16:37'),
(424, 'Bài viết119', 'Nội dung chi tiết của bài viết119. Đây là một đoạn ...', 31, 'http://asm.test/assets/img/trending/right4.jpg', 0, 5, '2024-07-14 05:16:37', '2024-07-14 05:16:37'),
(425, 'Bài viết120', 'Nội dung chi tiết của bài viết120. Đây là một đoạn ...', 310, 'http://asm.test/assets/img/trending/right2.jpg', 0, 2, '2024-07-14 05:16:37', '2024-07-14 05:16:37'),
(426, 'Bài viết121', 'Nội dung chi tiết của bài viết121. Đây là một đoạn ...', 211, 'http://asm.test/assets/img/trending/trending_bottom2.jpg', 0, 1, '2024-07-14 05:16:37', '2024-07-14 05:16:37'),
(427, 'Bài viết122', 'Nội dung chi tiết của bài viết122. Đây là một đoạn ...', 351, 'http://asm.test/assets/img/trending/right1.jpg', 0, 1, '2024-07-14 05:16:37', '2024-07-14 05:16:37'),
(428, 'Bài viết123', 'Nội dung chi tiết của bài viết123. Đây là một đoạn ...', 89, 'http://asm.test/assets/img/trending/right4.jpg', 0, 1, '2024-07-14 05:16:37', '2024-07-14 05:16:37'),
(429, 'Bài viết124', 'Nội dung chi tiết của bài viết124. Đây là một đoạn ...', 134, 'http://asm.test/assets/img/trending/right2.jpg', 0, 2, '2024-07-14 05:16:37', '2024-07-14 05:16:37'),
(430, 'Bài viết125', 'Nội dung chi tiết của bài viết125. Đây là một đoạn ...', 421, 'http://asm.test/assets/img/trending/right3.jpg', 0, 2, '2024-07-14 05:16:37', '2024-07-14 05:16:37'),
(431, 'Bài viết126', 'Nội dung chi tiết của bài viết126. Đây là một đoạn ...', 458, 'http://asm.test/assets/img/trending/trending_bottom2.jpg', 0, 4, '2024-07-14 05:16:37', '2024-07-14 05:16:37'),
(432, 'Bài viết127', 'Nội dung chi tiết của bài viết127. Đây là một đoạn ...', 429, 'http://asm.test/assets/img/trending/trending_bottom1.jpg', 0, 3, '2024-07-14 05:16:37', '2024-07-14 05:16:37'),
(433, 'Bài viết128', 'Nội dung chi tiết của bài viết128. Đây là một đoạn ...', 63, 'http://asm.test/assets/img/trending/right1.jpg', 0, 5, '2024-07-14 05:16:37', '2024-07-14 05:16:37'),
(434, 'Bài viết129', 'Nội dung chi tiết của bài viết129. Đây là một đoạn ...', 108, 'http://asm.test/assets/img/trending/right3.jpg', 0, 1, '2024-07-14 05:16:37', '2024-07-14 05:16:37'),
(435, 'Bài viết130', 'Nội dung chi tiết của bài viết130. Đây là một đoạn ...', 318, 'http://asm.test/assets/img/trending/right3.jpg', 0, 5, '2024-07-14 05:16:37', '2024-07-14 05:16:37'),
(436, 'Bài viết131', 'Nội dung chi tiết của bài viết131. Đây là một đoạn ...', 323, 'http://asm.test/assets/img/trending/right2.jpg', 0, 1, '2024-07-14 05:16:37', '2024-07-14 05:16:37'),
(437, 'Bài viết132', 'Nội dung chi tiết của bài viết132. Đây là một đoạn ...', 148, 'http://asm.test/assets/img/trending/right2.jpg', 0, 2, '2024-07-14 05:16:37', '2024-07-14 05:16:37'),
(438, 'Bài viết133', 'Nội dung chi tiết của bài viết133. Đây là một đoạn ...', 128, 'http://asm.test/assets/img/trending/trending_bottom1.jpg', 0, 2, '2024-07-14 05:16:37', '2024-07-14 05:16:37'),
(439, 'Bài viết134', 'Nội dung chi tiết của bài viết134. Đây là một đoạn ...', 255, 'http://asm.test/assets/img/trending/right1.jpg', 0, 5, '2024-07-14 05:16:37', '2024-07-14 05:16:37'),
(440, 'Bài viết135', 'Nội dung chi tiết của bài viết135. Đây là một đoạn ...', 50, 'http://asm.test/assets/img/trending/right3.jpg', 0, 1, '2024-07-14 05:16:37', '2024-07-14 05:16:37'),
(441, 'Bài viết136', 'Nội dung chi tiết của bài viết136. Đây là một đoạn ...', 122, 'http://asm.test/assets/img/trending/right4.jpg', 0, 4, '2024-07-14 05:16:37', '2024-07-14 05:16:37'),
(442, 'Bài viết137', 'Nội dung chi tiết của bài viết137. Đây là một đoạn ...', 219, 'http://asm.test/assets/img/trending/right1.jpg', 0, 1, '2024-07-14 05:16:37', '2024-07-14 05:16:37'),
(443, 'Bài viết138', 'Nội dung chi tiết của bài viết138. Đây là một đoạn ...', 354, 'http://asm.test/assets/img/trending/right4.jpg', 0, 3, '2024-07-14 05:16:37', '2024-07-14 05:16:37'),
(444, 'Bài viết139', 'Nội dung chi tiết của bài viết139. Đây là một đoạn ...', 255, 'http://asm.test/assets/img/trending/right4.jpg', 0, 5, '2024-07-14 05:16:37', '2024-07-14 05:16:37'),
(445, 'Bài viết140', 'Nội dung chi tiết của bài viết140. Đây là một đoạn ...', 94, 'http://asm.test/assets/img/trending/trending_bottom3.jpg', 0, 5, '2024-07-14 05:16:37', '2024-07-14 05:16:37'),
(446, 'Bài viết141', 'Nội dung chi tiết của bài viết141. Đây là một đoạn ...', 287, 'http://asm.test/assets/img/trending/right4.jpg', 0, 3, '2024-07-14 05:16:38', '2024-07-14 05:16:38'),
(447, 'Bài viết142', 'Nội dung chi tiết của bài viết142. Đây là một đoạn ...', 291, 'http://asm.test/assets/img/trending/trending_bottom1.jpg', 0, 1, '2024-07-14 05:16:38', '2024-07-14 05:16:38'),
(448, 'Bài viết143', 'Nội dung chi tiết của bài viết143. Đây là một đoạn ...', 176, 'http://asm.test/assets/img/trending/right1.jpg', 0, 2, '2024-07-14 05:16:38', '2024-07-14 05:16:38'),
(449, 'Bài viết144', 'Nội dung chi tiết của bài viết144. Đây là một đoạn ...', 276, 'http://asm.test/assets/img/trending/trending_bottom2.jpg', 0, 2, '2024-07-14 05:16:38', '2024-07-14 05:16:38'),
(450, 'Bài viết145', 'Nội dung chi tiết của bài viết145. Đây là một đoạn ...', 94, 'http://asm.test/assets/img/trending/right5.jpg', 0, 2, '2024-07-14 05:16:38', '2024-07-14 05:16:38'),
(451, 'Bài viết146', 'Nội dung chi tiết của bài viết146. Đây là một đoạn ...', 205, 'http://asm.test/assets/img/trending/right5.jpg', 0, 3, '2024-07-14 05:16:38', '2024-07-14 05:16:38'),
(452, 'Bài viết147', 'Nội dung chi tiết của bài viết147. Đây là một đoạn ...', 222, 'http://asm.test/assets/img/trending/right2.jpg', 0, 4, '2024-07-14 05:16:38', '2024-07-14 05:16:38'),
(453, 'Bài viết148', 'Nội dung chi tiết của bài viết148. Đây là một đoạn ...', 213, 'http://asm.test/assets/img/trending/right3.jpg', 0, 4, '2024-07-14 05:16:38', '2024-07-14 05:16:38'),
(454, 'Bài viết149', 'Nội dung chi tiết của bài viết149. Đây là một đoạn ...', 294, 'http://asm.test/assets/img/trending/trending_bottom2.jpg', 0, 1, '2024-07-14 05:16:38', '2024-07-14 05:16:38'),
(455, 'Bài viết150', '<div class=\"section-tittle mb-30 pt-30\">\r\n                                    <h3>Here come the moms in space</h3>\r\n                                </div>\r\n                                <div class=\"about-prea\">\r\n                                    <p class=\"about-pera1 mb-25\">Moms are like…buttons? Moms are like glue. Moms are like pizza crusts. Moms are the ones who make sure things happen—from birth to school lunch.</p>\r\n                                    <p class=\"about-pera1 mb-25\">Moms are like…buttons? Moms are like glue. Moms are like pizza crusts. Moms are the ones who make sure things happen—from birth to school lunch.</p>\r\n                                    <p class=\"about-pera1 mb-25\">\r\n                                        My hero when I was a kid was my mom. Same for everyone I knew. Moms are untouchable. They’re elegant, smart, beautiful, kind…everything we want to be. At 29 years old, my favorite compliment is being told that I look like my mom. Seeing myself in her image, like this daughter up top, makes me so proud of how far I’ve come, and so thankful for where I come from.\r\n                                        the refractor telescope uses a convex lens to focus the light on the eyepiece.\r\n                                        The reflector telescope has a concave lens which means it bends in. It uses mirrors to focus the image that you eventually see.\r\n                                        Collimation is a term for how well tuned the telescope is to give you a good clear image of what you are looking at. You want your telescope to have good collimation so you are not getting a false image of the celestial body.\r\n                                        Aperture is a fancy word for how big the lens of your telescope is. But it’s an important word because the aperture of the lens is the key to how powerful your telescope is. Magnification has nothing to do with it, its all in the aperture.\r\n                                        Focuser is the housing that keeps the eyepiece of the telescope, or what you will look through, in place. The focuser has to be stable and in good repair for you to have an image you can rely on.\r\n                                        Mount and Wedge. Both of these terms refer to the tripod your telescope sits on. The mount is the actual tripod and the wedge is the device that lets you attach the telescope to the mount.\r\n                                        Moms are like…buttons? Moms are like glue. Moms are like pizza crusts. Moms are the ones who make sure things happen—from birth to school lunch.</p>\r\n                                </div> \r\n                                <div class=\"section-tittle\">\r\n                                    <h3>Unordered list style?</h3>\r\n                                </div>\r\n                                <div class=\"about-prea\">\r\n                                    <p class=\"about-pera1 mb-25\">The refractor telescope uses a convex lens to focus the light on the eyepiece.\r\n                                        The reflector telescope has a concave lens which means it bends in. It uses mirrors to focus the image that you eventually see.</p>\r\n                                    <p class=\"about-pera1 mb-25\">Collimation is a term for how well tuned the telescope is to give you a good clear image of what you are looking at. You want your telescope to have good collimation so you are not getting a false image of the celestial body.</p>\r\n                                    <p class=\"about-pera1 mb-25\">\r\n                                        My hero when I was a kid was my mom. Same for everyone I knew. Moms are untouchable. They’re elegant, smart, beautiful, kind…everything we want to be. At 29 years old, my favorite compliment is being told that I look like my mom. Seeing myself in her image, like this daughter up top, makes me so proud of how far I’ve come, and so thankful for where I come from.\r\n                                        the refractor telescope uses a convex lens to focus the light on the eyepiece.\r\n                                        The reflector telescope has a concave lens which means it bends in. It uses mirrors to focus the image that you eventually see.\r\n                                        Collimation is a term fo\r\n                                        Moms are like…buttons? Moms are like glue. Moms are like pizza crusts. Moms are the ones who make sure things happen—from birth to school lunch.</p> \r\n                                        <p class=\"about-pera1 mb-25\">\r\n                                        Mount and Wedge. Both of these terms refer to the tripod your telescope sits on. The mount is the actual tripod and the wedge is the device that lets you attach the telescope to the mount.\r\n                                        Moms are like…buttons? Moms are like glue. Moms are like pizza crusts. Moms are the ones who make sure things happen—from birth to school lunch.</p>\r\n                                        <p class=\"about-pera1 mb-25\">\r\n                                        Mount and Wedge. Both of these terms refer to the tripod your telescope sits on. The mount is the actual tripod and the wedge is the device that lets you attach the telescope to the mount.\r\n                                        Moms are like…buttons? Moms are like glue. Moms are like pizza crusts. Moms are the ones who make sure things happen—from birth to school lunch.</p>\r\n                                </div>', 197, 'http://asm.test/assets/img/trending/right5.jpg', 0, 4, '2024-07-14 05:16:38', '2024-07-14 05:16:38'),
(456, 'Bài viết151', 'Nội dung chi tiết của bài viết151. Đây là một đoạn ...', 170, 'http://asm.test/assets/img/trending/right3.jpg', 0, 2, '2024-07-14 05:16:38', '2024-07-14 05:16:38'),
(457, 'Bài viết152', 'Nội dung chi tiết của bài viết152. Đây là một đoạn ...', 228, 'http://asm.test/assets/img/trending/right2.jpg', 0, 2, '2024-07-14 05:16:38', '2024-07-14 05:16:38'),
(458, 'Bài viết153', 'Nội dung chi tiết của bài viết153. Đây là một đoạn ...', 221, 'http://asm.test/assets/img/trending/trending_bottom3.jpg', 0, 5, '2024-07-14 05:16:38', '2024-07-14 05:16:38'),
(459, 'Bài viết154', 'Nội dung chi tiết của bài viết154. Đây là một đoạn ...', 126, 'http://asm.test/assets/img/trending/right1.jpg', 0, 5, '2024-07-14 05:16:38', '2024-07-14 05:16:38'),
(460, 'Bài viết155', 'Nội dung chi tiết của bài viết155. Đây là một đoạn ...', 272, 'http://asm.test/assets/img/trending/right5.jpg', 0, 1, '2024-07-14 05:16:38', '2024-07-14 05:16:38'),
(461, 'Bài viết156', 'Nội dung chi tiết của bài viết156. Đây là một đoạn ...', 72, 'http://asm.test/assets/img/trending/right4.jpg', 0, 1, '2024-07-14 05:16:38', '2024-07-14 05:16:38'),
(462, 'Bài viết157', 'Nội dung chi tiết của bài viết157. Đây là một đoạn ...', 398, 'http://asm.test/assets/img/trending/right3.jpg', 0, 4, '2024-07-14 05:16:38', '2024-07-14 05:16:38'),
(463, 'Bài viết158', 'Nội dung chi tiết của bài viết158. Đây là một đoạn ...', 233, 'http://asm.test/assets/img/trending/trending_bottom2.jpg', 0, 5, '2024-07-14 05:16:38', '2024-07-14 05:16:38'),
(464, 'Bài viết159', 'Nội dung chi tiết của bài viết159. Đây là một đoạn ...', 80, 'http://asm.test/assets/img/trending/right2.jpg', 0, 5, '2024-07-14 05:16:38', '2024-07-14 05:16:38'),
(465, 'Bài viết160', 'Nội dung chi tiết của bài viết160. Đây là một đoạn ...', 160, 'http://asm.test/assets/img/trending/right1.jpg', 0, 2, '2024-07-14 05:16:38', '2024-07-14 05:16:38'),
(466, 'Bài viết161', 'Nội dung chi tiết của bài viết161. Đây là một đoạn ...', 167, 'http://asm.test/assets/img/trending/trending_bottom3.jpg', 0, 3, '2024-07-14 05:16:38', '2024-07-14 05:16:38'),
(467, 'Bài viết162', 'Nội dung chi tiết của bài viết162. Đây là một đoạn ...', 442, 'http://asm.test/assets/img/trending/right5.jpg', 0, 4, '2024-07-14 05:16:38', '2024-07-14 05:16:38'),
(468, 'Bài viết163', 'Nội dung chi tiết của bài viết163. Đây là một đoạn ...', 94, 'http://asm.test/assets/img/trending/trending_bottom3.jpg', 0, 3, '2024-07-14 05:16:38', '2024-07-14 05:16:38'),
(469, 'Bài viết164', 'Nội dung chi tiết của bài viết164. Đây là một đoạn ...', 451, 'http://asm.test/assets/img/trending/right3.jpg', 0, 3, '2024-07-14 05:16:38', '2024-07-14 05:16:38'),
(470, 'Bài viết165', 'Nội dung chi tiết của bài viết165. Đây là một đoạn ...', 200, 'http://asm.test/assets/img/trending/trending_bottom2.jpg', 0, 4, '2024-07-14 05:16:38', '2024-07-14 05:16:38'),
(471, 'Bài viết166', 'Nội dung chi tiết của bài viết166. Đây là một đoạn ...', 377, 'http://asm.test/assets/img/trending/right1.jpg', 0, 3, '2024-07-14 05:16:38', '2024-07-14 05:16:38'),
(472, 'Bài viết167', 'Nội dung chi tiết của bài viết167. Đây là một đoạn ...', 338, 'http://asm.test/assets/img/trending/right2.jpg', 0, 5, '2024-07-14 05:16:38', '2024-07-14 05:16:38'),
(473, 'Bài viết168', 'Nội dung chi tiết của bài viết168. Đây là một đoạn ...', 258, 'http://asm.test/assets/img/trending/right5.jpg', 0, 5, '2024-07-14 05:16:38', '2024-07-14 05:16:38'),
(474, 'Bài viết169', 'Nội dung chi tiết của bài viết169. Đây là một đoạn ...', 268, 'http://asm.test/assets/img/trending/right3.jpg', 0, 3, '2024-07-14 05:16:38', '2024-07-14 05:16:38'),
(475, 'Bài viết170', 'Nội dung chi tiết của bài viết170. Đây là một đoạn ...', 167, 'http://asm.test/assets/img/trending/trending_bottom3.jpg', 0, 4, '2024-07-14 05:16:38', '2024-07-14 05:16:38'),
(476, 'Bài viết171', 'Nội dung chi tiết của bài viết171. Đây là một đoạn ...', 457, 'http://asm.test/assets/img/trending/right5.jpg', 0, 1, '2024-07-14 05:16:38', '2024-07-14 05:16:38'),
(477, 'Bài viết172', 'Nội dung chi tiết của bài viết172. Đây là một đoạn ...', 351, 'http://asm.test/assets/img/trending/right3.jpg', 0, 2, '2024-07-14 05:16:38', '2024-07-14 05:16:38'),
(478, 'Bài viết173', 'Nội dung chi tiết của bài viết173. Đây là một đoạn ...', 239, 'http://asm.test/assets/img/trending/trending_bottom1.jpg', 0, 1, '2024-07-14 05:16:38', '2024-07-14 05:16:38'),
(479, 'Bài viết174', 'Nội dung chi tiết của bài viết174. Đây là một đoạn ...', 120, 'http://asm.test/assets/img/trending/right2.jpg', 0, 2, '2024-07-14 05:16:38', '2024-07-14 05:16:38'),
(480, 'Bài viết175', 'Nội dung chi tiết của bài viết175. Đây là một đoạn ...', 318, 'http://asm.test/assets/img/trending/trending_bottom3.jpg', 0, 3, '2024-07-14 05:16:38', '2024-07-14 05:16:38'),
(481, 'Bài viết176', 'Nội dung chi tiết của bài viết176. Đây là một đoạn ...', 222, 'http://asm.test/assets/img/trending/right5.jpg', 0, 1, '2024-07-14 05:16:38', '2024-07-14 05:16:38'),
(482, 'Bài viết177', 'Nội dung chi tiết của bài viết177. Đây là một đoạn ...', 271, 'http://asm.test/assets/img/trending/right3.jpg', 0, 4, '2024-07-14 05:16:38', '2024-07-14 05:16:38'),
(483, 'Bài viết178', 'Nội dung chi tiết của bài viết178. Đây là một đoạn ...', 351, 'http://asm.test/assets/img/trending/right1.jpg', 0, 5, '2024-07-14 05:16:38', '2024-07-14 05:16:38'),
(484, 'Bài viết179', 'Nội dung chi tiết của bài viết179. Đây là một đoạn ...', 350, 'http://asm.test/assets/img/trending/trending_bottom1.jpg', 0, 5, '2024-07-14 05:16:38', '2024-07-14 05:16:38'),
(485, 'Bài viết180', 'Nội dung chi tiết của bài viết180. Đây là một đoạn ...', 392, 'http://asm.test/assets/img/trending/right2.jpg', 0, 2, '2024-07-14 05:16:38', '2024-07-14 05:16:38'),
(486, 'Bài viết181', 'Nội dung chi tiết của bài viết181. Đây là một đoạn ...', 286, 'http://asm.test/assets/img/trending/right5.jpg', 0, 2, '2024-07-14 05:16:38', '2024-07-14 05:16:38'),
(487, 'Bài viết182', 'Nội dung chi tiết của bài viết182. Đây là một đoạn ...', 291, 'http://asm.test/assets/img/trending/trending_bottom3.jpg', 0, 5, '2024-07-14 05:16:38', '2024-07-14 05:16:38'),
(488, 'Bài viết183', 'Nội dung chi tiết của bài viết183. Đây là một đoạn ...', 201, 'http://asm.test/assets/img/trending/right2.jpg', 0, 1, '2024-07-14 05:16:38', '2024-07-14 05:16:38'),
(489, 'Bài viết184', 'Nội dung chi tiết của bài viết184. Đây là một đoạn ...', 315, 'http://asm.test/assets/img/trending/trending_bottom2.jpg', 0, 5, '2024-07-14 05:16:38', '2024-07-14 05:16:38'),
(490, 'Bài viết185', 'Nội dung chi tiết của bài viết185. Đây là một đoạn ...', 399, 'http://asm.test/assets/img/trending/right1.jpg', 0, 1, '2024-07-14 05:16:38', '2024-07-14 05:16:38'),
(491, 'Bài viết186', 'Nội dung chi tiết của bài viết186. Đây là một đoạn ...', 397, 'http://asm.test/assets/img/trending/right2.jpg', 0, 5, '2024-07-14 05:16:38', '2024-07-14 05:16:38'),
(492, 'Bài viết187', 'Nội dung chi tiết của bài viết187. Đây là một đoạn ...', 356, 'http://asm.test/assets/img/trending/right5.jpg', 0, 5, '2024-07-14 05:16:38', '2024-07-14 05:16:38'),
(493, 'Bài viết188', 'Nội dung chi tiết của bài viết188. Đây là một đoạn ...', 231, 'http://asm.test/assets/img/trending/trending_bottom3.jpg', 0, 1, '2024-07-14 05:16:38', '2024-07-14 05:16:38'),
(494, 'Bài viết189', 'Nội dung chi tiết của bài viết189. Đây là một đoạn ...', 285, 'http://asm.test/assets/img/trending/trending_bottom2.jpg', 0, 3, '2024-07-14 05:16:38', '2024-07-14 05:16:38'),
(495, 'Bài viết190', 'Nội dung chi tiết của bài viết190. Đây là một đoạn ...', 12, 'http://asm.test/assets/img/trending/right1.jpg', 0, 2, '2024-07-14 05:16:38', '2024-07-14 05:16:38'),
(496, 'Bài viết191', 'Nội dung chi tiết của bài viết191. Đây là một đoạn ...', 154, 'http://asm.test/assets/img/trending/right5.jpg', 0, 2, '2024-07-14 05:16:38', '2024-07-14 05:16:38'),
(497, 'Bài viết192', 'Nội dung chi tiết của bài viết192. Đây là một đoạn ...', 458, 'http://asm.test/assets/img/trending/right4.jpg', 0, 4, '2024-07-14 05:16:38', '2024-07-14 05:16:38'),
(498, 'Bài viết193', 'Nội dung chi tiết của bài viết193. Đây là một đoạn ...', 114, 'http://asm.test/assets/img/trending/right3.jpg', 0, 4, '2024-07-14 05:16:38', '2024-07-14 05:16:38'),
(499, 'Bài viết194', 'Nội dung chi tiết của bài viết194. Đây là một đoạn ...', 439, 'http://asm.test/assets/img/trending/right4.jpg', 0, 5, '2024-07-14 05:16:38', '2024-07-14 05:16:38'),
(500, 'Bài viết195', 'Nội dung chi tiết của bài viết195. Đây là một đoạn ...', 423, 'http://asm.test/assets/img/trending/trending_bottom3.jpg', 1, 2, '2024-07-14 05:16:38', '2024-07-14 05:16:38'),
(501, 'Bài viết196', 'Nội dung chi tiết của bài viết196. Đây là một đoạn ...', 433, 'http://asm.test/assets/img/trending/right2.jpg', 0, 4, '2024-07-14 05:16:38', '2024-07-14 05:16:38'),
(502, 'Bài viết197', 'Nội dung chi tiết của bài viết197. Đây là một đoạn ...', 54, 'http://asm.test/assets/img/trending/right5.jpg', 0, 5, '2024-07-14 05:16:38', '2024-07-14 05:16:38'),
(503, 'Bài viết198', 'Nội dung chi tiết của bài viết198. Đây là một đoạn ...', 323, 'http://asm.test/assets/img/trending/right5.jpg', 1, 5, '2024-07-14 05:16:38', '2024-07-14 05:16:38'),
(504, 'Bài viết199', 'Nội dung chi tiết của bài viết199. Đây là một đoạn ...', 64, 'http://asm.test/assets/img/trending/trending_bottom1.jpg', 0, 3, '2024-07-14 05:16:38', '2024-07-14 05:16:38'),
(505, 'Bài viết200', 'Nội dung chi tiết của bài viết200. Đây là một đoạn ...', 264, 'http://asm.test/assets/img/trending/trending_bottom2.jpg', 0, 1, '2024-07-14 05:16:38', '2024-07-14 05:16:38');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` int NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Thể thao', NULL, NULL),
(2, 'Âm nhạc', NULL, NULL),
(3, 'Ẩm thực', NULL, NULL),
(4, 'Công nghệ', NULL, NULL),
(5, 'Giải trí', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comments`
--

CREATE TABLE `comments` (
  `id` int NOT NULL,
  `content` text,
  `user_id` int DEFAULT NULL,
  `article_id` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `comments`
--

INSERT INTO `comments` (`id`, `content`, `user_id`, `article_id`, `created_at`, `updated_at`) VALUES
(1, 'Veritatis velit enim expedita. Officia rerum ex quas. In neque ut repellendus illo repellendus. Suscipit placeat autem qui sunt necessitatibus.', 3, 436, '2024-07-16 00:15:55', '2024-07-16 00:15:55'),
(2, 'Aut ratione quo qui explicabo minima natus voluptates. Ratione natus cumque consequatur illum soluta architecto natus. Non quos ducimus unde.', 2, 313, '2024-07-16 00:15:55', '2024-07-16 00:15:55'),
(3, 'Vero id necessitatibus fuga vel necessitatibus. Incidunt voluptatem non nobis corrupti explicabo molestias. Magni omnis ut sunt consequatur. Aspernatur quibusdam aut beatae et odit.', 1, 436, '2024-07-16 00:15:55', '2024-07-16 00:15:55'),
(4, 'Quis deserunt dolorem quis et aut explicabo nihil qui. Eos fugit enim in. Veritatis sed ea est sit quo. Aut nam sed architecto et magni.', 4, 312, '2024-07-16 00:15:55', '2024-07-16 00:15:55'),
(5, 'Dolorem enim quae non voluptate. Sint repudiandae voluptatum distinctio perspiciatis eos fugit. Quibusdam commodi velit rerum enim expedita rerum.', 1, 481, '2024-07-16 00:15:55', '2024-07-16 00:15:55'),
(6, 'Sed laboriosam est sed. Voluptas corporis in consequatur eos ad. Qui aut voluptatem ad.', 4, 464, '2024-07-16 00:15:55', '2024-07-16 00:15:55'),
(7, 'Et omnis officia dolor vel qui et. Ullam ea est reiciendis eos quibusdam labore excepturi.', 1, 397, '2024-07-16 00:15:55', '2024-07-16 00:15:55'),
(8, 'Perferendis accusamus assumenda assumenda sint ea commodi molestiae voluptatem. Magni dolores soluta id odit. Voluptatem et corrupti et consequatur. Doloremque enim sunt necessitatibus nam.', 1, 351, '2024-07-16 00:15:55', '2024-07-16 00:15:55'),
(9, 'Officiis id id est non. Et placeat quae eum labore nihil et. Iste architecto necessitatibus vitae non quasi ratione. Ut qui quia et ipsam laboriosam aliquam sapiente.', 4, 455, '2024-07-16 00:15:55', '2024-07-16 00:15:55'),
(10, 'Enim et ut cupiditate accusantium nemo tempora sint rerum. Minus aliquam ut eos voluptatem tempora. Temporibus voluptas voluptatem est. Omnis laborum cupiditate sint fugit explicabo ut et velit.', 2, 471, '2024-07-16 00:15:55', '2024-07-16 00:15:55'),
(11, 'Mollitia cupiditate debitis et distinctio possimus sit sunt. Nisi consequatur provident omnis sed nesciunt necessitatibus. Porro delectus quasi repellendus optio eum nihil.', 4, 436, '2024-07-16 00:15:55', '2024-07-16 00:15:55'),
(12, 'Enim eveniet accusantium voluptatem adipisci distinctio. Ipsum fugiat alias labore saepe natus et. Autem voluptas ipsum modi inventore sit sed tempora illum.', 5, 393, '2024-07-16 00:15:55', '2024-07-16 00:15:55'),
(13, 'Quos dolorem adipisci quia fuga non sint. Deserunt sit perferendis voluptatem sit facilis ducimus eum. Quidem explicabo sed quia recusandae dolores. Labore illum odit quod.', 5, 417, '2024-07-16 00:15:55', '2024-07-16 00:15:55'),
(14, 'Perspiciatis labore autem et aut. Velit consequatur magni id omnis pariatur nostrum. Quia quod ducimus rerum ex ut eos.', 5, 395, '2024-07-16 00:15:55', '2024-07-16 00:15:55'),
(15, 'Est sapiente sed quae repellat. Labore officiis et ipsum deserunt quis quia. Et quo asperiores rerum rerum.', 3, 497, '2024-07-16 00:15:55', '2024-07-16 00:15:55'),
(16, 'Voluptates iusto ipsum omnis id quasi sint aliquam. Eius amet dignissimos et incidunt enim quasi exercitationem. Accusantium est aut cum totam sed et ea.', 1, 385, '2024-07-16 00:15:55', '2024-07-16 00:15:55'),
(17, 'Cum et architecto facilis illo dolor commodi qui. Recusandae et sit quidem quaerat error velit. Quia ipsam ea ut distinctio tempore eius. Iusto error sapiente eum cupiditate doloribus at quam nihil.', 4, 351, '2024-07-16 00:15:55', '2024-07-16 00:15:55'),
(18, 'Minima autem consequatur et et numquam ut. Beatae consequatur rerum molestiae rerum. Provident qui ut veniam hic. Blanditiis exercitationem nulla maxime cumque tempore vero beatae.', 5, 378, '2024-07-16 00:15:55', '2024-07-16 00:15:55'),
(19, 'Eos dolor omnis ipsum in nemo repellat provident et. Voluptas quidem saepe exercitationem totam corporis. Et animi alias ab veniam quia. Aut beatae omnis eveniet repudiandae rerum minus.', 1, 431, '2024-07-16 00:15:55', '2024-07-16 00:15:55'),
(20, 'Qui natus iure occaecati qui. Quaerat reiciendis quam magni voluptates ipsa vel ut hic. Id ut cum enim in amet voluptatum repudiandae doloribus. Autem quaerat consequuntur veniam est enim qui.', 4, 482, '2024-07-16 00:15:55', '2024-07-16 00:15:55'),
(21, 'Omnis quasi illo qui officiis debitis in. Et laudantium occaecati rerum expedita eos. Numquam unde autem occaecati velit.', 3, 475, '2024-07-16 00:15:55', '2024-07-16 00:15:55'),
(22, 'Dolores officiis consequatur tempore omnis. Commodi magnam consequuntur numquam. Aut non aut aperiam aut et magnam. Ratione sunt vero ea veniam doloremque facilis dolorum.', 2, 314, '2024-07-16 00:15:55', '2024-07-16 00:15:55'),
(23, 'Dolores magni ex distinctio dolores voluptatem accusamus exercitationem. Aut voluptatem omnis in excepturi.', 4, 402, '2024-07-16 00:15:55', '2024-07-16 00:15:55'),
(24, 'Fugiat delectus odio ullam. Provident et qui omnis accusantium aut dolore. Eveniet rerum error inventore sed.', 2, 488, '2024-07-16 00:15:55', '2024-07-16 00:15:55'),
(25, 'Labore aliquid rerum possimus ut voluptatem odio. Inventore rerum harum suscipit. Eaque nihil cumque quas expedita dolores necessitatibus veritatis. Est repellendus eligendi aut.', 4, 486, '2024-07-16 00:15:55', '2024-07-16 00:15:55'),
(26, 'Quidem odit voluptas quo accusantium. Eos fuga enim sunt. Rerum voluptatibus iste laboriosam vitae voluptatem delectus rem. Asperiores quae repellat omnis.', 5, 383, '2024-07-16 00:15:55', '2024-07-16 00:15:55'),
(27, 'Nam consequatur itaque reiciendis qui quaerat. Et possimus eveniet illo enim non modi. Occaecati et dolorem qui provident est. Id ipsam consequatur et omnis vero sed maxime accusamus.', 1, 419, '2024-07-16 00:15:55', '2024-07-16 00:15:55'),
(28, 'Sunt quos vitae autem ex sed modi. Voluptas tempore hic adipisci id amet voluptatem cum. Eveniet nisi error unde itaque.', 1, 423, '2024-07-16 00:15:55', '2024-07-16 00:15:55'),
(29, 'Rerum mollitia voluptates ut ducimus. Vitae distinctio ut et. Qui aut omnis omnis exercitationem minus exercitationem. Labore quia natus quisquam aut illum eos.', 4, 424, '2024-07-16 00:15:55', '2024-07-16 00:15:55'),
(30, 'Voluptas in molestiae molestiae facilis. Ullam exercitationem recusandae eveniet aut. Labore recusandae iure et eos.', 1, 483, '2024-07-16 00:15:55', '2024-07-16 00:15:55'),
(31, 'Laboriosam eius nesciunt voluptatem expedita maiores. Architecto quia commodi itaque ut voluptas et iusto. Et in eum ut quibusdam officiis rerum. Esse pariatur quam recusandae assumenda sequi vitae.', 4, 378, '2024-07-16 00:15:55', '2024-07-16 00:15:55'),
(32, 'Amet ad illo repellendus. Voluptatem odit incidunt error laborum. Sint id dolore qui aut.', 2, 498, '2024-07-16 00:15:55', '2024-07-16 00:15:55'),
(33, 'Est ducimus consequatur quia sed ut et. Enim esse omnis perspiciatis voluptates eos culpa. Soluta nisi et aut incidunt est.', 2, 422, '2024-07-16 00:15:55', '2024-07-16 00:15:55'),
(34, 'In minima ducimus vitae officia iure sint. Ad odio cupiditate et consequatur ut. Architecto consequuntur laboriosam perspiciatis optio aut.', 2, 447, '2024-07-16 00:15:55', '2024-07-16 00:15:55'),
(35, 'Exercitationem laudantium nihil explicabo eum commodi ullam et quia. Dolores eos inventore architecto minima quo. Natus ut quibusdam qui cumque ut eligendi.', 3, 471, '2024-07-16 00:15:55', '2024-07-16 00:15:55'),
(36, 'Quia vitae repudiandae sunt rerum blanditiis et non. Autem fugit voluptas voluptate. Consequatur est autem suscipit quam ab.', 2, 485, '2024-07-16 00:15:55', '2024-07-16 00:15:55'),
(37, 'Magni dolores laborum omnis dolorum non eveniet. Perspiciatis nostrum quibusdam voluptatum suscipit optio et. Et ut voluptas iure. Quia ut temporibus maiores et temporibus sed.', 2, 452, '2024-07-16 00:15:55', '2024-07-16 00:15:55'),
(38, 'Eius provident numquam exercitationem sit a a. Adipisci omnis architecto quaerat voluptas nulla magni vel. Sed voluptatum harum omnis quo nulla. Deserunt magni cupiditate nisi quia illum.', 5, 361, '2024-07-16 00:15:55', '2024-07-16 00:15:55'),
(39, 'Quod eligendi qui ducimus dolor culpa. Ut fuga quo rerum autem cupiditate et explicabo. Explicabo non qui nisi tenetur aut. Dolor ex molestias maxime quis a culpa.', 4, 500, '2024-07-16 00:15:55', '2024-07-16 00:15:55'),
(40, 'Alias quos sit dolor dolores id soluta. Praesentium nobis maiores nostrum et voluptatibus.', 1, 451, '2024-07-16 00:15:55', '2024-07-16 00:15:55'),
(41, 'Illo error repellendus aut sed voluptatum. Optio sequi saepe id delectus sed. Nesciunt adipisci corporis necessitatibus dolores. Soluta laudantium voluptatum esse repudiandae asperiores debitis.', 3, 441, '2024-07-16 00:15:55', '2024-07-16 00:15:55'),
(42, 'Consequatur ipsa aut rerum cum aspernatur ad doloribus corporis. Unde sint dignissimos ipsam in ipsum libero. Perferendis ratione nihil soluta pariatur. Error excepturi et dolorem rerum esse.', 2, 373, '2024-07-16 00:15:55', '2024-07-16 00:15:55'),
(43, 'Non tenetur a dolores est vel non. Veniam sit tempore et numquam et. Minima iste asperiores aperiam aut earum dolores sed. Cumque veritatis non omnis illo quos dolorem.', 3, 436, '2024-07-16 00:15:55', '2024-07-16 00:15:55'),
(44, 'Explicabo ut distinctio voluptates excepturi culpa quo mollitia. Cupiditate veniam deserunt est. Expedita consequatur voluptas rerum dolore consequatur voluptates quis.', 3, 344, '2024-07-16 00:15:55', '2024-07-16 00:15:55'),
(45, 'Aut distinctio omnis voluptatibus nisi. Est eos quae accusamus. Sint quis est ab tempore.', 1, 429, '2024-07-16 00:15:55', '2024-07-16 00:15:55'),
(46, 'Totam excepturi voluptate possimus tenetur omnis vel beatae sapiente. Quo non et ut quod blanditiis et. Voluptatum laborum et quod ut.', 5, 316, '2024-07-16 00:15:55', '2024-07-16 00:15:55'),
(47, 'Corporis est vero exercitationem et et repellat provident. Commodi sequi et dolore laudantium aperiam. Quaerat consequuntur hic voluptas sed veniam nihil.', 4, 321, '2024-07-16 00:15:55', '2024-07-16 00:15:55'),
(48, 'Aspernatur incidunt corrupti autem expedita et voluptas. Sed cupiditate aperiam aspernatur sed. Laboriosam iste et labore nobis qui. Qui qui optio ut dicta tempora.', 2, 370, '2024-07-16 00:15:55', '2024-07-16 00:15:55'),
(49, 'Eaque illo impedit facilis repudiandae voluptatem qui odio. Atque sit et delectus ut soluta sapiente fugiat. Saepe itaque quaerat dicta ut at.', 1, 404, '2024-07-16 00:15:55', '2024-07-16 00:15:55'),
(50, 'Delectus nulla soluta dicta commodi. In magnam sequi eaque pariatur non molestiae. Officia repellat dolorem facere ducimus aliquam voluptatem.', 1, 458, '2024-07-16 00:15:55', '2024-07-16 00:15:55');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'User 1', 'user1@example.com', 'password', NULL, NULL),
(2, 'User 2', 'user2@example.com', 'password', NULL, NULL),
(3, 'User 3', 'user3@example.com', 'password', NULL, NULL),
(4, 'User 4', 'user4@example.com', 'password', NULL, NULL),
(5, 'User 5', 'user5@example.com', 'password', NULL, NULL);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `article_id` (`article_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=506;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `articles`
--
ALTER TABLE `articles`
  ADD CONSTRAINT `articles_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);

--
-- Các ràng buộc cho bảng `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `comments_ibfk_2` FOREIGN KEY (`article_id`) REFERENCES `articles` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
