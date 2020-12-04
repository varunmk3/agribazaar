-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 02, 2020 at 09:05 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `agribuzz`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(10) NOT NULL,
  `admin_name` varchar(25) NOT NULL,
  `login_id` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_name`, `login_id`, `password`, `status`) VALUES
(6, 'admin', 'admin', 'admin', 'Active'),
(11, 'Uma', 'umayal95@gmail.com', '@vaishnavi@', 'Active'),
(12, 'superadmin', 'superadmin', 'q1w2e3r4', 'Active'),
(13, 'apel', 'apel', '12345678', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `article`
--

CREATE TABLE `article` (
  `article_id` int(10) NOT NULL,
  `article_type` varchar(25) NOT NULL,
  `publish_date` date NOT NULL,
  `title` varchar(100) NOT NULL,
  `article_description` text NOT NULL,
  `article_img1` varchar(100) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `article`
--

INSERT INTO `article` (`article_id`, `article_type`, `publish_date`, `title`, `article_description`, `article_img1`, `status`) VALUES
(33, 'Blog', '2020-09-15', ' Improving Soil Quality & Cover Crops', 'Beyond improved seeds and crop protection tools, other technologies enable farmers to increase their productivity, such as modern irrigation practices, crop management products, mobile technology, fertilizer and mechanization management and softwares, like Agrivi, for managing their farms.', '1336237398download.jpg', 'Active'),
(34, 'Blog', '2020-09-15', 'The technology revolution in farming', 'A new generation of tech-savvy, data-hungry young farmers have reinvented large-scale agriculture. By analyzing data gathered from new sensors, tractors and satellites, todayâ€™s farmers are able to track crop health, make planting decisions and guide fertilizer use to improve the efficiency of their businesses like never before.\r\nThis approach â€” known as precision agriculture â€” has been especially helpful in tackling fertilizer loss, a particular concern for farmers, as nitrogen fertilizer is one of their biggest expenses. Itâ€™s also a major contributor to water pollution and climate change.', '16798661131_aeIhJTVQEWm8g_GaR6dd3A.png', 'Active'),
(35, 'Blog', '2020-09-15', 'Improving Soil Quality & Cover Crops', 'Cover crops can have many benefits in improving soil and environmental qualities. They use residual soil N and can reduce N leaching to the groundwater. Depending on management, they can increase soil organic matter and improve soil physical, chemical, and biological properties.', '434895503images (1).jpg', 'Active'),
(36, 'Blog', '2020-09-15', 'Tips for soil testing', 'Before testing your soil, make sure you know what goals you are trying to achieve. Before the use of GPS and precision agriculture, many farmers would randomly select places in the field to sample. Thanks to advanced technology, farmers are now able to assess soil health. If you donâ€™t have access to GPS for your fields, using a zig-zag pattern across your field is suggested to ensure an accurate reflection of the fieldâ€™s nutrient profile. Avoid special problem areas, such as old feedlots, homesteads, ponded areas, within 50 feet of gravel roads, or extreme soil types (which you may wish to sample separately for larger areas).', '615775802Soil-testing-tips-for-the-perfect-fertilizer-application-e1569355003270.jpeg', 'Active'),
(37, 'News', '2020-09-15', 'Incessant rainfall damages vegetable plants in Gopalganj', 'As a result, around 1000 farmers of five unions in the upazila are passing their time in frustration and tension as they need to repay the loan they took for cultivating vegetables\r\n\r\n\r\nIncessant rainfall in the last few days has damaged vegetable plants amounting to about Tk 1 crore in Tungipara upazila in Gopalganj, causing heavy losses to farmers. \r\n\r\nAccording to the Department of Agriculture Extension Tungipara office, around 350 hectares of land cultivated with different varieties of vegetables namely cucumber, gourd, bitter gourd, ladies finger, tomato, brinjal, sweet pumpkin, and many other varieties were submerged due to the incessant rainfall.\r\n\r\nThe roots of all vegetables are rotting due to the stagnant water, and green leaves are turning yellow\r\n\r\nAs a result, around 1000 farmers of five unions in the upazila are passing their time in frustration and tension as they need to repay the loan they took for cultivating vegetables.\r\n\r\nDuring a recent visit to many villages in the upazila, this correspondent spoke to many farmers who appeal to the government for fertilizer, seeds at free of cash so that they can cultivate vegetables again.\r\n\r\nFarmer Barendranath Biswas from Bonnabari village under Gopalpur union said: â€œI have cultivated ladies and cucumbers on one bigha of land. But the incessant rainfall damaged my crop land, causing me a loss of Tk80,000.â€', '328047013gopalganj-tungipara-sobji-pic-3-1-1597578764751.jpg', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(10) NOT NULL,
  `category` varchar(25) NOT NULL,
  `category_type` varchar(25) NOT NULL,
  `description` text NOT NULL,
  `img` varchar(100) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category`, `category_type`, `description`, `img`, `status`) VALUES
(2, 'Cereals and Pulses', 'Produce', 'Cereals are an integral part of our lives, as they are the only food products that provide instant energy. Rich in nutrients, cereals come in the form of rice or corns.', '28333cereals and pulses.jpg', 'Active'),
(3, 'Seeds', 'Produce', 'Seeds have stored foods inside them and are confined in coverings known as seed coats. The process of reproduction in a plant is completed after the seeds are developed fully.', '1506seeds.gif', 'Active'),
(4, 'Spices', 'Produce', 'Spices are defined as dried seed or fruit, in whole or powder form, used as \r\nfood additives for enhancing the flavor or taste of a particular food item. India produces 3.2 million tonnes of various spices.', '3443spices.jpg', 'Active'),
(5, 'Vegetable', 'Produce', 'Vegetables, the edible part of a plant, are rich sources of several vital nutrients, contributing immensely to the overall growth of the living being.', '29744veggie.jpg', 'Active'),
(6, 'Dry Fruit and Nuts', 'Produce', 'The need for having a healthy and tasty snack in between our regular food time can be satisfied with the consumption of dry fruits and nuts. They fully satisfy the taste buds, and one need not worry about gaining weight!', '18601dry fruit.jpg', 'Active'),
(7, 'Edible Oil', 'Produce', 'India is the 4th largest user of edible oil. Edible oils are basic ingredients used in the making of foods and other eatables.', '7726edible oil.jpg', 'Active'),
(11, 'Herbal Products', 'Produce', 'Herbs have exotic flavor, medicinal properties, scent, etc. They are used as \r\nmedicines, facilitating curing of ailments at a faster pace.', '23605herbal plants.jpg', 'Active'),
(14, 'Other Agro Products', 'Produce', 'Agro products are limitless and have an even larger number of sub-products, and may not generally be categorized.', '20247jaggery.jpg', 'Active'),
(15, 'Beverages', 'Produce', 'A drink or beverage is a liquid intended for human consumption.', '30296beverage and juices.jpg', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `city_id` int(10) NOT NULL,
  `country_id` int(10) NOT NULL,
  `state_id` int(10) NOT NULL,
  `city` varchar(25) NOT NULL,
  `description` text NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`city_id`, `country_id`, `state_id`, `city`, `description`, `status`) VALUES
(19, 1, 20, '	Mumbai', 'Mumbai, formerly called Bombay, is a sprawling, densely populated city on Indiaâ€™s west coast. On the Mumbai Harbour waterfront stands the iconic Gateway of India stone arch, built by the British Raj in 1924. Offshore, nearby Elephanta Island holds ancient cave temples dedicated to Shiva', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `country_id` int(10) NOT NULL,
  `country` varchar(25) NOT NULL,
  `description` text NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`country_id`, `country`, `description`, `status`) VALUES
(1, 'India', 'India, officially the Republic of India  is a country in South Asia. It is the seventh-largest country by area, the second-most populous country with over 1.2 billion people, and the most populous democracy in the world. ', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(10) NOT NULL,
  `customer_name` varchar(25) NOT NULL,
  `address` text NOT NULL,
  `country_id` int(10) NOT NULL,
  `state_id` int(10) NOT NULL,
  `city_id` int(10) NOT NULL,
  `pincode` varchar(10) NOT NULL,
  `contact_no` varchar(15) NOT NULL,
  `mobile_no` varchar(15) NOT NULL,
  `email_id` varchar(50) NOT NULL,
  `password` varchar(25) NOT NULL,
  `customer_type` varchar(25) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `customer_name`, `address`, `country_id`, `state_id`, `city_id`, `pincode`, `contact_no`, `mobile_no`, `email_id`, `password`, `customer_type`, `status`) VALUES
(8, 'Balram singh', '43th floor, gateway roal', 1, 23, 22, '596321', '08524561230', '7894561230', 'balramsingh3a11@gmail.com', 'q1w2e3r4/', 'Retailer', 'Active'),
(10, 'cus', 'nsdbsd', 1, 18, 199, '894320', '431341323', '23423423432', 'cus1@gmail.com', '987654321', 'Consumer', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `produce`
--

CREATE TABLE `produce` (
  `produce_id` int(10) NOT NULL,
  `category_id` int(10) NOT NULL,
  `produce` varchar(25) NOT NULL,
  `description` text NOT NULL,
  `img` varchar(100) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `produce`
--

INSERT INTO `produce` (`produce_id`, `category_id`, `produce`, `description`, `img`, `status`) VALUES
(1, 1, 'Banana', 'Banana, the fruit of a plant of the genus Musa (family Musaceae) is basically cultivated for food, and secondary for the production of fibers, and also for producing tissue-thin tea bags. Besides this, bananas are also cultivated for some ornamental purposes in various regions of the world. They are also known as Bananier Nain, Canbur, Curro and Plantain. These creamy, rich, and sweet fruits are favourite among the people of all ages right from infants to elders. Bananas consist mainly of sugars (glucose, fructose and sucrose) and fiber. They provide instant energy as they are the rich sources of Vitamin B6, Vitamin C, and potassium. \r\n', '19317banana.jpg', 'Active'),
(2, 1, 'Apple', 'Apple is a fleshy fruit of the tree of the species Malus domestica in the rose family Rosaceae. The trees of the Malus family require a long period of dormancy, a well drained soil, years of careful pruning and pest management. The apple tree usually grows to about 5-12 m in height, and is one of the most cultivated fruit trees in the world. Apples ripen in autumn, and generally are 5-9 cm in diameter. They are available in a number of sizes, shapes, colours, etc. but are mostly round and come in the shades of red or yellow.\r\n\r\nThe tree is believed to have originated from Asia, and now more than 7,500 varieties of apples are available worldwide. These large number of varieties may be grouped in three categories, cider, cooking, and dessert varieties. Those varieties, which ripen in late summer are often the ones, which cannot be stored for long, whereas the ones that ripen in autumn may be stored all year round.\r\n\r\nApples can be eaten fresh, cooked, baked or be converted into drinks, and are a rich source of vitamins A and C, fiber, carbohydrates, etc. To know if an apple is good or not, one should first look at its texture, which should be smooth, and be free of any bruises or cuts. The firmness of the apple is the proof of its sweetness. Storage of the apples in an important aspect and care should be taken to store them in a cool and dry place, wrapped in a poly bag.\r\n\r\nMillions of tonnes of apples are grown throughout the world every year. China, USA, Turkey, France, Italy and Iran are amongst the top exporters of apples in the world. Apples are used in many recipes made world over. The American Apple Pie is world famous and is a traditional dish made on special occasions. Apple can also be baked and eaten as a side dish with any kind of meat. Apple sauce made from blanched apples is an excellent accompaniment with pork. Dried apples also make a health snack. \r\n\r\n ', '30474apple.jpg', 'Active'),
(3, 1, 'Guava', 'Guava is a tropical fruit, which is in very much like the shape of a pear, and has a yellow-green skin and white, yellow, or red/pink flesh. The guava tree belongs to the myrtle family Myrtaceae. The tree is native to Mexico, as well as Central America, Northern South America and parts of the Carribbean. They are now cultivated throughout the tropics.\r\n\r\nThe fruit is known by many names in various countries. They are called Pera in Sri Lanka, Amrood in Hindi and Urdu. In Bengali it is known as Peyara. They are also referred to as the bayabas locals of Guayaba. Some people prefer eating guavas to oranges, as the former have more concentration of Vitamin C and are also a lot cheaper than the latter. ', '28056guava.jpg', 'Active'),
(4, 1, 'Pineapple', 'The Pineapple or the (Ananas Comosus) is a tropical berry fruit. It is a multiple fruit, as multiple spirally flowers grow along the axis and each flower produces a single fleshy fruit. Each fruit overlaps the other produced by a different flower adjacent to it, thus, making the pineapple appear as a single fruit. The leaves of the tree are 20-72 inches in length and are needle tipped and bear sharp, up curved spines on their margins. The stem grows straight, and has a tuff of short leaves at the top, which is known as the crown.\r\n\r\nA pineapple varies in colour from white to yellow and is sweet in taste. It can be had raw and is also relished when glazed or canned. It serves as an ideal dessert and is often added to salads to enhance their tastes. Pineapples are a rich source of Vitamin C and Manganese. They also contain ample amounts of vitamins B1, B6, Copper and other dietary fiber. ', '10737pineapple.jpg', 'Active'),
(5, 1, 'Grapes', 'Grape is a climacteric fruit that grows on the perennial and deciduous woody vines of the genus Vitis. Grapes are small round or oval berries, which have a translucent flesh, and a smooth textured skin. They sometimes have seeds, which are edible, but most of the varieties are seedless. The grapes, which are eaten are called table grapes, the ones used in the fabrication of wine are called wine grapes, and the ones used to make resins are called resin grapes.\r\n\r\nDifferent varieties of grapes range in colour, size, taste and physical characteristics. The colors range from green, amber, red, blue-black, and purple. In general, whole grapes have a slightly crunchy texture and have a dry, sweet and tart taste. Grapes generally grow in clusters of 6 to 300\r\n', '31190grapes.jpg', 'Active'),
(10, 1, 'Pomegranate', 'The pomegranate tree is a deciduous tree, which bears fruits and grows to an average height of 5â€“8 meters. The tree originally belongs to the regions of pakistan, Afganistan and Iran. The tree has been cultivated since time immemorial in the Mediterranean regions including Algeria, India, Turkey, Iran and also in some parts of South East Asia, Tropical Africa, peninsular Malaysia, etc. It is available in the months from September to January in the Northern Hemisphere and and from March to May in the Southern Hemisphere.  \r\n\r\nThe leaves of the tree are oblong and narrow and have a glossy texture. They are about 3-7 cms in length and are 2 cms broad. The fruit has a peculiar hexagonal shape with a thick red skin and around 600 seeds. The seeds of the fruit range in colour from white to deep red. There are also some varieties available in the market, which have a purple pulp colour. Pomegranate trees are drought tolerant and may be grown in dry areas as well. The tree is susceptible to root decay from fungal diseases in wetter regions. They are also tolerant to moderate frost, and can survive in a temperature of about 10o C.\r\n', '20211pomegranate.png', 'Active'),
(14, 1, 'Strawberry', 'The Garden Strawberry or the strawberry is the most widely cultivated berry throughout the world. The strawberry plant belongs to the family of the Rosaceae, and is often referred to as the accessory fruit. The fleshy part of the fruit is derived not from the ovaries, but from the peg at the bottom of the bowl shaped hypanthium that holds the ovaries. The garden strawberry was first grown in Europe in the 18th century and represents the accidental cross of Fragaria virginiana from eastern North America, which is rich in flavour, and the Fragaria chiloensis from Chile, which is large in size. Today, these strawberries have been replaced by the Woodland Strawberries, which have been commercially cultivated.', '31717strawberry.jpg', 'Active'),
(20, 2, 'Barley', 'Barley is a cereal grain used in large proportions as an animal feed, while the rest is used as a malt in whiskey or sugar as well as health food. Barley belongs to the family of poaceae, a plant commonly known as grass. It is available in a variety of forms like whole barley, hulled barley, pearled barley as well as barley flakes. It is a rich source of metals like zinc, copper, phosphorous, etc. as well as other nutrients like calcium and iron.\r\n', '8341barley.jpg', 'Active'),
(21, 2, 'Rice Bran', 'Rice bran is the hard outer part of the grain that consists of aleurone, a form of protein found in the protein granules of maturing seeds, as well as pericarp, the outer and edible layer of the rice kernel. Apart from these two, it also contains germs and endosperm of the rice kernel. Rice bran is obtained as a by-product during the rice milling process and the outer layers or parts are removed at the time of whitening or polishing of the husked rice. It composes of many nutritious substances like protein, fat, fiber, various anti-oxidants, etc. that have a beneficial effect on human health. Because of its multi-nutritional properties, rice bran is being consumed by humans for thousands of year ', '30122ricebran.png', 'Active'),
(22, 2, 'Black Gram', 'Black Gram or we can say Urad originated in India where it has been spreading its wonderful taste in many different ways for ages now. Cultivated in almost all parts of India, this leguminous pulse has inevitably marked itself as the most popular pulse and can be most appropriately referred to as the king of the pulses. Whether it be the very special Dal makhni of Punjab or the Vada Sambhar of South India, the taste rules the hearts of one and all alike. Indian immigrants have popularized the taste worldwide as well.', '5531blackgram.jpg', 'Active'),
(29, 2, 'Wheat', 'Ranked next to maize in terms of consumption, wheat has been playing an important role in leveraging the agrarian scenario of India. The annual production of wheat in India stands at 65-75 million tonnes, thereby making India its second largest producer in the world after China. People in India consume 70-72 million tonnes of wheat on an average. In India, it is commonly known as atta and is eaten mostly in the form of rotis, chapatis, etc. There are about 200 flour mills operating in India having a capacity to produce about 15 million tons of wheat.', '4098Wheat.jpg', 'Active'),
(43, 3, 'Basil Seeds', 'Basil is an aromatic, low growing herb the leaves of which have a bright green to purple ovate colour, and is grown in warm, tropical climate. It belongs to the botanical family of Ocimum Bailicum, more commonly known as mint. It is grown on a mass scale in central and tropical Asia and Africa and has been cultivated for as long as 5000 years. In India, it is known as the sacred Tulsi and holds a major religious significance. The basil leaves are known to have many medicinal and other healing properties and are strongly recommended by physicians practising Ayurveda.', '24981basil seeds.jpg', 'Active'),
(45, 3, 'Sesame Seeds', 'Sesame seeds or benny seed or benne seed can be described as tiny oval seeds that are flat in their structure and have a nutty taste as well as a delicate crunch. They are the most common forms of seeds produced in the world. The sesame seeds are highly held in the market because of their high content of sesame oil. These seeds come in a variety of colours like white, yellow, black and red.\r\n\r\nThe seeds of sesame are obtained from Sesamum indicum, an annual herb that grows well in hot climates up to a maximum height of seven feet. These seeds mature inside a pod which pop up once they become mature. They are widely used in making bread products, confectioneries, and as a garnishing item.', '16027sesame seeds.png', 'Active'),
(46, 3, 'Sunflower Seeds', 'The sunflower plant are cultivated annually, has large yellow flowers, broad leaves and can grow from 3-15 ft (0.91-4.6 m) high. The seeds are harvested after about 120 days, dried, roasted, salted and packaged.\r\n\r\nActually the sunflower seeds are the fruits of the sunflowers. In botanical terms sunflower seed in more accurate terms are known as an achene, however when dehulled, the edible remainder is called the sunflower kernel/seed.Across the globe the sunflower kernels/seeds are usually consummed as a nourishing refreshment rather than as part of a complete/full fledged meal. Sunflower seeds are also used as a garnish in various cuisines.\r\n ', '4664sunflower seeds.jpg', 'Active'),
(58, 4, 'Pepper', 'Pepper is the dried berry of Piper nigrum. This vine which can grow up to ten feet tall is indigenous to India and Asia. Pepper is actually berries that are picked about nine months after flowering. Black Pepper, the spiciest, is berries that are picked unripe. The berries used for White Pepper are ripened on the vine and soaked so that their outer hulls are easily removed. Green Peppercorns are immature berries which are freeze-dried or packed in brine for preservation.\r\n', '23413black pepper.jpg', 'Active'),
(61, 4, 'Cinnamon', 'Cinnamon is a small tropical evergreen tree which grows 10â€“15 meters tall, belonging to the family Lauraceae. The two main varieties of cinnamon are cinnamomum cassia and cinnamomum zeylanicum, grown widely in Sri Lanka, India, Java, Sumatra, the West Indies, Brazil, Vietnam and Madagascar. Its inner bark is widely used as a spice and there are as many as 250 different varieties are found across the globe. Due to its distinct odour, it is widely used as an important ingredient of many mouth watering dishes of the world. ', '7753cinnamon.png', 'Active'),
(65, 4, 'Ginger', 'Ginger, or zingiber officinale, is a perennial plant having thick branching aromatic rhizomes and leafy reedlike stems. For centuries, ginger has been widely used as a spice throughout the world, especially in Asian countries. A native to China and India, this plant is widely cultivated in Southeast Asia, West Africa, and the Caribbean. It needs a minimum annual rainfall of 150cm, temperatures of 30Â°C or over, a short dry season and a deep fertile soil. Known for its slightly biting and hot flavour, this spice is widely used in preparing gingerbread, ginger ale, gingersnaps and Asian dishes. It adds delicacy to the dish by its rich, sweet, warm and woody aroma. \r\n', '11404ginger.jpg', 'Active'),
(66, 4, 'Dry Red Chilly', 'Dry Red Chilly or Lal Sukhi Mirch is one of the many spices used in Indian cooking. It is the fruit of the plants from the genus capsicum, which are members of the nightshade family Solanaceae. They are commercially cultivated in many part of the world as they yield better returns as compared to other varieties. The heat in all chiles, whether hot or mild, is due to the flavourless, odourless, colourless chemical known as capsaicin which is present in chilli seeds and membranes. \r\n\r\nDry red chilly is generally used as a tempering agent and is fried with other spices, then added to the dish as a final touch. In India, lentils, vegetables and many other regional cuisines are flavoured with this spice-flavoured-oil, comprising of red chilly, cumin, and other spices. Dried chillies can be stored for a longer duration-however, the tasty part of it gets lost and only the fiery part of the chili peppers remain in dried form. ', '20437dry red chilli.jpg', 'Active'),
(70, 6, 'Cashew Nuts', 'The cashew trees appear more like bushes than trees because of their small stature. They are evergreen trees, with an average height of not above 30 feet. The limbs of the tree spread fast and strike the ground to re-root themselves. The trunk of the tree is often short and irregular in shape, giving it an extremely disheveled look. The cashew trees grow abundantly in the tropics and are extensively found near the equator, as they flourish in extreme heat.', '23408cahsew nut.jpg', 'Active'),
(71, 6, 'Almonds', 'Scientifically known as the Prunus dulcis, the almond tree is the cousin of the peach, cherry and the apricot trees. It bears fruits, which have stone like seeds within, and it is these seeds, which are better known as the almond nuts. The tree is a small deciduous tree that grows to a height ranging from about 4 meters to 10 meters. \r\n\r\nIts shoots are green at first but later turn into a purple colour, when they are exposed to sunlight. The fruit is a drupe, which is about 3.5 to 6 cm long. The outer covering or the exocarp, is a leathery green-grey coat called the hull, which houses the hard shell, which contains the edible kernel. The shell is referred to as the endocarp and matures approximately seven to eight months after flowering.', '16105almond.jpg', 'Active'),
(73, 6, 'Pistachio', 'The pistachio is a member of the cashew family, and is native to the deserts of Asia Minor and West India. According to the folklore of the Middle East, young lovers who meet under pistachio trees and hear the nuts crack open on a full moon night will eventually marry. Queen Sheba liked pistachios so much she decreed that the yearly crop in her kingdom would belong solely to the royal palace. In the 20th Century, hate and turmoil in the Middle East helped boost pistachio production in California.\r\n', '3599pistachio.jpg', 'Active'),
(87, 7, 'Castor Oil', 'Castor oil is an edible oil derived from the castor bean. Its scientific name is ricinus communis and this plant is not a member of the bean family. Castor seeds contain between 40% and 60% oil that is rich in triglycerides, mainly ricinolein, and helps immensely in moisturizing and lubricating the skin. Since centuries, castor oil or black castor oil has been used as remedies for many disorders. \r\n\r\nBesides being used as an edible oil, it is also used for producing cosmetics and other personal care products such as night creams, lipsticks, masks, etc. However, its seeds also contain ricin, a poison, which is also present in lower concentrations throughout the plant. Ricin does not partition into the oil because it is water soluble, therefore, castor oil does not contain ricin, provided that no cross contamination occurs during its production. India is the leading producer of castor oil in the world, followed by China and Brazil with 0.8 and 0.4 lakh tons respectively. \r\n', '6075castor oil.jpg', 'Active'),
(88, 7, 'Coconut Oil', 'Coconut or the tree of life, in tropical climates is a way of life for millions of people all around the globe. Coconut oil or coconut butter is an edible oil obtain from the copra, or dried meat of the coconut. For centuries, this oil is consumed by humans in one way or other. This vegetable oil was first developed commercially in the South Sea Islands and South Asia in the mid 19th century. Philippines is the largest exporter of the coconut oil in the world. \r\n\r\nDue to its rich fiber and nutritional content, coconut oil possesses incredible health benefits. For thousands of years, this edible oil has been consumed in tropical places. Being one of the healthiest oils on earth, it is used to treat a wide variety of health problems including abscesses, asthma, baldness, bronchitis, bruises, burns, colds, constipation, cough, dropsy, a few amongst many others. ', '17624cocnut oil.jpg', 'Active'),
(108, 15, 'Coffee', 'In its positive aspect, stress can help you focus, perform and reach peak efficiency. However, during the negative phase, the 5 keys to de stressing, the moment are vehemently observed. The major one being popularly endorsed is Humour the greatest and quickest device to reduce stress. This is followed by Brisk Walk or Self Talk, Rehydrate, Catnap/Powernap, Crying and Making a Cuppa. Recent studies have identified food stressors, such as sugar, caffeine, and chocolate as improving mental health, which produce a soothing feeling, tend to stimulate the body, increase heart rate and blood pressure.', '9452coffee.jpg', 'Active'),
(122, 11, 'Mint', 'Mint is a plant of the genus Mentha. It is characterized by aromatic foliage and nearly regular flowers. True mints have square stems, oppositely arranged aromatic leaves. Small flowers usually pale purple, pink, or white, are arranged in clusters, either forming separate whorls or crowded together in a terminal spike. All Mentha species contain volatile oil in resinous dots in the leaves and stems.', '6425mint.jpg', 'Active'),
(125, 11, 'Bay Leaf', 'Bay leaf is the dried aromatic leaf of the laurel or bay which is known as Laurus nobilis in botanical terms. These are widely used for garnishing in soups, sauces, stews and as a seasoning for fish, meat and poultry. It is often used as a pickling spice.\r\n\r\nIt is oval, pointed and smooth, 2.5 to 8 cm long. When fresh, the leaves are shiny and dark green on top, with a lighter underside. When dried, the leaf turns a matte olive green. It feels warm and pungent when broken and its aromatic oils are released. It has a slightly bitter in flavour and is a powerful redolent.', '17036bayleaf.jpg', 'Active'),
(132, 14, 'Honey', 'Honey is a naturally occurring syrup, which contains glucose, fructose, vitamins and minerals and is known to have many health benefits. It is produced by the honey bees by the nectar of various flowers that they pollinate. In the ancient times, it was used as an effective medicine for good health and was also considered an effective moisturizer. It was once used as currency, for paying for commodities.Even today, honey has not lost its significance and is still equally valued, and in many cultures is the first food given to an infant.', '396honey.jpg', 'Active'),
(133, 14, 'Sugarcane', 'Sugar originated from the Arabic word sharkara and is derived from the sanskrit world sharkara. Sugar is an important part of the daily diet and  forming a class of edible substances which includes  sucrose, lactose, and fructose. It provides the human body with requisite carbohydrates and is basically extracted from sugar cane and sugar beet.  Found in fruits, honey, sorghum, sugar maple and in several other sources, it is the main ingredient of candy which is loved by children the world over. ', '213sugar cane.png', 'Active'),
(134, 14, 'Coconut', 'Coconuts are classified as a fibrous one seeded drupe. A drupe is a fruit with a hard stony covering enclosing the seed and comes from the word drupa meaning overripe olive. A coconut, and all drupes, have three layers,the exocarp, the mesocarp, and the endocarp.', '13872coconut.jpg', 'Active'),
(136, 5, 'Carrot', 'The Carrot is a perennial plant of the parsley family, which is widely cultivated in many varieties in temperate and tropical regions. It is basically a root vegetable having pinnately decompound leaves and umbels of small white or yellow flowers. The edible portion of a carrot is its taproot, eaten raw or cooked. \r\n\r\nAs an important source of carotene, carrot is widely recommended by physicians for innumerable medicinal purposes. These small eatables are a goldmine of nutrients and contain Vitamin A, B and C as well as calcium pectate. Its pectin fibre is beneficial in lowering the cholesterol level of the body. ', '10292carrot1.jpg', 'Active'),
(139, 5, 'Potato', 'Often termed as the king of all vegetables, potato is a starchy, tuberous crop vegetable of the solanaceae family. It is one of the few vegetables that mixes well with other vegetables and is known for adding a delicacy to any dish. Potato is one of the most widely used vegetables in Western temperate climates and the worlds most widely grown tuber crop as well. This starchy crop is also the fourth largest food crop of the world in terms of fresh produce after rice, wheat, and maize.\r\n\r\nDomesticated for over 10,000 years, this plant is probably native to the Andes, where it was cultivated by the Incas. There are more than one thousand known varieties, but only a fraction of this number are cultivated commercially. ', '10461potato.jpg', 'Active'),
(140, 5, 'Cucumber', 'Cucumber is a long, green and cylinder shaped edible fleshy fruit of a creeping plant. A native to India, these plants have been cultivated for thousands of years. This fruit is used primarily for pickling and for slicing as a salad. In India, salad is incomplete without this green fruit. Cucumber raita, is another popular recipe in India.\r\n\r\nBesides being widely used for culinary purposes, cucumbers are also used in facial creams, lotions, and cleansers. This anti inflammatory agent is known for its astringent and soothing properties.', '27730cucumber.jpg', 'Active'),
(141, 5, 'Lemon', 'This oval shaped yellow citrus fruit with juicy acidic flesh is a globally renowned flavouring agent used for culinary and non culinary purposes. In every corner of the world, it is a common ingredient of many cuisines, drinks and marinades. Primarily, this fruit is used for its acidic juice which contains about 5% citric acid, the substance responsible for its tart taste. The lemon is a hybrid in cultivated wild plants. The name Limonum is derived from the Arabic Limun or Limu, which in its turn probably comes from the Sanscrit Nimbuka.\r\n\r\nThe exact origin of the lemon is not known, but it is believed that this juicy fruit was originated in Asia,particularly in China and India.', '19235lemon.jpg', 'Active'),
(174, 1, 'Mango', 'Mango trees grow up to 35 to 40 m tall, with a crown radius of 10 m. The trees are long lived, as some specimens still fruit after 300 years.In deep soil, the taproot descends to a depth of 6 m, with profuse, wide spreading feeder roots, the tree also sends down many anchor roots, which penetrate several feet of soil. The leaves are evergreen, alternate, simple, 15 to 35 cm long, and 6 to 16 cm broad, when the leaves are young they are orange pink, rapidly changing to a dark, glossy red, then dark green as they mature. The flowers are produced in terminal panicles 10 to 40 cm long, each flower is small and white with five petals 5 to 10 mm long, with a mild, sweet odor suggestive of lily of the valley. Over 400 varieties of mangoes are known, many of which ripen in summer, while some give double crop. The fruit takes three to six months to ripen.', '2931mango.jpg', 'Active'),
(215, 15, 'Tea', 'Tea is an aromatic beverage commonly prepared by pouring hot or boiling water over cured leaves of the Camellia sinensis, an evergreen shrub native to Asia. ', '13351tea1.jpg', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` int(10) NOT NULL,
  `seller_id` int(10) NOT NULL,
  `category_id` int(10) NOT NULL,
  `produce_id` int(10) NOT NULL,
  `variety_id` int(10) NOT NULL,
  `title` varchar(100) NOT NULL,
  `img_1` varchar(100) NOT NULL,
  `quantity` float(10,2) NOT NULL,
  `quantity_type` varchar(25) NOT NULL,
  `description` text NOT NULL,
  `uploaded_date` date NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `seller_id`, `category_id`, `produce_id`, `variety_id`, `title`, `img_1`, `quantity`, `quantity_type`, `description`, `uploaded_date`, `status`) VALUES
(6, 1, 1, 16, 112, 'Chandler Blueberry', '926Blueberry Top Hat.jpg', 446.00, 'Gram', 'fresh blueberry directly from the farms', '2016-03-03', 'Active'),
(8, 1, 6, 70, 580, 'Cashew Nuts', '20894cashew nut.jpg', 126.00, 'Gram', 'High Quality.. hand picked', '2016-03-14', 'Active'),
(14, 6, 6, 15, 104, 'Nuts', '2091029551pj8.jpg', 0.00, 'Kilogram', 'okay', '2020-11-28', 'Inactive'),
(15, 6, 5, 136, 330, 'Laal Carrot', '7725261481239Brandywine Raspberries.jpg', 4.00, 'Quintal', 'This is red', '2020-11-30', 'Active'),
(16, 6, 7, 101, 0, 'Olive Oil', '1997399867926Blueberry Top Hat.jpg', 10.00, 'Quintal', '', '2020-11-30', 'Active'),
(17, 7, 15, 215, 0, 'Tea', '1489746203pjco1.jpg', 1.00, 'Quintal', 'This is tea', '2020-12-02', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `product_purchase_bill`
--

CREATE TABLE `product_purchase_bill` (
  `product_purchase_bill_id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `country_id` int(10) NOT NULL,
  `state_id` int(10) NOT NULL,
  `city_id` int(10) NOT NULL,
  `customer_name` varchar(25) NOT NULL,
  `customer_address` text NOT NULL,
  `pincode` varchar(10) NOT NULL,
  `customer_contact_number` varchar(15) NOT NULL,
  `purchase_date` date NOT NULL,
  `status` varchar(10) NOT NULL,
  `payment_type` varchar(25) NOT NULL,
  `payment_description` text NOT NULL,
  `seller_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_purchase_bill`
--

INSERT INTO `product_purchase_bill` (`product_purchase_bill_id`, `customer_id`, `country_id`, `state_id`, `city_id`, `customer_name`, `customer_address`, `pincode`, `customer_contact_number`, `purchase_date`, `status`, `payment_type`, `payment_description`, `seller_id`) VALUES
(55, 8, 1, 23, 22, 'Balram singh', '43th floor, gateway roal', 'Balram sin', '7894561230', '2020-05-12', 'Active', 'Card Payment', 'Card type - Master card , Card number - 1234567890213456 ,  CVV number - 156', 0),
(56, 10, 1, 18, 199, 'cus', 'nsdbsd', 'cus', '23423423432', '2020-11-28', 'Active', 'Cash on delivery', 'Card type -  , Card number -  ,  CVV number - ', 0),
(57, 0, 1, 20, 19, 'Akash', 'Vashi', '400705', '8377282112', '2020-12-02', 'Active', 'Cash on delivery', 'Card type -  , Card number -  ,  CVV number - ', 7);

-- --------------------------------------------------------

--
-- Table structure for table `product_purchase_record`
--

CREATE TABLE `product_purchase_record` (
  `purchase_record_id` int(10) NOT NULL,
  `product_purchase_bill_id` int(10) NOT NULL,
  `selling_prod_id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `quantity` int(10) NOT NULL,
  `cost` float(10,2) NOT NULL,
  `status` varchar(10) NOT NULL,
  `seller_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_purchase_record`
--

INSERT INTO `product_purchase_record` (`purchase_record_id`, `product_purchase_bill_id`, `selling_prod_id`, `customer_id`, `quantity`, `cost`, `status`, `seller_id`) VALUES
(34, 56, 8, 10, 1, 300.00, 'Active', 0),
(36, 56, 6, 10, 1, 4242.00, 'Active', 0),
(61, 55, 2, 8, 10, 249.00, 'Active', 0),
(81, 55, 1, 8, 25, 135.00, 'Active', 0),
(82, 55, 7, 8, 1, 460.00, 'Active', 0),
(85, 57, 1, 0, 1, 135.00, 'Active', 7);

-- --------------------------------------------------------

--
-- Table structure for table `purchase_order`
--

CREATE TABLE `purchase_order` (
  `purchase_order_id` int(10) NOT NULL,
  `product_id` int(10) NOT NULL,
  `purchase_request_id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `seller_id` int(10) NOT NULL,
  `purchase_order_date` date NOT NULL,
  `purchase_order_time` time NOT NULL,
  `purchase_amt` float(10,2) NOT NULL,
  `quantity` float(10,2) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `purchase_order`
--

INSERT INTO `purchase_order` (`purchase_order_id`, `product_id`, `purchase_request_id`, `customer_id`, `seller_id`, `purchase_order_date`, `purchase_order_time`, `purchase_amt`, `quantity`, `status`) VALUES
(19, 11, 32, 9, 5, '2020-09-09', '06:37:30', 200.00, 1.00, 'Paid'),
(20, 14, 34, 10, 6, '2020-11-28', '08:26:27', 150.00, 5.00, 'Paid'),
(21, 14, 35, 10, 6, '2020-11-30', '07:54:24', 150.00, 5.00, 'Paid');

-- --------------------------------------------------------

--
-- Table structure for table `purchase_order_bill`
--

CREATE TABLE `purchase_order_bill` (
  `purchase_order_bill_id` int(10) NOT NULL,
  `purchase_order_id` int(10) NOT NULL,
  `payment_type` varchar(20) NOT NULL,
  `payment_description` text NOT NULL,
  `paid_date` date NOT NULL,
  `paid_amt` float(10,2) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `purchase_order_bill`
--

INSERT INTO `purchase_order_bill` (`purchase_order_bill_id`, `purchase_order_id`, `payment_type`, `payment_description`, `paid_date`, `paid_amt`, `status`) VALUES
(15, 19, 'Visa', 'Card Holder name: Apel Card Number: 4554113489874568 Expiry date: 2022-12 CVV No.570', '2020-09-09', 200.00, 'Active'),
(16, 20, 'Master Card', 'Card Holder name: mk Card Number: 1234123412341234 Expiry date: 2020-12 CVV No.123', '2020-11-28', 150.00, 'Active'),
(17, 21, 'Master Card', 'Card Holder name: mkva Card Number: 1234432112344321 Expiry date: 2020-07 CVV No.999', '2020-11-30', 150.00, 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `purchase_request`
--

CREATE TABLE `purchase_request` (
  `purchase_request_id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `product_id` int(10) NOT NULL,
  `quantity` float(10,2) NOT NULL,
  `request_date` date NOT NULL,
  `request_date_expire` date NOT NULL,
  `note` text NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `purchase_request`
--

INSERT INTO `purchase_request` (`purchase_request_id`, `customer_id`, `product_id`, `quantity`, `request_date`, `request_date_expire`, `note`, `status`) VALUES
(31, 8, 9, 250.00, '2020-05-13', '2020-05-20', 'test purchase request', 'Pending'),
(32, 9, 11, 1.00, '2020-09-09', '2020-09-16', 'i need  emergency', 'Active'),
(33, 10, 8, 32.00, '2020-11-28', '2020-12-05', '3423423', 'Pending'),
(34, 10, 14, 5.00, '2020-11-28', '2020-12-05', 'henlo', 'Active'),
(35, 10, 14, 5.00, '2020-11-30', '2020-12-07', '', 'Active'),
(36, 10, 6, 400.00, '2020-11-30', '2020-12-07', '', 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `seller`
--

CREATE TABLE `seller` (
  `seller_id` int(10) NOT NULL,
  `seller_name` varchar(25) NOT NULL,
  `seller_address` text NOT NULL,
  `state_id` int(10) NOT NULL,
  `country_id` int(10) NOT NULL,
  `city_id` int(10) NOT NULL,
  `pincode` varchar(10) NOT NULL,
  `contact_number` varchar(15) NOT NULL,
  `mobile_no` varchar(10) NOT NULL,
  `email_id` varchar(50) NOT NULL,
  `password` varchar(25) NOT NULL,
  `bank_name` varchar(50) NOT NULL,
  `bank_branch` varchar(50) NOT NULL,
  `bank_IFSC` varchar(25) NOT NULL,
  `bank_acno` varchar(25) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `seller`
--

INSERT INTO `seller` (`seller_id`, `seller_name`, `seller_address`, `state_id`, `country_id`, `city_id`, `pincode`, `contact_number`, `mobile_no`, `email_id`, `password`, `bank_name`, `bank_branch`, `bank_IFSC`, `bank_acno`, `status`) VALUES
(1, 'Felix D Souza', 'Lawrence Villa, Seetahngoli', 18, 1, 199, '327658', '080420822111', '8748981173', 'remesha4@gmail.com', '123456789', 'State Bank of Kerala', 'Payyanur', '12659830278', '342736462738', 'Active'),
(2, 'Rovina D Souza', 'Karinja House, Ednad Post', 48, 5, 43, '400989', '9324850432', '9538445084', 'rinirovina@gmail.com', 'sellerrovina', 'Central Bank Of India', 'Beijing', 'CBBNJ730001', '009856774562986', 'Active'),
(3, 'Ankith jeshn', 'msil karn, bangalroe', 8, 1, 54, '456789', '7894561230', '9876543210', 'ankithjeshn@gmail.com', '123456789', 'icic bank', 'bangalore', 'AAS45123456', '1234567890123456', 'Active'),
(4, 'sakib', 'saidpur', 26, 1, 24, '465156', '4156456', '687841', 'sakib@gmail.com', '12345678', 'dutch', 'fgf', 'ABHY0065206', '415132151', 'Active'),
(5, 'Apel', 'saidpur', 67, 3, 302, '123456785', '1', '1', 'apel@gmail.com', '123456789', 'Bank Asia', 'Saidpur', '12345678931', '654564184561', 'Active'),
(6, 'fmm', 'bombayyyy', 20, 1, 19, '400705', '34234234', '324234243', 'fmm1@gmail.com', '12345678', 'HDFC', 'Computer', '11111111111', '6757657567', 'Active'),
(7, 'Akash', 'Vashi', 20, 1, 19, '400705', '987654328', '8377282112', 'akash@gmail.com', '11111111', 'ICICI', 'Vashi', '12341234123', '57575757', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `selling_product`
--

CREATE TABLE `selling_product` (
  `selling_prod_id` int(10) NOT NULL,
  `category_id` int(10) NOT NULL,
  `product_name` varchar(25) NOT NULL,
  `product_description` text NOT NULL,
  `product_img1` varchar(100) NOT NULL,
  `quantity_type` varchar(50) NOT NULL,
  `cost` float(10,2) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `selling_product`
--

INSERT INTO `selling_product` (`selling_prod_id`, `category_id`, `product_name`, `product_description`, `product_img1`, `quantity_type`, `cost`, `status`) VALUES
(1, 8, 'Natural Fertlizer', 'Natural fertilizer, also known as organic fertilizer, is an organic substance added to soil that contains vital plant nutrients such as nitrogen, phosphorus, and potassium. When natural fertilizer is added to soil it acts like a miracle food, stimulating plant growth. Plants slowly uptake nutrients, incorporating them into their growth and reproduction.', '4901fertilizer1.jpg', 'Kilogram', 135.00, 'Active'),
(2, 23, 'Urea Fertilizer', 'Urea is an inexpensive form of nitrogen fertilizer with an NPK. Although urea is naturally produced in humans and animals, synthetic urea is manufactured with anhydrous ammonia. Although urea often offers gardeners the most nitrogen for the lowest price on the market, special steps must be taken when applying urea to the soil to prevent the loss of nitrogen through a chemical reaction.', '6862urea.jpg', 'Kilogram', 249.00, 'Active'),
(3, 12, 'Hand Carts', 'A â€‹small â€‹vehicle with two â€‹wheels and two â€‹long â€‹handles that is â€‹pushed or â€‹pulled with â€‹your â€‹hands, used for â€‹carrying â€‹goods.', '13057cart2.jpg', 'Piece', 899.00, 'Active'),
(4, 12, 'Composter', 'Insulated design is great for any climate\r\nComposts kitchen waste hygienically and quickly\r\nEasy ,rust proof to use and can be placed outdoor.\r\nMultiple air vents are present to aid uniform composting\r\nColor for heat absorption', '16697composter1.jpg', 'Piece', 12680.00, 'Active'),
(5, 20, 'Bio Fertilizers', 'The fertilizers are used to improve the fertility of the land using biological wastes, hence the term biofertilizers, and biological wastes do not contain any chemicals which are detrimental to the living soil.', '20104bio1.jpg', 'Kilogram', 200.00, 'Active'),
(6, 12, 'Digging Shovel', 'Tempered steel blade and extended socket for maximum strength\r\nPower Step is perforated to reduce material buildup\r\nDurable fiberglass handle', '27928shovel1.jpg', 'Piece', 350.00, 'Active'),
(7, 24, 'Organic Fertilizer', 'Organic farming is a form of agriculture that relies on techniques such as crop rotation green manure compost and biological pest control. It is a form of agriculture that relies on techniques such as crop rotation green manure compost and biological pest control. \r\n', '19660org1.jpg', 'Kilogram', 460.00, 'Active'),
(8, 26, 'Cucumber Seeds', 'A brand new, unused and undamaged item that is fully opeartional and functions as intended. See the sellers listing for full details.', '1783cucumber sed.jpg', 'Gram', 100.00, 'Active'),
(9, 12, 'Transfer Shovel', 'Durable tempered steel blade\r\nFoot step for comfort and control\r\nStrong hardwood handle with poly D grip\r\n', '9240transfershovel1.jpg', 'Piece', 300.00, 'Active'),
(10, 12, 'Spades', 'Heavy duty steel blade is tempered for maximum strength\r\nFoot step for comfort and control\r\nStrong hardwood handle with Armor D grip', '24546spades1.jpg', 'Piece', 399.00, 'Active'),
(11, 21, 'Amistar Top', 'AMISTAR TOP is a co-formulation of azoxystrobin and difenoconazole for the control of a range of fungal diseases in a range of crops.', '24340175amistar-top-fungicides-500x500.jpg', 'Gram', 480.00, 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `state`
--

CREATE TABLE `state` (
  `state_id` int(10) NOT NULL,
  `country_id` int(10) NOT NULL,
  `state` varchar(25) NOT NULL,
  `description` text NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `state`
--

INSERT INTO `state` (`state_id`, `country_id`, `state`, `description`, `status`) VALUES
(12, 1, 'Goa', 'Goa is a state in western India with coastlines stretching along the Arabian Sea. Its long history as a Portuguese colony prior to 1961 is evident in its preserved', 'Active'),
(17, 1, 'Karnataka', 'Karnataka is a state in southwest India with Arabian Sea coastlines. The capital, Bengaluru (formerly Bangalore), is a high-tech hub known for its shopping and nightlife. To the southwest, Mysore is home to lavish temples including Mysore Palace, former seat of the regionâ€™s maharajas. Hampi, once the medieval Vijayanagara empireâ€™s capital, contains ruins ', 'Active'),
(18, 1, 'Kerala', 'Kerala, a state on Indias tropical Malabar Coast, has nearly 600km of Arabian Sea shoreline. Its known for its palm-lined beaches and its backwaters, a network of canals popular for cruises. Its many upscale seaside resorts include specialists in Ayurvedic treatments.', 'Active'),
(20, 1, 'Maharashtra', 'Maharashtra, a state spanning west-central India, is best known for its fast-paced capital, Mumbai (formerly Bombay). This sprawling metropolis is the seat of the Bollywood film industry. Itâ€™s also famed for sites like the British Raj-era Gateway of India monument and the cave temples at nearby Elephanta Island. To the south is the rustic, beach-lined Konkan coast, and its temple town of Ganpatipule.', 'Active'),
(29, 1, 'Tamil Nadu', 'Tamil Nadu, a southeast Indian state, is famed for its Dravidian-style Hindu temples. In Madurai, Meenakshi Amman Temple has high gopurams (tower gateways) ornamented with colorful figures. Tamil Nadu, a southeast Indian state, is famed for its Dravidian-style Hindu temples. In Madurai, Meenakshi Amman Temple has high gopurams (tower gateways) ornamented with colorful figures. ', 'Active'),
(32, 1, 'Uttar Pradesh', 'Uttar Pradesh is a state in northern India. Its city of Agra is home to the iconic Taj Mahal monument, a colossal, domed, white-marble mausoleum honoring the wife of Mughal ruler Shah Jahan. Named Mumtaz Mahal, she died in childbirth in 1631. Nearby are the 20m-high, red-brick walls of Agra Fort, a Mughal fortress and palace dating to the 16th and 17th centuries.', 'Active'),
(35, 1, 'Bihar', 'Bihar is a state in East India, bordering Nepal. It is divided by the River Ganges, which floods its fertile plains', 'Active'),
(36, 1, 'Gujarat', 'Gujarat, Indias westernmost state, has varied terrain and numerous sacred sites.', 'Active'),
(61, 1, 'Delhi', '', 'Active');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`article_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`city_id`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`country_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`),
  ADD UNIQUE KEY `email_id` (`email_id`);

--
-- Indexes for table `produce`
--
ALTER TABLE `produce`
  ADD PRIMARY KEY (`produce_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `product_purchase_bill`
--
ALTER TABLE `product_purchase_bill`
  ADD PRIMARY KEY (`product_purchase_bill_id`);

--
-- Indexes for table `product_purchase_record`
--
ALTER TABLE `product_purchase_record`
  ADD PRIMARY KEY (`purchase_record_id`);

--
-- Indexes for table `purchase_order`
--
ALTER TABLE `purchase_order`
  ADD PRIMARY KEY (`purchase_order_id`);

--
-- Indexes for table `purchase_order_bill`
--
ALTER TABLE `purchase_order_bill`
  ADD PRIMARY KEY (`purchase_order_bill_id`);

--
-- Indexes for table `purchase_request`
--
ALTER TABLE `purchase_request`
  ADD PRIMARY KEY (`purchase_request_id`);

--
-- Indexes for table `seller`
--
ALTER TABLE `seller`
  ADD PRIMARY KEY (`seller_id`),
  ADD UNIQUE KEY `email_id` (`email_id`);

--
-- Indexes for table `selling_product`
--
ALTER TABLE `selling_product`
  ADD PRIMARY KEY (`selling_prod_id`);

--
-- Indexes for table `state`
--
ALTER TABLE `state`
  ADD PRIMARY KEY (`state_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `article`
--
ALTER TABLE `article`
  MODIFY `article_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `city_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=326;

--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `country_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `produce`
--
ALTER TABLE `produce`
  MODIFY `produce_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=217;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `product_purchase_bill`
--
ALTER TABLE `product_purchase_bill`
  MODIFY `product_purchase_bill_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `product_purchase_record`
--
ALTER TABLE `product_purchase_record`
  MODIFY `purchase_record_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `purchase_order`
--
ALTER TABLE `purchase_order`
  MODIFY `purchase_order_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `purchase_order_bill`
--
ALTER TABLE `purchase_order_bill`
  MODIFY `purchase_order_bill_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `purchase_request`
--
ALTER TABLE `purchase_request`
  MODIFY `purchase_request_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `seller`
--
ALTER TABLE `seller`
  MODIFY `seller_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `selling_product`
--
ALTER TABLE `selling_product`
  MODIFY `selling_prod_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `state`
--
ALTER TABLE `state`
  MODIFY `state_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
