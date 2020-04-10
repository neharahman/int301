-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 10, 2020 at 01:30 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vehicle`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `image`) VALUES
(1, 'Air Filters', 'https://kartrocket-mtp.s3.amazonaws.com/all-stores/image_jazzmyride/data/banners/14_air_filters_hsl.jpg'),
(2, 'Bike Indicators', 'https://kartrocket-mtp.s3.amazonaws.com/all-stores/image_jazzmyride/data/banners/14_indicators_hsl.jpg'),
(3, 'Rear view mirrors', 'https://kartrocket-mtp.s3.amazonaws.com/all-stores/image_jazzmyride/data/banners/14_rear_view_mirrors_hsl.jpg'),
(4, 'Chain set', 'https://kartrocket-mtp.s3.amazonaws.com/all-stores/image_jazzmyride/data/banners/Chain_Sets_hsl.jpg'),
(5, 'bulbs', 'https://kartrocket-mtp.s3.amazonaws.com/all-stores/image_jazzmyride/data/banners/14_bulbs_hsl.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `cat_id` int(10) NOT NULL,
  `image1` text NOT NULL,
  `mrp` int(10) NOT NULL,
  `new_price` int(10) NOT NULL,
  `brand` varchar(255) NOT NULL,
  `product_code` text NOT NULL,
  `availability` int(10) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `cat_id`, `image1`, `mrp`, `new_price`, `brand`, `product_code`, `availability`, `description`) VALUES
(1, 'Speedwav Stock Replacement Bike Air Filter', 1, 'https://ik.imagekit.io/bfrs/tr:w-380,h-300,pr-true,cm-pad_resize,bg-FFFFFF/image_jazzmyride/data/127120.jpg', 350, 298, 'Speedwav', '202708-J', 5, 'Chocked air filter can cause various problems to your vehicle. It is always better to change your vehicles air filter timely to avoid bad performance and low mileage of your vehicle.\r\n\r\nGive your bike/scooter a reliable Speedwav Stock Replacement Air Filter and let your vehicle breath clean and perform at its best.\r\n\r\nFeatures:\r\n\r\nDurable\r\n\r\nImproves Mileage\r\n\r\nImproves Performance\r\n\r\nProtects Engine From Direct Dust Intake\r\n\r\nIncreases air inflow as per requirement of the vehicle\r\n\r\nA Complete DIY(Do it yourself) product can be changed easily at home\r\n\r\nNote: Product shown in image is for display purpose only product will be as per vehicle model and specifications\r\n\r\nPackage Contents:\r\n\r\n1 X Stock Replacement Air Filter\r\n\r\n'),
(2, 'HP Bike Air Filter High Performance 42mm', 1, 'https://ik.imagekit.io/bfrs/tr:w-380,h-300,pr-true,cm-pad_resize,bg-FFFFFF/image_jazzmyride/data/20633-np.jpg', 500, 398, 'Hp', ' 20633', 3, 'Experience a ride of life time with HP air filter which gives your bike engine a new way to breath and perform at its best. It not only increases the performance but will also improve the throttle response of your bike.\r\n;\r\n\r\nFeatures:\r\nEasy To Fit\r\nProvides 100% Air Flow\r\nDurable And Reliable\r\nHelps Engine To perform At Its Best\r\nImproves Throttle response\r\nConical Design Technology Improve You Bike Performance\r\nIncreases Air Flow And Improves Power Output\r\nSuperb Cotton Filter Type Material Which Enables To Filter Out Dust Particals\r\nSpecial Sus Net Design\r\n\r\n\r\nPackage Contents:\r\n\r\n1 X HP High Performance Air Filter'),
(3, 'K& N RC-1060 Bike Air Filter High Performance\r\n', 1, 'https://ik.imagekit.io/bfrs/tr:w-380,h-300,pr-true,cm-pad_resize,bg-FFFFFF/image_jazzmyride/data/22171-np.jpg', 2890, 2890, ' K&N', '180', 6, 'Home » Bike Spares » Air Filters » K& N RC-1060 Bike Air Filter High Performance\r\nK& N RC-1060 Bike Air Filter High Performance\r\n‹›\r\nK& N RC-1060 Bike Air Filter High Performance\r\n0 Reviews  0 Reviews  |  Write a review\r\nRs.2,890.00\r\nBrand: K&N\r\nProduct Code: 22171\r\nAvailability: 180\r\nChoose Bike:\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\nQty: \r\n1\r\n    \r\nDESCRIPTIONSPECIFICATIONREVIEWS (0)\r\nExperience a drive of life time with K&N air filter which gives your bike engine a new way to breath and perform at its best. It not only increases the performance but will also improve the throttle response of your bike. Difference between normal air filter and a K&N air filter. With K&N air filter your bike receives maximum air inflow which means better performance. It reduces the chances of carbon deposits in your bike engine where as normal air filter restricts the air flow needed by your bike and also increases the chance of carbon deposit in your bike engine. It helps in increasing the mileage of your bike as your engine runs cleaner than with a normal air filter. K&N air filters are lifelong air filters which means they will be with your vehicle till you want. No filter changing required, you just need to clean K&N air filter after every 6000 to 8000 Kms (earlier if the area is very dusty).\r\n\r\nFeatures:\r\n\r\nProvides 100% Air Flow\r\n\r\nDurable And Reliable\r\n\r\nLifelong air filter\r\n\r\nImproves mileage and performance\r\n\r\nHelps Engine To perform At Its Best\r\n\r\nImproves Throttle response\r\n\r\nFilter Material: Cotton Gauze\r\n\r\nCan be cleaned and re-used (Use only K&N recharge kit to clean the filter)\r\n\r\nPackage Contents: 1 X K&N RC1060 Stock Replacement Air Filter'),
(4, 'Speedwav Bike Turn Indicator LED SMD Bulb-Blue', 2, 'https://ik.imagekit.io/bfrs/tr:w-380,h-300,pr-true,cm-pad_resize,bg-FFFFFF/image_jazzmyride/data/77091_1_11.jpg', 900, 600, 'Speedwav', ' 77091', 15, 'Home » Bike Spares » Indicators » Speedwav Bike Turn Indicator LED SMD Bulb-Blue\r\nSpeedwav Bike Turn Indicator LED SMD Bulb-Blue\r\n‹›\r\nSpeedwav Bike Turn Indicator LED SMD Bulb-Blue\r\n0 Reviews  0 Reviews  |  Write a review\r\nRs.900.00 Rs.288.00\r\nBrand: Speedwav\r\nProduct Code: 77091\r\nAvailability: 97\r\nChoose Bike:\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\nQty: \r\n1\r\n    \r\nDESCRIPTIONSPECIFICATIONREVIEWS (0)\r\nGiving Turn indicator has turned more stylish with Speedwav Bike Turn Indicator LED SMD Bulb which gives more brighter turn signal than traditional bulb with low light which usually cause accidents due to its low light\r\n\r\nA must have product from all bike lovers\r\n\r\nFeatures\r\n\r\nEasy to install and durable\r\n\r\nWater proof for any weather usage\r\n\r\nDirect replacement of indicator bulb of the vehicle\r\n\r\nProvides safety in hazy weather conditions like fog, heavy rain\r\n\r\nLow on power consumption without putting any extra load on battery\r\n\r\nWorks with 12V current\r\n\r\nNo return policy is applicable on this product\r\n\r\nPackage Contents :\r\n\r\n1 X Speedwav Bike Turn Indicator LED SMD Bulb-Blue'),
(5, 'Speedwav ARC Red LED Bike Indicator Assembly Set Of 2', 2, 'https://ik.imagekit.io/bfrs/tr:w-380,h-300,pr-true,cm-pad_resize,bg-FFFFFF/image_jazzmyride/data/239813_1_11.jpg', 1400, 368, 'Speedwav', ' 239813', 60, 'Speedwav ARC Red LED Bike Indicator Assembly Set Of 2\r\n\r\nRiding safely on bike has always been an issue on Indian roads due to turning without indication. But now no need to worry when Speedwav Stylish Bike LED Indicator Assembly is there which will not only make you safe while taking any turn on your bike but will also increase looks of your bike with its unique design\r\n\r\nA must have product for safe riding as giving indicator and then turning makes you a responsible citizen.\r\n\r\nFeatures:\r\n\r\nEasy to install\r\n\r\nDurable and long lasting\r\n\r\nEnhances overall looks of the bike\r\n\r\nMakes riding easy and stress free\r\n\r\nUnique design with Latest in trend LED Bulbs\r\n\r\nImproved glow of indicator due to LED Bulbs\r\n\r\nKeeps you safe in unwanted weather conditions\r\n\r\nImproved glow of indicator due to LED Bulbs with better visibilty\r\n\r\nNo return policy is applicable on this product\r\nPackage Contents:\r\n\r\nSpeedwav ARC Red LED Bike Indicator Assembly Set Of 2'),
(6, 'Speedwav Bike Handle Grip Bar End Rear View Mirror Set Of 2-BLACK', 3, 'https://ik.imagekit.io/bfrs/tr:w-380,h-300,pr-true,cm-pad_resize,bg-FFFFFF/image_jazzmyride/data/86155-np.jpg', 699, 699, 'Speedwav', '86155', 85, 'Mirrors are the lifelines for a biker. Without proper mirrors on the bike, one can\'t be fully safe. However, stock mirrors are generally boring and that is why the Speedwav Bike Handle Grip Bar End Rear View Mirrors are here to add that style factor to that mirror quotient. They not just offer a clear 180 degree view but also provide a clean yet stylish look.\r\n\r\nFeatures:\r\n\r\nEasy to fit\r\n\r\nEnhances overall look of the bike\r\n\r\nKeeps you safe on the road while taking any turn\r\n\r\nProvides you a wide look rear look of the road on both sides\r\n\r\nAdjustable mirrors help you adjust the mirrors as per your sitting positions for clear wide look\r\n\r\nNo return policy is applicable on this product\r\nPackage Contents :\r\n\r\n1 X Speedwav Bike Handle Grip Bar End Rear View Mirror Assembly Set Of 2-Black\r\n\r\n'),
(7, 'Accedre Bike Red Handlebar End Rotatable Rear View Mirror-Set of 2', 3, 'https://ik.imagekit.io/bfrs/tr:w-380,h-300,pr-true,cm-pad_resize,bg-FFFFFF/image_jazzmyride/data/433088.jpg', 751, 688, 'Accedre', '433088', 10, 'Features:\r\nSimple and classic look, perfect match to most motorcycles.\r\nHigh quality Aluminium light weight material.\r\nNo modification required, easy to install.\r\nMain Material: Aluminium\r\nMirror Material: Glass\r\nAdjustable mirror angle, up and down, left and right\r\n\r\nNo return policy is applicable on this product\r\nPackage Contents:\r\n1 x Accedre Bike Red Handlebar End Rotatable Rear View Mirror-Set of 2\r\n\r\n'),
(8, 'Rockman Bike Chain Set Assembly\r\n', 4, 'https://ik.imagekit.io/bfrs/tr:w-600,h-600,pr-true,cm-pad_resize,bg-FFFFFF/image_jazzmyride/data/202090-J_ri-2816.jpg', 680, 570, 'Rockman', ' 202090-J', 22, 'Riding a bike with worn out chain set is driving a bike with less power and less mileage, because a worn out chain set decreases the power to a extent of ten percent and mileage is decreased up to 5 to 8 kilometers per liter.\r\n\r\nFeatures: ;\r\n\r\nImproves Mileage\r\n\r\nIncreases riding response\r\n\r\nReduces engine load and over revving\r\n\r\nMakes riding smooth and safe for long distances\r\n\r\nTimely tensioning and oiling is equally important to have a good ride.\r\n\r\nIncreases throttle response and improves overall acceleration of the bike\r\n\r\nWith a good and properly maintained chain set, a bike can perform at its best and providing best mileage.\r\n\r\nPackage Contents:\r\n\r\nRockman Bike Chain Set Assembly\r\n\r\n1 X Chain\r\n\r\n1 X Front Chain Sprocket\r\n\r\n1 X Rear Chain Sprocket'),
(9, 'Speedwav Xenon H4 CYT Pure White Bulbs for Bikes/Scooters', 5, 'https://ik.imagekit.io/bfrs/tr:w-380,h-300,pr-true,cm-pad_resize,bg-FFFFFF/image_jazzmyride/data/21045-np.jpg', 600, 399, 'SpeedWav', '21045', 55, 'Presenting pure white CYT bulbs for your bike to give it a new look with increased road vision in the night.\r\n\r\nFeatures :\r\n\r\nPure White Light to Stand Out\r\n\r\nDurable\r\n\r\nIdeal for night driving purposes\r\n\r\nSame power consumption of 35W but more light than usual bulb\r\n\r\nEasily replaces the current halogen bulb by just plugging into the existing headlight socket\r\n\r\nPackage Contents :\r\n\r\nSpeedwav Xenon H4 CYT Pure White Bulbs for Bikes/Scooters Set of 2\r\n\r\nNote:-No Return Policy is applicable on this product\r\n'),
(10, 'Speedwav MX2 Bike H4 LED Headlight Bulb', 5, 'https://ik.imagekit.io/bfrs/tr:w-380,h-300,pr-true,cm-pad_resize,bg-FFFFFF/image_jazzmyride/data/197827.jpg', 5000, 3500, 'SpeedWav', '197827', 33, 'Speedwav MX2 Bike H4 LED Headlight Bulb\r\n\r\nA must have product from all bike loves for better view of roads\r\n\r\nFeatures\r\n\r\nDurable\r\n\r\nProvides wider and longer beam throw\r\n\r\nContains both high and low beam as required\r\n\r\nLow on power consumption which increase battery life\r\n\r\nNote : Product should be handled carefully while installation and fitment should be done by a experienced technician only\r\n\r\nHigh beam slightly wary from the below beam in light as light fluctuation is very less due to LED as compare to halogen bulb\r\n\r\nPackage Contents :\r\n\r\n1 X Speedwav MX2 Bike H4 LED Headlight Bulb');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(10) NOT NULL,
  `name1` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `pass` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name1`, `email`, `pass`) VALUES
(1, 'Shubham', 'shubhamrajabc@gmail.com', 'shubh');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(10) NOT NULL,
  `product_id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`id`, `product_id`, `user_id`) VALUES
(2, 7, 1),
(3, 6, 1),
(4, 4, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
