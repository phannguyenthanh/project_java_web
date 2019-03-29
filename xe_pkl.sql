-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 29, 2019 at 09:33 AM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `xe_pkl`
--

-- --------------------------------------------------------

--
-- Table structure for table `bills`
--

CREATE TABLE `bills` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_bill` bigint(11) DEFAULT NULL,
  `id_user` int(11) DEFAULT NULL,
  `total` bigint(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bills`
--

INSERT INTO `bills` (`id`, `id_bill`, `id_user`, `total`, `name`, `address`, `phone`, `content`, `status`, `created_at`, `updated_at`) VALUES
(3, 1553423896853, 0, 199999, 'thanh phan', 'LÃª Há» , Kim Báº£ng , HÃ  Nam', '962949332', 'dfs', 1, '2019-03-24 10:37:45', NULL),
(4, 1553423975966, 0, 199999, 'thanh phan', 'LÃª Há» , Kim Báº£ng , HÃ  Nam', '962949332', 'fsd', 1, '2019-03-24 10:39:35', NULL),
(5, 1553424073146, 0, 199999, 'thanh phan', 'LÃª Há» , Kim Báº£ng , HÃ  Nam', '962949332', 'fsd', 1, '2019-03-24 10:41:13', NULL),
(6, 1553424130879, 0, 199999, 'thanh phan', 'LÃª Há» , Kim Báº£ng , HÃ  Nam', '962949332', 'sfd', 1, '2019-03-24 10:42:10', NULL),
(7, 1553836447983, 0, 306000000, 'thanh phan', 'LÃª Há» , Kim Báº£ng , HÃ  Nam', '962949332', '', 1, '2019-03-29 05:14:07', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `bills_detail`
--

CREATE TABLE `bills_detail` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_product` int(11) DEFAULT NULL,
  `id_bill` bigint(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bills_detail`
--

INSERT INTO `bills_detail` (`id`, `id_product`, `id_bill`, `price`, `quantity`, `created_at`, `updated_at`) VALUES
(1, 102, 1553423975966, 199999, 1, '2019-03-24 10:39:35', NULL),
(2, 102, 1553424073146, 199999, 1, '2019-03-24 10:41:13', NULL),
(3, 102, 1553424130879, 199999, 1, '2019-03-24 10:42:10', NULL),
(4, 1, 1553836447983, 193000000, 1, '2019-03-29 05:14:07', NULL),
(5, 6, 1553836447983, 113000000, 1, '2019-03-29 05:14:07', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'YAMAHA', '2019-03-14 11:47:45', NULL),
(2, 'SUZUKI', '2019-03-14 11:47:45', NULL),
(3, 'SYM', '2019-03-14 11:47:45', NULL),
(4, 'KAWASAKI', '2019-03-14 11:47:45', NULL),
(5, 'PIAGGIO', '2019-03-14 11:47:45', NULL),
(6, 'DUCATI', '2019-03-14 11:47:45', NULL),
(7, 'DAELIM', '2019-03-14 11:47:45', NULL),
(8, 'DAEHAN', '2019-03-14 11:47:45', NULL);

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
(3, '2019_01_30_090853_add_nullable_users', 1),
(4, '2019_03_14_154510_create_brands', 1),
(5, '2019_03_14_154640_create_types', 1),
(6, '2019_03_14_154724_create_products', 1),
(14, '2019_03_14_155659_create_cart', 2),
(15, '2019_03_23_030227_create_cart_detail', 2);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `made_in` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `capacity` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `model_year` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `avatar` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `brand` int(11) DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `view` int(11) DEFAULT NULL,
  `color` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `made_in`, `capacity`, `created_at`, `model_year`, `location`, `type`, `avatar`, `brand`, `content`, `view`, `color`) VALUES
(1, 'Hadley Binsf', 193000000, 'abyss', '200cc', '2019-03-14', '2016', '88161 Kunde Plain Apt. 185Weissnatview, ME 85478', 1, '../imager/../imager/../imager/dat-bien-so-xe-pkl-28704-1451232869-56800e65bee92.jpeg', 2, 'It was so long since she had been anything near the right size, that it felt quite strange at first; but she got used to it in a few minutes, and began talking to herself, as usual. \'Come, there\'s half my plan done now! How puzzling all these changes are! I\'m never sure what I\'m going to be, from.', 2419, 'blue'),
(2, 'Alexander Maggio', 78000000, 'china', '75cc', '2019-03-14', '2014', '259 Terry Pines\nRuntechester, ID 44875-1672', 9, '../imager/1495100302-149503197885351-bmv3.jpg', 6, 'And then, turning to the rose-tree, she went on, \'What HAVE you been doing here?\' \'May it please your Majesty,\' said Two, in a very humble tone, going down on one knee as he spoke, \'we were trying--\' \'I see!\' said the Queen, who had meanwhile been examining the roses. \'Off with their heads!\' and.', 4091, 'blue'),
(3, 'Einar Considine DVM', 179000000, 'prc', '250cc', '2019-03-14', '2014', '72446 Niko Causeway Apt. 725\nPort Elnora, OH 66294-7947', 10, '../imager/1471920611-147191790694399-moto3.jpg', 8, 'Queen\'s voice in the distance, screaming with passion. She had already heard her sentence three of the players to be executed for having missed their turns, and she did not like the look of the thing at all. \'But perhaps it was only sobbing,\' she thought, and looked into its eyes again, to see if.', 6932, 'white'),
(4, 'Paolo Bode', 40000000, 'vietnam', '75cc', '2019-03-14', '2019', '753 Schuppe Green Apt. 989\nEleanoreburgh, AZ 54741', 11, '../imager/181316_2.jpg', 3, 'Dormouse, who was sitting next to her. \'I can hardly breathe.\' \'I can\'t help it,\' said Alice very meekly: \'I\'m growing.\' \'You\'ve no right to grow here,\' said the Dormouse. \'Don\'t talk nonsense,\' said Alice more boldly: \'you know you\'re growing too.\' \'Yes, but I grow at a reasonable pace,\' said the.', 7761, 'blue'),
(5, 'Florine White I', 125000000, 'india', '200cc', '2019-03-14', '2015', '758 Hettinger Tunnel\nNorth Darienton, IL 89334-6057', 8, '../imager/181316_2.jpg', 3, 'Do you think, at your age, it is right?\' \'In my youth,\' Father William replied to his son, \'I feared it might injure the brain; But, now that I\'m perfectly sure I have none, Why, I do it again and again.\' \'You are old,\' said the youth, \'as I mentioned before, And have grown most uncommonly fat.', 6378, 'black'),
(6, 'Dr. Ferne Dach I', 113000000, 'japan', '50cc', '2019-03-14', '2010', '4739 Cronin Rest Apt. 692\nHudsontown, AR 05266-6426', 3, '../imager/181316_2.jpg', 5, 'Come on!\' So they went up to the Mock Turtle, who looked at them with large eyes full of tears, but said nothing. \'This here young lady,\' said the Gryphon, \'she wants for to know your history, she do.\' \'I\'ll tell it her,\' said the Mock Turtle in a deep, hollow tone: \'sit down, both of you, and.', 6300, 'red'),
(7, 'Dr. Kaya Crona DDS', 120000000, 'india', '250cc', '2019-03-14', '2017', '19175 Lesch Forges Apt. 557\nBorerchester, MS 96996-4858', 3, '../imager/114856_Suzuki_GSX-R150_2017.jpg', 7, 'Alice, as she stood watching them, and he checked himself suddenly: the others looked round also, and all of them bowed low. \'Would you tell me,\' said Alice, a little timidly, for she was not quite sure whether it was good manners for her to speak first, \'why your cat grins like that?\' \'It\'s a.', 4932, 'red'),
(8, 'Sallie Bechtelar', 94000000, 'abyss', '50cc', '2019-03-14', '2012', '478 Luis Falls Apt. 442\nElyssaton, NM 35810-5761', 8, '../imager/181316_2.jpg', 7, 'Alice doubtfully: \'it means--to--make--anything--prettier.\' \'Well, then,\' the Gryphon went on, \'if you don\'t know what to uglify is, you ARE a simpleton.\' Alice did not feel encouraged to ask any more questions about it, so she turned to the Mock Turtle, and said \'What else had you to learn?\'.', 2342, 'white'),
(9, 'Bonita Blick', 26000000, 'vietnam', '375cc', '2019-03-14', '2019', '51673 Powlowski Vista Apt. 797\nEast Elisabethtown, UT 36913', 1, '../imager/honda-cbr150r-2017-2.jpg', 5, 'I shall see it written up somewhere.\' Down, down, down. There was nothing else to do, so Alice soon began talking again. \'Dinah\'ll miss me very much to-night, I should think!\' (Dinah was the cat.) \'I hope they\'ll remember her saucer of milk at tea-time. Dinah my dear! I wish you were down here.', 7226, 'white'),
(10, 'Jaeden Kovacek', 45000000, 'japan', '200cc', '2019-03-14', '2011', '33078 Rocky Port Suite 354\nEast Ervin, MA 62606', 4, '../imager/dat-bien-so-xe-pkl-28704-1451232869-56800e65bee92.jpeg', 3, 'SHE, of course,\' said the Dodo, pointing to Alice with one finger; and the whole party at once crowded round her, calling out in a confused way, \'Prizes! Prizes!\' Alice had no idea what to do, and in despair she put her hand in her pocket, and pulled out a box of comfits, (luckily the salt water.', 9901, 'yellow'),
(11, 'Melvina Keeling', 143000000, 'japan', '300cc', '2019-03-14', '2018', '2721 Metz Stravenue\nWest Zoe, HI 53562', 10, '../imager/hqdefault.jpg', 1, 'LITTLE larger, sir, if you wouldn\'t mind,\' said Alice: \'three inches is such a wretched height to be.\' \'It is a very good height indeed!\' said the Caterpillar angrily, rearing itself upright as it spoke (it was exactly three inches high). \'But I\'m not used to it!\' pleaded poor Alice in a piteous.', 3784, 'black'),
(12, 'Mr. Jamarcus Zemlak DVM', 65000000, 'vietnam', '200cc', '2019-03-14', '2019', '8841 Kunde Mount\nAudraton, FL 11497', 8, '../imager/1518927039108.jpg', 3, 'Mock Turtle yet?\' \'No,\' said Alice. \'I don\'t even know what a Mock Turtle is.\' \'It\'s the thing Mock Turtle Soup is made from,\' said the Queen. \'I never saw one, or heard of one,\' said Alice. \'Come on, then,\' said the Queen, \'and he shall tell you his history,\' As they walked off together, Alice.', 8118, 'blue'),
(13, 'Heather Kunde PhD', 136000000, 'abyss', '200cc', '2019-03-14', '2014', '43326 Williamson Lock\nThieltown, KS 87905-7368', 8, '../imager/honda-cbr150r-2017-2.jpg', 6, 'I do hope it\'ll make me grow large again, for really I\'m quite tired of being such a tiny little thing!\' It did so indeed, and much sooner than she had expected: before she had drunk half the bottle, she found her head pressing against the ceiling, and had to stoop to save her neck from being.', 515, 'blue'),
(14, 'Ashton Sporer', 83000000, 'china', '375cc', '2019-03-14', '2016', '2227 Olaf Coves\nCarriefort, FL 18522', 11, '../imager/honda-cbr150r-2017-2.jpg', 8, 'INSIDE, you might knock, and I could let you out, you know.\' He was looking up into the sky all the time he was speaking, and this Alice thought decidedly uncivil. \'But perhaps he can\'t help it,\' she said to herself; \'his eyes are so VERY nearly at the top of his shrill little voice, the name.', 505, 'red'),
(15, 'Myriam Doyle', 94000000, 'china', '175cc', '2019-03-14', '2015', '1862 Bo Creek Apt. 660\nNew Elnoraville, NE 05781', 4, '../imager/20130923_f9c26d8182feef592b82754a0aa8c4f4_1379906185.jpg', 6, 'Alice. \'Stand up and repeat \"\'TIS THE VOICE OF THE SLUGGARD,\"\' said the Gryphon. \'How the creatures order one about, and make one repeat lessons!\' thought Alice; \'I might as well be at school at once.\' However, she got up, and began to repeat it, but her voice sounded hoarse and strange, and the.', 8430, 'blue'),
(16, 'Miss Ellie Windler MD', 116000000, 'india', '175cc', '2019-03-14', '2012', '9548 Gutkowski Inlet Suite 652\nChamplinshire, WV 46343-0517', 6, '../imager/114856_Suzuki_GSX-R150_2017.jpg', 2, 'I could say if I chose,\' the Duchess replied, in a pleased tone. \'Pray don\'t trouble yourself to say it any longer than that,\' said Alice. \'Oh, don\'t talk about trouble!\' said the Duchess. \'I make you a present of everything I\'ve said as yet.\' \'A cheap sort of present!\' thought Alice. \'I\'m glad.', 8003, 'white'),
(17, 'Geovanni Shanahan', 68000000, 'japan', '250cc', '2019-03-14', '2015', '4172 Nader Burg\nSouth Jaceyfort, AK 13614-9919', 8, '../imager/xe-moto-gia-re.jpg', 3, 'After a while, finding that nothing more happened, she decided on going into the garden at once; but, alas for poor Alice! when she got to the door, she found she had forgotten the little golden key, and when she went back to the table for it, she found she could not possibly reach it: she could.', 2773, 'white'),
(18, 'Prof. Mckenna Mertz MD', 89000000, 'abyss', '250cc', '2019-03-14', '2016', '643 Samara Mountains\nBernardland, GA 11462', 9, '../imager/1518927039108.jpg', 6, 'She was walking by the White Rabbit, who was peeping anxiously into her face. \'Very,\' said Alice: \'--where\'s the Duchess?\' \'Hush! Hush!\' said the Rabbit in a low, hurried tone. He looked anxiously over his shoulder as he spoke, and then raised himself upon tiptoe, put his mouth close to her ear.', 6417, 'black'),
(19, 'Prof. Maryjane Zemlak DDS', 144000000, 'america', '250cc', '2019-03-14', '2013', '8194 Ryan Shores Suite 196\nNorth Emery, RI 32060', 3, '../imager/1495100302-149503197885351-bmv3.jpg', 3, 'Alice. \'It must be a very pretty dance,\' said Alice timidly. \'Would you like to see a little of it?\' said the Mock Turtle. \'Very much indeed,\' said Alice. \'Come, let\'s try the first figure!\' said the Mock Turtle to the Gryphon. \'We can do without lobsters, you know. Which shall sing?\' \'Oh, YOU.', 8349, 'yellow'),
(20, 'Jaylan Hettinger', 21000000, 'india', '250cc', '2019-03-14', '2014', '309 Wintheiser Roads Apt. 394\nSouth Treva, NE 51132', 2, '../imager/1471920611-147191790694399-moto3.jpg', 2, 'March Hare said to itself in a whisper.) \'That would be grand, certainly,\' said Alice thoughtfully: \'but then--I shouldn\'t be hungry for it, you know.\' \'Not at first, perhaps,\' said the Hatter: \'but you could keep it to half-past one as long as you liked.\' \'Is that the way YOU manage?\' Alice.', 1037, 'red'),
(21, 'Federico Fadel', 86000000, 'india', '250cc', '2019-03-14', '2017', '6659 Braxton Brook Apt. 719\nPort Kallie, AZ 97522', 6, '../imager/xe-moto-gia-re.jpg', 5, 'She felt that she was dozing off, and had just begun to dream that she was walking hand in hand with Dinah, and saying to her very earnestly, \'Now, Dinah, tell me the truth: did you ever eat a bat?\' when suddenly, thump! thump! down she came upon a heap of sticks and dry leaves, and the fall was.', 8114, 'blue'),
(22, 'Marlee Gerlach', 32000000, 'america', '375cc', '2019-03-14', '2017', '510 Jamarcus Park Apt. 013\nRueckerhaven, HI 67665', 1, '../imager/1518927039108.jpg', 7, 'White Rabbit, \'and that\'s the queerest thing about it.\' (The jury all looked puzzled.) \'He must have imitated somebody else\'s hand,\' said the King. (The jury all brightened up again.) \'Please your Majesty,\' said the Knave, \'I didn\'t write it, and they can\'t prove I did: there\'s no name signed at.', 2168, 'blue'),
(23, 'Kattie Bashirian', 200000000, 'america', '375cc', '2019-03-14', '2014', '789 Darion Underpass\nKaraburgh, OK 67084-5716', 10, '../imager/1518927039108.jpg', 6, 'Queen, in a shrill, loud voice, and the three gardeners instantly threw themselves flat upon their faces. There was a sound of many footsteps, and Alice looked round, eager to see the Queen. First came ten soldiers carrying clubs; these were all shaped like the three gardeners, oblong and flat.', 5302, 'red'),
(24, 'Mrs. Betsy Herman Jr.', 114000000, 'prc', '250cc', '2019-03-14', '2019', '15339 Yost Freeway Apt. 328\nValliefort, MO 62133', 8, '../imager/hqdefault.jpg', 6, 'CHAPTER VI. Pig and Pepper For a minute or two she stood looking at the house, and wondering what to do next, when suddenly a footman in livery came running out of the wood--(she considered him to be a footman because he was in livery: otherwise, judging by his face only, she would have called him.', 8159, 'white'),
(25, 'Godfrey Goodwin', 175000000, 'china', '300cc', '2019-03-14', '2016', '8345 Jabari Lights\nWest Janiyaland, NJ 17161', 2, '../imager/181316_2.jpg', 3, 'Alice, \'how am I to get in?\' asked Alice again, in a louder tone. \'ARE you to get in at all?\' said the Footman. \'That\'s the first question, you know.\' It was, no doubt: only Alice did not like to be told so. \'It\'s really dreadful,\' she muttered to herself, \'the way all the creatures argue. It\'s.', 2957, 'red'),
(26, 'Jovan Bogan', 195000000, 'japan', '250cc', '2019-03-14', '2010', '12859 Mante Meadow\nDestinimouth, ND 43297-6080', 8, '../imager/114856_Suzuki_GSX-R150_2017.jpg', 8, 'Duchess replied, in a pleased tone. \'Pray don\'t trouble yourself to say it any longer than that,\' said Alice. \'Oh, don\'t talk about trouble!\' said the Duchess. \'I make you a present of everything I\'ve said as yet.\' \'A cheap sort of present!\' thought Alice. \'I\'m glad they don\'t give birthday.', 1698, 'blue'),
(27, 'Marshall Bartoletti', 156000000, 'prc', '375cc', '2019-03-14', '2017', '81313 Zulauf Dale Suite 439\nLake Peteville, AZ 31765-8699', 8, '../imager/hqdefault.jpg', 4, 'Alice\'s side as she spoke. Alice did not much like keeping so close to her: first, because the Duchess was VERY ugly; and secondly, because she was exactly the right height to rest her chin upon Alice\'s shoulder, and it was an uncomfortably sharp chin. However, she did not like to go nearer till.', 636, 'yellow'),
(28, 'Hillary Brown III', 90000000, 'vietnam', '250cc', '2019-03-14', '2019', '6992 Reilly Mill Apt. 035\nSouth Peteville, WA 05482', 3, '../imager/1518927039108.jpg', 8, 'FIT you,\' said the King, looking round the court with a smile. There was a dead silence. \'It\'s a pun!\' the King added in an offended tone, and everybody laughed, \'Let the jury consider their verdict,\' the King said, for about the twentieth time that day. \'No, no!\' said the Queen. \'Sentence.', 4366, 'yellow'),
(29, 'Brando Krajcik', 137000000, 'america', '250cc', '2019-03-14', '2016', '4117 Shields Forges Suite 822\nAntwanburgh, CT 18151-8490', 7, '../imager/Kawasaki-Ninja-H2-2015-banner-1.jpg', 4, 'Alice\'s shoulder, and it was an uncomfortably sharp chin. However, she did not like to be told so. \'It\'s really dreadful,\' she muttered to herself, \'the way all the creatures argue. It\'s enough to drive one crazy!\' The Footman seemed to think this a good opportunity for repeating his remark, with.', 7902, 'red'),
(30, 'Mr. Ansley Rice Sr.', 61000000, 'prc', '300cc', '2019-03-14', '2017', '3362 Dameon Fields Suite 625\nHipolitomouth, TN 10156-3068', 9, '../imager/181316_2.jpg', 3, 'Caterpillar sternly. \'Explain yourself!\' \'I can\'t explain MYSELF, I\'m afraid, sir\' said Alice, \'because I\'m not myself, you see.\' \'I don\'t see,\' said the Caterpillar. \'I\'m afraid I can\'t put it more clearly,\' Alice replied very politely, \'for I can\'t understand it myself to begin with; and being.', 3356, 'yellow'),
(31, 'Alan Feeney', 46000000, 'japan', '300cc', '2019-03-14', '2014', '71605 Murphy Tunnel\nRobertsfurt, NV 85620-1557', 6, '../imager/20130923_f9c26d8182feef592b82754a0aa8c4f4_1379906185.jpg', 6, 'March Hare and the Hatter were having tea at it: a Dormouse was sitting between them, fast asleep, and the other two were using it as a cushion, resting their elbows on it, and talking over its head. \'Very uncomfortable for the Dormouse,\' thought Alice; \'only, as it\'s asleep, I suppose it doesn\'t.', 8305, 'black'),
(32, 'Bernard Schowalter', 62000000, 'china', '300cc', '2019-03-14', '2010', '249 Treutel Place Suite 760\nEast Freedaton, OK 21552-8258', 3, '../imager/honda-cbr150r-2017-2.jpg', 7, 'I only wish people knew that: then they wouldn\'t be so stingy about it, you know--\' She had quite forgotten the Duchess by this time, and was a little startled when she heard her voice close to her ear. \'You\'re thinking about something, my dear, and that makes you forget to talk. I can\'t tell you.', 5927, 'yellow'),
(33, 'Isobel Gottlieb', 36000000, 'vietnam', '50cc', '2019-03-14', '2014', '87126 Millie Meadows\nImeldaside, AZ 23529', 7, '../imager/1471920611-147191790694399-moto3.jpg', 7, 'It was so long since she had been anything near the right size, that it felt quite strange at first; but she got used to it in a few minutes, and began talking to herself, as usual. \'Come, there\'s half my plan done now! How puzzling all these changes are! I\'m never sure what I\'m going to be, from.', 1026, 'red'),
(34, 'Mr. Kyle Corwin PhD', 44000000, 'prc', '75cc', '2019-03-14', '2010', '2754 Margarette Estates Apt. 440\nWest Sterlingchester, VA 09260', 9, '../imager/114856_Suzuki_GSX-R150_2017.jpg', 6, 'When the pie was all finished, the Owl, as a boon, Was kindly permitted to pocket the spoon: While the Panther received knife and fork with a growl, And concluded the banquet--] \'What IS the use of repeating all that stuff,\' the Mock Turtle interrupted, \'if you don\'t explain it as you go on? It\'s.', 8677, 'white'),
(35, 'Kenny Conroy', 40000000, 'india', '75cc', '2019-03-14', '2012', '33676 Herman Skyway\nJamarcustown, SC 88206-5079', 10, '../imager/114856_Suzuki_GSX-R150_2017.jpg', 7, 'Alice \'without pictures or conversations?\' So she was considering in her own mind (as well as she could, for the accident of the goldfish kept running in her head, and she had a vague sort of idea that they must be collected at once and put back into the jury-box, or they would die. \'The trial.', 846, 'yellow'),
(36, 'Bartholome Kohler', 147000000, 'abyss', '375cc', '2019-03-14', '2010', '74799 Sylvan Fields Suite 926\nSouth Dannie, NM 83283-7374', 4, '../imager/xe-moto-gia-re.jpg', 2, 'Bill,\' she gave one sharp kick, and waited to see what would happen next. The first thing she heard was a general chorus of \'There goes Bill!\' then the Rabbit\'s voice along--\'Catch him, you by the hedge!\' then silence, and then another confusion of voices--\'Hold up his head--Brandy now--Don\'t.', 8200, 'blue'),
(37, 'Alexzander Nienow', 183000000, 'japan', '300cc', '2019-03-14', '2012', '412 Tomas Bridge Apt. 731\nWest Jarvismouth, FL 66934', 1, '../imager/honda-cbr150r-2017-2.jpg', 5, 'Alice said; \'there\'s a large mustard-mine near here. And the moral of that is--\"Birds of a feather flock together.\"\' \'Only mustard isn\'t a bird,\' Alice remarked. \'Right, as usual,\' said the Duchess: \'what a clear way you have of putting things!\' \'It\'s a mineral, I THINK,\' said Alice. \'Of course it.', 5587, 'yellow'),
(38, 'Prof. Cassie Connelly', 75000000, 'japan', '175cc', '2019-03-14', '2009', '5344 Jast Crossroad\nPort Erickatown, LA 11052', 5, '../imager/honda-cbr150r-2017-2.jpg', 6, 'Queen merely remarking that a moment\'s delay would cost them their lives. All the time they were playing the Queen never left off quarrelling with the other players, and shouting \'Off with his head!\' or \'Off with her head!\' about once in a minute. Alice began to feel very uneasy: to be sure, she.', 358, 'yellow'),
(39, 'Kayden Altenwerth', 142000000, 'prc', '250cc', '2019-03-14', '2010', '10169 Muller Circles Apt. 659\nWest Rexshire, MO 80296', 5, '../imager/20130923_f9c26d8182feef592b82754a0aa8c4f4_1379906185.jpg', 5, 'Rabbit, and had no reason to be afraid of it. Presently the Rabbit came up to the door, and knocked. \'There\'s no sort of use in knocking,\' said the Footman, \'and that for two reasons. First, because I\'m on the same side of the door as you are; secondly, because they\'re making such a noise inside.', 7951, 'white'),
(40, 'Ryan Lakin', 160000000, 'japan', '175cc', '2019-03-14', '2011', '79587 Keara Heights Suite 430\nWest Fannieborough, AZ 64279-5783', 6, '../imager/20130923_f9c26d8182feef592b82754a0aa8c4f4_1379906185.jpg', 3, 'That your eye was as steady as ever; Yet you balanced an eel on the end of your nose-- What made you so awfully clever?\' \'I have answered three questions, and that is enough,\' Said his father; \'don\'t give yourself airs! Do you think I can listen all day to such stuff? Be off, or I\'ll kick you down.', 8844, 'white'),
(41, 'Prof. Austyn Rosenbaum', 36000000, 'prc', '375cc', '2019-03-14', '2007', '452 Jeff Summit Suite 392\nEast Kaseyland, MD 11849', 10, '../imager/xe-moto-gia-re.jpg', 1, 'Majesty,\' he began, \'for bringing these in: but I hadn\'t quite finished my tea when I was sent for.\' \'You ought to have finished,\' said the King. \'When did you begin?\' The Hatter looked at the March Hare, who had followed him into the court, arm-in-arm with the Dormouse. \'Fourteenth of March, I.', 6319, 'blue'),
(42, 'Annette Oberbrunner', 72000000, 'america', '200cc', '2019-03-14', '2007', '35598 Cristian Trail Suite 558\nLake Eldridge, ME 94474-9665', 4, '../imager/honda-cbr150r-2017-2.jpg', 6, 'Said cunning old Fury: \"I\'ll try the whole cause, and condemn you to death.\"\' \'You are not attending!\' said the Mouse to Alice severely. \'What are you thinking of?\' \'I beg your pardon,\' said Alice very humbly: \'you had got to the fifth bend, I think?\' \'I had NOT!\' cried the Mouse, sharply and very.', 6068, 'white'),
(43, 'Michael Wilkinson', 148000000, 'india', '200cc', '2019-03-14', '2018', '7534 Bill Lodge Suite 351\nEast Hyman, NJ 13959-5335', 8, '../imager/181316_2.jpg', 7, 'VERY turn-up nose, much more like a snout than a real nose; also its eyes were getting extremely small for a baby: altogether Alice did not like the look of the creature, but on the whole she thought it would be quite as safe to stay with it as to go after that savage Queen: so she waited. The.', 3956, 'black'),
(44, 'Hillary Greenfelder', 65000000, 'india', '300cc', '2019-03-14', '2009', '8800 Mattie Spring Apt. 178\nPort Monteton, AL 77083', 10, '../imager/honda-cbr150r-2017-2.jpg', 6, 'Mock Turtle. \'And how did you manage on the twelfth?\' Alice went on eagerly. \'That\'s enough about lessons,\' the Gryphon interrupted in a very decided tone: \'tell her something about the games now.\' CHAPTER X. The Lobster Quadrille The Mock Turtle sighed deeply, and began, in a voice sometimes.', 9674, 'black'),
(45, 'Margie Klein', 125000000, 'prc', '175cc', '2019-03-14', '2010', '573 Kuvalis Path\nWest Magdalen, MA 17124-1017', 4, '../imager/xe-moto-gia-re.jpg', 8, 'However, when they had been running half an hour or so, and were quite dry again, the Dodo suddenly called out \'The race is over!\' and they all crowded round it, panting, and asking, \'But who has won?\' This question the Dodo could not answer without a great deal of thought, and it sat for a long.', 7845, 'white'),
(46, 'Dale Brekke', 98000000, 'vietnam', '175cc', '2019-03-14', '2010', '7723 Cremin Forge Suite 519\nHermistonbury, NE 51850-0218', 5, '../imager/20130923_f9c26d8182feef592b82754a0aa8c4f4_1379906185.jpg', 7, 'So they began solemnly dancing round and round Alice, every now and then treading on her toes when they passed too close, and waving their forepaws to mark the time, while the Mock Turtle sang this, very slowly and sadly:-- \'\"Will you walk a little faster?\" said a whiting to a snail. \"There\'s a.', 3833, 'black'),
(47, 'Fiona Wiegand', 68000000, 'china', '375cc', '2019-03-14', '2007', '214 Kautzer Locks\nNorth Angel, SC 91053-9772', 2, '../imager/xe-moto-gia-re.jpg', 8, 'Gryphon. \'--you advance twice--\' \'Each with a lobster as a partner!\' cried the Gryphon. \'Of course,\' the Mock Turtle said: \'advance twice, set to partners--\' \'--change lobsters, and retire in same order,\' continued the Gryphon. \'Then, you know,\' the Mock Turtle went on, \'you throw the--\' \'The.', 7641, 'yellow'),
(48, 'Alyce Sipes', 167000000, 'india', '200cc', '2019-03-14', '2018', '4625 Lind Rapids Apt. 266\nEast Gastontown, WV 68216-5167', 10, '../imager/181316_2.jpg', 1, 'New Zealand or Australia?\' (and she tried to curtsey as she spoke--fancy CURTSEYING as you\'re falling through the air! Do you think you could manage it?) \'And what an ignorant little girl she\'ll think me for asking! No, it\'ll never do to ask: perhaps I shall see it written up somewhere.\' Down.', 5652, 'blue'),
(49, 'Hadley Erdman', 159000000, 'prc', '50cc', '2019-03-14', '2018', '1646 Clemmie Ramp Apt. 785\nTomview, DC 48681', 5, '../imager/dat-bien-so-xe-pkl-28704-1451232869-56800e65bee92.jpeg', 8, 'However, this bottle was NOT marked \'poison,\' so Alice ventured to taste it, and finding it very nice, (it had, in fact, a sort of mixed flavour of cherry-tart, custard, pine-apple, roast turkey, toffee, and hot buttered toast,) she very soon finished it off. * * * * * * * * * * * * * * * * * * *.', 5400, 'red'),
(50, 'Wava Emard I', 136000000, 'america', '250cc', '2019-03-14', '2016', '172 Elinor Lock\nJonesfort, ID 58511-7928', 1, '../imager/1518927039108.jpg', 1, 'Majesty,\' he began, \'for bringing these in: but I hadn\'t quite finished my tea when I was sent for.\' \'You ought to have finished,\' said the King. \'When did you begin?\' The Hatter looked at the March Hare, who had followed him into the court, arm-in-arm with the Dormouse. \'Fourteenth of March, I.', 9806, 'white'),
(51, 'Margarett Kuhic', 143000000, 'prc', '375cc', '2019-03-14', '2019', '15334 Justina Square Suite 866\nDaltonbury, KY 70727', 9, '../imager/1471920611-147191790694399-moto3.jpg', 1, 'Cat, and vanished again. Alice waited a little, half expecting to see it again, but it did not appear, and after a minute or two she stood looking at the house, and wondering what to do next, when suddenly a footman in livery came running out of the wood--(she considered him to be a footman.', 4774, 'black'),
(52, 'Dereck Pfeffer DDS', 159000000, 'prc', '200cc', '2019-03-14', '2017', '92477 Toy Mills Suite 251\nWest Norma, NH 08384-7494', 11, '../imager/1518927039108.jpg', 6, 'I suppose?\' said Alice. \'Exactly so,\' said the Hatter: \'as the things get used up.\' \'But what happens when you come to the beginning again?\' Alice ventured to ask. \'Suppose we change the subject,\' the March Hare interrupted, yawning. \'I\'m getting tired of this. I vote the young lady tells us a.', 7918, 'black'),
(53, 'Ludwig Gibson', 158000000, 'prc', '250cc', '2019-03-14', '2016', '8968 Aletha Oval\nEast Lexus, GA 43083', 5, '../imager/hqdefault.jpg', 4, 'PROVES his guilt,\' said the Queen. \'It proves nothing of the sort!\' said Alice. \'Why, you don\'t even know what they\'re about!\' \'Read them,\' said the King. The White Rabbit put on his spectacles. \'Where shall I begin, please your Majesty?\' he asked. \'Begin at the beginning,\' the King said gravely.', 3954, 'red'),
(54, 'Rogelio Dibbert', 75000000, 'japan', '300cc', '2019-03-14', '2011', '71104 Daniel Ferry\nPort Sonyatown, GA 22711-5425', 9, '../imager/1471920611-147191790694399-moto3.jpg', 1, 'I\'M a Duchess,\' she said to herself, (not in a very hopeful tone though), \'I won\'t have any pepper in my kitchen AT ALL. Soup does very well without--Maybe it\'s always pepper that makes people hot-tempered,\' she went on, very much pleased at having found out a new kind of rule, \'and vinegar that.', 782, 'blue'),
(55, 'Nella Koepp III', 174000000, 'prc', '50cc', '2019-03-14', '2007', '3129 Streich Court\nMaraport, MN 71160', 11, '../imager/1495100302-149503197885351-bmv3.jpg', 4, 'Alice noticed with some surprise that the pebbles were all turning into little cakes as they lay on the floor, and a bright idea came into her head. \'If I eat one of these cakes,\' she thought, \'it\'s sure to make SOME change in my size; and as it can\'t possibly make me larger, it must make me.', 7778, 'black'),
(56, 'Madaline Hirthe DVM', 183000000, 'china', '375cc', '2019-03-14', '2009', '6767 Levi Falls Apt. 582\nSouth Bruce, OR 89542-6742', 5, '../imager/xe-moto-gia-re.jpg', 5, 'Cheshire Cat: now I shall have somebody to talk to.\' \'How are you getting on?\' said the Cat, as soon as there was mouth enough for it to speak with. Alice waited till the eyes appeared, and then nodded. \'It\'s no use speaking to it,\' she thought, \'till its ears have come, or at least one of them.\'.', 632, 'blue'),
(57, 'Amanda Ward', 48000000, 'prc', '100cc', '2019-03-14', '2012', '75239 Noble Glens\nRosalindastad, NJ 71557-2345', 10, '../imager/1495100302-149503197885351-bmv3.jpg', 2, 'I can do no more, whatever happens. What WILL become of me?\' Luckily for Alice, the little magic bottle had now had its full effect, and she grew no larger: still it was very uncomfortable, and, as there seemed to be no chance of getting her hands up to her head, she tried to get her head down to.', 8929, 'blue'),
(58, 'Buster Wunsch', 37000000, 'india', '175cc', '2019-03-14', '2017', '845 Fritsch Hollow\nNew Petra, MD 46910-9885', 10, '../imager/1495100302-149503197885351-bmv3.jpg', 1, 'Duchess was sitting on a three-legged stool in the middle, nursing a baby; the cook was leaning over the fire, stirring a large cauldron which seemed to be full of soup. \'There\'s certainly too much pepper in that soup!\' Alice said to herself, as well as she could for sneezing. There was certainly.', 6950, 'red'),
(59, 'Dominique Donnelly', 98000000, 'india', '300cc', '2019-03-14', '2012', '5655 Stefan Rapid Suite 157\nHowellstad, HI 27340', 11, '../imager/Kawasaki-Ninja-H2-2015-banner-1.jpg', 8, 'Caterpillar. \'Well, perhaps you haven\'t found it so yet,\' said Alice; \'but when you have to turn into a chrysalis--you will some day, you know--and then after that into a butterfly, I should think you\'ll feel it a little queer, won\'t you?\' \'Not a bit,\' said the Caterpillar. \'Well, perhaps your.', 676, 'blue'),
(60, 'Rhianna Runolfsdottir', 112000000, 'america', '175cc', '2019-03-14', '2016', '57617 Waters Crest\nJosueview, UT 82401', 8, '../imager/dat-bien-so-xe-pkl-28704-1451232869-56800e65bee92.jpeg', 8, 'Bill,\' she gave one sharp kick, and waited to see what would happen next. The first thing she heard was a general chorus of \'There goes Bill!\' then the Rabbit\'s voice along--\'Catch him, you by the hedge!\' then silence, and then another confusion of voices--\'Hold up his head--Brandy now--Don\'t.', 3537, 'black'),
(61, 'Kendrick Rippin', 113000000, 'india', '75cc', '2019-03-14', '2012', '179 Bogisich Parkways Suite 018\nBabyton, NY 53643', 9, '../imager/honda-cbr150r-2017-2.jpg', 3, 'Alice. The poor little thing was snorting like a steam-engine when she caught it, and kept doubling itself up and straightening itself out again, so that altogether, for the first minute or two, it was as much as she could do to hold it. As soon as she had made out the proper way of nursing it.', 406, 'blue'),
(62, 'Mable Balistreri', 155000000, 'america', '175cc', '2019-03-14', '2011', '2900 Witting Forks Apt. 659\nLittelfort, NH 59761-5760', 1, '../imager/honda-cbr150r-2017-2.jpg', 7, 'But she went on all the same, shedding gallons of tears, until there was a large pool all round her, about four inches deep and reaching half down the hall. After a time she heard a little pattering of footsteps in the distance, and she looked up eagerly, half hoping that the Mouse had changed his.', 9975, 'blue'),
(63, 'Mavis Spencer', 83000000, 'china', '75cc', '2019-03-14', '2011', '91905 Mitchell Plaza\nNew Malinda, HI 31358-9700', 5, '../imager/xe-moto-gia-re.jpg', 2, 'Forty-two. ALL PERSONS MORE THAN A MILE HIGH TO LEAVE THE COURT.\' Everybody looked at Alice. \'I\'M not a mile high,\' said Alice. \'You are,\' said the King. \'Nearly two miles high,\' added the Queen. \'Well, I shan\'t go, at any rate,\' said Alice: \'besides, that\'s not a regular rule: you invented it.', 8318, 'yellow'),
(64, 'Xander Swift I', 97000000, 'abyss', '50cc', '2019-03-14', '2014', '39807 Jordon Square Apt. 616\nTravonburgh, KS 74916-9709', 11, '../imager/20130923_f9c26d8182feef592b82754a0aa8c4f4_1379906185.jpg', 8, 'Dinah, and saying to her very earnestly, \'Now, Dinah, tell me the truth: did you ever eat a bat?\' when suddenly, thump! thump! down she came upon a heap of sticks and dry leaves, and the fall was over. Alice was not a bit hurt, and she jumped up on to her feet in a moment: she looked up, but it.', 8141, 'black'),
(65, 'Florence Crist DDS', 25000000, 'abyss', '100cc', '2019-03-14', '2012', '323 Veum Point\nMarcelomouth, TX 03245-5824', 2, '../imager/181316_2.jpg', 6, 'CHAPTER III. A Caucus-Race and a Long Tale They were indeed a queer-looking party that assembled on the bank--the birds with draggled feathers, the animals with their fur clinging close to them, and all dripping wet, cross, and uncomfortable. The first question of course was, how to get dry again.', 1468, 'red'),
(66, 'Francesco Klein PhD', 148000000, 'america', '375cc', '2019-03-14', '2007', '6387 Stroman Court Apt. 513\nTrentville, MO 35232-5341', 9, '../imager/dat-bien-so-xe-pkl-28704-1451232869-56800e65bee92.jpeg', 2, 'NOT!\' cried the Mouse, sharply and very angrily. \'A knot!\' said Alice, always ready to make herself useful, and looking anxiously about her. \'Oh, do let me help to undo it!\' \'I shall do nothing of the sort,\' said the Mouse, getting up and walking away. \'You insult me by talking such nonsense!\' \'I.', 1072, 'black'),
(67, 'Ms. Sadye Osinski', 92000000, 'america', '375cc', '2019-03-14', '2017', '30078 Hermiston Wells Suite 772\nNew Ebba, MS 34295-4285', 8, '../imager/xe-moto-gia-re.jpg', 6, 'The Rabbit started violently, dropped the white kid gloves and the fan, and skurried away into the darkness as hard as he could go. Alice took up the fan and gloves, and, as the hall was very hot, she kept fanning herself all the time she went on talking: \'Dear, dear! How queer everything is.', 5000, 'blue'),
(68, 'Michele Lowe Jr.', 74000000, 'prc', '175cc', '2019-03-14', '2018', '769 Wilburn Way Apt. 265\nWisozkfort, UT 18734-7511', 7, '../imager/dat-bien-so-xe-pkl-28704-1451232869-56800e65bee92.jpeg', 4, 'So she went in search of her hedgehog. The hedgehog was engaged in a fight with another hedgehog, which seemed to Alice an excellent opportunity for croqueting one of them with the other: the only difficulty was, that she had not the smallest idea how to set about it; and while she was peering.', 672, 'white'),
(69, 'Jayce Fadel PhD', 123000000, 'india', '375cc', '2019-03-14', '2019', '8114 Jackson Glen Suite 378\nSouth Winonafort, NV 43861', 8, '../imager/xe-moto-gia-re.jpg', 2, 'There was no label this time with the words \'DRINK ME,\' but nevertheless she uncorked it and put it to her lips. \'I know SOMETHING interesting is sure to happen,\' she said to herself, \'whenever I eat or drink anything; so I\'ll just see what this bottle does. I do hope it\'ll make me grow large.', 4762, 'red'),
(70, 'Prof. Roger Altenwerth', 122000000, 'america', '175cc', '2019-03-14', '2011', '5605 Kris Trail\nPort Heaven, OK 07563', 5, '../imager/20130923_f9c26d8182feef592b82754a0aa8c4f4_1379906185.jpg', 4, 'The March Hare took the watch and looked at it gloomily: then he dipped it into his cup of tea, and looked at it again: but he could think of nothing better to say than his first remark, \'It was the BEST butter, you know.\' Alice had been looking over his shoulder with some curiosity. \'What a funny.', 1318, 'red'),
(71, 'Noelia Littel', 29000000, 'prc', '200cc', '2019-03-14', '2015', '636 Grant Oval\nSouth Britney, WA 60647', 5, '../imager/20130923_f9c26d8182feef592b82754a0aa8c4f4_1379906185.jpg', 6, 'Mouse with an important air, \'are you all ready? This is the driest thing I know. Silence all round, if you please! \"William the Conqueror, whose cause was favoured by the pope, was soon submitted to by the English, who wanted leaders, and had been of late much accustomed to usurpation and.', 1078, 'white'),
(72, 'Cesar Ledner', 141000000, 'india', '200cc', '2019-03-14', '2007', '90437 McClure Landing\nLake Coleman, ND 64963', 2, '../imager/181316_2.jpg', 7, 'At last the Mouse, who seemed to be a person of authority among them, called out, \'Sit down, all of you, and listen to me! I\'LL soon make you dry enough!\' They all sat down at once, in a large ring, with the Mouse in the middle. Alice kept her eyes anxiously fixed on it, for she felt sure she.', 7759, 'red'),
(73, 'Claire Lakin', 37000000, 'abyss', '75cc', '2019-03-14', '2007', '721 Blanda Ford\nLueilwitzfort, VA 55392', 1, '../imager/xe-moto-gia-re.jpg', 4, 'She did it so quickly that the poor little juror (it was Bill, the Lizard) could not make out at all what had become of it; so, after hunting all about for it, he was obliged to write with one finger for the rest of the day; and this was of very little use, as it left no mark on the slate.', 1817, 'yellow'),
(74, 'Noe Labadie', 56000000, 'japan', '300cc', '2019-03-14', '2014', '3231 Terry Valleys Apt. 165\nEast Nicoletteberg, CA 51750-1652', 3, '../imager/20130923_f9c26d8182feef592b82754a0aa8c4f4_1379906185.jpg', 8, 'WOULD always get into her eyes--and still as she listened, or seemed to listen, the whole place around her became alive with the strange creatures of her little sister\'s dream. The long grass rustled at her feet as the White Rabbit hurried by--the frightened Mouse splashed his way through the.', 5256, 'white'),
(75, 'Nadia Auer', 70000000, 'china', '200cc', '2019-03-14', '2012', '929 Emily Divide Apt. 240\nSandraberg, NH 35226', 5, '../imager/dat-bien-so-xe-pkl-28704-1451232869-56800e65bee92.jpeg', 8, 'I shall have to ask them what the name of the country is, you know. Please, Ma\'am, is this New Zealand or Australia?\' (and she tried to curtsey as she spoke--fancy CURTSEYING as you\'re falling through the air! Do you think you could manage it?) \'And what an ignorant little girl she\'ll think me for.', 9614, 'white'),
(76, 'Dedrick Green IV', 149000000, 'china', '300cc', '2019-03-14', '2014', '26485 Denesik Wells Suite 429\nArnaldobury, HI 23152', 5, '../imager/181316_2.jpg', 1, 'Hatter began, in a trembling voice, \'--and I hadn\'t begun my tea--not above a week or so--and what with the bread-and-butter getting so thin--and the twinkling of the tea--\' \'The twinkling of the what?\' said the King. \'It began with the tea,\' the Hatter replied. \'Of course twinkling begins with a.', 601, 'black'),
(77, 'Alf Hill', 54000000, 'china', '200cc', '2019-03-14', '2015', '500 Feil Land\nWest Brigittemouth, NC 21250-6055', 9, '../imager/181316_2.jpg', 7, 'So she went in search of her hedgehog. The hedgehog was engaged in a fight with another hedgehog, which seemed to Alice an excellent opportunity for croqueting one of them with the other: the only difficulty was, that she had not the smallest idea how to set about it; and while she was peering.', 3530, 'blue'),
(78, 'Ms. Kitty Lueilwitz', 104000000, 'india', '50cc', '2019-03-14', '2012', '1642 Reichert Manors\nO\'Konland, ID 14495', 7, '../imager/honda-cbr150r-2017-2.jpg', 1, 'Caterpillar. \'I\'m afraid I can\'t put it more clearly,\' Alice replied very politely, \'for I can\'t understand it myself to begin with; and being so many different sizes in a day is very confusing.\' \'It isn\'t,\' said the Caterpillar. \'Well, perhaps you haven\'t found it so yet,\' said Alice; \'but when.', 7266, 'white'),
(79, 'Dr. Karen VonRueden DVM', 189000000, 'abyss', '300cc', '2019-03-14', '2009', '540 Jacinto Field\nEast Gillian, ND 96497', 3, '../imager/Kawasaki-Ninja-H2-2015-banner-1.jpg', 8, 'It\'s by far the most confusing thing I ever heard!\' \'Yes, I think you\'d better leave off,\' said the Gryphon: and Alice was only too glad to do so. \'Shall we try another figure of the Lobster Quadrille?\' the Gryphon went on. \'Or would you like the Mock Turtle to sing you a song?\' \'Oh, a song.', 2717, 'blue'),
(80, 'Bridget Bailey', 167000000, 'prc', '75cc', '2019-03-14', '2010', '293 Zulauf Mews\nRodrickland, CO 88598-1263', 2, '../imager/1471920611-147191790694399-moto3.jpg', 8, 'THE.', 6299, 'blue'),
(81, 'Prof. Ottis Jacobson II', 89000000, 'vietnam', '300cc', '2019-03-14', '2012', '22264 Grimes Plaza\nPaulabury, AR 54308-9126', 3, '../imager/1471920611-147191790694399-moto3.jpg', 1, 'I\'d hardly finished the first verse,\' said the Hatter, \'when the Queen jumped up and bawled out, \"He\'s murdering the time! Off with his head!\"\' \'How dreadfully savage!\' exclaimed Alice. \'And ever since that,\' the Hatter went on in a mournful tone, \'he won\'t do a thing I ask! It\'s always six.', 9127, 'white'),
(82, 'Nat Brekke', 194000000, 'abyss', '75cc', '2019-03-14', '2016', '34538 Holly Junction\nWest Lonnybury, UT 05546-8136', 7, '../imager/hqdefault.jpg', 1, 'THAT in a hurry. \'No, I\'ll look first,\' she said, \'and see whether it\'s marked \"poison\" or not\'; for she had read several nice little histories about children who had got burnt, and eaten up by wild beasts and other unpleasant things, all because they WOULD not remember the simple rules their.', 9583, 'red'),
(83, 'Emmitt Streich', 68000000, 'china', '200cc', '2019-03-14', '2009', '513 Wolff Views\nEast Connor, ID 09690', 8, '../imager/hqdefault.jpg', 2, 'Duchess: \'and the moral of that is--\"Be what you would seem to be\"--or if you\'d like it put more simply--\"Never imagine yourself not to be otherwise than what it might appear to others that what you were or might have been was not otherwise than what you had been would have appeared to them to be.', 5415, 'black'),
(84, 'Enrico Wuckert II', 185000000, 'china', '250cc', '2019-03-14', '2018', '822 Myrtle Forge Apt. 381\nReichertburgh, MS 88470-6339', 6, '../imager/honda-cbr150r-2017-2.jpg', 6, 'Footman, and began whistling. \'Oh, there\'s no use in talking to him,\' said Alice desperately: \'he\'s perfectly idiotic!\' And she opened the door and went in. The door led right into a large kitchen, which was full of smoke from one end to the other: the Duchess was sitting on a three-legged stool.', 2512, 'blue'),
(85, 'Elenora Roob IV', 74000000, 'abyss', '100cc', '2019-03-14', '2018', '9434 Tromp Ville\nTrentonbury, IL 05969-5799', 11, '../imager/dat-bien-so-xe-pkl-28704-1451232869-56800e65bee92.jpeg', 6, 'BEST butter, you know.\' Alice had been looking over his shoulder with some curiosity. \'What a funny watch!\' she remarked. \'It tells the day of the month, and doesn\'t tell what o\'clock it is!\' \'Why should it?\' muttered the Hatter. \'Does YOUR watch tell you what year it is?\' \'Of course not,\' Alice.', 6873, 'red'),
(86, 'Annalise Greenholt', 190000000, 'america', '50cc', '2019-03-14', '2012', '22692 Sawayn Hollow Apt. 344\nSouth Durward, MD 29638', 2, '../imager/honda-cbr150r-2017-2.jpg', 7, 'ARE you talking to?\' said the King, going up to Alice, and looking at the Cat\'s head with great curiosity. \'It\'s a friend of mine--a Cheshire Cat,\' said Alice: \'allow me to introduce it.\' \'I don\'t like the look of it at all,\' said the King: \'however, it may kiss my hand if it likes.\' \'I\'d rather.', 6864, 'yellow'),
(87, 'Ella McCullough', 107000000, 'japan', '200cc', '2019-03-14', '2016', '8309 Felicity Drive\nEffieview, OH 13367-1197', 11, '../imager/dat-bien-so-xe-pkl-28704-1451232869-56800e65bee92.jpeg', 5, 'Queen was to find it out, we should all have our heads cut off, you know. So you see, Miss, we\'re doing our best, afore she comes, to--\' At this moment Five, who had been anxiously looking across the garden, called out \'The Queen! The Queen!\' and the three gardeners instantly threw themselves flat.', 2524, 'yellow'),
(88, 'Melody Homenick', 86000000, 'china', '300cc', '2019-03-14', '2014', '2013 Alana Route\nNew Justyn, PA 82466', 1, '../imager/1518927039108.jpg', 5, 'ME,\' said the Duchess; \'I never could abide figures!\' And with that she began nursing her child again, singing a sort of lullaby to it as she did so, and giving it a violent shake at the end of every line: \'Speak roughly to your little boy, And beat him when he sneezes: He only does it to annoy.', 9104, 'blue'),
(89, 'Terrill Crona', 78000000, 'india', '375cc', '2019-03-14', '2014', '7192 Sharon Turnpike Apt. 792\nLake Felix, CT 99756', 6, '../imager/dat-bien-so-xe-pkl-28704-1451232869-56800e65bee92.jpeg', 7, 'Gryphon, and all the other queer noises, would change (she knew) to the confused clamour of the busy farm-yard--while the lowing of the cattle in the distance would take the place of the Mock Turtle\'s heavy sobs. Lastly, she pictured to herself how this same little sister of hers would, in the.', 9007, 'black'),
(90, 'Marcel Moore V', 176000000, 'japan', '300cc', '2019-03-14', '2015', '62072 Casper Prairie Apt. 155\nGwendolynside, NV 97544', 10, '../imager/dat-bien-so-xe-pkl-28704-1451232869-56800e65bee92.jpeg', 8, 'Alice, rather doubtfully, as she remembered the number of changes she had gone through that day. \'A likely story indeed!\' said the Pigeon in a sulky tone, as it settled down again into its nest. Alice crouched down among the trees as well as she could, for her neck kept getting entangled among the.', 148, 'black'),
(91, 'Ms. Karolann Larson DDS', 181000000, 'prc', '100cc', '2019-03-14', '2017', '60664 Adelia Estate\nLaurelbury, VA 14973', 7, '../imager/dat-bien-so-xe-pkl-28704-1451232869-56800e65bee92.jpeg', 2, 'Mock Turtle. \'Very much indeed,\' said Alice. \'Come, let\'s try the first figure!\' said the Mock Turtle to the Gryphon. \'We can do without lobsters, you know. Which shall sing?\' \'Oh, YOU sing,\' said the Gryphon. \'I\'ve forgotten the words.\' So they began solemnly dancing round and round Alice, every.', 9765, 'red'),
(92, 'Kobe Reichert PhD', 72000000, 'china', '75cc', '2019-03-14', '2016', '16798 Terry Glen Apt. 507\nLyrictown, CO 20359', 10, '../imager/Kawasaki-Ninja-H2-2015-banner-1.jpg', 8, 'I can\'t quite follow it as you say it.\' \'That\'s nothing to what I could say if I chose,\' the Duchess replied, in a pleased tone. \'Pray don\'t trouble yourself to say it any longer than that,\' said Alice. \'Oh, don\'t talk about trouble!\' said the Duchess. \'I make you a present of everything I\'ve said.', 9414, 'white'),
(93, 'Gerda Hammes', 43000000, 'abyss', '375cc', '2019-03-14', '2017', '70198 Cummerata Viaduct Suite 472\nNew Peter, OR 35699-2631', 4, '../imager/honda-cbr150r-2017-2.jpg', 4, 'I like\"!\' \'You might just as well say,\' added the March Hare, \'that \"I like what I get\" is the same thing as \"I get what I like\"!\' \'You might just as well say that \"I see what I eat\" is the same thing as \"I sleep when I breathe\"!\' \'It IS the same thing with you,\' said the Hatter, and here the.', 7728, 'blue'),
(94, 'Emilio Reichert', 107000000, 'china', '75cc', '2019-03-14', '2014', '36992 Walker Crescent Suite 490\nWest Jaren, IN 60615', 8, '../imager/dat-bien-so-xe-pkl-28704-1451232869-56800e65bee92.jpeg', 7, 'English,\' thought Alice; \'I daresay it\'s a French mouse, come over with William the Conqueror.\' (For, with all her knowledge of history, Alice had no very clear notion how long ago anything had happened.) So she began again: \'Ou est ma chatte?\' which was the first sentence in her French.', 4545, 'white'),
(95, 'Wyatt Rohan', 195000000, 'china', '100cc', '2019-03-14', '2018', '9406 Tyrique Stream\nNew Hudson, FL 41649-1874', 2, '../imager/20130923_f9c26d8182feef592b82754a0aa8c4f4_1379906185.jpg', 1, 'Latin Grammar, \'A mouse--of a mouse--to a mouse--a mouse--O mouse!\') The Mouse looked at her rather inquisitively, and seemed to her to wink with one of its little eyes, but it said nothing. \'Perhaps it doesn\'t understand English,\' thought Alice; \'I daresay it\'s a French mouse, come over with.', 7680, 'red'),
(96, 'Ms. Amira O\'Hara PhD', 54000000, 'india', '100cc', '2019-03-14', '2010', '306 Bernier Trafficway\nWest Haleymouth, ND 04662-4668', 4, '../imager/Kawasaki-Ninja-H2-2015-banner-1.jpg', 1, 'Alice said to herself, as well as she could remember them, all these strange Adventures of hers that you have just been reading about; and when she had finished, her sister kissed her, and said, \'It WAS a curious dream, dear, certainly: but now run in to your tea; it\'s getting late.\' So Alice got.', 4469, 'yellow'),
(97, 'Audie Bashirian', 31000000, 'vietnam', '300cc', '2019-03-14', '2017', '4008 Alexandrine Extensions Apt. 566\nJanshire, NV 41558', 11, '../imager/1518927039108.jpg', 7, 'I wonder who will put on your shoes and stockings for you now, dears? I\'m sure _I_ shan\'t be able! I shall be a great deal too far off to trouble myself about you: you must manage the best way you can;--but I must be kind to them,\' thought Alice, \'or perhaps they won\'t walk the way I want to go!.', 597, 'yellow'),
(98, 'Newton Reinger', 142000000, 'japan', '175cc', '2019-03-14', '2015', '9705 Sanford Locks\nLake Lon, OR 98168', 5, '../imager/dat-bien-so-xe-pkl-28704-1451232869-56800e65bee92.jpeg', 3, 'FIT you,\' said the King, looking round the court with a smile. There was a dead silence. \'It\'s a pun!\' the King added in an offended tone, and everybody laughed, \'Let the jury consider their verdict,\' the King said, for about the twentieth time that day. \'No, no!\' said the Queen. \'Sentence.', 4233, 'yellow'),
(99, 'Prof. Conor Schroeder Sr.', 87000000, 'japan', '100cc', '2019-03-14', '2010', '7691 Balistreri Plains Suite 597\nCartwrightside, ME 03525', 3, '../imager/hqdefault.jpg', 1, 'Alice, she went on, \'What\'s your name, child?\' \'My name is Alice, so please your Majesty,\' said Alice very politely; but she added, to herself, \'Why, they\'re only a pack of cards, after all. I needn\'t be afraid of them!\' \'And who are THESE?\' said the Queen, pointing to the three gardeners who were.', 1967, 'white'),
(102, 'san phâm 1', 199999, 'Việt Nam', '120', '2019-03-22', '2019', 'Đại chỉ', 12, '../imager/4-1.jpg', 3, 'fsda', NULL, 'màu'),
(108, 'hà nội', 12, '21', '21', '2019-03-23', '12', '12', 1, '../imager/121.jpg', 1, '12', NULL, '21');

-- --------------------------------------------------------

--
-- Table structure for table `types`
--

CREATE TABLE `types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `types`
--

INSERT INTO `types` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Scooter', '2019-03-14 11:47:45', NULL),
(2, 'Underbone', '2019-03-14 11:47:45', NULL),
(3, 'Ambraya', '2019-03-14 11:47:45', NULL),
(4, 'Naked bike', '2019-03-14 11:47:45', NULL),
(5, 'sport bike', '2019-03-14 11:47:45', NULL),
(6, 'Classic', '2019-03-14 11:47:45', NULL),
(7, 'Cruiser', '2019-03-14 11:47:45', NULL),
(8, 'Touring', '2019-03-14 11:47:45', NULL),
(9, 'Off-road', '2019-03-14 11:47:45', NULL),
(10, 'Bobber', '2019-03-14 11:47:45', NULL),
(11, 'Drag', '2019-03-14 11:47:45', NULL),
(12, 'loại moi', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permissions` int(11) DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `avatar`, `email`, `password`, `permissions`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', '../imager_user/linh.jpg', 'admin@gmail.com', '123456', 1, NULL, '2019-03-14 11:47:40', NULL),
(2, 'Thanh', '../imager_user/Cho-Alaska-hai-huoc-va-nhi-nhanh.jpg', 'pnthanh22121999@gmail.com', '123456', 1, NULL, '2019-03-14 11:47:40', NULL),
(3, 'Mr. Kay Lynch I', '../imager_user/754bed96a0616a46dbe49ec12596c6c4.jpg', 'zfranecki@lueilwitz.org', '123456', 0, NULL, '2019-03-14 11:47:41', NULL),
(4, 'Dr. Ayden Koelpin', '../imager_user/images (2).jpg', 'kunze.caleb@corkery.com', '123456', 0, NULL, '2019-03-14 11:47:41', NULL),
(5, 'Hilario Doyle', '../imager_user/212310618041193431006884986278710988847462n-1507458620893.jpg', 'hickle.marjory@yahoo.com', '123456', 0, NULL, '2019-03-14 11:47:42', NULL),
(6, 'Mrs. Kariane Harvey DVM', '../imager_user/754bed96a0616a46dbe49ec12596c6c4.jpg', 'cremin.elody@yahoo.com', '123456', 0, NULL, '2019-03-14 11:47:42', NULL),
(7, 'Agnes Gerlach', '../imager_user/images (1).jpg', 'zoe71@flatley.info', '123456', 0, NULL, '2019-03-14 11:47:42', NULL),
(8, 'Miss Florence Leuschke', '../imager_user/images.jpg', 'ngerhold@murphy.biz', '123456', 0, NULL, '2019-03-14 11:47:42', NULL),
(9, 'Prof. Eliezer Smitham I', '../imager_user/212310618041193431006884986278710988847462n-1507458620893.jpg', 'emanuel.price@dubuque.com', '123456', 0, NULL, '2019-03-14 11:47:42', NULL),
(10, 'Raven Kub', '../imager_user/13151599_807990012635341_3384564945476612801_n_1.jpg', 'crona.arlene@daugherty.com', '123456', 0, NULL, '2019-03-14 11:47:42', NULL),
(11, 'Lauryn Olson', '../imager_user/453296982021299411285530489789381717000192n-1541424536023360360322.png', 'mossie37@von.com', '123456', 0, NULL, '2019-03-14 11:47:42', NULL),
(12, 'Jovanny Effertz', '../imager_user/koh1495766571_7637.jpg', 'nels34@yahoo.com', '123456', 0, NULL, '2019-03-14 11:47:42', NULL),
(13, 'Reilly Green', '../imager_user/1395766_1539410562939293_7462015777995791013_n.jpg', 'ihagenes@yahoo.com', '123456', 0, NULL, '2019-03-14 11:47:42', NULL),
(14, 'Cynthia Lubowitz', '../imager_user/images (3).jpg', 'krajcik.otto@huel.com', '123456', 0, NULL, '2019-03-14 11:47:42', NULL),
(15, 'Kasandra Little', '../imager_user/images.jpg', 'hmills@kuhic.net', '123456', 0, NULL, '2019-03-14 11:47:42', NULL),
(16, 'Josh Kub', '../imager_user/images (1).jpg', 'jnolan@yahoo.com', '123456', 0, NULL, '2019-03-14 11:47:42', NULL),
(17, 'Dr. Chaya Corwin Sr.', '../imager_user/1395766_1539410562939293_7462015777995791013_n.jpg', 'koelpin.gerda@gmail.com', '123456', 0, NULL, '2019-03-14 11:47:42', NULL),
(18, 'Ron Gottlieb', '../imager_user/9._26154420.jpg', 'greenholt.chesley@gmail.com', '123456', 0, NULL, '2019-03-14 11:47:42', NULL),
(19, 'Miss Reanna Graham PhD', '../imager_user/images (3).jpg', 'ezekiel.kunde@yahoo.com', '123456', 0, NULL, '2019-03-14 11:47:42', NULL),
(20, 'Camryn McGlynn', '../imager_user/images (1).jpg', 'trever00@gmail.com', '123456', 0, NULL, '2019-03-14 11:47:42', NULL),
(21, 'Janet Runolfsdottir', '../imager_user/9._26154420.jpg', 'flatley.brady@rau.com', '123456', 0, NULL, '2019-03-14 11:47:42', NULL),
(22, 'Pauline Brekke', '../imager_user/images (2).jpg', 'jheathcote@hotmail.com', '123456', 0, NULL, '2019-03-14 11:47:42', NULL),
(23, 'Dr. Berta Torphy', '../imager_user/fsđsfdsfdsffds.jpg', 'douglas.connie@hotmail.com', '123456', 0, NULL, '2019-03-14 11:47:42', NULL),
(24, 'Janae Stokes I', '../imager_user/9._26154420.jpg', 'gulgowski.corrine@hotmail.com', '123456', 0, NULL, '2019-03-14 11:47:42', NULL),
(25, 'Jaquelin Bartoletti PhD', '../imager_user/images (3).jpg', 'jones.esther@yahoo.com', '123456', 0, NULL, '2019-03-14 11:47:42', NULL),
(26, 'Abbigail Ortiz', '../imager_user/754bed96a0616a46dbe49ec12596c6c4.jpg', 'gkoepp@swift.com', '123456', 0, NULL, '2019-03-14 11:47:42', NULL),
(27, 'Mr. Ian Lind', '../imager_user/13151599_807990012635341_3384564945476612801_n_1.jpg', 'stone.howe@hotmail.com', '123456', 0, NULL, '2019-03-14 11:47:42', NULL),
(28, 'Vivienne Waelchi IV', '../imager_user/images (2).jpg', 'isabelle63@heidenreich.org', '123456', 0, NULL, '2019-03-14 11:47:42', NULL),
(29, 'Brett Wolf', '../imager_user/754bed96a0616a46dbe49ec12596c6c4.jpg', 'sipes.shakira@hotmail.com', '123456', 0, NULL, '2019-03-14 11:47:42', NULL),
(30, 'Zachariah Dicki', '../imager_user/13151599_807990012635341_3384564945476612801_n_1.jpg', 'reyes90@jakubowski.com', '123456', 0, NULL, '2019-03-14 11:47:42', NULL),
(31, 'Prof. Brandt Marquardt DDS', '../imager_user/images (1).jpg', 'richard53@yahoo.com', '123456', 0, NULL, '2019-03-14 11:47:42', NULL),
(32, 'Christopher Hackett', '../imager_user/images.jpg', 'meta.durgan@reilly.com', '123456', 0, NULL, '2019-03-14 11:47:42', NULL),
(33, 'Nakia Schmidt', '../imager_user/images.jpg', 'harley05@adams.org', '123456', 0, NULL, '2019-03-14 11:47:42', NULL),
(34, 'Mrs. Jada Renner I', '../imager_user/images.jpg', 'mcdermott.casper@yahoo.com', '123456', 0, NULL, '2019-03-14 11:47:42', NULL),
(35, 'Alyce Crona', '../imager_user/212310618041193431006884986278710988847462n-1507458620893.jpg', 'aubree34@gmail.com', '123456', 0, NULL, '2019-03-14 11:47:43', NULL),
(36, 'Austyn Rosenbaum DVM', '../imager_user/images (3).jpg', 'bernard40@jast.org', '123456', 0, NULL, '2019-03-14 11:47:43', NULL),
(37, 'Elenor Bauch', '../imager_user/13151599_807990012635341_3384564945476612801_n_1.jpg', 'dianna.leffler@hoeger.com', '123456', 0, NULL, '2019-03-14 11:47:43', NULL),
(38, 'Karlee Kessler', '../imager_user/212310618041193431006884986278710988847462n-1507458620893.jpg', 'roob.jacky@hotmail.com', '123456', 0, NULL, '2019-03-14 11:47:43', NULL),
(39, 'Prof. Garrick Carter IV', '../imager_user/1395766_1539410562939293_7462015777995791013_n.jpg', 'yvette.wehner@yahoo.com', '123456', 0, NULL, '2019-03-14 11:47:43', NULL),
(40, 'Grace Johnston', '../imager_user/754bed96a0616a46dbe49ec12596c6c4.jpg', 'jerde.lorenz@gutkowski.com', '123456', 0, NULL, '2019-03-14 11:47:43', NULL),
(41, 'Nannie Windler', '../imager_user/212310618041193431006884986278710988847462n-1507458620893.jpg', 'braun.moses@nikolaus.net', '123456', 0, NULL, '2019-03-14 11:47:43', NULL),
(42, 'Keaton Cassin', '../imager_user/9._26154420.jpg', 'clare.nicolas@yahoo.com', '123456', 0, NULL, '2019-03-14 11:47:43', NULL),
(43, 'Dalton Ferry', '../imager_user/images (3).jpg', 'kilback.reid@gerlach.com', '123456', 0, NULL, '2019-03-14 11:47:43', NULL),
(44, 'Prof. Alexane Toy Sr.', '../imager_user/13151599_807990012635341_3384564945476612801_n_1.jpg', 'dkovacek@hotmail.com', '123456', 0, NULL, '2019-03-14 11:47:43', NULL),
(45, 'Ronny Pouros', '../imager_user/images (3).jpg', 'colt.walsh@berge.com', '123456', 0, NULL, '2019-03-14 11:47:43', NULL),
(46, 'Jamey Borer', '../imager_user/754bed96a0616a46dbe49ec12596c6c4.jpg', 'shyanne46@schowalter.com', '123456', 0, NULL, '2019-03-14 11:47:43', NULL),
(47, 'Dr. Amos Paucek', '../imager_user/images (1).jpg', 'urban97@hotmail.com', '123456', 0, NULL, '2019-03-14 11:47:43', NULL),
(48, 'Eliane Cruickshank', '../imager_user/212310618041193431006884986278710988847462n-1507458620893.jpg', 'pacocha.rosella@botsford.com', '123456', 0, NULL, '2019-03-14 11:47:43', NULL),
(49, 'Edna Leuschke', '../imager_user/images (3).jpg', 'dayne.ebert@powlowski.com', '123456', 0, NULL, '2019-03-14 11:47:43', NULL),
(50, 'Vella Weber PhD', '../imager_user/images (1).jpg', 'rosendo.marvin@schoen.com', '123456', 0, NULL, '2019-03-14 11:47:43', NULL),
(51, 'Shaylee Yost', '../imager_user/images (1).jpg', 'veum.alysha@gmail.com', '123456', 0, NULL, '2019-03-14 11:47:43', NULL),
(52, 'Prof. Mattie Kemmer V', '../imager_user/images.jpg', 'abbie33@gmail.com', '123456', 0, NULL, '2019-03-14 11:47:43', NULL),
(53, 'Francesca Bayer', '../imager_user/212310618041193431006884986278710988847462n-1507458620893.jpg', 'madisen47@yahoo.com', '123456', 0, NULL, '2019-03-14 11:47:43', NULL),
(54, 'Abbey Daniel MD', '../imager_user/9._26154420.jpg', 'zskiles@gmail.com', '123456', 0, NULL, '2019-03-14 11:47:43', NULL),
(55, 'Mr. Guiseppe West IV', '../imager_user/images (2).jpg', 'geovanny.borer@jones.com', '123456', 0, NULL, '2019-03-14 11:47:43', NULL),
(56, 'Francisca Kirlin', '../imager_user/1395766_1539410562939293_7462015777995791013_n.jpg', 'sawayn.enos@gerlach.com', '123456', 0, NULL, '2019-03-14 11:47:43', NULL),
(57, 'Amanda Hand', '../imager_user/koh1495766571_7637.jpg', 'fgrimes@hotmail.com', '123456', 0, NULL, '2019-03-14 11:47:43', NULL),
(58, 'Prof. Noemi Shanahan V', '../imager_user/9._26154420.jpg', 'bode.tristin@gmail.com', '123456', 0, NULL, '2019-03-14 11:47:43', NULL),
(59, 'Kitty Hauck', '../imager_user/13151599_807990012635341_3384564945476612801_n_1.jpg', 'ethan.krajcik@howell.info', '123456', 0, NULL, '2019-03-14 11:47:43', NULL),
(60, 'Serena Barrows', '../imager_user/koh1495766571_7637.jpg', 'jason.mraz@prosacco.com', '123456', 0, NULL, '2019-03-14 11:47:43', NULL),
(61, 'Mr. Joshua Maggio IV', '../imager_user/koh1495766571_7637.jpg', 'mohr.orin@balistreri.info', '123456', 0, NULL, '2019-03-14 11:47:43', NULL),
(62, 'Madelyn Paucek', '../imager_user/koh1495766571_7637.jpg', 'nwalker@sporer.com', '123456', 0, NULL, '2019-03-14 11:47:43', NULL),
(63, 'Orin Luettgen', '../imager_user/images (2).jpg', 'aschuppe@lockman.org', '123456', 0, NULL, '2019-03-14 11:47:43', NULL),
(64, 'Kevin Wilkinson', '../imager_user/images.jpg', 'khansen@harber.com', '123456', 0, NULL, '2019-03-14 11:47:43', NULL),
(65, 'Newell Cassin', '../imager_user/images (3).jpg', 'annamarie.kirlin@yahoo.com', '123456', 0, NULL, '2019-03-14 11:47:43', NULL),
(66, 'Gonzalo Flatley', '../imager_user/koh1495766571_7637.jpg', 'chasity.marquardt@hotmail.com', '123456', 0, NULL, '2019-03-14 11:47:43', NULL),
(67, 'Mathias Hintz', '../imager_user/fsđsfdsfdsffds.jpg', 'irussel@yahoo.com', '123456', 0, NULL, '2019-03-14 11:47:43', NULL),
(68, 'Roxane Morissette', '../imager_user/13151599_807990012635341_3384564945476612801_n_1.jpg', 'magali01@jast.com', '123456', 0, NULL, '2019-03-14 11:47:43', NULL),
(69, 'Norval Simonis', '../imager_user/1395766_1539410562939293_7462015777995791013_n.jpg', 'gloria88@okon.biz', '123456', 0, NULL, '2019-03-14 11:47:43', NULL),
(70, 'Prof. Jeffrey Botsford II', '../imager_user/images (3).jpg', 'nthiel@gmail.com', '123456', 0, NULL, '2019-03-14 11:47:44', NULL),
(71, 'Serenity Gulgowski', '../imager_user/9._26154420.jpg', 'pfriesen@yahoo.com', '123456', 0, NULL, '2019-03-14 11:47:44', NULL),
(72, 'Mr. Sterling Kerluke PhD', '../imager_user/1395766_1539410562939293_7462015777995791013_n.jpg', 'chase.leffler@waters.com', '123456', 0, NULL, '2019-03-14 11:47:44', NULL),
(73, 'Ashton Abbott', '../imager_user/1395766_1539410562939293_7462015777995791013_n.jpg', 'trantow.ardith@kreiger.com', '123456', 0, NULL, '2019-03-14 11:47:44', NULL),
(74, 'Gracie Grant', '../imager_user/images (2).jpg', 'lucious.terry@gmail.com', '123456', 0, NULL, '2019-03-14 11:47:44', NULL),
(75, 'Lera Schmitt', '../imager_user/images (2).jpg', 'bernice71@kub.com', '123456', 0, NULL, '2019-03-14 11:47:44', NULL),
(76, 'Christopher Schulist', '../imager_user/fsđsfdsfdsffds.jpg', 'hosea.wisozk@walsh.org', '123456', 0, NULL, '2019-03-14 11:47:44', NULL),
(77, 'Jennie Jacobson I', '../imager_user/images.jpg', 'weimann.caleigh@bins.com', '123456', 0, NULL, '2019-03-14 11:47:44', NULL),
(78, 'Trey Muller I', '../imager_user/fsđsfdsfdsffds.jpg', 'rhyatt@johnston.com', '123456', 0, NULL, '2019-03-14 11:47:44', NULL),
(79, 'Dr. Triston Kuphal', '../imager_user/images (2).jpg', 'braeden.schuster@abbott.com', '123456', 0, NULL, '2019-03-14 11:47:44', NULL),
(80, 'Hassan Hane', '../imager_user/13151599_807990012635341_3384564945476612801_n_1.jpg', 'carmine30@parker.com', '123456', 0, NULL, '2019-03-14 11:47:44', NULL),
(81, 'Delpha Legros', '../imager_user/1395766_1539410562939293_7462015777995791013_n.jpg', 'cassandra.williamson@gmail.com', '123456', 0, NULL, '2019-03-14 11:47:44', NULL),
(82, 'Justyn Langosh', '../imager_user/images.jpg', 'kerluke.lavern@yahoo.com', '123456', 0, NULL, '2019-03-14 11:47:44', NULL),
(83, 'Dr. Keeley Rempel', '../imager_user/212310618041193431006884986278710988847462n-1507458620893.jpg', 'uharber@gmail.com', '123456', 0, NULL, '2019-03-14 11:47:44', NULL),
(84, 'Alena Crist', '../imager_user/13151599_807990012635341_3384564945476612801_n_1.jpg', 'jarod.okeefe@yahoo.com', '123456', 0, NULL, '2019-03-14 11:47:44', NULL),
(85, 'Delta Rowe', '../imager_user/images (1).jpg', 'dooley.frederik@gmail.com', '123456', 0, NULL, '2019-03-14 11:47:44', NULL),
(86, 'Dr. Francis Kuhlman II', '../imager_user/images.jpg', 'schneider.fae@shanahan.com', '123456', 0, NULL, '2019-03-14 11:47:44', NULL),
(87, 'Mr. Jordyn Schneider', '../imager_user/9._26154420.jpg', 'littel.baylee@ziemann.com', '123456', 0, NULL, '2019-03-14 11:47:44', NULL),
(88, 'Dr. Maiya Stroman I', '../imager_user/212310618041193431006884986278710988847462n-1507458620893.jpg', 'fmcdermott@tillman.com', '123456', 0, NULL, '2019-03-14 11:47:44', NULL),
(89, 'Nadia Jenkins', '../imager_user/images.jpg', 'carter.candace@kling.com', '123456', 0, NULL, '2019-03-14 11:47:44', NULL),
(90, 'Mr. Clifford Haley', '../imager_user/1395766_1539410562939293_7462015777995791013_n.jpg', 'logan.lowe@hotmail.com', '123456', 0, NULL, '2019-03-14 11:47:44', NULL),
(91, 'Carlotta Carroll', '../imager_user/koh1495766571_7637.jpg', 'kunze.tara@hotmail.com', '123456', 0, NULL, '2019-03-14 11:47:44', NULL),
(92, 'Mozell Goyette', '../imager_user/koh1495766571_7637.jpg', 'zzieme@johnson.org', '123456', 0, NULL, '2019-03-14 11:47:44', NULL),
(93, 'Jackie Prosacco', '../imager_user/images (2).jpg', 'marty.gaylord@hotmail.com', '123456', 0, NULL, '2019-03-14 11:47:44', NULL),
(94, 'Prof. Dashawn Fisher IV', '../imager_user/images (2).jpg', 'hodkiewicz.sonny@mante.com', '123456', 0, NULL, '2019-03-14 11:47:44', NULL),
(95, 'Janessa Hermiston', '../imager_user/212310618041193431006884986278710988847462n-1507458620893.jpg', 'maximillian.bernier@breitenberg.com', '123456', 0, NULL, '2019-03-14 11:47:44', NULL),
(96, 'Dr. Deonte Torp PhD', '../imager_user/fsđsfdsfdsffds.jpg', 'rkoepp@gmail.com', '123456', 0, NULL, '2019-03-14 11:47:44', NULL),
(97, 'Lon Stokes', '../imager_user/images (1).jpg', 'loy.harris@cruickshank.com', '123456', 0, NULL, '2019-03-14 11:47:44', NULL),
(98, 'Mr. Maximilian Harber', '../imager_user/images (1).jpg', 'ben.lindgren@emmerich.com', '123456', 0, NULL, '2019-03-14 11:47:44', NULL),
(99, 'Crystel Runolfsdottir DVM', '../imager_user/images (3).jpg', 'gerardo.mccullough@schuster.com', '123456', 0, NULL, '2019-03-14 11:47:44', NULL),
(100, 'Ressie Schneider', '../imager_user/212310618041193431006884986278710988847462n-1507458620893.jpg', 'nathan75@hotmail.com', '123456', 0, NULL, '2019-03-14 11:47:44', NULL),
(101, 'Chester Bashirian', '../imager_user/koh1495766571_7637.jpg', 'roberta20@kshlerin.com', '123456', 0, NULL, '2019-03-14 11:47:44', NULL),
(102, 'Daren Roob', '../imager_user/images (1).jpg', 'schaefer.cooper@oreilly.biz', '123456', 0, NULL, '2019-03-14 11:47:45', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bills`
--
ALTER TABLE `bills`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bills_detail`
--
ALTER TABLE `bills_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `types`
--
ALTER TABLE `types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bills`
--
ALTER TABLE `bills`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `bills_detail`
--
ALTER TABLE `bills_detail`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT for table `types`
--
ALTER TABLE `types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
