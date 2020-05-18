-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 17, 2020 at 06:21 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecomm`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `product_id`, `quantity`) VALUES
(16, 9, 3, 1),
(28, 13, 13, 1),
(29, 13, 19, 2),
(39, 47, 11, 2);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `cat_slug` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `cat_slug`) VALUES
(1, 'Nokia', 'Nokia'),
(2, 'Samsung', 'Samsunf'),
(3, 'Apple', 'Apple'),
(4, 'One plus', 'Onne plus');

-- --------------------------------------------------------

--
-- Table structure for table `details`
--

CREATE TABLE `details` (
  `id` int(11) NOT NULL,
  `sales_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `details`
--

INSERT INTO `details` (`id`, `sales_id`, `product_id`, `quantity`) VALUES
(14, 9, 11, 2),
(15, 9, 13, 5),
(16, 9, 3, 2),
(17, 9, 1, 3),
(18, 10, 13, 3),
(19, 10, 2, 4),
(20, 10, 19, 5);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `slug` varchar(200) NOT NULL,
  `price` double NOT NULL,
  `photo` varchar(200) NOT NULL,
  `date_view` date NOT NULL,
  `counter` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `name`, `description`, `slug`, `price`, `photo`, `date_view`, `counter`) VALUES
(1, 1, ' Nokia 4.2 (Black, 3GB RAM, 32GB Storage)', '<ul>\r\n	<li>13MP+2MP primary camera with AF/F2.2/1.12&micro;m + FF/F2.2/1.75&micro;m and 2 phase detection and flash | 8MP front facing camera with FF/F2.0/1.12&micro;m</li>\r\n	<li>14.5034 centimeters (5.71-inch) with HD+ 19:9 pixels resolution and 19:9 aspect ratio</li>\r\n	<li>Memory, Storage &amp; SIM: 3GB RAM | 32GB internal memory expandable up to 400GB | Dual SIM (nano+nano) dual-standby (4G+4G)</li>\r\n	<li>Android Pie v9 operating system with Qualcomm Snapdragon 439 mobile platform octa core processor</li>\r\n	<li>3000 lithium-ion battery</li>\r\n	<li>1 year manufacturer warranty for device and 6 months manufacturer warranty for in-box accessories including batteries from the date of purchase</li>\r\n	<li>Box also includes: Nokia 4.2Charger, Charging Data Cable, Headset, Quick Guide and SIM Door Key</li>\r\n</ul>\r\n', 'nokia-4-2-black-3gb-ram-32gb-storage', 106, 'nokia-4-2-black-3gb-ram-32gb-storage_1589576917.jpg', '2020-05-17', 17),
(2, 1, 'Nokia 5.3 (6 G.B Ram)', '<ul>\r\n	<li>Incredible quad camera with advanced AI imaging.</li>\r\n	<li>Watch all your videos on the epic 6.55&rdquo; display.</li>\r\n	<li>\r\n	<p>Made for gaming with the powerful Qualcomm&reg; Snapdragon&trade; 665 processor.</p>\r\n	</li>\r\n	<li>\r\n	<p>Stay charged for longer with 2-day battery life1.</p>\r\n	</li>\r\n	<li>\r\n	<p>6 GB Ram</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Cable type</strong>&nbsp;USB Type-C</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>SIM cards</strong>&nbsp;Dual SIM and Single SIM models available</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>SIM card type</strong>&nbsp;Nano SIM</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Sensors</strong>&nbsp;Ambient light sensor, Proximity sensor, Accelerometer (G-sensor), Fingerprint sensor</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Keys</strong>&nbsp;The Google Assistant Button3</p>\r\n	</li>\r\n</ul>\r\n', 'nokia-5-3-6-g-b-ram', 799, 'nokia-5-3-6-g-b-ram_1589623802.jpg', '2020-05-16', 3),
(3, 2, 'Samsung Note 8', '<p>See the bigger picture and communicate in a whole new way. With the Galaxy Note8 in your hand, bigger things are just waiting to happen.&nbsp;</p>\r\n\r\n<h3>The Infinity Display that&#39;s larger than life.&nbsp;</h3>\r\n\r\n<p>More screen means more space to do great things. Go big with the Galaxy Note8&#39;s 6.3&quot; screen. It&#39;s the largest ever screen on a Note device and it still fits easily in your hand.</p>\r\n\r\n<p>*Infinity Display: a near bezel-less, full-frontal glass, edge-to-edge screen.</p>\r\n\r\n<p>*Screen measured diagonally as a full rectangle without accounting for the rounded corners.</p>\r\n\r\n<p>Use the S Pen to express yourself in ways that make a difference. Draw your own emojis to show how you feel or write a message on a photo and send it as a handwritten note. Do things that matter with the S Pen.</p>\r\n\r\n<p>*Image simulated for illustration purpose only.</p>\r\n', 'samsung-note-8', 829, 'samsung-note-8.jpg', '2020-05-17', 11),
(11, 2, 'Samsung Galaxy M31 (Space Black, 6GB RAM, 128GB Storage)', '<ul>\r\n	<li>64MP + 8MP + 5MP + 5MP rear camera | 32MP front facing camera</li>\r\n	<li>16.21 centimeters (6.4-inch) FHD+ capacitive touchscreen with 2340 x 1080 pixels resolution, 404 ppi pixel density and 16M color support</li>\r\n	<li>Memory, Storage &amp; SIM: 6GB RAM | 128GB storage expandable up to 512GB | Dual SIM with dual standby (4G+4G)</li>\r\n	<li>Android v10.0 operating system with 2.3GHz + 1.7GHz Exynos 9611 Octa core processor</li>\r\n	<li>6000mAH lithium-ion battery</li>\r\n	<li>1 year manufacturer warranty for device and 6 months manufacturer warranty for in-box accessories including batteries from the date of purchase</li>\r\n	<li>Box also includes: Travel Adapter, USB Cable, Ejection Pin, User Manual</li>\r\n	<li>Fast face unlock and fingerprint sensor | Dual SIM (nano+nano) with dual standby and dual VoLTE , Dedicated Sim slot;Widevine L1 certification for HD streaming</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n', 'samsung-galaxy-m31-space-black-6gb-ram-128gb-storage', 230, 'samsung-galaxy-m31-space-black-6gb-ram-128gb-storage_1589622487.jpg', '2020-05-17', 8),
(13, 2, 'Samsung Galaxy A51 (Black, 6GB RAM, 128GB Storage) ', '<ul>\r\n	<li>48MP (F1.8)+12MP (F2.2)+5MP(F2.2)+5MP(F2.4) rear camera | 32MP front facing camera</li>\r\n	<li>16.40 centimeters (6.5-inch) super Amoled infinity-O display and FHD+ capacitive multi-touch touchscreen with 2400 x 1080 pixels resolution | 16M color support</li>\r\n	<li>Memory, Storage &amp; SIM: 6GB RAM | 128GB internal memory expandable up to 512GB | Dual SIM dual-standby (4G+4G)</li>\r\n	<li>Android v10.0 operating system with 2.3GHz+1.7GHz Exynos 9611 octa core processor</li>\r\n	<li>4000mAH lithium-ion battery</li>\r\n	<li>1 year manufacturer warranty for device and 6 months manufacturer warranty for in-box accessories including batteries from the date of purchase</li>\r\n	<li>Box also Includes: Earphones, travel adapter, USB cable, ejection pin and user manual</li>\r\n</ul>\r\n', 'samsung-galaxy-a51-black-6gb-ram-128gb-storage', 340, 'samsung-galaxy-a51-black-6gb-ram-128gb-storage_1589623565.jpg', '2020-05-17', 8),
(19, 3, 'iPhone 11 Pro', '<p>A transformative triple?camera system that adds tons of capability without complexity. An unprecedented leap in battery life. And a mind?blowing chip that doubles down on machine learning and pushes the boundaries of what a smartphone can do. Welcome to the first iPhone powerful enough to be called Pro.</p>\r\n\r\n<ul>\r\n	<li>Triple-camera system (Ultra Wide, Wide, Telephoto)</li>\r\n	<li>Up to 20 hours of video playback<a href=\"https://www.apple.com/in/iphone/#footnote-1\">1</a></li>\r\n	<li>Water resistant to a depth of 4 metres for up to 30 minutes<a href=\"https://www.apple.com/in/iphone/#footnote-2\">2</a></li>\r\n	<li>5.8&rdquo; or 6.5&rdquo; Super Retina XDR display<a href=\"https://www.apple.com/in/iphone/#footnote-3\">3</a></li>\r\n	<li>\r\n	<p>A13 Bionicfor real-time processing</p>\r\n	</li>\r\n	<li>\r\n	<p>Audio zoomto match audio with video&nbsp;framing</p>\r\n	</li>\r\n	<li>\r\n	<p>4x&nbsp;more scenewith Ultra Wide</p>\r\n	</li>\r\n</ul>\r\n', 'iphone-11-pro', 1400, 'iphone-11-pro_1589623273.png', '2020-05-17', 18),
(29, 2, 'Samsung Galaxy S9+ [128 GB]', '<h2>The revolutionary camera that adapts like the human eye.&nbsp;</h2>\r\n\r\n<h3>Capture stunning pictures in bright daylight and super low light.</h3>\r\n\r\n<p>Our category-defining Dual Aperture lens adapts like the human eye. It&#39;s able to automatically switch between various lighting conditions with ease&mdash;making your photos look great whether it&#39;s bright or dark, day or night.</p>\r\n\r\n<p>*Dual Aperture supports F1.5 and F2.4 modes. Installed on the rear camera (Galaxy S9)/rear wide camera (Galaxy S9+).</p>\r\n\r\n<p><img alt=\"\" src=\"https://www.samsung.com/global/galaxy/galaxy-s9/images/galaxy-s9_slow_gif_visual_l.jpg\" style=\"height:464px; width:942px\" />Add music. Make GIFs. Get likes</p>\r\n\r\n<p>Super Slow-mo lets you see the things you could have missed in the blink of an eye. Set the video to music or turn it into a looping GIF, and share it with a tap. Then sit back and watch the reactions roll in.</p>\r\n', 'samsung-galaxy-s9-128-gb', 889.99, 'samsung-galaxy-s9-128-gb.jpg', '2020-05-15', 4),
(30, 3, 'Apple iPhone 11 (Black, 64 GB)', '<p>General</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>In The Box</td>\r\n			<td>\r\n			<ul>\r\n				<li>Handset, EarPods with Lightning Connector, Lightning to USB Cable, USB Power Adapter, Documentation</li>\r\n			</ul>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Model Number</td>\r\n			<td>\r\n			<ul>\r\n				<li>MWLY2HN/A</li>\r\n			</ul>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Model Name</td>\r\n			<td>\r\n			<ul>\r\n				<li>iPhone 11</li>\r\n			</ul>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Color</td>\r\n			<td>\r\n			<ul>\r\n				<li>Green</li>\r\n			</ul>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Browse Type</td>\r\n			<td>\r\n			<ul>\r\n				<li>Smartphones</li>\r\n			</ul>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>SIM Type</td>\r\n			<td>\r\n			<ul>\r\n				<li>Dual Sim</li>\r\n			</ul>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Hybrid Sim Slot</td>\r\n			<td>\r\n			<ul>\r\n				<li>No</li>\r\n			</ul>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Touchscreen</td>\r\n			<td>\r\n			<ul>\r\n				<li>Yes</li>\r\n			</ul>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>OTG Compatible</td>\r\n			<td>\r\n			<ul>\r\n				<li>No</li>\r\n			</ul>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>SAR Value</td>\r\n			<td>\r\n			<ul>\r\n				<li>1.6 W/kg (over 1 g) SAR Limit, Head: 1.09, Body: 1.18</li>\r\n			</ul>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>Display Features</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Display Size</td>\r\n			<td>\r\n			<ul>\r\n				<li>15.49 cm (6.1 inch)</li>\r\n			</ul>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Resolution</td>\r\n			<td>\r\n			<ul>\r\n				<li>1792 x 828 Pixels</li>\r\n			</ul>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Resolution Type</td>\r\n			<td>\r\n			<ul>\r\n				<li>Liquid Retina HD Display</li>\r\n			</ul>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Other Display Features</td>\r\n			<td>\r\n			<ul>\r\n				<li>1400:1 Contrast Ratio (Typical), True Tone Display, Wide Colour Display (P3), Haptic Touch, 625 nits Max Brightness (Typical), Fingerprint Resistant Oleophobic Coating, Support for Display of Multiple Languages and Characters Simultaneously</li>\r\n			</ul>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>Os &amp; Processor Features</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Operating System</td>\r\n			<td>\r\n			<ul>\r\n				<li>iOS 13</li>\r\n			</ul>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Processor Type</td>\r\n			<td>\r\n			<ul>\r\n				<li>A13 Bionic Chip</li>\r\n			</ul>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>Memory &amp; Storage Features</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Internal Storage</td>\r\n			<td>\r\n			<ul>\r\n				<li>64 GB</li>\r\n			</ul>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>Camera Features</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Primary Camera Available</td>\r\n			<td>\r\n			<ul>\r\n				<li>Yes</li>\r\n			</ul>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Primary Camera</td>\r\n			<td>\r\n			<ul>\r\n				<li>12MP + 12MP</li>\r\n			</ul>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Primary Camera Features</td>\r\n			<td>\r\n			<ul>\r\n				<li>Dual 12MP Ultra Wide and Wide Cameras, Ultra Wide: f/2.4 Aperture and 120Degree Field of View, Wide: f/1.8 Aperture, Portrait Mode with Advanced Bokeh and Depth Control, Portrait Lighting with Six Effects (Natural, Studio, Contour, Stage, Stage Mono, High-key Mono), Optical Image Stabilisation (Wide), Five Element Lens (Ultra Wide), Six Element Lens (Wide), Brighter True Tone Flash with Slow Sync, Panorama (Up to 64MP), 100% Focus Pixels (Wide), Night Mode, Auto Adjustments, Next-generation Smart HDR for Photos, Wide Colour Capture for Photos and Live Photos, Advanced Red Eye Correction, Auto Image Stabilisation, Burst Mode, Photo Geotagging, Image Formats Captured: HEIF and JPEG</li>\r\n			</ul>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Optical Zoom</td>\r\n			<td>\r\n			<ul>\r\n				<li>Yes</li>\r\n			</ul>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Secondary Camera Available</td>\r\n			<td>\r\n			<ul>\r\n				<li>Yes</li>\r\n			</ul>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Secondary Camera</td>\r\n			<td>\r\n			<ul>\r\n				<li>12MP Front Camera</li>\r\n			</ul>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Secondary Camera Features</td>\r\n			<td>\r\n			<ul>\r\n				<li>TrueDepth Camera - 12MP Camera, f/2.2 Aperture, Portrait Mode with Advanced Bokeh and Depth Control, Portrait Lighting with Six Effects (Natural, Studio, Contour, Stage, Stage Mono, High Key Mono), Animoji and Memoji, 4K Video Recording at 24 fps, 30 fps or 60 fps, 1080p HD Video Recording at 30 fps or 60 fps, Slow-motion Video Support for 1080p at 120 fps, Next Generation Smart HDR for Photos, Extended Dynamic Range for Video at 30 fps, Cinematic Video Stabilisation (4K, 1080p and 720p), Wide Colour Capture for Photos and Live Photos, Retina Flash, Auto Image Stabilisation, Burst Mode</li>\r\n			</ul>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Flash</td>\r\n			<td>\r\n			<ul>\r\n				<li>Rear Brighter True Tone Flash with Slow Sync and Front Retina Flash</li>\r\n			</ul>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>HD Recording</td>\r\n			<td>\r\n			<ul>\r\n				<li>Yes</li>\r\n			</ul>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Full HD Recording</td>\r\n			<td>\r\n			<ul>\r\n				<li>Yes</li>\r\n			</ul>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Video Recording</td>\r\n			<td>\r\n			<ul>\r\n				<li>Yes</li>\r\n			</ul>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Frame Rate</td>\r\n			<td>\r\n			<ul>\r\n				<li>Rear Camera - 4K Video Recording at 24 fps, 30 fps or 60 fps, 1080p HD Video Recording at 30 fps or 60 fps, 720p HD Video Recording at 30 fps, Extended Dynamic Range for Video upto 60 fps, Slow-motion Video Support for 1080p at 120 fps or 240 fps | True Depth Camera - 4K Video Recording at 24 fps, 30 fps or 60 fps, 1080p HD Video Recording at 30 fps or 60 fps, Slow-motion Video Support for 1080p at 120 fps, Extended Dynamic Range for Video at 30 fps fps</li>\r\n			</ul>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Dual Camera Lens</td>\r\n			<td>\r\n			<ul>\r\n				<li>Primary Camera</li>\r\n			</ul>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>Call Features</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Phone Book</td>\r\n			<td>\r\n			<ul>\r\n				<li>Yes</li>\r\n			</ul>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Speaker Phone</td>\r\n			<td>\r\n			<ul>\r\n				<li>Yes</li>\r\n			</ul>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>Connectivity Features</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Network Type</td>\r\n			<td>\r\n			<ul>\r\n				<li>4G VOLTE, 4G, 3G, 2G</li>\r\n			</ul>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Supported Networks</td>\r\n			<td>\r\n			<ul>\r\n				<li>4G VoLTE, 4G LTE, UMTS, GSM</li>\r\n			</ul>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Internet Connectivity</td>\r\n			<td>\r\n			<ul>\r\n				<li>4G, 3G, Wi-Fi</li>\r\n			</ul>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>3G</td>\r\n			<td>\r\n			<ul>\r\n				<li>Yes</li>\r\n			</ul>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Pre-installed Browser</td>\r\n			<td>\r\n			<ul>\r\n				<li>Safari</li>\r\n			</ul>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bluetooth Support</td>\r\n			<td>\r\n			<ul>\r\n				<li>Yes</li>\r\n			</ul>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bluetooth Version</td>\r\n			<td>\r\n			<ul>\r\n				<li>5</li>\r\n			</ul>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Wi-Fi</td>\r\n			<td>\r\n			<ul>\r\n				<li>Yes</li>\r\n			</ul>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Wi-Fi Version</td>\r\n			<td>\r\n			<ul>\r\n				<li>802.11ax Wi-Fi 6 with 2x2 MIMO</li>\r\n			</ul>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Wi-Fi Hotspot</td>\r\n			<td>\r\n			<ul>\r\n				<li>Yes</li>\r\n			</ul>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>NFC</td>\r\n			<td>\r\n			<ul>\r\n				<li>Yes</li>\r\n			</ul>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>Other Details</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Smartphone</td>\r\n			<td>\r\n			<ul>\r\n				<li>Yes</li>\r\n			</ul>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>SIM Size</td>\r\n			<td>\r\n			<ul>\r\n				<li>Nano SIM and eSIM</li>\r\n			</ul>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Removable Battery</td>\r\n			<td>\r\n			<ul>\r\n				<li>No</li>\r\n			</ul>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Graphics PPI</td>\r\n			<td>\r\n			<ul>\r\n				<li>326 PPI</li>\r\n			</ul>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Sensors</td>\r\n			<td>\r\n			<ul>\r\n				<li>Face ID, Barometer, Three Axis Gyro, Accelerometer, Proximity Sensor, Ambient Light Sensor</li>\r\n			</ul>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Supported Languages</td>\r\n			<td>\r\n			<ul>\r\n				<li>Multi Languages Support</li>\r\n			</ul>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Series</td>\r\n			<td>\r\n			<ul>\r\n				<li>iPhone 11</li>\r\n			</ul>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Other Features</td>\r\n			<td>\r\n			<ul>\r\n				<li>Faster Face ID, Slo-mo Selfies, Water Resistant upto 2 Metres for up to 30 Minutes?</li>\r\n			</ul>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>Multimedia Features</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Audio Formats</td>\r\n			<td>\r\n			<ul>\r\n				<li>AAC LC, HE AAC, HE AAC v2, Protected AAC, MP3, Linear PCM, Apple Lossless, FLAC, Dolby Digital (AC 3), Dolby Digital Plus (E AC 3), Dolby Atmos and Audible (Formats 2, 3, 4, Audible Enhanced Audio, AAX and AAX+)</li>\r\n			</ul>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Video Formats</td>\r\n			<td>\r\n			<ul>\r\n				<li>HEVC, H.264, MPEG 4 Part 2 and Motion JPEG, Supports Dolby Vision and HDR10 Content</li>\r\n			</ul>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>Dimensions</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Width</td>\r\n			<td>\r\n			<ul>\r\n				<li>75.7 mm</li>\r\n			</ul>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Height</td>\r\n			<td>\r\n			<ul>\r\n				<li>150.9 mm</li>\r\n			</ul>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Depth</td>\r\n			<td>\r\n			<ul>\r\n				<li>8.3 mm</li>\r\n			</ul>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Weight</td>\r\n			<td>\r\n			<ul>\r\n				<li>194 g</li>\r\n			</ul>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>Warranty</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Warranty Summary</td>\r\n			<td>\r\n			<ul>\r\n				<li>Brand Warranty for 1 Yea</li>\r\n			</ul>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 'apple-iphone-11-black-64-gb', 900, 'apple-iphone-11-black-64-gb.jfif', '2020-05-17', 1),
(31, 4, 'OnePlus 7T (Glacier Blue, 8GB RAM, Fluid AMOLED Display, 128GB Storage, 3800mAH Battery)', '<ul>\r\n	<li>48+12+16MP triple rear camera with telephoto lens + ultrawide angle lens | 16MP front camera with 4K video capture @ 30/60 FPS, ultrashot, nightscape, portrait, pro mode, panorama, HDR, AI scene detection, RAW image</li>\r\n	<li>16.63 centimeters (6.55 inch) 90Hz fluid AMOLED with 2400 x 1080 pixels resolution and 402 ppi pixel density</li>\r\n	<li>Memory, Storage &amp; SIM: 8GB RAM | 128GB internal memory | Dual SIM (nano+nano) dual-standby (4G+4G)</li>\r\n	<li>Oxygen OS based on Android v10 operating system with 2.96GHz Qualcomm Snapdragon 855 Plus AI Engine octa-core, 7nm processor, Adreno 640</li>\r\n	<li>3800mAH lithium-ion battery</li>\r\n	<li>1 year manufacturer warranty for device and 6 months manufacturer warranty for in-box accessories including batteries from the date of purchase</li>\r\n	<li>Box also includes: Warp charge 30 power adapter, warp type-C cable (support usb 2. 0), quick start guide, welcome letter, safety information and warranty card, logo sticker, case, screen protector (pre-applied), sim tray ejector</li>\r\n</ul>\r\n', 'oneplus-7t-glacier-blue-8gb-ram-fluid-amoled-display-128gb-storage-3800mah-battery', 470, 'oneplus-7t-glacier-blue-8gb-ram-fluid-amoled-display-128gb-storage-3800mah-battery.PNG', '2020-05-17', 2),
(32, 4, 'OnePlus 7T Pro (Haze Blue, 8GB RAM, Fluid AMOLED Display, 256GB Storage, 4085mAH Battery) by OnePlus', '<p>Technical Details</p>\r\n\r\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n	<tbody>\r\n		<tr>\r\n			<td>OS</td>\r\n			<td>Android</td>\r\n		</tr>\r\n		<tr>\r\n			<td>RAM</td>\r\n			<td>8 GB</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Item Weight</td>\r\n			<td>204 g</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Product Dimensions</td>\r\n			<td>16.3 x 0.9 x 7.6 cm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Batteries:</td>\r\n			<td>1 Lithium ion batteries required. (included)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Item model number</td>\r\n			<td>HD1901</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Wireless communication technologies</td>\r\n			<td>Bluetooth, WiFi Hotspot</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Connectivity technologies</td>\r\n			<td>GSM, (B2/3/5/8), CDMA, (BC0/BC1), 4G, FDD-LTE, (B1/2/3/4/5/7/8/12/13/17/18/19/20/26/28/29), TDD-LTE, (B34/38/39/40/41), Bluetooth 5.0 support aptX/HD/LDAC/AAC, TDS, (B34/B39), NFC enabled, WiFi, 2x2 MIMO, Wi-Fi 802.11 a/b/g/n/ac/2.4G/5G, UMTS:B1/2/4/5/8/9/19</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Special features</td>\r\n			<td>Dual SIM, GPS, Music Player, Video Player, In-display Fingerprint sensor, Accelerometer, Electronic Compass, Gyroscope, Ambient Light sensor, Proximity sensor, sensor Core</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Display technology</td>\r\n			<td>Corning Gorilla Glass,DCI-P3 100%,HDR10+,90Hz,1080 x 2400 pixels, 20:9 ratio (~402 ppi density)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Resolution</td>\r\n			<td>3120 x 1440</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Other camera features</td>\r\n			<td>48 + 8 + 16 MP</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Form factor</td>\r\n			<td>Touchscreen Phone</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Weight</td>\r\n			<td>204 Grams</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Colour</td>\r\n			<td>Haze Blue</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Battery Power Rating</td>\r\n			<td>4085</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Whats in the box</td>\r\n			<td>Handset, Warp Charge 30 Power Adapter, Warp Type-C Cable (Support USB 2.0), Quick Start Guide, Welcome Letter, Safety Information and Warranty Card, Logo Sticker, Case, Screen Protector (pre-applied), SIM Tray Ejector</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 'oneplus-7t-pro-haze-blue-8gb-ram-fluid-amoled-display-256gb-storage-4085mah-battery-oneplus', 640, 'oneplus-7t-pro-haze-blue-8gb-ram-fluid-amoled-display-256gb-storage-4085mah-battery-oneplus.jpg', '2020-05-17', 2);

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `pay_id` varchar(50) NOT NULL,
  `sales_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `user_id`, `pay_id`, `sales_date`) VALUES
(9, 12, 'PAY-1RT494832H294925RLLZ7TZA', '2020-05-15'),
(10, 9, 'PAY-21700797GV667562HLLZ7ZVY', '2020-05-15');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(60) NOT NULL,
  `type` int(1) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `contact_info` varchar(100) NOT NULL,
  `photo` varchar(200) NOT NULL,
  `status` int(1) NOT NULL,
  `activate_code` varchar(15) NOT NULL,
  `reset_code` varchar(15) NOT NULL,
  `created_on` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `type`, `firstname`, `lastname`, `address`, `contact_info`, `photo`, `status`, `activate_code`, `reset_code`, `created_on`) VALUES
(1, 'jatin@ecomm.com', '$2y$10$HY0EMY90Gq4GGYSLkUiv7uNmgHmvNPITAXJt8fE313Fylss.y2DVy', 1, 'Jatin', 'Saini', '', '', '20200320134756_IMG_6700.JPG', 1, '', '4EysApoH8VfS1K6', '2020-05-15'),
(9, 'rahul@ecomm.com', '$2y$10$kmg6A77HgPSmb73S48IvtuTIogzZtGLb8c5zRDNr3R.ejHHhLcdAC', 0, 'Rahul', 'Saini', 'VPO.LOHARA ,MANDI (HP),INDIA(175027)', '00000000001', 'profile.jpg', 1, 'k8FBpynQfqsv', 'wzPGkX5IODlTYHg', '2020-05-15'),
(12, 'ricky@gmail.com', '$2y$10$r6TaPIubgcGyoKoM1.moQ.eq8yOokj1NjfOuB8TQ3pCjL18gQB81u', 0, 'Ricky', 'Saini', 'mandi,hp', '000000000', '20190419184455_IMG_8155_1.JPG.jpg', 1, '', '', '2020-05-15'),
(13, 'Anchal@ecomm.com', '$2y$10$b2WPG3ih5gl5s80Jjj6JD.N2KQ4Plox98cabOv9Zx7LRFC/qPABoq', 0, 'Anchal', 'Saini', '', '', '', 1, 'EptJwI7jfA9U', '', '2020-05-15'),
(47, 'user@ecomm.com', '$2y$10$3v0RvKEnehZ.tzTJtRGK0eKdXB1cG3Jodj5FgDX3SHtLqVZ284qWm', 0, 'user', '1', 'HP India', '0000000000', 'profile.jpg', 1, 'AKj5ZRs8abH6', '', '2020-05-15');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `details`
--
ALTER TABLE `details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `details`
--
ALTER TABLE `details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
