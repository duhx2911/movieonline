-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 02, 2023 lúc 06:43 PM
-- Phiên bản máy phục vụ: 10.4.27-MariaDB
-- Phiên bản PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `movie_db`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `position` int(11) NOT NULL DEFAULT 4
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `title`, `description`, `status`, `slug`, `position`) VALUES
(1, 'Phim lẻ', 'Phim lẻ cập nhật hàng ngày', 1, 'phim-le-57887', 0),
(3, 'Phim chiếu rạp', 'Phim chiếu rạp mới nhất', 1, 'phim-chieu-rap', 2),
(4, 'Phim Hot', 'Phim hot', 0, 'phim-hot', 3),
(5, 'Phim bộ', 'Phim bộ', 1, 'phim-bo', 1),
(6, 'Trailer Phim', 'Trailer Phim', 0, 'trailer-phim-63810', 4),
(7, 'TV Show', 'TV Show', 0, 'tv-show-36468', 4);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `countries`
--

CREATE TABLE `countries` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `slug` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `countries`
--

INSERT INTO `countries` (`id`, `title`, `description`, `status`, `slug`) VALUES
(2, 'Việt Nam', 'Phim Việt Nam', 1, 'viet-nam'),
(3, 'Hàn Quốc', 'phim Hàn Quốc', 1, 'han-quoc'),
(4, 'Nhật Bản', 'Phim nhật', 1, 'nhat-ban'),
(5, 'Trung Quốc', 'Trung Quốc', 1, 'trung-quoc-57333'),
(6, 'Âu - Mỹ', 'Âu Mỹ', 1, 'au-my-56920');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `episodes`
--

CREATE TABLE `episodes` (
  `id` int(11) NOT NULL,
  `movie_id` int(11) NOT NULL,
  `link_phim` text NOT NULL,
  `episode` int(11) NOT NULL,
  `created_at` varchar(50) NOT NULL,
  `updated_at` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `episodes`
--

INSERT INTO `episodes` (`id`, `movie_id`, `link_phim`, `episode`, `created_at`, `updated_at`) VALUES
(11, 20, '<iframe src=\"https://em.iq.com/player.html?id=xf5u98jucc&sh_pltf=4\" width=\"480\" height=\"270\" allowfullscreen=\"true\" webkitallowfullscreen=\"true\" mozallowfullscreen=\"true\"></iframe>', 1, '2023-05-02 23:13:31', '2023-05-02 23:13:31'),
(12, 20, '<iframe src=\"https://em.iq.com/player.html?id=xf5u98jucc&sh_pltf=4\" width=\"480\" height=\"270\" allowfullscreen=\"true\" webkitallowfullscreen=\"true\" mozallowfullscreen=\"true\"></iframe>', 2, '2023-05-02 23:14:31', '2023-05-02 23:14:31'),
(13, 20, '<iframe src=\"https://em.iq.com/player.html?id=xf5u98jucc&sh_pltf=4\" width=\"480\" height=\"270\" allowfullscreen=\"true\" webkitallowfullscreen=\"true\" mozallowfullscreen=\"true\"></iframe>', 3, '2023-05-02 23:14:59', '2023-05-02 23:14:59'),
(14, 19, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/8FH2ow1ShQc\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', 1, '2023-05-02 23:16:59', '2023-05-02 23:16:59'),
(15, 19, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/eJ2av7ArrAk\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', 2, '2023-05-02 23:17:33', '2023-05-02 23:17:33'),
(16, 19, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/eJ2av7ArrAk\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', 3, '2023-05-02 23:17:54', '2023-05-02 23:17:54'),
(17, 18, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/URZ7NnJDv08\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', 1, '2023-05-02 23:19:30', '2023-05-02 23:19:30'),
(18, 18, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/aczTNfapkvo\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', 2, '2023-05-02 23:20:21', '2023-05-02 23:20:21'),
(19, 18, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/YctTawEt2l4\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', 3, '2023-05-02 23:21:01', '2023-05-02 23:21:01'),
(20, 24, '<iframe width=\"560\" height=\"315\" src=\"//ok.ru/videoembed/3748800825911\" frameborder=\"0\" allow=\"autoplay\" allowfullscreen></iframe>', 1, '2023-05-02 23:26:46', '2023-05-02 23:26:46'),
(21, 24, '<iframe width=\"560\" height=\"315\" src=\"//ok.ru/videoembed/3748800760375\" frameborder=\"0\" allow=\"autoplay\" allowfullscreen></iframe>', 2, '2023-05-02 23:27:32', '2023-05-02 23:27:32'),
(22, 24, '<iframe width=\"560\" height=\"315\" src=\"//ok.ru/videoembed/3748838509111?autoplay=1\" frameborder=\"0\" allow=\"autoplay\" allowfullscreen></iframe>', 3, '2023-05-02 23:28:09', '2023-05-02 23:28:09'),
(23, 23, '<iframe width=\"560\" height=\"315\" src=\"//ok.ru/videoembed/5360608611027?autoplay=1\" frameborder=\"0\" allow=\"autoplay\" allowfullscreen></iframe>', 1, '2023-05-02 23:30:36', '2023-05-02 23:30:36'),
(24, 23, '<iframe width=\"560\" height=\"315\" src=\"//ok.ru/videoembed/4815337163426?autoplay=1\" frameborder=\"0\" allow=\"autoplay\" allowfullscreen></iframe>', 2, '2023-05-02 23:31:32', '2023-05-02 23:31:32'),
(25, 22, '<iframe width=\"560\" height=\"315\" src=\"//ok.ru/videoembed/4925936437960?autoplay=1\" frameborder=\"0\" allow=\"autoplay\" allowfullscreen></iframe>', 1, '2023-05-02 23:32:58', '2023-05-02 23:32:58'),
(26, 22, '<iframe width=\"560\" height=\"315\" src=\"//ok.ru/videoembed/4925936569032?autoplay=1\" frameborder=\"0\" allow=\"autoplay\" allowfullscreen></iframe>', 2, '2023-05-02 23:34:31', '2023-05-02 23:34:31'),
(27, 21, '<iframe src=\"https://em.iq.com/player.html?id=19rz6iqsm4&sh_pltf=4\" width=\"480\" height=\"270\" allowfullscreen=\"true\" webkitallowfullscreen=\"true\" mozallowfullscreen=\"true\"></iframe>', 1, '2023-05-02 23:35:24', '2023-05-02 23:35:24'),
(28, 21, '<iframe src=\"https://em.iq.com/player.html?id=19rz6iqsm4&sh_pltf=4\" width=\"480\" height=\"270\" allowfullscreen=\"true\" webkitallowfullscreen=\"true\" mozallowfullscreen=\"true\"></iframe>', 2, '2023-05-02 23:35:49', '2023-05-02 23:35:49'),
(29, 21, '<iframe src=\"https://em.iq.com/player.html?id=19rz6iudnc&sh_pltf=4\" width=\"480\" height=\"270\" allowfullscreen=\"true\" webkitallowfullscreen=\"true\" mozallowfullscreen=\"true\"></iframe>', 3, '2023-05-02 23:36:18', '2023-05-02 23:36:18'),
(30, 21, '<iframe src=\"https://em.iq.com/player.html?id=19rz6it9vc&sh_pltf=4\" width=\"480\" height=\"270\" allowfullscreen=\"true\" webkitallowfullscreen=\"true\" mozallowfullscreen=\"true\"></iframe>', 4, '2023-05-02 23:37:42', '2023-05-02 23:37:42');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
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
-- Cấu trúc bảng cho bảng `genres`
--

CREATE TABLE `genres` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `slug` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `genres`
--

INSERT INTO `genres` (`id`, `title`, `description`, `status`, `slug`) VALUES
(1, 'Hài hước', 'phim hài', 1, 'hai-huoc'),
(2, 'Hành động', 'phim Hành động', 1, 'hanh-dong'),
(3, 'Lãng mạn', 'lãng mạn', 1, 'lang-man-3075'),
(4, 'Hoạt Hình', 'Hoạt Hình', 1, 'hoat-hinh-8567'),
(5, 'Võ Thuật - Kiếm Hiệp', 'Võ Thuật - Kiếm Hiệp', 1, 'vo-thuat-kiem-hiep-18024'),
(6, 'Cổ Trang - Thần Thoại', 'Cổ trang - thần thoại', 1, 'co-trang-than-thoai-87363'),
(7, 'Khoa Học - Viễn Tưởng', 'Khoa Học - Viễn Tưởng', 1, 'khoa-hoc-vien-tuong-43814'),
(8, 'Kinh Dị', 'Kinh Dị', 1, 'kinh-di-23729');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `movies`
--

CREATE TABLE `movies` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `name_eng` varchar(255) NOT NULL,
  `sotap` int(11) NOT NULL DEFAULT 1,
  `description` longtext NOT NULL,
  `status` int(11) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL,
  `genre_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `phimhot` int(11) NOT NULL,
  `resolution` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `movies`
--

INSERT INTO `movies` (`id`, `title`, `name_eng`, `sotap`, `description`, `status`, `slug`, `image`, `category_id`, `genre_id`, `country_id`, `phimhot`, `resolution`) VALUES
(17, 'Đảo Hải Tặc', 'One Piece', 1060, 'Đảo Hải Tặc - One Piece là chuyện về cậu bé Monkey D. Luffy do ăn nhầm Trái Ác Quỷ, bị biến thành người cao su và sẽ không bao giờ biết bơi. 10 năm sau sự việc đó, cậu rời quê mình và kiếm đủ 10 thành viên để thành một băng hải tặc, biệt hiệu Hải tặc Mũ Rơm. Khi đó của phiêu lưu tìm kiếm kho báu One Piece bắt đầu. Trong cuộc phiêu lưu tìm kiếm One Piece, băng Hải tặc mũ rơm phải chiến đấu với nhiều băng hải tặc xấu khác cũng muốn độc chiếm One Piece và Hải quân của Chính phủ muốn diệt trừ hải tặc. Băng Hải tặc Mũ Rơm phải trải qua biết bao nhiêu khó khăn, không lùi bước với ước mơ \"Trở thành Vua Hải Tặc và chiếm được kho báu One Piece\".', 1, 'dao-hai-tac-23679', 'dao-hai-tac-7188406.jpg', 5, 4, 4, 1, 1),
(18, 'Tình Yêu Anh Dành Cho Em', 'The Love You Give Me (2023)', 32, 'Tình Yêu Anh Dành Cho Em kể về hai cô gái gặp nhau trên chuyến xe buýt đường dài, Mẫn Tuệ không nhắc câu nào về vấn đề của mình nhưng Tô Điền tò mò lại phát giác được cô ấy có tâm sự, cũng vì thế mà hy sinh tính mạng mình. Xuất phát từ sự áy náy trong lòng, Mẫn Tuệ quyết định thay Tô Điền đi gặp nam chính Tân Kỳ, không ngờ lại rơi vào một mối duyên khó xử.', 1, 'tinh-yeu-anh-danh-cho-em-12003', 'tinh-yeu-anh-danh-cho-em7660.png', 5, 3, 5, 1, 1),
(19, 'Trường Nguyệt Tẫn Minh', 'Till The End Of The Moon (2023)', 40, 'Trường Nguyệt Tẫn Minh kể về lúc bấy giờ, thế giới bị ma thần Đạm Đài Tẫn đọa đày chìm trong giết chóc. Con gái của chưởng môn phái Hành Dương tông là Lê Tô Tô nhận sứ mệnh trở lại 500 năm trước, hóa thân thành tam tiểu thư Diệp Tịch Vụ của Diệp gia, ngăn cản Đạm Đài Tẫn trước khi hắn trở thành ma thần. 500 năm trước, Đạm Đài Tẫn hãy còn là một phàm nhân thân cô thế cô, là con tin của Chu quốc, là trượng phu của Diệp Tịch Vụ. Hắn còn chưa có bị tà niệm ăn mòn hoàn toàn. Bởi vậy, nàng sẽ phải lợi dụng lúc ma thần ở trong trạng thái tình cảm yếu ớt nhất, đâm 9 cây đinh diệt hồn vào trong cơ thể hắn. Khi Diệp Tịch Vụ và Đạm Đài Tẫn đã yêu nhau, nàng tìm thời cơ, đâm diệt hồn đinh xong là có thể hoàn thành sứ mệnh. Lại chẳng ngờ thành công đã ở trước mắt lại hoàn toàn tan biến, Diệp Tịch Vụ đành phải nhảy lầu tự sát.', 1, 'truong-nguyet-tan-minh-76859', 'truong-nguyet-tan-minh-111408761.jpg', 5, 5, 5, 1, 1),
(20, 'Vân Tương Truyện', 'The Ingenious One (2023)', 36, 'Vân Tương Truyện kể về nhân vật Vân Tương một đệ tử của Vân Đài và hành trình bước ra giang hồ sau mười năm khổ luyện.Trong quá trình đó, Vân Tương gặp Thư Á Nam một nữ tử tinh ranh, thông minh và lanh lợi. Cả hai nảy sinh tình cảm và cùng nhau phá án. Điều tra về một thảm án, Vân Tương tìm ra sự thật kinh hoàng có liên quan đến Vân Đài và quyết định đứng lên bảo vệ chính nghĩa bằng cả trái tim mình, ngay cả khi phải trả giá bằng cả tính mạng.', 1, 'van-tuong-truyen-47455', 'van-tuong-truyen-112145098.jpg', 5, 5, 5, 1, 1),
(21, 'Người Thầy Y Đức 3', 'Dr. Romantic 3 (2023)', 16, 'Người Thầy Y Đức 3 kể về cuộc sống của nhân viên Dol Dam khoảng ba năm sau các phần trước sau khi quyết định thành lập cơ sở y tế của riêng mình.', 1, 'nguoi-thay-y-duc-3-8458', 'nguoi-thay-y-duc-3-112016957.jpg', 5, 3, 3, 1, 1),
(22, 'Luật Sư Thời Joseon', 'Joseon Attorney: A Morality (2023)', 16, 'Luật Sư Thời Joseon kể về câu chuyện về luật sư độc ác Kang Han Su, người nộp đơn kiện đã được lên kế hoạch từ trước và lợi dụng tình cảm của những nạn nhân bị oan uổng, khi anh ta vô tình trở thành anh hùng và người giải quyết vấn đề trong dân chúng. Cuối cùng, anh trưởng thành để trở thành một luật sư thực sự công bằng. Kang Han Su là một luật sư lành nghề thời Joseon. Kang Han Su bảo vệ và hoàn thành luật pháp để trả thù, nhưng cuối cùng lại trở thành người phát ngôn và anh hùng của nhân dân. Yi Yun Ju là một người thực hiện một vụ án để trả thù chính xác.', 1, 'luat-su-thoi-joseon-75042', 'luat-su-thoi-joseon-110995707.jpg', 5, 6, 3, 1, 1),
(23, 'Kẻ Đánh Cắp Báu Vật', 'Stealer: The Treasure Keeper (2023)', 12, 'Kẻ Đánh Cắp Báu Vật kể về cuộc sống 2 mang của Hwang Dae Myung, ban ngày là công chức của Cục Di sản Văn hóa, nhưng về đêm lại hóa thành siêu trộm với mật danh Skunk.', 1, 'ke-danh-cap-bau-vat-72579', 'ke-danh-cap-bau-vat-111685253.jpg', 5, 1, 3, 1, 0),
(24, 'Tình Hán Xán Lạn', 'Love Like the Galaxy (2022)', 56, 'Tinh Hà Xán Lạn là bộ phim kể về sau khi bà ngoại qua đời, nữ chính Du Thái Linh (Triệu Lộ Tư) xuyên không tới thời cổ đại. Ở đây, cô có tên là Trình Thiếu Thương - con gái út của một gia đình có truyền thống võ thuật, cha mẹ vì mải mê chinh chiến nên mang theo 3 người anh trai ra trận giành địa bàn 10 năm, để cô ở nhà với bà nội và người thím khắc nghiệt. Sau này, cô nàng rơi vào 3 cuộc hôn nhân với 3 tấm chồng, ai cũng tạo nên nhiều tình huống dở khóc dở cười cho cô nàng.', 1, 'tinh-han-xan-lan-64367', 'tinh-han-xan-lan-102985988.jpg', 5, 5, 5, 1, 1),
(25, 'One Piece Film Red', 'One Piece Film Red', 1, 'One Piece Film Red kể về Bối cảnh One Piece Film Red diễn ra ở hòn đảo âm nhạc Elegia, nơi diva nổi tiếng bậc nhất thế giới tên Uta thực hiện buổi biểu diễn trực tiếp đầu tiên trước công chúng. Uta đứng trên sân khấu với một ước mơ giản dị rằng ” Âm nhạc của tôi sẽ khiến cho thế giới hạnh phúc”. Đằng sau hình ảnh cô ca sĩ sở hữu giọng hát được đánh giá là ở “Đẳng cấp hoàn toàn khác” là một thân thế vô cùng bí ẩn được che giấu. Băng hải tặc Mũ Rơm và các fan khác của Uta từ nhiều thế lực khác nhau như hải tặc lẫn hải quân đều đã cùng tề tựu về buổi biểu diễn này. Biến cố bắt đầu ngay khi sự thật kinh hoàng được tiết lộ rằng Uta chính là “con gái của Shanks”. Luffy và Uta lần đầu tiên hội ngộ sau lần gặp gỡ vào 12 năm trước tại Làng Foosha.', 1, 'one-piece-film-red-41326', 'one-piece-film-red-111069444.jpg', 3, 4, 4, 0, 1),
(26, 'Avatar: Dòng Chảy Của Nước', 'Avatar: The Way of Water (2022)', 1, 'Thế Thân: Dòng Chảy Của Nước lấy bối cảnh 10 năm sau những sự kiện xảy ra ở phần đầu tiên. Phim kể câu chuyện về gia đình mới của Jake Sully (Sam Worthington thủ vai) cùng những rắc rối theo sau và bi kịch họ phải chịu đựng khi phe loài người xâm lược hành tinh Pandora.', 1, 'avatar-dong-chay-cua-nuoc-86055', 'avatar-dong-chay-cua-nuoc-108515535.jpg', 3, 7, 6, 0, 1),
(27, 'Chị Chị Em Em 2', 'Sister Sister 2 (2023)', 1, 'Chị Chị Em Em 2 dựa trên giai thoại về hai đệ nhất mỹ nhân Sài thành Ba Trà & Tư Nhị, Minh Hằng & Ngọc Trinh mang về doanh thu hơn 120 tỷ đồng, á quân phòng vé ba tuần liên tiếp trên đường đua phim Tết 2023.', 1, 'chi-chi-em-em-2-3645', 'chi-chi-em-em-2-1109266.jpg', 3, 1, 2, 1, 0),
(28, 'Sát Thủ Nhân Tạo', 'The Witch: Part 1. The Subversion (2018)', 1, 'Sát Thủ Nhân Tạo là bộ phim hành động li kì kể về Koo Ja Yoon – một cô bé được nuôi dưỡng trong một tổ chức đáng sợ - nơi diễn ra các cuộc thí nghiệm y học được thực hiện trên chính cơ thể con người nhằm biến họ thành những cỗ máy giết người. Sau khi chạy trốn khỏi tổ chức, Ja Yoon bị mất trí nhớ và được một cặp vợ chồng già nhận nuôi. 10 năm sau, khi đã trở thành một nữ sinh trung học, Ja Yoon đăng ký tham gia một cuộc thi âm nhạc với mong muốn giúp gia đình vượt qua khó khăn tài chính. Nhưng cô không ngờ rằng, ngay từ khi hình ảnh của mình xuất hiện trên truyền hình, cuộc sống của cô bị đảo lộn hoàn toàn bởi sự truy đuổi của những kẻ lạ mặt.', 1, 'sat-thu-nhan-tao-83055', 'sat-thu-nhan-tao-3307406.jpg', 3, 7, 3, 1, 1),
(29, 'Đặc Vụ Xuyên Quốc Gia', 'Confidential Assignment 2: International (2022)', 1, 'Đặc Vụ Xuyên Quốc Gia ghi lại hành trình đặc vụ Triều Tiên Lim Cheol-ryung (Hyun Bin) quay trở lại Hàn Quốc để đánh sập một tổ chức tội phạm quốc tế tàn bạo, bí mật. Cùng lúc đó tại Hàn Quốc, Kang Jin-tae (Yoo Hai Jin) ở Đơn vị Tội phạm mạng đang khao khát trở lại đơn vị cũ thì được trao cho một nhiệm vụ đặc biệt với Cheol-ryung. Min-young (Lim Yoon A) cũng có cơ hội tiếp tục câu chuyện tình yêu “phát cuồng” dành cho Cheol-ryung. Jin-tae và Cheol-ryung cùng nhau làm việc dù vẫn còn nhiều nghi ngờ về động cơ của đối phương. Ngay khi bộ đôi chuẩn bị đột kích nơi ẩn náu của Jang Myung-jun (Jin Sun Kyu), thủ lĩnh của tổ chức tội phạm, thì đặc vụ FBI Jack (Daniel Henney) xông vào. Nhân tố mới này đã biến cuộc điều tra thành một cuộc điều tra quốc tế giữa 3 quốc gia, hứa hẹn nhiều tình tiết kịch tính và đầy bất ngờ.', 1, 'dac-vu-xuyen-quoc-gia-50002', 'dac-vu-xuyen-quoc-gia-107085167.jpg', 3, 2, 3, 0, 1),
(30, 'Bỗng Dưng Trúng Số', '6/45 (2022)', 1, 'Bỗng Dưng Trúng Số kể về người lính Hàn Quốc Chun Woo (Go Kyung Pyo) vô tình nhặt được tờ vé số trúng độc đắc trị giá lên đến gần 6 triệu đô! Nhưng chưa kịp vui mừng bao lâu, tờ vé số ấy không may bị cuốn bay sang bên kia biên giới và rơi vào tay anh lính Triều Tiên Yong Ho (Lee Yi Kyung). Chun Woo cần tờ vé số để đổi tiền, trong khi Yong Ho dù nắm giữ tờ vé quan trọng lại không thể đặt chân đến Hàn Quốc. Câu chuyện ngày càng trở nên rắc rối và hài hước khi có thêm những người đồng đội của hai anh chàng biết được sự việc và nhất quyết tham gia vào cuộc đàm phán chia tiền.', 1, 'bong-dung-trung-so-64545', 'bong-dung-trung-so-106606969.jpg', 3, 1, 3, 0, 1),
(31, 'Black Adam', 'Black Adam (2022)', 1, 'Black Adam là câu chuyện gần 5.000 năm sau khi anh ta được ban cho sức mạnh toàn năng của các vị thần Ai Cập - và bị cầm tù nhanh chóng - Black Adam được giải thoát khỏi ngôi mộ trần gian của mình, sẵn sàng giải phóng hình thức công lý độc nhất của anh ta trên thế giới hiện đại.', 1, 'black-adam-99393', 'black-adam-1069452.jpg', 3, 7, 6, 0, 0),
(32, 'Điều Ước Cuối Của Tù Nhân 2037', '2037 (2022)', 1, 'Điều Ước Cuối Của Tù Nhân 2037 kể về tuổi 19, thay vì đến trường như bao bạn bè đồng trang lứa, Yoon-yeong phải nỗ lực hết mình để đi làm thêm kiếm tiền. Khao khát một cuộc sống tốt đẹp hơn cho mình và người mẹ khiếm thính, Yoon-yeong đặt mục tiêu thi đỗ kỳ thi công chức lên trên hết. Bất ngờ và trớ trêu thay, một sự cố khủng khiếp xảy ra, biến Yoon-yeong từ nạn nhân đáng thương trở thành kẻ giết người. Trong thời điểm tuyệt vọng và bất lực nhất, Yoon-yeong đã gặp những người chị em trong phòng giam số 12. Đằng sau mỗi người là một câu chuyện khác nhau, nhưng họ đã trao nhau tình yêu thương và niềm hy vọng để cùng hướng về một tương lai tươi sáng ngoài song sắt nhà tù.', 1, 'dieu-uoc-cuoi-cua-tu-nhan-2037-32032', 'dieu-uoc-cuoi-cua-tu-nhan-2037-104976776.jpg', 3, 1, 3, 0, 1),
(33, 'Sống Lại Tuổi 18', 'One More Time (2023)', 1, 'Sống Lại Tuổi 18 kể về vào sinh nhật 40 tuổi, Amelia có điều ước định mệnh là được trở lại tuổi 18 vào năm 2002. Nhưng cô sớm hối hận khi mắc kẹt với việc sống lại ngày đó hết lần này đến lần khác.', 1, 'song-lai-tuoi-18-33013', 'song-lai-tuoi-18-112129357.jpg', 1, 3, 6, 0, 0),
(34, 'Siết Chặt', 'Chokehold (2023)', 1, 'Siết Chặt kể về cặp đôi trốn tránh một vụ bê bối, đến từ Istanbul bắt đầu lại ở một thị trấn bên bờ biển Aegean nhưng nhanh chóng nhận ra rằng người dân địa phương đang quyết tâm trừ khử họ.', 1, 'siet-chat-54583', 'siet-chat-112112076.jpg', 1, 2, 6, 0, 0),
(35, 'Hôn Đi Hôn Đi', 'Kiss, Kiss! (2023)', 1, 'Hôn Đi Hôn Đi kể về chàng trai trăng hoa tin mình có thể quyến rũ bất cứ người phụ nữ nào, kiên trì tán tỉnh một cô dâu tương lai ương ngạnh đã đính hôn với con trai của một chính trị gia tham vọng.', 1, 'hon-di-hon-di-73318', 'hon-di-hon-di-112104155.jpg', 1, 3, 6, 0, 1),
(36, 'Ôi Có Ma', 'Oh! My Ghost (2022)', 1, 'Ôi Có Ma kể về một người tìm việc cuối năm, Tae Min, người có thể nhìn thấy ma thông qua thông số kỹ thuật của mình khi anh ta nhận được một công việc trong một studio nơi những sự cố bí ẩn xảy ra hàng đêm.', 1, 'oi-co-ma-93308', 'oi-co-ma-112096177.jpg', 1, 8, 3, 1, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
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

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'duhxmeii29', 'nxd123@gmail.com', NULL, '$2y$10$d/vYh1ZfYlKh6xoHP2RcTOKO/Gks2kb.2JYxPvEdM/YQ821ZUTaJK', 'Njp3DRLnLcoH6gR8CdxGnqXg5yHLo1F2AXKaLaJ0tWJvBhVWhWi77cA5KXMC', '2023-04-02 07:09:10', '2023-04-02 07:09:10'),
(2, 'Duc', 'duc@e.tlu.edu.vn', NULL, '$2y$10$UGjZVTxZZ3ErOlRQJELuPuAr3HQ4O057WJghTfJxqPqbSWkzPbo/q', NULL, '2023-04-14 06:55:08', '2023-04-14 06:55:08'),
(3, 'Duc', 'duc@gmail.com', NULL, '$2y$10$U9q4Y9cvwj0USc9CN/VuT.xEmyE1xWnyRZI4Dv/DYjnvR3hUtBNJ2', NULL, '2023-04-14 07:00:03', '2023-04-14 07:00:03');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `episodes`
--
ALTER TABLE `episodes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `movie_id` (`movie_id`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `episodes`
--
ALTER TABLE `episodes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `genres`
--
ALTER TABLE `genres`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `movies`
--
ALTER TABLE `movies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `episodes`
--
ALTER TABLE `episodes`
  ADD CONSTRAINT `episodes_ibfk_1` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
