-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Авг 07 2022 г., 16:31
-- Версия сервера: 8.0.29
-- Версия PHP: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `mydb`
--

-- --------------------------------------------------------

--
-- Структура таблицы `category`
--

CREATE TABLE `category` (
  `Category_ID` int NOT NULL,
  `Category_title` varchar(45) NOT NULL,
  `img` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `way` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `category`
--

INSERT INTO `category` (`Category_ID`, `Category_title`, `img`, `way`) VALUES
(1, 'Блузы и рубашки', '/Каталог/img-1.jpg', 'bluzy.php'),
(2, 'Брюки', '/Каталог/img-2.jpg', 'bruk.php'),
(3, 'Ботинки', '/Каталог/img-3.jpg', 'shoess.php');

-- --------------------------------------------------------

--
-- Структура таблицы `category_has_product`
--

CREATE TABLE `category_has_product` (
  `Category_ID` int NOT NULL,
  `Product_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `image_product`
--

CREATE TABLE `image_product` (
  `Image_ID` int NOT NULL,
  `Product_ID` int NOT NULL,
  `Alt` varchar(30) NOT NULL,
  `Way_img` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `image_product`
--

INSERT INTO `image_product` (`Image_ID`, `Product_ID`, `Alt`, `Way_img`) VALUES
(1, 1, 'Рубашка Vittoria Vicci', '/Блузы/б-1.jpg'),
(2, 2, 'Блуза Massimo Duti', '/Блузы/б-2.jpg'),
(3, 3, 'Рубашка Snow Airwolf', '/Блузы/б-3.jpg'),
(4, 4, 'Рубашка Mironi', '/Блузы/б-4.jpg'),
(5, 5, 'Блуза Lovertin', '/Блузы/б-5.jpg'),
(6, 6, 'Блуза Urban Tiger', ''),
(7, 7, 'Блуза Zarina', ''),
(8, 8, 'Брюки  O\'stin ', '/Брюки/бр-1.jpg'),
(9, 9, 'Ботинки Dr.Martens', '/Ботинки/бот-1.jpg'),
(10, 10, 'Ботинки Alessio Nessca', '/Ботинки/бот-2.jpg'),
(11, 11, 'Ботинки Bershka', '/Ботинки/бот-3.jpg'),
(12, 12, 'Ботинки Dino Ricci Trend', '/Ботинки/бот-4.jpg'),
(13, 13, 'Брюки Befree', '/Брюки/бр-2.jpg'),
(14, 14, 'Брюки Puma', '/Брюки/бр-3.jpg'),
(15, 15, 'Брюки Kappa', '/Брюки/бр-4.jpg');

-- --------------------------------------------------------

--
-- Структура таблицы `product`
--

CREATE TABLE `product` (
  `Product_id` int NOT NULL,
  `Product_name` varchar(45) NOT NULL,
  `Description` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Activity` tinyint(1) DEFAULT NULL,
  `promo_price` int DEFAULT NULL,
  `price` int DEFAULT NULL,
  `sale_price` int DEFAULT NULL,
  `Category_ID` int NOT NULL,
  `Main_Image_ID` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `product`
--

INSERT INTO `product` (`Product_id`, `Product_name`, `Description`, `Activity`, `promo_price`, `price`, `sale_price`, `Category_ID`, `Main_Image_ID`) VALUES
(1, 'Рубашка Vittoria Vicci', 'Лен - 50%, Хлопок - 50%', 1, 3199, 4690, 3283, 1, 1),
(2, 'Рубашка Massimmo Duti', 'Хлопок - 96%, Нейлон - 3%, Эластан - 1% ', 1, 3399, 3790, 3590, 1, 2),
(3, 'Рубашка Snow Airwolf', 'Хлопок - 100% ', 1, 2799, 4129, 2930, 1, 3),
(4, 'Рубашка Mironi', 'Хлопок - 100% ', 1, 11399, 14000, 12799, 1, 4),
(5, 'Блуза Lovertin', 'Хлопок - 100% ', 1, 5199, 6000, 5699, 1, 5),
(6, 'Рубашка Urban Tiher', 'Модал - 85%, Полиэстер - 15% ', 0, 4999, 5900, 5399, 1, 6),
(7, 'Рубашка Zarina', ' Полиэстер - 65%, Хлопок - 35% ', 0, 2099, 2799, 2399, 1, 7),
(8, 'O\'stin', 'Полиэстер - 84%, Вискоза - 13%, Эластан - 3%', 1, 1999, 2599, 2299, 2, 8),
(9, 'Ботинки Dr.Martens', 'Натуральная кожа', 1, 14999, 16799, 15800, 3, 9),
(10, 'Ботинки Alessio Nessca', 'Натуральная кожа', 1, 4500, 6299, 4999, 3, 10),
(11, 'Ботинки Вershka', 'Натуральная кожа', 0, 3999, 5390, 4999, 3, 11),
(12, 'Ботинки Dino Ricci Trend ', 'Натуральная кожа', 1, 2000, 2330, 2150, 3, 12),
(13, 'Брюки Befree', 'Полиэстер - 70%, Вискоза - 25%, Эластан - 5%', 1, 3000, 3299, 3150, 2, 13),
(14, 'Брюки PUMA', 'Полиэстер - 100%', 1, 1999, 3490, 2470, 2, 14),
(15, 'Брюки Карра', 'Хлопок - 80%, Полиэстер - 20%', 1, 2349, 4299, 3290, 2, 15);

-- --------------------------------------------------------

--
-- Структура таблицы `product_has_image_product`
--

CREATE TABLE `product_has_image_product` (
  `Product_id` int NOT NULL,
  `Image_ID` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`Category_ID`);

--
-- Индексы таблицы `category_has_product`
--
ALTER TABLE `category_has_product`
  ADD PRIMARY KEY (`Category_ID`,`Product_id`),
  ADD KEY `fk_Category_has_Product_Product1_idx` (`Product_id`),
  ADD KEY `fk_Category_has_Product_Category1_idx` (`Category_ID`);

--
-- Индексы таблицы `image_product`
--
ALTER TABLE `image_product`
  ADD PRIMARY KEY (`Image_ID`);

--
-- Индексы таблицы `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`Product_id`),
  ADD KEY `fk_Product_Category1_idx` (`Category_ID`),
  ADD KEY `fk_Product_Image_product1_idx` (`Main_Image_ID`);

--
-- Индексы таблицы `product_has_image_product`
--
ALTER TABLE `product_has_image_product`
  ADD PRIMARY KEY (`Product_id`,`Image_ID`),
  ADD KEY `fk_Product_has_Image_product_Image_product1_idx` (`Image_ID`),
  ADD KEY `fk_Product_has_Image_product_Product1_idx` (`Product_id`);

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `category_has_product`
--
ALTER TABLE `category_has_product`
  ADD CONSTRAINT `fk_Category_has_Product_Category1` FOREIGN KEY (`Category_ID`) REFERENCES `category` (`Category_ID`),
  ADD CONSTRAINT `fk_Category_has_Product_Product1` FOREIGN KEY (`Product_id`) REFERENCES `product` (`Product_id`);

--
-- Ограничения внешнего ключа таблицы `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `fk_Product_Category1` FOREIGN KEY (`Category_ID`) REFERENCES `category` (`Category_ID`),
  ADD CONSTRAINT `fk_Product_Image_product1` FOREIGN KEY (`Main_Image_ID`) REFERENCES `image_product` (`Image_ID`);

--
-- Ограничения внешнего ключа таблицы `product_has_image_product`
--
ALTER TABLE `product_has_image_product`
  ADD CONSTRAINT `fk_Product_has_Image_product_Image_product1` FOREIGN KEY (`Image_ID`) REFERENCES `image_product` (`Image_ID`),
  ADD CONSTRAINT `fk_Product_has_Image_product_Product1` FOREIGN KEY (`Product_id`) REFERENCES `product` (`Product_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
