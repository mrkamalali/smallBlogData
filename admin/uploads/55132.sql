-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 07, 2018 at 03:46 PM
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
-- Database: `dpname`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bookfile` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `info` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `title`, `author`, `image`, `bookfile`, `info`, `user_id`, `category_id`, `created_at`, `updated_at`) VALUES
(15, 'لغة الجسد', 'بيتر كلينتون', '1527334012.jpg', '1527334012.pdf', 'تعد لغة الجسد وسيلة اتصال مهمة بالآخرين نستخدمها جميعاً بشكل يومي. لذلك فإن تعلم كيفية فهم لغة الجسد واستخدامها بطريقة فعالة قد يحسن من علاقتك بالآخرين بدرجة كبيرة في محيط أسرتك او جيرانك أو ماشابه. كما قد يساعدك على تخطي و التعامل مع المواقف المختلفة التي تتعرض لها في عملك. سوف يساعدك هذا الكتاب العملي على تعلم فن وأسرار لغة الجسد بسهولة وإتقانها بكل مهارة.', 1, 2, '2018-05-26 09:26:52', '2018-05-26 09:26:52'),
(16, 'إدارة الوقت', 'د. إبراهيم الفقى', '1527334218.jpg', '1527334218.pdf', 'خبير التنمية البشرية والبرمجة اللغوية العصبية ورئيس مجلس إدارة المركز الكندي للتنمية البشرية ومؤسس ورئيس مجلس إدارة مجموعة شركات إبراهيم الفقي العالمية، واضع نظرية ديناميكية التكيف العصبي ونظرية قوة الطاقة البشرية.ولد الدكتور إبراهيم محمد السيد الفقي في قرية أبو النمرس حي المنيب بمحافظة الجيزة حصل على بطولة مصر في تنس الطاولة لعدة سنوات ومثل مصر مع المنتخب الوطني في بطولة العالم لتنس الطاولة بألمانيا الغربية عام 1969.\r\n\r\nوفي الحياة المهنية فقد تدرج في الوظائف حتى درجة مدير قسم في قطاع الفنادق بفندق فلسطين بالإسكندرية ووصل إلى الدرجة الثالثة وهو في سن الخامسة والعشرين. هاجر إلى كندا لدراسة الإدارة، وبدأ هناك في وظيفة جلي الأطباق وفي وظيفة حارس لمطعم وحمال كراسي وطاولات في فندق بسيط.يحكي الدكتور الفقي في محاضراته أنه سافر إلى كندا مع زوجته وهو لا يمتلك شيئا وعمل في أقل الوظائف في فندق بالرغم من نجاحه في الفندقة قبل سفره الي كندا\r\n\r\nثم تدرج في وقت قصير جدا الي ان أصبح مدير أكبر الفنادق في كندا وحصل علي الكثير من الشهادات الدولية وأكثر من دكتوراة في علم التنمية البشرية, و يقول الدكتور إبراهيم الفقي إنه قام بتأليف علمين جديدين مسجلين باسمه وهما: علم قوة الطاقة البشرية وعلم ديناميكية التكيف العصبي.الدكتور الفقي له عدة مؤلفات ترجمت إلى الإنجليزية والفرنسية والعربية والكردية والاندونيسية وحققت مبيعات ملايين النسخ من النسخ في العالم.\r\n\r\nمن أبرز كتب الدكتور: قوة التفكير البرمجة اللغوية العصبية وفن الاتصال اللامحدود. المفاتيح العشرة للنجاح. قوة التحكم في الذات. قوة الحب والتسامح. حياة بلا توتر. إدارة الوقت. سيطر على حياتك. أيقظ قدراتك واصنع مستقبلك. سحر القيادة. التنويم بالايحاء. الطاقة البشرية والطريق الي القمة. استراتيجيات التفكير. التفكير السلبي والتفكير الإيجابي. الأسرار السبعة للقوة الذاتية.\r\n\r\nكيف تتحكم في شعورك وأحاسيسك. اسرار التسويق الاستراتيجي. الطريق إلى النجاح. الطريق إلى الامتياز . قوة الذكاء الروحى . احترف فن الفراسة . الثقة و الاعتزاز بالنفس . اعرف نفسك . العمل الجماعى . حلل شخصيتك بنفسك . سحر الكلمة . غير حياتك في 30 يوم . فن خدمة العملاء . فن و أسرار اتخاذ القرار . قوة التحفيز . قوة العقل الباطن . كيف تصبح نجماً اجتماعياً لامعاً . نم قدراتك الذهنية . احترف التحدث و الإقناع .', 1, 2, '2018-05-26 09:28:30', '2018-05-26 09:30:18'),
(17, 'الخصائص', 'ابن جنى', '1527334435.jpg', '1527334435.pdf', 'يعتبر هذا الكتاب من الجواهر التي تركها لنا العالم أبو الفتح عثمان بن جني المشهور بـابن جني عالم النحو الكبير، وذلك لتفرد هذا الكتاب في بابه، فهو أحد أشهر الكتب التي ألفت في فقه اللغة وفلسفتها، وأسرار العربية ووقائعها، وتبرز قيمة الكتاب منذ بدايته، حيث يقول ابن جني في المقدمة: كتاب لم أزل على فارط الحال، وتقادم الوقت، ملاحظا له، عاكف الفكر عليه، منجذب الرأي والروية إليه وأدا أن أجد مهملا أقيله به، أو خللا أرتقه بعمله، والوقت يزداد بنواديه ضيقا، ولا ينهج إلى الابتداء طريقا، هذا مع إعظامي له، وإعصامي بالأسباب المناطة به، واعتقادي فيه أنه من أشرف ما صنف في علم العرب، وأذهبه في طريق القياس والنظر.. وأجمعه للأدلة على ما أودعته هذه اللغة الشريفة\r\n\r\nيناقش ابن جني في هذا الكتاب العديد من الموضوعات الثرية والمفيدة والهامة، مثل: بنية اللغة وفقهها وأصولها، ويبدأ الكتاب بباب في مناقشة إلهامية اللغة واصطلاحيتها، وعرض لقضايا من أصول اللغة: كالقياس، والاستحسان، والعلل، والحقيقة والمجاز، والتقديم والتأخير، والأصول والفروع، واختتم بحديث عن أغلاط العرب، وسقطات العلماء. فتح ابن جني بهذا الكتاب في اللغة العربية أبوابا جديدة لدراستها.\r\nأهدي هذا الكتاب للسلطان بهاء الدولة البويهي وتمت طباعته لأول مرة في مصر في عام 1913 م إلا أن الكتاب وقتها لم ينشر كاملا. بعدها طبع الكتاب كاملا محققا على يد محمد علي النجار عام 1955.', 1, 5, '2018-05-26 09:33:55', '2018-05-26 09:33:55'),
(18, 'جريمة فى القرية', 'أجاثا كريستى', '1527681616.jpg', '1527681616.pdf', 'رواية جريمة فى القرية pdf تأليف أجاثا كريستى ، واحدة من أروع ما قدمت كريستى الروائية العالمية التى اشتهرت بأعمال الإثارة والرعب، تدور أحداثها فى قرية \"سانت مارى ميد\" حول الكولونيل \"لوسيوس بروثور\" الذى يكرهه الجميع فى القرية ، حتى الكاهن نفسه قال: إن من يقتله سيقدم خدمة للمجتمع.. يتم إيجاد السيد \"بروثور\" مقتولاً فوق مكتب الكاهن ، والغريب أن هناك شخصين يعترفان بارتكاب الجريمة ، هذا هو ما يشجع \" جاين ماربل\" على استعراض قدراتها فى التحقيق ، فهى تشتبه فى سبعة أشخاص بمن فيهم الكاهن نفسه ، وبعد سلسلة من التحقيقات تتوصل الآنسة ماربل إلى حقيقة الجريمة.', 1, 1, '2018-05-30 10:00:16', '2018-05-30 10:00:16'),
(19, 'قوة عقلك الباطن', 'جوزيف ميرفى', '1527681706.jpg', '1527681706.pdf', 'يعدّ هذا الكتاب من أقوى الكتب انتشاراً بين القراء؛ وكتاب \"قوة عقلك الباطن\" يعد بحق من أمهات الكتب فلقد أفاد الكثير من نصائحه الفعالة وترجم الى العديد من اللغات، كما أنه أساس أفضل برامج التسجيل السمعية مبيعاً.ويقع الكتاب في قائمة الكتب لا بد من قراءتها لدى العديد من مؤسسات التجارة والأعمال حول العالم، يجمع الكتاب بين الحكمة القديمة والعلم الحديث، وبذلك لا يتسنى لك الوصول الى استبصارات جديدة فحسب بل والأكثر أهمية التقنيات الفعلية التي يمكن أن تستخدمها في الحياة وتشمل تلك الفصول الرائعة على سبيل المثال: الكنز الذي بداخلك، كيف يعمل عقلك، القوة صانعة المعجزات في عقلك الباطن، الكشف عن طريق العقل في الأزمنة القديمة، نزوع العقل الباطن نحو الحياة وعقلك الباطن شريكك في الحياة.وتعدّ هذه الطبعة المعتمدة من أهم أعمال الدكتور \"ميرفي\"، فقد تم تنقيحها وتزويدها بتعليقات جديدة من كتابات الدكتور التي لم تنشر من قبل، وهي توضح تقنيات التركيز العقلية القادرة على إزالة المعوِّقات الناشئة من اللاوعي والتي تمنعنا من تحقيق النجاح الذي نريده، ونستحقه.وبطريقة عملية وملهمة، وبالإستعانة بأمثلة من الحياة، يستعرض كتاب الدكتور \"ميرفي\" طرقاً لإطلاق العنان للقوى العقلية المدهشة من أجل بناء الثقة بالنفس، وتكوين علاقات إجتماعية منسجمة، وتحقيق النجاح المهني، وجنى الثروة، والتغلّب على الخوف الطبيعي والمرض، والتخلّص من العادات السيئة، وحتى التأثير على عمليات الشفاء الجسدية، وتحسين الحالة العامة وزيادة السعادة.', 1, 2, '2018-05-30 10:01:46', '2018-05-30 10:01:46');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'الرويات', '2018-05-20 07:29:08', '2018-05-20 07:29:08'),
(2, 'كتب التنميه البشريه', '2018-05-20 07:29:27', '2018-05-20 07:29:27'),
(3, 'برمجة وكمبيوتر وانترنت', '2018-05-20 10:57:41', '2018-05-20 10:57:41'),
(4, 'كتب علمية', '2018-05-21 10:05:42', '2018-05-21 10:05:42'),
(5, 'كتب دينيه', '2018-05-21 10:27:30', '2018-05-21 10:27:30'),
(6, 'فلسفه ومنطق', '2018-05-26 09:39:31', '2018-05-26 09:39:31');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `user_id`, `book_id`, `comment`, `created_at`, `updated_at`) VALUES
(1, 1, 8, 'dddddddddddddd', '2018-05-21 10:34:11', '2018-05-21 10:34:11'),
(2, 1, 4, 'ggggggggggggggggg', '2018-05-21 10:46:11', '2018-05-21 10:46:11'),
(3, 1, 13, 'حسبي الله', '2018-05-21 11:54:40', '2018-05-21 11:54:40');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_05_19_094411_create_roles_table', 1),
(4, '2018_05_19_094625_create_roles_users_table', 1),
(5, '2018_05_19_095006_create_categories_table', 1),
(6, '2018_05_19_095105_create_books_table', 1),
(7, '2018_05_19_102811_create_comments_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admins', NULL, NULL),
(2, 'users', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles_users`
--

CREATE TABLE `roles_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles_users`
--

INSERT INTO `roles_users` (`id`, `user_id`, `role_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL),
(2, 2, 2, NULL, NULL),
(3, 3, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'taha', 'taha@gmail.com', '$2y$10$2wPSoc0W8jev3hklOTcJ6utGToeL2Tzf/tE.Rc5a2YQSLtryjFXPu', 'oiCKn2toW6aEmO7gi5ai8BBAyU5uWuDlXxA8uUlUg1LWboARXFukjHoveAgy', '2018-05-20 07:19:13', '2018-05-20 07:19:13'),
(2, 'obad', 'obad@gmail.com', '$2y$10$glSAninaPlGO1odYtfz/COTuvoyDTM4eGuKLvtMB6mqg2ZXtdXlyW', 'sBFPGs1E44mwQa9EmVDVS4hwQniHl4Aioq4gNdnPHBNPC6tK9mfN9swIk2bD', '2018-05-20 07:19:33', '2018-05-20 07:19:33'),
(3, 'gmal', 'gmal@gmail.com', '$2y$10$f4ApUV8mHgcqh47RLMSwNuUPZn39v/4WfR0f8lpfGmEjkDlU7TNZO', 'rGJKTfsQkxPq75QYNXWBsByUxLZVbn9alXglvrYzIdlzWx7oKEllzZmmTKAk', '2018-05-21 10:21:18', '2018-05-21 10:21:18');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles_users`
--
ALTER TABLE `roles_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `roles_users`
--
ALTER TABLE `roles_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
