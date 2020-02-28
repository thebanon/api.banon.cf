-- phpMyAdmin SQL Dump
-- version 5.0.0-alpha1
-- https://www.phpmyadmin.net/
--
-- Host: ocvwlym0zv3tcn68.cbetxkdyhwsb.us-east-1.rds.amazonaws.com:3306
-- Generation Time: Nov 19, 2019 at 10:11 PM
-- Server version: 5.7.23-log
-- PHP Version: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ht48fxrju9fi4h7g`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity`
--

CREATE TABLE `activity` (
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ref` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `tbl` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `uid` int(11) NOT NULL,
  `user` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `activity`
--

INSERT INTO `activity` (`created`, `ref`, `tbl`, `type`, `uid`, `user`) VALUES
('2019-09-26 02:18:14', '557', 'merch', 'like', 1, 'w4IYt41E4nQ2gJVGIlDtyd7p3J73'),
('2019-09-26 02:18:14', '148', 'brands', 'subscribe', 2, 'w4IYt41E4nQ2gJVGIlDtyd7p3J73'),
('2019-09-26 02:18:14', '1', 'brands', 'subscribe', 3, 'w4IYt41E4nQ2gJVGIlDtyd7p3J73'),
('2019-09-26 02:18:14', 'a6R6oPi8e0hkgdNN6ytB8eSltq12', 'users', 'follow', 4, 'w4IYt41E4nQ2gJVGIlDtyd7p3J73'),
('2019-09-26 02:18:14', 'w4IYt41E4nQ2gJVGIlDtyd7p3J73', 'users', 'follow', 5, 'vJneDcgvNpfExnOh2wRLQ6Kr5hG2'),
('2019-09-26 02:18:14', 'e83bce6b90a1106b928d89b4447a7767', 'video', 'view', 26, 'w4IYt41E4nQ2gJVGIlDtyd7p3J73'),
('2019-09-26 02:18:14', '83', 'brands', 'subscribe', 27, 'w4IYt41E4nQ2gJVGIlDtyd7p3J73'),
('2019-09-26 02:18:14', '83', 'brands', 'subscribe', 28, 'vJneDcgvNpfExnOh2wRLQ6Kr5hG2');

-- --------------------------------------------------------

--
-- Table structure for table `ads`
--

CREATE TABLE `ads` (
  `app` int(11) DEFAULT NULL,
  `button` text COLLATE utf8_unicode_ci,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `description` text COLLATE utf8_unicode_ci,
  `id` int(32) DEFAULT NULL,
  `name` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `placement` int(3) DEFAULT NULL,
  `uid` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` text COLLATE utf8_unicode_ci,
  `usr` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ads`
--

INSERT INTO `ads` (`app`, `button`, `created`, `description`, `id`, `name`, `placement`, `uid`, `url`, `usr`) VALUES
(NULL, NULL, '2019-06-19 16:30:38', NULL, NULL, 'Nike Free X Metcon', 3, '33', '/shop/nike/', NULL),
(NULL, NULL, '2019-06-19 16:30:38', NULL, NULL, 'Mall Estate - Pro Stores', 2, '37', '/shop/setup/', NULL),
(NULL, NULL, '2019-06-19 16:30:38', NULL, NULL, 'Kids Retro Jordans', 5, '45', NULL, NULL),
(NULL, NULL, '2019-06-19 16:30:38', NULL, NULL, 'iPhone X is here', 5, '46', NULL, NULL),
(NULL, NULL, '2019-06-19 16:30:38', NULL, NULL, 'Fortnite Takeover', 5, '47', NULL, NULL),
(NULL, NULL, '2019-06-19 16:30:38', NULL, NULL, 'Louis Vuitton', 4, '48', NULL, NULL),
(NULL, NULL, '2019-06-19 16:30:38', NULL, NULL, 'Nike Women\'s Running Shoe', 4, '49', NULL, NULL),
(46, 'Shop Verizon', '2019-06-19 16:30:38', 'Get up to 50% off our best phones. Like the Samsung Galaxy S9 and Google Pixel 2. Because unlimited is only as good as the network it is on.', NULL, 'Gifts for Grads', 4, '51', NULL, NULL),
(42, 'Shop Levi\'s', '2019-06-19 16:30:38', 'Great weather feels even better with the right style.', NULL, 'Aww, Summer 18', 2, '52', NULL, NULL),
(13, 'Shop Microsoft', '2019-06-19 16:30:38', 'Find your perfect Windows 10 device from Microsoft.', NULL, 'Windows 10 Devices', 2, '53', NULL, NULL),
(3, 'Shop React', '2019-06-19 16:30:38', 'Discover new designs inspired by world-renowned run crews.', NULL, 'Nike Epic React', 1, '54', '/shop/nike/', NULL),
(32, 'Shop T-Mobile', '2019-06-19 16:30:38', 'Your go-to brands to the artists \r\nand teams you obsess over. \r\nRewards you really, really want.-Mobile tops the charts again with the fastest speeds and most available 4G LTE, according to OpenSignal. ', NULL, 'Welcome to America\'s.<br>Best Un', 2, '56', NULL, NULL),
(50, 'Shop Collection', '2019-06-19 16:30:38', 'Lose yourself in these sprawling VR stories.', NULL, 'PlayStation®VR Collection: Epic ', 1, '57', NULL, NULL),
(NULL, 'Buy Now', '2019-06-19 16:30:38', ' Cig CRO brushes · Shirts · Silk daddies · Space jam water · Black Mask', NULL, 'Shop Hoodaville', 1, '59', 'https://linktr.ee/hoodavillefab', 'ad2d0acc10e88b76ea9a88e13f07d912');

-- --------------------------------------------------------

--
-- Table structure for table `alerts`
--

CREATE TABLE `alerts` (
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `detail` text COLLATE utf8_unicode_ci,
  `ref` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `uid` int(64) NOT NULL,
  `user` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blocks`
--

CREATE TABLE `blocks` (
  `json` json DEFAULT NULL,
  `page` int(64) DEFAULT NULL,
  `sort` int(11) DEFAULT '0',
  `uid` int(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `blocks`
--

INSERT INTO `blocks` (`json`, `page`, `sort`, `uid`) VALUES
('{\"max\": 1, \"algo\": \"app\", \"type\": \"embed\", \"style\": \"SingleFull\", \"table\": \"video\", \"title\": \"Viral Video\"}', 165, 0, 1),
('{\"max\": 5, \"algo\": \"app\", \"card\": true, \"style\": \"BreakingNews\", \"table\": \"blogs\", \"title\": \"New News\"}', 165, 1, 2),
('{\"max\": 4, \"algo\": \"app\", \"card\": true, \"more\": \"View more >>\", \"type\": \"brands\", \"style\": \"TwoColumn\", \"table\": \"photo\", \"title\": \"Popular Photos\"}', 165, 2, 3),
('{\"max\": 6, \"algo\": \"app\", \"type\": \"ad\", \"style\": \"explore\", \"table\": \"merch\", \"title\": \"Interesting Items\"}', 165, 3, 4),
('{\"max\": 1, \"algo\": \"app\", \"type\": \"embed\", \"style\": \"SingleFull\", \"table\": \"video\", \"title\": \"Viral Video\"}', 179, 0, 5),
('{\"max\": 4, \"algo\": \"app\", \"card\": true, \"more\": \"View more >>\", \"type\": \"brands\", \"style\": \"TwoColumn\", \"table\": \"photo\", \"title\": \"Popular Photos\"}', 63, 0, 6),
('{\"max\": 6, \"algo\": \"app\", \"type\": \"ad\", \"style\": \"explore\", \"table\": \"merch\", \"title\": \"Interesting Items\"}', 63, 1, 7),
('{\"max\": 4, \"algo\": \"app\", \"card\": true, \"more\": \"View more >>\", \"type\": \"brands\", \"style\": \"TwoColumn\", \"table\": \"photo\", \"title\": \"Popular Photos\"}', 179, 1, 8),
('{\"max\": 6, \"algo\": \"app\", \"type\": \"ad\", \"style\": \"explore\", \"table\": \"merch\", \"title\": \"Interesting Items\"}', 179, 2, 9);

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `app` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `description` text COLLATE utf8_unicode_ci,
  `href` text COLLATE utf8_unicode_ci,
  `html` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `image` text COLLATE utf8_unicode_ci,
  `page` int(11) DEFAULT NULL,
  `source` text COLLATE utf8_unicode_ci,
  `title` text COLLATE utf8_unicode_ci,
  `updated` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `uid` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `user` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`app`, `category`, `created`, `description`, `href`, `html`, `image`, `page`, `source`, `title`, `updated`, `uid`, `user`) VALUES
(104, NULL, '2018-11-20 02:23:31', 'Walt Disney Co. recently held talks to purchase a large chunk of 21st Century Fox’s entertainment businesses, people close to the talks said, signaling Disney is serious about bolstering its TV operations and Rupert Murdoch is open to a restructuring of his empire.', 'https://www.wsj.com/articles/disney-held-talks-to-acquire-assets-of-21st-century-fox-1509994869', 'Yesterday, Disney filed papers with the Securities and Exchange Commission regarding its acquisition of 21st Century Fox in December. The document highlights the details of the acquisition, as well as a timeline that shows off how the talks began. It also reveals that Disney wasn’t the only company interested in acquiring Fox — Verizon and Comcast also came calling.\r\n\r\nThe SEC filing makes for a dry but at times fascinating read. As it unfolded in the press last November and December, it was clear that there were some ups and downs behind the scenes. The document shows how the complicated deal came together, and how both companies agonized not only over what parts to acquire, but how to do so while avoiding regulators.\r\n\r\nAUGUST\r\nDiscussions for a merger between the two companies began on August 9th, 2017, when 21st Century executive chairman Rupert Murdoch and Disney CEO Bob Iger met in Los Angeles. (The two have reportedly met “from time to time” to discuss the ups and downs of the media environment and its future.) At some point during this conversation, the idea of a possible “strategic transaction” between the two companies came up.\r\n\r\nDays later, 21st Century’s executive chairman Lachlan Murdoch and its CEO James Murdoch met with a third party named in the SEC filing as “Party A.” Variety and Deadline both report Party A was Verizon CEO Lowell McAdam, who also floated the idea of an acquisition. Verizon had already acquired Yahoo the year before, and it has rolled Yahoo and AOL into a new company called Oath.\r\n\r\nTwo weeks later, Iger and Rupert Murdoch spoke again, and they agreed to begin exploring some sort of acquisition. In early September, 21st Century Fox told Verizon that they weren’t interested unless the company could make them an offer in excess of Fox’s current market valuation, around $45 billion at the time.\r\n\r\nSEPTEMBER\r\nFor the rest of September, officials from the two companies began working out which parts Disney would acquire 21st Century Fox — the sum of which would be renamed RemainCo — and which parts would be renamed, aptly, New Fox. Iger informed the Disney board at the end of September of their discussions, and they encouraged him to continue.\r\n\r\nOCTOBER\r\nThe two companies continued to talk throughout October, covering the tax implications of such a purchase. In one such meeting on October 25th, Murdoch noted the importance of Iger’s leadership of Disney, adding that his continued leadership would be “a critical element of a successful integration of [21st Century Fox] into Disney.”\r\n\r\n\r\nIger has been trying to retire for several years. He first announced in 2015 that he would step down from the role in 2018, but remained on in 2016 after his expected successor, CGO Thomas Staggs, left the company. He then extended his tenure to 2019 in 2017 but said that he meant it. According to an interview in Vogue, Iger had been seriously mulling a run for president; now that has been detailed in the Disney-Fox deal.\r\n\r\nTwo days later, the companies met once again, this time to discuss the valuation, and Disney said that it was interested in acquiring RemainCo for $60 billion in cash and stock. Unhappy with the quote, Murdoch and 21st Century Fox decided to completely withdraw from acquisition talks.\r\n\r\nNOVEMBER\r\nWord broke on November 6th that Disney had been working to buy Fox. Murdoch told his board about the discussions with Verizon and that Disney’s purchase price was too low. The same day, Murdoch was approached by yet another party, which Variety and Deadline both say was Comcast CEO Brian L. Roberts. [Note: Comcast is an investor in Vox Media, The Verge’s parent company.] Disney also expressed interest in revising its offer in order to resume talks.\r\n\r\nThroughout November, representatives from Fox met with Comcast and began their own discussions on how Fox’s businesses would be split up. They also met with Verizon again and indicated that they’d be open to a sale, but “only if it was structured as an all-stock transaction with no meaningful premium to [21st Century Fox] stockholders.”\r\n\r\nAt the November 15th shareholder’s meeting, Fox’s management team recommended dropping Verizon, and in the following days, they met with representatives from Comcast and Disney to discuss prices. Disney floated a new offer $29.54 a share, which would work out to around $52.3 billion for RemainCo, and that they’d be willing to pay a reverse termination fee in the event that the sale was blocked by regulators, at $2.5 billion.\r\n\r\nComcast made its own offer, which was higher than Disney’s at $34.41 a share, with some strings attached: if regulators took issue with parts of the purchase, those parts would be relegated back to New Fox, rather than sold off, meaning (a) Fox shareholders would be selling off a smaller company, (b) New Fox would be responsible for the first 2 billion in regulatory costs, and (c) it wouldn’t pay a reverse termination fee.\r\n\r\nAfter Thanksgiving, Fox’s board met to compare the various deals before them. Among the things they discussed was the regulatory challenges of a Fox-Comcast acquisition, which were a particular concern as the Department of Justice had sued to block the merger between AT&T and Time Warner just days before. The deal would also be a bit riskier to Fox shareholders, especially if it was forced to downsize its acquisition. The nature of Disney’s business and offer for Fox’s entertainment divisions appears to have been a less risky proposition and would generally be a better fit. The three companies continued their negotiations into early December, but Comcast balked at Fox’s insistence for a reverse termination fee in the event that regulators blocked the sale.\r\n\r\nDECEMBER\r\nOn December 2nd, word broke that Fox and Disney were once again discussing an acquisition. Discussions with Comcast dragged on, but by December 7th, Murdoch informed Roberts that they were suspending discussions, and began to focus on Disney. On the same day, Disney’s board also began to discuss extending Iger’s tenure as CEO of Disney.\r\n\r\nFox’s board met on December 13th to go over the proposals, while Disney’s board met to discuss the purchase and agreed to extend Iger’s position if the purchase went through. The two boards met and agreed to the purchase. Disney would acquire 21st Century’s entertainment assets for $67 billion, while New Fox would hold on to its news and sports brands. Disney announced the sale the next morning: it would acquire Fox’s entertainment division, with the remainder to be spun off into New Fox, which would focus on live sports and news.\r\n\r\nThe timeline that the document shows two things: the first is that major companies such as Disney, Verizon, and Comcast are hungry for new intellectual property to add to their holdings. Disney has already acquired major properties by buying up Pixar, Marvel, and Lucasfilm, and 21st Century Fox only adds to their coffers, with franchises like Alien, Marvel’s X-Men, and James Cameron’s Avatar.\r\n\r\nIt also demonstrates how worried these companies are about avoiding incurring the wrath of regulators. Disney’s acquisition of 21st Century Fox’s entertainment divisions makes a certain amount of sense, even if it pushes the company further toward antitrust issues. Both companies are the movie business, and the sale further consolidates some of the bigger brands under Disney’s roof. But for companies like Verizon and Comcast, which are also telecoms, the situation was a bit shakier, and the possibility that Comcast might have to buy a smaller part of Fox in addition to rejecting a termination fee seems to have closed the door on that deal, even though it would have been a higher bid.\r\n\r\nIn the meantime, the Murdochs have also been working to acquire the remainder of Sky TV in the UK, which would add to its portfolio under its new focus on live sports and news. It’s faced regulatory scrutiny for the deal, and it’s also facing off with giants such as Comcast.', 'https://si.wsj.net/public/resources/images/BN-VZ717_DISFOX_SOC_20171106155047.jpg', NULL, NULL, 'Disney Approached 21st Century Fox to Buy Entertainment Assets', '2019-10-07 21:22:19', '124aa33f35b9e19f1fe46b75a0c97104', NULL),
(104, NULL, '2018-11-20 02:23:31', 'Disney also revealed a standalone ESPN streaming package is on the way in spring 2018.', 'https://arstechnica.com/gaming/2017/11/disney-announces-new-star-wars-trilogy-live-action-tv-series/', 'During a Disney earnings call today, Disney CEO Bob Iger announced plans for a live-action Star Wars TV series and a new trilogy, likely coming after 2020.\r\n\r\nThe series will apparently be part of the previously announced Disney streaming service. In August, Disney unveiled those plans after it acquired a video-streaming company called BAM Tech. Currently, Disney has an exclusive deal with Netflix for streaming its films and TV series; that deal began in 2012 and expanded last year.\r\nIger shared a handful of original projects in progress for Disney\'s streaming service, however. The first Star Wars live-action TV series rightfully garners headlines, but the CEO also noted series based on Monsters Inc., High School Musical, and a new Marvel property would be coming, too.  Further details, like creative teams or time frames, were not shared regarding those projects.\r\n\r\nThe other major news impacting a galaxy far, far away centers on a familiar name to the Star Wars-universe. Iger said that Rian Johnson, director and screenplay writer for The Last Jedi, has agreed to a deal to create a new Star Wars trilogy down the road (presumably after the current trilogy wraps with the JJ Abrams-led Episode IX in 2019). In a statement to Entertainment Weekly, Lucasfilm said this project would be \"separate from the episodic Skywalker saga... Johnson will introduce new characters from a corner of the galaxy that Star Wars lore has never before explored.\"\r\n\r\nStreaming wars\r\nAccording to MediaPost\'s Alex Weprin, Iger revealed some additional, nuts-and-bolts details for Disney\'s streaming plans. Disney is open to licensing third-party content, for instance, but it needs to be appropriate for the established brand. Weprin reports that Iger said pricing for the service will be \"substantially below where Netflix is.\" Netflix recently raised rates on two of its plans in early October, but its entry tier (one SD stream) remains $7.99 per month.\r\n\r\nIger also revealed a separate streaming initiative for the Disney-ABC family: ESPN Plus. Billed as a standalone sports-streaming service, Iger pegged Spring 2018 as a launch date. Details beyond that, such as pricing or what sports would or wouldn\'t be available through the app, weren\'t available.\r\n\r\nLive sports remains one of the last strongholds for those pushing cable subscriptions, though individual sports leagues from the NBA to the MLB have been launching sport-specific streaming apps in recent years. Given the various live-event rights ESPN currently boasts (including things such as NCAA football and basketball, the NFL\'s Monday Night Football, and the NBA), a sports-streaming app from the worldwide leader has the potential to offer fans a wider-reaching option than ever before.', 'https://cdn.arstechnica.net/wp-content/uploads/2015/12/star.wars_.rey_.2-1-586x215.png', NULL, NULL, 'Disney announces new feature-length Star Wars trilogy, live-action TV series', '2019-10-07 22:58:18', '3b3e5e70854f74f72bd11595b8697d9b', NULL),
(13, NULL, '2018-11-20 02:23:31', 'Microsoft abandons typical Patch Tuesday playbook to fix Equation Editor flaw.', 'https://arstechnica.com/gadgets/2017/11/microsoft-patches-equation-editor-flaw-without-fixing-the-source-code/', NULL, 'https://cdn.arstechnica.net/wp-content/uploads/2017/11/8596885627_b0679a4ee9_o-760x380.png', NULL, NULL, 'How to fix a program without the source code? Patch the binary directly', '2019-01-05 00:18:31', '705adabe062df3b83325a050be7a6a0e', NULL),
(4, NULL, '2018-11-20 02:23:31', 'Apple News+ quality-of-life improvements are front and center as well.', 'https://arstechnica.com/gadgets/2019/07/apple-releases-ios-12-4-watchos-5-3-macos-10-14-6-and-more/', NULL, 'https://cdn.arstechnica.net/wp-content/uploads/2018/09/applewatchseries4_22-800x533-1-800x533.jpg', 4, NULL, 'Apple releases iOS 12.4, watchOS 5.3, macOS 10.14.6, and more', '2019-07-22 00:19:28', 'a90e151747a9ee6abf7fd302360326c5', '43'),
(104, NULL, '2018-11-20 02:23:31', '21st Century Fox has been holding talks to sell most of the company to Walt Disney Co., sources say.', 'https://www.cnbc.com/2017/11/06/21st-century-fox-has-been-holding-talks-to-sell-most-of-company-to-disney-sources.html', NULL, 'https://fm.cnbc.com/applications/cnbc.com/resources/img/editorial/2017/11/06/104823332-Untitled-1.1910x1000.jpg', NULL, NULL, '21st Century Fox has been holding talks to sell most of the company to Disney: Sources', '2019-01-05 00:18:31', 'e30616ed95160f5322288217150efe3c', NULL),
(32, NULL, '2018-11-20 02:23:31', 'But why', 'https://www.theverge.com/tldr/2017/11/6/16615886/will-i-am-tech-startup-i-am-but-how', NULL, 'https://cdn.vox-cdn.com/thumbor/8rA3tqvVCtycrArRolsobQfjjSA=/0x303:4228x2517/fit-in/1200x630/cdn.vox-cdn.com/uploads/chorus_asset/file/9623269/862463992.jpg', NULL, NULL, 'T-Mobile’s owner is now using a smart assistant made by will.i.am', '2019-01-05 00:18:31', 'ebb2d6150ca24254ad4ffc0ad71557ab', NULL),
(4, NULL, '2018-11-20 02:23:31', 'The iPhone X is clearly the best iPhone ever made.', 'https://www.theverge.com/2017/10/31/16579748/apple-iphone-x-review', NULL, 'https://cdn.vox-cdn.com/thumbor/6_by8DJegCyx3Ll8eRNzBaOY1Fg=/0x292:2040x1360/fit-in/1200x630/cdn.vox-cdn.com/uploads/chorus_asset/file/9597673/jbareham_171031_2099_A_0055.jpg', NULL, NULL, 'iPhone X review: face the future', '2019-01-05 00:18:31', 'f06da4c5cce83a15987c90df0f2ad410', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `base` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `color` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `description` text COLLATE utf8_unicode_ci,
  `name` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `shortname` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `uid` int(64) DEFAULT NULL,
  `zone` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`base`, `color`, `created`, `description`, `name`, `shortname`, `user`, `uid`, `zone`) VALUES
('#d4af37', '#4A25DE', '2019-11-04 23:38:32', 'Astro HF & Co. is a sole proprietorship founded by the legendary Banon', 'Astro HF', 'astrohf', 'w4IYt41E4nQ2gJVGIlDtyd7p3J73', 1, 0),
('fff', '#333544', '2019-11-04 23:38:32', 'Ralph Lauren Corporation is a global leader in the design, marketing and distribution of premium lifestyle products in four categories: apparel, home, accessories and fragrances.', 'Polo Ralph Lauren', 'ralphlauren', NULL, 2, 1),
('#fff', '#e95814', '2019-11-04 23:38:32', 'Nike, Inc. is an American multinational corporation that is engaged in the design, development, manufacturing and worldwide marketing and sales of footwear, apparel, equipment, accessories and services.', 'Nike', 'nike', NULL, 3, 4),
('#fff', '#000', '2019-11-04 23:38:32', 'Apple Inc. is an American multinational technology company headquartered in Cupertino, California, that designs, develops, and sells consumer electronics, computer software, and online services.', 'Apple', 'apple', NULL, 4, 5),
('', '#fff', '2019-11-04 23:38:32', 'Tommy Hilfiger, formerly known as Tommy Hilfiger Corporation and Tommy Hilfiger Inc., is an American multinational corporation that designs and manufactures high end apparel for men, women and children, and a wide range of licensed products such as footwear, accessories, fragrances and home furnishings.', 'Tommy Hilfiger', 'tommy', NULL, 29, 1),
('#000', '#A4C639', '2019-11-04 23:38:32', 'Google is an American multinational technology company specializing in Internet-related services and products that include online advertising technologies, search, cloud computing, and software.', 'Android', 'android', NULL, 11, 5),
('#5f5f5f', '#bbb', '2019-11-04 23:38:32', 'Louis Vuitton Malletier, commonly referred to as Louis Vuitton, or shortened to LV, is a house founded in 1854 by Louis Vuitton.', 'Louis Vuitton', 'louisvuitton', NULL, 12, 3),
('', '#fff', '2019-11-04 23:38:32', 'Microsoft Corporation is an American multinational technology company headquartered in Redmond, Washington, that develops, manufactures, licenses, supports and sells computer software, consumer electronics and personal computers and services.', 'Microsoft', 'microsoft', NULL, 13, 5),
('#fff', '#333', '2019-11-04 23:38:32', 'Zara is a Spanish fast fashion (clothing and accessories) retailer based in Arteixo, Galicia. The company was founded in 1975 by Amancio Ortega and Rosalía Mera. It is the main brand of the Inditex group, the world\'s largest apparel retailer.', 'Zara', 'zara', NULL, 14, 1),
('#000', '#83bdbf', '2019-11-04 23:38:32', 'Lacoste is a French clothing company founded in 1933 that sells high-end clothing, footwear, perfume, leather goods, watches, eyewear, and most famously polo shirts. In recent years, Lacoste has introduced a home line of sheeting and towels', 'Lacoste', 'lacoste', NULL, 15, 1),
('#fff', '#000', '2019-11-04 23:38:32', 'Adidas AG is a German multinational corporation that designs and manufactures sports shoes, clothing and accessories headquartered in Herzogenaurach, Bavaria. It is the largest sportswear manufacturer in Europe and the second biggest in the world', 'Adidas', 'adidas', NULL, 18, 4),
('#000', '#fff', '2019-11-04 23:38:32', 'Vans is an American manufacturer of shoes, based in Cypress, California, The company also produces apparel and other products such as T-shirts, hoodies, socks, hats, and backpacks.', 'Vans', 'vans', NULL, 22, 4),
('#fff', '#42c4dd', '2019-11-04 23:38:32', 'Music is brought to you by MallZones', 'Carter\'s', 'carters', NULL, 54, 7),
('#fff', '#F1396D', '2019-11-04 23:38:32', 'Victoria\'s Secret is an American designer, manufacturer and marketer of women\'s premium lingerie, womenswear and beauty products. With 2012 sales of $6.12 billion, it is the largest American retailer of women\'s lingerie.', 'Victoria\'s Secret', 'victoriassecret', NULL, 24, 1),
('', '#fff', '2019-11-04 23:38:32', 'Fashion chain reflecting designer Donna Karan\'s image of NYC, with jeans, formalwear & accessories.', 'DKNY', 'dkny', NULL, 26, 1),
('#fff', '#000', '2019-11-04 23:38:32', 'Prada S.p.A. is an Italian luxury fashion house, specializing in leather handbags, travel accessories, shoes, ready-to-wear, perfumes and other fashion accessories, founded in 1913 by Mario Prada.', 'Prada', 'prada', NULL, 30, 3),
('#fff', '#e20074', '2019-11-04 23:38:32', 'T-Mobile International AG is a German holding company for Deutsche Telekom AG\'s various mobile communications subsidiaries outside Germany.', 'T-Mobile', 'tmobile', NULL, 32, 2),
('#000', '#ffe100', '2019-11-04 23:38:32', 'Sprint Corporation, commonly referred to as Sprint, is an American telecommunications holding company that provides wireless services and is a major global Internet carrier.', 'Sprint', 'sprint', NULL, 33, 2),
('#fff', '#0c4da2', '2019-11-04 23:38:32', 'Samsung Electronics Co., Ltd. is a South Korean multinational electronics company headquartered in Suwon, South Korea.', 'Samsung', 'samsung', NULL, 37, 5),
('#fff', '#000', '2019-11-04 23:38:32', 'Coach, Inc. is an American luxury fashion company based in New York City. The company is known for accessories and gifts for women and men, including handbags, men\'s bags, women\'s and men\'s small leather goods, footwear, outerwear, ready-to-wear, watches, travel accessories, scarves, sunwear, fragrance, jewelry, and other accessories.', 'Coach', 'coach', NULL, 39, 3),
('#000', '#fff', '2019-11-04 23:38:32', 'Gucci is an Italian luxury brand of fashion and leather goods, part of the Gucci Group, which is owned by the French holding company Kering. Gucci was founded by Guccio Gucci in Florence in 1921.', 'Gucci', 'gucci', NULL, 40, 3),
('#fff', '#49768d', '2019-11-04 23:38:32', 'Converse is an American shoe company with a production output that primarily consists of apparel, skating shoes and lifestyle brand footwear. Converse is known as one of America\'s most iconic footwear companies.', 'Converse', 'converse', NULL, 41, 4),
('#fff', '#820000', '2019-11-04 23:38:32', 'Levi Strauss & Co. is a privately owned American clothing company known worldwide for its Levi\'s brand of denim jeans.', 'Levi\'s', 'levi', NULL, 42, 1),
('#fff', '#000', '2019-11-04 23:38:32', 'Retailer selling the brand\'s iconic eyewear, particularly sunglasses, for men, women & kids.', 'Ray-Ban', 'ray-ban', NULL, 43, 3),
('#fff', '#0574ac', '2019-11-04 23:38:32', 'AT&T Inc. is an American multinational telecommunications conglomerate, headquartered at Whitacre Tower in downtown Dallas, Texas.', 'AT&T', 'att', NULL, 47, 2),
('#777', '#e4e5e3', '2019-11-04 23:38:32', 'Verizon Wireless is a wholly owned subsidiary of Verizon Communications offering wireless telecommunications products and services.', 'Verizon', 'verizon', NULL, 46, 2),
('#fff', '#000', '2019-11-04 23:38:32', 'Sony Corporation is a Japanese multinational conglomerate corporation headquartered in K?nan, Minato, Tokyo. Its diversified business includes consumer and professional electronics, gaming, entertainment and financial services.', 'Sony', 'sony', NULL, 50, 5),
('#fff', '#4f189a', '2019-11-04 23:38:32', 'Babies\"R\"Us is a division of Toys R Us which was established in 1996.', 'Babies\"R\"Us', 'babiesrus', NULL, 51, 7),
('#fff', '#005cb9', '2019-11-04 23:38:32', 'GE powers the world with the cleanest, most advanced technologies and energy solutions. From FlexEf?ciency Combined Cycle power, to smart grids that help utilities manage electricity demand, to gas engines that run on organic waste, our technology currently helps to deliver a quarter of the world’s electricity. GE Oil & Gas is currently operating in more than 120 countries working on the safest, most reliable and cost-efficient innovations in the ?eld.', 'General Electric', 'ge', NULL, 63, 8),
('', '#cacaca', '2019-11-04 23:38:32', 'LG Corporation (Korean: ???? LG), formerly Lucky-GoldStar (Korean: Leogki Geumseong (????/????), is a South Korean multinational conglomerate corporation. LG makes electronics, chemicals, and telecom products and operates subsidiaries such as LG Electronics, Zenith, LG Display, LG Uplus and LG Chem in over 80 countries.', 'LG', 'lg', NULL, 62, 5),
('#fff', '#A5002A', '2019-11-04 23:38:32', 'Mitchell & Ness Nostalgia Co., is an American sports clothing company located in Philadelphia, Pennsylvania. The company was established in 1904, and is the oldest sporting goods company in Philadelphia. By license agreements with Major League Baseball, the National Basketball Association, National Football League, National Hockey League, and the Collegiate Licensing Company, the company has been producing vintage sports goods such as jerseys, jackets, hats, and wool-felt historic pennants.', 'Mitchell & Ness', 'mitchellandness', NULL, 60, 1),
('#000', '#ddd', '2019-11-04 23:38:32', 'Givenchy is a French luxury fashion and perfume house. It hosts the brand of haute couture clothing, accessories and Parfums Givenchy, perfumes and cosmetics.', 'Givenchy', 'givenchy', NULL, 73, 3),
('', '#d01012', '2019-11-04 23:38:32', 'The LEGO Group is a privately held, family-owned company with headquarters in Billund, Denmark, and main offices in Enfield, USA, London, UK, Shanghai, China, and Singapore. Founded in 1932 by Ole Kirk Kristiansen, and based on the iconic LEGO® brick, it is one of the world\'s leading manufacturers of play materials.', 'Lego', 'lego', NULL, 64, 7),
('#000', '#f67c39', '2019-11-04 23:38:32', 'Ulta Beauty, Inc., is a chain of beauty stores in the United States, headquartered in Bolingbrook, Illinois. Ulta Beauty carries cosmetics and skincare brands, men\'s and women\'s fragrances, and haircare products.', 'Ulta', 'ulta', NULL, 65, 14),
('#000', '#ccc', '2019-11-04 23:38:32', 'The New Era Cap Company is a headwear company that was founded in Buffalo, New York, in 1920. New Era has over 500 different licenses in its portfolio. ', 'New Era', 'neweracap', NULL, 66, 1),
('#000', '#eee', '2019-11-04 23:38:32', 'Calvin Klein Inc. is an American fashion house founded by the fashion designer Calvin Klein and childhood friend Barry K. Schwartz. The company is headquartered in Midtown Manhattan, New York City and is currently owned by PVH.', 'Calvin Klein', 'calvinklein', NULL, 67, 1),
('#fff', '#a67c00', '2019-11-04 23:38:32', 'Yves Saint Laurent YSL is a French luxury fashion house founded by Yves Saint Laurent and his partner, Pierre Bergé. Saint Laurent Paris revived its haute couture collection in 2015 under creative director Hedi Slimane.', 'Yves Saint Laurent', 'ysl', NULL, 68, 3),
('', '#fff', '2019-11-04 23:38:32', 'Pioneer of the wristwatch since 1905, Rolex is at the origin of landmark innovations in watchmaking, including the first waterproof wristwatch - the Oyster - and the Perpetual rotor self-winding mechanism. For over a century, Rolex watches have accompanied explorers and achievers around the world, from the top of the highest mountains to the deepest reaches of the ocean.', 'Rolex', 'rolex', NULL, 69, 11),
('#fff', '#333', '2019-11-04 23:38:32', 'Dolce & Gabbana is an Italian luxury fashion house founded in 1985 in Legnano by Italian designers Domenico Dolce and Stefano Gabbana. The two met in Milan in 1980 and designed for the same fashion house.', 'Dolce & Gabbana', 'dolcegabbana', NULL, 70, 3),
('#000', '#f6d413', '2019-11-04 23:38:32', 'Fendi is an Italian luxury fashion house whose specialities include fur, ready-to-wear, leather goods, shoes, fragrances, eyewear, timepieces and accessories. Founded in 1925 in Rome, Fendi is renowned for its fur and fur accessories.', 'Fendi', 'fendi', NULL, 71, 3),
('#fff', '#ed1e25', '2019-11-04 23:38:32', 'Shop the largest selection of PUMA® styles online including shoes, running gear, & more.', 'Puma', 'puma', NULL, 72, 10),
('#000', '#e4b72d', '2019-11-04 23:38:32', 'Gianni Versace S.p.A., usually referred to as Versace, is an Italian luxury fashion company and trade name founded by Gianni Versace in 1978.', 'Versace', 'versace', NULL, 74, 3),
('#fff', '#ed1e27', '2019-11-04 23:38:32', 'The North Face, Inc. is an American outdoor product company specializing in outerwear, fleece, coats, shirts, footwear, and equipment such as backpacks, tents, and sleeping bags.', 'The North Face', 'thenorthface', NULL, 75, 1),
('#fff', '#cbb093', '2019-11-04 23:38:32', 'Balenciaga is a luxury fashion house founded in Spain by Cristóbal Balenciaga, a Spanish designer, born in the Basque Country, Spain.', 'Balenciaga', 'balenciaga', NULL, 76, 3),
('#fff', '#172d46', '2019-11-04 23:38:32', 'Marc Jacobs is an American fashion designer. He is the head designer for his own fashion label, Marc Jacobs, as well as Marc by Marc Jacobs, a diffusion line, with over 200 retail stores in 80 countries.', 'Marc Jacobs', 'marcjacobs', NULL, 77, 1),
('', '#8d8d8d', '2019-11-04 23:38:32', 'Canada Goose Inc. is a Canadian manufacturer of high-quality winter clothing. The company was founded in 1957 by Sam Tick, under the name Metro Sportswear Ltd.[2] Canada Goose manufactures a wide range of jackets, parkas, vests, hats, gloves, shells and other apparel. Some Canada Goose jackets use coyote fur on the hoods[3] and are often filled with down which is purchased from Hutterite farmers in rural Canada\".[4] Duck down is used for most models.', 'Canada Goose', 'canadagoose', NULL, 78, 1),
('#fff', '#947964', '2019-11-04 23:38:32', 'ALEX AND ANI designs and creates bangle bracelets, necklaces, earrings and rings that adorn the body, enlighten the mind, and empower the spirit. ... We are the original meaning makers. Sharing ancient wisdom. Interpreting into modern design. Alive with purpose. Strong and unafraid to speak. Leading the narrative.', 'Alex And Ani', 'alexandani', NULL, 79, 11),
('', '#ebf1ff', '2019-11-04 23:38:32', 'Pandora A/S is an international Danish jewellery manufacturer and retailer founded in 1982 by Per Enevoldsen. The company started as a family-run jewellery shop in Copenhagen.', 'Pandora', 'pandora', NULL, 80, 11),
('#fff', '#605e5c', '2019-11-04 23:38:32', 'Swarovski is an Austrian producer of crystal headquartered in Wattens, Austria. The company is split into three major industry areas: the Swarovski Crystal Business, Swarovski Optik, and Tyrolit.', 'Swarovski', 'swarovski', NULL, 81, 11),
('#000', '#fff', '2019-11-04 23:38:32', 'Michael Kors Holdings Limited is an American luxury fashion company that was established in 1981 by designer Michael Kors. The company is known for apparel, footwear, watches, handbags and other accessories.', 'Michael Kors', 'michaelkors', NULL, 82, 3),
('#fff', '#151d23', '2019-11-04 23:38:32', 'Air Jordan is a brand of basketball footwear and athletic clothing produced by Nike. It was created for former professional basketball player, Michael Jordan.', 'Jordan', 'jordan', NULL, 83, 4),
('', '#eeebe3', '2019-11-04 23:38:32', 'Burberry Group PLC is a British luxury fashion house headquartered in London, England. Its main fashion house focuses on and distributes trench coats, ready-to-wear outerwear, fashion accessories, fragrances, sunglasses, and cosmetics.', 'Burberry', 'burberry', NULL, 84, 3),
('#fff', '#2057aa', '2019-11-04 23:38:32', 'Skechers USA Inc. is an American lifestyle and performance footwear company for men, women and children. Headquartered in Manhattan Beach, California, the brand was founded in 1992', 'Skechers', 'skechers', NULL, 85, 10),
('', '#fff', '2019-11-04 23:38:32', 'Steven Madden, Ltd., also known as Steve Madden, is a publicly traded company based in Long Island City, New York.', 'Steve Madden', 'stevemadden', NULL, 86, 1),
('#000', '#d79750', '2019-11-04 23:38:32', 'Timberland LLC is an American manufacturer and retailer of outdoors wear, with a focus on footwear. It is owned by VF Corporation. Timberland footwear is marketed towards people intending outdoor use.', 'Timberland', 'timberland', NULL, 87, 10),
('#fff', '#aeafb3', '2019-11-04 23:38:32', 'UGG is an American footwear company and a division of Deckers Brands. UGG is a registered trademark in the United States and over 130 other countries for footwear, as well as bags, clothing, outerwear, home goods and other products.', 'UGG', 'ugg', NULL, 88, 10),
('#fff', '#949494', '2019-11-04 23:38:32', 'Guess is an American clothing brand and retailer. In addition to clothing for both men and women, Guess markets other fashion accessories such as watches, jewelry, perfumes, and shoes.', 'Guess', 'guess', NULL, 101, 1),
('#fff', '#414850', '2019-11-04 23:38:32', 'Rebranding. In 2010, Twins Enterprise changed its name to \'47 Brand. In 2015, they dropped the “brand” in “\'47 Brand.” The company is still occasionally referred to as “\'47 Brand” or “Twins Enterprise” in various publications.', '\'47', '47brand', NULL, 102, 4),
('#fff', '#333', '2019-11-04 23:38:32', 'Under Armour, Inc. is an American company that manufactures footwear, sports and casual apparel.[3] Under Armour\'s global headquarters are located in Baltimore, Maryland with additional offices located in Amsterdam (European headquarters), Austin, Guangzhou, Hong Kong, Houston, Jakarta, London, Mexico City, Munich, New York City, Panama City (international headquarters), Paris, Pittsburgh, Portland, San Francisco, São Paulo, Santiago, Seoul, Shanghai (Greater Chinese headquarters), and Toronto.', 'Under Armour', 'underarmour', NULL, 89, 4),
('#fff', '#00c3e6', '2019-11-04 23:38:32', 'ASICS is a Japanese multinational corporation which produces footwear and sports equipment designed for a wide range of sports, generally in the upper price range.', 'Asics', 'asics', NULL, 90, 4),
('#fff', '#777', '2019-11-04 23:38:32', 'A|X Armani Exchange was launched in 1991 in the U.S. It retails fashion and lifestyle products and is known for its occasionally provocative ad campaigns. Inspired by street-chic culture and dance music, it is targeted as the more accessible Armani brand.', 'Armani Exchange', 'armaniexchange', NULL, 91, 1),
('', '#fff', '2019-11-04 23:38:32', 'Alexander Wang is an American fashion designer and the former creative director of Balenciaga. At age 18, he moved to New York City to attend Parsons School of Design.', 'Alexander Wang', 'alexanderwang', NULL, 92, 1),
('#111', '#e7d786', '2019-11-04 23:38:32', 'Juicy Couture is a casualwear and dress clothing brand based in Arleta, Los Angeles, California. It was founded by Pamela Skaist-Levy and Gela Nash-Taylor in 1997 and was purchased by the Liz Claiborne fashion company.', 'Juicy Couture', 'juicycouture', NULL, 93, 1),
('', '#fff', '2019-11-04 23:38:32', 'Kate Spade New York is an American fashion design house founded in January 1993 by Kate Spade and Andy Spade. Jack Spade is the brand\'s line for men. Kate Spade New York competes with Michael Kors.', 'Kate Spade New York', 'katespade', NULL, 94, 3),
('', '#fad000', '2019-11-04 23:38:32', 'OtterBox is a privately owned consumer electronics accessory company based in Fort Collins, Colorado that produces water resistant, shock resistant, and drop resistant cases for mobile devices.', 'OtterBox', 'otterbox', NULL, 95, 2),
('#fff', '#000', '2019-11-04 23:38:32', 'Kenneth Cole Productions, Inc. is an American fashion house that was founded in 1982 by Kenneth Cole.', 'Kenneth Cole', 'kennethcole', NULL, 96, 1),
('#fff', '#e51837', '2019-11-04 23:38:32', 'New Balance Athletics, Inc., best known as simply New Balance, is an American multinational corporation based in the Brighton neighborhood of Boston, Massachusetts.', 'New Balance', 'newbalance', NULL, 97, 10),
('', '#de3a30', '2019-11-04 23:38:32', 'Fisher-Price is an American company that produces educational toys for children and infants, headquartered in East Aurora, New York. Fisher-Price has been a wholly owned subsidiary of Mattel since 1993.', 'Fisher-Price', 'fisher-price', NULL, 105, 7),
('#fff', '#8a583d', '2019-11-04 23:38:32', 'Nine West is an American fashion wholesale and retail company. The corporate headquarters are located in White Plains, New York.', 'Nine West', 'ninewest', NULL, 98, 1),
('#fff', '#2e3291', '2019-11-04 23:38:32', 'Reebok is a global athletic footwear and apparel company, operating as a subsidiary of Adidas since 2005. Reebok produces and distributes fitness, running and CrossFit sportswear including clothing and footwear.', 'Reebok', 'reebok', NULL, 99, 10),
('', '#f2e9cc', '2019-11-04 23:38:32', 'True Religion Brand Jeans is an American clothing company established in December 2002 by Jeff Lubell and Kym Gold and based Vernon, California. True Religion Brand Jeans focus on premium denim, some of which is made in America.', 'True Religion', 'truereligion', NULL, 100, 3),
('#fff', '#1e5398', '2019-11-04 23:38:32', 'The Walt Disney Company, commonly known as Disney, is an American diversified multinational mass media and entertainment conglomerate, headquartered at the Walt Disney Studios in Burbank, California.', 'Disney', 'disney', NULL, 104, 13),
('#000', '#878c8d', '2019-11-04 23:38:32', 'Kenmore is a brand of household appliances sold by Sears, Roebuck and Co. The brand first appeared on a four-drawer drop feed sewing machine sold from 1913 to 1919. The first Kenmore washing machine was introduced in 1927.', 'Kenmore', 'kenmore', NULL, 106, 8),
('#fff', '#c41330', '2019-11-04 23:38:32', 'Skittles is a brand of fruit-flavoured sweets, currently produced and marketed by the Wrigley Company, a division of Mars, Inc.', 'Skittles', 'skittles', NULL, 107, 9),
('#fff', '#222', '2019-11-04 23:38:32', 'Champion is an American manufacturer of clothing, specializing in sportswear. The brand is a subsidiary of HanesBrands Inc., which was spun off by the Sara Lee Corporation.', 'Champion', 'champion', NULL, 108, 4),
('#fff', '#050f4b', '2019-11-04 23:38:32', 'Russell Athletic is an American athletics brand, it is the main brand of eponymous American company and its manufacturer and marketer Russell Brands, LLC', 'Russell Athletic', 'russellathletic', NULL, 109, 4),
('#fff', '#381216', '2019-11-04 23:38:32', 'The Hershey Company, known until April 2005 as the Hershey Foods Corporation and commonly called Hershey\'s, is an American company and one of the largest chocolate manufacturers in the world.', 'Hershey\'s', 'hersheys', NULL, 110, 9),
('#fff', '#01a5ec', '2019-11-04 23:38:32', 'Children\'s Place Inc. is an American specialty retailer of children’s apparel and accessories. The company also markets apparel under the Children\'s Place, Place, and Baby Place brand names. ', 'The Children\'s Place', 'childrensplace', NULL, 111, 7),
('', '#dfdbd0', '2019-11-04 23:38:32', 'La-Z-Boy Inc. is an American furniture manufacturer based in Monroe, Michigan, USA, that makes home furniture, including upholstered recliners, sofas, stationary chairs, lift chairs and sleeper sofas. The company employs more than 11,000 people.', 'La-Z-Boy', 'la-z-boy', NULL, 112, 8),
('#fff', '#01032a', '2019-11-04 23:38:32', 'American Eagle Outfitters, Inc. is an American clothing and accessories retailer, headquartered in the Southside Works Neighborhood of Pittsburgh, Pennsylvania.', 'American Eagle', 'ae', NULL, 113, 1),
('#111', '#fff', '2019-11-04 23:38:32', 'Thomas Carlyle \"Tom\" Ford is an American fashion designer, film director, screenwriter, and film producer. He launched his eponymous luxury brand in 2006, having previously served as the creative director at Gucci and Yves Saint Laurent.', 'Tom Ford', 'tomford', NULL, 114, 3),
('#fff', '#000d42', '2019-11-04 23:38:32', 'The Gap, Inc., commonly known as Gap Inc. or Gap, is an American worldwide clothing and accessories retailer. It was founded in 1969 by Donald Fisher and Doris F. Fisher and is headquartered in San Francisco, California.', 'Gap', 'gap', NULL, 115, 1),
('', '#eee', '2019-11-04 23:38:32', 'Hollister Co., often advertised as Hollister or HCo., is an American lifestyle brand owned by Abercrombie & Fitch Co.', 'Hollister', 'hollisterco', NULL, 116, 1),
('#fff', '#001745', '2019-11-04 23:38:32', 'Nautica is a mid-range to high-end American apparel brand of the VF Corporation featuring primarily men\'s, women\'s, children\'s apparel and accessories, as well as home, watches, and fragrance.', 'Nautica', 'nautica', NULL, 117, 1),
('', '#e9eaec', '2019-11-04 23:38:32', 'The Wahl Clipper Corporation, based in Sterling, Illinois, manufactures grooming products for people and animals.', 'Wahl', 'wahl', NULL, 118, 14),
('#fff', '#0092cf', '2019-11-04 23:38:32', 'Columbia Sportswear Company is an American company that manufactures and distributes outerwear, sportswear, and footwear. It was founded in 1938 by Paul Lamfrom, father of present chairperson Gert Boyle.', 'Columbia', 'columbia', NULL, 119, 4),
('#fff', '#c6b9a5', '2019-11-04 23:38:32', 'Fila, Inc. is a South Korean sporting goods company. Fila was founded in 1911 in Italy. Since a takeover in 2007 by Fila Korea, Fila is now owned and operated from South Korea. Headed by chairman and CEO Yoon-Soo Yoon, Fila has offices in 11 countries worldwide.', 'Fila', 'fila', NULL, 120, 4),
('#fff', '#e40006', '2019-11-04 23:38:32', 'Modern store carrying a range of skateboard decks & hardware, plus shoes, streetwear & accessories.', 'Diamond Supply Co', 'diamondsupplyco', NULL, 121, 1),
('#333', '#eee', '2019-11-04 23:38:32', 'Abercrombie & Fitch is an American retailer that focuses on upscale casual wear for young consumers, its headquarters are in New Albany, Ohio, a suburb of Columbus. The company operates two other offshoot brands: Abercrombie Kids & Hollister Co.', 'Abercrombie & Fitch', 'abercrombie', NULL, 123, 1),
('#fff', '#e61d2b', '2019-11-04 23:38:32', 'Coca-Cola, or Coke, is a carbonated soft drink produced by The Coca-Cola Company. Originally intended as a patent medicine, it was invented in the late 19th century by John Pemberton.', 'Coca Cola', 'coca-cola', NULL, 124, 9),
('#fff', '#000', '2019-11-04 23:38:32', 'Sephora is a French chain of cosmetics stores founded in 1969. Featuring nearly 300 brands, along with its own private label, Sephora offers beauty products including makeup, skincare, body, fragrance, nail color, and haircare.', 'Sephora', 'sephora', NULL, 125, 14),
('#fff', '#bf1a21', '2019-11-04 23:38:32', 'Canon Inc. is a Japanese multinational corporation specialized in the manufacture of imaging and optical products, including cameras, camcorders, photocopiers, steppers, computer printers and medical equipment.', 'Canon', 'canon', NULL, 126, 5),
('fcfcfc', '#ff0000', '2019-11-04 23:38:32', 'Image result for nintendo company description\r\nNintendo is one of the world\'s largest video game companies by market capitalization, creating some of the best-known and top-selling video game franchises, such as Mario, The Legend of Zelda, and Pokémon. Founded on 23 September 1889 by Fusajiro Yamauchi, it originally produced handmade hanafuda playing cards.', 'Nintendo', 'nintendo', NULL, 127, 13),
('', '#dfdbd0', '2019-11-04 23:38:32', 'Ashley\'s Furniture is', 'Ashley\'s Furniture', 'ashleyfurniturehomestore', NULL, 128, 8),
('#fff', '#c8012b', '2019-11-04 23:38:32', 'GNC (store) GNC Holdings Inc. (General Nutrition Centers) is a Pittsburgh, Pennsylvania-based American company selling health and nutrition related products, including vitamins, supplements, minerals, herbs, sports nutrition, diet, and energy products.', 'GNC', 'gnc', NULL, 129, 14),
('', '#fff', '2019-11-04 23:38:32', 'Lee Alexander McQueen, CBE was a British fashion designer and couturier. He is known for having worked as chief designer at Givenchy from 1996 to 2001 and for founding his own Alexander McQueen label.', 'Alexander McQueen', 'alexandermcqueen', NULL, 130, 1),
('', '#0000FF', '2019-11-04 23:38:32', 'Cricket Wireless LLC is a prepaid wireless service provider in the United States, a wholly owned subsidiary of AT&T Inc. It offers mobile voice, text, and data using parent AT&T\'s nationwide network. Cricket Wireless was founded in 1999 by Leap Wireless International, Inc.', 'Cricket Wireless', 'cricketwireless', NULL, 143, 2),
('', '#000000', '2019-11-04 23:38:32', 'Boost Mobile is a wireless telecommunications brand used by two independent companies in Australia and the United States. Boost Mobile was originally founded in 2000 by Peter Adderton in Australia.', 'Boost Mobile', 'boostmobile', NULL, 144, 2),
('', '#FFF', '2019-11-04 23:38:32', 'Koninklijke Philips N.V. is a Dutch multinational technology company headquartered in Amsterdam, one of the largest electronics companies in the world, currently focused in the area of healthcare and lighting.', 'Philips', 'philips', NULL, 145, 5),
('', '#81007E', '2019-11-04 23:38:32', 'Metro by T-Mobile is a prepaid wireless carrier brand owned by T-Mobile US. It previously operated the fifth largest mobile telecommunications network in the United States using code division multiple access.', 'Metro PCS', 'metropcs', NULL, 142, 2),
('', '#000000', '2019-11-04 23:38:32', 'LifeProof is a U.S. consumer electronics accessory company headquartered in San Diego, California and acquired in 2013 by OtterBox. The company designs, manufactures, and markets cases that protect smartphone and tablet functionality and condition from water, snow, dirt, and shock.', 'LifeProof', 'lifeproof', NULL, 147, 2),
(NULL, NULL, '2019-11-04 23:38:32', 'Since day 1, RAW has been on a mission to be the leader of the pack in the rolling paper industry.  RAW revolutionized the smoking world by creating products that are naturally ingeniously designed to enhance the smoking experience.\r\n\r\nRAW only makes high-quality & earth-friendly products that improve your smoking experience, and we refuse to ever change what we stand for.  We enjoy smoking our unrefined paper every day, and we will always keep it pure and RAW – for both you and us!', 'Raw', 'rawthentic', NULL, 148, 14);

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `ref` int(64) DEFAULT NULL,
  `uid` int(64) NOT NULL,
  `usr` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`ref`, `uid`, `usr`) VALUES
(7949, 1, 'w4IYt41E4nQ2gJVGIlDtyd7p3J73'),
(7947, 2, 'w4IYt41E4nQ2gJVGIlDtyd7p3J73');

-- --------------------------------------------------------

--
-- Table structure for table `catalog`
--

CREATE TABLE `catalog` (
  `uid` int(64) NOT NULL,
  `app` int(64) DEFAULT NULL,
  `page` int(2) DEFAULT NULL,
  `title` text COLLATE utf8_unicode_ci,
  `images` text COLLATE utf8_unicode_ci,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `catalog`
--

INSERT INTO `catalog` (`uid`, `app`, `page`, `title`, `images`, `created`, `updated`) VALUES
(1, 4, 846, 'iPad Pro', NULL, '2019-04-23 21:35:44', '2019-11-15 01:08:15'),
(2, 4, 848, 'iPad Air', NULL, '2019-04-26 18:54:06', '2019-11-15 01:08:22'),
(3, 4, 855, 'iMac', NULL, '2019-04-27 22:10:32', '2019-11-15 01:08:22'),
(4, 4, 859, 'iPhone X', NULL, '2019-04-27 22:34:35', '2019-11-15 01:08:22'),
(5, 4, 860, 'iPhone XR', NULL, '2019-04-27 22:37:36', '2019-11-15 01:08:22'),
(6, 4, 861, 'iPhone 8', NULL, '2019-04-28 01:05:51', '2019-11-15 01:08:22'),
(7, 4, 853, 'Macbook Pro', NULL, '2019-04-28 16:30:06', '2019-11-15 01:08:22'),
(8, 4, 857, 'Mac Mini', NULL, '2019-04-28 16:33:24', '2019-11-15 01:08:22'),
(9, 4, 862, 'iPhone 7', NULL, '2019-04-30 19:08:16', '2019-11-15 01:08:22'),
(10, 4, 847, 'iPad', NULL, '2019-05-03 04:20:14', '2019-11-15 01:08:22'),
(11, 148, 913, 'RAW Hemp Plastic Roller', '[\"70mm.png\", \"79mm.png\", \"110mm.png\"]', '2019-11-11 21:28:04', '2019-11-15 01:09:02'),
(12, 148, 913, 'RAW 2-Way Hemp Plastic Roller', NULL, '2019-11-11 21:28:04', '2019-11-15 01:09:06'),
(13, 148, 913, 'RAW Supernatural Roller', NULL, '2019-11-11 21:28:04', '2019-11-15 01:09:09'),
(14, 148, 913, 'RAW Auto Box', NULL, '2019-11-11 21:28:04', '2019-11-15 01:09:13');

-- --------------------------------------------------------

--
-- Table structure for table `merch`
--

CREATE TABLE `merch` (
  `app` int(11) DEFAULT NULL,
  `usr` int(11) DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `description` text COLLATE utf8_unicode_ci,
  `images` json DEFAULT NULL,
  `page` int(2) DEFAULT NULL,
  `ListPrice` int(11) DEFAULT NULL,
  `SalePrice` int(11) DEFAULT NULL,
  `MSRP` int(11) DEFAULT NULL,
  `ref` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `source` text COLLATE utf8_unicode_ci,
  `tags` json DEFAULT NULL,
  `title` text COLLATE utf8_unicode_ci,
  `cid` int(64) DEFAULT NULL,
  `pid` int(64) DEFAULT NULL,
  `uid` int(64) NOT NULL,
  `updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `variations` json DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `merch`
--

INSERT INTO `merch` (`app`, `usr`, `created`, `description`, `images`, `page`, `ListPrice`, `SalePrice`, `MSRP`, `ref`, `source`, `tags`, `title`, `cid`, `pid`, `uid`, `updated`, `variations`) VALUES
(148, NULL, '2019-11-11 21:28:04', 'This hemp plastic is made by raw for regular, 79 mm rolling papers. Raw roller cigarette maker for 1 1/4 size rolling papers.', '[\"https://images-na.ssl-images-amazon.com/images/I/61vKOKtNdnL._AC_SX522_.jpg\"]', 913, 330, NULL, NULL, 'B002CNE9H8', 'amazon', NULL, 'RAW 79 mm 1 1/4 Hemp Plastic Cigarette Rolling Machine', 11, NULL, 7944, '2019-11-18 02:42:51', NULL),
(148, NULL, '2019-11-11 21:28:04', 'The rolling machine is for use with the Raw Supernatural rolling papers. Made using high strength aluminum and double thick vinyl with high tensile strength. The rolling machine is made on the island of Kudus in Indonesia. Includes rolling instructions.', '[\"https://images-na.ssl-images-amazon.com/images/I/31Z1bCVnDiL._AC_SY400_.jpg\", \"https://images-na.ssl-images-amazon.com/images/I/512xS8BUJXL._AC_SX450_.jpg\"]', 913, 1371, 1278, NULL, 'B016APUD5U', 'amazon', NULL, 'Raw Supernatural Rolling Machine 12\"', 13, NULL, 7947, '2019-11-18 01:57:15', NULL),
(148, NULL, '2019-11-11 21:28:04', 'The Raw Roll box auto machine is for smoking papers up to 110mm in length, ideal for Kingsize and Kingsize slims. Made from steel metal casing and finished off with chrome, the rolling box has a nice smooth feel as well as using a non-stretch apron so your roll your own cigarettes will pop out perfectly rolled! With the Raw automatic rolling box 110mm you can use any size diameter filters, from 4.6mm to 8mm. As with all RAW products expect a high quality with each roll box being fully branded with the RAW logos.', NULL, 913, 1101, NULL, NULL, 'B018BE26TO', 'amazon', NULL, 'RAW Natural Unrefined Rolling Papers - Automatic Rolling Box - 70mm King Size', 14, NULL, 7949, '2019-11-18 01:56:26', NULL),
(148, NULL, '2019-11-11 21:28:04', 'This hemp plastic is made by raw for regular, 79 mm rolling papers. Raw roller cigarette maker for 1 1/4 size rolling papers.', '[\"https://images-na.ssl-images-amazon.com/images/I/71kuly7m5uL._AC_SL640_.jpg\"]', 913, 479, NULL, NULL, 'B01MSNB5GF', 'amazon', NULL, 'RAW 79 mm 1 1/4 Hemp Plastic Cigarette Rolling Machine', 11, NULL, 7950, '2019-11-18 02:14:38', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `offers`
--

CREATE TABLE `offers` (
  `app` int(11) DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `description` text COLLATE utf8_unicode_ci,
  `images` json DEFAULT NULL,
  `page` int(2) DEFAULT NULL,
  `parentId` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tags` json DEFAULT NULL,
  `title` text COLLATE utf8_unicode_ci,
  `uid` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `variations` json DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `app` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  `department` int(11) DEFAULT NULL,
  `name` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `subdepartment` int(11) DEFAULT NULL,
  `template` int(11) DEFAULT NULL,
  `uid` int(64) NOT NULL,
  `updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`app`, `category`, `department`, `name`, `subdepartment`, `template`, `uid`, `updated`) VALUES
(4, 0, 1, 'iPad', 0, 1, 63, '2019-11-06 02:34:40'),
(4, 0, 3, 'iPhone', 0, 1, 65, '2019-11-06 02:34:51'),
(4, 0, 2, 'Mac', 0, 1, 66, '2019-11-06 02:34:51'),
(4, 0, 4, 'Watch', 0, 1, 67, '2019-11-06 02:34:51'),
(3, 0, 0, 'Men', 0, 1, 72, '2019-11-06 02:34:51'),
(3, 0, 1, 'Women', 0, 1, 73, '2019-11-06 02:34:51'),
(3, 0, 2, 'Boys', 0, 1, 74, '2019-11-06 02:34:51'),
(3, 0, 3, 'Girls', 0, 1, 75, '2019-11-06 02:34:51'),
(18, 0, 0, 'Men', 0, 1, 76, '2019-11-06 02:34:51'),
(18, 0, 1, 'Women', 0, 1, 77, '2019-11-06 02:34:51'),
(18, 0, 2, 'Kids', 0, 1, 78, '2019-11-06 02:34:51'),
(37, 0, 0, 'Mobile', 0, 1, 79, '2019-11-06 02:34:51'),
(37, 0, 1, 'TV & Home Theater', 0, 1, 80, '2019-11-06 02:34:51'),
(37, 0, 2, 'Computing', 0, 1, 81, '2019-11-06 02:34:51'),
(37, 0, 3, 'Appliances', 0, 1, 82, '2019-11-06 02:34:51'),
(43, 0, 0, 'Sunglasses', 0, 1, 83, '2019-11-06 02:34:51'),
(43, 0, 1, 'Eyeglasses', 0, 1, 84, '2019-11-06 02:34:51'),
(50, 0, 0, 'Electronics', 0, 1, 85, '2019-11-06 02:34:51'),
(50, 0, 1, 'PlayStation', 0, 1, 86, '2019-11-06 02:34:51'),
(50, 0, 2, 'Entertainment', 0, 1, 87, '2019-11-06 02:34:51'),
(2, 0, 0, 'Men', 0, 1, 88, '2019-11-06 02:34:51'),
(2, 0, 1, 'Women', 0, 1, 89, '2019-11-06 02:34:51'),
(2, 0, 2, 'Kids', 0, 1, 90, '2019-11-06 02:34:51'),
(2, 0, 3, 'Baby', 0, 1, 91, '2019-11-06 02:34:51'),
(64, 0, 0, 'Sets', 0, 1, 98, '2019-11-06 02:34:51'),
(64, 0, 1, 'Exclusives', 0, 1, 99, '2019-11-06 02:34:51'),
(64, 0, 2, 'Bricks', 0, 1, 100, '2019-11-06 02:34:51'),
(64, 0, 3, 'Extras', 0, 1, 101, '2019-11-06 02:34:51'),
(64, 0, 4, 'Collectibles', 0, 1, 102, '2019-11-06 02:34:51'),
(67, 0, 0, 'Women', 0, 1, 105, '2019-11-06 02:34:51'),
(67, 0, 1, 'Mens', 0, 1, 106, '2019-11-06 02:34:51'),
(67, 0, 2, 'Kids', 0, 1, 107, '2019-11-06 02:34:51'),
(92, 0, 0, 'Mens', 0, 1, 108, '2019-11-06 02:34:51'),
(92, 0, 1, 'Womens', 0, 1, 109, '2019-11-06 02:34:51'),
(65, 0, 0, 'Makeup', 0, 1, 110, '2019-11-06 02:34:51'),
(94, 0, 0, 'Handbags', 0, 1, 111, '2019-11-06 02:34:51'),
(94, 0, 1, 'Clothing', 0, 1, 112, '2019-11-06 02:34:51'),
(94, 0, 2, 'Shoes', 0, 1, 113, '2019-11-06 02:34:51'),
(94, 0, 3, 'Jewelry', 0, 1, 114, '2019-11-06 02:34:51'),
(94, 0, 4, 'Accessories', 0, 1, 115, '2019-11-06 02:34:51'),
(94, 0, 5, 'Kids', 0, 1, 116, '2019-11-06 02:34:51'),
(94, 0, 6, 'Home', 0, 1, 117, '2019-11-06 02:34:51'),
(90, 0, 0, 'Men', 0, 1, 118, '2019-11-06 02:34:51'),
(90, 0, 1, 'Women', 0, 1, 119, '2019-11-06 02:34:51'),
(90, 0, 2, 'Kids', 0, 1, 120, '2019-11-06 02:34:51'),
(124, 0, 0, 'Soda', 0, 1, 121, '2019-11-06 02:34:51'),
(126, 0, 0, 'Cameras', 0, 1, 122, '2019-11-06 02:34:51'),
(126, 0, 1, 'Camcorders', 0, 1, 123, '2019-11-06 02:34:51'),
(126, 0, 2, 'Lenses', 0, 1, 124, '2019-11-06 02:34:51'),
(126, 0, 3, 'Printers', 0, 1, 125, '2019-11-06 02:34:51'),
(126, 0, 4, 'Projectors', 0, 1, 126, '2019-11-06 02:34:51'),
(126, 0, 5, 'Scanners', 0, 1, 127, '2019-11-06 02:34:51'),
(126, 0, 6, 'Calculators', 0, 1, 128, '2019-11-06 02:34:51'),
(126, 0, 7, 'Ink', 0, 1, 129, '2019-11-06 02:34:51'),
(126, 0, 8, 'Accessories', 0, 1, 130, '2019-11-06 02:34:51'),
(46, 0, 0, 'Smartphones', 0, 1, 131, '2019-11-06 02:34:51'),
(46, 0, 1, 'Basic Phones', 0, 1, 132, '2019-11-06 02:34:51'),
(102, 0, 0, 'Headwear', 0, 1, 133, '2019-11-06 02:34:51'),
(102, 0, 1, 'Apparel', 0, 1, 134, '2019-11-06 02:34:51'),
(123, 0, 0, 'Mens', 0, 1, 135, '2019-11-06 02:34:51'),
(123, 0, 1, 'Womens', 0, 1, 136, '2019-11-06 02:34:51'),
(123, 0, 2, 'Jeans', 0, 1, 137, '2019-11-06 02:34:51'),
(123, 0, 3, 'Kids', 0, 1, 138, '2019-11-06 02:34:51'),
(127, 0, 0, 'Switch', 0, 1, 139, '2019-11-06 02:34:51'),
(127, 0, 1, '3DS', 0, 1, 140, '2019-11-06 02:34:51'),
(127, 0, 2, 'Games', 0, 1, 141, '2019-11-06 02:34:51'),
(127, 0, 3, 'Collectibles', 0, 1, 142, '2019-11-06 02:34:51'),
(127, 0, 4, 'Accessories', 0, 1, 143, '2019-11-06 02:34:51'),
(124, 0, 1, 'Apparel', 0, 1, 144, '2019-11-06 02:34:51'),
(124, 0, 2, 'Collectibles', 0, 1, 145, '2019-11-06 02:34:51'),
(79, 0, 0, 'Bracelets', 0, 1, 146, '2019-11-06 02:34:51'),
(79, 0, 1, 'Necklaces & Charms', 0, 1, 147, '2019-11-06 02:34:51'),
(79, 0, 2, 'Rings', 0, 1, 148, '2019-11-06 02:34:51'),
(79, 0, 3, 'Earrings', 0, 1, 149, '2019-11-06 02:34:51'),
(40, 0, 0, 'Women', 0, 1, 150, '2019-11-06 02:34:51'),
(40, 0, 1, 'Men', 0, 1, 151, '2019-11-06 02:34:51'),
(40, 0, 2, 'Children', 0, 1, 152, '2019-11-06 02:34:51'),
(40, 0, 3, 'Jewelry & Watches', 0, 1, 153, '2019-11-06 02:34:51'),
(40, 0, 4, 'Beauty', 0, 1, 154, '2019-11-06 02:34:51'),
(113, 0, 0, 'Women', 0, 1, 155, '2019-11-06 02:34:51'),
(113, 0, 1, 'Men', 0, 1, 156, '2019-11-06 02:34:51'),
(11, 0, 0, 'Phones', 0, 1, 160, '2019-11-06 02:34:51'),
(11, 0, 1, 'Wear', 0, 1, 161, '2019-11-06 02:34:51'),
(11, 0, 2, 'Tablets', 0, 1, 162, '2019-11-06 02:34:51'),
(11, 0, 3, 'TV', 0, 1, 163, '2019-11-06 02:34:51'),
(11, 0, 4, 'Auto', 0, 1, 164, '2019-11-06 02:34:51'),
(1, 0, 0, 'Home', 0, 0, 165, '2019-11-06 02:46:15'),
(1, 0, 1, 'Women', 0, 0, 166, '2019-11-06 02:35:15'),
(1, 0, 2, 'Kids', 0, 0, 167, '2019-11-06 02:35:18'),
(65, 0, 2, 'Skin Care', 0, 1, 168, '2019-11-06 02:34:51'),
(65, 0, 3, 'Tools & Accessories', 0, 1, 169, '2019-11-06 02:34:51'),
(65, 0, 1, 'Nails', 0, 1, 170, '2019-11-06 02:34:51'),
(1, 0, 0, 'Men', 0, 0, 178, '2019-11-06 02:47:22'),
(4, 0, 0, 'Home', 0, 0, 179, '2019-11-06 22:50:33'),
(99, 0, 0, 'Men', 0, 1, 186, '2019-11-06 02:34:51'),
(99, 0, 1, 'Women', 0, 1, 187, '2019-11-06 02:34:51'),
(99, 0, 2, 'Kids', 0, 1, 188, '2019-11-06 02:34:51'),
(99, 0, 3, 'Sport', 0, 1, 189, '2019-11-06 02:34:51'),
(99, 0, 4, 'Classics', 0, 1, 190, '2019-11-06 02:34:51'),
(97, 0, 0, 'Men', 0, 1, 191, '2019-11-06 02:34:51'),
(97, 0, 1, 'Women', 0, 1, 192, '2019-11-06 02:34:51'),
(97, 0, 2, 'Boys', 0, 1, 193, '2019-11-06 02:34:51'),
(97, 0, 3, 'Girls', 0, 1, 194, '2019-11-06 02:34:51'),
(83, 0, 0, 'Men', 0, 1, 195, '2019-11-06 02:34:51'),
(83, 0, 1, 'Womens', 0, 1, 196, '2019-11-06 02:34:51'),
(83, 0, 2, 'Kids', 0, 1, 197, '2019-11-06 02:34:51'),
(83, 0, 3, 'Accessories & Equipment', 0, 1, 199, '2019-11-06 02:34:51'),
(108, 0, 0, 'Men', 0, 1, 200, '2019-11-06 02:34:51'),
(108, 0, 1, 'Women', 0, 1, 201, '2019-11-06 02:34:51'),
(108, 0, 2, 'Kids', 0, 1, 202, '2019-11-06 02:34:51'),
(91, 0, 0, 'Men', 0, 1, 203, '2019-11-06 02:34:51'),
(91, 0, 1, 'Women', 0, 1, 204, '2019-11-06 02:34:51'),
(91, 0, 2, 'Boys', 0, 1, 205, '2019-11-06 02:34:51'),
(91, 0, 3, 'Girls', 0, 1, 206, '2019-11-06 02:34:51'),
(47, 0, 0, 'Cell Phones', 0, 1, 207, '2019-11-06 02:34:51'),
(47, 0, 1, 'Home Phones', 0, 1, 208, '2019-11-06 02:34:51'),
(128, 0, 0, 'Furniture', 0, 1, 209, '2019-11-06 02:34:51'),
(128, 0, 1, 'Outdoor', 0, 1, 210, '2019-11-06 02:34:51'),
(128, 0, 2, 'Bedroom', 0, 1, 211, '2019-11-06 02:34:51'),
(128, 0, 3, 'Home Decor', 0, 1, 212, '2019-11-06 02:34:51'),
(128, 0, 4, 'Rugs', 0, 1, 213, '2019-11-06 02:34:51'),
(128, 0, 5, 'Lighting', 0, 1, 214, '2019-11-06 02:34:51'),
(42, 0, 0, 'Men', 0, 1, 215, '2019-11-06 02:34:51'),
(42, 0, 1, 'Women', 0, 1, 216, '2019-11-06 02:34:51'),
(42, 0, 2, 'Kids', 0, 1, 217, '2019-11-06 02:34:51'),
(62, 0, 0, 'Mobile', 0, 1, 218, '2019-11-06 02:34:51'),
(62, 0, 1, 'TV', 0, 1, 219, '2019-11-06 02:34:51'),
(62, 0, 2, 'Appliances', 0, 1, 220, '2019-11-06 02:34:51'),
(62, 0, 3, 'Computers', 0, 1, 221, '2019-11-06 02:34:51'),
(114, 0, 0, 'Men', 0, 1, 222, '2019-11-06 02:34:51'),
(114, 0, 1, 'Women', 0, 1, 223, '2019-11-06 02:34:51'),
(114, 0, 2, 'Beauty', 0, 1, 224, '2019-11-06 02:34:51'),
(13, 0, 2, 'XBOX', 0, 1, 225, '2019-11-06 02:34:51'),
(13, 0, 1, 'Surface', 0, 1, 226, '2019-11-06 02:34:51'),
(13, 0, 0, 'Windows', 0, 1, 227, '2019-11-06 02:34:51'),
(13, 0, 3, 'Office', 0, 1, 228, '2019-11-06 02:34:51'),
(100, 0, 0, 'Mens', 0, 1, 229, '2019-11-06 02:34:51'),
(100, 0, 1, 'Women', 0, 1, 230, '2019-11-06 02:34:51'),
(100, 0, 2, 'Kids', 0, 1, 231, '2019-11-06 02:34:51'),
(100, 0, 3, 'Accessories', 0, 1, 232, '2019-11-06 02:34:51'),
(41, 0, 0, 'Mens', 0, 1, 233, '2019-11-06 02:34:51'),
(41, 0, 1, 'Womens', 0, 1, 234, '2019-11-06 02:34:51'),
(41, 0, 2, 'Boys', 0, 1, 235, '2019-11-06 02:34:51'),
(41, 0, 3, 'Girls', 0, 1, 236, '2019-11-06 02:34:51'),
(12, 0, 0, 'Women', 0, 1, 237, '2019-11-06 02:34:51'),
(12, 0, 1, 'Men', 0, 1, 238, '2019-11-06 02:34:51'),
(4, 0, 5, 'Music', 0, 1, 239, '2019-11-06 02:34:51'),
(18, 0, 0, 'Shoes', 76, 1, 240, '2019-11-06 02:34:51'),
(18, 0, 0, 'Apparel', 76, 1, 241, '2019-11-06 02:34:51'),
(18, 0, 0, 'Accesories', 76, 1, 242, '2019-11-06 02:34:51'),
(33, 0, 0, 'Cell Phones & Accessories', 0, 1, 244, '2019-11-06 02:34:51'),
(33, 0, 1, 'Computers & Accessories', 0, 1, 245, '2019-11-06 02:34:51'),
(33, 0, 2, 'Office Products', 0, 1, 246, '2019-11-06 02:34:51'),
(33, 0, 3, 'Electronics', 0, 1, 247, '2019-11-06 02:34:51'),
(88, 0, 0, 'Women', 0, 1, 248, '2019-11-06 02:34:51'),
(88, 0, 1, 'Men', 0, 1, 249, '2019-11-06 02:34:51'),
(88, 0, 2, 'Kids', 0, 1, 250, '2019-11-06 02:34:51'),
(88, 0, 3, 'Home', 0, 1, 251, '2019-11-06 02:34:51'),
(4, 0, 6, 'AppStore', 0, 1, 834, '2019-11-06 02:34:51'),
(102, 0, 0, '\'47 SCRUM Tee', 134, 1, 835, '2019-11-06 02:34:51'),
(102, 0, 0, 'Men\'s T-Shirts', 134, 1, 836, '2019-11-06 02:34:51'),
(102, 0, 0, 'Men\'s Long Sleeves', 134, 1, 837, '2019-11-06 02:34:51'),
(102, 0, 0, '\'47 CLEAN UP', 133, 1, 838, '2019-11-06 02:34:51'),
(102, 0, 0, '\'47 FRANCHISE', 133, 1, 839, '2019-11-06 02:34:51'),
(102, 0, 0, '\'47 MVP', 133, 1, 840, '2019-11-06 02:34:51'),
(102, 0, 0, 'Knits', 133, 1, 841, '2019-11-06 02:34:51'),
(102, 0, 0, 'Adjustables', 133, 1, 842, '2019-11-06 02:34:51'),
(102, 0, 0, 'Snapbacks', 133, 1, 843, '2019-11-06 02:34:51'),
(102, 0, 0, 'Stretch Fits', 133, 1, 844, '2019-11-06 02:34:51'),
(102, 0, 0, 'Fitteds', 133, 1, 845, '2019-11-06 02:34:51'),
(4, 0, 1, 'iPad Pro', 63, 1, 846, '2019-11-06 02:34:51'),
(4, 0, 1, 'iPad', 63, 1, 847, '2019-11-06 02:34:51'),
(4, 0, 1, 'iPad mini', 63, 1, 848, '2019-11-06 02:34:51'),
(4, 0, 1, 'Apple Pencil', 63, 1, 849, '2019-11-06 02:34:51'),
(4, 0, 1, 'Smart Keyboard', 63, 1, 850, '2019-11-06 02:34:51'),
(4, 0, 2, 'Accessories', 63, 1, 851, '2019-11-06 02:34:51'),
(4, 0, 2, 'MacBook', 66, 1, 852, '2019-11-06 02:34:51'),
(4, 0, 2, 'MacBook Pro', 66, 1, 853, '2019-11-06 02:34:51'),
(4, 0, 2, 'iMac', 66, 1, 854, '2019-11-06 02:34:51'),
(4, 0, 2, 'iMac Pro', 66, 1, 855, '2019-11-06 02:34:51'),
(4, 0, 2, 'Mac Pro', 66, 1, 856, '2019-11-06 02:34:51'),
(4, 0, 2, 'Mac mini', 66, 1, 857, '2019-11-06 02:34:51'),
(4, 0, 3, 'Accessories', 66, 1, 858, '2019-11-06 02:34:51'),
(4, 0, 3, 'iPhone Xs', 65, 1, 859, '2019-11-06 02:34:51'),
(4, 0, 3, 'iPhone Xr', 65, 1, 860, '2019-11-06 02:34:51'),
(4, 0, 3, 'iPhone 8', 65, 1, 861, '2019-11-06 02:34:51'),
(4, 0, 3, 'iPhone 7', 65, 1, 862, '2019-11-06 02:34:51'),
(51, 0, 0, 'Bath & Changing', 0, 1, 863, '2019-11-06 02:34:51'),
(51, 0, 1, 'Car Seats & Carriers', 0, 1, 864, '2019-11-06 02:34:51'),
(51, 0, 2, 'Clothing', 0, 1, 865, '2019-11-06 02:34:51'),
(51, 0, 3, 'Feeding', 0, 1, 866, '2019-11-06 02:34:51'),
(51, 0, 4, 'Maternity', 0, 1, 867, '2019-11-06 02:34:51'),
(51, 0, 5, 'Nursery & Kids Room', 0, 1, 868, '2019-11-06 02:34:51'),
(51, 0, 6, 'Playtime', 0, 1, 869, '2019-11-06 02:34:51'),
(51, 0, 7, 'Safety', 0, 1, 870, '2019-11-06 02:34:51'),
(51, 0, 8, 'Strollers & Travel Systems', 0, 1, 871, '2019-11-06 02:34:51'),
(76, 0, 0, 'Bags', 0, 1, 872, '2019-11-06 02:34:51'),
(76, 0, 1, 'Small Leather Goods', 0, 1, 874, '2019-11-06 02:34:51'),
(76, 0, 2, 'Ready To Wear', 0, 1, 875, '2019-11-06 02:34:51'),
(76, 0, 3, 'Shoes', 0, 1, 877, '2019-11-06 02:34:51'),
(76, 0, 4, 'Jewelry', 0, 1, 878, '2019-11-06 02:34:51'),
(76, 0, 5, 'Sunglasses', 0, 1, 879, '2019-11-06 02:34:51'),
(76, 0, 6, 'Accessories & Gifts', 0, 1, 880, '2019-11-06 02:34:51'),
(76, 0, 7, 'Kids', 0, 1, 881, '2019-11-06 02:34:51'),
(130, 0, 0, 'Women', 0, 1, 882, '2019-11-06 02:34:51'),
(130, 0, 1, 'Men', 0, 1, 883, '2019-11-06 02:34:51'),
(130, 0, 2, 'Gifts', 0, 1, 884, '2019-11-06 02:34:51'),
(130, 0, 0, 'Ready-To-Wear', 882, 1, 885, '2019-11-06 02:34:51'),
(130, 0, 0, 'Bags', 882, 1, 886, '2019-11-06 02:34:51'),
(130, 0, 0, 'Shoes', 882, 1, 887, '2019-11-06 02:34:51'),
(130, 0, 0, 'Accessories', 882, 1, 888, '2019-11-06 02:34:51'),
(130, 0, 0, 'Ready-To-Wear', 883, 1, 889, '2019-11-06 02:34:51'),
(130, 0, 0, 'Bags', 883, 1, 890, '2019-11-06 02:34:51'),
(130, 0, 0, 'Shoes', 883, 1, 891, '2019-11-06 02:34:51'),
(130, 0, 0, 'Accessories', 883, 1, 892, '2019-11-06 02:34:51'),
(130, 0, 0, 'For Her', 884, 1, 893, '2019-11-06 02:34:51'),
(130, 0, 0, 'For Him', 884, 1, 894, '2019-11-06 02:34:51'),
(130, 885, 0, 'Tailoring', 0, 1, 895, '2019-11-06 02:34:51'),
(130, 885, 14, 'Dresses', 0, 1, 896, '2019-11-06 02:34:51'),
(130, 885, 15, 'Jackets', 0, 1, 897, '2019-11-06 02:34:51'),
(130, 885, 16, 'Leather', 0, 1, 898, '2019-11-06 02:34:51'),
(130, 885, 17, 'Outerwear', 0, 1, 899, '2019-11-06 02:34:51'),
(130, 885, 18, 'Knitwear', 0, 1, 900, '2019-11-06 02:34:51'),
(130, 885, 19, 'Tops And Shirts', 0, 1, 901, '2019-11-06 02:34:51'),
(130, 885, 20, 'T-Shirts And Sweatshirts', 0, 1, 902, '2019-11-06 02:34:51'),
(130, 885, 21, 'Skirts', 0, 1, 903, '2019-11-06 02:34:51'),
(130, 885, 22, 'Trousers', 0, 1, 904, '2019-11-06 02:34:51'),
(130, 885, 23, 'Denim', 0, 1, 905, '2019-11-06 02:34:51'),
(130, 885, 24, 'Evening', 0, 1, 906, '2019-11-06 02:34:51'),
(43, 0, 0, 'Men', 83, 1, 907, '2019-11-06 02:34:51'),
(43, 0, 0, 'Women', 83, 1, 908, '2019-11-06 02:34:51'),
(43, 0, 0, 'Kids', 83, 1, 909, '2019-11-06 02:34:51'),
(148, 0, 1, 'Papers', 0, 1, 910, '2019-11-06 02:34:40'),
(148, 0, 2, 'Cones', 0, 1, 911, '2019-11-11 21:19:14'),
(148, 0, 3, 'Tips', 0, 1, 912, '2019-11-11 21:19:17'),
(148, 0, 4, 'Rawling', 0, 1, 913, '2019-11-11 21:19:20'),
(148, 0, 5, 'Rolling Trays', 0, 1, 914, '2019-11-11 21:19:23'),
(148, 0, 6, 'Storage', 0, 1, 915, '2019-11-11 21:19:23'),
(148, 0, 7, 'Smoking Accesories', 0, 1, 916, '2019-11-11 21:19:23'),
(148, 0, 8, 'Apparel', 0, 1, 917, '2019-11-11 21:23:30'),
(148, 0, 9, 'Boards', 0, 1, 918, '2019-11-11 21:23:35');

-- --------------------------------------------------------

--
-- Table structure for table `photo`
--

CREATE TABLE `photo` (
  `app` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  `created` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `description` text COLLATE utf8_unicode_ci,
  `href` text COLLATE utf8_unicode_ci,
  `image` text COLLATE utf8_unicode_ci,
  `page` int(11) DEFAULT NULL,
  `source` text COLLATE utf8_unicode_ci,
  `title` text COLLATE utf8_unicode_ci,
  `updated` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `user` int(64) DEFAULT NULL,
  `uid` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `photo`
--

INSERT INTO `photo` (`app`, `category`, `created`, `description`, `href`, `image`, `page`, `source`, `title`, `updated`, `user`, `uid`) VALUES
(4, NULL, '2018-11-15 16:05:18', NULL, NULL, '59af45fbe9bc2.jpg', 65, NULL, NULL, NULL, 0, '100'),
(4, NULL, '2018-11-15 16:05:18', NULL, NULL, '59af64f862a2c.jpg', 67, NULL, NULL, NULL, 0, '102'),
(3, NULL, '2018-11-15 16:05:18', NULL, NULL, '5ab4652fdeac1.jpg', 72, NULL, NULL, NULL, 43, '121'),
(3, NULL, '2018-11-15 16:05:18', NULL, NULL, '5ab4652c352b6.jpg', 72, NULL, NULL, NULL, 43, '120'),
(3, NULL, '2018-11-15 16:05:18', NULL, NULL, '5ab4653527404.jpg', 72, NULL, NULL, NULL, 43, '122'),
(4, NULL, '2018-11-15 16:05:18', NULL, NULL, '5ab474549c21b.png', 66, NULL, NULL, NULL, 43, '125'),
(4, NULL, '2018-11-15 16:05:18', NULL, NULL, '5ab47457b2eae.jpg', 66, NULL, NULL, NULL, 43, '126'),
(4, NULL, '2018-11-15 16:05:18', NULL, NULL, '5ab47462ea02c.jpg', 66, NULL, NULL, NULL, 43, '127'),
(4, NULL, '2018-11-15 16:05:18', NULL, NULL, '5ab4746ae56bc.png', 66, NULL, NULL, NULL, 43, '128'),
(50, NULL, '2018-11-15 16:05:18', NULL, NULL, '5ab492dcbdd99.jpg', 86, NULL, NULL, NULL, 43, '129'),
(4, NULL, '2018-11-15 16:05:18', NULL, NULL, '5ab4965fcf24e.jpg', 65, NULL, NULL, NULL, 43, '131'),
(4, NULL, '2018-11-15 16:05:18', NULL, NULL, '5ab49662dac02.jpg', 65, NULL, NULL, NULL, 43, '132'),
(114, NULL, '2018-11-15 16:05:18', NULL, NULL, '5ab49a4ef0f9e.jpg', 222, NULL, NULL, NULL, 43, '134'),
(114, NULL, '2018-11-15 16:05:18', NULL, NULL, '5ab49a52f0838.jpg', 222, NULL, NULL, NULL, 43, '135'),
(114, NULL, '2018-11-15 16:05:18', NULL, NULL, '5ab49a55bbbde.jpg', 222, NULL, NULL, NULL, 43, '136'),
(114, NULL, '2018-11-15 16:05:18', NULL, NULL, '5ab49a58dbb07.jpg', 222, NULL, NULL, NULL, 43, '137'),
(114, NULL, '2018-11-15 16:05:18', NULL, NULL, '5ab49a5c6b93c.jpg', 222, NULL, NULL, NULL, 43, '138'),
(4, NULL, '2018-11-15 16:05:18', NULL, NULL, '5ab55a4eaba10.png', 63, NULL, NULL, NULL, 43, '139'),
(4, NULL, '2018-11-15 16:05:18', NULL, NULL, '5ab55a58ec10b.png', 63, NULL, NULL, NULL, 43, '140'),
(4, NULL, '2018-11-15 16:05:18', NULL, NULL, '5ab55a8065d4c.gif', 63, NULL, NULL, NULL, 43, '141'),
(4, NULL, '2018-11-15 16:05:18', NULL, NULL, '5ab5633f70817.jpg', 63, NULL, NULL, NULL, 43, '142'),
(4, NULL, '2018-11-15 16:05:18', NULL, NULL, '5ab564546bfd4.jpg', 67, NULL, NULL, NULL, 43, '143'),
(4, NULL, '2018-11-15 16:05:18', NULL, NULL, '5ab5645f96b7b.jpg', 67, NULL, NULL, NULL, 43, '144'),
(4, NULL, '2018-11-15 16:05:18', NULL, NULL, '5ab56461243bf.png', 67, NULL, NULL, NULL, 43, '145'),
(42, NULL, '2018-11-15 16:05:18', NULL, NULL, '5ab56525e72e8.jpg', 215, NULL, NULL, NULL, 43, '146'),
(42, NULL, '2018-11-15 16:05:18', NULL, NULL, '5ab565274d701.jpg', 215, NULL, NULL, NULL, 43, '147'),
(42, NULL, '2018-11-15 16:05:18', NULL, NULL, '5ab5653914927.jpg', 215, NULL, NULL, NULL, 43, '148'),
(42, NULL, '2018-11-15 16:05:18', NULL, NULL, '5ab5654fbe911.jpg', 215, NULL, NULL, NULL, 43, '149'),
(42, NULL, '2018-11-15 16:05:18', NULL, NULL, '5ab5aaaf28435.png', 216, NULL, NULL, NULL, 43, '150'),
(42, NULL, '2018-11-15 16:05:18', NULL, NULL, '5ab5aabdf2aeb.jpg', 216, NULL, NULL, NULL, 43, '151'),
(42, NULL, '2018-11-15 16:05:18', NULL, NULL, '5ab5aac169a0e.jpg', 216, NULL, NULL, NULL, 43, '153'),
(42, NULL, '2018-11-15 16:05:18', NULL, NULL, '5ab5aac96e37f.jpg', 216, NULL, NULL, NULL, 43, '154'),
(42, NULL, '2018-11-15 16:05:18', NULL, NULL, '5ab5aacb30de1.jpg', 216, NULL, NULL, NULL, 43, '155'),
(42, NULL, '2018-11-15 16:05:18', NULL, NULL, '5ab5ab56be291.jpg', 217, NULL, NULL, NULL, 43, '156'),
(42, NULL, '2018-11-15 16:05:18', NULL, NULL, '5ab5ab59a0369.jpg', 217, NULL, NULL, NULL, 43, '157'),
(42, NULL, '2018-11-15 16:05:18', NULL, NULL, '5ab5ab5b2a1d8.jpg', 217, NULL, NULL, NULL, 43, '158'),
(42, NULL, '2018-11-15 16:05:18', NULL, NULL, '5ab5ab5f749a1.jpg', 217, NULL, NULL, NULL, 43, '159'),
(42, NULL, '2018-11-15 16:05:18', NULL, NULL, '5ab5ab7812f9b.jpg', 217, NULL, NULL, NULL, 43, '160'),
(42, NULL, '2018-11-15 16:05:18', NULL, NULL, '5ab5ab8298418.jpg', 217, NULL, NULL, NULL, 43, '161'),
(113, NULL, '2018-11-15 16:05:18', NULL, NULL, '5ab5d1a7b03f3.jpg', 156, NULL, NULL, NULL, 43, '162'),
(113, NULL, '2018-11-15 16:05:18', NULL, NULL, '5ab5d1b14fee6.jpg', 156, NULL, NULL, NULL, 43, '163'),
(113, NULL, '2018-11-15 16:05:18', NULL, NULL, '5ab5d1bb7ac71.jpg', 156, NULL, NULL, NULL, 43, '166'),
(113, NULL, '2018-11-15 16:05:18', NULL, NULL, '5ab5d2d3cc7fe.jpg', 155, NULL, NULL, NULL, 43, '167'),
(113, NULL, '2018-11-15 16:05:18', NULL, NULL, '5ab5d2d927bb1.jpg', 155, NULL, NULL, NULL, 43, '170'),
(113, NULL, '2018-11-15 16:05:18', NULL, NULL, '5ab5d2dfc3ad0.jpg', 155, NULL, NULL, NULL, 43, '171'),
(113, NULL, '2018-11-15 16:05:18', NULL, NULL, '5ab5d2e52be50.jpg', 155, NULL, NULL, NULL, 43, '173'),
(113, NULL, '2018-11-15 16:05:18', NULL, NULL, '5ab5d2e8ebca4.jpg', 155, NULL, NULL, NULL, 43, '174'),
(13, NULL, '2018-11-15 16:05:18', NULL, NULL, '5ab5dd791cb91.jpeg', 226, NULL, NULL, NULL, 43, '175'),
(13, NULL, '2018-11-15 16:05:18', NULL, NULL, '5ab5dd7c0ba90.jpg', 226, NULL, NULL, NULL, 43, '176'),
(13, NULL, '2018-11-15 16:05:18', NULL, NULL, '5ab5dd81ca2e2.jpg', 226, NULL, NULL, NULL, 43, '177'),
(13, NULL, '2018-11-15 16:05:18', NULL, NULL, '5ab5dd88dbb35.jpg', 226, NULL, NULL, NULL, 43, '178'),
(13, NULL, '2018-11-15 16:05:18', NULL, NULL, '5ab5e4bef2eca.jpg', 225, NULL, NULL, NULL, 43, '179'),
(13, NULL, '2018-11-15 16:05:18', NULL, NULL, '5ab5e4c77d05f.jpg', 225, NULL, NULL, NULL, 43, '180'),
(13, NULL, '2018-11-15 16:05:18', NULL, NULL, '5ab5e4cd511d3.jpg', 225, NULL, NULL, NULL, 43, '181'),
(13, NULL, '2018-11-15 16:05:18', NULL, NULL, '5ab5e4d7b1ad8.jpg', 225, NULL, NULL, NULL, 43, '182'),
(13, NULL, '2018-11-15 16:05:18', NULL, NULL, '5ab5e4da0aefb.jpg', 225, NULL, NULL, NULL, 43, '183'),
(13, NULL, '2018-11-15 16:05:18', NULL, NULL, '5ab5e4e308048.jpg', 225, NULL, NULL, NULL, 43, '184'),
(13, NULL, '2018-11-15 16:05:18', NULL, NULL, '5ab5e4e66a8cc.jpg', 225, NULL, NULL, NULL, 43, '185'),
(13, NULL, '2018-11-15 16:05:18', NULL, NULL, '5ab5e4ea012b2.png', 225, NULL, NULL, NULL, 43, '186'),
(13, NULL, '2018-11-15 16:05:18', NULL, NULL, '5ab5e5ad6f05d.jpg', 228, NULL, NULL, NULL, 43, '187'),
(13, NULL, '2018-11-15 16:05:18', NULL, NULL, '5ab5e5af4afce.jpg', 228, NULL, NULL, NULL, 43, '188'),
(13, NULL, '2018-11-15 16:05:18', NULL, NULL, '5ab5e5bc5ee7b.jpg', 228, NULL, NULL, NULL, 43, '189'),
(13, NULL, '2018-11-15 16:05:18', NULL, NULL, '5ab5e5c254be7.jpg', 228, NULL, NULL, NULL, 43, '190'),
(13, NULL, '2018-11-15 16:05:18', NULL, NULL, '5ab5e68c34cdb.png', 227, NULL, NULL, NULL, 43, '191'),
(13, NULL, '2018-11-15 16:05:18', NULL, NULL, '5ab5e6a5915f9.png', 227, NULL, NULL, NULL, 43, '192'),
(13, NULL, '2018-11-15 16:05:18', NULL, NULL, '5ab5e6bf038c9.jpg', 227, NULL, NULL, NULL, 43, '193'),
(102, NULL, '2018-11-15 16:05:18', NULL, NULL, '5ab5ed10cb20f.jpg', 133, NULL, NULL, NULL, 43, '194'),
(102, NULL, '2018-11-15 16:05:18', NULL, NULL, '5ab5ed168aa42.jpg', 133, NULL, NULL, NULL, 43, '195'),
(102, NULL, '2018-11-15 16:05:18', NULL, NULL, '5ab5ed2048b98.jpg', 133, NULL, NULL, NULL, 43, '196'),
(102, NULL, '2018-11-15 16:05:18', NULL, NULL, '5ab695dd4b9ed.jpg', 134, NULL, NULL, NULL, 43, '197'),
(102, NULL, '2018-11-15 16:05:18', NULL, NULL, '5ab695f374b53.jpg', 134, NULL, NULL, NULL, 43, '198'),
(102, NULL, '2018-11-15 16:05:18', NULL, NULL, '5ab6960cef6ec.jpg', 134, NULL, NULL, NULL, 43, '199'),
(123, NULL, '2018-11-15 16:05:18', NULL, NULL, '5ab69c23aaf12.jpg', 135, NULL, NULL, NULL, 43, '200'),
(123, NULL, '2018-11-15 16:05:18', NULL, NULL, '5ab69c2550e9f.jpg', 135, NULL, NULL, NULL, 43, '201'),
(123, NULL, '2018-11-15 16:05:18', NULL, NULL, '5ab69c267c191.jpg', 135, NULL, NULL, NULL, 43, '202'),
(123, NULL, '2018-11-15 16:05:18', NULL, NULL, '5ab69c27a58e9.jpg', 135, NULL, NULL, NULL, 43, '203'),
(123, NULL, '2018-11-15 16:05:18', NULL, NULL, '5ab69c2c97bc2.jpg', 135, NULL, NULL, NULL, 43, '205'),
(43, NULL, '2018-11-15 16:05:18', NULL, NULL, '5ab847434b3d6.jpg', 84, NULL, NULL, NULL, 43, '209'),
(43, NULL, '2018-11-15 16:05:18', NULL, NULL, '5ab83cc5b34cb.jpg', 83, NULL, NULL, NULL, 43, '207'),
(43, NULL, '2018-11-15 16:05:18', NULL, NULL, '5ab83cd9576df.jpg', 83, NULL, NULL, NULL, 43, '208'),
(43, NULL, '2018-11-15 16:05:18', NULL, NULL, '5ab847531610d.jpg', 84, NULL, NULL, NULL, 43, '210'),
(43, NULL, '2018-11-15 16:05:18', NULL, NULL, '5ab847565de31.jpg', 84, NULL, NULL, NULL, 43, '211'),
(124, NULL, '2018-11-15 16:05:18', NULL, NULL, '5ab870ff2a583.jpg', 144, NULL, NULL, NULL, 43, '220'),
(124, NULL, '2018-11-15 16:05:18', NULL, NULL, '5ab870f73c8f5.jpg', 144, NULL, NULL, NULL, 43, '219'),
(124, NULL, '2018-11-15 16:05:18', NULL, NULL, '5ab870f2dd0b7.jpg', 144, NULL, NULL, NULL, 43, '218'),
(124, NULL, '2018-11-15 16:05:18', NULL, NULL, '5ab870ee2da5b.jpg', 144, NULL, NULL, NULL, 43, '217'),
(124, NULL, '2018-11-15 16:05:18', NULL, NULL, '5ab86a934e203.jpg', 121, NULL, NULL, NULL, 43, '216'),
(124, NULL, '2018-11-15 16:05:18', NULL, NULL, '5ab871126e46e.jpg', 144, NULL, NULL, NULL, 43, '221'),
(124, NULL, '2018-11-15 16:05:18', NULL, NULL, '5ab871251db0d.jpg', 144, NULL, NULL, NULL, 43, '222'),
(124, NULL, '2018-11-15 16:05:18', NULL, NULL, '5ab87449cd0b4.webp', 145, NULL, NULL, NULL, 43, '223'),
(124, NULL, '2018-11-15 16:05:18', NULL, NULL, '5ab8744d660d6.JPG', 145, NULL, NULL, NULL, 43, '224'),
(18, NULL, '2018-11-15 16:05:18', NULL, NULL, '5abc5fc12fc2a.jpg', 76, NULL, NULL, NULL, 43, '228'),
(124, NULL, '2018-11-15 16:05:18', NULL, NULL, '5ab8747046b6a.jpg', 145, NULL, NULL, NULL, 43, '226'),
(124, NULL, '2018-11-15 16:05:18', NULL, NULL, '5ab8747556d47.jpg', 145, NULL, NULL, NULL, 43, '227'),
(18, NULL, '2018-11-15 16:05:18', NULL, NULL, '5abc5fc9c51d9.jpg', 76, NULL, NULL, NULL, 43, '229'),
(18, NULL, '2018-11-15 16:05:18', NULL, NULL, '5abc648ac77b0.jpg', 77, NULL, NULL, NULL, 43, '232'),
(18, NULL, '2018-11-15 16:05:18', NULL, NULL, '5abc5fd4dc994.jpg', 76, NULL, NULL, NULL, 43, '231'),
(18, NULL, '2018-11-15 16:05:18', NULL, NULL, '5abc648cbd1f9.jpg', 77, NULL, NULL, NULL, 43, '233'),
(18, NULL, '2018-11-15 16:05:18', NULL, NULL, '5abc648fa9357.jpg', 77, NULL, NULL, NULL, 43, '234'),
(18, NULL, '2018-11-15 16:05:18', NULL, NULL, '5abc649a7da62.jpg', 77, NULL, NULL, NULL, 43, '235'),
(18, NULL, '2018-11-15 16:05:18', NULL, NULL, '5abc64a7656b4.jpg', 77, NULL, NULL, NULL, 43, '236'),
(18, NULL, '2018-11-15 16:05:18', NULL, NULL, '5abc64b2d4a30.jpg', 77, NULL, NULL, NULL, 43, '237'),
(83, NULL, '2018-11-15 16:05:18', NULL, NULL, '5abddd26f2ec4.jpg', 196, NULL, NULL, NULL, 43, '238'),
(83, NULL, '2018-11-15 16:05:18', NULL, NULL, '5abddd2811d34.jpg', 196, NULL, NULL, NULL, 43, '239'),
(83, NULL, '2018-11-15 16:05:18', NULL, NULL, '5abddd28f296e.jpg', 196, NULL, NULL, NULL, 43, '240'),
(83, NULL, '2018-11-15 16:05:18', NULL, NULL, '5abddd574bc36.jpg', 196, NULL, NULL, NULL, 43, '241'),
(83, NULL, '2018-11-15 16:05:18', NULL, NULL, '5abddd5fcb126.jpg', 196, NULL, NULL, NULL, 43, '242'),
(83, NULL, '2018-11-15 16:05:18', NULL, NULL, '5abddd78dd0fa.jpg', 196, NULL, NULL, NULL, 43, '243'),
(83, NULL, '2018-11-15 16:05:18', NULL, NULL, '5abddd7adc3fa.jpg', 196, NULL, NULL, NULL, 43, '244'),
(18, NULL, '2018-11-15 16:05:18', NULL, NULL, '5abf14d0e962e.jpg', 78, NULL, NULL, NULL, 43, '245'),
(18, NULL, '2018-11-15 16:05:18', NULL, NULL, '5abf14d313c10.jpg', 78, NULL, NULL, NULL, 43, '246'),
(18, NULL, '2018-11-15 16:05:18', NULL, NULL, '5abf14d635254.jpg', 78, NULL, NULL, NULL, 43, '247'),
(18, NULL, '2018-11-15 16:05:18', NULL, NULL, '5abf14e3d0977.jpeg', 78, NULL, NULL, NULL, 43, '248'),
(18, NULL, '2018-11-15 16:05:18', NULL, NULL, '5ac199407940e.jpg', 76, NULL, NULL, NULL, 43, '256'),
(102, NULL, '2018-11-15 16:05:18', NULL, NULL, '5ac026ba2c4ce.jpeg', 133, NULL, NULL, NULL, 43, '252'),
(18, NULL, '2018-11-15 16:05:18', NULL, NULL, '5ac199391e566.jpg', 76, NULL, NULL, NULL, 43, '255'),
(18, NULL, '2018-11-15 16:05:18', NULL, NULL, '5ac1994f247a7.jpg', 76, NULL, NULL, NULL, 43, '257'),
(18, NULL, '2018-11-15 16:05:18', NULL, NULL, '5ac199658cbf5.jpg', 76, NULL, NULL, NULL, 43, '258'),
(18, NULL, '2018-11-15 16:05:18', NULL, NULL, '5ac1996f5d71e.jpg', 76, NULL, NULL, NULL, 43, '259'),
(4, NULL, '2018-11-15 16:05:18', NULL, NULL, '5ac39380be68a.jpg', 66, NULL, NULL, NULL, 43, '260'),
(4, NULL, '2018-11-15 16:05:18', NULL, NULL, '5ac39381c7655.jpg', 66, NULL, NULL, NULL, 43, '261'),
(100, NULL, '2018-11-15 16:05:18', NULL, NULL, '5ac39805c3534.jpg', 229, NULL, NULL, NULL, 43, '262'),
(100, NULL, '2018-11-15 16:05:18', NULL, NULL, '5ac3980b323a6.jpg', 229, NULL, NULL, NULL, 43, '263'),
(100, NULL, '2018-11-15 16:05:18', NULL, NULL, '5ac3981b86489.jpg', 229, NULL, NULL, NULL, 43, '264'),
(41, NULL, '2018-11-15 16:05:18', NULL, NULL, '5ac39ad6be901.jpg', 233, NULL, NULL, NULL, 43, '268'),
(41, NULL, '2018-11-15 16:05:18', NULL, NULL, '5ac39ab05406a.jpg', 233, NULL, NULL, NULL, 43, '267'),
(41, NULL, '2018-11-15 16:05:18', NULL, NULL, '5ac39ad8b94e4.jpg', 233, NULL, NULL, NULL, 43, '269'),
(41, NULL, '2018-11-15 16:05:18', NULL, NULL, '5ac39b1318b96.jpg', 233, NULL, NULL, NULL, 43, '270'),
(3, NULL, '2018-11-15 16:05:18', NULL, NULL, '5ac4924f5a1d7.jpg', 72, NULL, NULL, NULL, 43, '271'),
(3, NULL, '2018-11-15 16:05:18', NULL, NULL, '5ac4925258fa1.jpg', 72, NULL, NULL, NULL, 43, '272'),
(3, NULL, '2018-11-15 16:05:18', NULL, NULL, '5ac492598730f.jpg', 72, NULL, NULL, NULL, 43, '273'),
(3, NULL, '2018-11-15 16:05:18', NULL, NULL, '5ac4925f402de.jpg', 72, NULL, NULL, NULL, 43, '274'),
(3, NULL, '2018-11-15 16:05:18', NULL, NULL, '5b010b0793681.jpg', 73, NULL, NULL, NULL, 43, '275'),
(3, NULL, '2018-11-15 16:05:18', NULL, NULL, '5b010b0e36d6e.jpg', 73, NULL, NULL, NULL, 43, '276'),
(3, NULL, '2018-11-15 16:05:18', NULL, NULL, '5b010b121479b.jpg', 73, NULL, NULL, NULL, 43, '277'),
(3, NULL, '2018-11-15 16:05:18', NULL, NULL, '5b010b1498269.jpg', 73, NULL, NULL, NULL, 43, '278'),
(3, NULL, '2018-11-15 16:05:18', NULL, NULL, '5b010b1669f85.jpg', 73, NULL, NULL, NULL, 43, '279'),
(3, NULL, '2018-11-15 16:05:18', NULL, NULL, '5b010b18bd441.jpg', 73, NULL, NULL, NULL, 43, '280'),
(3, NULL, '2018-11-15 16:05:18', NULL, NULL, '5b010b1e926fd.jpeg', 73, NULL, NULL, NULL, 43, '281'),
(3, NULL, '2018-11-15 16:05:18', NULL, NULL, '5b010b2a3cf84.jpg', 73, NULL, NULL, NULL, 43, '282'),
(3, NULL, '2018-11-15 16:05:18', NULL, NULL, '5b010b386233f.jpg', 73, NULL, NULL, NULL, 43, '283'),
(3, NULL, '2018-11-15 16:05:18', NULL, NULL, '5b010b3c996b8.png', 73, NULL, NULL, NULL, 43, '284'),
(3, NULL, '2018-11-15 16:05:18', NULL, NULL, '5b010b5a76842.jpg', 73, NULL, NULL, NULL, 43, '285'),
(3, NULL, '2018-11-15 16:05:18', NULL, NULL, '5b010b6119c3a.jpg', 73, NULL, NULL, NULL, 43, '286'),
(3, NULL, '2018-11-15 16:05:18', NULL, NULL, '5b010b64a19b0.png', 73, NULL, NULL, NULL, 43, '287'),
(3, NULL, '2018-11-15 16:05:18', NULL, NULL, '5b010b671182a.jpg', 73, NULL, NULL, NULL, 43, '288'),
(3, NULL, '2018-11-15 16:05:18', NULL, NULL, '5b010b7429c84.jpg', 73, NULL, NULL, NULL, 43, '289'),
(11, NULL, '2018-11-15 16:05:18', NULL, NULL, '5bdd34e1baa11.jpg', NULL, NULL, NULL, NULL, 0, '290'),
(11, NULL, '2018-11-15 16:05:18', NULL, NULL, '5bdd3649d101c.jpg', NULL, NULL, NULL, NULL, 43, '291'),
(11, NULL, '2018-11-15 16:05:18', NULL, NULL, '5bdd364a2ca34.jpg', NULL, NULL, NULL, NULL, 43, '292'),
(11, NULL, '2018-11-15 16:05:18', NULL, NULL, '5bdd364a7809e.jpg', NULL, NULL, NULL, NULL, 43, '293'),
(11, NULL, '2018-11-15 16:05:18', NULL, NULL, '5bdd364ac9bbf.jpg', NULL, NULL, NULL, NULL, 43, '294'),
(11, NULL, '2018-11-15 16:05:18', NULL, NULL, '5bdd364b335bd.jpg', NULL, NULL, NULL, NULL, 43, '295'),
(11, NULL, '2018-11-15 16:05:18', NULL, NULL, '5bdd364b9554e.jpg', NULL, NULL, NULL, NULL, 43, '296'),
(11, NULL, '2018-11-15 16:05:18', NULL, NULL, '5bdd364bdc2cd.png', NULL, NULL, NULL, NULL, 43, '297'),
(11, NULL, '2018-11-15 16:05:18', NULL, NULL, '5bdd364d05e5b.jpg', NULL, NULL, NULL, NULL, 43, '298'),
(11, NULL, '2018-11-15 16:05:18', NULL, NULL, '5bdd417b38263.jpg', 160, NULL, NULL, NULL, 43, '299'),
(11, NULL, '2018-11-15 16:05:18', NULL, NULL, '5bdd417b96329.jpg', 160, NULL, NULL, NULL, 43, '300'),
(11, NULL, '2018-11-15 16:05:18', NULL, NULL, '5bdd417be41d4.jpg', 160, NULL, NULL, NULL, 43, '301'),
(11, NULL, '2018-11-15 16:05:18', NULL, NULL, '5bdd417c3f858.jpg', 160, NULL, NULL, NULL, 43, '302'),
(11, NULL, '2018-11-15 16:05:18', NULL, NULL, '5bdd417c9f617.jpg', 160, NULL, NULL, NULL, 43, '303'),
(11, NULL, '2018-11-15 16:05:18', NULL, NULL, '5bdd417d4d91e.jpg', 160, NULL, NULL, NULL, 43, '304'),
(11, NULL, '2018-11-15 16:05:18', NULL, NULL, '5bdd417d9aeb1.png', 160, NULL, NULL, NULL, 43, '305'),
(11, NULL, '2018-11-15 16:05:18', NULL, NULL, '5bdd417f46fac.jpg', 160, NULL, NULL, NULL, 43, '306'),
(4, NULL, '2018-11-15 18:55:43', NULL, NULL, '5bee077f1ee5d.png', 239, NULL, NULL, NULL, 43, '308'),
(4, NULL, '2018-11-15 19:01:14', NULL, NULL, '5bee08ca5d263.png', 239, NULL, NULL, NULL, 43, '309'),
(4, NULL, '2018-11-16 04:29:12', NULL, NULL, '5bee8de80bd9d.png', 63, NULL, NULL, NULL, 0, '310');

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `avatar` text COLLATE utf8_unicode_ci,
  `description` text CHARACTER SET utf8 COLLATE utf8_bin,
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `uid` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`avatar`, `description`, `name`, `uid`) VALUES
('jpg', 'THIS IS A CHILL LAYED BACK ALL RACE ROOM SMOKE GOOD DRINK UP JUST KNOW THIS IS 18 AND OLDER ROOM KEEP IT DRAMA FREE THANKS NO JACK OFFS OR RACIST HUSTLE MOTIVATE RECRUITING', 'blacknnwhite', '1'),
(NULL, NULL, 'sciencesnfuckshit', '2'),
(NULL, 'MSPRETTY ROOM PBG AND FTH TEAM COME IN CHILL WITH US :)', 'bootyandtitties', '3'),
(NULL, 'Welcome 2 MostHatedInc ~ NOT your Average Room ~ We Are A Big Family ~ Smoke ~ Drink ~ Dab ~ Strip ~ Dance ~ Twerk ~ Play Games ~ Have Fun ~ Converse ~ Turn Up ~ Join Our Family ~ Fuck Our Haters ~', 'mosthatedinc', '4'),
('gif', 'Everyone is a celebrity in this room No disrespecting women We can most def do without the N word Welcome to the room and dont be scared to speak....', 'celebritystatus', '5');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `tag` text COLLATE utf8_unicode_ci NOT NULL,
  `uid` varchar(64) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`tag`, `uid`) VALUES
('Apple', '1'),
('New', '10'),
('4K HDR', '100'),
('tv shows', '101'),
('movies', '102'),
('timer', '103'),
('stopwatch', '104'),
('watch', '105'),
('clock', '106'),
('hourglass', '107'),
('digital watch', '108'),
('silent', '109'),
('2016', '11'),
('mute', '110'),
('alarm', '111'),
('minute', '112'),
('second', '113'),
('hour', '114'),
('time', '115'),
('game', '116'),
('training', '117'),
('countdown', '118'),
('sport', '119'),
('All-new', '12'),
('workout', '120'),
('sandglass', '121'),
('24h', '122'),
('twenty', '123'),
('four', '124'),
('twenty four', '125'),
('1 day', '126'),
('day', '127'),
('New MacBook Pro', '128'),
('13', '129'),
('USB-C', '13'),
('13-inch', '130'),
('Thunderbolt 3', '131'),
('Butterfly Keyboard', '132'),
('Third Generation', '133'),
('Intel Core i5', '134'),
('Intel Core i7', '135'),
('13 MacBook Pro', '136'),
('2018 MacBook Pro', '137'),
('MacBook Pro 13', '138'),
('Unboxing', '139'),
('Benchmarks', '14'),
('Demo', '140'),
('Review', '141'),
('Comparison', '142'),
('2017 vs 2018', '143'),
('Differences', '144'),
('Speed', '145'),
('Throttling', '146'),
('Heat', '147'),
('Speakers', '148'),
('Bluetooth 5.0', '149'),
('Battery', '15'),
('How to', '150'),
('How i style my converse chuck taylor', '151'),
('converse all star', '152'),
('white converse', '153'),
('black converse', '154'),
('converse low', '155'),
('how to style converse', '156'),
('converse street wear', '157'),
('converse lookbook men', '158'),
('converse unboxing', '159'),
('Mac', '16'),
('converse on feet', '160'),
('converse back to school', '161'),
('street wear', '162'),
('converse hi', '163'),
('champion socks', '164'),
('casio watch', '165'),
('top 3 outfit converse', '166'),
('all star', '167'),
('converse chuck taylor all star', '168'),
('yoshi kris', '169'),
('notebook', '17'),
('yoshi', '170'),
('yoshi chris', '171'),
('True religion', '172'),
('authentic', '173'),
('jeans', '174'),
('Ricky', '175'),
('super t', '176'),
('sale', '177'),
('last stitch', '178'),
('outlet', '179'),
('performance', '18'),
('designer', '180'),
('raw denim', '181'),
('Buddha', '182'),
('TR', '183'),
('919', '184'),
('last stitch true religion', '185'),
('denim', '186'),
('premium', '187'),
('’47', '188'),
('History', '189'),
('design', '19'),
('Style', '190'),
('Fashion', '191'),
('Hats', '192'),
('Boston', '193'),
('Red Sox', '194'),
('Lifestyle', '195'),
('Sports', '196'),
('Apparel', '197'),
('Clothing', '198'),
('MLB', '199'),
('MacBook Pro', '2'),
('Retina Display', '20'),
('NFL', '200'),
('NBA', '201'),
('NHL', '202'),
('Brand', '203'),
('’47 Brand', '204'),
('Family', '205'),
('baseball', '206'),
('true religion', '207'),
('Jeans (Garment)', '208'),
('Clothing (Industry)', '209'),
('Processor', '21'),
('reveiw', '210'),
('fashion', '211'),
('cloths', '212'),
('hd', '213'),
('1080p', '214'),
('poloralphlauren', '215'),
('designer jeans', '216'),
('cheif keef', '217'),
('Top 10 adidas Boots', '218'),
('adidas Kids Boots', '219'),
('Chuck Taylor All-Stars (Brand)', '22'),
('Kids adidas Cleats', '220'),
('Kids Cleats', '221'),
('Kids boots', '222'),
('Kids Football Boots', '223'),
('Kids Soccer Cleats', '224'),
('Kids Soccer Boots', '225'),
('Best adidas Boots for Kids', '226'),
('Best adidas cleats for kids', '227'),
('boots for kids', '228'),
('football boots for kids', '229'),
('converse', '23'),
('soccer cleats for kids', '230'),
('cleats for children', '231'),
('kids soccer', '232'),
('kids football', '233'),
('HUGE SNEAKER HAUL', '234'),
('SNEAKER HAUL', '235'),
('ADIDAS SUPERSTAR', '236'),
('adidas gazelle', '237'),
('sneakers', '238'),
('shoe haul', '239'),
('white', '24'),
('tweens', '240'),
('claires haul', '241'),
('jojo siwa', '242'),
('dance moms', '243'),
('cheer', '244'),
('cheer bow', '245'),
('jessalyn grace', '246'),
('valentines 2017', '247'),
('style haul', '248'),
('haul and try on', '249'),
('shoe', '25'),
('huge haul', '250'),
('disney', '251'),
('justice haul', '252'),
('musical.ly', '253'),
('gaming', '254'),
('toy reviews', '255'),
('sneaker reviews', '256'),
('adidas iredescent', '257'),
('adidas halogram', '258'),
('rose gold', '259'),
('must have summer shoe', '26'),
('little', '260'),
('kids', '261'),
('children', '262'),
('adidas', '263'),
('ultra boost', '264'),
('triple black', '265'),
('all', '266'),
('black', '267'),
('react', '268'),
('honest', '269'),
('summer shoe 2014', '27'),
('mr foamer simpson', '270'),
('kanye', '271'),
('west', '272'),
('nmd', '273'),
('bape', '274'),
('yeezy', '275'),
('350', '276'),
('750', '277'),
('low', '278'),
('v2', '279'),
('ss14', '28'),
('Boston Red Sox', '280'),
('Athletics', '281'),
('Streetwear', '282'),
('MLS', '283'),
('USSF', '284'),
('college', '285'),
('NCAA', '286'),
('LIDS', '287'),
('\'47Brand', '288'),
('NewFranchise', '289'),
('mens fashion', '29'),
('47NiceHat', '290'),
('snapback', '291'),
('hat', '292'),
('collection', '293'),
('snap', '294'),
('back', '295'),
('hats', '296'),
('mlb', '297'),
('nhl', '298'),
('nba', '299'),
('Touch Bar', '3'),
('top mens shoe', '30'),
('classic', '300'),
('kith', '301'),
('nyc', '302'),
('redsox', '303'),
('la', '304'),
('kings', '305'),
('eddie', '306'),
('win', '307'),
('kicks', '308'),
('unboxing', '309'),
('review', '31'),
('huge', '310'),
('mens', '311'),
('haul', '312'),
('to', '313'),
('school', '314'),
('basics', '315'),
('essentials', '316'),
('lids', '317'),
('new', '318'),
('era', '319'),
('unisex converse', '32'),
('nike', '320'),
('air', '321'),
('jordan', '322'),
('jordans', '323'),
('funny', '324'),
('humor', '325'),
('zara', '326'),
('h&m', '327'),
('bulls', '328'),
('chicago', '329'),
('footlocker', '33'),
('sox', '330'),
('summer', '331'),
('fall', '332'),
('finishline', '333'),
('47', '334'),
('brand', '335'),
('style', '336'),
('tips', '337'),
('how', '338'),
('diy', '339'),
('on foot', '34'),
('big', '340'),
('custom', '341'),
('id', '342'),
('sneakerheadinthebay', '343'),
('yoantykicks', '344'),
('nightwing2303', '345'),
('hes', '346'),
('lebron', '347'),
('kobe', '348'),
('kd', '349'),
('Converse', '35'),
('don c', '350'),
('mitchell', '351'),
('and', '352'),
('ness', '353'),
('throwback', '354'),
('tech', '355'),
('fleece', '356'),
('x 10', '357'),
('ovo', '358'),
('deep', '359'),
('Chuck Taylor', '36'),
('bull1trc', '360'),
('47 brand', '361'),
('free hats', '362'),
('snap back', '363'),
('giveaway', '364'),
('robert lopez', '365'),
('detriot', '366'),
('fitted', '367'),
('st.louis', '368'),
('living', '369'),
('Converse All Star', '37'),
('love', '370'),
('mac', '371'),
('math', '372'),
('media', '373'),
('money', '374'),
('music-video', '375'),
('obama', '376'),
('oil', '377'),
('online', '378'),
('peace', '379'),
('Chuck Taylor All Star', '38'),
('photo', '380'),
('photoshop', '381'),
('pictures', '382'),
('president', '383'),
('recipe', '384'),
('republican', '385'),
('rock', '386'),
('sculpture', '387'),
('security', '388'),
('social-media', '389'),
('Nubuck', '39'),
('society', '390'),
('star-wars', '391'),
('technology', '392'),
('television', '393'),
('tools', '394'),
('tutorials', '395'),
('video', '396'),
('videos', '397'),
('vintage', '398'),
('war', '399'),
('TouchBar', '4'),
('Waterproof', '40'),
('water', '400'),
('weird', '401'),
('wordpress', '402'),
('youtube', '403'),
('sex', '404'),
('sexy', '405'),
('hot', '406'),
('porn', '407'),
('omg', '408'),
('art', '409'),
('Boot', '41'),
('comedy', '410'),
('community', '411'),
('concert', '412'),
('Apple MacBook', '413'),
('12-inch', '414'),
('Retina MacBook', '415'),
('Retina', '416'),
('OSX', '417'),
('MacOS', '418'),
('MacBook', '419'),
('Boots', '42'),
('FaceTime', '420'),
('Camera', '421'),
('4K', '422'),
('SSD', '423'),
('RAM', '424'),
('Skylake', '425'),
('M3', '426'),
('M5', '427'),
('Intel', '428'),
('GPU', '429'),
('Nubuck Boot', '43'),
('Core M', '430'),
('Core M3', '431'),
('Core M5', '432'),
('Core M7', '433'),
('M7', '434'),
('Rose Gold', '435'),
('Gold', '436'),
('Silver', '437'),
('Space Gray', '438'),
('All Colors', '439'),
('Waterproof Boot', '44'),
('Macbook unboxing', '440'),
('unboxing Macbook', '441'),
('Macbook 2016', '442'),
('2016 MacBook unboxing', '443'),
('Macbook 12', '444'),
('Macbook 2016 unboxing', '445'),
('running', '446'),
('track', '447'),
('spikes', '448'),
('austin', '449'),
('Converse Boot', '45'),
('esposito', '450'),
('alex', '451'),
('mcnally', '452'),
('kris', '453'),
('everett', '454'),
('academy', '455'),
('of', '456'),
('university', '457'),
('drone', '458'),
('phantom', '459'),
('Mason', '46'),
('advanced', '460'),
('Myntra', '461'),
('Clothes', '462'),
('coats', '463'),
('dress shirts', '464'),
('dresses', '465'),
('handbags', '466'),
('heels', '467'),
('jackets', '468'),
('kids clothes', '469'),
('Grey', '47'),
('kids shoes', '470'),
('mens apparel', '471'),
('mens shoes', '472'),
('oxfords', '473'),
('purses', '474'),
('rain boots', '475'),
('running shoes', '476'),
('sandals', '477'),
('shirts', '478'),
('shoes', '479'),
('White', '48'),
('skirts', '480'),
('slippers', '481'),
('sweaters', '482'),
('swimwear', '483'),
('womens apparel', '484'),
('womens shoes', '485'),
('zappos', '486'),
('zappos.com', '487'),
('womens clothing', '488'),
('mens clothing', '489'),
('Gum Sole', '49'),
('shoe reviews', '490'),
('running shoes reviews', '491'),
('womens shoes reviews', '492'),
('mens shoes reviews', '493'),
('athletic shoes', '494'),
('handbag reviews', '495'),
('watches', '496'),
('watches reviews', '497'),
('adidas Originals', '498'),
('Sneakers', '499'),
('Touch ID', '5'),
('Gum', '50'),
('music', '500'),
('hip-hop', '501'),
('dua lipa', '502'),
('playboi carti', '503'),
('advert.ge', '504'),
('best commercials', '505'),
('რეკლამა', '506'),
('reklama', '507'),
('реклама', '508'),
('spot', '509'),
('Converse Canada', '51'),
('advertisment', '510'),
('ad', '511'),
('advert', '512'),
('Adidas - One in a Billion', '513'),
('One in a Billion', '514'),
('Adidas', '515'),
('David Bekhem', '516'),
('play', '517'),
('creative', '518'),
('adidas outdoor', '519'),
('Foot Locker', '52'),
('terrex swift r', '520'),
('mens hiking shoe', '521'),
('trail shoe', '522'),
('mens terrex swft r', '523'),
('hiking', '524'),
('backcountry edge', '525'),
('Jordan', '526'),
('Jordan Brand', '527'),
('Trainers', '528'),
('Shoes', '529'),
('Little Burgundy', '53'),
('Jordan 11', '530'),
('Gamma Blue', '531'),
('Space Jams', '532'),
('72-10', '533'),
('Turbo Green', '534'),
('Jordan 6', '535'),
('Infrared', '536'),
('Chrome Lows', '537'),
('Jordan 13', '538'),
('Black Cat', '539'),
('Browns Shoes', '54'),
('PreciousBarbz', '540'),
('Try on', '541'),
('Haul', '542'),
('Dark Skin', '543'),
('Pistons', '544'),
('GS', '545'),
('Gs', '546'),
('Grade School', '547'),
('sneaker', '548'),
('airjordan', '549'),
('Seango', '55'),
('makeup', '550'),
('latest pick up', '551'),
('sneaker haul', '552'),
('sneaker collector', '553'),
('chicks in kicks', '554'),
('puma', '555'),
('sneaker freaker', '556'),
('jewellery', '557'),
('blaze of glory', '558'),
('bloodbath', '559'),
('sgo8', '56'),
('adidas nmd', '560'),
('nomad', '561'),
('air max', '562'),
('air max zero', '563'),
('cortez', '564'),
('presto', '565'),
('runners', '566'),
('white cement 4', '567'),
('nike free run', '568'),
('air jordan', '569'),
('Sean Go', '57'),
('How To Style Adidas Superstars', '570'),
('Adidas Superstars', '571'),
('Styling Adidas', '572'),
('Adidas Superstar one', '573'),
('How I Style Adidas Superstars', '574'),
('Adidas Superstars white and black', '575'),
('How to style adidas sneakers', '576'),
('How to style adidas trainers', '577'),
('Adidas superstar sneaker comparison', '578'),
('Adidas Superstar review', '579'),
('Sneaker Review', '58'),
('Adidas Superstars on feet', '580'),
('Adidas Superstar lookbook', '581'),
('Adidas Superstar men', '582'),
('Adidas Review', '583'),
('Spring lookbook 2018', '584'),
('Mens Fashion 2018', '585'),
('Mens Lookbook', '586'),
('Mens Spring summer 2018 lookbook', '587'),
('jake daniels', '588'),
('originals', '589'),
('Shoe Review', '59'),
('look', '590'),
('book', '591'),
('lookbook', '592'),
('yeezys', '593'),
('yeezy\'s', '594'),
('version', '595'),
('2 ii', '596'),
('oxford', '597'),
('tan', '598'),
('pirate', '599'),
('OLED', '6'),
('Toronto', '60'),
('triple', '600'),
('rare', '601'),
('unreleased', '602'),
('sample', '603'),
('grey', '604'),
('gum', '605'),
('glow', '606'),
('test', '607'),
('real', '608'),
('raf', '609'),
('Canada', '61'),
('simons', '610'),
('stan', '611'),
('smith', '612'),
('blush', '613'),
('on', '614'),
('feet', '615'),
('yellow', '616'),
('red', '617'),
('og', '618'),
('primeknit', '619'),
('Winter', '62'),
('ultra', '620'),
('boost', '621'),
('uncaged', '622'),
('superstar', '623'),
('tubular', '624'),
('flux', '625'),
('bred', '626'),
('true', '627'),
('blue', '628'),
('distressed', '629'),
('Winter Boot', '63'),
('champion', '630'),
('fog', '631'),
('fear', '632'),
('god', '633'),
('clothing', '634'),
('hm', '635'),
('zipper', '636'),
('pants', '637'),
('gucci', '638'),
('gq', '639'),
('Winter Boots', '64'),
('camo', '640'),
('supreme', '641'),
('gazelle', '642'),
('new intros december', '643'),
('sneaker collection', '644'),
('jordan collection', '645'),
('gamma blue 11s', '646'),
('double nickel 10s', '647'),
('taxi 12s', '648'),
('metallic 5s', '649'),
('Sneaker Boots', '65'),
('oreo 5s', '650'),
('oreo 4s', '651'),
('infared 11s', '652'),
('dirt bred 13s', '653'),
('grey toe 13s', '654'),
('hologram 13s', '655'),
('jordan 4', '656'),
('jordan 5', '657'),
('jordan 6', '658'),
('jordan 7', '659'),
('Sneaker Boot', '66'),
('jordan 9', '660'),
('jordan 10', '661'),
('jordan 11', '662'),
('jordan 12', '663'),
('jordan 13', '664'),
('pharrell', '665'),
('williams', '666'),
('three', '667'),
('stripes', '668'),
('foamposite', '669'),
('Neoprene', '67'),
('kevin', '670'),
('durant', '671'),
('kd7', '672'),
('kd6', '673'),
('SNEAKERS', '674'),
('girl', '675'),
('sneakerhead', '676'),
('Nike', '677'),
('Just Do It', '678'),
('Queen', '679'),
('Leather', '68'),
('Rania', '680'),
('violence', '681'),
('stereotypes', '682'),
('women', '683'),
('honor', '684'),
('crimes', '685'),
('killing', '686'),
('Arab', '687'),
('Muslimالملكة', '688'),
('رانيا', '689'),
('Rope Laces', '69'),
('جرائم', '690'),
('الشرفالعنف', '691'),
('المرأة', '692'),
('الاسلام', '693'),
('undefined', '694'),
('Inc. (Business Operation) soccer football world cup risk everything', '695'),
('yt:cc=on', '696'),
('apple music', '697'),
('apple music ad', '698'),
('apple music android', '699'),
('Keyboard', '7'),
('Converses', '70'),
('apple music bts', '700'),
('apple music hack', '701'),
('apple music free', '702'),
('apple music review', '703'),
('apple music vs spotify', '704'),
('spotify apple music', '705'),
('how to download all apple music on iphone', '706'),
('can google home play apple music', '707'),
('how to cancel apple music subscription', '708'),
('how to follow people on apple music', '709'),
('Chucks', '71'),
('why isnt reputation on apple music', '710'),
('can you play apple music on alexa', '711'),
('kids see ghost album', '712'),
('reputation', '713'),
('Apple Music', '714'),
('Walkthrough', '715'),
('iOS 8.4', '716'),
('iphone', '717'),
('App', '718'),
('Subscription', '719'),
('Converse Chucks', '72'),
('', '720'),
('apple', '721'),
('iphone xr', '722'),
('iphone xs', '723'),
('apple iphone', '724'),
('apple iphone xs', '725'),
('apple iphone xr', '726'),
('depth control', '727'),
('iphone depth control', '728'),
('iphone xr depth control', '729'),
('canvas upper', '73'),
('iphone xs depth control', '730'),
('bokeh', '731'),
('bokeh effect', '732'),
('iphone bokeh', '733'),
('iphone xr bokeh', '734'),
('iphone xs bokeh', '735'),
('iphone camera', '736'),
('iphone xr camera', '737'),
('iphone xs camera', '738'),
('alejandro', '739'),
('rubber outsole', '74'),
('iphone xs max', '740'),
('apple iphone xs max', '741'),
('apple depth control', '742'),
('iphone xs max depth control', '743'),
('iphone xs max camera', '744'),
('tui', '745'),
('fkj', '746'),
('iPhone Ten', '747'),
('iPhone XS', '748'),
('iPhone XR', '749'),
('padded tongue', '75'),
('iPhone XS Max', '750'),
('Group FaceTime', '751'),
('Group Face Time', '752'),
('iPhone software update', '753'),
('iPhone video chat', '754'),
('iPhone group call', '755'),
('iPhone features', '756'),
('Elvis Presley', '757'),
('Elvis impersonator', '758'),
('There’s Always Me', '759'),
('chuck taylor', '76'),
('pompadour', '760'),
('King of Rock and Roll', '761'),
('Elvis Las Vegas', '762'),
('1973', '763'),
('Aloha from Hawaii', '764'),
('Elvis American Eagle', '765'),
('Taking Care of Business', '766'),
('Elvis 1968 Comeback Special', '767'),
('Elvis Rings', '768'),
('White Baby Grand', '769'),
('WWDC', '77'),
('Blue Hawaii', '770'),
('A Little Company', '771'),
('Apple Elvis Commercial', '772'),
('Apple Watch', '773'),
('Apple Watch Series 4', '774'),
('cellular', '775'),
('Rob Hillman', '776'),
('Jim Hillman', '777'),
('James Green', '778'),
('Kacie Anderson', '779'),
('Worldwide Developer Conference', '78'),
('John Zilles', '780'),
('Real Stories', '781'),
('ECG', '782'),
('electrocardiogram', '783'),
('heart rate', '784'),
('heart rate alert', '785'),
('elevated heart rate', '786'),
('BPM', '787'),
('heart rate monitor', '788'),
('notification', '789'),
('2018', '79'),
('ER', '790'),
('SOS', '791'),
('lifesaving', '792'),
('kiteboarding', '793'),
('car accident', '794'),
('911', '795'),
('blood clot', '796'),
('tachycardia', '797'),
('Hey Siri', '798'),
('Apple Watch testimonial', '799'),
('Trackpad', '8'),
('Apple Event', '80'),
('smart watch health', '800'),
('smart watch', '801'),
('iPhone Ten R', '802'),
('iPhone colors', '803'),
('colored iPhones', '804'),
('blue iPhone', '805'),
('red iPhone', '806'),
('yellow iPhone', '807'),
('coral iPhone', '808'),
('new iPhone', '809'),
('Keynote', '81'),
('colors', '810'),
('crowd', '811'),
('spectrum', '812'),
('rainbow', '813'),
('make room for color', '814'),
('Liquid Retina Display', '815'),
('iPhone screen size', '816'),
('iPhone LCD', '817'),
('colored smartphone', '818'),
('iPhone versions', '819'),
('Apple Keynote', '82'),
('come along', '820'),
('cosmo sheldrake', '821'),
('acrobatics', '822'),
('parkour', '823'),
('Apple commercial', '824'),
('iPhone ad', '825'),
('Prague', '826'),
('Red iPhone', '827'),
('Blue iPhone', '828'),
('White iPhone', '829'),
('iOS 12', '83'),
('Yellow iPhone', '830'),
('Black iPhone', '831'),
('Coral iPhone', '832'),
('Blue iPhone XR', '833'),
('Spot mini', '834'),
('BigDog', '835'),
('Handle', '836'),
('WildCat', '837'),
('Sand Flea', '838'),
('Atlas', '839'),
('iPhone', '84'),
('robot', '840'),
('robots', '841'),
('humanoid', '842'),
('boston dynamics', '843'),
('iPad', '85'),
('Mac App Store', '86'),
('AR', '87'),
('augmented reality', '88'),
('macOS', '89'),
('Force Touch', '9'),
('macOS Mojave', '90'),
('dark mode', '91'),
('watchOS', '92'),
('watchOS 5', '93'),
('Walkie-Talkie', '94'),
('Activity', '95'),
('Apple TV', '96'),
('tvOS', '97'),
('Dolby Atmos', '98'),
('3D sound', '99');

-- --------------------------------------------------------

--
-- Table structure for table `templates`
--

CREATE TABLE `templates` (
  `json` json DEFAULT NULL,
  `page` int(64) DEFAULT NULL,
  `uid` int(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `avi` text COLLATE utf8_unicode_ci,
  `bio` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `birthdate` date DEFAULT NULL,
  `cover` text COLLATE utf8_unicode_ci,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `email` text COLLATE utf8_unicode_ci,
  `fullname` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gender` int(1) DEFAULT NULL,
  `password` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `username` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `uid` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`avi`, `bio`, `birthdate`, `cover`, `created`, `email`, `fullname`, `gender`, `password`, `username`, `uid`) VALUES
('https://cdn.mallzones.com/file/mzncdn/users/avi/42.jpg', NULL, '1990-01-11', NULL, '0000-00-00 00:00:00', NULL, NULL, 1, NULL, 'mixmarley', 'a6R6oPi8e0hkgdNN6ytB8eSltq12'),
('https://cdn.mallzones.com/file/mzncdn/users/avi/43.jpg', 'a certain set of skills 🌎 Web 🎹 Music ✏Art BANON™ 2017', '1990-04-28', 'https://cdn.mallzones.com/file/mzncdn/users/cvr/43.jpg', '0000-00-00 00:00:00', NULL, NULL, 1, NULL, 'thebanon', 'w4IYt41E4nQ2gJVGIlDtyd7p3J73'),
('https://cdn.mallzones.com/file/mzncdn/users/avi/258.jpg', NULL, '1995-01-14', 'https://cdn.mallzones.com/file/mzncdn/users/cvr/258.jpg', '0000-00-00 00:00:00', NULL, NULL, 0, NULL, 'dukejohnson', 'vJneDcgvNpfExnOh2wRLQ6Kr5hG2'),
('https://cdn.mallzones.com/file/mzncdn/users/avi/265.jpg', NULL, NULL, NULL, '0000-00-00 00:00:00', NULL, NULL, 0, NULL, 'therealkiddlee', 'cf5d0a77e8818cfdf2bc81c6747ce013'),
('https://cdn.mallzones.com/file/mzncdn/users/avi/274.jpg', NULL, NULL, NULL, '0000-00-00 00:00:00', NULL, NULL, 0, NULL, 'fatboy_sse', '08d3fc91a794e9db865d709ffcb206bb'),
('https://cdn.mallzones.com/file/mzncdn/users/avi/275.jpg', NULL, NULL, NULL, '0000-00-00 00:00:00', NULL, NULL, 0, NULL, 'darius_dk', 'e9dbd493399e8d73e92cc52321a02886'),
(NULL, NULL, NULL, 'https://cdn.mallzones.com/file/mzncdn/users/cvr/279.jpg', '0000-00-00 00:00:00', NULL, NULL, 0, NULL, 'johndoe', 'e23cdf31111fb87a2804b3e47bd1b8e8'),
('https://cdn.mallzones.com/file/mzncdn/users/avi/280.jpg', NULL, NULL, 'https://cdn.mallzones.com/file/mzncdn/users/cvr/280.jpg', '0000-00-00 00:00:00', NULL, NULL, 0, NULL, 'averyclayton', 'a88d13c2db66e4e67de32dc4564eeb56'),
('https://cdn.mallzones.com/file/mzncdn/users/avi/281.jpg', NULL, NULL, 'https://cdn.mallzones.com/file/mzncdn/users/cvr/281.jpg', '0000-00-00 00:00:00', NULL, NULL, 0, NULL, 'kimkardashian', '2521af6f0404fcf2273fcbfddef4fef7'),
(NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', NULL, NULL, 0, NULL, 'alphaindustries', '3719ac2e77cf63e63cb2b835958fdeb2'),
('https://cdn.mallzones.com/file/mzncdn/users/avi/284.jpg', NULL, NULL, NULL, '0000-00-00 00:00:00', NULL, NULL, 0, NULL, 'bigsean', 'c9148938aed17ad5e2dd0524b41847f6'),
('https://cdn.mallzones.com/file/mzncdn/users/avi/285.jpg', NULL, NULL, NULL, '0000-00-00 00:00:00', NULL, NULL, 0, NULL, 'rihanna', 'e8a898c56b026e5fbdf6986b8929180c'),
('https://cdn.mallzones.com/file/mzncdn/users/avi/286.jpg', NULL, NULL, NULL, '0000-00-00 00:00:00', NULL, NULL, 1, NULL, 'portiagood', '78bf2c7dd9c1d627fdf10320b7ff35c2'),
('https://cdn.mallzones.com/file/mzncdn/users/avi/290.jpg', 'The mind is the gate to infinity', NULL, 'https://cdn.mallzones.com/file/mzncdn/users/cvr/290.jpg', '0000-00-00 00:00:00', NULL, NULL, 0, NULL, 'hoodavillefab', 'ad2d0acc10e88b76ea9a88e13f07d912'),
('https://cdn.mallzones.com/file/mzncdn/users/avi/291.jpg', NULL, NULL, 'https://cdn.mallzones.com/file/mzncdn/users/cvr/291.jpg', '0000-00-00 00:00:00', NULL, NULL, 0, NULL, 'georgeclooney', '42da773d47ca1377071bef16f5c89e4f'),
('https://cdn.mallzones.com/file/mzncdn/users/avi/292.jpg', NULL, NULL, 'https://cdn.mallzones.com/file/mzncdn/users/cvr/292.jpg', '0000-00-00 00:00:00', NULL, NULL, 0, NULL, 'torylanez', '4bdbc11a38aeac5bd2531c9ec15d6c43'),
('https://cdn.mallzones.com/file/mzncdn/users/avi/293.jpg', NULL, NULL, 'https://cdn.mallzones.com/file/mzncdn/users/cvr/293.jpg', '0000-00-00 00:00:00', NULL, NULL, 0, NULL, 'nickiminaj', '8de710a248ea177ac192235c14de863d'),
('https://cdn.mallzones.com/file/mzncdn/users/avi/294.jpg', NULL, NULL, 'https://cdn.mallzones.com/file/mzncdn/users/cvr/294.jpg', '0000-00-00 00:00:00', NULL, NULL, 0, NULL, 'alexamiller', '9d38b2c32a4f8338cfc231f8940e7e23'),
('https://cdn.mallzones.com/file/mzncdn/users/avi/295.jpg', NULL, NULL, 'https://cdn.mallzones.com/file/mzncdn/users/cvr/295.jpg', '0000-00-00 00:00:00', NULL, NULL, 0, NULL, 'ambybines', '270fdacdce3a758c292b506be3f38962'),
('https://cdn.mallzones.com/file/mzncdn/users/avi/296.jpg', NULL, NULL, NULL, '0000-00-00 00:00:00', NULL, NULL, 0, NULL, 'karenjoy', 'd181b29d32775010e761ef4ec750c81a'),
('https://cdn.mallzones.com/file/mzncdn/users/avi/297.jpg', NULL, NULL, NULL, '0000-00-00 00:00:00', NULL, NULL, 0, NULL, 'hireshahmed', 'c18380355a30d253db7fe0f43b2feba9'),
('https://cdn.mallzones.com/file/mzncdn/users/avi/298.jpg', NULL, NULL, NULL, '0000-00-00 00:00:00', NULL, NULL, 0, NULL, 'davidhaller', 'd893f82fd0cac14b4d33d3d15bf88164'),
(NULL, NULL, NULL, NULL, '2019-10-08 04:25:09', 'timmy.banon@gmail.com', NULL, NULL, 'chibimon', NULL, 'W64Mltl0LSPqENXdXrWEC3NnnO52');

-- --------------------------------------------------------

--
-- Table structure for table `video`
--

CREATE TABLE `video` (
  `app` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  `created` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `description` text COLLATE utf8_unicode_ci,
  `duration` int(11) DEFAULT NULL,
  `image` text COLLATE utf8_unicode_ci,
  `page` int(11) DEFAULT NULL,
  `ref` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `source` text COLLATE utf8_unicode_ci,
  `title` text COLLATE utf8_unicode_ci,
  `updated` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `user` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `uid` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `video`
--

INSERT INTO `video` (`app`, `category`, `created`, `description`, `duration`, `image`, `page`, `ref`, `source`, `title`, `updated`, `user`, `uid`) VALUES
(4, 28, '2018-11-20 02:25:10', NULL, NULL, NULL, 66, 'T7ZqdzO4cm4', 'youtube', 'Apple MacBook Pro 15\" (Touch Bar): Unboxing & Review', '2019-11-20 01:43:47', '43', '3bb723ff219c883b4b71ed7633c03d4b'),
(41, 26, '2018-11-20 02:25:10', NULL, NULL, NULL, 233, 'tlRFOBPFcPA', 'youtube', 'Converse All Star White Unisex Low-Top', '2019-11-20 01:44:16', '43', '8e81efe73fff1745ae13d1c1022ef5a1'),
(41, 26, '2018-11-20 02:25:10', NULL, NULL, NULL, 233, 'idhYuCGmIjE', 'youtube', 'Review & On-Feet: Converse Chuck Taylor All Star Nubuck Boot \"Mason\"', '2019-11-20 01:44:16', '43', '389e73f340987c3cce1d26021778803d'),
(41, 17, '2018-11-20 02:25:10', NULL, NULL, NULL, 233, 'VVFqIALdeng', 'youtube', 'Men\'s Converse  Chuck Taylor All Star High Street', '2019-11-20 01:44:16', '43', '90b9d5a0b3ee8c0635cd337ba741748a'),
(4, 28, '2018-11-20 02:25:10', NULL, NULL, NULL, NULL, 'UThGcWBIMpU', 'youtube', 'WWDC 2018 Keynote — Apple', '2019-11-20 01:44:16', '43', '6d2dbbcc12d70a77ebc11d6ac3a95c03'),
(4, 28, '2018-11-20 02:25:10', NULL, NULL, NULL, 66, 'V7pce4nrR4c', 'youtube', 'Apple MacBook Pro 13\" (2018): Unboxing & Review', '2019-11-20 01:44:16', '43', 'ffd3da2516c7c2945312cfec04a943b7'),
(41, 26, '2018-11-20 02:25:10', NULL, NULL, NULL, 233, '2i-SMQANO5Q', 'youtube', 'Streetwear Converse Chuck Taylor High (white) || Lookbook 2017', '2019-11-20 01:44:16', '43', 'a6dee2e09bdc67a210fe3cc1395e79a6'),
(100, 22, '2018-11-20 02:25:10', NULL, NULL, NULL, 229, 'IvCS7O_cs5A', 'youtube', 'True religion review! (Pick up from true religion store)', '2019-11-20 01:44:16', '43', '219d4b155d68552475b37705af84f4f1'),
(100, 22, '2018-11-20 02:25:10', NULL, NULL, NULL, 229, 'NruP7UcbHKM', 'youtube', 'Last stitch true religion review #2', '2019-11-20 01:44:16', '43', 'c3965a30a72840872142f3c7fc41cbb3'),
(102, 26, '2018-11-20 02:25:10', NULL, NULL, NULL, 133, 'LNg-X-whGwo', 'youtube', '’47 Relaxed & Curved', '2019-11-20 01:44:16', '43', '293547bee14b28c34c8531a868821806'),
(100, 24, '2018-11-20 02:25:10', NULL, NULL, NULL, 229, 'lmEiY-y-ASg', 'youtube', 'True religion and Ralph Lauren Pick Ups/Review', '2019-11-20 01:44:16', '43', '2c8eeee64fc8313f7b6649f8c35db121'),
(18, 17, '2018-11-20 02:25:10', NULL, NULL, NULL, 78, 'bvLJZkWwaN8', 'youtube', 'Top 10 Best adidas Boots for Kids! Top Cleats for Children', '2019-11-20 01:44:16', '43', '852f54a11877fb72dffa0e2106e3c1ba'),
(18, 1, '2018-11-20 02:25:10', NULL, NULL, NULL, 78, 'BxIGs8OsDmY', 'youtube', 'ADIDAS SHOE HAUL!', '2019-11-20 01:44:16', '43', '21d5e2722cdfa0a6b4734921ee417c69'),
(18, 24, '2018-11-20 02:25:10', NULL, NULL, NULL, 78, 'SyB6TH9xWmQ', 'youtube', 'Little Kids Review The Adidas Triple Black Ultra Boost!', '2019-11-20 01:44:16', '43', '0db6ec5516f4d03133edabea4b6434bd'),
(102, 17, '2018-11-20 02:25:10', NULL, NULL, NULL, 134, 'YVobLVb_PVc', 'youtube', '’47: Our Story', '2019-11-20 01:44:16', '43', '2e522e9b14524648680ecc2aebba26a2'),
(102, 24, '2018-11-20 02:25:10', NULL, NULL, NULL, 133, 'QEQn1BOk6Zo', 'youtube', '\'47 Brand / LIDS \"Nice Hat\" Commercial', '2019-11-20 01:44:16', '43', 'f46f886b1ab71ebb8acc65e01e3517e2'),
(102, 1, '2018-11-20 02:25:10', NULL, NULL, NULL, 133, 'SWBTUbaDy8A', 'youtube', 'Big Unboxing From 47 Brand! Snapbacks & Clothing!', '2019-11-20 01:44:16', '43', 'a965f5d1fbabd8fe191f1ee5a89be186'),
(4, 28, '2018-11-20 02:25:10', NULL, NULL, NULL, 66, 'R0AziGVhbmQ', 'youtube', 'Apple MacBook 12-inch (2016): Unboxing & Review (All Colors)', '2019-11-20 01:44:16', '43', 'a457e8f67fd596c5d8989ec4953e7f08'),
(18, 24, '2018-11-20 02:25:10', NULL, NULL, NULL, 77, 'gkIKphi2_P4', 'youtube', 'Adidas Running Commercial', '2019-11-20 01:44:16', '43', '63d3f30842b09c6d1e94bfe94d0339dd'),
(18, 26, '2018-11-20 02:25:10', NULL, NULL, NULL, 78, 'F1kd63fLt9k', 'youtube', 'adidas Originals: Your future is not mine', '2019-11-20 01:44:16', '43', 'ba48b458ebbe22f245286b3cddd5b5ff'),
(18, 26, '2018-11-20 02:25:10', NULL, NULL, NULL, 78, 'Tq2fwaAA1sk', 'youtube', 'adidas Originals Kids Superstar (Toddler) SKU:8463157', '2019-11-20 01:44:16', '43', '8c4ca3b6dfd9cf4bc4065d4b07099e4d'),
(18, 17, '2018-11-20 02:25:10', NULL, NULL, NULL, 76, 'kU7Wo9UrJMg', 'youtube', 'adidas Outdoor Men\'s Terrex Swift R Trail Shoe', '2019-11-20 01:44:16', '43', 'f1360cc17970f700c8e5378ad3c73789'),
(83, 26, '2018-11-20 02:25:10', NULL, NULL, NULL, 196, 'aFaLjvDSPXI', 'youtube', 'My Jordan Sneaker Collection + Try On | 2017 | On Feet', '2019-11-20 01:44:16', '43', '9b1004eac48572c86522a7df453ac72b'),
(83, 26, '2018-11-20 02:25:10', NULL, NULL, NULL, 196, '3lZfkQXWmg0', 'youtube', 'Sneaker Pick Ups | Jordan\'s NMD Air Max Zero + More | MAY 2016', '2019-11-20 01:44:16', '43', 'e83bce6b90a1106b928d89b4447a7767'),
(18, 26, '2018-11-20 02:25:10', NULL, NULL, NULL, 76, 'ENMYZEreRtU', 'youtube', 'How To Style Adidas Superstars | Mens Fashion 2018 Spring Lookbook | Sneaker Comparison', '2019-11-20 01:44:16', '43', '24974109eff3bedcad76a6de67ac4b18'),
(18, 26, '2018-11-20 02:25:10', NULL, NULL, NULL, 76, 'VV8qpn-scwc', 'youtube', 'ADIDAS LOOKBOOK - HOW I WEAR MY ADIDAS - YEEZY 750 & 350 - NMD - ULTRA BOOST - RAF STAN SMITH', '2019-11-20 01:44:16', '43', '2a0471ebb88cf2c5722d4f41bca9eaec'),
(83, 26, '2018-11-20 02:25:10', NULL, NULL, NULL, 196, 'BvPLrrAQpr4', 'youtube', 'Sneaker Collection 2015|DollFaceBeautyx', '2019-11-20 01:44:16', '43', 'b6a141bbfd0768799614b6ec6366b7ae'),
(83, 26, '2018-11-20 02:25:10', NULL, NULL, NULL, 196, 'Ho9uMH9KPRg', 'youtube', 'What Size Should I Get? Jordan, Nike, etc.', '2019-11-20 01:44:16', '43', 'e5debb3f2386d1b02ebcdb67d2dd815a'),
(83, 22, '2018-11-20 02:25:10', NULL, NULL, NULL, 196, '4zSA8JfCsGk', 'youtube', 'Jordan Sneaker Collection 2016 - looksofLEX', '2019-11-20 01:44:16', '43', '57e4e1fccaca01ebb2bc30f725ee93e2'),
(83, 22, '2018-11-20 02:25:10', NULL, NULL, NULL, 196, 'jyCB-ULChV4', 'youtube', 'Jordan\'s Queen Rania on Arab women', '2019-11-20 01:44:16', '43', '43312316b6c6f75f03620dad75ed91b9'),
(3, 17, '2018-11-20 02:25:10', NULL, NULL, NULL, 72, 'pCVF0CSRTYA', 'youtube', 'Winner Stays On -- Nike Risk Everything', '2019-11-20 01:44:16', '43', 'b1e5dcca14d85e19aa787c69ded78c84'),
(3, 17, '2018-11-20 02:25:10', NULL, NULL, NULL, 72, 'OKeh66pW3iI', 'youtube', 'Nike | Sport Changes Everything: Frank Session', '2019-11-20 01:44:16', '43', '7ef909bbf3ef1b3ca50e372088468fa5'),
(4, 28, '2018-11-20 02:25:10', NULL, NULL, NULL, 239, '2DAVqEDXo3U', 'youtube', 'Why YOU NEED Apple Music right now!', '2019-11-20 01:44:16', NULL, 'd565f23ba38abc932c937a504d76562b'),
(4, NULL, '2018-11-20 02:25:10', NULL, NULL, NULL, 239, 'bRC1XdCz6TE', 'youtube', 'Five simple ways to make Apple Music better', '2019-11-20 01:44:16', NULL, 'd72f1a4dfd7b4c2744b3363f18ddca6d'),
(4, NULL, '2018-11-20 02:25:10', NULL, NULL, NULL, 239, 'uuvdAEjcj90', 'youtube', 'Apple Music first hands on', '2019-11-20 01:44:16', NULL, '791cf566d6a8c98c4fd5bef7876c375f'),
(4, NULL, '2018-11-20 02:25:10', NULL, NULL, NULL, 239, 'NLgjodiAtbQ', 'youtube', 'Apple Music: Walkthrough', '2019-11-20 01:44:16', NULL, '11933c47c3b83013333059105355850e'),
(4, 28, '2019-03-09 18:30:06', NULL, NULL, NULL, NULL, 'xXqWckzS1aA', 'youtube', 'Depth Control — Alejandro — Apple', '2019-11-20 01:44:16', NULL, 'cefbbe31caa9cca57c8c665dcb46f280'),
(4, 28, '2019-03-09 18:32:54', NULL, NULL, NULL, NULL, '4UEwCHlUZvI', 'youtube', 'Depth Control — The Backdrop — Apple', '2019-11-20 01:44:16', NULL, 'b4958f830da66e139679a16c5edebaa9'),
(4, 28, '2019-03-09 18:36:12', NULL, NULL, NULL, NULL, '0tqB4jnCxqA', 'youtube', 'Apple Watch — Real Stories — Apple', '2019-11-20 01:44:16', NULL, 'f60d4dbb1faf35bb49925b941afb3192'),
(4, 28, '2019-03-09 18:44:09', NULL, NULL, NULL, NULL, 'd8LJXcQhD0k', 'youtube', 'iPhone XR — Color Flood — Apple', '2019-11-20 01:44:16', '43', '8dca48585963da59303645e557eb7581');

-- --------------------------------------------------------

--
-- Table structure for table `zones`
--

CREATE TABLE `zones` (
  `color` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `emoji` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `uid` varchar(64) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `zones`
--

INSERT INTO `zones` (`color`, `emoji`, `name`, `uid`) VALUES
('#FC9D9A', '&#x1F455', 'fashion', '1'),
('#0e3315', '&#x1F45E', 'shoes', '10'),
('#666666', '&#x1F48E', 'jewelry', '11'),
('#0638a8', '&#x1f697', 'auto', '12'),
('#b3498a', '&#x1F4BF', 'media', '13'),
('#f08432', '&#x1f48a', 'health', '14'),
('#4c8ed1', '&#x1f436', 'pets', '15'),
('#f8dd38', '&#x1f4f1', 'wireless', '2'),
('#776357', '&#x1F454', 'designer', '3'),
('#9D65A4', '&#x1F45F', 'athletic', '4'),
('#922762', '&#x1F4BB', 'tech', '5'),
('#e5e2a2', '&#x1F466', 'kids', '7'),
('#31d821', '&#x1F3E1', 'home', '8'),
('#667a3b', '&#x1F371', 'grocery', '9');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity`
--
ALTER TABLE `activity`
  ADD PRIMARY KEY (`uid`);

--
-- Indexes for table `ads`
--
ALTER TABLE `ads`
  ADD UNIQUE KEY `uid` (`uid`);

--
-- Indexes for table `alerts`
--
ALTER TABLE `alerts`
  ADD PRIMARY KEY (`uid`);

--
-- Indexes for table `blocks`
--
ALTER TABLE `blocks`
  ADD PRIMARY KEY (`uid`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD UNIQUE KEY `uid` (`uid`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD UNIQUE KEY `uid` (`uid`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`uid`);

--
-- Indexes for table `catalog`
--
ALTER TABLE `catalog`
  ADD PRIMARY KEY (`uid`),
  ADD UNIQUE KEY `title` (`title`(128));

--
-- Indexes for table `merch`
--
ALTER TABLE `merch`
  ADD UNIQUE KEY `uid` (`uid`);

--
-- Indexes for table `offers`
--
ALTER TABLE `offers`
  ADD UNIQUE KEY `uid` (`uid`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD UNIQUE KEY `uid` (`uid`);

--
-- Indexes for table `photo`
--
ALTER TABLE `photo`
  ADD UNIQUE KEY `uid` (`uid`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD UNIQUE KEY `uid` (`uid`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD UNIQUE KEY `uid` (`uid`);

--
-- Indexes for table `templates`
--
ALTER TABLE `templates`
  ADD PRIMARY KEY (`uid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD UNIQUE KEY `uid` (`uid`);

--
-- Indexes for table `video`
--
ALTER TABLE `video`
  ADD UNIQUE KEY `uid` (`uid`);

--
-- Indexes for table `zones`
--
ALTER TABLE `zones`
  ADD UNIQUE KEY `uid` (`uid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity`
--
ALTER TABLE `activity`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `alerts`
--
ALTER TABLE `alerts`
  MODIFY `uid` int(64) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blocks`
--
ALTER TABLE `blocks`
  MODIFY `uid` int(64) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `uid` int(64) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `catalog`
--
ALTER TABLE `catalog`
  MODIFY `uid` int(64) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7949;

--
-- AUTO_INCREMENT for table `merch`
--
ALTER TABLE `merch`
  MODIFY `uid` int(64) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7951;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `uid` int(64) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=919;

--
-- AUTO_INCREMENT for table `templates`
--
ALTER TABLE `templates`
  MODIFY `uid` int(64) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

