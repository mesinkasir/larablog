-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 02, 2020 at 10:23 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `larab`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `on_post` bigint(20) UNSIGNED NOT NULL,
  `from_user` bigint(20) UNSIGNED NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_03_24_033538_posts', 1),
(5, '2020_03_24_033638_comments', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `author_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `author_id`, `title`, `body`, `slug`, `active`, `created_at`, `updated_at`) VALUES
(5, 1, 'Laravel Blog', '<p>This is a blogging platform develope using laravel php artisan.</p>\r\n<p>Simple and fast for create new modern website or blog with laravel framework.</p>\r\n<p>All your post will displaying on this blog page, or you can change display blog , just change your routes folder and change code on web.php files with your needed.</p>\r\n<p>Lets get started write now with laravel php artisan</p>\r\n<p><a href=\"../download-laravel-blogs\">Donwload now &rarr;</a></p>', 'laravel-blog', 1, '2020-09-01 12:30:43', '2020-09-01 14:07:46'),
(6, 1, 'Download Laravel Blogs', '<p>Download Laravel Blogs</p>\r\n<p>You can download on sourceforge or fork from github.</p>\r\n<p>Download laravel blogs and move to your project folder, for the first you need install third party application for run this modern blog platform.</p>\r\n<p>Or download link : <a href=\"https://www.apachefriends.org/download.html\">Xampp server &rarr;</a> | <a href=\"https://git-scm.com/downloads\">Git &rarr;</a> | <a href=\"https://getcomposer.org/Composer-Setup.exe\">Composer &rarr;</a></p>\r\n<p>Download and run all third party application, for xampp you need configure to auto start apache and mysql, because we use mysql for databased and apache for web server on local host.</p>\r\n<p>After download and install all application now you can run with git, just right click on laravel blog folder and select git bash here , and we need to install laravel then run command : <strong>composer global require \"laravel/installer=~1.1\"</strong></p>\r\n<p>Run Xampp web server , and open localhost/phpmyadmin on your web browser you can using google chrome or mozila or your favorite web browser, and create new mysql databased , just click database - database name (name it with <strong>laravelblog</strong>) - create.</p>\r\n<p>After new databased create now you can click on import databased , and import laravelblog.sql file.</p>\r\n<p>now open your laravel blog folder copy .env example file and rename to .env , open .env file with your code editor ,you can using notepad if you wan, and edit the code configure with your databased.</p>\r\n<p>by default you can use this</p>\r\n<p>DB_CONNECTION=mysql<br />DB_HOST=127.0.0.1<br />DB_PORT=3304<br />DB_DATABASE=laravelblog<br />DB_USERNAME=root<br />DB_PASSWORD=</p>\r\n<p>After configuration database connection, now back to laravel blog folder , right click an select git bash , run comand again : <strong>composer install &amp;&amp; npm install &amp;&amp; php artisan key:generate &amp;&amp; php artisan serve</strong></p>\r\n<p>Open web browser and visit localhost:8000</p>\r\n<p>now you can use laravel blogs. lets get started write a content&nbsp; !!</p>\r\n<p><a href=\"../get-started-now\">Next leason &rarr;</a></p>', 'download-laravel-blogs', 1, '2020-09-01 12:54:26', '2020-09-01 13:27:33'),
(7, 1, 'Get Started Now', '<p>Lets Get started and how to use laravel blog.</p>\r\n<p>For create or write a content articel you can click Add new post on left menu , insert a title and write content. after finish just click publish for published your content.</p>\r\n<p>Edit content : if you wan to edit content just click edit on right menu in post, edit and update it.</p>\r\n<p>Template : For change link on left menu just edit template on : laravelblog folder\\resources\\views\\layouts\\<strong>app.blade.php</strong> for home page, and <strong>blog.blade.php</strong> for blog article, change URL menu with your post and rename menu with your needed.</p>\r\n<p>For login page you can visit url : localhost:8000/auth/login.</p>\r\n<p>By default the databased is empty so you can register with your account, and login for use this blog apps.</p>\r\n<p>or using <a href=\"mailto:admin@admin.com\">admin@admin.com</a> and password : 12345678</p>\r\n<p>How to change home page : just open on laravelblog\\routes\\web.php</p>\r\n<p>and change code with text editor / notepad from :</p>\r\n<p><strong>Route::get(\'/\', function () {</strong><br /><strong>&nbsp;&nbsp;&nbsp; return view(\'/welcome\');</strong><br /><strong>});</strong><br /><br /><strong>Route::get(\'/home\', \'PostController@index\');</strong><br /><strong>Route::get(\'/home\', [\'as\' =&gt; \'home\', \'uses\' =&gt; \'PostController@index\']);</strong></p>\r\n<p>to<br /><br /><strong>Route::get(\'/\', \'PostController@index\');</strong><br /><strong>Route::get(\'/home\', [\'as\' =&gt; \'home\', \'uses\' =&gt; \'PostController@index\']);</strong></p>\r\n<p>How to upload on shared hosting ?? For first zip your laravelblog project, and upload on your host , create mysql databased, and import laravelblog.sql db , configure connection on .env file, and accsess it on yourwebsite.com/public , if you wan to accses with yourwebsite.com you can copy public file folder and paste on public_html and configuration on index.php change the code like this :</p>\r\n<p><br /><strong>require __DIR__.\'/vendor/autoload.php\';</strong></p>\r\n<p><strong>$app = require_once __DIR__.\'/bootstrap/app.php\';</strong></p>\r\n<p>enjoy it and hapy blogging with laravel php artisan, if you need create modern website or Point of sale apps you can contact us. or visit we web app on : <a href=\"https://mesinkasironline.web.app\">mesinkasironline.web.app</a></p>', 'get-started-now', 1, '2020-09-01 13:10:52', '2020-09-01 13:35:47');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` enum('admin','author','subscriber') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'author',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@admin.com', NULL, '$2y$10$tFf9lohxXmvnAZ/jxTfVbuOFqb9MO6ysxZhg8jTNPeo0Rn6T4rWNu', 'author', NULL, '2020-09-01 10:31:26', '2020-09-01 10:31:26');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_on_post_foreign` (`on_post`),
  ADD KEY `comments_from_user_foreign` (`from_user`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
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
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_title_unique` (`title`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`),
  ADD KEY `posts_author_id_foreign` (`author_id`);

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
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_from_user_foreign` FOREIGN KEY (`from_user`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `comments_on_post_foreign` FOREIGN KEY (`on_post`) REFERENCES `posts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_author_id_foreign` FOREIGN KEY (`author_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
