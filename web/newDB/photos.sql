-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 15 дек 2019 в 23:06
-- Версия на сървъра: 10.4.8-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `imagesdatabase`
--

-- --------------------------------------------------------

--
-- Структура на таблица `photos`
--

CREATE TABLE `photos` (
  `id` int(11) NOT NULL,
  `file_name` varchar(255) COLLATE utf8_bin NOT NULL,
  `user_name` varchar(100) COLLATE utf8_bin NOT NULL,
  `uploaded_on` datetime NOT NULL,
  `status` enum('1','0') COLLATE utf8_bin NOT NULL DEFAULT '1',
  `text` mediumtext COLLATE utf8_bin NOT NULL,
  `album` varchar(100) COLLATE utf8_bin NOT NULL,
  `likesUsers` mediumtext COLLATE utf8_bin NOT NULL,
  `likesCount` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Схема на данните от таблица `photos`
--

INSERT INTO `photos` (`id`, `file_name`, `user_name`, `uploaded_on`, `status`, `text`, `album`, `likesUsers`, `likesCount`) VALUES
(139, 'bali1.jpg', 'Ira', '2022-12-15 22:50:14', '1', 'I had heard stories of its beautiful beaches, lush jungles, and vibrant culture, and I could not wait to experience it all for themselves.
I arrived in Bali and checked into their hotel in Kuta. The first day, I decided to explore the town and visit the famous Kuta beach. I was amazed by the crystal clear water and the soft white sand. They spent the whole day swimming, sunbathing and enjoying the local food.
The next day, I decided to take a trip to Ubud, the cultural heart of Bali. I visited the famous Monkey Forest and were amazed by the playful monkeys roaming around. I also visited the beautiful rice terraces and traditional Balinese temples.
On their third day, I decided to take a day trip to the famous Uluwatu temple, which sits on a cliff overlooking the ocean. I watched the famous Kecak fire dance and enjoyed the sunset over the Indian Ocean.
On the fourth day, I decided to take a day trip to the beautiful Nusa Lembongan Island. I enjoyed snorkeling and diving around the island, where they saw colorful fish and coral reefs.
On their last day, I decided to relax and enjoy the hotel’s facilities. I spent the day lounging by the pool, getting massage and enjoying the beautiful tropical surroundings.
I had an amazing time in Bali, they made memories that will last forever and I could not wait to come back.', 'Bali', '', 0),
(140, 'bali2.jpg', 'Ira', '2022-12-15 22:50:14', '1', 'I had heard stories of its beautiful beaches, lush jungles, and vibrant culture, and I could not wait to experience it all for themselves.
I arrived in Bali and checked into their hotel in Kuta. The first day, I decided to explore the town and visit the famous Kuta beach. I was amazed by the crystal clear water and the soft white sand. They spent the whole day swimming, sunbathing and enjoying the local food.
The next day, I decided to take a trip to Ubud, the cultural heart of Bali. I visited the famous Monkey Forest and were amazed by the playful monkeys roaming around. I also visited the beautiful rice terraces and traditional Balinese temples.
On their third day, I decided to take a day trip to the famous Uluwatu temple, which sits on a cliff overlooking the ocean. I watched the famous Kecak fire dance and enjoyed the sunset over the Indian Ocean.
On the fourth day, I decided to take a day trip to the beautiful Nusa Lembongan Island. I enjoyed snorkeling and diving around the island, where they saw colorful fish and coral reefs.
On their last day, I decided to relax and enjoy the hotel’s facilities. I spent the day lounging by the pool, getting massage and enjoying the beautiful tropical surroundings.
I had an amazing time in Bali, they made memories that will last forever and I could not wait to come back.', 'Bali', '', 0),
(141, 'bali3.jpg', 'Ira', '2022-12-15 22:50:14', '1', 'I had heard stories of its beautiful beaches, lush jungles, and vibrant culture, and I could not wait to experience it all for themselves.
I arrived in Bali and checked into their hotel in Kuta. The first day, I decided to explore the town and visit the famous Kuta beach. I was amazed by the crystal clear water and the soft white sand. They spent the whole day swimming, sunbathing and enjoying the local food.
The next day, I decided to take a trip to Ubud, the cultural heart of Bali. I visited the famous Monkey Forest and were amazed by the playful monkeys roaming around. I also visited the beautiful rice terraces and traditional Balinese temples.
On their third day, I decided to take a day trip to the famous Uluwatu temple, which sits on a cliff overlooking the ocean. I watched the famous Kecak fire dance and enjoyed the sunset over the Indian Ocean.
On the fourth day, I decided to take a day trip to the beautiful Nusa Lembongan Island. I enjoyed snorkeling and diving around the island, where they saw colorful fish and coral reefs.
On their last day, I decided to relax and enjoy the hotel’s facilities. I spent the day lounging by the pool, getting massage and enjoying the beautiful tropical surroundings.
I had an amazing time in Bali, they made memories that will last forever and I could not wait to come back.', 'Bali', '',  0),
(142, 'bali4.jpg', 'Ira', '2022-12-15 22:50:14', '1', 'I had heard stories of its beautiful beaches, lush jungles, and vibrant culture, and I could not wait to experience it all for themselves.
I arrived in Bali and checked into their hotel in Kuta. The first day, I decided to explore the town and visit the famous Kuta beach. I was amazed by the crystal clear water and the soft white sand. They spent the whole day swimming, sunbathing and enjoying the local food.
The next day, I decided to take a trip to Ubud, the cultural heart of Bali. I visited the famous Monkey Forest and were amazed by the playful monkeys roaming around. I also visited the beautiful rice terraces and traditional Balinese temples.
On their third day, I decided to take a day trip to the famous Uluwatu temple, which sits on a cliff overlooking the ocean. I watched the famous Kecak fire dance and enjoyed the sunset over the Indian Ocean.
On the fourth day, I decided to take a day trip to the beautiful Nusa Lembongan Island. I enjoyed snorkeling and diving around the island, where they saw colorful fish and coral reefs.
On their last day, I decided to relax and enjoy the hotel’s facilities. I spent the day lounging by the pool, getting massage and enjoying the beautiful tropical surroundings.
I had an amazing time in Bali, they made memories that will last forever and I could not wait to come back.', 'Bali', '',  0),
(143, 'canada1.jpg', 'Mimi', '2022-12-15 22:50:59', '1', 'Last week, I decided to take a spontaneous trip to Canada. I was fascinated by the country’s natural beauty and wanted to experience it for myself.
I arrived in Vancouver and was greeted by the picturesque mountains and the beautiful city skyline. I checked into my hotel in the heart of the city and spent my first day exploring the town, visiting Stanley Park and taking in the views from the top of the Harbour Centre.
The next day, I decided to rent a car and drive to the famous Whistler mountain. The drive was breathtaking, with stunning views of the coast and the mountains. Once I arrived, I spent the day skiing and taking in the beautiful winter scenery.
I also took a day trip to the charming town of Victoria, located on Vancouver Island. I enjoyed wandering through the charming streets, visiting the famous Butchart Gardens and taking a ferry ride to see the majestic whales.
Overall, my trip to Canada was an unforgettable and amazing experience. The country’s natural beauty left a lasting impression on me and I could wait to come back again.', 'Canada', '', 0),
(144, 'canada2.jpg', 'Mimi', '2022-12-15 22:50:59', '1', 'Last week, I decided to take a spontaneous trip to Canada. I was fascinated by the country’s natural beauty and wanted to experience it for myself.
I arrived in Vancouver and was greeted by the picturesque mountains and the beautiful city skyline. I checked into my hotel in the heart of the city and spent my first day exploring the town, visiting Stanley Park and taking in the views from the top of the Harbour Centre.
The next day, I decided to rent a car and drive to the famous Whistler mountain. The drive was breathtaking, with stunning views of the coast and the mountains. Once I arrived, I spent the day skiing and taking in the beautiful winter scenery.
I also took a day trip to the charming town of Victoria, located on Vancouver Island. I enjoyed wandering through the charming streets, visiting the famous Butchart Gardens and taking a ferry ride to see the majestic whales.
Overall, my trip to Canada was an unforgettable and amazing experience. The country’s natural beauty left a lasting impression on me and I could wait to come back again.', 'Canada', '',  0),
(145, 'canada3.jpg', 'Mimi', '2022-12-15 22:50:59', '1', 'Last week, I decided to take a spontaneous trip to Canada. I was fascinated by the country’s natural beauty and wanted to experience it for myself.
I arrived in Vancouver and was greeted by the picturesque mountains and the beautiful city skyline. I checked into my hotel in the heart of the city and spent my first day exploring the town, visiting Stanley Park and taking in the views from the top of the Harbour Centre.
The next day, I decided to rent a car and drive to the famous Whistler mountain. The drive was breathtaking, with stunning views of the coast and the mountains. Once I arrived, I spent the day skiing and taking in the beautiful winter scenery.
I also took a day trip to the charming town of Victoria, located on Vancouver Island. I enjoyed wandering through the charming streets, visiting the famous Butchart Gardens and taking a ferry ride to see the majestic whales.
Overall, my trip to Canada was an unforgettable and amazing experience. The country’s natural beauty left a lasting impression on me and I could wait to come back again.', 'Canada', '',  0),
(146, 'canada4.jpg', 'Mimi', '2022-12-15 22:50:59', '1', 'Last week, I decided to take a spontaneous trip to Canada. I was fascinated by the country’s natural beauty and wanted to experience it for myself.
I arrived in Vancouver and was greeted by the picturesque mountains and the beautiful city skyline. I checked into my hotel in the heart of the city and spent my first day exploring the town, visiting Stanley Park and taking in the views from the top of the Harbour Centre.
The next day, I decided to rent a car and drive to the famous Whistler mountain. The drive was breathtaking, with stunning views of the coast and the mountains. Once I arrived, I spent the day skiing and taking in the beautiful winter scenery.
I also took a day trip to the charming town of Victoria, located on Vancouver Island. I enjoyed wandering through the charming streets, visiting the famous Butchart Gardens and taking a ferry ride to see the majestic whales.
Overall, my trip to Canada was an unforgettable and amazing experience. The country’s natural beauty left a lasting impression on me and I could wait to come back again.', 'Canada', '',  0),
(147, 'canada5.jpg', 'Mimi', '2022-12-15 22:50:59', '1', 'Last week, I decided to take a spontaneous trip to Canada. I was fascinated by the country’s natural beauty and wanted to experience it for myself.
I arrived in Vancouver and was greeted by the picturesque mountains and the beautiful city skyline. I checked into my hotel in the heart of the city and spent my first day exploring the town, visiting Stanley Park and taking in the views from the top of the Harbour Centre.
The next day, I decided to rent a car and drive to the famous Whistler mountain. The drive was breathtaking, with stunning views of the coast and the mountains. Once I arrived, I spent the day skiing and taking in the beautiful winter scenery.
I also took a day trip to the charming town of Victoria, located on Vancouver Island. I enjoyed wandering through the charming streets, visiting the famous Butchart Gardens and taking a ferry ride to see the majestic whales.
Overall, my trip to Canada was an unforgettable and amazing experience. The country’s natural beauty left a lasting impression on me and I could wait to come back again.', 'Canada', '',  0),
(148, 'hawaii1.jpg', 'Adi', '2022-12-15 22:52:05', '1', 'Last month, I took a trip to Hawaii to escape the cold winter weather. As soon as I arrived on the island of Oahu, I was greeted by the warm sunshine and the sound of the waves.
I stayed at a beautiful hotel in Waikiki, which was just steps away from the beach. I spent my days lounging on the beach, swimming in the ocean, and watching the sunset.
I also took a day trip to the famous North Shore, where I saw some of the biggest waves in the world and watched professional surfers ride them. It was an amazing experience to see such powerful and beautiful waves up close.
I also visited the historic Pearl Harbor and the USS Arizona Memorial, it was a moving experience to see where the United States entered World War II.
One of the highlights of my trip was a hike to the top of Diamond Head, a volcanic tuff cone. The view from the top was incredible, I could see all of Waikiki and the surrounding area.
Overall, my trip to Hawaii was an unforgettable and amazing experience. The island’s natural beauty and rich culture left a lasting impression on me and I could not wait to come back again.', 'Hawaii', '',  0),
(149, 'hawaii2.jpg', 'Adi', '2022-12-15 22:52:05', '1', 'Last month, I took a trip to Hawaii to escape the cold winter weather. As soon as I arrived on the island of Oahu, I was greeted by the warm sunshine and the sound of the waves.
I stayed at a beautiful hotel in Waikiki, which was just steps away from the beach. I spent my days lounging on the beach, swimming in the ocean, and watching the sunset.
I also took a day trip to the famous North Shore, where I saw some of the biggest waves in the world and watched professional surfers ride them. It was an amazing experience to see such powerful and beautiful waves up close.
I also visited the historic Pearl Harbor and the USS Arizona Memorial, it was a moving experience to see where the United States entered World War II.
One of the highlights of my trip was a hike to the top of Diamond Head, a volcanic tuff cone. The view from the top was incredible, I could see all of Waikiki and the surrounding area.
Overall, my trip to Hawaii was an unforgettable and amazing experience. The island’s natural beauty and rich culture left a lasting impression on me and I could not wait to come back again.', 'Hawaii', '',  0),
(150, 'hawaii3.jpg', 'Adi', '2022-12-15 22:52:05', '1', 'Last month, I took a trip to Hawaii to escape the cold winter weather. As soon as I arrived on the island of Oahu, I was greeted by the warm sunshine and the sound of the waves.
I stayed at a beautiful hotel in Waikiki, which was just steps away from the beach. I spent my days lounging on the beach, swimming in the ocean, and watching the sunset.
I also took a day trip to the famous North Shore, where I saw some of the biggest waves in the world and watched professional surfers ride them. It was an amazing experience to see such powerful and beautiful waves up close.
I also visited the historic Pearl Harbor and the USS Arizona Memorial, it was a moving experience to see where the United States entered World War II.
One of the highlights of my trip was a hike to the top of Diamond Head, a volcanic tuff cone. The view from the top was incredible, I could see all of Waikiki and the surrounding area.
Overall, my trip to Hawaii was an unforgettable and amazing experience. The island’s natural beauty and rich culture left a lasting impression on me and I could not wait to come back again.', 'Hawaii', '',  0),
(151, 'hawaii4.jpg', 'Adi', '2022-12-15 22:52:05', '1', 'Last month, I took a trip to Hawaii to escape the cold winter weather. As soon as I arrived on the island of Oahu, I was greeted by the warm sunshine and the sound of the waves.
I stayed at a beautiful hotel in Waikiki, which was just steps away from the beach. I spent my days lounging on the beach, swimming in the ocean, and watching the sunset.
I also took a day trip to the famous North Shore, where I saw some of the biggest waves in the world and watched professional surfers ride them. It was an amazing experience to see such powerful and beautiful waves up close.
I also visited the historic Pearl Harbor and the USS Arizona Memorial, it was a moving experience to see where the United States entered World War II.
One of the highlights of my trip was a hike to the top of Diamond Head, a volcanic tuff cone. The view from the top was incredible, I could see all of Waikiki and the surrounding area.
Overall, my trip to Hawaii was an unforgettable and amazing experience. The island’s natural beauty and rich culture left a lasting impression on me and I could not wait to come back again.', 'Hawaii', '', 0),
(152, 'iceland1.jpg', 'Ira', '2022-12-15 22:52:43', '1', 'Last month, I decided to take a trip to Iceland, to experience the country’s unique natural beauty. From the moment I arrived, I was struck by the otherworldly landscapes and the dramatic natural phenomena.
I spent my first day exploring Reykjavik, the capital city and it was amazing. I visited the famous Hallgrimskirkja church, walked around the charming streets and visited some of the local shops and restaurants.
The next day, I took a day trip to see the Golden Circle, where I saw the famous Geysir hot spring, Gullfoss waterfall, and Thingvellir National Park. It was an unforgettable experience, the natural beauty of the place is just mesmerizing.
I also took a tour of the famous Blue Lagoon, a geothermal spa, where I relaxed in the warm waters and enjoy the natural beauty of the surrounding area.
Another day, I took a trip to the Jökulsárlón glacier lagoon where I saw the floating icebergs and watched seals sunbathing on the black-sand beach nearby.
Overall, my trip to Iceland was an unforgettable and amazing experience. The country’s natural beauty and unique landscapes left a lasting impression on me, and I could not wait to come back again.', 'Iceland', '',  0),
(153, 'iceland2.jpg', 'Ira', '2022-12-15 22:52:43', '1', 'Last month, I decided to take a trip to Iceland, to experience the country’s unique natural beauty. From the moment I arrived, I was struck by the otherworldly landscapes and the dramatic natural phenomena.
I spent my first day exploring Reykjavik, the capital city and it was amazing. I visited the famous Hallgrimskirkja church, walked around the charming streets and visited some of the local shops and restaurants.
The next day, I took a day trip to see the Golden Circle, where I saw the famous Geysir hot spring, Gullfoss waterfall, and Thingvellir National Park. It was an unforgettable experience, the natural beauty of the place is just mesmerizing.
I also took a tour of the famous Blue Lagoon, a geothermal spa, where I relaxed in the warm waters and enjoy the natural beauty of the surrounding area.
Another day, I took a trip to the Jökulsárlón glacier lagoon where I saw the floating icebergs and watched seals sunbathing on the black-sand beach nearby.
Overall, my trip to Iceland was an unforgettable and amazing experience. The country’s natural beauty and unique landscapes left a lasting impression on me, and I could not wait to come back again.', 'Iceland', '',  0),
(154, 'iceland3.jpg', 'Ira', '2022-12-15 22:52:43', '1', 'Last month, I decided to take a trip to Iceland, to experience the country’s unique natural beauty. From the moment I arrived, I was struck by the otherworldly landscapes and the dramatic natural phenomena.
I spent my first day exploring Reykjavik, the capital city and it was amazing. I visited the famous Hallgrimskirkja church, walked around the charming streets and visited some of the local shops and restaurants.
The next day, I took a day trip to see the Golden Circle, where I saw the famous Geysir hot spring, Gullfoss waterfall, and Thingvellir National Park. It was an unforgettable experience, the natural beauty of the place is just mesmerizing.
I also took a tour of the famous Blue Lagoon, a geothermal spa, where I relaxed in the warm waters and enjoy the natural beauty of the surrounding area.
Another day, I took a trip to the Jökulsárlón glacier lagoon where I saw the floating icebergs and watched seals sunbathing on the black-sand beach nearby.
Overall, my trip to Iceland was an unforgettable and amazing experience. The country’s natural beauty and unique landscapes left a lasting impression on me, and I could not wait to come back again.', 'Iceland', '',  0),
(155, 'iceland4.jpg', 'Ira', '2022-12-15 22:52:43', '1', 'Last month, I decided to take a trip to Iceland, to experience the country’s unique natural beauty. From the moment I arrived, I was struck by the otherworldly landscapes and the dramatic natural phenomena.
I spent my first day exploring Reykjavik, the capital city and it was amazing. I visited the famous Hallgrimskirkja church, walked around the charming streets and visited some of the local shops and restaurants.
The next day, I took a day trip to see the Golden Circle, where I saw the famous Geysir hot spring, Gullfoss waterfall, and Thingvellir National Park. It was an unforgettable experience, the natural beauty of the place is just mesmerizing.
I also took a tour of the famous Blue Lagoon, a geothermal spa, where I relaxed in the warm waters and enjoy the natural beauty of the surrounding area.
Another day, I took a trip to the Jökulsárlón glacier lagoon where I saw the floating icebergs and watched seals sunbathing on the black-sand beach nearby.
Overall, my trip to Iceland was an unforgettable and amazing experience. The country’s natural beauty and unique landscapes left a lasting impression on me, and I could not wait to come back again.', 'Iceland', '',  0),
(156, 'iceland5.jpg', 'Ira', '2022-12-15 22:52:43', '1', 'Last month, I decided to take a trip to Iceland, to experience the country’s unique natural beauty. From the moment I arrived, I was struck by the otherworldly landscapes and the dramatic natural phenomena.
I spent my first day exploring Reykjavik, the capital city and it was amazing. I visited the famous Hallgrimskirkja church, walked around the charming streets and visited some of the local shops and restaurants.
The next day, I took a day trip to see the Golden Circle, where I saw the famous Geysir hot spring, Gullfoss waterfall, and Thingvellir National Park. It was an unforgettable experience, the natural beauty of the place is just mesmerizing.
I also took a tour of the famous Blue Lagoon, a geothermal spa, where I relaxed in the warm waters and enjoy the natural beauty of the surrounding area.
Another day, I took a trip to the Jökulsárlón glacier lagoon where I saw the floating icebergs and watched seals sunbathing on the black-sand beach nearby.
Overall, my trip to Iceland was an unforgettable and amazing experience. The country’s natural beauty and unique landscapes left a lasting impression on me, and I could not wait to come back again.', 'Iceland', '',  0),
(157, 'australia1.jpg', 'Mimi', '2022-12-15 22:58:13', '1', 'Last November, I took a trip to Australia to experience the country’s unique natural beauty and culture. As soon as I arrived in Sydney, I was struck by the vibrant city and the friendly locals.
I spent my first day exploring the city, visiting iconic landmarks such as the Sydney Opera House and the Sydney Harbour Bridge. I also took a ferry ride to the nearby Taronga Zoo where I saw the native wildlife including kangaroos, koalas, and wombats.
The next day, I took a day trip to the Blue Mountains, where I saw the famous Three Sisters rock formation and went for a hike to see the scenic views. The natural beauty of the place is just breathtaking.
I also took a trip to the Great Barrier Reef, where I went snorkeling and saw the colorful coral and marine life. It was an unforgettable experience to see such diverse and vibrant underwater world.
I also visited the historic town of Cairns where I learned about the rich Indigenous culture of Australia, including the customs and traditions of the local tribes.
Overall, my trip to Australia was an unforgettable and amazing experience. The country’s natural beauty, culture, and friendly people left a lasting impression on me, and I could not wait to come back again.', 'Australia', 'IraAdi', 2),
(158, 'australia2.jpg', 'Mimi', '2022-12-15 22:58:13', '1', 'Last November, I took a trip to Australia to experience the country’s unique natural beauty and culture. As soon as I arrived in Sydney, I was struck by the vibrant city and the friendly locals.
I spent my first day exploring the city, visiting iconic landmarks such as the Sydney Opera House and the Sydney Harbour Bridge. I also took a ferry ride to the nearby Taronga Zoo where I saw the native wildlife including kangaroos, koalas, and wombats.
The next day, I took a day trip to the Blue Mountains, where I saw the famous Three Sisters rock formation and went for a hike to see the scenic views. The natural beauty of the place is just breathtaking.
I also took a trip to the Great Barrier Reef, where I went snorkeling and saw the colorful coral and marine life. It was an unforgettable experience to see such diverse and vibrant underwater world.
I also visited the historic town of Cairns where I learned about the rich Indigenous culture of Australia, including the customs and traditions of the local tribes.
Overall, my trip to Australia was an unforgettable and amazing experience. The country’s natural beauty, culture, and friendly people left a lasting impression on me, and I could not wait to come back again.', 'Australia', 'IraAdi', 2),
(159, 'australia3.jpg', 'Mimi', '2022-12-15 22:58:13', '1', 'Last November, I took a trip to Australia to experience the country’s unique natural beauty and culture. As soon as I arrived in Sydney, I was struck by the vibrant city and the friendly locals.
I spent my first day exploring the city, visiting iconic landmarks such as the Sydney Opera House and the Sydney Harbour Bridge. I also took a ferry ride to the nearby Taronga Zoo where I saw the native wildlife including kangaroos, koalas, and wombats.
The next day, I took a day trip to the Blue Mountains, where I saw the famous Three Sisters rock formation and went for a hike to see the scenic views. The natural beauty of the place is just breathtaking.
I also took a trip to the Great Barrier Reef, where I went snorkeling and saw the colorful coral and marine life. It was an unforgettable experience to see such diverse and vibrant underwater world.
I also visited the historic town of Cairns where I learned about the rich Indigenous culture of Australia, including the customs and traditions of the local tribes.
Overall, my trip to Australia was an unforgettable and amazing experience. The country’s natural beauty, culture, and friendly people left a lasting impression on me, and I could not wait to come back again.', 'Australia', 'IraAdi', 2),
(160, 'australia4.jpg', 'Mimi', '2022-12-15 22:58:13', '1', 'Last November, I took a trip to Australia to experience the country’s unique natural beauty and culture. As soon as I arrived in Sydney, I was struck by the vibrant city and the friendly locals.
I spent my first day exploring the city, visiting iconic landmarks such as the Sydney Opera House and the Sydney Harbour Bridge. I also took a ferry ride to the nearby Taronga Zoo where I saw the native wildlife including kangaroos, koalas, and wombats.
The next day, I took a day trip to the Blue Mountains, where I saw the famous Three Sisters rock formation and went for a hike to see the scenic views. The natural beauty of the place is just breathtaking.
I also took a trip to the Great Barrier Reef, where I went snorkeling and saw the colorful coral and marine life. It was an unforgettable experience to see such diverse and vibrant underwater world.
I also visited the historic town of Cairns where I learned about the rich Indigenous culture of Australia, including the customs and traditions of the local tribes.
Overall, my trip to Australia was an unforgettable and amazing experience. The country’s natural beauty, culture, and friendly people left a lasting impression on me, and I could not wait to come back again.', 'Australia', 'IraAdi', 2),
(161, 'australia5.jpg', 'Mimi', '2022-12-15 22:58:13', '1', 'Last November, I took a trip to Australia to experience the country’s unique natural beauty and culture. As soon as I arrived in Sydney, I was struck by the vibrant city and the friendly locals.
I spent my first day exploring the city, visiting iconic landmarks such as the Sydney Opera House and the Sydney Harbour Bridge. I also took a ferry ride to the nearby Taronga Zoo where I saw the native wildlife including kangaroos, koalas, and wombats.
The next day, I took a day trip to the Blue Mountains, where I saw the famous Three Sisters rock formation and went for a hike to see the scenic views. The natural beauty of the place is just breathtaking.
I also took a trip to the Great Barrier Reef, where I went snorkeling and saw the colorful coral and marine life. It was an unforgettable experience to see such diverse and vibrant underwater world.
I also visited the historic town of Cairns where I learned about the rich Indigenous culture of Australia, including the customs and traditions of the local tribes.
Overall, my trip to Australia was an unforgettable and amazing experience. The country’s natural beauty, culture, and friendly people left a lasting impression on me, and I could not wait to come back again.', 'Australia', 'IraAdi', 2),
(162, 'australia6.jpg', 'Mimi', '2022-12-15 22:58:13', '1', 'Last November, I took a trip to Australia to experience the country’s unique natural beauty and culture. As soon as I arrived in Sydney, I was struck by the vibrant city and the friendly locals.
I spent my first day exploring the city, visiting iconic landmarks such as the Sydney Opera House and the Sydney Harbour Bridge. I also took a ferry ride to the nearby Taronga Zoo where I saw the native wildlife including kangaroos, koalas, and wombats.
The next day, I took a day trip to the Blue Mountains, where I saw the famous Three Sisters rock formation and went for a hike to see the scenic views. The natural beauty of the place is just breathtaking.
I also took a trip to the Great Barrier Reef, where I went snorkeling and saw the colorful coral and marine life. It was an unforgettable experience to see such diverse and vibrant underwater world.
I also visited the historic town of Cairns where I learned about the rich Indigenous culture of Australia, including the customs and traditions of the local tribes.
Overall, my trip to Australia was an unforgettable and amazing experience. The country’s natural beauty, culture, and friendly people left a lasting impression on me, and I could not wait to come back again.', 'Australia', 'IraAdi', 2),
(163, 'maldives1.jpg', 'Adi', '2022-12-15 22:59:42', '1', 'I traveled to the Maldives for a once in a lifetime vacation. I was greeted by the warm sunshine and clear blue waters upon my arrival and immediately felt the island’s tropical paradise vibes.
I stayed in an overwater bungalow at a luxurious resort, which was surrounded by crystal clear waters and had direct access to the ocean. I spent my days lounging on the deck of my bungalow, enjoying the sun and the sound of the waves.
One of the highlights of my trip was going on a snorkeling excursion to see the vibrant coral reefs and marine life. I saw schools of colorful fish, sea turtles and even a reef shark.
I also took a day trip to a local island, where I had the opportunity to learn about the island’s culture and way of life. I visited a traditional Maldivian village and learned about their fishing techniques and traditional customs.
I also indulged in some pampering at the resort’s spa, where I received a traditional Maldivian massage. It was one of the most relaxing and rejuvenating experiences I’ve ever had.
Overall, my trip to the Maldives was an unforgettable and amazing experience. The island’s natural beauty and rich culture left a lasting impression on me and I could not wait to come back again.', 'Maldives', 'Ira', 1),
(164, 'maldives2.jpg', 'Adi', '2022-12-15 22:59:42', '1', 'I traveled to the Maldives for a once in a lifetime vacation. I was greeted by the warm sunshine and clear blue waters upon my arrival and immediately felt the island’s tropical paradise vibes.
I stayed in an overwater bungalow at a luxurious resort, which was surrounded by crystal clear waters and had direct access to the ocean. I spent my days lounging on the deck of my bungalow, enjoying the sun and the sound of the waves.
One of the highlights of my trip was going on a snorkeling excursion to see the vibrant coral reefs and marine life. I saw schools of colorful fish, sea turtles and even a reef shark.
I also took a day trip to a local island, where I had the opportunity to learn about the island’s culture and way of life. I visited a traditional Maldivian village and learned about their fishing techniques and traditional customs.
I also indulged in some pampering at the resort’s spa, where I received a traditional Maldivian massage. It was one of the most relaxing and rejuvenating experiences I’ve ever had.
Overall, my trip to the Maldives was an unforgettable and amazing experience. The island’s natural beauty and rich culture left a lasting impression on me and I could not wait to come back again.', 'Maldives', 'Ira', 1),
(165, 'maldives3.jpg', 'Adi', '2022-12-15 22:59:42', '1', 'I traveled to the Maldives for a once in a lifetime vacation. I was greeted by the warm sunshine and clear blue waters upon my arrival and immediately felt the island’s tropical paradise vibes.
I stayed in an overwater bungalow at a luxurious resort, which was surrounded by crystal clear waters and had direct access to the ocean. I spent my days lounging on the deck of my bungalow, enjoying the sun and the sound of the waves.
One of the highlights of my trip was going on a snorkeling excursion to see the vibrant coral reefs and marine life. I saw schools of colorful fish, sea turtles and even a reef shark.
I also took a day trip to a local island, where I had the opportunity to learn about the island’s culture and way of life. I visited a traditional Maldivian village and learned about their fishing techniques and traditional customs.
I also indulged in some pampering at the resort’s spa, where I received a traditional Maldivian massage. It was one of the most relaxing and rejuvenating experiences I’ve ever had.
Overall, my trip to the Maldives was an unforgettable and amazing experience. The island’s natural beauty and rich culture left a lasting impression on me and I could not wait to come back again.', 'Maldives', 'Ira', 1),
(166, 'bali2.1.jpg', 'Adi', '2022-12-15 23:14:08', '1', 'Last summer, I traveled to Bali for a much-needed vacation. I was greeted by the warm and friendly locals upon my arrival and immediately felt the island’s tropical vibes.
I decided to change my accommodation and stay in a luxurious hotel in Seminyak, which was right on the beach and had a beautiful infinity pool. I spent my days lounging by the pool, enjoying the sun and the sound of the waves.
I also took a day trip to the famous Tanah Lot temple, which sits on a large rock formation in the middle of the sea. The views from the temple were breathtaking and I enjoyed watching the sunset over the Indian Ocean.
I also had the opportunity to visit the traditional villages of Ubud, where I learned about the island’s rich culture and traditional customs. I visited a local market, where I bought some traditional Balinese souvenirs.
Overall, my trip to Bali was an unforgettable and amazing experience. The island’s natural beauty and rich culture left a lasting impression on me and I could not wait to come back again. The change of accommodation made my experience even more memorable and enjoyable.', 'Bali', 'Mimi', 1),
(167, 'bali2.2.jpg', 'Adi', '2022-12-15 23:14:08', '1', 'Last summer, I traveled to Bali for a much-needed vacation. I was greeted by the warm and friendly locals upon my arrival and immediately felt the island’s tropical vibes.
I decided to change my accommodation and stay in a luxurious hotel in Seminyak, which was right on the beach and had a beautiful infinity pool. I spent my days lounging by the pool, enjoying the sun and the sound of the waves.
I also took a day trip to the famous Tanah Lot temple, which sits on a large rock formation in the middle of the sea. The views from the temple were breathtaking and I enjoyed watching the sunset over the Indian Ocean.
I also had the opportunity to visit the traditional villages of Ubud, where I learned about the island’s rich culture and traditional customs. I visited a local market, where I bought some traditional Balinese souvenirs.
Overall, my trip to Bali was an unforgettable and amazing experience. The island’s natural beauty and rich culture left a lasting impression on me and I could not wait to come back again. The change of accommodation made my experience even more memorable and enjoyable.', 'Bali', 'Mimi', 1),
(168, 'bali2.3.jpg', 'Adi', '2022-12-15 23:14:08', '1', 'Last summer, I traveled to Bali for a much-needed vacation. I was greeted by the warm and friendly locals upon my arrival and immediately felt the island’s tropical vibes.
I decided to change my accommodation and stay in a luxurious hotel in Seminyak, which was right on the beach and had a beautiful infinity pool. I spent my days lounging by the pool, enjoying the sun and the sound of the waves.
I also took a day trip to the famous Tanah Lot temple, which sits on a large rock formation in the middle of the sea. The views from the temple were breathtaking and I enjoyed watching the sunset over the Indian Ocean.
I also had the opportunity to visit the traditional villages of Ubud, where I learned about the island’s rich culture and traditional customs. I visited a local market, where I bought some traditional Balinese souvenirs.
Overall, my trip to Bali was an unforgettable and amazing experience. The island’s natural beauty and rich culture left a lasting impression on me and I could not wait to come back again. The change of accommodation made my experience even more memorable and enjoyable.', 'Bali', 'Mimi', 1),
(169, 'bali2.4.jpg', 'Adi', '2022-12-15 23:14:08', '1', 'Last summer, I traveled to Bali for a much-needed vacation. I was greeted by the warm and friendly locals upon my arrival and immediately felt the island’s tropical vibes.
I decided to change my accommodation and stay in a luxurious hotel in Seminyak, which was right on the beach and had a beautiful infinity pool. I spent my days lounging by the pool, enjoying the sun and the sound of the waves.
I also took a day trip to the famous Tanah Lot temple, which sits on a large rock formation in the middle of the sea. The views from the temple were breathtaking and I enjoyed watching the sunset over the Indian Ocean.
I also had the opportunity to visit the traditional villages of Ubud, where I learned about the island’s rich culture and traditional customs. I visited a local market, where I bought some traditional Balinese souvenirs.
Overall, my trip to Bali was an unforgettable and amazing experience. The island’s natural beauty and rich culture left a lasting impression on me and I could not wait to come back again. The change of accommodation made my experience even more memorable and enjoyable.', 'Bali', 'Mimi', 1),
(170, 'dubai1.jpg', 'Ira', '2022-12-15 23:14:08', '1', 'Last week, I decided to take a trip to Dubai to experience the city’s unique blend of modern and traditional cultures. As soon as I arrived, I was struck by the towering skyscrapers and the luxurious shopping centers.
I spent my first day exploring the city, visiting iconic landmarks such as the Burj Khalifa, the tallest building in the world, and the Dubai Mall, one of the largest shopping centers in the world. I also took a walk around the historic district of Dubai Creek, where I saw the traditional wooden boats known as abras and visited the Dubai Museum.
The next day, I took a desert safari, where I rode a camel, watched a falconry show and ended the day with a traditional Bedouin dinner under the stars. It was an unforgettable experience to see the vast desert landscape and learn more about the Bedouin culture.
I also took a boat tour of the Palm Jumeirah island, where I saw the famous man-made island and the luxury resorts and villas on it.
I also visited the Dubai Fountain, the largest choreographed fountain system in the world and watched the stunning water and light show.
Overall, my trip to Dubai was an unforgettable and amazing experience. The city’s modern architecture, luxurious lifestyle and traditional culture left a lasting impression on me, and I could not wait to come back again.', 'Dubai', 'AdiMimi', 2),
(171, 'dubai2.jpg', 'Ira', '2022-12-15 23:14:08', '1', 'Last week, I decided to take a trip to Dubai to experience the city’s unique blend of modern and traditional cultures. As soon as I arrived, I was struck by the towering skyscrapers and the luxurious shopping centers.
I spent my first day exploring the city, visiting iconic landmarks such as the Burj Khalifa, the tallest building in the world, and the Dubai Mall, one of the largest shopping centers in the world. I also took a walk around the historic district of Dubai Creek, where I saw the traditional wooden boats known as abras and visited the Dubai Museum.
The next day, I took a desert safari, where I rode a camel, watched a falconry show and ended the day with a traditional Bedouin dinner under the stars. It was an unforgettable experience to see the vast desert landscape and learn more about the Bedouin culture.
I also took a boat tour of the Palm Jumeirah island, where I saw the famous man-made island and the luxury resorts and villas on it.
I also visited the Dubai Fountain, the largest choreographed fountain system in the world and watched the stunning water and light show.
Overall, my trip to Dubai was an unforgettable and amazing experience. The city’s modern architecture, luxurious lifestyle and traditional culture left a lasting impression on me, and I could not wait to come back again.', 'Dubai', 'AdiMimi', 2),
(172, 'dubai3.jpg', 'Ira', '2022-12-15 23:14:08', '1', 'Last week, I decided to take a trip to Dubai to experience the city’s unique blend of modern and traditional cultures. As soon as I arrived, I was struck by the towering skyscrapers and the luxurious shopping centers.
I spent my first day exploring the city, visiting iconic landmarks such as the Burj Khalifa, the tallest building in the world, and the Dubai Mall, one of the largest shopping centers in the world. I also took a walk around the historic district of Dubai Creek, where I saw the traditional wooden boats known as abras and visited the Dubai Museum.
The next day, I took a desert safari, where I rode a camel, watched a falconry show and ended the day with a traditional Bedouin dinner under the stars. It was an unforgettable experience to see the vast desert landscape and learn more about the Bedouin culture.
I also took a boat tour of the Palm Jumeirah island, where I saw the famous man-made island and the luxury resorts and villas on it.
I also visited the Dubai Fountain, the largest choreographed fountain system in the world and watched the stunning water and light show.
Overall, my trip to Dubai was an unforgettable and amazing experience. The city’s modern architecture, luxurious lifestyle and traditional culture left a lasting impression on me, and I could not wait to come back again.', 'Dubai', 'AdiMimi', 2),
(173, 'dubai4.jpg', 'Ira', '2022-12-15 23:14:08', '1', 'Last week, I decided to take a trip to Dubai to experience the city’s unique blend of modern and traditional cultures. As soon as I arrived, I was struck by the towering skyscrapers and the luxurious shopping centers.
I spent my first day exploring the city, visiting iconic landmarks such as the Burj Khalifa, the tallest building in the world, and the Dubai Mall, one of the largest shopping centers in the world. I also took a walk around the historic district of Dubai Creek, where I saw the traditional wooden boats known as abras and visited the Dubai Museum.
The next day, I took a desert safari, where I rode a camel, watched a falconry show and ended the day with a traditional Bedouin dinner under the stars. It was an unforgettable experience to see the vast desert landscape and learn more about the Bedouin culture.
I also took a boat tour of the Palm Jumeirah island, where I saw the famous man-made island and the luxury resorts and villas on it.
I also visited the Dubai Fountain, the largest choreographed fountain system in the world and watched the stunning water and light show.
Overall, my trip to Dubai was an unforgettable and amazing experience. The city’s modern architecture, luxurious lifestyle and traditional culture left a lasting impression on me, and I could not wait to come back again.', 'Dubai', 'AdiMimi', 2),
(174, 'dubai5.jpg', 'Ira', '2022-12-15 23:14:08', '1', 'Last week, I decided to take a trip to Dubai to experience the city’s unique blend of modern and traditional cultures. As soon as I arrived, I was struck by the towering skyscrapers and the luxurious shopping centers.
I spent my first day exploring the city, visiting iconic landmarks such as the Burj Khalifa, the tallest building in the world, and the Dubai Mall, one of the largest shopping centers in the world. I also took a walk around the historic district of Dubai Creek, where I saw the traditional wooden boats known as abras and visited the Dubai Museum.
The next day, I took a desert safari, where I rode a camel, watched a falconry show and ended the day with a traditional Bedouin dinner under the stars. It was an unforgettable experience to see the vast desert landscape and learn more about the Bedouin culture.
I also took a boat tour of the Palm Jumeirah island, where I saw the famous man-made island and the luxury resorts and villas on it.
I also visited the Dubai Fountain, the largest choreographed fountain system in the world and watched the stunning water and light show.
Overall, my trip to Dubai was an unforgettable and amazing experience. The city’s modern architecture, luxurious lifestyle and traditional culture left a lasting impression on me, and I could not wait to come back again.', 'Dubai', 'AdiMimi', 2),
(175, 'dubai6.jpg', 'Ira', '2022-12-15 23:14:08', '1', 'Last week, I decided to take a trip to Dubai to experience the city’s unique blend of modern and traditional cultures. As soon as I arrived, I was struck by the towering skyscrapers and the luxurious shopping centers.
I spent my first day exploring the city, visiting iconic landmarks such as the Burj Khalifa, the tallest building in the world, and the Dubai Mall, one of the largest shopping centers in the world. I also took a walk around the historic district of Dubai Creek, where I saw the traditional wooden boats known as abras and visited the Dubai Museum.
The next day, I took a desert safari, where I rode a camel, watched a falconry show and ended the day with a traditional Bedouin dinner under the stars. It was an unforgettable experience to see the vast desert landscape and learn more about the Bedouin culture.
I also took a boat tour of the Palm Jumeirah island, where I saw the famous man-made island and the luxury resorts and villas on it.
I also visited the Dubai Fountain, the largest choreographed fountain system in the world and watched the stunning water and light show.
Overall, my trip to Dubai was an unforgettable and amazing experience. The city’s modern architecture, luxurious lifestyle and traditional culture left a lasting impression on me, and I could not wait to come back again.', 'Dubai', 'AdiMimi', 2),
(176, 'dubai7.jpg', 'Ira', '2022-12-15 23:14:08', '1', 'Last week, I decided to take a trip to Dubai to experience the city’s unique blend of modern and traditional cultures. As soon as I arrived, I was struck by the towering skyscrapers and the luxurious shopping centers.
I spent my first day exploring the city, visiting iconic landmarks such as the Burj Khalifa, the tallest building in the world, and the Dubai Mall, one of the largest shopping centers in the world. I also took a walk around the historic district of Dubai Creek, where I saw the traditional wooden boats known as abras and visited the Dubai Museum.
The next day, I took a desert safari, where I rode a camel, watched a falconry show and ended the day with a traditional Bedouin dinner under the stars. It was an unforgettable experience to see the vast desert landscape and learn more about the Bedouin culture.
I also took a boat tour of the Palm Jumeirah island, where I saw the famous man-made island and the luxury resorts and villas on it.
I also visited the Dubai Fountain, the largest choreographed fountain system in the world and watched the stunning water and light show.
Overall, my trip to Dubai was an unforgettable and amazing experience. The city’s modern architecture, luxurious lifestyle and traditional culture left a lasting impression on me, and I could not wait to come back again.', 'Dubai', 'AdiMimi', 2);
--
-- Indexes for dumped tables
--

--
-- Indexes for table `photos`
--
ALTER TABLE `photos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `photos`
--
ALTER TABLE `photos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=185;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
