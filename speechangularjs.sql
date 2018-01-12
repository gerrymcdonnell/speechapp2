-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 12, 2018 at 05:24 PM
-- Server version: 10.1.10-MariaDB
-- PHP Version: 5.6.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `speechangularjs`
--

-- --------------------------------------------------------

--
-- Table structure for table `bannerimages`
--

CREATE TABLE `bannerimages` (
  `id` int(11) NOT NULL,
  `title` varchar(150) NOT NULL,
  `description` text NOT NULL,
  `imagepath` varchar(255) NOT NULL,
  `thumbpath` varchar(255) NOT NULL,
  `linkurl` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bannerimages`
--

INSERT INTO `bannerimages` (`id`, `title`, `description`, `imagepath`, `thumbpath`, `linkurl`, `created`, `modified`) VALUES
(3, '2.jpg', '2.jpg', '2.jpg', 'thumbs/2.jpg', 'test.htm', '2015-06-18 19:23:46', '2015-06-18 19:57:56'),
(4, '1', '1', '1.jpg', 'thumbs/1.jpg', '', '2015-06-18 19:23:57', '2015-06-18 20:00:03'),
(5, 'ngnfgn', 'nbnnbn', '3.jpg', '', '', '2016-02-27 18:46:08', '2016-02-27 18:46:08');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `title`, `description`, `user_id`, `created`, `modified`) VALUES
(1, 'plugins', '', 50, '2015-06-07 21:57:53', '2015-06-07 21:57:53'),
(2, 'articles', '', 50, '2015-06-07 21:58:07', '2015-06-07 21:58:07'),
(3, 'None', '', 50, '2015-06-10 22:47:42', '2015-06-10 22:47:42'),
(4, 'News Log', 'Items added or changed in app.', 50, '2015-06-10 22:51:26', '2015-06-10 22:51:26'),
(5, 'core issues', 'high problems like xampp version change,cake version change etc.', 50, '2016-02-12 14:58:59', '2016-02-12 14:58:59');

-- --------------------------------------------------------

--
-- Table structure for table `changelogs`
--

CREATE TABLE `changelogs` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `solution` text NOT NULL,
  `priority` varchar(10) NOT NULL DEFAULT 'normal',
  `status` varchar(15) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `category_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `changelogs`
--

INSERT INTO `changelogs` (`id`, `title`, `description`, `solution`, `priority`, `status`, `user_id`, `category_id`, `created`, `modified`) VALUES
(1, 'new db table : Changelogs', 'keep track of fixes and improvesmens to make', '', 'normal', 'closed', 0, 0, '2015-04-18 20:51:52', '2015-04-20 21:17:19'),
(2, 'usernames and words are unique', '', '', 'normal', '', 0, 0, '2015-04-18 20:51:52', '0000-00-00 00:00:00'),
(4, 'gfhgfhgf', 'hffg', '', 'normal', '', 0, 0, '2015-04-18 20:51:52', '0000-00-00 00:00:00'),
(5, 'fixed login auth system', 'should be working', '', 'normal', '', 0, 0, '2015-04-18 20:51:52', '0000-00-00 00:00:00'),
(6, 'added password matching,custom menus,patients table', '', '', 'normal', '', 0, 0, '2015-04-18 20:51:52', '0000-00-00 00:00:00'),
(7, 'added json and xml for exercises controller', 'http://book.cakephp.org/2.0/en/views/json-and-xml-views.html', '', 'normal', '', 0, 0, '2015-04-18 20:51:52', '0000-00-00 00:00:00'),
(8, 'testing GSON', 'takes a json string and turns it into a  an object', '', 'normal', '', 0, 0, '2015-04-18 20:51:52', '0000-00-00 00:00:00'),
(9, 'testing Android volley library', 'login works but making another call?', '', 'normal', '', 0, 0, '2015-04-18 20:51:52', '0000-00-00 00:00:00'),
(10, 'auth digest testing', 'could get digest auth to work also tried basic auth see app controller. default auth is form.', '', 'normal', '', 0, 0, '2015-04-18 20:51:52', '0000-00-00 00:00:00'),
(11, 'added jinx bar menu', '', '', 'Normal', '', 0, 0, '2015-04-18 20:51:52', '0000-00-00 00:00:00'),
(12, 'added REST services for words and exercises (mifyis bored tutorial)', 'http://miftyisbored.com/complete-restful-service-client-cakephp-tutorial/\r\n\r\nhttp://book.cakephp.org/2.0/en/development/rest.html', '', 'normal', '', 0, 0, '2015-04-18 20:51:52', '0000-00-00 00:00:00'),
(13, 'tested out different login types: form,basic and digest', 'Digest wont work', '', 'normal', '', 0, 0, '2015-04-18 20:51:52', '0000-00-00 00:00:00'),
(14, 'added patient to exercises', 'created drop down list of patients to assing to exercises.', '', 'normal', '', 0, 0, '2015-04-18 20:51:52', '0000-00-00 00:00:00'),
(15, 'andoid api login works for digest??', 'digest login wont work in browser not sure whats wrong', '', 'normal', '', 0, 0, '2015-04-18 20:51:52', '0000-00-00 00:00:00'),
(16, 'Digest Android login testing', 'nope i was wrong i wasnt login in digest mode!', '', 'normal', 'closed', 0, 0, '2015-04-18 20:51:52', '2015-04-19 20:40:17'),
(17, 'to do: make multiple login modes for form,digest and basic', 'http://book.cakephp.org/2.0/en/core-libraries/components/authentication.html', '', 'normal', '', 0, 0, '2015-04-18 20:51:52', '0000-00-00 00:00:00'),
(18, 'Word phrases/common phrases', 'common phrases the patient will use.', '', 'normal', '', 0, 0, '2015-04-18 20:51:52', '0000-00-00 00:00:00'),
(19, 'login mode=form and user must be logged in to do anything', 'the app should deny index view as default', '', 'High', '', 0, 0, '2015-04-18 20:51:52', '0000-00-00 00:00:00'),
(20, 'added phrases', 'added phrases to menus', '', 'Normal', '', 0, 0, '2015-04-18 20:51:52', '0000-00-00 00:00:00'),
(21, 'added function too bootstrap.php ', 'to check if item belongs to the logged in user if not they cant edit or delete unless they are admin', '', 'Normal', '', 0, 0, '2015-04-18 20:51:52', '0000-00-00 00:00:00'),
(22, 'added phrases to exercise model ', 'and vice verca and new exercises_phrases table', '', 'Normal', '', 0, 0, '2015-04-18 20:51:52', '0000-00-00 00:00:00'),
(23, 'exercises views view and edit modifed for phrases', '', '', 'Normal', '', 0, 0, '2015-04-18 20:51:52', '0000-00-00 00:00:00'),
(24, 'added isauthroized method to user controller', 'so that a user cannot edit another user unless they are the other user or an admin', '', 'Normal', '', 0, 0, '2015-04-18 20:51:52', '0000-00-00 00:00:00'),
(25, 'added is authorized function to phrases controller', 'the loggged in user can only edit phrases that belong to them.\r\n\r\nlink\r\n\r\nhttps://github.com/cakephp/docs/blob/master/en/tutorials-and-examples/blog-auth-example/auth.rst', '', 'High', '', 0, 0, '2015-04-18 20:51:52', '0000-00-00 00:00:00'),
(28, 'to do', 'read the downloaed cakephp books for api auth tips!', '', 'High', '', 40, 0, '2015-04-18 20:51:52', '0000-00-00 00:00:00'),
(29, 'login_api_key function works (logging with the generated api key works)', 'this function works by accepting the api_key and loggin the user in.\r\n\r\nhttp://192.168.1.1/speechapp/users/login_api_key/05c4d312b202046e9ed6121f36c00b46\r\n\r\nneed to do digest version as well should be similar?', '', 'Normal', '', 40, 0, '2015-04-18 20:51:52', '0000-00-00 00:00:00'),
(30, 'added SSL - force SSL', 'added ssl to the app controller', '', 'Normal', '', 40, 0, '2015-04-18 20:51:52', '0000-00-00 00:00:00'),
(31, 'TO DO try oAuth etc tutrials', '', '', 'Normal', '', 40, 0, '2015-04-18 20:51:52', '0000-00-00 00:00:00'),
(32, 'added DEBUG KIT for cakephp', 'figure out how it works!', '', 'Normal', '', 40, 0, '2015-04-18 20:51:52', '0000-00-00 00:00:00'),
(33, 'digest auth works at last', 'the problem was the password being encryted and then made into the digest pass word.', '', 'Normal', '', NULL, 0, '2015-04-18 20:51:52', '0000-00-00 00:00:00'),
(35, 'CRUD Plugin added', 'to cut down on code ive added the crud plugin just to test it atm', '', 'Normal', '', 50, 0, '2015-04-18 20:51:52', '0000-00-00 00:00:00'),
(36, 'JSON formating for easier GSON usage', 'adding  the line\r\n\r\nAdded to the index action of;\r\nREST_Words\r\nREST_Phrases\r\n\r\n\r\n//correctly format the output\r\n$phrases= (Set::extract(''/Phrase/.'', $phrases));\r\n\r\nwill produce cleaner json results for use with android GSON library', '', 'Normal', '', 50, 0, '2015-04-18 20:51:52', '0000-00-00 00:00:00'),
(37, 'added upload plugin-thumbails dont work', 'added upload features to word model.\r\n\r\nthumnails dont work https://github.com/josegonzalez/cakephp-upload', '', 'high', 'open', 50, 0, '2015-04-18 20:51:52', '2015-04-19 20:40:58'),
(38, 'file upload wont save full path folder', 'so its kinda useless?', '', 'Normal', '', 50, 0, '2015-04-18 20:51:52', '0000-00-00 00:00:00'),
(39, 'Android Retrofit library is much better than volley ', 'got it working for the words index.json', '', 'High', '', 50, 0, '2015-04-18 20:51:52', '0000-00-00 00:00:00'),
(40, 'added checkboxes to words index view', 'add a ajax multi delete fucntion later?', '', 'Normal', '', 50, 0, '2015-04-18 20:51:52', '0000-00-00 00:00:00'),
(41, 'image uploader problems', 'no thumnails or folder paths saved.', '', 'high', 'open', 50, 0, '2015-04-18 20:51:52', '2015-04-19 20:40:41'),
(42, 'modifed the index view of this page', 'added text formatting', '', 'Normal', '', 50, 0, '2015-04-18 20:51:52', '0000-00-00 00:00:00'),
(44, 'android - retrofit library works - no SSL / http', 'theres no https support working atm need to investigate it.\r\n\r\nNote not sure if retrofit works with SSL or just donest work with self signed certs??', '', 'high', 'open', 50, 0, '2015-04-19 20:34:42', '2015-04-21 16:59:12'),
(45, 'created custom helper called GerryAppHelper', 'Purpose is to add common php functions and html tags\r\n\r\nC:\\xampp\\htdocs\\speechapp\\app\\View\\Helper\\GerryAppHelper.php', '', 'high', 'open', 50, 0, '2015-04-20 02:10:46', '2015-04-20 02:11:47'),
(46, 'fixed created and modifed fields in all db tables', 'the file type should be DATETIME', '', 'Normal', 'open', 50, 0, '2015-04-20 02:31:19', '2015-04-20 02:31:19'),
(47, 'added css menu with helper code', 'http://cssmenumaker.com/menu/flat-accented-dropdown-menu', '', 'Normal', 'open', 50, 0, '2015-04-20 03:41:29', '2015-04-20 03:41:29'),
(50, 'picture upload-dir not saved in db in words model', 'the picture_dir field doest store teh dir the image is in, as the plugin dowesnt work properly.  \r\n\r\nAlos thumbs dont work', '', 'Normal', 'open', 50, 0, '2015-04-20 16:49:10', '2015-04-20 16:49:10'),
(51, 'added virtual fields to words model to give fullpath to picture and sound files', ' public $virtualFields = array(''fullimagepath'' => ''concat("/files/word/picture/",word.id, "/", word.picture)'',\r\n					''fullsoundpath'' => ''concat("/files/word/soundfile/",word.id, "/", word.soundfile)'');\r\n\r\nAs the upload addon does not save the dir the file is in or make thumbails yet.', '', 'normal', 'open', 50, 0, '2015-04-20 18:37:12', '2015-04-20 18:38:25'),
(52, 'edit words-adding a sound file in edit mode', 'large files over 3 mb causes problems', '', 'normal', 'open', 50, 0, '2015-04-20 18:51:33', '2015-04-20 19:12:48'),
(53, 'API key login works', 'API key login now working, was using wrong api key which gave an errorr.\r\n', '', 'high', 'closed', 50, 0, '2015-04-20 19:13:23', '2015-04-20 21:15:19'),
(54, 'thumnails working added virtial fields for thumbs', '', '', 'Normal', 'open', 50, 0, '2015-04-20 20:23:30', '2015-04-20 20:23:30'),
(55, 'words=soundfile upload disabled', 'soundfile upload disabled, due to errors', '', 'Normal', 'open', 50, 0, '2015-04-20 21:08:25', '2015-04-20 21:08:25'),
(56, 'added subtitle session variable to changlog index view', 'to display the various views subtitle', '', 'Normal', 'open', 50, 0, '2015-04-20 21:34:25', '2015-04-20 21:34:25'),
(57, 'irishbloke.net - lowercase fieldnames in virtual fields', 'model name word.id must be Word.id', '', 'Normal', 'closed', 50, 0, '2015-04-27 16:34:54', '2015-04-27 16:34:54'),
(58, 'created a to z menu in gerryapphelper', 'printAtoZMenu();', '', 'Normal', 'closed', 50, 0, '2015-05-01 20:50:27', '2015-05-01 20:50:27'),
(59, 'created pages for testing elements and addons', '/pages/index \r\n\r\nlists the items, eg the cssmenu 1', '', 'Normal', 'closed', 50, 0, '2015-05-01 20:51:22', '2015-05-01 20:51:22'),
(60, 'added my words actions', 'not needed...', '', 'Normal', 'closed', 50, 0, '2015-05-01 20:53:57', '2015-05-01 20:53:57'),
(61, 'phrases belong to patients! one many or many to many??', '', '', 'high', 'open', 50, 0, '2015-05-01 20:59:22', '2015-05-01 21:08:53'),
(62, 'created cakephpview helper', 'it replaces the code in a the view.ctp eg\r\n\r\ncheckk the patient view\r\n\r\nto call it;\r\n\r\n$this->GerryCakeView->viewPrintField(''id'',$patient[''Patient''][''id'']);\r\n\r\nlinks are not supported yet.\r\n\r\n"helpers/GerryCakeViewHelper.php"', '', 'Normal', 'open', 50, 0, '2015-05-01 22:00:30', '2015-05-01 22:00:30'),
(63, 'phrases index page is done using gerrycakeviewhelper funtions', '', '', 'Normal', 'open', 50, 0, '2015-05-02 21:57:52', '2015-05-02 21:57:52'),
(64, 'css modified', 'backgroud gradiant\r\ncontent is centered', '', 'Normal', 'closed', 50, 0, '2015-05-02 21:58:35', '2015-05-02 21:58:35'),
(65, 'phrases model relationship', 'removed patient id field as phrases belong to exercises not patients really', '', 'normal', 'open', 50, 0, '2015-05-05 22:08:16', '2015-05-07 11:04:28'),
(66, 'Jixedbar helper-scrapped', 'too much effort lol!\r\n\r\neg\r\n$this->Jixedbar->addBar();', '', 'Normal', 'open', 54, 0, '2015-05-07 21:47:13', '2015-05-07 21:47:13'),
(67, 'exercises index view word and phrase delete fixed', 'http://localhost/speechapp/exercises/view/33\r\n\r\nprev it was deleting the actual word and phrase and not the one from the correct table i.e ExercisesWords and ExercisesPhrases', '', 'Normal', 'closed', 50, 0, '2015-05-14 22:23:12', '2015-05-14 22:23:12'),
(68, 'Exercise index Json is a mess', 'tried to get it working in an andorid test app and using website;\r\nhttp://www.jsonschema2pojo.org/\r\n\r\nbut i havnt had any look yet.\r\n\r\nthe outpput seems wrong;\r\n\r\n\r\nhttp://localhost/speechapp/rest_exercises/index.json', '', 'normal', 'open', 50, 0, '2015-05-14 22:24:46', '2015-05-14 22:25:09'),
(69, 'created ExercisesPhrases controller and view', 'copy and paste job not tested', '', 'Normal', 'open', 50, 0, '2015-05-14 22:26:28', '2015-05-14 22:26:28'),
(70, 'created Pushy plugin for cake!', 'see plugins!\r\n\r\nhttp://www.christopheryee.ca/pushy/', '', 'Normal', 'open', 50, 0, '2015-05-18 21:29:16', '2015-05-18 21:29:16'),
(71, 'android app - android studio displayWord() - Fixed?', 'problems with words that have no images set they appear as null in the json output\r\n\r\nNull pointer exception\r\n\r\n', 'catch the NPE error when displaying images, probably a bad solution.', 'normal', 'open', 50, 0, '2015-05-18 22:14:28', '2015-05-18 22:33:58'),
(72, 'android app: file upload - images with spaces dont display', 'filenames with a space dont display in the android app but they do in cakephp web app.\r\n', 'add % to any spaces in image name in;\r\n\r\n1)android app\r\n2) cakephp app', 'high', 'open', 50, 0, '2015-05-18 22:15:27', '2015-05-18 22:34:30'),
(73, 'added solution field to changelogs', '', '', 'Normal', 'closed', 50, 0, '2015-05-18 22:34:51', '2015-05-18 22:34:51'),
(74, 'created Jixedbarplugin!', 'still need to tidy it up and test it', '', 'Normal', 'open', 50, 0, '2015-05-20 00:59:50', '2015-05-20 00:59:50'),
(75, 'created flat-accented-dropdown-menu plugin', 'http://cssmenumaker.com/menu/flat-accented-dropdown-menu\r\n\r\n\r\nNote:\r\ndoest have level two sub items (no need) as in the demo', '', 'Normal', 'open', 50, 0, '2015-05-20 23:57:20', '2015-05-20 23:57:20'),
(76, 'modifed db added picture fields for phrases', 'modifed db added picture fields for phrases, removed 64x64 thumb.\r\n\r\nadded for add and edit actions, shows in view but not index!', 'create pics for phrase index view -done', 'normal', 'closed', 50, 0, '2015-05-21 00:14:13', '2015-05-21 21:30:37'),
(77, 'created accordian menu1 plugin', 'http://localhost/speechapp/pages/testaccordianmenu\r\n\r\nsee that page for use, built using helper', '', 'normal', 'open', 50, 0, '2015-05-21 05:10:42', '2015-05-21 05:11:24'),
(78, 'created 3d nav bar rollover menu plugin', 'http://localhost/speechapp/pages/threednavbarmenu', '', 'Normal', 'open', 50, 0, '2015-05-21 05:50:56', '2015-05-21 05:50:56'),
(79, 'created jquery ui plugin', 'added js and css and helper\r\n\r\ndont most of the helper functions\r\n\r\n', 'http://localhost/speechapp/pages/\r\n\r\nhttp://localhost/speechapp/pages/jqueryui', 'normal', 'open', 50, 0, '2015-05-21 06:31:40', '2015-05-21 21:31:04'),
(80, 'added Jssor Slider cakephp plugin', 'http://localhost/speechapp/pages/index', 'homepage \r\nhttp://www.jssor.com/demos/image-gallery-with-vertical-thumbnail.html', 'Normal', 'open', 50, 0, '2015-05-31 21:34:15', '2015-05-31 21:34:15'),
(81, 'created wt-rotator plugin (same as designerkitchens.ie)', 'http://localhost/speechapp/pages/Wtrotator/demo', '', 'Normal', 'open', 50, 0, '2015-05-31 21:35:40', '2015-05-31 21:35:40'),
(82, 'Jssorslider pages', 'Jssorslider demos are as pages in main site instead of in the plugins pages folder', 'http://stackoverflow.com/questions/30597837/how-to-view-a-cakephp-plugin-page\r\n\r\nAll page demos are now in the plugin folders, the plugin needed a copy of the page controller', 'normal', 'closed', 50, 0, '2015-06-02 15:03:34', '2015-06-03 22:32:16'),
(83, 'created plugin simple modal for login', '', '', 'Normal', 'open', 50, 0, '2015-06-03 22:31:06', '2015-06-03 22:31:06'),
(84, 'All plugin demos are contained in the plugin/pages dir', 'All plugin demos are contained in the plugin/pages dir', '', 'Normal', 'open', 50, 0, '2015-06-03 22:57:38', '2015-06-03 22:57:38'),
(85, 'all the links to plugin demos point to correct plugin', '', '', 'Normal', 'open', 50, 0, '2015-06-03 22:58:04', '2015-06-03 22:58:04'),
(86, 'fixed plugin paths for accordian menu, need to fix for others', '', '', 'Normal', 'open', 50, 0, '2015-06-03 22:58:50', '2015-06-03 22:58:50'),
(87, 'clean up Jssor slider Css files', '', '', 'Normal', 'open', 50, 0, '2015-06-05 00:14:32', '2015-06-05 00:14:32'),
(88, 'created Pgwslider plugin', 'http://localhost/speechapp/pgwslider/pages/display/demo', 'http://designscrazed.org/free-responsive-jquery-image-sliders/', 'normal', 'open', 50, 0, '2015-06-05 12:52:16', '2015-06-07 17:14:20'),
(89, 'find out about categories tree behaviour', '', '', 'Normal', 'open', 50, 0, '2015-06-05 12:52:33', '2015-06-05 12:52:33'),
(90, 'created pgwslideshow helper demo with ', 'http://localhost/speechapp/pgwslider/pages/display/slideshowdemo', '', 'Normal', 'open', 50, 0, '2015-06-05 15:40:35', '2015-06-05 15:40:35'),
(91, 'added new styled login form', 'uses the loginforms plugin and uses the element login1', '', 'Normal', 'open', 50, 0, '2015-06-07 17:06:07', '2015-06-07 17:06:07'),
(92, 'added links table to store usel websites', '', '', 'Normal', 'open', 50, 0, '2015-06-07 17:17:29', '2015-06-07 17:17:29'),
(93, 'TIP', 'to easily bake items:\r\n\r\nenter cakephp app folder then\r\nright click on app and select "enter command prompt from here"\r\nenter cake bake all\r\npick the model you want to bake\r\ndone!', '', 'Normal', 'open', 50, 0, '2015-06-07 17:22:03', '2015-06-07 17:22:03'),
(95, 'added two new tables', 'links for adding links that will help with cakephp', '', 'normal', 'open', 50, 4, '2015-06-07 22:18:51', '2015-06-10 22:51:44'),
(96, 'added TinyMCE plugin to plugin demo page', 'having problem getting cakephp to display a link in a sub folder of pages, asked question stack overflow', 'http://localhost/speechapp/pages/testtinymce', 'normal', 'open', 50, 1, '2015-06-10 21:15:33', '2015-06-10 22:50:18'),
(98, 'added category to changelogs, for add and edit and index views', '', '', 'normal', 'open', 50, 4, '2015-06-10 22:50:55', '2015-06-10 22:51:36'),
(99, 'addes model to a plugin wt-rotator called "bannerimages"', 'add a model to wt-rotator plugin\r\n\r\nadded table bannerimages and baked view,model and controller and copied to plugin folder.\r\n\r\nhttp://localhost/speechapp/wtrotator/bannerimages\r\n\r\nhttp://localhost/speechapp/wtrotator/bannerimages/displayslideshow', 'To do add upload feature/plugin', 'normal', 'open', 50, 1, '2015-06-18 16:08:11', '2015-06-18 20:58:37'),
(100, 'upgraded cake php version from 2.6.3 to 2.7', 'This creates issues...upgraded reversed by using orignal core version 2.6.3\r\n\r\nthe function isEmpty() in model validation has been depreciated in newer cake versions.\r\n\r\nUpgrade of Xamp also caused problems so reverted back to orignal version.', '', 'normal', 'closed', 50, 5, '2015-10-29 11:36:08', '2016-02-12 20:40:25'),
(101, 'Running webserver from google drive folder', 'Will use this to work on the site to keep all changes up to date.', '', 'Normal', 'open', 50, 5, '2016-02-12 20:42:25', '2016-02-12 20:42:25'),
(102, 'change to project: will focus on the website and not the app and website', 'the proposed features for the android app were a little trouble somesome. Had problems trying to get the login to work.\r\nWas able to read the JSON feeds.\r\n\r\nWill try to focus the website as the main tool for running exercises etc.', '', 'high', 'open', 50, 1, '2016-02-12 20:47:07', '2016-02-12 20:47:15'),
(103, 'createed pushymenuitems db table for plugin', '', '', 'Normal', 'open', 50, 1, '2016-02-27 18:52:20', '2016-02-27 18:52:20'),
(104, 'test', '// src/Model/Entity/User.php\r\nnamespace App\\Model\\Entity;\r\n\r\nuse Cake\\Auth\\DefaultPasswordHasher;\r\nuse Cake\\ORM\\Entity;\r\n\r\nclass User extends Entity\r\n{\r\n\r\n    // Make all fields mass assignable except for primary key field "id".\r\n    protected $_accessible = [\r\n        ''*'' => true,\r\n        ''id'' => false\r\n    ];\r\n\r\n    // ...\r\n\r\n    protected function _setPassword($password)\r\n    {\r\n        return (new DefaultPasswordHasher)->hash($password);\r\n    }\r\n\r\n    // ...\r\n}', '', 'Normal', 'open', 50, 1, '2016-04-09 18:23:22', '2016-04-09 18:23:22');

-- --------------------------------------------------------

--
-- Table structure for table `exercises`
--

CREATE TABLE `exercises` (
  `id` int(11) NOT NULL,
  `title` varchar(150) NOT NULL DEFAULT 'My Word Exercise',
  `description` text NOT NULL,
  `user_id` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `exercises`
--

INSERT INTO `exercises` (`id`, `title`, `description`, `user_id`, `patient_id`, `created`, `modified`) VALUES
(33, 'jghjhg jhgjhggh for bob', '', 50, 1, '2015-04-08 12:13:46', '2015-05-14 22:21:35'),
(34, 'test 2', 'test', 50, 1, '2015-05-15 19:30:45', '2015-05-15 19:30:45'),
(35, 'retrdtgf', 'fdgdfg', 50, 1, '2015-05-18 20:33:19', '2015-05-18 20:33:19'),
(36, 'test', 'test', 50, 2, '2015-11-09 14:08:38', '2015-11-09 14:08:38');

-- --------------------------------------------------------

--
-- Table structure for table `exercises_phrases`
--

CREATE TABLE `exercises_phrases` (
  `id` int(11) NOT NULL,
  `phrase_id` int(11) NOT NULL,
  `exercise_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `exercises_phrases`
--

INSERT INTO `exercises_phrases` (`id`, `phrase_id`, `exercise_id`) VALUES
(5, 3, 33),
(6, 5, 33),
(7, 4, 34),
(8, 2, 35),
(9, 3, 35),
(10, 4, 35),
(11, 5, 35),
(12, 2, 36),
(13, 3, 36),
(14, 5, 36);

-- --------------------------------------------------------

--
-- Table structure for table `exercises_words`
--

CREATE TABLE `exercises_words` (
  `id` int(11) NOT NULL,
  `word_id` int(11) NOT NULL,
  `exercise_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `exercises_words`
--

INSERT INTO `exercises_words` (`id`, `word_id`, `exercise_id`) VALUES
(46, 2, 33),
(47, 5, 34),
(48, 2, 35),
(49, 5, 35),
(50, 43, 35),
(51, 46, 35),
(52, 2, 36),
(53, 5, 36);

-- --------------------------------------------------------

--
-- Table structure for table `links`
--

CREATE TABLE `links` (
  `id` int(11) NOT NULL,
  `url` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `user_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `category_id` int(11) NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `links`
--

INSERT INTO `links` (`id`, `url`, `title`, `description`, `user_id`, `created`, `category_id`, `modified`) VALUES
(1, 'http://designscrazed.org/css-html-login-form-templates/', '', '', 50, '2015-06-07 17:59:33', 2, '2015-06-10 22:48:13'),
(2, 'https://github.com/CakeDC/categories', '', '', 50, '2015-06-07 18:20:01', 1, '2015-06-07 22:24:31'),
(3, 'http://www.startutorial.com/articles/view/build-a-forum-with-cakephp-part-1', '', '', 50, '2015-06-07 22:31:53', 2, '2015-06-07 22:31:53'),
(4, 'http://www.dereuromark.de/2013/02/17/cakephp-and-tree-structures/', '', '', 50, '2015-06-07 22:32:47', 2, '2015-06-07 22:32:47'),
(5, 'http://book.cakephp.org/2.0/en/core-libraries/behaviors/tree.html', '', '', 50, '2015-06-07 22:32:58', 2, '2015-06-07 22:32:58'),
(6, 'https://github.com/slywalker/cakephp-plugin-boost_cake', 'test', '', 50, '2015-06-12 22:37:33', 1, '2015-06-14 21:51:03');

-- --------------------------------------------------------

--
-- Table structure for table `patients`
--

CREATE TABLE `patients` (
  `id` int(11) NOT NULL,
  `firstname` varchar(150) NOT NULL,
  `surname` varchar(150) NOT NULL,
  `address` text NOT NULL,
  `user_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patients`
--

INSERT INTO `patients` (`id`, `firstname`, `surname`, `address`, `user_id`, `created`, `modified`) VALUES
(1, 'bobby', 'billows', 'fdgdfgdfg', 7, '2015-03-07 00:33:24', '2015-05-27 18:20:38'),
(2, 'bob', 'lob law', '21 hill street,\r\ndundalk\r\nco louth', 50, '2015-05-01 21:11:52', '2015-05-01 21:14:27');

-- --------------------------------------------------------

--
-- Table structure for table `phrases`
--

CREATE TABLE `phrases` (
  `id` int(11) NOT NULL,
  `phrase` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `picture` varchar(255) NOT NULL,
  `picture_dir` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `phrases`
--

INSERT INTO `phrases` (`id`, `phrase`, `description`, `picture`, `picture_dir`, `user_id`, `created`, `modified`) VALUES
(2, 'where are my shoes?', '', '', '', 30, '2015-03-30 19:27:21', '2015-04-02 13:50:38'),
(3, 'im hungry', '', '', '', 40, '2015-04-02 10:35:12', '2015-04-04 01:04:15'),
(4, 'where are we?', '', '', '', 40, '2015-04-02 10:35:27', '2015-04-02 13:50:38'),
(5, 'i want a drink', '', '', '', 40, '2015-04-02 10:35:37', '2015-04-02 13:50:38'),
(6, 'how are yah!', '', '', '', 50, '2015-05-01 20:54:44', '2015-05-01 20:54:44'),
(8, 'test', 'tes', 'DSC00003.JPG', '8', 50, '2015-05-21 00:05:46', '2015-05-21 00:12:14');

-- --------------------------------------------------------

--
-- Table structure for table `pushymenuitems`
--

CREATE TABLE `pushymenuitems` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `url` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(150) NOT NULL,
  `password` varchar(150) NOT NULL,
  `firstname` varchar(150) NOT NULL,
  `lastname` varchar(150) NOT NULL,
  `email` varchar(150) NOT NULL,
  `role` varchar(10) NOT NULL DEFAULT 'user',
  `api_key` varchar(32) NOT NULL,
  `digest_pass` text NOT NULL,
  `ipaddress` varchar(45) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `firstname`, `lastname`, `email`, `role`, `api_key`, `digest_pass`, `ipaddress`, `created`, `modified`) VALUES
(50, 'gerry', '$2y$10$lxRdsDi4cD8u2sqy.jkKLurUeSXmnEbpX1KkuRuA4fDhzH0t4Fkva', '', '', '', 'admin', '', '', '', '2016-06-15 22:59:54', '2016-06-15 22:59:54');

-- --------------------------------------------------------

--
-- Table structure for table `words`
--

CREATE TABLE `words` (
  `id` int(11) NOT NULL,
  `word` varchar(40) NOT NULL,
  `word_syllables` varchar(150) NOT NULL,
  `picture` varchar(255) DEFAULT NULL,
  `picture_dir` varchar(255) NOT NULL,
  `soundfile` varchar(255) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `words`
--

INSERT INTO `words` (`id`, `word`, `word_syllables`, `picture`, `picture_dir`, `soundfile`, `user_id`, `created`, `modified`) VALUES
(2, 'computerfghhgfhfghfghf', '', 'computer.jpg', '2', '', 0, '2015-04-08 16:32:07', '2015-05-01 22:05:15'),
(5, 'elephant', 'elephant', 'elephant.jpg', '5', '', 0, '2015-04-08 16:32:07', '2015-05-09 14:59:49'),
(43, 'Baby', '', '81.jpg', '43', '100grand.mp3', 50, '2015-04-20 18:23:35', '2015-04-20 19:37:37'),
(46, 'space', '', '5540-observation-deck-wallpaper.jpg', '46', NULL, 50, '2015-04-20 19:19:53', '2015-05-14 22:29:56'),
(48, 'test thumb11111', '', '0daf122d88.jpg', '48', NULL, 50, '2015-04-20 19:26:47', '2015-05-18 20:38:41'),
(49, 'submarine2', '', 'yellow-submarine-icon.png', '49', NULL, 50, '2015-04-20 20:14:21', '2015-04-20 20:14:21'),
(56, 'oscar', '', 'Picture 0006.jpg', '56', NULL, 50, '2015-05-18 20:37:41', '2015-05-18 22:09:06'),
(58, 'new word', 'test', NULL, '', NULL, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bannerimages`
--
ALTER TABLE `bannerimages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `changelogs`
--
ALTER TABLE `changelogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exercises`
--
ALTER TABLE `exercises`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exercises_phrases`
--
ALTER TABLE `exercises_phrases`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exercises_words`
--
ALTER TABLE `exercises_words`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `links`
--
ALTER TABLE `links`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `patients`
--
ALTER TABLE `patients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `phrases`
--
ALTER TABLE `phrases`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pushymenuitems`
--
ALTER TABLE `pushymenuitems`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `words`
--
ALTER TABLE `words`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bannerimages`
--
ALTER TABLE `bannerimages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `changelogs`
--
ALTER TABLE `changelogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;
--
-- AUTO_INCREMENT for table `exercises`
--
ALTER TABLE `exercises`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT for table `exercises_phrases`
--
ALTER TABLE `exercises_phrases`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `exercises_words`
--
ALTER TABLE `exercises_words`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;
--
-- AUTO_INCREMENT for table `links`
--
ALTER TABLE `links`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `patients`
--
ALTER TABLE `patients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `phrases`
--
ALTER TABLE `phrases`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `pushymenuitems`
--
ALTER TABLE `pushymenuitems`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
--
-- AUTO_INCREMENT for table `words`
--
ALTER TABLE `words`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
