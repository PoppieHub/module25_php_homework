-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Май 22 2022 г., 01:25
-- Версия сервера: 8.0.24
-- Версия PHP: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `module25`
--

-- --------------------------------------------------------

--
-- Структура таблицы `comment`
--

CREATE TABLE `comment` (
  `id` int UNSIGNED NOT NULL,
  `text` text NOT NULL,
  `date` date NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `image_id` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `comment`
--

INSERT INTO `comment` (`id`, `text`, `date`, `user_id`, `image_id`) VALUES
(104, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '2022-05-22', 2, 33),
(105, 'Ab magnam, ea consequatur sint tenetur vitae voluptate delectus qui quis eaque ex!', '2022-05-22', 2, 33),
(106, 'Tempora velit fuga incidunt repellendus, sequi quaerat ab delectus.', '2022-05-22', 2, 31),
(107, 'Aspernatur alias earum adipisci maxime sunt natus quo deleniti beatae nobis atque!', '2022-05-22', 2, 29),
(108, 'Rerum reiciendis molestias delectus omnis eius? Quibusdam, soluta.', '2022-05-22', 2, 32),
(109, 'Tempore quasi facilis vero quidem blanditiis impedit. Facilis, eius officiis.', '2022-05-22', 2, 30),
(110, 'Ea eum cum, magnam ab ratione, minus deleniti repellendus expedita illum nostrum quibusdam error facilis necessitatibus assumenda tempora excepturi.', '2022-05-22', 1, 33),
(111, 'Culpa minus doloremque, corporis vitae neque temporibus repellendus optio esse ullam?', '2022-05-22', 1, 33),
(112, 'Vel voluptatibus recusandae perferendis praesentium minima ex eos illo nostrum quae nisi saepe, sunt vitae laboriosam, soluta libero deleniti facilis optio error velit, dolorum distinctio in magni.', '2022-05-22', 1, 31),
(113, 'Ipsam, tempore cupiditate.', '2022-05-22', 1, 29),
(114, '', '2022-05-22', 1, 29),
(129, 'gfhgf', '2022-05-22', 3, 31),
(134, 'kjhkjhk', '2022-05-22', 3, 33),
(135, 'jhfghj', '2022-05-22', 3, 33),
(136, 'ghjhfghgf', '2022-05-22', 3, 29);

-- --------------------------------------------------------

--
-- Структура таблицы `image`
--

CREATE TABLE `image` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `path` varchar(255) NOT NULL,
  `user_id` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `image`
--

INSERT INTO `image` (`id`, `name`, `path`, `user_id`) VALUES
(23, 'no name', './uploads/92d25dfddacb8f2606b503ddcd1d2b75586449c4.jpg', 1),
(24, 'no name', './uploads/5f62933b8371b0f9be1fa75665d65332c562c0f6.jpg', 1),
(25, 'no name', './uploads/e1b02255be8e9bdd4cfaffd1127e39cc12551984.jpg', 1),
(26, 'no name', './uploads/b6d5da1e609e5a75afeed2877438434676ded613.jpg', 1),
(27, 'no name', './uploads/a5ecdf415cc18e079c70025894f40360fee9a38b.jpg', 1),
(28, 'no name', './uploads/7f448beac86e8175a60ce0ba50c045324c2ed260.jpg', 1),
(29, 'no name', './uploads/5fca26db0261dce2eca6b68756760096b8f18b18.jpg', 2),
(30, 'no name', './uploads/715c4a2e5eef0e96b108527f88154fb96f2a77de.jpg', 2),
(31, 'no name', './uploads/e9c2e112d808c25a602c14794d28efe35cbe1879.jpg', 2),
(32, 'no name', './uploads/87e2e9232ec37427b073669b93005957b5892053.jpg', 2),
(33, 'no name', './uploads/fc6dbca9d00f56c22c51e8aafc60e2e52f9e0de8.jpg', 2);

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE `user` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `hash` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `password`, `hash`) VALUES
(1, 'user', 'user@mail.me', '$2y$10$KHCemovJx6FooPxxggMb6.I6Ed.0KcEM/raBP85IbHmzKgW0fIDHm', ''),
(2, 'jhon', 'jhon@mail.me', '$2y$10$KHCemovJx6FooPxxggMb6.I6Ed.0KcEM/raBP85IbHmzKgW0fIDHm', ''),
(3, 'test', 'cajah59722@shackvine.com', '$2y$10$1vruR29qGCm/10GkXhurROvfBsVxatYbeznJMbpV9t8WjxATcMa5a', ''),
(4, 'Test2', 'test@test.ru', '$2y$10$7l99S02vq7gPW623868LNetBwq6T84UC4WsVuMwxzA69hFXkRLRd.', '');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`,`image_id`),
  ADD KEY `comment_for_image` (`image_id`);

--
-- Индексы таблицы `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Индексы таблицы `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=137;

--
-- AUTO_INCREMENT для таблицы `image`
--
ALTER TABLE `image`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT для таблицы `user`
--
ALTER TABLE `user`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `comment_ibfk_2` FOREIGN KEY (`image_id`) REFERENCES `image` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `image`
--
ALTER TABLE `image`
  ADD CONSTRAINT `image_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
