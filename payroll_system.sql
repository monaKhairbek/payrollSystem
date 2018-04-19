-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 20, 2018 at 01:28 AM
-- Server version: 5.7.21-0ubuntu0.16.04.1
-- PHP Version: 7.2.4-1+ubuntu16.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `payroll_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `publish_datetime` datetime NOT NULL,
  `featured_image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cannonical_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('Published','Draft','InActive','Scheduled') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blog_categories`
--

CREATE TABLE `blog_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_by` int(10) UNSIGNED NOT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blog_map_categories`
--

CREATE TABLE `blog_map_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `blog_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blog_map_tags`
--

CREATE TABLE `blog_map_tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `blog_id` int(10) UNSIGNED NOT NULL,
  `tag_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blog_tags`
--

CREATE TABLE `blog_tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_by` int(10) UNSIGNED NOT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `bonus` decimal(8,2) NOT NULL DEFAULT '10.00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`id`, `title`, `created_at`, `updated_at`, `deleted_at`, `bonus`) VALUES
(2, 'Sales', NULL, NULL, NULL, '10.00');

-- --------------------------------------------------------

--
-- Table structure for table `email_templates`
--

CREATE TABLE `email_templates` (
  `id` int(10) UNSIGNED NOT NULL,
  `type_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_by` int(10) UNSIGNED NOT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `email_templates`
--

INSERT INTO `email_templates` (`id`, `type_id`, `title`, `subject`, `body`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'User Registration', 'You have succesfully registerd', '<center>\n<table id="bodyTable" border="0" width="100%" cellspacing="0" cellpadding="0" align="center">\n<tbody>\n<tr>\n<td id="bodyCell" align="center" valign="top">\n<table id="templateContainer" border="0" width="600" cellspacing="0" cellpadding="0" align="center">\n<tbody>\n<tr>\n<td align="left" valign="top">\n<table id="templateBody" border="0" width="600" cellspacing="0" cellpadding="0">\n<tbody>\n<tr>\n<td class="bodyContainer" style="padding-top: 9px; padding-bottom: 9px;" valign="top">\n<table class="mcnBoxedTextBlock" border="0" width="100%" cellspacing="0" cellpadding="0">\n<tbody class="mcnBoxedTextBlockOuter">\n<tr>\n<td class="mcnBoxedTextBlockInner" valign="top">\n<table class="mcnBoxedTextContentContainer" border="0" width="600" cellspacing="0" cellpadding="0" align="left">\n<tbody>\n<tr>\n<td style="padding: 9px 18px 9px 18px;">\n<table class="mcnTextContentContainer" style="background-color: #ffffff;" border="0" width="100%" cellspacing="0" cellpadding="18">\n<tbody>\n<tr>\n<td class="mcnTextContent" style="font-family: Helvetica Neue, Helvetica, Arial, sans-serif; text-align: left; padding: 36px; word-break: break-word;" valign="top">\n<div style="text-align: left; word-wrap: break-word;">Thank you for joining [app_name]! To finish signing up, you just need to confirm your account. <br /> <br />To confirm your email, please click this link:&nbsp;[confirmation_link] <br /> <br />Welcome and thanks! <br />[app_name] Team\n<div class="footer" style="font-size: 0.7em; padding: 0px; font-family: Helvetica Neue, Helvetica, Arial, sans-serif; text-align: right; color: #777777; line-height: 14px; margin-top: 36px;">&copy; [app_name]</div>\n</div>\n</td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n</tbody>\n</table>\n<!-- // END BODY --></td>\n</tr>\n</tbody>\n</table>\n<!-- // END TEMPLATE --></td>\n</tr>\n</tbody>\n</table>\n</center>', 1, 1, NULL, '2018-04-18 17:56:41', '2018-04-18 17:56:41', NULL),
(2, 2, 'Create User', 'Congratulations! your account has been created', '<center>\n<table id="bodyTable" border="0" width="100%" cellspacing="0" cellpadding="0" align="center">\n<tbody>\n<tr>\n<td id="bodyCell" align="center" valign="top">\n<table id="templateContainer" border="0" width="600" cellspacing="0" cellpadding="0" align="center">\n<tbody>\n<tr>\n<td align="left" valign="top">\n<table id="templateBody" border="0" width="600" cellspacing="0" cellpadding="0">\n<tbody>\n<tr>\n<td class="bodyContainer" style="padding-top: 9px; padding-bottom: 9px;" valign="top">\n<table class="mcnBoxedTextBlock" border="0" width="100%" cellspacing="0" cellpadding="0">\n<tbody class="mcnBoxedTextBlockOuter">\n<tr>\n<td class="mcnBoxedTextBlockInner" valign="top">\n<table class="mcnBoxedTextContentContainer" border="0" width="600" cellspacing="0" cellpadding="0" align="left">\n<tbody>\n<tr>\n<td style="padding: 9px 18px 9px 18px;">\n<table class="mcnTextContentContainer" style="background-color: #ffffff;" border="0" width="100%" cellspacing="0" cellpadding="18">\n<tbody>\n<tr>\n<td class="mcnTextContent" style="font-family: Helvetica Neue, Helvetica, Arial, sans-serif; text-align: left; padding: 36px; word-break: break-word;" valign="top">\n<div style="text-align: left; word-wrap: break-word;">Congratulations! your account has been created</div>\n<div style="text-align: left; word-wrap: break-word;">&nbsp;</div>\n<div style="text-align: left; word-wrap: break-word;">&nbsp;</div>\n<div style="text-align: left; word-wrap: break-word;">Your credentials are as below</div>\n<div style="text-align: left; word-wrap: break-word;">&nbsp;</div>\n<div style="text-align: left; word-wrap: break-word;">Email - [email]</div>\n<div style="text-align: left; word-wrap: break-word;">Password - [password]</div>\n<div style="text-align: left; word-wrap: break-word;">&nbsp;</div>\n<div style="text-align: left; word-wrap: break-word;"><br />Welcome and thanks! <br />[app_name] Team\n<div class="footer" style="font-size: 0.7em; padding: 0px; font-family: Helvetica Neue, Helvetica, Arial, sans-serif; text-align: right; color: #777777; line-height: 14px; margin-top: 36px;">&copy; [app_name]</div>\n</div>\n</td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n</tbody>\n</table>\n<!-- // END BODY --></td>\n</tr>\n</tbody>\n</table>\n<!-- // END TEMPLATE --></td>\n</tr>\n</tbody>\n</table>\n</center>', 1, 1, NULL, '2018-04-18 17:56:41', '2018-04-18 17:56:41', NULL),
(3, 3, 'Activate / Deactivate User', 'Your account has been [status]', '<center>\n<table id="bodyTable" border="0" width="100%" cellspacing="0" cellpadding="0" align="center">\n<tbody>\n<tr>\n<td id="bodyCell" align="center" valign="top">\n<table id="templateContainer" border="0" width="600" cellspacing="0" cellpadding="0" align="center">\n<tbody>\n<tr>\n<td align="left" valign="top">\n<table id="templateBody" border="0" width="600" cellspacing="0" cellpadding="0">\n<tbody>\n<tr>\n<td class="bodyContainer" style="padding-top: 9px; padding-bottom: 9px;" valign="top">\n<table class="mcnBoxedTextBlock" border="0" width="100%" cellspacing="0" cellpadding="0">\n<tbody class="mcnBoxedTextBlockOuter">\n<tr>\n<td class="mcnBoxedTextBlockInner" valign="top">\n<table class="mcnBoxedTextContentContainer" border="0" width="600" cellspacing="0" cellpadding="0" align="left">\n<tbody>\n<tr>\n<td style="padding: 9px 18px 9px 18px;">\n<table class="mcnTextContentContainer" style="background-color: #ffffff;" border="0" width="100%" cellspacing="0" cellpadding="18">\n<tbody>\n<tr>\n<td class="mcnTextContent" style="font-family: Helvetica Neue, Helvetica, Arial, sans-serif; text-align: left; padding: 36px; word-break: break-word;" valign="top">\n<div style="text-align: left; word-wrap: break-word;">Your account has been [status].<br /> <br />Welcome and thanks! <br />[app_name] Team\n<div class="footer" style="font-size: 0.7em; padding: 0px; font-family: Helvetica Neue, Helvetica, Arial, sans-serif; text-align: right; color: #777777; line-height: 14px; margin-top: 36px;">&copy; [app_name]</div>\n</div>\n</td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n</tbody>\n</table>\n<!-- // END BODY --></td>\n</tr>\n</tbody>\n</table>\n<!-- // END TEMPLATE --></td>\n</tr>\n</tbody>\n</table>\n</center>', 1, 1, NULL, '2018-04-18 17:56:41', '2018-04-18 17:56:41', NULL),
(4, 4, 'Change Password', 'Your passwprd has been changed successfully', '<center>\n<table id="bodyTable" border="0" width="100%" cellspacing="0" cellpadding="0" align="center">\n<tbody>\n<tr>\n<td id="bodyCell" align="center" valign="top">\n<table id="templateContainer" border="0" width="600" cellspacing="0" cellpadding="0" align="center">\n<tbody>\n<tr>\n<td align="left" valign="top">\n<table id="templateBody" border="0" width="600" cellspacing="0" cellpadding="0">\n<tbody>\n<tr>\n<td class="bodyContainer" style="padding-top: 9px; padding-bottom: 9px;" valign="top">\n<table class="mcnBoxedTextBlock" border="0" width="100%" cellspacing="0" cellpadding="0">\n<tbody class="mcnBoxedTextBlockOuter">\n<tr>\n<td class="mcnBoxedTextBlockInner" valign="top">\n<table class="mcnBoxedTextContentContainer" border="0" width="600" cellspacing="0" cellpadding="0" align="left">\n<tbody>\n<tr>\n<td style="padding: 9px 18px 9px 18px;">\n<table class="mcnTextContentContainer" style="background-color: #ffffff;" border="0" width="100%" cellspacing="0" cellpadding="18">\n<tbody>\n<tr>\n<td class="mcnTextContent" style="font-family: Helvetica Neue, Helvetica, Arial, sans-serif; text-align: left; padding: 36px; word-break: break-word;" valign="top">\n<div style="text-align: left; word-wrap: break-word;">Your password has been changed successfully.</div>\n<div style="text-align: left; word-wrap: break-word;">&nbsp;</div>\n<div style="text-align: left; word-wrap: break-word;">New password : [password]<br /> <br />Welcome and thanks! <br />[app_name] Team\n<div class="footer" style="font-size: 0.7em; padding: 0px; font-family: Helvetica Neue, Helvetica, Arial, sans-serif; text-align: right; color: #777777; line-height: 14px; margin-top: 36px;">&copy; [app_name]</div>\n</div>\n</td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n</tbody>\n</table>\n</td>\n</tr>\n</tbody>\n</table>\n<!-- // END BODY --></td>\n</tr>\n</tbody>\n</table>\n<!-- // END TEMPLATE --></td>\n</tr>\n</tbody>\n</table>\n</center>', 1, 1, NULL, '2018-04-18 17:56:41', '2018-04-18 17:56:41', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `email_template_placeholders`
--

CREATE TABLE `email_template_placeholders` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `email_template_placeholders`
--

INSERT INTO `email_template_placeholders` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'app_name', '2018-04-18 17:56:40', '2018-04-18 17:56:40'),
(2, 'name', '2018-04-18 17:56:40', '2018-04-18 17:56:40'),
(3, 'email', '2018-04-18 17:56:40', '2018-04-18 17:56:40'),
(4, 'password', '2018-04-18 17:56:40', '2018-04-18 17:56:40'),
(5, 'contact-details', '2018-04-18 17:56:40', '2018-04-18 17:56:40'),
(6, 'confirmation_link', '2018-04-18 17:56:40', '2018-04-18 17:56:40'),
(7, 'password_reset_link', '2018-04-18 17:56:40', '2018-04-18 17:56:40'),
(8, 'header_logo', '2018-04-18 17:56:40', '2018-04-18 17:56:40'),
(9, 'footer_logo', '2018-04-18 17:56:40', '2018-04-18 17:56:40'),
(10, 'unscribe_link', '2018-04-18 17:56:40', '2018-04-18 17:56:40'),
(11, 'status', '2018-04-18 17:56:40', '2018-04-18 17:56:40');

-- --------------------------------------------------------

--
-- Table structure for table `email_template_types`
--

CREATE TABLE `email_template_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `email_template_types`
--

INSERT INTO `email_template_types` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Registration', '2018-04-18 17:56:40', '2018-04-18 17:56:40'),
(2, 'Create User', '2018-04-18 17:56:40', '2018-04-18 17:56:40'),
(3, 'Acivate / Deactivate User', '2018-04-18 17:56:40', '2018-04-18 17:56:40'),
(4, 'Change Password', '2018-04-18 17:56:40', '2018-04-18 17:56:40');

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` int(10) UNSIGNED NOT NULL,
  `question` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `id` int(10) UNSIGNED NOT NULL,
  `type_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `entity_id` int(10) UNSIGNED DEFAULT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `assets` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`id`, `type_id`, `user_id`, `entity_id`, `icon`, `class`, `text`, `assets`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 3, 'save', 'bg-aqua', 'trans("history.backend.users.updated") <strong>{user}</strong>', '{"user_link":["admin.access.user.show","User Test",3]}', '2018-04-19 04:35:56', '2018-04-19 04:35:56'),
(2, 2, 1, 3, 'save', 'bg-aqua', 'trans("history.backend.roles.updated") <strong>Employee</strong>', NULL, '2018-04-19 04:36:28', '2018-04-19 04:36:28');

-- --------------------------------------------------------

--
-- Table structure for table `history_types`
--

CREATE TABLE `history_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `history_types`
--

INSERT INTO `history_types` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'User', '2018-04-18 17:56:40', '2018-04-18 17:56:40'),
(2, 'Role', '2018-04-18 17:56:40', '2018-04-18 17:56:40'),
(3, 'Permission', '2018-04-18 17:56:40', '2018-04-18 17:56:40'),
(4, 'CMSPage', '2018-04-18 17:56:40', '2018-04-18 17:56:40'),
(5, 'EmailTemplate', '2018-04-18 17:56:40', '2018-04-18 17:56:40'),
(6, 'BlogTag', '2018-04-18 17:56:40', '2018-04-18 17:56:40'),
(7, 'BlogCategory', '2018-04-18 17:56:40', '2018-04-18 17:56:40'),
(8, 'Blog', '2018-04-18 17:56:40', '2018-04-18 17:56:40');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` enum('backend','frontend') COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `items` text COLLATE utf8mb4_unicode_ci,
  `created_by` int(10) UNSIGNED NOT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `type`, `name`, `items`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'backend', 'Backend Sidebar Menu', '[{"view_permission_id":"view-access-management","icon":"fa-users","open_in_new_tab":0,"url_type":"route","url":"","name":"Access Management","id":11,"content":"Access Management","children":[{"view_permission_id":"view-user-management","open_in_new_tab":0,"url_type":"route","url":"admin.access.user.index","name":"User Management","id":12,"content":"User Management"},{"view_permission_id":"view-role-management","open_in_new_tab":0,"url_type":"route","url":"admin.access.role.index","name":"Role Management","id":13,"content":"Role Management"},{"view_permission_id":"view-permission-management","open_in_new_tab":0,"url_type":"route","url":"admin.access.permission.index","name":"Permission Management","id":14,"content":"Permission Management"}]},{"view_permission_id":"view-module","icon":"fa-wrench","open_in_new_tab":0,"url_type":"route","url":"admin.modules.index","name":"Module","id":1,"content":"Module"},{"view_permission_id":"view-menu","icon":"fa-bars","open_in_new_tab":0,"url_type":"route","url":"admin.menus.index","name":"Menus","id":3,"content":"Menus"},{"view_permission_id":"view-page","icon":"fa-file-text","open_in_new_tab":0,"url_type":"route","url":"admin.pages.index","name":"Pages","id":2,"content":"Pages"},{"view_permission_id":"view-email-template","icon":"fa-envelope","open_in_new_tab":0,"url_type":"route","url":"admin.emailtemplates.index","name":"Email Templates","id":8,"content":"Email Templates"},{"view_permission_id":"edit-settings","icon":"fa-gear","open_in_new_tab":0,"url_type":"route","url":"admin.settings.edit?id=1","name":"Settings","id":9,"content":"Settings"},{"view_permission_id":"view-blog","icon":"fa-commenting","open_in_new_tab":0,"url_type":"route","url":"","name":"Blog Management","id":15,"content":"Blog Management","children":[{"view_permission_id":"view-blog-category","open_in_new_tab":0,"url_type":"route","url":"admin.blogCategories.index","name":"Blog Category Management","id":16,"content":"Blog Category Management"},{"view_permission_id":"view-blog-tag","open_in_new_tab":0,"url_type":"route","url":"admin.blogTags.index","name":"Blog Tag Management","id":17,"content":"Blog Tag Management"},{"view_permission_id":"view-blog","open_in_new_tab":0,"url_type":"route","url":"admin.blogs.index","name":"Blog Management","id":18,"content":"Blog Management"}]},{"view_permission_id":"view-faq","icon":"fa-question-circle","open_in_new_tab":0,"url_type":"route","url":"admin.faqs.index","name":"Faq Management","id":19,"content":"Faq Management"}]', 1, NULL, '2018-04-18 17:56:41', NULL, NULL);

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
(1, '2017_11_02_060149_create_blog_categories_table', 1),
(2, '2017_11_02_060149_create_blog_map_categories_table', 1),
(3, '2017_11_02_060149_create_blog_map_tags_table', 1),
(4, '2017_11_02_060149_create_blog_tags_table', 1),
(5, '2017_11_02_060149_create_blogs_table', 1),
(6, '2017_11_02_060149_create_email_template_placeholders_table', 1),
(7, '2017_11_02_060149_create_email_template_types_table', 1),
(8, '2017_11_02_060149_create_email_templates_table', 1),
(9, '2017_11_02_060149_create_faqs_table', 1),
(10, '2017_11_02_060149_create_history_table', 1),
(11, '2017_11_02_060149_create_history_types_table', 1),
(12, '2017_11_02_060149_create_modules_table', 1),
(13, '2017_11_02_060149_create_notifications_table', 1),
(14, '2017_11_02_060149_create_pages_table', 1),
(15, '2017_11_02_060149_create_password_resets_table', 1),
(16, '2017_11_02_060149_create_permission_role_table', 1),
(17, '2017_11_02_060149_create_permission_user_table', 1),
(18, '2017_11_02_060149_create_permissions_table', 1),
(19, '2017_11_02_060149_create_role_user_table', 1),
(20, '2017_11_02_060149_create_roles_table', 1),
(21, '2017_11_02_060149_create_sessions_table', 1),
(22, '2017_11_02_060149_create_settings_table', 1),
(23, '2017_11_02_060149_create_social_logins_table', 1),
(24, '2017_11_02_060149_create_users_table', 1),
(25, '2017_11_02_060152_add_foreign_keys_to_history_table', 1),
(26, '2017_11_02_060152_add_foreign_keys_to_notifications_table', 1),
(27, '2017_11_02_060152_add_foreign_keys_to_permission_role_table', 1),
(28, '2017_11_02_060152_add_foreign_keys_to_permission_user_table', 1),
(29, '2017_11_02_060152_add_foreign_keys_to_role_user_table', 1),
(30, '2017_11_02_060152_add_foreign_keys_to_social_logins_table', 1),
(31, '2017_12_10_122555_create_menus_table', 1),
(32, '2017_12_24_042039_add_null_constraint_on_created_by_on_user_table', 1),
(33, '2017_12_28_005822_add_null_constraint_on_created_by_on_role_table', 1),
(34, '2017_12_28_010952_add_null_constraint_on_created_by_on_permission_table', 1),
(35, '2018_04_18_175451_add_table_department', 2),
(36, '2018_04_18_185916_alter_table_department', 3),
(37, '2018_04_18_201059_alter_table_users', 4);

-- --------------------------------------------------------

--
-- Table structure for table `modules`
--

CREATE TABLE `modules` (
  `id` int(10) UNSIGNED NOT NULL,
  `view_permission_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'view_route',
  `created_by` int(10) UNSIGNED NOT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `modules`
--

INSERT INTO `modules` (`id`, `view_permission_id`, `name`, `url`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'view-access-management', 'Access Management', NULL, 1, NULL, '2018-04-18 17:56:42', NULL),
(2, 'view-user-management', 'User Management', 'admin.access.user.index', 1, NULL, '2018-04-18 17:56:42', NULL),
(3, 'view-role-management', 'Role Management', 'admin.access.role.index', 1, NULL, '2018-04-18 17:56:42', NULL),
(4, 'view-permission-management', 'Permission Management', 'admin.access.permission.index', 1, NULL, '2018-04-18 17:56:42', NULL),
(5, 'view-menu', 'Menus', 'admin.menus.index', 1, NULL, '2018-04-18 17:56:42', NULL),
(6, 'view-module', 'Module', 'admin.modules.index', 1, NULL, '2018-04-18 17:56:42', NULL),
(7, 'view-page', 'Pages', 'admin.pages.index', 1, NULL, '2018-04-18 17:56:42', NULL),
(8, 'view-email-template', 'Email Templates', 'admin.emailtemplates.index', 1, NULL, '2018-04-18 17:56:42', NULL),
(9, 'edit-settings', 'Settings', 'admin.settings.edit', 1, NULL, '2018-04-18 17:56:42', NULL),
(10, 'view-blog', 'Blog Management', NULL, 1, NULL, '2018-04-18 17:56:42', NULL),
(11, 'view-blog-category', 'Blog Category Management', 'admin.blogcategories.index', 1, NULL, '2018-04-18 17:56:42', NULL),
(12, 'view-blog-tag', 'Blog Tag Management', 'admin.blogtags.index', 1, NULL, '2018-04-18 17:56:42', NULL),
(13, 'view-blog', 'Blog Management', 'admin.blogs.index', 1, NULL, '2018-04-18 17:56:42', NULL),
(14, 'view-faq', 'Faq Management', 'admin.faqs.index', 1, NULL, '2018-04-18 17:56:42', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(10) UNSIGNED NOT NULL,
  `message` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1 - Dashboard , 2 - Email , 3 - Both',
  `is_read` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `message`, `user_id`, `type`, `is_read`, `created_at`, `updated_at`) VALUES
(1, 'User Logged In: Viral', 1, 1, 0, '2018-04-18 13:06:48', NULL),
(2, 'User Logged In: Viral', 1, 1, 0, '2018-04-18 14:25:52', NULL),
(3, 'User Logged In: Viral', 1, 1, 0, '2018-04-18 14:48:35', NULL),
(4, 'User Logged In: Viral', 1, 1, 0, '2018-04-18 15:11:53', NULL),
(5, 'User Logged In: Viral', 1, 1, 0, '2018-04-18 15:58:35', NULL),
(6, 'User Logged In: Viral', 1, 1, 0, '2018-04-18 16:40:57', NULL),
(7, 'User Logged In: Viral', 1, 1, 0, '2018-04-18 17:08:54', NULL),
(8, 'User Logged In: Viral', 1, 1, 0, '2018-04-18 17:52:18', NULL),
(9, 'User Logged In: Viral', 1, 1, 0, '2018-04-19 03:56:05', NULL),
(10, 'User Logged In: Viral', 1, 1, 0, '2018-04-19 04:12:04', NULL),
(11, 'User Logged In: Viral', 1, 1, 0, '2018-04-19 14:20:10', NULL),
(12, 'User Logged In: Viral', 1, 1, 0, '2018-04-19 16:10:08', NULL),
(13, 'User Logged In: Viral', 1, 1, 0, '2018-04-19 18:02:27', NULL),
(14, 'User Logged In: Viral', 1, 1, 0, '2018-04-19 18:24:53', NULL),
(15, 'User Logged In: Viral', 1, 1, 0, '2018-04-19 19:13:11', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `page_slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `cannonical_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_keyword` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_description` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_by` int(10) UNSIGNED NOT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `title`, `page_slug`, `description`, `cannonical_link`, `seo_title`, `seo_keyword`, `seo_description`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Terms and conditions', 'terms-and-conditions', 'terms and conditions', NULL, NULL, NULL, NULL, 1, 1, NULL, '2018-04-18 17:56:41', '2018-04-18 17:56:41', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sort` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `display_name`, `sort`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'view-backend', 'View Backend', 1, 1, 1, NULL, '2018-04-18 17:56:35', '2018-04-18 17:56:35', NULL),
(2, 'view-frontend', 'View Frontend', 2, 1, 1, NULL, '2018-04-18 17:56:35', '2018-04-18 17:56:35', NULL),
(3, 'view-access-management', 'View Access Management', 3, 1, 1, NULL, '2018-04-18 17:56:35', '2018-04-18 17:56:35', NULL),
(4, 'view-user-management', 'View User Management', 4, 1, 1, NULL, '2018-04-18 17:56:35', '2018-04-18 17:56:35', NULL),
(5, 'view-active-user', 'View Active User', 5, 1, 1, NULL, '2018-04-18 17:56:35', '2018-04-18 17:56:35', NULL),
(6, 'view-deactive-user', 'View Deactive User', 6, 1, 1, NULL, '2018-04-18 17:56:35', '2018-04-18 17:56:35', NULL),
(7, 'view-deleted-user', 'View Deleted User', 7, 1, 1, NULL, '2018-04-18 17:56:35', '2018-04-18 17:56:35', NULL),
(8, 'show-user', 'Show User Details', 8, 1, 1, NULL, '2018-04-18 17:56:35', '2018-04-18 17:56:35', NULL),
(9, 'create-user', 'Create User', 9, 1, 1, NULL, '2018-04-18 17:56:35', '2018-04-18 17:56:35', NULL),
(10, 'edit-user', 'Edit User', 9, 1, 1, NULL, '2018-04-18 17:56:35', '2018-04-18 17:56:35', NULL),
(11, 'delete-user', 'Delete User', 10, 1, 1, NULL, '2018-04-18 17:56:35', '2018-04-18 17:56:35', NULL),
(12, 'activate-user', 'Activate User', 11, 1, 1, NULL, '2018-04-18 17:56:35', '2018-04-18 17:56:35', NULL),
(13, 'deactivate-user', 'Deactivate User', 12, 1, 1, NULL, '2018-04-18 17:56:35', '2018-04-18 17:56:35', NULL),
(14, 'login-as-user', 'Login As User', 13, 1, 1, NULL, '2018-04-18 17:56:35', '2018-04-18 17:56:35', NULL),
(15, 'clear-user-session', 'Clear User Session', 14, 1, 1, NULL, '2018-04-18 17:56:35', '2018-04-18 17:56:35', NULL),
(16, 'view-role-management', 'View Role Management', 15, 1, 1, NULL, '2018-04-18 17:56:35', '2018-04-18 17:56:35', NULL),
(17, 'create-role', 'Create Role', 16, 1, 1, NULL, '2018-04-18 17:56:35', '2018-04-18 17:56:35', NULL),
(18, 'edit-role', 'Edit Role', 17, 1, 1, NULL, '2018-04-18 17:56:35', '2018-04-18 17:56:35', NULL),
(19, 'delete-role', 'Delete Role', 18, 1, 1, NULL, '2018-04-18 17:56:35', '2018-04-18 17:56:35', NULL),
(20, 'view-permission-management', 'View Permission Management', 19, 1, 1, NULL, '2018-04-18 17:56:35', '2018-04-18 17:56:35', NULL),
(21, 'create-permission', 'Create Permission', 20, 1, 1, NULL, '2018-04-18 17:56:35', '2018-04-18 17:56:35', NULL),
(22, 'edit-permission', 'Edit Permission', 21, 1, 1, NULL, '2018-04-18 17:56:35', '2018-04-18 17:56:35', NULL),
(23, 'delete-permission', 'Delete Permission', 22, 1, 1, NULL, '2018-04-18 17:56:35', '2018-04-18 17:56:35', NULL),
(24, 'view-page', 'View Page', 23, 1, 1, NULL, '2018-04-18 17:56:35', '2018-04-18 17:56:35', NULL),
(25, 'create-page', 'Create Page', 24, 1, 1, NULL, '2018-04-18 17:56:35', '2018-04-18 17:56:35', NULL),
(26, 'edit-page', 'Edit Page', 25, 1, 1, NULL, '2018-04-18 17:56:35', '2018-04-18 17:56:35', NULL),
(27, 'delete-page', 'Delete Page', 26, 1, 1, NULL, '2018-04-18 17:56:36', '2018-04-18 17:56:36', NULL),
(28, 'view-email-template', 'View Email Templates', 27, 1, 1, NULL, '2018-04-18 17:56:36', '2018-04-18 17:56:36', NULL),
(29, 'create-email-template', 'Create Email Templates', 28, 1, 1, NULL, '2018-04-18 17:56:36', '2018-04-18 17:56:36', NULL),
(30, 'edit-email-template', 'Edit Email Templates', 29, 1, 1, NULL, '2018-04-18 17:56:36', '2018-04-18 17:56:36', NULL),
(31, 'delete-email-template', 'Delete Email Templates', 30, 1, 1, NULL, '2018-04-18 17:56:36', '2018-04-18 17:56:36', NULL),
(32, 'edit-settings', 'Edit Settings', 31, 1, 1, NULL, '2018-04-18 17:56:36', '2018-04-18 17:56:36', NULL),
(33, 'view-blog-category', 'View Blog Categories Management', 32, 1, 1, NULL, '2018-04-18 17:56:36', '2018-04-18 17:56:36', NULL),
(34, 'create-blog-category', 'Create Blog Category', 33, 1, 1, NULL, '2018-04-18 17:56:36', '2018-04-18 17:56:36', NULL),
(35, 'edit-blog-category', 'Edit Blog Category', 34, 1, 1, NULL, '2018-04-18 17:56:36', '2018-04-18 17:56:36', NULL),
(36, 'delete-blog-category', 'Delete Blog Category', 35, 1, 1, NULL, '2018-04-18 17:56:36', '2018-04-18 17:56:36', NULL),
(37, 'view-blog-tag', 'View Blog Tags Management', 36, 1, 1, NULL, '2018-04-18 17:56:36', '2018-04-18 17:56:36', NULL),
(38, 'create-blog-tag', 'Create Blog Tag', 37, 1, 1, NULL, '2018-04-18 17:56:36', '2018-04-18 17:56:36', NULL),
(39, 'edit-blog-tag', 'Edit Blog Tag', 38, 1, 1, NULL, '2018-04-18 17:56:36', '2018-04-18 17:56:36', NULL),
(40, 'delete-blog-tag', 'Delete Blog Tag', 39, 1, 1, NULL, '2018-04-18 17:56:36', '2018-04-18 17:56:36', NULL),
(41, 'view-blog', 'View Blogs Management', 40, 1, 1, NULL, '2018-04-18 17:56:36', '2018-04-18 17:56:36', NULL),
(42, 'create-blog', 'Create Blog', 41, 1, 1, NULL, '2018-04-18 17:56:36', '2018-04-18 17:56:36', NULL),
(43, 'edit-blog', 'Edit Blog', 42, 1, 1, NULL, '2018-04-18 17:56:36', '2018-04-18 17:56:36', NULL),
(44, 'delete-blog', 'Delete Blog', 43, 1, 1, NULL, '2018-04-18 17:56:36', '2018-04-18 17:56:36', NULL),
(45, 'view-faq', 'View FAQ Management', 44, 1, 1, NULL, '2018-04-18 17:56:36', '2018-04-18 17:56:36', NULL),
(46, 'create-faq', 'Create FAQ', 45, 1, 1, NULL, '2018-04-18 17:56:36', '2018-04-18 17:56:36', NULL),
(47, 'edit-faq', 'Edit FAQ', 46, 1, 1, NULL, '2018-04-18 17:56:36', '2018-04-18 17:56:36', NULL),
(48, 'delete-faq', 'Delete FAQ', 47, 1, 1, NULL, '2018-04-18 17:56:36', '2018-04-18 17:56:36', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `id` int(10) UNSIGNED NOT NULL,
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`id`, `permission_id`, `role_id`) VALUES
(1, 1, 2),
(2, 3, 2),
(3, 4, 2),
(4, 5, 2),
(5, 6, 2),
(6, 7, 2),
(7, 8, 2),
(8, 16, 2),
(9, 20, 2),
(10, 24, 2),
(11, 25, 2),
(12, 26, 2),
(13, 27, 2),
(14, 28, 2),
(15, 29, 2),
(16, 30, 2),
(17, 31, 2),
(18, 33, 2),
(19, 34, 2),
(20, 35, 2),
(21, 36, 2),
(22, 37, 2),
(23, 38, 2),
(24, 39, 2),
(25, 40, 2),
(26, 41, 2),
(27, 42, 2),
(28, 43, 2),
(29, 44, 2),
(30, 45, 2),
(31, 46, 2),
(32, 47, 2),
(33, 48, 2),
(35, 2, 3);

-- --------------------------------------------------------

--
-- Table structure for table `permission_user`
--

CREATE TABLE `permission_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `permission_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_user`
--

INSERT INTO `permission_user` (`id`, `permission_id`, `user_id`) VALUES
(1, 42, 2),
(2, 34, 2),
(3, 38, 2),
(4, 29, 2),
(5, 46, 2),
(6, 25, 2),
(7, 44, 2),
(8, 36, 2),
(9, 40, 2),
(10, 31, 2),
(11, 48, 2),
(12, 27, 2),
(13, 43, 2),
(14, 35, 2),
(15, 39, 2),
(16, 30, 2),
(17, 47, 2),
(18, 26, 2),
(19, 8, 2),
(20, 3, 2),
(21, 5, 2),
(22, 1, 2),
(23, 33, 2),
(24, 37, 2),
(25, 41, 2),
(26, 6, 2),
(27, 7, 2),
(28, 28, 2),
(29, 45, 2),
(30, 24, 2),
(31, 20, 2),
(32, 16, 2),
(33, 4, 2),
(35, 2, 3);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `all` tinyint(1) NOT NULL DEFAULT '0',
  `sort` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `all`, `sort`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Administrator', 1, 1, 1, 1, NULL, '2018-04-18 17:56:34', '2018-04-18 17:56:34', NULL),
(2, 'Executive', 0, 2, 1, 1, NULL, '2018-04-18 17:56:34', '2018-04-18 17:56:34', NULL),
(3, 'Employee', 0, 3, 0, 1, 1, '2018-04-18 17:56:34', '2018-04-19 04:36:28', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`id`, `user_id`, `role_id`) VALUES
(1, 1, 1),
(2, 2, 2),
(4, 3, 3);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `favicon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_keyword` text COLLATE utf8mb4_unicode_ci,
  `seo_description` text COLLATE utf8mb4_unicode_ci,
  `company_contact` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_address` text COLLATE utf8mb4_unicode_ci,
  `from_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `copyright_text` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer_text` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `terms` text COLLATE utf8mb4_unicode_ci,
  `disclaimer` text COLLATE utf8mb4_unicode_ci,
  `google_analytics` text COLLATE utf8mb4_unicode_ci,
  `home_video1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `home_video2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `home_video3` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `home_video4` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `explanation1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `explanation2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `explanation3` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `explanation4` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `logo`, `favicon`, `seo_title`, `seo_keyword`, `seo_description`, `company_contact`, `company_address`, `from_name`, `from_email`, `facebook`, `linkedin`, `twitter`, `google`, `copyright_text`, `footer_text`, `terms`, `disclaimer`, `google_analytics`, `home_video1`, `home_video2`, `home_video3`, `home_video4`, `explanation1`, `explanation2`, `explanation3`, `explanation4`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, 'PayRoll System', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `social_logins`
--

CREATE TABLE `social_logins` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `provider` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `provider_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `department_id` int(11) NOT NULL,
  `salary` decimal(8,2) NOT NULL,
  `bonus` decimal(8,2) NOT NULL DEFAULT '10.00',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `confirmation_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `confirmed` tinyint(1) NOT NULL DEFAULT '0',
  `is_term_accept` tinyint(1) NOT NULL DEFAULT '0' COMMENT ' 0 = not accepted,1 = accepted',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `password`, `department_id`, `salary`, `bonus`, `status`, `confirmation_code`, `confirmed`, `is_term_accept`, `remember_token`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Viral', 'Solani', 'admin@admin.com', '$2y$10$rQ5yRUaeqirUcIZ3STcBduY8lsK1p0AVemmhiYVR9vhMH3rurytkW', 0, '0.00', '10.00', 1, 'bb6ec76df9405eac80a2af0f75d06aa3', 1, 0, 'pYpyA1sqfOm3z4S0sqlURnzOBD2oURGlmtYLlMK5wnjXKgpjhENYSCDsR2ek', 1, NULL, '2018-04-18 17:56:33', '2018-04-18 17:56:33', NULL),
(2, 'Vipul', 'Basapati', 'executive@executive.com', '$2y$10$7Fcm0RfK7JdvkCLHrnjys.MR1P28eJfgZRHbAbX7ACF6Pf0mEelKa', 0, '0.00', '10.00', 1, 'ed8a4d021decfb53c266df2d9d40f068', 1, 0, NULL, 1, NULL, '2018-04-18 17:56:33', '2018-04-18 17:56:33', NULL),
(3, 'User', 'Test', 'user@user.com', '$2y$10$nrTNI4h3rntjnNToWkzfy.Sa8PbFhiucAUYXskUF/tEs9BytbERim', 0, '0.00', '10.00', 1, '94e1910becbfe3a30f2c71d1b429a258', 1, 0, NULL, 1, NULL, '2018-04-18 17:56:33', '2018-04-19 04:35:56', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_categories`
--
ALTER TABLE `blog_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_map_categories`
--
ALTER TABLE `blog_map_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blog_map_categories_blog_id_index` (`blog_id`),
  ADD KEY `blog_map_categories_category_id_index` (`category_id`);

--
-- Indexes for table `blog_map_tags`
--
ALTER TABLE `blog_map_tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blog_map_tags_blog_id_index` (`blog_id`),
  ADD KEY `blog_map_tags_tag_id_index` (`tag_id`);

--
-- Indexes for table `blog_tags`
--
ALTER TABLE `blog_tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_templates`
--
ALTER TABLE `email_templates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email_templates_type_id_index` (`type_id`);

--
-- Indexes for table `email_template_placeholders`
--
ALTER TABLE `email_template_placeholders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_template_types`
--
ALTER TABLE `email_template_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `history_type_id_foreign` (`type_id`),
  ADD KEY `history_user_id_foreign` (`user_id`);

--
-- Indexes for table `history_types`
--
ALTER TABLE `history_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `modules`
--
ALTER TABLE `modules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_user_id_foreign` (`user_id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_page_slug_unique` (`page_slug`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_unique` (`name`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permission_role_permission_id_foreign` (`permission_id`),
  ADD KEY `permission_role_role_id_foreign` (`role_id`);

--
-- Indexes for table `permission_user`
--
ALTER TABLE `permission_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permission_user_permission_id_foreign` (`permission_id`),
  ADD KEY `permission_user_user_id_foreign` (`user_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_user_user_id_foreign` (`user_id`),
  ADD KEY `role_user_role_id_foreign` (`role_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD UNIQUE KEY `sessions_id_unique` (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_logins`
--
ALTER TABLE `social_logins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `social_logins_user_id_foreign` (`user_id`);

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
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `blog_categories`
--
ALTER TABLE `blog_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `blog_map_categories`
--
ALTER TABLE `blog_map_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `blog_map_tags`
--
ALTER TABLE `blog_map_tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `blog_tags`
--
ALTER TABLE `blog_tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `email_templates`
--
ALTER TABLE `email_templates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `email_template_placeholders`
--
ALTER TABLE `email_template_placeholders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `email_template_types`
--
ALTER TABLE `email_template_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `history`
--
ALTER TABLE `history`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `history_types`
--
ALTER TABLE `history_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT for table `modules`
--
ALTER TABLE `modules`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
--
-- AUTO_INCREMENT for table `permission_role`
--
ALTER TABLE `permission_role`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT for table `permission_user`
--
ALTER TABLE `permission_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `social_logins`
--
ALTER TABLE `social_logins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `history`
--
ALTER TABLE `history`
  ADD CONSTRAINT `history_type_id_foreign` FOREIGN KEY (`type_id`) REFERENCES `history_types` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `history_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `notifications`
--
ALTER TABLE `notifications`
  ADD CONSTRAINT `notifications_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_user`
--
ALTER TABLE `permission_user`
  ADD CONSTRAINT `permission_user_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `social_logins`
--
ALTER TABLE `social_logins`
  ADD CONSTRAINT `social_logins_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
