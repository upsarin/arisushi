-- phpMyAdmin SQL Dump
-- version 4.4.15.10
-- https://www.phpmyadmin.net
--
-- Хост: localhost
-- Время создания: Апр 10 2017 г., 22:47
-- Версия сервера: 5.6.33-79.0
-- Версия PHP: 5.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `u0205105_pioneer`
--

-- --------------------------------------------------------

--
-- Структура таблицы `buys`
--

CREATE TABLE IF NOT EXISTS `buys` (
  `id` int(11) NOT NULL,
  `name` varchar(1000) DEFAULT NULL,
  `summ` int(11) DEFAULT NULL,
  `desc` varchar(10000) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `adress` varchar(50) DEFAULT NULL,
  `user_name` varchar(50) DEFAULT NULL,
  `buy_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `active` varchar(50) DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `cats`
--

CREATE TABLE IF NOT EXISTS `cats` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `parent` int(11) DEFAULT NULL,
  `desc` varchar(255) DEFAULT NULL,
  `preview_desc` varchar(255) DEFAULT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `active` varchar(255) DEFAULT 'N'
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `cats`
--

INSERT INTO `cats` (`id`, `name`, `parent`, `desc`, `preview_desc`, `alias`, `active`) VALUES
(1, 'Корневая', 0, 'Корневая категория', 'Корневая категория', 'all', 'Y'),
(2, 'Курсы', 1, NULL, NULL, 'course', 'Y'),
(3, 'Новости', 1, '', '', 'novosti', 'Y'),
(4, 'Услуги', 1, NULL, NULL, 'services', 'Y'),
(5, 'Видео', 1, NULL, NULL, NULL, 'Y'),
(6, 'pioneerdjtv', 5, NULL, NULL, NULL, 'Y'),
(7, 'pioneerdjschool', 5, NULL, NULL, NULL, 'Y');

-- --------------------------------------------------------

--
-- Структура таблицы `content`
--

CREATE TABLE IF NOT EXISTS `content` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `cat` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `keywords` varchar(255) DEFAULT NULL,
  `metakeys` varchar(255) DEFAULT NULL,
  `user` int(11) DEFAULT NULL,
  `active_from` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `active_to` timestamp NULL DEFAULT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `fav` varchar(255) DEFAULT NULL,
  `desc` text,
  `preview_desc` text,
  `page_id` int(11) DEFAULT NULL,
  `active` varchar(255) DEFAULT 'Y',
  `fields` varchar(255) DEFAULT 'N',
  `parent_temp` varchar(255) DEFAULT NULL,
  `child_temp` varchar(255) DEFAULT NULL,
  `temp_folder` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `content`
--

INSERT INTO `content` (`id`, `name`, `cat`, `title`, `keywords`, `metakeys`, `user`, `active_from`, `active_to`, `alias`, `fav`, `desc`, `preview_desc`, `page_id`, `active`, `fields`, `parent_temp`, `child_temp`, `temp_folder`) VALUES
(1, 'course-base', '2', 'Базовый курс DJ Школы', NULL, NULL, 7, '2017-02-13 03:59:49', '2016-11-21 13:19:32', 'course-base', NULL, '<p class="description">Курс предназначен для тех, кто хочет стать диджеем и пока что не обладает навыками сведения на DJ оборудовании или имеющихся навыков недостаточно для начала выступлений в ночных заведениях.</p>', '<p>Курс предназначен для тех, кто хочет стать диджеем и пока что не обладает навыками сведения на DJ оборудовании или имеющихся навыков недостаточно для начала выступлений в ночных заведениях.</p>', 101, 'Y', 'N', 'pioneer', 'detailCourse', 'default'),
(2, 'pro-course', '2', 'PRO курс DJ Школы', NULL, NULL, 7, '2016-11-27 22:10:39', '2016-11-27 21:58:34', 'pro-course', NULL, NULL, 'Курс предназначен для тех, кто уже обладает навыками владения DJ оборудованием, но хотел бы значительно повысить свой уровень. PRO курс - это поэтапная детальная проработка каждого аспекта навыков работы диджея: начиная с безукоризненного попадания в бит и заканчивая игрой на 4-х проигрывателях одновременно!', 101, 'Y', 'N', 'pioneer', 'detailCourse', 'default'),
(3, 'scratch-base', '2', 'Scratch DJ курс DJ Школы', NULL, NULL, 7, '2016-11-27 22:11:23', '2016-11-27 22:11:23', 'scratch-base', NULL, NULL, 'Курс предназначен как для тех кто только хочет освоить Scratch, так и для тех, кто желает поднять имеющиеся навыки до максимума', 101, 'Y', 'N', 'pioneer', 'detailCourse', 'default'),
(4, 'kids-course', '2', 'Kids курс DJ Школы', NULL, NULL, 7, '2016-11-27 22:13:55', '2016-11-27 22:13:22', 'kids-course', NULL, NULL, 'Курс предназначен для детей и подростков от 8 до 14 лет, желающих научиться играть на DJ оборудовании. Начальные знания и навыки не обязательны.', 101, 'Y', 'N', 'pioneer', 'detailCourse', 'default'),
(5, 'midi-course', '2', 'MIDI курс DJ Школы', NULL, NULL, 7, '2016-11-27 22:15:16', '2016-11-27 22:14:22', 'midi-course', NULL, NULL, 'Курс предназначен для тех, кто уже знаком с игрой на классическом DJ комплекте микшер &#43; CDJ,  но хочет научится играть на Midi-контроллерах и в совершенстве овладеть основными программами для диджеинга: rekordbox dj, Serato DJ и Traktor Pro 2', 101, 'Y', 'N', 'pioneer', 'detailCourse', 'default'),
(6, 'vinyl-course', '2', 'Vinyl курс DJ Школы', NULL, NULL, 7, '2016-11-27 22:16:18', '2016-11-27 22:16:18', 'vinyl-course', NULL, NULL, 'Курс предназначен для тех, кто уже умеет играть на цифровом оборудовании (CD, USB, Midi), но хочет научится сводить на виниловых проигрывателях.', 101, 'Y', 'N', 'pioneer', 'detailCourse', 'default'),
(7, 'tech-dj-course', '2', 'Техничный диджеинг курс DJ Школы', NULL, NULL, 7, '2016-11-27 22:17:28', '2016-11-27 22:17:29', 'tech-dj-course', NULL, NULL, 'Курс предназначен для тех, кто хочет научится интегрировать скретч и фастмиксинг в свои выступления и научиться техничной и креативной работе в своих выступлениях.', 101, 'Y', 'N', 'pioneer', 'detailCourse', 'default'),
(8, 'music-write-base', '2', 'Базовый курс Школы Написания Музыки', NULL, NULL, 7, '2016-11-27 22:19:08', '2016-11-27 22:19:08', 'music-write-base', NULL, NULL, 'Курс создан для того, чтобы ученик обрел уверенную платформу знаний в области создания электронной музыки. По завершении этого курса у выпускника будут все необходимые знания для начала полноценной работы над продакшеном своих собственных треков, обладающих хорошим качеством и индивидуальностью', 101, 'Y', 'N', 'pioneer', 'detailCourse', 'default'),
(9, 'music-write-pro', '2', 'PRO курс Школы Написания Музыки', NULL, NULL, 7, '2016-11-27 22:20:19', '2016-11-27 22:20:19', 'music-write-pro', NULL, NULL, 'Курс предназначен для тех, кто уже имеет законченные треки, но не может добиться нужного звучания, накрутить нужный звук. Именно этот курс поможет доделать все ваши незаконченные треки, улучшить навыки написания музыки, освоить эквализацию и компрессию, заполнить все пробелы', 101, 'Y', 'N', 'pioneer', 'detailCourse', 'default'),
(10, 'music-write-level-up', '2', 'Level UP курс Школы Написания Музыки', NULL, NULL, 7, '2016-11-27 22:21:30', '2016-11-27 22:21:30', 'music-write-level-up', NULL, NULL, 'Курс является конечным курсом для достижения максимальных навыков в обработке собственных треков. Структурируется только исходя из Ваших потребностей как по объёму знаний так и по количеству занятий', 101, 'Y', 'N', 'pioneer', 'detailCourse', 'default'),
(11, 'salfedgio-course', '2', 'Сольфеджио курс Школы Написания Музыки', NULL, NULL, 7, '2016-11-27 23:50:05', '2016-11-27 23:48:47', 'salfedgio-course', NULL, NULL, NULL, 101, 'Y', 'N', 'pioneer', 'detailCourse', 'default'),
(13, 'vocal-course', '2', 'Vocal курс Школы Написания Музыки', NULL, NULL, 7, '2016-11-27 23:50:41', '2016-11-27 23:50:41', 'vocal-course', NULL, NULL, NULL, 101, 'Y', 'N', 'pioneer', 'detailCourse', 'default'),
(25, 'sale_system', '4', 'Скидочная система', 'скидочная система новосибирск', 'скидочная система pioneerdjschool', 7, '2017-02-11 07:05:28', '0000-00-00 00:00:00', 'skidochny-sistem', NULL, '<div class="row">\r\n<div class="sections-holder responsive">\r\n<div class="service-includes">\r\n<p>Подарочная карта - вы вносите депозит и оформляете данную карту на человека, которому собираетесь сделать презент. После торжества данный человек может потратить депозит карты на обучение в DJ Школе, на приобретение оборудования в DJ Магазине, либо на тренинг в нашем DJ Центре в формате абонемента или разовых посещений.</p>\r\n<p class="description">&nbsp;</p>\r\n<p>Карта выпускника DJ Школы Pioneer DJ School - многофункциональная карта включающая в себя следующие привилегии:</p>\r\n<p class="description">&nbsp;</p>\r\n<ul>\r\n<li>скидка на приобретение оборудования 10% от рекомендованной розничной цены</li>\r\n<li>скидка на последующие курсы DJ Центра</li>\r\n<li>посещение закрытых мастер-классов, интервью и презентаций новинок по DJ Оборудованию</li>\r\n<li>привилегии на основе системы продвижения выпускников Pioneer DJ Family</li>\r\n</ul>\r\n<br><strong>Карта выдаётся при:</strong><br>\r\n<ul>\r\n<li>окончании любого курса DJ Школы Pioneer DJ School</li>\r\n<li>приобретении любого оборудования в DJ Магазине Pioneer DJ School</li>\r\n<li>оформлении тренинга в DJ Центре Pioneer DJ School</li>\r\n<li>оформлении подарочной карты и внесении на неё депозита</li>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<p>Тренинг-абонемент - карта, оформленная на человека, который приобрёл тренинг в DJ Центре Pioneer DJ Moscow</p>\r\n<p class="description">&nbsp;</p>\r\n<p>Наши преимущества:</p>\r\n<p class="description">&nbsp;</p>\r\n<ul>\r\n<li>Официальная школа бренда Pioneer DJ в России</li>\r\n<li>Серьёзное партнерское вознаграждение</li>\r\n<li>Только самое современное и новое оборудование Pioneer</li>\r\n<li>Уникальная система по продвижению и трудоустройству выпускников</li>\r\n<li>Индивидуальный подход к каждому клиенту</li>\r\n<li>Качественное обучение, по достоинству оценённое учениками</li>\r\n<li>Хорошая репутация и лучшие партнёры</li>\r\n<li>Широкая аудитория онлайн-сообществ DJ Центров</li>\r\n<li>Уникальная атмосфера и свое коммьюнити</li>\r\n</ul>\r\n<p>&nbsp;</p>\r\n</div>\r\n</div>\r\n</div>', '<p>Скидочная система Pioneer DJ School - именные карты Pioneer DJ которые можно применять одновременно по нескольким видам деятельности DJ Центра</p>', 102, 'Y', 'N', 'pioneer', 'detailServices', 'default'),
(26, 'partnership', '4', 'Партнёрская программа', NULL, NULL, 7, '2017-02-11 07:19:44', '2016-11-28 06:59:03', 'partnership', NULL, '<div class="row">\r\n                    <div class="sections-holder responsive">\r\n                        <div class="service-includes">\r\n                        \r\n                            <p>Рекомендуйте наши курсы друзьям и получайте деньги за каждого студента!</p>\r\n                            <p class="description">Внимание!<br>Приглашайте друзей и получайте 1000 рублей за каждого студента, оплатившего обучение по вашей рекомендации. Приглашенный вами студент так же получит скидку 1000 руб.\r\n\r\n                            </p>\r\n\r\n                        \r\n                            <p>Кроме того, в качестве дополнительного бонуса у партнеров есть возможность бесплатного обучения на курсах школы:</p>\r\n                            <p class="description"></p><ul><li>Каждые 10 клиентов - бесплатный курс от школы на выбор.</li></ul>\r\n\r\n                            <p></p>\r\n\r\n                        \r\n                            <p>Мы нацелены на долгосрочные и плодотворные отношения с партнерами, поэтому сами заинтересованы в Ваших высоких результатах!</p>\r\n                            <p class="description">\r\n\r\n                            </p>\r\n\r\n                        \r\n                            <p>Наши преимущества:</p>\r\n                            <p class="description"></p><ul><li>Официальная школа бренда Pioneer DJ в России</li><li>Серьёзное партнерское вознаграждение</li><li>Только самое современное и новое оборудование Pioneer</li><li>Уникальная система по продвижению и трудоустройству выпускников</li><li> Индивидуальный подход к каждому клиенту</li><li>Качественное обучение, по достоинству оценённое учениками</li><li>Хорошая репутация и лучшие партнёры</li><li>Широкая аудитория онлайн-сообществ DJ Центров</li><li>Уникальная атмосфера и свое коммьюнити</li></ul>\r\n\r\n                            <p></p>\r\n\r\n                        \r\n\r\n                        </div>\r\n                        \r\n                    </div>\r\n                </div>', 'Добро пожаловать в простую и прибыльную партнерскую программу "ПРИВЕДИ ДРУЗЕЙ" от DJ Школы и Школы Написания музыки Pioneer DJ School', 102, 'Y', 'N', 'pioneer', 'detailServices', 'default'),
(27, 'photosession', '4', 'Фотосессия (DJ портфолио)', NULL, NULL, 7, '2016-11-28 07:10:44', '2016-11-28 07:06:41', 'photosession', NULL, NULL, 'Сделай себе крутые фотографии для своего DJ Портфолио', 102, 'Y', 'N', 'pioneer', 'detailServices', 'default'),
(28, 'rent', '4', 'Аренда DJ Оборудования', NULL, NULL, 7, '2016-11-28 07:10:44', '2016-11-28 07:08:13', 'rent', NULL, NULL, 'Предоставление в аренду различного DJ оборудования Pioneer DJ', 102, 'Y', 'N', 'pioneer', 'detailServices', 'default'),
(29, 'traning', '4', 'Разовое посещение DJ Центра в формате свободной тренировки.', NULL, NULL, 7, '2016-11-28 07:10:45', '2016-11-28 07:08:54', 'traning', NULL, NULL, 'Для тренинга предоставляется абсолютно любое DJ Оборудование которое представлено в DJ Центре. <br>Бронирование даты и времени происходит заранее.', 102, 'Y', 'N', 'pioneer', 'detailServices', 'default'),
(30, 'videomix', '4', 'Видео-микс на Pioneer DJ TV', NULL, NULL, 7, '2016-11-28 07:10:46', '2016-11-28 07:10:15', 'videomix', NULL, NULL, 'Запись Promo видео-микса на студии Pioneer DJ TV', 102, 'Y', 'N', 'pioneer', 'detailServices', 'default'),
(31, 'Конкурс Репостов от Pioneer DJ School', '3', 'Конкурс Репостов от Pioneer DJ School', 'конкурс репостов', 'конкурс репостов', 7, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'konkurs-repostov-ot-pioneer-dj-school', NULL, '<p>Конкурс репостов от Pioneer DJ School в группе <a href="http://vk.com/pioneerdjschool" target="_blank" rel="noopener noreferrer">vk.com/pioneerdjschool</a><br /><br />Правила:<br />1. Подписаться на группу <a href="http://vk.com/PioneerDJSchool" target="_blank" rel="noopener noreferrer">vk.com/PioneerDJSchool</a><br />2. Подписаться на группу <a href="http://vk.com/PioneerDJRussia" target="_blank" rel="noopener noreferrer">vk.com/PioneerDJRussia</a><br />3. Сделать репост этой записи<br />4. Дождаться, не удаляя репост, 25 декабря и узнать результаты.<br /><br />Приз - Midi-контроллер DDJ-WeGO4<br /><br />Финал: 25 декабря, 20:00 по Москве<br /><br />Победитель определится генератором случайных чисел. Видео с результатом будет опубликовано в группе <a href="http://vk.com/pioneerdjschool" target="_blank" rel="noopener noreferrer">vk.com/pioneerdjschool</a>.<br /><br />Участвуй! И надеемся что удача улыбнётся именно тебе!</p>', '<p>Конкурс репостов от Pioneer DJ School в группе <a href="https://vk.com/pioneerdjschoo">vk.com/pioneerdjschool</a></p>', 100, 'Y', 'N', 'pioneer', 'detailNews', 'default'),
(32, 'Подарочные сертификаты Pioneer DJ School', '3', 'Подарочные сертификаты Pioneer DJ School', '', '', 7, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'podarochnye-sertifikaty-pioneer-dj-school', NULL, '<p>Скоро Новый Год и все всё больше и больше задумываются над подарками родным и близким.<br /><br />Сообщаем, что в каждом из наших DJ Центров вы можете приобрести ПОДАРОЧНЫЙ СЕРТИФИКАТ на любую сумму!<br /><br />Сертификат может быть использован как на обучение DJ мастерству или написанию музыки, так и на приобретение DJ Оборудования или на любую из услуг DJ Центра!<br /><br />Для подробной информации обратитесь в группу ближайшего от вас DJ Центра Pioneer DJ School:<br />- Москва - <a href="http://vk.com/pioneerdjmsk" target="_blank" rel="noopener noreferrer">vk.com/pioneerdjmsk</a><br />- Санкт Петербург - <a href="http://vk.com/pioneerdjspb" target="_blank" rel="noopener noreferrer">vk.com/pioneerdjspb</a><br />- Новосибирск - <a href="http://vk.com/pioneerdjnsk" target="_blank" rel="noopener noreferrer">vk.com/pioneerdjnsk</a><br />- Алматы (Казахстан) - <a href="http://vk.com/pioneerdjalmaty" target="_blank" rel="noopener noreferrer">vk.com/pioneerdjalmaty</a><br /><br />P.S. Всех с приближающимся Новым Город и Рождеством!</p>', '<p>Скоро Новый Год и все всё больше и больше задумываются над подарками родным и близким.<br /><br />Сообщаем, что в каждом из наших DJ Центров вы можете приобрести ПОДАРОЧНЫЙ СЕРТИФИКАТ на любую сумму!</p>', 100, 'Y', 'N', 'pioneer', 'detailNews', 'default'),
(33, 'Открытый Мастер-класс и лайв на promodj.tv от #KRAZYRAF @ Pioneer DJ Moscow', '3', 'Открытый Мастер-класс и лайв на promodj.tv от #KRAZYRAF @ Pioneer DJ Moscow', '', '', 7, '2017-01-04 21:59:55', '0000-00-00 00:00:00', 'otkrytyi-master-klass-i-laiv-na-promodj-tv-ot-krazyraf-@-pioneer-dj-moscow', NULL, '<p>Приглашаем на открытый мастер-класс и лайв на <a href="https://vk.com/away.php?to=http%3A%2F%2Fpromodj.tv" target="_blank" rel="noopener noreferrer">promodj.tv</a>от <a href="https://vk.com/feed?section=search&amp;q=%23KRAZYRAF">#KRAZYRAF</a> в Pioneer DJ Moscow<br /><br />&gt; Чемпион СНГ по Лайв-Битмейкингу в 2013 году!<br />&gt; Саунд-продюсер, пианист, аранжировщик.<br /><a href="https://vk.com/feed?section=search&amp;q=%23KRAZYRAF">#KRAZYRAF</a> - один из немногих людей в мире, обладающих сверхскоростной техникой и механикой игры на семплерах.<br /><br />Впервые начал изучать синтезатор и музыку в целом в 4 года. Лауреат конкурсов по классическому фортепиано, начиная от районных, заканчивая международными. <br /><br />C 2012 года выбирает в качестве основного инструмента для выступлений Akai MPC, a c конца 2016 года <a href="https://vk.com/feed?section=search&amp;q=%23KRAZYRAF">#KRAZYRAF</a> в качестве шоу показывает свои уникальные способности, используя сразу два семплера Pioneer TORAIZ SP-16!<br /><br />ТЕМА: LIVE перформанс и использование Pioneer TORAIZ SP-16<br /><br />ВРЕМЯ: Воскресенье, 18 декабря - в 18:00<br /><br />МЕСТО: Официальная DJ школа Pioneer DJ Moscow (Москва, м. Курская, Нижний Сусальный пер. 5/4 - БЦ АРМА)<br /><br />КОНТАКТЫ: +7 (916) 942-52-48<br /><br />Не пропустите! <br />Автономный и профессиональный семплер и настоящего мастера своего дела <a href="https://vk.com/feed?section=search&amp;q=%23KRAZYRAF">#KRAZYRAF</a>!</p>', '<p>Приглашаем на открытый мастер-класс и лайв на promodj.tv<br /> от #KRAZYRAF в Pioneer DJ Moscow</p>\r\n<p>Чемпион СНГ по Лайв-Битмейкингу в 2013 году! Саунд-продюсер, пианист, аранжировщик. #KRAZYRAF</p>\r\n<p>- один из немногих людей в мире, обладающих сверхскоростной техникой и механикой игры на семплерах.</p>', 100, 'Y', 'N', 'pioneer', 'detailNews', 'default'),
(34, 'День Открытых Дверей @ Pioneer DJ Novosibirsk', '3', 'День Открытых Дверей @ Pioneer DJ Novosibirsk', '', '', 7, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'den-otkrytyh-dverei-@-pioneer-dj-novosibirsk', NULL, '<p>Новогодний ДЕНЬ ОТКРЫТЫХ ДВЕРЕЙ в DJ Школе Pioneer DJ Novosibirsk <br /><br />Старт 18.12 в 18:00<br /><br />Вас ждут:<br />&bull; Общение с Преподавателями<br />&bull; Cкидки и подарки от партнёров<br /><br />&bull; Подробности: +7-913-015-90-09<br /><br />Место: Официальная DJ школа Pioneer DJ Novosibirsk (Новосибирск, пр-т. Димитрова 7 оф.407)<br /><br />Не забывайте, все кто придёт и запишется в этот день получит скидку на любой из курсов школы! Ни одни вопрос не останется без внимания! Ждём всех в гости!</p>', '<p>Новогодний ДЕНЬ ОТКРЫТЫХ ДВЕРЕЙ в DJ Школе Pioneer DJ Novosibirsk <br /><br />Старт 18.12 в 18:00<br /><br />Вас ждут:<br />&bull; Общение с Преподавателями<br />&bull; Cкидки и подарки от партнёров</p>', 100, 'Y', 'N', 'pioneer', 'detailNews', 'default'),
(35, 'День Открытых Дверей @ Pioneer DJ Moscow', '3', 'День Открытых Дверей @ Pioneer DJ Moscow', 'День Открытых Дверей ', 'День Открытых Дверей ', 7, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'den-otkrytyh-dverei-@-pioneer-dj-moscow', NULL, '<p>Старт в пятница 16.12 в 18:00<br /><br />Вас ждут:<br />&bull; Презентация курсов DJ Школы и Школы Написания Музыки<br />&bull; Общение с Преподавателями<br /><br />Мы празднуем день рождения! И в честь нашего праздника делаем весь декабрь! Первым приятным подарком является скидка на любой курс обучения нашей школы! <br /><br />Следите за новостями и вступайте в группу Pioneer DJ Moscow &bull; <a href="http://vk.com/pioneerdjmsk" target="_blank" rel="noopener noreferrer">vk.com/pioneerdjmsk</a><br /><br />&bull; Подробности: +7(916)942-52-48<br /><br />Место: Официальная DJ школа Pioneer DJ Moscow (Москва, м. Курская, Нижний Сусальный пер. 5/4 - БЦ АРМА)<br /><br />Протестируй самый технически оснащённый DJ Центр Pioneer DJ В ДЕНЬ РОЖДЕНИЯ! Ждём всех в гости!</p>', '<p>Старт в пятница 16.12 в 18:00<br /><br />Вас ждут:<br />&bull; Презентация курсов DJ Школы и Школы Написания Музыки<br />&bull; Общение с Преподавателями</p>', 100, 'Y', 'N', 'pioneer', 'detailNews', 'default'),
(52, 'Открытый Матер-класс от DMC SevenEver в Pioneer DJ Novosibirsk', '3', 'Открытый Матер-класс от DMC SevenEver в Pioneer DJ Novosibirsk', '', '', 7, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'otkrytyi-mter-klss-ot-dmc-sevenever-v-pioneer-dj-novosibirsk', NULL, '<p>Приглашаем на открытый матер-класс от DMC SevenEver<br />В Официальную школу Pioneer DJ Novosibirsk<br /><br />На этом мастер-классе мы рассмотрим преимущества и особенности профессии DMC. SevenEver является англо говорящим по-Вокалистом, DJ, MC, продюсер из России. В настоящее время он является одним из лучших MC в России. Его собственные произведения и его треки с вокалом часто занимают высокие места в хит-парадах, на радио и играют в клубах по всему миру.<br /><br />ТЕМА: DMC SevenEver работа DJ в формате DMC<br /><br />ВРЕМЯ: 15 января 18:00<br /><br />МЕСТО: Официальная DJ школа Pioneer DJ Novosibirsk (Новосибирск пр. Димитрова 7 оф. 407) - <a href="https://vk.com/pioneerdjnsk">vk.com/pioneerdjnsk</a><br /><br />КОНТАКТЫ: +7 (913) 015-90-09<br /><br /><a href="https://vk.com/feed?section=search&amp;q=%23pioneerdjschool">#pioneerdjschool</a> <a href="https://vk.com/feed?section=search&amp;q=%23%D0%B4%D0%B8%D0%B4%D0%B6%D0%B5%D0%B9%D1%88%D0%BA%D0%BE%D0%BB%D0%B0">#диджейшкола</a> <a href="https://vk.com/feed?section=search&amp;q=%23dmc">#dmc</a> <a href="https://vk.com/feed?section=search&amp;q=%23sevenever">#sevenever</a></p>', '<p>Открытый Матер-класс от DMC SevenEver в Pioneer DJ Novosibirsk</p>', 100, 'Y', 'N', 'pioneer', 'detailNews', 'default'),
(53, 'tenDANCE show w/ Mike Spirit @ Pioneer DJ TV | Moscow ', '6', 'tenDANCE show w/ Mike Spirit @ Pioneer DJ TV | Moscow ', '', '', 7, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'tendance-show-w--mike-spirit-@-pioneer-dj-tv-|-moscow-', NULL, '', '', 106, 'Y', 'N', 'pioneer', 'detailNews', 'default'),
(54, 'Master-class DJ Kirillich - "Как стать успешным гастролирующим диджеем" @ Pioneer DJ School | Moscow', '7', 'Master-class DJ Kirillich - "Как стать успешным гастролирующим диджеем" @ Pioneer DJ School | Moscow', '', '', 7, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'mster-clss-dj-kirillich----kk-stt-uspeshnym-gstroliruiushim-didzheem--@-pioneer-dj-school-|-moscow', NULL, '', '', 106, 'Y', 'N', 'pioneer', 'detailNews', 'default'),
(55, 'mster-clss-krazyraf----toriz--@-pioneer-dj-school-|-moscow', '7', 'Master-class #KRAZYRAF - "Toraiz" @ Pioneer DJ School | Moscow', '', '', 7, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'mster-clss-krazyraf----toriz--@-pioneer-dj-school-|-moscow', NULL, '', '', 106, 'Y', 'N', 'pioneer', 'detailNews', 'default'),
(56, '22-01---den-otkrytyh-dverei-@-pioneer-dj-moscow-', '3', '22.01 - ДЕНЬ ОТКРЫТЫХ ДВЕРЕЙ @ Pioneer DJ Moscow ', '', '', 7, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '22-01---den-otkrytyh-dverei-@-pioneer-dj-moscow-', NULL, '<p>DJ Школа и Школа Написания Музыки Pioneer DJ Moscow приглашает на ДЕНЬ ОТКРЫТЫХ ДВЕРЕЙ!<br /><br />Старт в воскресение 22.01 в 18:00<br /><br />Вас ждут:<br />&bull; Презентация курсов DJ Школы и Школы Написания Музыки<br />&bull; Общение с Преподавателями<br />&bull; Скидки на обучение<br /><br />Следите за новостями и вступайте в группу Pioneer DJ Moscow &bull; <a href="https://vk.com/pioneerdjmsk" target="_blank" rel="noopener noreferrer">vk.com/pioneerdjmsk</a><br /><br />&bull; Подробности: +7 916 942-52-48<br /><br />Все кто запишется в этот день получит скидку 10% на любой из курсов школы! Ни одни вопрос не останется без внимания! Ждём всех в гости!</p>\r\n<p>#pioneerdjschool #pioneerdjmsk #pioneerdj</p>', '<p>22.01 -&nbsp;ДЕНЬ ОТКРЫТЫХ ДВЕРЕЙ @ Pioneer DJ Moscow&nbsp;</p>', 100, 'Y', 'N', 'pioneer', 'detailNews', 'default'),
(57, '28.01 - Открытый мастер-класс по Rekordbox DJ от DVJ Mishin в Pioneer DJ Almaty', '3', '28.01 - Открытый мастер-класс по Rekordbox DJ от DVJ Mishin в Pioneer DJ Almaty', 'rekordbox dj pioneer dj almaty', '', 7, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '28-01---otkrytyi-mster-klss-po-rekordbox-dj-ot-dvj-mishin-v-pioneer-dj-almty', NULL, '<p>28.01.17 в 17:00 &nbsp;- Официальный DJ Центр Pioneer DJ Almaty ждет всех желающих узнать о полноценном программном обеспечении для диджеинга - Rekordbox DJ - программы для управления библиотеками треков, подготовки и редактирования сет-листов.<br /><br />Вас ожидает: <br />- Мастер-класс Rekordbox DJ <br />- Презентация курсов DJ Школы <br />- Общение с Преподавателем <br />- Скидки на обучение</p>\r\n<p>Ведущий: Преподаватель Pioneer DJ School - DVJ Mishin</p>\r\n<p><br />Следите за новостями и вступайте в группу Pioneer DJ Almaty -&nbsp;<a href="http://vk.com/pioneerdjalmaty" target="_blank" rel="noopener noreferrer">vk.com/pioneerdjalmaty</a><br /><br />Подробности: +7 747 336 22 02<br /><br />Для тех, кто запишется на обучение в этот день, предусмотрена 10% скидка на любой из курсов Школы! <br /><br />Приходите и Вы!!!</p>\r\n<p>#pioneerdjschool #pioneerdjalmaty #pioneerdj</p>', '<p>28.01 - Открытый мастер-класс по Rekordbox DJ от DVJ Mishin в Pioneer DJ Almaty</p>', 100, 'Y', 'N', 'pioneer', 'detailNews', 'default'),
(58, '29-01---otkrytyi-mster-klss-ot-m-hustler-v-pioneer-dj-moscow', '3', '29.01 - Открытый мастер-класс от M.Hustler в Pioneer DJ Moscow', '', '', 7, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '29-01---otkrytyi-mster-klss-ot-m-hustler-v-pioneer-dj-moscow', NULL, '<p>Приглашаем на открытый мастер-класс от M.Hustler в Pioneer DJ Moscow<br /><br />M.Hustler один из немногих Dj, который, словно ,"мастер старой школы", помнит и воспевает самую главную роль музыки-лечить своего слушателя....Словно гуру психоанализа, достигший огромных высот в области электронной музыки ,он заставляет открыться и сорвать маску каждого ,кто попадает в ауру его звучаний... <br /><br />M.Hustler завоевал любовь и признание практически всех самых ярких площадок нашей столицы : SOHO ROOMS, ICON, LOOKIN ROOMS,STEREO, GOSTY, ROLLIN STONE BAR, JAGGER BAR, SHISHAS BAR, ИЗВЕСТИЯ HALL , ,и многих других, и это было бы не возможно без колоссальной энергии , абсолютного слуха, и тока текущего по его венам, сливающего его воедино со своими треками, пультом и поклонниками. <br /><br />Тема: DJ - как Бренд<br /><br />Время: Воскресенье, 29 января - в 18:00<br /><br />Место: Официальная DJ школа Pioneer DJ Moscow (Москва, м. Курская, Нижний Сусальный пер. 5/4 - БЦ АРМА)<br /><br />Контакты: +7 (916) 942-52-48 или сообщением <a href="http://vk.com/schoolpioneerdj" target="_blank" rel="noopener noreferrer">vk.com/schoolpioneerdj</a><br /><br />Не пропусти первый мастер-класс в новом году!</p>\r\n<p>#pioneerdjschool #pioneerdjmsk</p>', '<p>29.01 - Открытый мастер-класс от M.Hustler в Pioneer DJ Moscow</p>', 100, 'Y', 'N', 'pioneer', 'detailNews', 'default'),
(59, '04.02 - Открытый мастер-класс от DJ DeN - Работа с акапеллами и эффектами @ Pioneer DJ Almaty', '3', '04.02 - Открытый мастер-класс от DJ DeN - Работа с акапеллами и эффектами @ Pioneer DJ Almaty', '', '', 7, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '04-02---otkrytyi-mster-klss-ot-dj-den---rbot-s-kpellmi-i-effektmi-@-pioneer-dj-almty', NULL, '<p>04.02.17 в 17:00 - Официальный DJ Центр Pioneer DJ Almaty приглашает всех желающих узнать о том, как разнообразить Микс посредством акапелл и эффектов. <br /><br />Вас ожидает: <br />&bull; Мастер-класс по работе с акапеллами<br />&bull; Эффекты как новое дыхание в миксе.<br />&bull; Презентация курсов DJ Школы <br />&bull; Общение с Преподавателем Школы и Ведущим мастер - класса. <br /><br />Ведущий Мастер-класса Денис Рахманбердиев DJ Den<br /><br />Ответы на все вопросы по телефону +7 747 336 22 02 или сообщением <a href="https://vk.com/PioneerDJAlmaty">vk.com/PioneerDJAlmaty</a><br /><br />+ бонус:&nbsp;энергетические подарки от партнёров и фотоотчёт!<br /><br />Приходите и Вы!!!</p>', '<p>04.02 - Открытый мастер-класс от DJ DeN -&nbsp;Работа с акапеллами и эффектами @ Pioneer DJ Almaty</p>', 100, 'Y', 'N', 'pioneer', 'detailNews', 'default'),
(66, '26-02---otkrytyi-mster-klss-ot-dj-clubkill-v-pioneer-dj-moscow', '2', '26.02 - Открытый мастер-класс от DJ Clubkilla в Pioneer DJ Moscow', '', '', 7, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '26-02---otkrytyi-mster-klss-ot-dj-clubkill-v-pioneer-dj-moscow', NULL, '<p>Приглашаем на открытый мастер-класс от DJ Clubkilla в Pioneer DJ Moscow<br /><br />DJ Clubkilla - Победитель всероссийского баттла G-Shock Scratch 2014 при поддержке Pioneer в номинации "Король Танцпола"<br /><br />Бывший участник группировки Moscow Mashup Mafia.<br /><br />Резидент таких клубов как Gipsy, Гараж, Rolling Stone, Lookin Rooms и Icon Bar.<br /><br />Лучший DJ 2016 по версии клуба Гараж <br /><br />Тема: Драматургия в диджей сете <br /><br />Время: Воскресенье, 26 февраля - в 18:00<br /><br />Место: Официальная DJ школа Pioneer DJ Moscow (Москва, м. Курская, Нижний Сусальный пер. 5/4 - БЦ АРМА) <a href="http://vk.com/pioneerdjmsk" target="_blank" rel="noopener noreferrer">vk.com/pioneerdjmsk</a><br /><br />Контакты: +7 (916) 942-52-48 или сообщением <a href="http://vk.com/schoolpioneerdj" target="_blank" rel="noopener noreferrer">vk.com/schoolpioneerdj</a><br /><br />Не пропусти! В воскресение, пока все отдыхают, получи много полезных и интересных знаний!<br /><br /><a href="https://vk.com/feed?section=search&amp;q=%23pioneerdjschool">#pioneerdjschool</a> <a href="https://vk.com/feed?section=search&amp;q=%23%D0%B4%D0%B8%D0%B4%D0%B6%D0%B5%D0%B9%D1%88%D0%BA%D0%BE%D0%BB%D0%B0">#диджейшкола</a></p>', '<p>DJ Clubkilla - Победитель всероссийского баттла G-Shock Scratch 2014 при поддержке Pioneer в номинации "Король Танцпола"</p>', 100, 'Y', 'N', 'pioneer', 'detailNews', 'default'),
(67, 'tenDANCE show w/ SWANKY TUNES @ Pioneer DJ TV | Moscow ', '6', 'tenDANCE show w/ SWANKY TUNES @ Pioneer DJ TV | Moscow ', '', '', 7, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'tendance-show-w--swanky-tunes-@-pioneer-dj-tv-|-moscow-', NULL, '', '', 106, 'Y', 'N', 'pioneer', 'detailNews', 'default'),
(68, 'tenDANCE show w/ Alexander Popov @ Pioneer DJ TV | Moscow', '6', 'tenDANCE show w/ Alexander Popov @ Pioneer DJ TV | Moscow', '', '', 7, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'tendance-show-w--alexnder-popov-@-pioneer-dj-tv-|-moscow', NULL, '', '', 106, 'Y', 'N', 'pioneer', 'detailNews', 'default'),
(69, 'mster-clss-m-hustler----dj---kk-brend--@-pioneer-dj-school-|-moscow', '7', 'Master-class M.Hustler - "DJ - как Бренд" @ Pioneer DJ School | Moscow', '', '', 7, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'mster-clss-m-hustler----dj---kk-brend--@-pioneer-dj-school-|-moscow', NULL, '', '', 106, 'Y', 'N', 'pioneer', 'detailNews', 'default'),
(70, 'mster-klss-ot-dj-den----rbot-s-kpellmi-i-effektmi--@-pioneer-dj-school-|-almty', '7', 'Мастер-класс от DJ DeN - "Работа с акапеллами и эффектами" @ Pioneer DJ School | Almaty', '', '', 7, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'mster-klss-ot-dj-den----rbot-s-kpellmi-i-effektmi--@-pioneer-dj-school-|-almty', NULL, '', '', 106, 'Y', 'N', 'pioneer', 'detailNews', 'default'),
(71, '05-03---otkrytyi-mster-klss-ot-dj-jy-d---btl-dj---klubnyi-dj-v-pioneer-dj-moscow', '3', '05.03 - Открытый мастер-класс от DJ Jay-D / Батл DJ - Клубный DJ в Pioneer DJ Moscow', '', '', 7, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '05-03---otkrytyi-mster-klss-ot-dj-jy-d---btl-dj---klubnyi-dj-v-pioneer-dj-moscow', NULL, '<p>Приглашаем на открытый мастер-класс от DJ Jay-D <a href="http://vk.com/djjaydmoscow" target="_blank" rel="noopener noreferrer">vk.com/djjaydmoscow</a> в Pioneer DJ Moscow<br /><br />DJ Jay-D <a href="http://vk.com/djjayd" target="_blank" rel="noopener noreferrer">vk.com/djjayd</a> - российский DJ и музыкант, родом из Москвы. <br />Начало карьеры: 2004 год. <br />Участник московской группы Burito. <br />Один из самых техничных ди-джеев в России, владеющий всеми приемами виртуозной игры на пластинках. <br />Победитель чемпионата среди хип-хоп ди-джеев IDA/ITF Russia 2008. <br />Резидент московского клуба Rolling Stone Bar. <br />Участник собственного клубного музыкального проекта Magnificent III (DJ+MC+Drum). <br /><br />Музыкальное направление: Hip-Hop / Trap / Twerk / Rock / Funk / Mash-Up / House / <br /><br />Гость столичных клубов: Gypsy, ICON Bar, The Standard Bar, Чердак на Кузнецком Мосту, Shakhti Terrace, Пропаганда, <br />Shishas Bar, Солянка, Hub Bar, ARMA-17, Arena Moscow, Ferma Dance, Известия Hall, Антрекот (Метрополь), Б-2, Lookin Rooms. <br /><br />Гастрольный график включает себя почти все крупные города России, СНГ и Европы: <br />Париж (Франция), Херлеен, Амстердам (Голландия), Зальцбург (Австрия), Кайзерслаутерн (Германия), Варшава (Польша), Вильнюс (Литва), Анталия (Турция), Киев, Харьков (Украина), Минск (Белоруссия), Актау, Астана, Аксай, Алма-Аты (Казахстан), Санкт-Петербург, Cочи, Ялта, Симферополь, Липецк, Нижний-Новгород, Рязань, Казань, Волгоград, Калининград, Омск, Якутск, Новосибирск, Красноярск, Уфа, Челябинск, Екатеринбург, Смоленск, Калуга, Брянск, Анапа, Ростов-На-Дону, Дубна, Самара, Тольятти, Серпухов, Сызрань, Тверь, Владимир, Сергиев Посад, Электросталь, Коломна, Ярославль, Тула, Обнинск. <br /><br />Тема: Батл DJ - Клубный DJ <br /><br />Время: Воскресенье, 05 марта - в 18:00<br /><br />Место: Официальная DJ школа Pioneer DJ Moscow (Москва, м. Курская, Нижний Сусальный пер. 5/4 - БЦ АРМА) <a href="http://vk.com/pioneerdjmsk" target="_blank" rel="noopener noreferrer">vk.com/pioneerdjmsk</a><br /><br />Контакты: +7 (916) 942-52-48 или сообщением <a href="http://vk.com/schoolpioneerdj" target="_blank" rel="noopener noreferrer">vk.com/schoolpioneerdj</a><br /><br />Встреть воскресный вечер с интересной личностью!<br /><br /><a href="https://vk.com/feed?section=search&amp;q=%23pioneerdjschool">#pioneerdjschool</a> <a href="https://vk.com/feed?section=search&amp;q=%23%D0%B4%D0%B8%D0%B4%D0%B6%D0%B5%D0%B9%D1%88%D0%BA%D0%BE%D0%BB%D0%B0">#диджейшкола</a> <a href="https://vk.com/feed?section=search&amp;q=%23djjayd">#djjayd</a></p>', '<p>DJ Jay-D&nbsp;- российский DJ и музыкант, родом из Москвы. <br />Победитель чемпионата среди хип-хоп ди-джеев IDA/ITF Russia 2008.</p>', 100, 'Y', 'N', 'pioneer', 'detailNews', 'default'),
(73, '18-03---otkrytyi-mster-klss-ot-dj-sniper-v-pioneer-dj-almty', '3', '18.03 - Открытый мастер-класс от DJ Sniper в Pioneer DJ Almaty', '', '', 7, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '18-03---otkrytyi-mster-klss-ot-dj-sniper-v-pioneer-dj-almty', NULL, '<div class="_im_peer_history im-page-chat-contain">\r\n<div class="im-mess-stack _im_mess_stack " data-peer="54262325" data-admin="">\r\n<div class="im-mess-stack--content">\r\n<ul class="ui_clean_list im-mess-stack--mess _im_stack_messages">\r\n<li class="im-mess im_in _im_mess _im_mess_135584" data-ts="1489050218" data-msgid="135584" data-peer="54262325">\r\n<div class="im-mess--text wall_module _im_log_body">\r\n<div class="im_msg_text">Приглашаем на открытый мастер-класс от DJ Sniper в Pioneer DJ Almaty. <br /><br />Dj Sniper - трёхкратный обладатель звания &ldquo;Лучший диджей Казахстана&rdquo;! Начал свою профессиональную карьеру в 1996 году. В разное время являлся резидентом самых популярных и успешных клубов Алматы: My Town, Tranzit, Cream. . . особое место в этом списке занимает легендарный Da Freak Club, резидентом которого Снайпер был без малого 10 лет. <br />В далёком 1998 году совместно с диджеем Серёгой выпустил первый Казахстанский Mixed CD - "Бессонница&rdquo;, в сборник вошёл и первый Казахстанский House-трек - Dj Снайпер &amp; Dj Серёга - На связь. <br />Примерно в то же время, вместе, они запустили свою первую авторскую радиопрограмму &ldquo;My Town Music&rdquo; на радио &ldquo;Shahar FM&rdquo; в последствии &ldquo;NRG FM&rdquo; (102.2 - частота известная каждому Алматинцу). Около 15-ти лет на этой радиоволне выходили программы соавтором и ведущим которых был Снайпер (среди них Dj Club, RadioCHAT и конечно же, Set-Session (в рамках этого знакового проекта в 2005 году Dj`s: Снайпер, Тимофей, Серёга, Гладкий выпустили успешную серию миксов "Set-Session&rdquo; на CD). В настоящее время Снайпер продолжает свою деятельность на радио, являясь резидентом <a href="http://ne.fm/" target="_blank" rel="noopener noreferrer">NE.FM</a> (радио-шоу &ldquo;Миксология&rdquo;). <br />С 1998 года Снайпер активно гастролирует по Казахстану и ближнему зарубежью. Участвовал во всех масштабных танцевальных мероприятиях Казахстана: всемирно известный Godskitchen, Ahead, Full Moon Party, Ibiza Dance Festival, Freedom, Pepsi Music Battle, Almaty Winter Dance, Urbania и т.д. Играл вместе с огромным количеством всемирно известных и уважаемых коллег и артистов (в списке более ста имён, среди которых - Stacey Pullen, Dj Chus, Dj T, Eddie Halliwell, Sandy Rivera (KOT), Mark Knight, D. Ramirez, Stefano Noferini, Jody Wisternoff (Way Out West), Stanton Warriors и многие другие)! <br />В 2011 году Cнайпер и Тимофей стали первыми Казахстанскими диджеями выступившими в Европе, клуб Culture Box (Копенгаген, Дания), неоднократно попадавший в Top 100 лучших клубов мира. <br />В марте 2013, в Майами (США), Снайпер впервые представил Казахстанский диджеинг на главном музыкальном событии мира - Winter Music Conference, а уже в 2015 году был удостоен чести открывать своим сетом юбилейную 30-ю конференцию WMC/MMW! Через несколько дней, в самом сердце South Beach, состоялся памятный дебют нашего диджея на showcase вечеринке лейбла Sheeva. В этом году Снайпер в очередной раз представлял Казахстан на конференции в Майами, выступив в легендарном Shelborne Wyndham Grand South Beach и суперпопулярных El Patio Wynwood и The Gang Miami. <br /><br />Снайпер - автор множества танцевальных треков полюбившихся коллегам и клабберам в нашей стране и далеко за её пределами, его синглы &ldquo;Get Down&rdquo; и &ldquo;iGotta&rdquo; занимали первые места в Top 100 чартах авторитетнейших ресурсов - DjTunes и Trackitdown. Также были Top 100 Billboard Dance, Juno, Stompy. В августе прошлого года сингл "In the Box" вошёл в Top 10 техно треков Traxsource, остановившись на 9-м! месте! <br /><br />В ближайшее время на леблах Blacksoul Music (Croatia) и Radikal Records (USA) свет увидят новые оригинальные работы.<br /><br />Тема: Creative DJing - оригинальный/авторский сет. Tools, Fx, Acapellas, Edits и другие доступные способы.<br /><br />Время: суббота, 18 марта - в 17:00.<br /><br />Место: Официальная DJ школа Pioneer DJ Almaty. <br />Центральный Стадион, Западная Трибуна, 9 подъезд, 45 кабинет&nbsp;<br /><a href="http://vk.com/pioneerdjalmaty" target="_blank" rel="noopener noreferrer">vk.com/pioneerdjalmaty</a><br /><br />Контакты: +7 747 336 22 02 или сообщением <a href="http://vk.com/pioneerdjalmaty" target="_blank" rel="noopener noreferrer">vk.com/pioneerdjalmaty</a></div>\r\n</div>\r\n</li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>', '<p>Приглашаем на открытый мастер-класс от DJ Sniper в Pioneer DJ Almaty. <br /><br />Dj Sniper - трёхкратный обладатель звания &ldquo;Лучший диджей Казахстана&rdquo;!</p>', 100, 'Y', 'N', 'pioneer', 'detailNews', 'default'),
(74, '19-03---den-otkrytyh-dverei-v-pioneer-dj-moscow', '3', '19.03 - День Открытых Дверей в Pioneer DJ Moscow', '', '', 7, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '19-03---den-otkrytyh-dverei-v-pioneer-dj-moscow', NULL, '<p>DJ Школа, Scratch Школа и Школа Написания Музыки Pioneer DJ Moscow приглашает на ДЕНЬ ОТКРЫТЫХ ДВЕРЕЙ!<br /><br />Прийди, задай вопросы, попробуй свои силы и начни реализовывать свою мечту сейчас!<br /><br />Старт в воскресение 19.03 в 18:00<br /><br />Вас ждут:<br />- Презентация каждого из курсов обучения от преподавателей<br />- Экскурсии по DJ Центру<br />- Свободное общение с преподавателями Школы<br />- Скидки на DJ и Scratch курсы обучения!<br /><br />Так же, можно будет свободно протестировать новое оборудование, которое совсем недавно поступило к нам в DJ Школу!<br /><br />Для тестирования новинок предоставляются:<br />- Деки XDJ-1000MK2 совместно с комплектом NXS2<br />- Комплект оборудования: 2шт XDJ-700 + DJM-450<br />- И как всегда, любое оборудование DJ Центра доступно для тестирования!<br /><br />Вступайте в группу и следите за новостями Pioneer DJ Moscow - <a href="http://vk.com/pioneerdjmsk" target="_blank" rel="noopener noreferrer">vk.com/pioneerdjmsk</a><br /><br />Подробности: +7 916 942-52-48 <br /><br />Не откладывай на завтра то что можно сделать сегодня! Приходи сам и приводи друзей! Ждём тебя!<br /><br />#pioneerdjschool #pioneerdjmsk #pioneerdj</p>', '<p>- Тестирование новинок оборудования, которое совсем недавно поступило к нам в DJ Школу!<br />- Скидки на DJ и Scratch курсы обучения!<br />- Презентация каждого из курсов обучения от преподавателей<br />- Экскурсии по DJ Центру<br />- Свободное общение с преподавателями Школы</p>', 100, 'Y', 'N', 'pioneer', 'detailNews', 'default'),
(75, '26-03---otkrytyi-mster-klss-ot-lev-kzkov-v-pioneer-dj-moscow', '3', '26.03 - Открытый мастер-класс от Лев Казаков в Pioneer DJ Moscow', '', '', 7, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '26-03---otkrytyi-mster-klss-ot-lev-kzkov-v-pioneer-dj-moscow', NULL, '<ul class="ui_clean_list im-mess-stack--mess _im_stack_messages">\r\n<li class="im-mess im_in _im_mess _im_mess_133802" data-ts="1488306677" data-msgid="133802" data-peer="7513251">\r\n<div class="im-mess--text wall_module _im_log_body">\r\n<div class="im_msg_text">Приглашаем на открытый мастер-класс от Лев Казаков <a href="http://vk.com/leffkazakov" target="_blank" rel="noopener noreferrer">vk.com/leffkazakov</a> в Pioneer DJ Moscow<br /><br />Лев Казаков - четвёртый год арт-директор Rolling Stone bar. <br />За плечами:<br />- запуск самолёта на <a href="https://vk.com/feed?section=search&amp;q=%23Redbull">#Redbull</a> Flugtag, лето 2015<br />- 425 вечеринок и 10 билетных концертов <br />- две всероссийские вэйк-премии Russian Wake Awards<br />- серия летних рок-воскресников совместно с Jack Daniels <br />- первый музыкальный фестиваль среди рекламщиков &ldquo;99 fest&rdquo;<br />- достройка еще одного этажа веранды &laquo;как вишенка на торте&raquo;. <br /><br />Тема: Если Арт-директор не DJ<br /><br />Время: Воскресенье, 26 марта - в 18:00<br /><br />Место: Официальная DJ школа Pioneer DJ Moscow (Москва, м. Курская, Нижний Сусальный пер. 5/4 - БЦ АРМА) <a href="http://vk.com/pioneerdjmsk" target="_blank" rel="noopener noreferrer">vk.com/pioneerdjmsk</a></div>\r\n</div>\r\n<div class="im-mess--text wall_module _im_log_body">\r\n<div class="im_msg_text"><br />Контакты: +7 (916) 942-52-48 или сообщением <a href="http://vk.com/schoolpioneerdj" target="_blank" rel="noopener noreferrer">vk.com/schoolpioneerdj</a><br /><br />Не пропусти! Узнай что то новое!<br /><br /><a href="https://vk.com/feed?section=search&amp;q=%23pioneerdjschool">#pioneerdjschool</a> <a href="https://vk.com/feed?section=search&amp;q=%23%D0%B4%D0%B8%D0%B4%D0%B6%D0%B5%D0%B9%D1%88%D0%BA%D0%BE%D0%BB%D0%B0">#диджейшкола</a> <a href="https://vk.com/feed?section=search&amp;q=%23rollingstone">#rollingstone</a></div>\r\n</div>\r\n</li>\r\n</ul>', '<p>Приглашаем на открытый мастер-класс от Лев Казаков&nbsp;в Pioneer DJ Moscow<br /><br />Лев Казаков - четвёртый год арт-директор Rolling Stone bar. </p>', 100, 'Y', 'N', 'pioneer', 'detailNews', 'default'),
(76, '23.03 – Старт On-Line трансляций на Pioneer DJ TV', '3', '23.03 – Старт On-Line трансляций на Pioneer DJ TV', '', '', 7, '2017-03-22 15:35:06', '0000-00-00 00:00:00', '23-03-strt-on-line-trnslycii-n-pioneer-dj-tv', NULL, '<p>Pioneer DJ TV начинает еженедельные On-Line трансляции! <br /><br />Студийные эфиры будут проходить еженедельно, каждый понедельник и четверг с 18:00 до 22:00 (время московское).<br /><br />Первый эфир состоится 23 марта &ndash; старт в 18:00!<br /><br />Смотри на <a href="https://www.youtube.com/pioneerdjtvru" target="_blank" rel="noopener noreferrer">https://www.youtube.com/pioneerdjtvru</a><br /><br />Не пропусти!<br /><br />#pioneerdjtv #pioneerdj #djtv</p>', '<p>Pioneer DJ TV начинает еженедельные On-Line трансляции!</p>', 100, 'Y', 'N', 'pioneer', 'detailNews', 'default'),
(77, 'konkurs-repostov-ot-pioneer-dj-music', '3', 'Конкурс репостов от Pioneer DJ Music', '', '', 7, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'konkurs-repostov-ot-pioneer-dj-music', NULL, '<p>Сообщество качественной музыки Pioneer DJ Music устраивает конкурс репостов!<br /><br />Выиграй студийные Pro наушники HRM-6 и наслаждайся качественной музыкой вместе с Pioneer DJ Music!<br /><br />Правила:<br />1. Подписаться на группу Pioneer DJ Music - <a href="http://vk.com/pioneerdjmusic" target="_blank" rel="noopener noreferrer">vk.com/pioneerdjmusic</a><br />2. Подписаться на группу Pioneer DJ School - <a href="http://vk.com/pioneerdjschool" target="_blank" rel="noopener noreferrer">vk.com/pioneerdjschool</a><br />3. Сделать репост поста с конкурсом из группы себе на стену аккаунта<br />4. Дождаться, не удаляя репост, 9 апреля и узнать результаты.<br /><br />Приз - Студийные Pro наушники HRM-6<br /><br />Финал: 9 апреля, 20:00 по Москве<br /><br />Победитель определится генератором случайных чисел. Видео с результатом будет опубликовано в комментарии к этому посту с конкурсом в группе Pioneer DJ Music.<br /><br />#pioneerdjmusic #pioneerdjschool #pioneerdj</p>', '<p>Сообщество качественной музыки Pioneer DJ Music устраивает конкурс репостов!<br /><br />Выиграй студийные Pro наушники HRM-6 и наслаждайся качественной музыкой вместе с Pioneer DJ Music!</p>', 100, 'Y', 'N', 'pioneer', 'detailNews', 'default'),
(78, '02.04 - On-Line трансляция Pioneer DJ TV @ loft SREDA', '3', '02.04 - On-Line трансляция Pioneer DJ TV @ loft SREDA', '', '', 7, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '02-04---on-line-trnslyciy-pioneer-dj-tv-@-loft-sreda', NULL, '<p>On-Line трансляция - Воскресение 2 Апреля<br /><br />Хочешь попасть на съёмки Pioneer DJ TV? У тебя есть прекрасная возможность послушать хорошую музыку от интересных диджеев, потанцевать и получить положительные эмоции. <br /><br />Приходи, ждём всех! Вход бесплатный!<br /><br />Время: 18:00<br /><br />Место: Loft SREDA <br /><br />Адрес: г.Москва м.Курская Нижний Сусальный пер. д.5 ст.4<br /><br />18:00 - DJ Mironov<br />19:20 - DJ Miller<br />20:40 - Moscow Chiks<br /><br />Смотри на <a href="https://www.youtube.com/pioneerdjtvru">youtube.com/pioneerdjtvru</a><br /><br />#pioneerdjtv #online&nbsp;#pioneerdj</p>', '<p>On-Line трансляция + мероприятие от Pioneer DJ TV</p>', 100, 'Y', 'N', 'pioneer', 'detailNews', 'default');

-- --------------------------------------------------------

--
-- Структура таблицы `fields`
--

CREATE TABLE IF NOT EXISTS `fields` (
  `id` int(11) NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `multi` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `iblock` varchar(255) DEFAULT NULL,
  `input_type` varchar(255) DEFAULT NULL,
  `active` varchar(255) DEFAULT 'Y',
  `required` varchar(255) DEFAULT 'Y',
  `readonly` varchar(255) DEFAULT 'N',
  `sort` int(11) DEFAULT '100',
  `field_type` varchar(255) DEFAULT 'main',
  `default_value` varchar(1000) DEFAULT NULL,
  `default_names` varchar(1000) DEFAULT NULL,
  `default_type` varchar(255) DEFAULT NULL,
  `default_type_value` varchar(255) DEFAULT NULL,
  `siteview` varchar(255) DEFAULT 'Y' COMMENT 'будет ли показываться на сайте'
) ENGINE=InnoDB AUTO_INCREMENT=136 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `fields`
--

INSERT INTO `fields` (`id`, `type`, `code`, `multi`, `name`, `iblock`, `input_type`, `active`, `required`, `readonly`, `sort`, `field_type`, `default_value`, `default_names`, `default_type`, `default_type_value`, `siteview`) VALUES
(1, 'register', 'desc', 'N', 'Описание деятельности', 'users', 'textarea', 'Y', 'N', 'N', 97, 'main', NULL, NULL, NULL, NULL, 'Y'),
(2, 'register', 'login', 'N', 'Логин', 'users', 'text', 'Y', 'Y', 'N', 100, 'main', NULL, NULL, NULL, NULL, 'Y'),
(3, 'register', 'name', 'N', 'Название организации', 'users', 'text', 'Y', 'Y', 'N', 96, 'main', NULL, NULL, NULL, NULL, 'Y'),
(4, 'register', 'pred_name', 'N', 'ФИО представителя', 'users', 'text', 'Y', 'N', 'N', 99, 'main', NULL, NULL, NULL, NULL, 'Y'),
(5, 'register', 'email', 'N', 'Email', 'users', 'text', 'Y', 'Y', 'N', 100, 'main', NULL, NULL, NULL, NULL, 'Y'),
(6, 'register', 'phone', 'N', 'Телефон', 'users', 'text', 'N', 'N', 'N', 100, 'main', NULL, NULL, NULL, NULL, 'Y'),
(7, 'register', 'password', 'N', 'Пароль', 'users', 'password', 'Y', 'Y', 'N', 100, 'main', NULL, NULL, NULL, NULL, 'Y'),
(8, 'register', 'check_password', 'N', 'Подтверждение пароля', 'users', 'password', 'Y', 'Y', 'N', 100, 'main', NULL, NULL, NULL, NULL, 'Y'),
(11, 'login', 'login', 'N', 'Логин', 'login', 'text', 'Y', 'Y', 'N', 99, 'main', NULL, NULL, NULL, NULL, 'Y'),
(12, 'login', 'email', 'N', 'Email', 'login', 'text', 'N', 'Y', 'N', 99, 'main', NULL, NULL, NULL, NULL, 'Y'),
(13, 'login', 'phone', 'N', 'Телефон', 'login', 'file', 'N', 'N', 'N', 99, 'main', NULL, NULL, NULL, NULL, 'Y'),
(14, 'login', 'password', 'N', 'Пароль', 'login', 'password', 'Y', 'Y', 'N', 100, 'main', NULL, NULL, NULL, NULL, 'Y'),
(15, 'system', 'display_errors', 'N', 'Ошибки PHP', 'system', 'text', 'N', 'N', 'N', 100, 'main', NULL, NULL, NULL, NULL, 'Y'),
(16, 'system', 'support_email', 'N', 'Email для связи', 'system', 'text', 'N', 'N', 'N', 100, 'main', NULL, NULL, NULL, NULL, 'Y'),
(17, 'system', 'date.timezone', 'N', 'Часовые пояса сайта', 'system', 'select', 'Y', 'N', 'N', 100, 'main', NULL, NULL, NULL, NULL, 'Y'),
(21, 'pages', 'name', 'N', 'Название', 'pages', 'text', 'N', 'N', 'N', 100, 'main', NULL, NULL, NULL, NULL, 'Y'),
(22, 'pages', 'model', 'N', 'Модель', 'pages', 'hidden', 'Y', 'N', 'N', 100, 'main', NULL, NULL, NULL, NULL, 'Y'),
(23, 'pages', 'title', 'N', 'Заголовок', 'pages', 'text', 'Y', 'N', 'N', 2, 'main', NULL, NULL, NULL, NULL, 'Y'),
(24, 'pages', 'temp', 'N', 'Шаблон страницы', 'pages', 'text', 'Y', 'N', 'N', 100, 'main', 'default', NULL, NULL, NULL, 'Y'),
(25, 'pages', 'metakeys', 'N', 'Описание страницы (для SEO)', 'pages', 'text', 'N', 'N', 'N', 100, 'main', NULL, NULL, NULL, NULL, 'Y'),
(26, 'pages', 'keywords', 'N', 'Ключевые слова, фразы', 'pages', 'text', 'N', 'N', 'N', 100, 'main', NULL, NULL, NULL, NULL, 'Y'),
(27, 'pages', 'index', 'N', 'Начальная страница', 'pages', 'checkbox', 'N', 'N', 'N', 100, 'main', '0', NULL, NULL, NULL, 'Y'),
(28, 'pages', 'active', 'N', 'Активно', 'pages', 'checkbox', 'Y', 'N', 'N', 1, 'main', 'Y', NULL, NULL, NULL, 'Y'),
(29, 'pages', 'menu_active', 'N', 'Активность в меню', 'pages', 'select', 'Y', 'N', 'N', 100, 'main', 'N,Y', 'Нет,Да', NULL, NULL, 'Y'),
(30, 'pages', 'menu_type', 'N', 'Тип меню (в каком меню отображается)', 'pages', 'select', 'N', 'N', 'N', 100, 'main', '', '', NULL, NULL, 'Y'),
(31, 'pages', 'temp_folder', 'N', 'Родительский шаблон', 'pages', 'text', 'Y', 'N', 'N', 100, 'main', 'default', NULL, NULL, NULL, 'Y'),
(32, 'pages', 'menu_name', 'N', 'Имя страницы в меню', 'pages', 'text', 'Y', 'N', 'N', 100, 'main', NULL, NULL, NULL, NULL, 'Y'),
(33, 'pages', 'template_type', 'N', 'Тип шаблона', 'pages', 'select', 'Y', 'N', 'N', 100, 'main', 'default,personal', 'стандатрный,личный кабинет', NULL, NULL, 'Y'),
(34, 'pages', 'modules', 'N', 'Модули на странице', 'pages', 'textarea', 'N', 'N', 'N', 100, 'main', NULL, NULL, NULL, NULL, 'Y'),
(35, 'pages', 'alias', 'N', 'Алиас', 'pages', 'text', 'Y', 'N', 'N', 100, 'main', NULL, NULL, NULL, NULL, 'Y'),
(36, 'pages', 'permission', 'N', 'Доступ к странице', 'pages', 'select', 'Y', 'N', 'N', 100, 'main', '11,10,9,5,4,3,2,1', 'гость,забаненный пользователь,пользователь с нарушениями,зарегистрированный пользователь,контент-менеджер,специалист по рекламе,модератор, администратор', NULL, NULL, 'Y'),
(37, 'pages', 'content_type', 'N', 'Тип контента (информации на странице)', 'pages', 'select', 'Y', 'N', 'N', 100, 'main', 'N,detail,list', 'нет,детальная страница,список', NULL, NULL, 'Y'),
(38, 'pages', 'content_temp', 'N', 'Шаблон контента на странице', 'pages', 'select', 'Y', 'N', 'N', 100, 'main', 'default,news', 'стандартный,новости', NULL, NULL, 'Y'),
(39, 'cats', 'name', 'N', 'Название', 'cats', 'text', 'Y', 'Y', 'N', 1, 'main', NULL, NULL, NULL, NULL, 'Y'),
(40, 'cats', 'parent', 'N', 'Родительская категория', 'cats', 'select', 'Y', 'N', 'N', 2, 'main', '', '', 'list', 'cats=*', 'Y'),
(41, 'cats', 'desc', 'N', 'Детальное описание', 'cats', 'textarea', 'Y', 'N', 'N', 100, 'main', NULL, NULL, NULL, NULL, 'Y'),
(42, 'cats', 'preview_desc', 'N', 'Краткое описание', 'cats', 'textarea', 'Y', 'N', 'N', 100, 'main', NULL, NULL, NULL, NULL, 'Y'),
(43, 'cats', 'alias', 'N', 'Алиас', 'cats', 'hidden', 'Y', 'N', 'N', 100, 'main', NULL, NULL, NULL, NULL, 'Y'),
(44, 'base_content', 'name', 'N', 'Название', 'content', 'hidden', 'Y', 'Y', 'N', 100, 'main', NULL, NULL, NULL, NULL, 'N'),
(46, 'base_content', 'title', 'N', 'Название', 'content', 'text', 'Y', 'Y', 'N', 100, 'main', NULL, NULL, NULL, NULL, 'Y'),
(47, 'base_content', 'keywords', 'N', 'Ключевые слова/фразы/keywords', 'content', 'textarea', 'Y', 'N', 'N', 105, 'main', NULL, NULL, NULL, NULL, 'Y'),
(48, 'base_content', 'metakeys', 'N', 'Описание страницы/meta-description', 'content', 'textarea', 'Y', 'N', 'N', 105, 'main', NULL, NULL, NULL, NULL, 'Y'),
(49, 'base_content', 'user', 'N', 'Автор', 'content', 'select', 'Y', 'Y', 'N', 100, 'main', NULL, NULL, 'list', 'users=*', 'N'),
(50, 'base_content', 'active_from', 'N', 'Активно с', 'content', 'date', 'Y', 'N', 'N', 100, 'main', NULL, NULL, NULL, NULL, 'N'),
(51, 'base_content', 'active_to', 'N', 'Активно до', 'content', 'date', 'Y', 'N', 'N', 100, 'main', NULL, NULL, NULL, NULL, 'N'),
(52, 'base_content', 'alias', 'N', 'alias', 'content', 'hidden', 'Y', 'Y', 'N', 100, 'main', NULL, NULL, NULL, NULL, 'Y'),
(53, 'base_content', 'desc', 'N', 'Описание', 'content', 'textarea', 'Y', 'N', 'N', 100, 'main', NULL, NULL, NULL, NULL, 'Y'),
(54, 'base_content', 'preview_desc', 'N', 'Краткое описание', 'content', 'textarea', 'Y', 'N', 'N', 100, 'main', NULL, NULL, NULL, NULL, 'Y'),
(55, 'base_content', 'page_id', 'N', 'Страница', 'content', 'hidden', 'Y', 'N', 'N', 100, 'main', '', NULL, '', '', 'N'),
(56, 'base_content', 'active', 'N', 'Активно', 'content', 'checkbox', 'Y', 'N', 'N', 100, 'main', 'Y', '', NULL, NULL, 'N'),
(57, 'base_content', 'fields', 'N', 'Доп поля', 'content', 'hidden', 'Y', 'N', 'N', 100, 'main', 'N', NULL, NULL, NULL, 'N'),
(58, 'base_content', 'parent_temp', 'N', 'Родительский шаблон', 'content', 'text', 'Y', 'N', 'N', 100, 'main', 'pioneer', 'pioneerDJ', NULL, NULL, 'N'),
(59, 'base_content', 'child_temp', 'N', 'Шаблон', 'content', 'text', 'Y', 'N', 'N', 100, 'main', 'detailNews', 'detailNews', NULL, NULL, 'N'),
(60, 'base_content', 'temp_folder', 'N', 'Папка шаблона', 'content', 'text', 'Y', 'N', 'N', 100, 'main', 'default', 'default', NULL, NULL, 'N'),
(61, 'users', 'group', 'N', 'Группа', 'users', 'select', 'Y', 'Y', 'N', 100, 'main', 'registed,moderator,admin,time-guest', 'зарегистрированный,модератор,админ,временно зарегистрированный', 'list', 'user_groups=*', 'Y'),
(62, 'users', 'active', 'N', 'Активен', 'users', 'checkbox', 'Y', 'Y', 'N', 100, 'main', 'Y', '', NULL, NULL, 'Y'),
(63, 'base_fields', 'type', 'N', 'связь', 'fields', 'hidden', 'Y', 'Y', 'N', 100, 'main', NULL, NULL, NULL, NULL, 'Y'),
(64, 'base_fields', 'code', 'N', 'code', 'fields', 'text', 'Y', 'Y', 'N', 100, 'main', NULL, NULL, NULL, NULL, 'Y'),
(65, 'base_fields', 'multi', 'N', 'множественное', 'fields', 'checkbox', 'Y', 'Y', 'N', 100, 'main', 'Y', '', NULL, NULL, 'Y'),
(66, 'base_fields', 'name', 'N', 'Название', 'fields', 'text', 'Y', 'Y', 'N', 100, 'main', NULL, NULL, NULL, NULL, 'Y'),
(67, 'base_fields', 'iblock', 'N', ' iblock', 'fields', 'hidden', 'Y', 'Y', 'N', 100, 'main', NULL, NULL, NULL, NULL, 'Y'),
(68, 'base_fields', 'input_type', 'N', 'вид поля', 'fields', 'select', 'Y', 'Y', 'N', 100, 'main', 'text,hidden,checkbox,textarea,file,html,date', 'text,hidden,checkbox,textarea,file,html,date', NULL, NULL, 'Y'),
(69, 'base_fields', 'active', 'N', 'активно', 'fields', 'checkbox', 'Y', 'Y', 'N', 100, 'main', 'Y', NULL, NULL, NULL, 'Y'),
(70, 'base_fields', 'required', 'N', 'обязательное', 'fields', 'checkbox', 'Y', 'Y', 'N', 100, 'main', 'Y', NULL, NULL, NULL, 'Y'),
(71, 'base_fields', 'readonly', 'N', 'только для чтения', 'fields', 'checkbox', 'Y', 'Y', 'N', 100, 'main', 'Y', NULL, NULL, NULL, 'Y'),
(72, 'base_fields', 'sort', 'N', 'сортировка', 'fields', 'text', 'Y', 'Y', 'N', 100, 'main', NULL, NULL, NULL, NULL, 'Y'),
(73, 'base_fields', 'field_type', 'N', 'тип поля', 'fields', 'hidden', 'Y', 'Y', 'N', 100, 'main', NULL, NULL, NULL, NULL, 'Y'),
(74, 'base_fields', 'default_value', 'N', 'значение по-умолчанию', 'fields', 'text', 'Y', 'Y', 'N', 100, 'main', NULL, NULL, NULL, NULL, 'Y'),
(75, 'base_fields', 'default_names', 'N', 'имена по умолчанию', 'fields', 'text', 'Y', 'Y', 'N', 100, 'main', NULL, NULL, NULL, NULL, 'Y'),
(76, 'base_fields', 'default_type', 'N', 'список', 'fields', 'text', 'Y', 'Y', 'N', 100, 'main', NULL, NULL, NULL, NULL, 'Y'),
(77, 'base_fields', 'default_type_value', 'N', 'значения списка', 'fields', 'text', 'Y', 'Y', 'N', 100, 'main', NULL, NULL, NULL, NULL, 'Y'),
(91, 'pages', 'list_limit', 'N', 'Лимит обьектов на странице', 'pages', 'text', 'Y', 'N', 'N', 100, 'main', '10', NULL, NULL, NULL, 'Y'),
(98, 'users', 'parent', 'N', 'Родительский аккаунт', 'users', 'text', 'Y', 'N', 'N', 100, 'alter', '0', '', '', '', 'Y'),
(99, 'users', 'account_type', 'N', 'тип аккаунта', 'users', 'select', 'Y', 'Y', 'N', 100, 'alter', 'developer,director,design,html,customer', 'разработчик,директор,дизайнер,верстальщик,заказчик', '', '', 'Y'),
(100, 'base_content', 'page_id', 'N', 'Страница', 'content', 'select', 'N', 'Y', 'N', 100, 'main', NULL, NULL, 'list', NULL, 'Y'),
(104, 'ads', 'Photo_unknown', 'N', 'Фото', 'content', 'file', 'N', 'Y', 'N', 110, 'alter', '', '', '', '', 'Y'),
(108, 'base_content', 'cat', 'N', 'Категория', 'content', 'select', 'Y', 'Y', 'N', 100, 'main', NULL, NULL, 'list', 'cats=*', 'N'),
(109, 'news', 'Photo', 'N', 'Превью', 'content', 'file', 'Y', 'N', 'N', 100, 'alter', '', '', '', '', 'Y'),
(110, 'news', 'city', 'N', 'Город', 'content', 'select', 'Y', 'N', 'N', 100, 'alter', 'nsk,moscow,peter,almati', 'Новосибирск,Москва,Санкт-Петербург,Алматы', NULL, NULL, 'Y'),
(111, 'services', 'Preview', NULL, 'Картинка', 'content', 'file', 'Y', 'N', 'N', 100, 'alter', NULL, NULL, NULL, NULL, 'Y'),
(112, 'services', 'moscow_desc', NULL, 'Описание для Москвы', 'content', 'textarea', 'Y', 'N', 'N', 100, 'alter', NULL, NULL, NULL, NULL, 'Y'),
(113, 'services', 'peter_desc', NULL, 'Описание для Питера', 'content', 'textarea', 'Y', 'N', 'N', 100, 'alter', NULL, NULL, NULL, NULL, 'Y'),
(114, 'services', 'nsk_desc', NULL, 'Описание для Новосибирска', 'content', 'textarea', 'Y', 'N', 'N', 100, 'alter', NULL, NULL, NULL, NULL, 'Y'),
(115, 'services', 'almati_desc', NULL, 'Описание для Алматы', 'content', 'textarea', 'Y', 'N', 'N', 100, 'alter', NULL, NULL, NULL, NULL, 'Y'),
(116, 'services', 'almati_desc', NULL, 'Описание для Алматы', 'content', 'textarea', 'N', 'N', 'N', 100, 'alter', NULL, NULL, NULL, NULL, 'Y'),
(117, 'services', 'city_array', 'Y', 'Список городов', 'content', 'textarea', 'Y', 'N', 'N', 100, 'alter', 'nsk,moscow,peter,almati', 'nsk,moscow,peter,almati', NULL, NULL, 'Y'),
(118, 'news', 'detail_image', 'N', 'Детальное превью', 'content', 'file', 'Y', 'N', 'N', 100, 'alter', NULL, NULL, NULL, NULL, 'Y'),
(119, 'services', 'Photo', 'N', 'Превью', 'content', 'file', 'Y', 'N', 'N', 100, 'alter', '', '', '', '', 'Y'),
(120, 'services', 'detail_image', 'N', 'Детальное превью', 'content', 'file', 'Y', 'N', 'N', 100, 'alter', NULL, NULL, NULL, NULL, 'Y'),
(121, 'video', 'url', 'N', 'Ссылка на youtube', 'content', 'text', 'Y', 'N', 'N', 100, 'alter', 'https://www.youtube.com/embed/...', NULL, NULL, NULL, 'Y'),
(122, 'courses', 'moscow_price', 'N', 'Цена (Msk)', 'content', 'text', 'Y', 'Y', 'N', 100, 'alter', '', NULL, NULL, NULL, 'Y'),
(123, 'courses', 'city_courses_array', 'Y', 'Список городов', 'content', 'textarea', 'Y', 'Y', 'N', 100, 'alter', 'nsk,moscow,almati', 'nsk,moscow,almati', NULL, NULL, 'Y'),
(124, 'courses', 'nsk_price', 'N', 'Цена (Nsk)', 'content', 'text', 'Y', 'Y', 'N', 100, 'alter', NULL, NULL, NULL, NULL, 'Y'),
(125, 'courses', 'almati_price', 'N', 'Цена (Almati)', 'content', 'text', 'Y', 'Y', 'N', 100, 'alter', NULL, NULL, NULL, NULL, 'Y'),
(126, 'courses', 'peter_price', 'N', 'Цена (Peter)', 'content', 'text', 'Y', 'Y', 'N', 100, 'alter', NULL, NULL, NULL, NULL, 'Y'),
(127, 'courses', 'moscow_desc', NULL, 'Описание для Москвы', 'content', 'textarea', 'Y', 'N', 'N', 100, 'alter', NULL, NULL, NULL, NULL, 'Y'),
(128, 'courses', 'peter_desc', NULL, 'Описание для Питера', 'content', 'textarea', 'Y', 'N', 'N', 100, 'alter', NULL, NULL, NULL, NULL, 'Y'),
(129, 'courses', 'nsk_desc', NULL, 'Описание для Новосибирска', 'content', 'textarea', 'Y', 'N', 'N', 100, 'alter', NULL, NULL, NULL, NULL, 'Y'),
(130, 'courses', 'almati_desc', NULL, 'Описание для Алматы', 'content', 'textarea', 'Y', 'N', 'N', 100, 'alter', NULL, NULL, NULL, NULL, 'Y'),
(131, 'courses', 'special', NULL, 'Особенности', 'content', 'textarea', 'Y', 'N', 'N', 100, 'alter', NULL, NULL, NULL, NULL, 'Y'),
(132, 'courses', 'moscow_features', NULL, 'Ключевые оссобенности (Moscow)', 'content', 'textarea', 'Y', 'N', 'N', 100, 'alter', NULL, NULL, NULL, NULL, 'Y'),
(133, 'courses', 'peter_features', NULL, 'Ключевые оссобенности (Peter)', 'content', 'textarea', 'Y', 'N', 'N', 100, 'alter', NULL, NULL, NULL, NULL, 'Y'),
(134, 'courses', 'nsk_features', NULL, 'Ключевые оссобенности (Nsk)', 'content', 'textarea', 'Y', 'N', 'N', 100, 'alter', NULL, NULL, NULL, NULL, 'Y'),
(135, 'courses', 'almati_features', NULL, 'Ключевые оссобенности (Almati)', 'content', 'textarea', 'Y', 'N', 'N', 100, 'alter', NULL, NULL, NULL, NULL, 'Y');

-- --------------------------------------------------------

--
-- Структура таблицы `field_value`
--

CREATE TABLE IF NOT EXISTS `field_value` (
  `id` int(11) NOT NULL,
  `field_id` int(11) DEFAULT NULL,
  `value` mediumtext,
  `element_id` int(11) DEFAULT NULL,
  `iblock` varchar(11) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `input_type` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=149 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `field_value`
--

INSERT INTO `field_value` (`id`, `field_id`, `value`, `element_id`, `iblock`, `code`, `input_type`) VALUES
(5, NULL, 'nsk', 22, NULL, 'city', NULL),
(6, NULL, 'nsk', 23, NULL, 'city', NULL),
(7, NULL, 'peter', 24, NULL, 'city', NULL),
(8, NULL, 'nsk,moscow,peter,almati', 25, NULL, 'city_array', NULL),
(9, NULL, '<div class="row">\r\n                <div class="sections-holder responsive">\r\n                    <div class="service-includes">\r\n                        <p>Подарочная карта - вы вносите депозит и оформляете данную карту на человека, которому собираетесь сделать презент. После торжества данный человек может потратить депозит карты на обучение в DJ Школе, на приобретение оборудования в DJ Магазине, либо на тренинг в нашем DJ Центре в формате абонемента или разовых посещений.</p>\r\n                        <p class="description">&nbsp;</p>\r\n                        <p>Карта выпускника DJ Школы Pioneer DJ School - многофункциональная карта включающая в себя следующие привилегии:</p>\r\n                        <p class="description">&nbsp;</p>\r\n                        <ul>\r\n                            <li>скидка на приобретение оборудования 10% от рекомендованной розничной цены</li>\r\n                            <li>скидка на последующие курсы DJ Центра</li>\r\n                            <li>посещение закрытых мастер-классов, интервью и презентаций новинок по DJ Оборудованию</li>\r\n                            <li>привилегии на основе системы продвижения выпускников Pioneer DJ Family</li>\r\n                        </ul>\r\n                        <br /><strong>Карта выдаётся при:</strong><br />\r\n                        <ul>\r\n                            <li>окончании любого курса DJ Школы Pioneer DJ School</li>\r\n                            <li>приобретении любого оборудования в DJ Магазине Pioneer DJ School</li>\r\n                            <li>оформлении тренинга в DJ Центре Pioneer DJ School</li>\r\n                            <li>оформлении подарочной карты и внесении на неё депозита</li>\r\n                        </ul>\r\n                        <p>&nbsp;</p>\r\n                        <p>Тренинг-абонемент - карта, оформленная на человека, который приобрёл тренинг в DJ Центре Pioneer DJ Moscow</p>\r\n                        <p class="description">&nbsp;</p>\r\n                        <p>Наши преимущества:</p>\r\n                        <p class="description">&nbsp;</p>\r\n                        <ul>\r\n                            <li>Официальная школа бренда Pioneer DJ в России</li>\r\n                            <li>Серьёзное партнерское вознаграждение</li>\r\n                            <li>Только самое современное и новое оборудование Pioneer</li>\r\n                            <li>Уникальная система по продвижению и трудоустройству выпускников</li>\r\n                            <li>Индивидуальный подход к каждому клиенту</li>\r\n                            <li>Качественное обучение, по достоинству оценённое учениками</li>\r\n                            <li>Хорошая репутация и лучшие партнёры</li>\r\n                            <li>Широкая аудитория онлайн-сообществ DJ Центров</li>\r\n                            <li>Уникальная атмосфера и свое коммьюнити</li>\r\n                        </ul>\r\n                        <p>&nbsp;</p>\r\n                    </div>\r\n                </div>\r\n            </div>', 25, NULL, 'moscow_desc', NULL),
(10, NULL, '<div class="row">\r\n                <div class="sections-holder responsive">\r\n                    <div class="service-includes">\r\n                        <p>Подарочная карта - вы вносите депозит и оформляете данную карту на человека, которому собираетесь сделать презент. После торжества данный человек может потратить депозит карты на обучение в DJ Школе, на приобретение оборудования в DJ Магазине, либо на тренинг в нашем DJ Центре в формате абонемента или разовых посещений.</p>\r\n                        <p class="description">&nbsp;</p>\r\n                        <p>Карта выпускника DJ Школы Pioneer DJ School - многофункциональная карта включающая в себя следующие привилегии:</p>\r\n                        <p class="description">&nbsp;</p>\r\n                        <ul>\r\n                            <li>скидка на приобретение оборудования 10% от рекомендованной розничной цены</li>\r\n                            <li>скидка на последующие курсы DJ Центра</li>\r\n                            <li>посещение закрытых мастер-классов, интервью и презентаций новинок по DJ Оборудованию</li>\r\n                            <li>привилегии на основе системы продвижения выпускников Pioneer DJ Family</li>\r\n                        </ul>\r\n                        <br /><strong>Карта выдаётся при:</strong><br />\r\n                        <ul>\r\n                            <li>окончании любого курса DJ Школы Pioneer DJ School</li>\r\n                            <li>приобретении любого оборудования в DJ Магазине Pioneer DJ School</li>\r\n                            <li>оформлении тренинга в DJ Центре Pioneer DJ School</li>\r\n                            <li>оформлении подарочной карты и внесении на неё депозита</li>\r\n                        </ul>\r\n                        <p>&nbsp;</p>\r\n                        <p>Тренинг-абонемент - карта, оформленная на человека, который приобрёл тренинг в DJ Центре Pioneer DJ Moscow</p>\r\n                        <p class="description">&nbsp;</p>\r\n                        <p>Наши преимущества:</p>\r\n                        <p class="description">&nbsp;</p>\r\n                        <ul>\r\n                            <li>Официальная школа бренда Pioneer DJ в России</li>\r\n                            <li>Серьёзное партнерское вознаграждение</li>\r\n                            <li>Только самое современное и новое оборудование Pioneer</li>\r\n                            <li>Уникальная система по продвижению и трудоустройству выпускников</li>\r\n                            <li>Индивидуальный подход к каждому клиенту</li>\r\n                            <li>Качественное обучение, по достоинству оценённое учениками</li>\r\n                            <li>Хорошая репутация и лучшие партнёры</li>\r\n                            <li>Широкая аудитория онлайн-сообществ DJ Центров</li>\r\n                            <li>Уникальная атмосфера и свое коммьюнити</li>\r\n                        </ul>\r\n                        <p>&nbsp;</p>\r\n                    </div>\r\n                </div>\r\n            </div>', 25, NULL, 'peter_desc', NULL),
(11, NULL, '<div class="row">\r\n                <div class="sections-holder responsive">\r\n                    <div class="service-includes">\r\n                        <p>Подарочная карта - вы вносите депозит и оформляете данную карту на человека, которому собираетесь сделать презент. После торжества данный человек может потратить депозит карты на обучение в DJ Школе, на приобретение оборудования в DJ Магазине, либо на тренинг в нашем DJ Центре в формате абонемента или разовых посещений.</p>\r\n                        <p class="description">&nbsp;</p>\r\n                        <p>Карта выпускника DJ Школы Pioneer DJ School - многофункциональная карта включающая в себя следующие привилегии:</p>\r\n                        <p class="description">&nbsp;</p>\r\n                        <ul>\r\n                            <li>скидка на приобретение оборудования 10% от рекомендованной розничной цены</li>\r\n                            <li>скидка на последующие курсы DJ Центра</li>\r\n                            <li>посещение закрытых мастер-классов, интервью и презентаций новинок по DJ Оборудованию</li>\r\n                            <li>привилегии на основе системы продвижения выпускников Pioneer DJ Family</li>\r\n                        </ul>\r\n                        <br /><strong>Карта выдаётся при:</strong><br />\r\n                        <ul>\r\n                            <li>окончании любого курса DJ Школы Pioneer DJ School</li>\r\n                            <li>приобретении любого оборудования в DJ Магазине Pioneer DJ School</li>\r\n                            <li>оформлении тренинга в DJ Центре Pioneer DJ School</li>\r\n                            <li>оформлении подарочной карты и внесении на неё депозита</li>\r\n                        </ul>\r\n                        <p>&nbsp;</p>\r\n                        <p>Тренинг-абонемент - карта, оформленная на человека, который приобрёл тренинг в DJ Центре Pioneer DJ Moscow</p>\r\n                        <p class="description">&nbsp;</p>\r\n                        <p>Наши преимущества:</p>\r\n                        <p class="description">&nbsp;</p>\r\n                        <ul>\r\n                            <li>Официальная школа бренда Pioneer DJ в России</li>\r\n                            <li>Серьёзное партнерское вознаграждение</li>\r\n                            <li>Только самое современное и новое оборудование Pioneer</li>\r\n                            <li>Уникальная система по продвижению и трудоустройству выпускников</li>\r\n                            <li>Индивидуальный подход к каждому клиенту</li>\r\n                            <li>Качественное обучение, по достоинству оценённое учениками</li>\r\n                            <li>Хорошая репутация и лучшие партнёры</li>\r\n                            <li>Широкая аудитория онлайн-сообществ DJ Центров</li>\r\n                            <li>Уникальная атмосфера и свое коммьюнити</li>\r\n                        </ul>\r\n                        <p>&nbsp;</p>\r\n                    </div>\r\n                </div>\r\n            </div>', 25, NULL, 'nsk_desc', NULL),
(12, NULL, '<div class="row">\r\n                <div class="sections-holder responsive">\r\n                    <div class="service-includes">\r\n                        <p>Подарочная карта - вы вносите депозит и оформляете данную карту на человека, которому собираетесь сделать презент. После торжества данный человек может потратить депозит карты на обучение в DJ Школе, на приобретение оборудования в DJ Магазине, либо на тренинг в нашем DJ Центре в формате абонемента или разовых посещений.</p>\r\n                        <p class="description">&nbsp;</p>\r\n                        <p>Карта выпускника DJ Школы Pioneer DJ School - многофункциональная карта включающая в себя следующие привилегии:</p>\r\n                        <p class="description">&nbsp;</p>\r\n                        <ul>\r\n                            <li>скидка на приобретение оборудования 10% от рекомендованной розничной цены</li>\r\n                            <li>скидка на последующие курсы DJ Центра</li>\r\n                            <li>посещение закрытых мастер-классов, интервью и презентаций новинок по DJ Оборудованию</li>\r\n                            <li>привилегии на основе системы продвижения выпускников Pioneer DJ Family</li>\r\n                        </ul>\r\n                        <br /><strong>Карта выдаётся при:</strong><br />\r\n                        <ul>\r\n                            <li>окончании любого курса DJ Школы Pioneer DJ School</li>\r\n                            <li>приобретении любого оборудования в DJ Магазине Pioneer DJ School</li>\r\n                            <li>оформлении тренинга в DJ Центре Pioneer DJ School</li>\r\n                            <li>оформлении подарочной карты и внесении на неё депозита</li>\r\n                        </ul>\r\n                        <p>&nbsp;</p>\r\n                        <p>Тренинг-абонемент - карта, оформленная на человека, который приобрёл тренинг в DJ Центре Pioneer DJ Moscow</p>\r\n                        <p class="description">&nbsp;</p>\r\n                        <p>Наши преимущества:</p>\r\n                        <p class="description">&nbsp;</p>\r\n                        <ul>\r\n                            <li>Официальная школа бренда Pioneer DJ в России</li>\r\n                            <li>Серьёзное партнерское вознаграждение</li>\r\n                            <li>Только самое современное и новое оборудование Pioneer</li>\r\n                            <li>Уникальная система по продвижению и трудоустройству выпускников</li>\r\n                            <li>Индивидуальный подход к каждому клиенту</li>\r\n                            <li>Качественное обучение, по достоинству оценённое учениками</li>\r\n                            <li>Хорошая репутация и лучшие партнёры</li>\r\n                            <li>Широкая аудитория онлайн-сообществ DJ Центров</li>\r\n                            <li>Уникальная атмосфера и свое коммьюнити</li>\r\n                        </ul>\r\n                        <p>&nbsp;</p>\r\n                    </div>\r\n                </div>\r\n            </div>', 25, NULL, 'almati_desc', NULL),
(13, NULL, '<div class="row">\r\n                <div class="sections-holder responsive">\r\n                    <div class="service-includes">\r\n\r\n                        <p>Рекомендуйте наши курсы друзьям и получайте деньги за каждого студента!</p>\r\n                        <p class="description">Внимание!<br>Приглашайте друзей и получайте 2000 рублей за каждого студента, оплатившего обучение по вашей рекомендации. Приглашенный вами студент так же получит скидку 1000 руб.\r\n\r\n                        </p>\r\n\r\n\r\n                        <p>Кроме того, в качестве дополнительного бонуса у партнеров есть возможность бесплатного обучения на курсах школы:</p>\r\n                        <p class="description"></p><ul><li>Каждые 10 клиентов - бесплатный курс от школы на выбор.</li></ul>\r\n\r\n                        <p></p>\r\n\r\n\r\n                        <p>Мы нацелены на долгосрочные и плодотворные отношения с партнерами, поэтому сами заинтересованы в Ваших высоких результатах!</p>\r\n                        <p class="description">\r\n\r\n                        </p>\r\n\r\n\r\n                        <p>Наши преимущества:</p>\r\n                        <p class="description"></p><ul><li>Официальная школа бренда Pioneer DJ в России</li><li>Серьёзное партнерское вознаграждение</li><li>Только самое современное и новое оборудование Pioneer</li><li>Уникальная система по продвижению и трудоустройству выпускников</li><li> Индивидуальный подход к каждому клиенту</li><li>Качественное обучение, по достоинству оценённое учениками</li><li>Хорошая репутация и лучшие партнёры</li><li>Широкая аудитория онлайн-сообществ DJ Центров</li><li>Уникальная атмосфера и свое коммьюнити</li></ul>\r\n\r\n                        <p></p>\r\n\r\n\r\n\r\n                    </div>\r\n\r\n                </div>\r\n            </div>', 26, NULL, 'moscow_desc', NULL),
(14, NULL, '<div class="row">\r\n                <div class="sections-holder responsive">\r\n                    <div class="service-includes">\r\n\r\n                        <p>Рекомендуйте наши курсы друзьям и получайте деньги за каждого студента!</p>\r\n                        <p class="description">Внимание!<br>Приглашайте друзей и получайте 1000 рублей за каждого студента, оплатившего обучение по вашей рекомендации. Приглашенный вами студент так же получит скидку 1000 руб.\r\n\r\n                        </p>\r\n\r\n\r\n                        <p>Кроме того, в качестве дополнительного бонуса у партнеров есть возможность бесплатного обучения на курсах школы:</p>\r\n                        <p class="description"></p><ul><li>Каждые 10 клиентов - бесплатный курс от школы на выбор.</li></ul>\r\n\r\n                        <p></p>\r\n\r\n\r\n                        <p>Мы нацелены на долгосрочные и плодотворные отношения с партнерами, поэтому сами заинтересованы в Ваших высоких результатах!</p>\r\n                        <p class="description">\r\n\r\n                        </p>\r\n\r\n\r\n                        <p>Наши преимущества:</p>\r\n                        <p class="description"></p><ul><li>Официальная школа бренда Pioneer DJ в России</li><li>Серьёзное партнерское вознаграждение</li><li>Только самое современное и новое оборудование Pioneer</li><li>Уникальная система по продвижению и трудоустройству выпускников</li><li> Индивидуальный подход к каждому клиенту</li><li>Качественное обучение, по достоинству оценённое учениками</li><li>Хорошая репутация и лучшие партнёры</li><li>Широкая аудитория онлайн-сообществ DJ Центров</li><li>Уникальная атмосфера и свое коммьюнити</li></ul>\r\n\r\n                        <p></p>\r\n\r\n\r\n\r\n                    </div>\r\n\r\n                </div>\r\n            </div>', 26, NULL, 'peter_desc', NULL),
(15, NULL, '<div class="row">\r\n                <div class="sections-holder responsive">\r\n                    <div class="service-includes">\r\n\r\n                        <p>Рекомендуйте наши курсы друзьям и получайте деньги за каждого студента!</p>\r\n                        <p class="description">Внимание!<br>Приглашайте друзей и получайте 1000 рублей за каждого студента, оплатившего обучение по вашей рекомендации. Приглашенный вами студент так же получит скидку 1000 руб.\r\n\r\n                        </p>\r\n\r\n\r\n                        <p>Кроме того, в качестве дополнительного бонуса у партнеров есть возможность бесплатного обучения на курсах школы:</p>\r\n                        <p class="description"></p><ul><li>Каждые 10 клиентов - бесплатный курс от школы на выбор.</li></ul>\r\n\r\n                        <p></p>\r\n\r\n\r\n                        <p>Мы нацелены на долгосрочные и плодотворные отношения с партнерами, поэтому сами заинтересованы в Ваших высоких результатах!</p>\r\n                        <p class="description">\r\n\r\n                        </p>\r\n\r\n\r\n                        <p>Наши преимущества:</p>\r\n                        <p class="description"></p><ul><li>Официальная школа бренда Pioneer DJ в России</li><li>Серьёзное партнерское вознаграждение</li><li>Только самое современное и новое оборудование Pioneer</li><li>Уникальная система по продвижению и трудоустройству выпускников</li><li> Индивидуальный подход к каждому клиенту</li><li>Качественное обучение, по достоинству оценённое учениками</li><li>Хорошая репутация и лучшие партнёры</li><li>Широкая аудитория онлайн-сообществ DJ Центров</li><li>Уникальная атмосфера и свое коммьюнити</li></ul>\r\n\r\n                        <p></p>\r\n\r\n\r\n\r\n                    </div>\r\n\r\n                </div>\r\n            </div>', 26, NULL, 'nsk_desc', NULL),
(16, NULL, '<div class="row">\r\n                <div class="sections-holder responsive">\r\n                    <div class="service-includes">\r\n\r\n                        <p>Рекомендуйте наши курсы друзьям и получайте деньги за каждого студента!</p>\r\n                        <p class="description">Внимание!<br>Приглашайте друзей и получайте 5000 тг. за каждого студента, оплатившего обучение по вашей рекомендации. Приглашенный вами студент также получит скидку 5000тг.\r\n\r\n                        </p>\r\n\r\n\r\n                        <p>Кроме того, в качестве дополнительного бонуса у партнеров есть возможность бесплатного обучения на курсах школы:</p>\r\n                        <p class="description"></p><ul><li>Каждые 10 клиентов - бесплатный курс от школы на выбор.</li></ul>\r\n\r\n                        <p></p>\r\n\r\n\r\n                        <p>Мы нацелены на долгосрочные и плодотворные отношения с партнерами, поэтому сами заинтересованы в Ваших высоких результатах!</p>\r\n                        <p class="description">\r\n\r\n                        </p>\r\n\r\n\r\n                        <p>Наши преимущества:</p>\r\n                        <p class="description"></p><ul><li>Официальная школа бренда Pioneer DJ в Казахстане</li><li>Серьёзное партнерское вознаграждение</li><li>Только самое современное и новое оборудование Pioneer</li><li>Уникальная система по продвижению и трудоустройству выпускников</li><li> Индивидуальный подход к каждому клиенту</li><li>Качественное обучение, по достоинству оценённое учениками</li><li>Хорошая репутация и лучшие партнёры</li><li>Широкая аудитория онлайн-сообществ DJ Центров</li><li>Уникальная атмосфера и свое коммьюнити</li></ul>\r\n\r\n                        <p></p>\r\n\r\n\r\n\r\n                    </div>\r\n\r\n                </div>\r\n            </div>', 26, NULL, 'almati_desc', NULL),
(17, NULL, '<div class="row">\r\n                <div class="sections-holder responsive">\r\n                    <div class="service-includes">\r\n\r\n                        <p>Pioneer DJ TV - это DJ канал и официальные DJ видео-студии, созданные на базе DJ центров Pioneer DJ School.</p>\r\n                        <p class="description">\r\n\r\n                        </p>\r\n\r\n\r\n                        <p>Ресурсы проекта:</p>\r\n                        <p class="description"></p><ul><li>Канал на Youtube - https://www.youtube.com/c/pioneerdjtvru</li><li>Группа в vk - https://vk.com/pioneerdjtv</li></ul>\r\n\r\n                        <p></p>\r\n\r\n\r\n                        <p>Оборудование DJ Студии Pioneer DJ School:</p>\r\n                        <p class="description"></p><ul><li>Микшерный пульт: Pioneer DJM-900 Nexus</li><li>Проигрыватели: Pioneer CDJ-2000 Nexus</li><li>Проигрыватели винила: Pioneer PLX-1000</li><li>Ремикс-станция: Pioneer RMX-1000</li><li>Студийные мониторы: Pioneer S-DJ60X</li></ul>\r\n\r\n                        <p></p>\r\n\r\n\r\n                        <p>Условия:</p>\r\n                        <p class="description"></p><ul><li>Продолжительность - не более 60 минут</li><li>Время съёмки - назначается индивидуально</li></ul>\r\n\r\n                        <p></p>\r\n\r\n\r\n\r\n                    </div>\r\n\r\n                    <h3>Стоимость: Стоимость: 9000 тенге /для учеников 5 000 тенге</h3>\r\n\r\n                </div>\r\n            </div>', 27, NULL, 'almati_desc', NULL),
(18, NULL, '', 28, NULL, 'almati_desc', NULL),
(19, NULL, '', 29, NULL, 'almati_desc', NULL),
(20, NULL, '', 30, NULL, 'almati_desc', NULL),
(21, NULL, '<div class="row">\r\n                <div class="sections-holder responsive">\r\n                    <div class="service-includes">\r\n\r\n                        <p>Фотосессия проходи в DJ Центре</p>\r\n                        <p class="description">\r\n\r\n                        </p>\r\n\r\n\r\n                        <p>Фотографии делаются на белом фоне, чёрном фоне, за DJ Оборудованием и в свободной форме (по желанию заказчика)</p>\r\n                        <p class="description">\r\n\r\n                        </p>\r\n\r\n\r\n                        <p>Срок изготовления фотографий - 1 неделя.</p>\r\n                        <p class="description">\r\n\r\n                        </p>\r\n\r\n\r\n                        <p>Дату и время осуществления фотосессии необходимо бронировать заранее.</p>\r\n                        <p class="description">\r\n\r\n                        </p>\r\n\r\n\r\n\r\n                    </div>\r\n\r\n                    <h3>Стоимость: 4 000р.</h3>\r\n\r\n                </div>\r\n            </div>', 27, NULL, 'moscow_desc', NULL),
(22, NULL, '<div class="row">\r\n                <div class="sections-holder responsive">\r\n                    <div class="service-includes">\r\n\r\n                        <p></p>\r\n                        <p class="description">Мы предоставляем в аренду самое актуальное DJ оборудование по демократичным ценам. Теперь Ваша вечеринка будет не только весёлой но и выгодной!\r\n\r\n                        </p>\r\n\r\n\r\n                        <p></p>\r\n                        <p class="description">В аренду предоставляются: Стационарные комплекты DJ Оборудования, DJ Системы всё в одном, Midi-контроллеры\r\n\r\n                        </p>\r\n\r\n\r\n                        <p></p>\r\n                        <p class="description">Наличие конкретного оборудования и его не занятость на интересующую вас дату уточняйте заранее.\r\n\r\n                        </p>\r\n\r\n\r\n                        <p></p>\r\n                        <p class="description">Бронирование даты и времени происходит заранее.\r\n\r\n                        </p>\r\n\r\n\r\n\r\n                    </div>\r\n\r\n                    <h3>Стоимость: от 2 500 р./час</h3>\r\n\r\n                </div>\r\n            </div>', 28, NULL, 'moscow_desc', NULL),
(23, NULL, '<div class="row">\r\n                <div class="sections-holder responsive">\r\n                    <div class="service-includes">\r\n\r\n\r\n                    </div>\r\n	\r\n\r\n               \r\n                <p class="description">Для тренинга предоставляется абсолютно любое DJ Оборудование которое представлено в DJ Центре. <br>Бронирование даты и времени происходит заранее.</p>\r\n           \r\n                    <h3>Стоимость: 500 р./час</h3>\r\n\r\n                </div>\r\n</div>', 29, NULL, 'moscow_desc', NULL),
(24, NULL, '<div class="row">\r\n                <div class="sections-holder responsive">\r\n                    <div class="service-includes">\r\n\r\n                        <p>Pioneer DJ TV - это DJ канал и официальные DJ видео-студии, созданные на базе DJ центров Pioneer DJ School.</p>\r\n                        <p class="description">\r\n\r\n                        </p>\r\n\r\n\r\n                        <p>Ресурсы проекта:</p>\r\n                        <p class="description"></p><ul><li>Канал на Youtube - https://www.youtube.com/c/pioneerdjtvru</li><li>Группа в vk - https://vk.com/pioneerdjtv</li></ul>\r\n\r\n                        <p></p>\r\n\r\n\r\n                        <p>Оборудование DJ Студии Pioneer DJ School:</p>\r\n                        <p class="description"></p><ul><li>Микшерный пульт: Pioneer DJM-900 Nexus</li><li>Проигрыватели: Pioneer CDJ-2000 Nexus</li><li>Проигрыватели винила: Pioneer PLX-1000</li><li>Ремикс-станция: Pioneer RMX-1000</li><li>Студийные мониторы: Pioneer S-DJ60X</li></ul>\r\n\r\n                        <p></p>\r\n\r\n\r\n                        <p>Условия:</p>\r\n                        <p class="description"></p><ul><li>Продолжительность - не более 60 минут</li><li>Время съёмки - назначается индивидуально</li></ul>\r\n\r\n                        <p></p>\r\n\r\n\r\n\r\n                    </div>\r\n\r\n                    <h3>Стоимость: от 2 500р. /для учеников 1 500 р</h3>\r\n\r\n                </div>\r\n            </div>', 30, NULL, 'moscow_desc', NULL),
(25, NULL, '', 27, NULL, 'peter_desc', NULL),
(26, NULL, '<div class="row">\r\n                <div class="sections-holder responsive">\r\n                    <div class="service-includes">\r\n\r\n                        <p></p>\r\n                        <p class="description">Мы предоставляем в аренду самое актуальное DJ оборудование по демократичным ценам. Теперь Ваша вечеринка будет не только весёлой но и выгодной!\r\n\r\n                        </p>\r\n\r\n\r\n                        <p></p>\r\n                        <p class="description">В аренду предоставляются: Стационарные комплекты DJ Оборудования, DJ Системы всё в одном, Midi-контроллеры\r\n\r\n                        </p>\r\n\r\n\r\n                        <p></p>\r\n                        <p class="description">Наличие конкретного оборудования и его не занятость на интересующую вас дату уточняйте заранее.\r\n\r\n                        </p>\r\n\r\n\r\n                        <p></p>\r\n                        <p class="description">Бронирование даты и времени происходит заранее.\r\n\r\n                        </p>\r\n\r\n\r\n\r\n                    </div>\r\n\r\n                    <h3>Стоимость: от 2 500 р./час</h3>\r\n\r\n                </div>\r\n            </div>', 28, NULL, 'peter_desc', NULL),
(27, NULL, '<div class="row">\r\n                <div class="sections-holder responsive">\r\n                    <div class="service-includes">\r\n\r\n\r\n                    </div>\r\n		<p class="description">Для тренинга предоставляется абсолютно любое DJ Оборудование которое представлено в DJ Центре. <br>Бронирование даты и времени происходит заранее.</p>\r\n                    <h3>Стоимость: 500 р./час</h3>\r\n\r\n                </div>\r\n            </div>', 29, NULL, 'peter_desc', NULL),
(28, NULL, '<div class="row">\r\n                <div class="sections-holder responsive">\r\n                    <div class="service-includes">\r\n\r\n                        <p>Pioneer DJ TV - это DJ канал и официальные DJ видео-студии, созданные на базе DJ центров Pioneer DJ School.</p>\r\n                        <p class="description">\r\n\r\n                        </p>\r\n\r\n\r\n                        <p>Ресурсы проекта:</p>\r\n                        <p class="description"></p><ul><li>Канал на Youtube - https://www.youtube.com/c/pioneerdjtvru</li><li>Группа в vk - https://vk.com/pioneerdjtv</li></ul>\r\n\r\n                        <p></p>\r\n\r\n\r\n                        <p>Оборудование DJ Студии Pioneer DJ School:</p>\r\n                        <p class="description"></p><ul><li>Микшерный пульт: Pioneer DJM-900 Nexus</li><li>Проигрыватели: Pioneer CDJ-2000 Nexus</li><li>Проигрыватели винила: Pioneer PLX-1000</li><li>Ремикс-станция: Pioneer RMX-1000</li><li>Студийные мониторы: Pioneer S-DJ60X</li></ul>\r\n\r\n                        <p></p>\r\n\r\n\r\n                        <p>Условия:</p>\r\n                        <p class="description"></p><ul><li>Продолжительность - не более 60 минут</li><li>Время съёмки - назначается индивидуально</li></ul>\r\n\r\n                        <p></p>\r\n\r\n\r\n\r\n                    </div>\r\n\r\n                    <h3>Стоимость: 3 000р. /для учеников 2 000 р</h3>\r\n\r\n                </div>\r\n            </div>', 30, NULL, 'peter_desc', NULL),
(29, NULL, '', 27, NULL, 'nsk_desc', NULL),
(30, NULL, '<div class="row">\r\n                <div class="sections-holder responsive">\r\n                    <div class="service-includes">\r\n\r\n                        <p></p>\r\n                        <p class="description">Мы предоставляем в аренду самое актуальное DJ оборудование по демократичным ценам. Теперь Ваша вечеринка будет не только весёлой но и выгодной!\r\n\r\n                        </p>\r\n\r\n\r\n                        <p></p>\r\n                        <p class="description">В аренду предоставляются: Стационарные комплекты DJ Оборудования, DJ Системы всё в одном, Midi-контроллеры\r\n\r\n                        </p>\r\n\r\n\r\n                        <p></p>\r\n                        <p class="description">Наличие конкретного оборудования и его не занятость на интересующую вас дату уточняйте заранее.\r\n\r\n                        </p>\r\n\r\n\r\n                        <p></p>\r\n                        <p class="description">Бронирование даты и времени происходит заранее.\r\n\r\n                        </p>\r\n\r\n\r\n\r\n                    </div>\r\n\r\n                    <h3>Стоимость: от 1 000 р./час</h3>\r\n\r\n                </div>\r\n            </div>', 28, NULL, 'nsk_desc', NULL),
(31, NULL, '<div class="row">\r\n                <div class="sections-holder responsive">\r\n                    <div class="service-includes">\r\n\r\n\r\n                    </div>\r\n		<p class="description">Для тренинга предоставляется абсолютно любое DJ Оборудование которое представлено в DJ Центре. <br>Бронирование даты и времени происходит заранее.</p>\r\n                    <h3>Стоимость: 400 р./час</h3>\r\n\r\n                </div>\r\n            </div>', 29, NULL, 'nsk_desc', NULL),
(32, NULL, '<div class="row">\r\n                <div class="sections-holder responsive">\r\n                    <div class="service-includes">\r\n\r\n                        <p>Pioneer DJ TV - это DJ канал и официальные DJ видео-студии, созданные на базе DJ центров Pioneer DJ School.</p>\r\n                        <p class="description">\r\n\r\n                        </p>\r\n\r\n\r\n                        <p>Ресурсы проекта:</p>\r\n                        <p class="description"></p><ul><li>Канал на Youtube - https://www.youtube.com/c/pioneerdjtvru</li><li>Группа в vk - https://vk.com/pioneerdjtv</li></ul>\r\n\r\n                        <p></p>\r\n\r\n\r\n                        <p>Оборудование DJ Студии Pioneer DJ School:</p>\r\n                        <p class="description"></p><ul><li>Микшерный пульт: Pioneer DJM-900 Nexus</li><li>Проигрыватели: Pioneer CDJ-2000 Nexus</li><li>Проигрыватели винила: Pioneer PLX-1000</li><li>Ремикс-станция: Pioneer RMX-1000</li><li>Студийные мониторы: Pioneer S-DJ60X</li></ul>\r\n\r\n                        <p></p>\r\n\r\n\r\n                        <p>Условия:</p>\r\n                        <p class="description"></p><ul><li>Продолжительность - не более 60 минут</li><li>Время съёмки - назначается индивидуально</li></ul>\r\n\r\n                        <p></p>\r\n\r\n\r\n\r\n                    </div>\r\n\r\n                    <h3>Стоимость: 1 500р. /для учеников 1 000 р</h3>\r\n\r\n                </div>\r\n            </div>', 30, NULL, 'nsk_desc', NULL),
(33, NULL, 'nsk,moscow,peter,almati', 26, NULL, 'city_array', NULL),
(34, NULL, 'moscow,almati', 27, NULL, 'city_array', NULL),
(35, NULL, 'nsk,moscow,peter', 28, NULL, 'city_array', NULL),
(36, NULL, 'nsk,moscow,peter', 29, NULL, 'city_array', NULL),
(37, NULL, 'nsk,moscow,peter', 30, NULL, 'city_array', NULL),
(38, NULL, 'nsk', 31, NULL, 'city', NULL),
(39, NULL, 'nsk', 33, NULL, 'city', NULL),
(40, NULL, 'nsk', 34, NULL, 'city', NULL),
(41, NULL, 'nsk', 35, NULL, 'city', NULL),
(42, NULL, 'nsk', 36, NULL, 'city', NULL),
(54, NULL, 'nsk', 32, NULL, 'city', NULL),
(55, NULL, 'nsk', 48, NULL, 'city', NULL),
(56, NULL, 'nsk', 49, NULL, 'city', NULL),
(57, NULL, 'nsk', 50, NULL, 'city', NULL),
(58, NULL, 'https://www.youtube.com/embed/JKdjPhB5eGA', 51, NULL, 'url', NULL),
(59, NULL, 'nsk', 52, NULL, 'city', NULL),
(60, NULL, 'https://www.youtube.com/embed/wfOBJXyHnM4"', 53, NULL, 'url', NULL),
(61, NULL, 'https://www.youtube.com/embed/PzmSu7J-8v0', 54, NULL, 'url', NULL),
(62, NULL, 'https://www.youtube.com/embed/7M0Ue0HySsM', 55, NULL, 'url', NULL),
(63, NULL, 'moscow', 56, NULL, 'city', NULL),
(64, NULL, 'almati', 57, NULL, 'city', NULL),
(65, NULL, 'moscow', 58, NULL, 'city', NULL),
(66, NULL, 'almati', 59, NULL, 'city', NULL),
(67, NULL, 'nsk,moscow,peter,almati', 1, NULL, 'city_courses_array', NULL),
(68, NULL, 'nsk,moscow,peter,almati', 2, NULL, 'city_courses_array', NULL),
(69, NULL, 'moscow,peter,almati', 3, NULL, 'city_courses_array', NULL),
(70, NULL, 'nsk,moscow,peter,almati', 4, NULL, 'city_courses_array', NULL),
(71, NULL, 'nsk,moscow,peter,almati', 5, NULL, 'city_courses_array', NULL),
(72, NULL, 'nsk,moscow,peter,almati', 6, NULL, 'city_courses_array', NULL),
(73, NULL, 'moscow,peter', 7, NULL, 'city_courses_array', NULL),
(74, NULL, 'moscow,peter', 8, NULL, 'city_courses_array', NULL),
(75, NULL, 'moscow,peter', 9, NULL, 'city_courses_array', NULL),
(76, NULL, 'moscow,peter', 10, NULL, 'city_courses_array', NULL),
(77, NULL, '<div class="content-container-wrapper course-cons">\r\n    <div class="content-container">\r\n        <div class="content">\r\n            <div class="row">\r\n                <div class="col-md-12">\r\n                    <div class="bg">\r\n                        <ul>\r\n\r\n                            <li><span class="cons-label cons-label-left cons-1">Официальная DJ школа Pioneer DJ</span></li>\r\n\r\n                            <li><span class="cons-label cons-label-left cons-1">Индивидуальное обучение</span></li>\r\n\r\n                            <li><span class="cons-label cons-label-left cons-1">Индивидуальный график</span></li>\r\n\r\n                            <li><span class="cons-label cons-label-left cons-1">Опытные преподаватели</span></li>\r\n\r\n                            <li><span class="cons-label cons-label-left cons-1">Без ограничений по возрасту</span></li>\r\n\r\n                            <li><span class="cons-label cons-label-left cons-1">индивидуальный подход к каждому ученику</span></li>\r\n\r\n                            <li><span class="cons-label cons-label-left cons-1">Возможна оплата частями</span></li>\r\n\r\n                            <li><span class="cons-label cons-label-left cons-1">лучшее DJ оборудование</span></li>\r\n\r\n                            <li><span class="cons-label cons-label-left cons-1">Сертификат по окончании</span></li>\r\n\r\n                            <li><span class="cons-label cons-label-left cons-1">поддержка и продвижение<br />после обучения</span></li>\r\n\r\n                        </ul>\r\n                    </div>\r\n                </div>\r\n            </div>\r\n        </div>\r\n    </div>\r\n</div>', 1, NULL, 'special', NULL),
(78, NULL, '<div class="section section-product-features">\r\n    <div class="container">\r\n        <h2 class="h2">КЛЮЧЕВЫЕ ОСОБЕННОСТИ</h2>\r\n        <div class="row features-key">\r\n            <div class="list">\r\n                <ul>\r\n                    <li>\r\n                        <div class="feature compact active">\r\n                            <div class="head">\r\n                                <h3 class="h3">Только индивидуальное обучение</h3>\r\n                                <img src="/css/images/content/courses/moscow/add/cons1.jpg" alt="s">\r\n                            </div>\r\n                            <div class="body">\r\n                                <p>Занятия проходят только в формате тет-а-тет преподаватель-ученик</p>\r\n\r\n\r\n                            </div>\r\n                        </div>\r\n                    </li>\r\n                    <li>\r\n                        <div class="feature compact">\r\n                            <div class="head">\r\n                                <h3 class="h3">Курс состоит из 15 занятий по 2 часа</h3>\r\n                                <img src="/css/images/content/courses/moscow/add/cons2.jpg" alt="">\r\n                            </div>\r\n                            <div class="body">\r\n                                <p>Средняя продолжительность курса - 2 месяца (по 2-3 занятия в неделю) /при желании можно заниматься чаще/</p>\r\n\r\n\r\n                            </div>\r\n                        </div>\r\n                    </li>\r\n                    <li>\r\n                        <div class="feature compact">\r\n                            <div class="head">\r\n                                <h3 class="h3">Курс можно оплатить частями</h3>\r\n                                <img src="/css/images/content/courses/moscow/add/cons3.jpg" alt="">\r\n                            </div>\r\n                            <div class="body">\r\n                                <p>Курс можно оплачивать по половине стоимости: 50% стоимости в начале и 50% стоимости в середине</p>\r\n\r\n\r\n                            </div>\r\n                        </div>\r\n                    </li>\r\n                    <li>\r\n                        <div class="feature compact">\r\n                            <div class="head">\r\n                                <h3 class="h3">Предоставляется свободная практика на оборудовании DJ Центра</h3>\r\n                                <img src="/css/images/content/courses/moscow/add/cons4.jpg" alt="">\r\n                            </div>\r\n                            <div class="body">\r\n                                <p>Между занятиями каждому ученику предоставляется возможность отработать полученные навыки на занятиях с преподавателем на любом оборудовании DJ Центра</p>\r\n\r\n\r\n                            </div>\r\n                        </div>\r\n                    </li>\r\n                </ul>\r\n            </div>\r\n            <div class="viewmaster jogwheel" style="top: 0px;">\r\n                <div class="view">\r\n                    <div class="picture-wrap"></div>\r\n                    <div class="mask"></div>\r\n                    <a href="#" class="controlbtn trigger__open-overlayer video-player hidden" data-title="" style=""><span class="ico icon-controlbtn-play"><span class="sr-only">Play</span></span></a>\r\n                </div>\r\n            </div>\r\n        </div>\r\n    </div>\r\n</div>', 1, NULL, 'moscow_features', NULL),
(79, NULL, '<div class="section section-product-info">\r\n    <div class="container">\r\n\r\n        <!--\r\n            Add class has-serie if this highlight block exists\r\n            Add class has-latest-update if this highlight block exists\r\n        -->\r\n\r\n        <div class="info has-serie has-latest-update row">\r\n\r\n            <div class="col usp">\r\n\r\n                <h2>БАЗОВЫЙ КУРС ВКЛЮЧАЕТ В СЕБЯ:</h2>\r\n                <div class="course-includes-block col-md-12">\r\n\r\n                    <ul>\r\n\r\n                        <li>Терминология и знакомство с оборудованием</li>\r\n\r\n                        <li>Предоставление оф. материалов по подготовке от компании Pioпeer DJ</li>\r\n\r\n                        <li>Предоставление музыки (при необходимости)</li>\r\n\r\n                        <li>Теоретическая основа, история, слецифика музыкальных стилей</li>\r\n\r\n                        <li>Техническое устройство и коммутация</li>\r\n\r\n                        <li>Самые популярные и актуальные виды и типы сведений</li>\r\n\r\n                        <li>Проработка (тренинг) слуха</li>\r\n\r\n                        <li>Фаст-миксинг (скоростные сведения)</li>\r\n\r\n                        <li>Сведение на СD / USB (rekordbox) / Wi-Fi (rekordbox)</li>\r\n\r\n                        <li>Разработка индивидуальности выступлений</li>\r\n\r\n                        <li>Проработка эффектов и преобразование звучания</li>\r\n\r\n                        <li>Сведение на 3-х проигрывателях</li>\r\n\r\n                        <li>Основы качественных выступлений (проработка дальнейших выступлений)</li>\r\n\r\n                        <li>Информация относительно источников покупки/скачивания, структуризации, специфики музыки</li>\r\n\r\n                        <li>Запись Promo материалов для дальнейшего продвижения</li>\r\n\r\n                        <li>Информация о клубной культуре города а так же возможности работы /практика и дальнейшее продвижение/</li>\r\n\r\n                    </ul>\r\n\r\n                    <p class="additional-cons">По окончании школы выдаётся сертификат от компании Pioneer DJ</p>\r\n\r\n                    <p class="additional-cons">Предоставляется практика в ночных заведениях</p>\r\n\r\n                    <h3 class="block-header">Стоимость: 25 000 р.</h3>\r\n                </div>\r\n            </div>\r\n        </div>\r\n\r\n    </div>\r\n</div>', 1, NULL, 'moscow_desc', NULL),
(80, NULL, '<div class="content-container-wrapper course-cons">\r\n    <div class="content-container">\r\n        <div class="content">\r\n            <div class="row">\r\n                <div class="col-md-12">\r\n                    <div class="bg">\r\n                        <ul>\r\n\r\n                            <li><span class="cons-label cons-label-left cons-1">Официальная DJ школа Pioneer DJ</span></li>\r\n\r\n                            <li><span class="cons-label cons-label-left cons-1">Индивидуальное обучение</span></li>\r\n\r\n                            <li><span class="cons-label cons-label-left cons-1">Индивидуальный график</span></li>\r\n\r\n                            <li><span class="cons-label cons-label-left cons-1">Опытные преподаватели</span></li>\r\n\r\n                            <li><span class="cons-label cons-label-left cons-1">Без ограничений по возрасту</span></li>\r\n\r\n                            <li><span class="cons-label cons-label-left cons-1">индивидуальный подход к каждому ученику</span></li>\r\n\r\n                            <li><span class="cons-label cons-label-left cons-1">Возможна оплата частями</span></li>\r\n\r\n                            <li><span class="cons-label cons-label-left cons-1">лучшее DJ оборудование</span></li>\r\n\r\n                            <li><span class="cons-label cons-label-left cons-1">Сертификат по окончании</span></li>\r\n\r\n                            <li><span class="cons-label cons-label-left cons-1">поддержка и продвижение<br />после обучения</span></li>\r\n\r\n                        </ul>\r\n                    </div>\r\n                </div>\r\n            </div>\r\n        </div>\r\n    </div>\r\n</div>', 4, NULL, 'special', NULL),
(81, NULL, '<div class="section section-product-features">\r\n    <div class="container">\r\n        <h2 class="h2">КЛЮЧЕВЫЕ ОСОБЕННОСТИ</h2>\r\n        <div class="row features-key">\r\n            <div class="list">\r\n                <ul>\r\n                    <li>\r\n                        <div class="feature compact active">\r\n                            <div class="head">\r\n                                <h3 class="h3">Только индивидуальное обучение</h3>\r\n                                <img src="/css/images/content/courses/moscow/add/cons1.jpg" alt="32-bit-da-convertor-ess">\r\n                            </div>\r\n                            <div class="body">\r\n                                <p>Занятия проходят только в формате тет-а-тет преподаватель-ученик</p>\r\n\r\n\r\n                            </div>\r\n                        </div>\r\n                    </li>\r\n                    <li>\r\n                        <div class="feature compact">\r\n                            <div class="head">\r\n                                <h3 class="h3">Курс состоит из 15 занятий по 2 часа</h3>\r\n                                <img src="/css/images/content/courses/moscow/add/cons2.jpg?h=500&amp;w=500&amp;hash=9BB4FD4120B7E499EC107D2EF2A56DE0089B58F6" alt="digital-out-n">\r\n                            </div>\r\n                            <div class="body">\r\n                                <p>Средняя продолжительность курса - 2 месяца (по 2-3 занятия в неделю) /при желании можно заниматься чаще/</p>\r\n\r\n\r\n                            </div>\r\n                        </div>\r\n                    </li>\r\n                    <li>\r\n                        <div class="feature compact">\r\n                            <div class="head">\r\n                                <h3 class="h3">Курс можно оплатить частями</h3>\r\n                                <img src="/css/images/content/courses/moscow/add/cons3.jpg?h=500&amp;w=500&amp;hash=3C2744166B862D23598B6539C36CA827647690F6" alt="djm-fold-out-screen-n">\r\n                            </div>\r\n                            <div class="body">\r\n                                <p>Курс можно оплачивать по половине стоимости: 50% стоимости в начале и 50% стоимости в середине</p>\r\n\r\n\r\n                            </div>\r\n                        </div>\r\n                    </li>\r\n                    <li>\r\n                        <div class="feature compact">\r\n                            <div class="head">\r\n                                <h3 class="h3">Предоставляется свободная практика на оборудовании DJ Центра</h3>\r\n                                <img src="/css/images/content/courses/moscow/add/cons4.jpg?h=500&amp;w=500&amp;hash=66B7DC3A354A88A1DEE485E60E607DFE74CA48A1" alt="5-port-lan-hub-n">\r\n                            </div>\r\n                            <div class="body">\r\n                                <p>Между занятиями каждому ученику предоставляется возможность отработать полученные навыки на занятиях с преподавателем на любом оборудовании DJ Центра</p>\r\n\r\n\r\n                            </div>\r\n                        </div>\r\n                    </li>\r\n                </ul>\r\n            </div>\r\n            <div class="viewmaster jogwheel" style="top: 0px;">\r\n                <div class="view">\r\n                    <div class="picture-wrap"><div class="picture active"><img src="https://pdj-ecom-cdn.azureedge.net/-/media/pioneerdj/images/features/mixer/djm-tour1/32-bit-da-convertor-ess.jpg?h=500&amp;w=500&amp;hash=33725A2A1A98EC1EE726352EC03F03D88EC264D4"></div><div class="picture"><img src="https://pdj-ecom-cdn.azureedge.net/-/media/pioneerdj/images/features/mixer/djm-tour1/digital-out.jpg?h=500&amp;w=500&amp;hash=9BB4FD4120B7E499EC107D2EF2A56DE0089B58F6"></div><div class="picture"><img src="https://pdj-ecom-cdn.azureedge.net/-/media/pioneerdj/images/features/mixer/djm-tour1/djm-fold-out-screen.jpg?h=500&amp;w=500&amp;hash=3C2744166B862D23598B6539C36CA827647690F6"></div><div class="picture"><img src="https://pdj-ecom-cdn.azureedge.net/-/media/pioneerdj/images/features/mixer/djm-tour1/5-port-lan-hub.jpg?h=500&amp;w=500&amp;hash=66B7DC3A354A88A1DEE485E60E607DFE74CA48A1"></div><div class="picture"><img src="https://pdj-ecom-cdn.azureedge.net/-/media/pioneerdj/images/features/mixer/djm-tour1/b2b-cueing-second-headphone.jpg?h=500&amp;w=500&amp;hash=3B2961C5035790AF0B77AF35B9ADA97FD8869AEE"></div><div class="picture"><img src="https://pdj-ecom-cdn.azureedge.net/-/media/pioneerdj/images/features/mixer/djm-tour1/xlr-aux-in.jpg?h=500&amp;w=500&amp;hash=0A741753076BA6EA946BAA93F56619E1D3A254C8"></div></div>\r\n                    <div class="mask"></div>\r\n                    <a href="#" class="controlbtn trigger__open-overlayer video-player hidden" data-title="" style=""><span class="ico icon-controlbtn-play"><span class="sr-only">Play</span></span></a>\r\n                </div>\r\n            </div>\r\n        </div>\r\n    </div>\r\n</div>', 4, NULL, 'moscow_features', NULL);
INSERT INTO `field_value` (`id`, `field_id`, `value`, `element_id`, `iblock`, `code`, `input_type`) VALUES
(82, NULL, '<div class="section section-product-info">\r\n    <div class="container">\r\n\r\n        <!--\r\n            Add class has-serie if this highlight block exists\r\n            Add class has-latest-update if this highlight block exists\r\n        -->\r\n\r\n        <div class="info has-serie has-latest-update row">\r\n\r\n            <div class="col usp">\r\n\r\n                <h2>KIDS КУРС ВКЛЮЧАЕТ В СЕБЯ:</h2>\r\n                <div class="course-includes-block col-md-12">\r\n\r\n                    <ul>\r\n\r\n                        <li>Терминология и знакомство с оборудованием</li>\r\n\r\n                        <li>Предоставление официальных материалов по подготовке от компании Pioneer DJ</li>\r\n\r\n                        <li>Предоставление музыки (при необходимости)</li>\r\n\r\n                        <li>Теоретическая основа, история, специфика музыкальных стилей</li>\r\n\r\n                        <li>Техническое устройство и коммутация</li>\r\n\r\n                        <li>Самые популярные и актуальные виды и типы сведений</li>\r\n\r\n                        <li>Проработка  и тренинг слуха</li>\r\n\r\n                        <li>Фаст-миксинг (скоростные сведения)</li>\r\n\r\n                        <li>Сведение на СD / USB (rekordbox) / Wi-Fi (rekordbox)</li>\r\n\r\n                        <li>Проработка эффектов и преобразование звучания</li>\r\n\r\n                        <li>Основы качественных выступлений (проработка дальнейших выступлений)</li>\r\n\r\n                        <li>Информация по источникам покупки / скачивания, структуризации, специфики музыки</li>\r\n\r\n                        <li>Запись Promo-материалов для дальнейшего продвижения</li>\r\n\r\n                        <li>Информация о клубной культуре города /практика и дальнейшее продвижение с учётом возраста/</li>\r\n\r\n                    </ul>\r\n\r\n                    <p class="additional-cons">По окончании школы выдаётся сертификат от компании Pioneer DJ</p>\r\n\r\n                    <h3 class="block-header">Стоимость: 25 000 р.</h3>\r\n                </div>\r\n            </div>\r\n        </div>\r\n\r\n    </div>\r\n</div>', 4, NULL, 'moscow_desc', NULL),
(83, NULL, '<div class="content-container-wrapper course-cons">\r\n    <div class="content-container">\r\n        <div class="content">\r\n            <div class="row">\r\n                <div class="col-md-12">\r\n                    <div class="bg">\r\n                        <ul>\r\n\r\n                            <li><span class="cons-label cons-label-left cons-1">Официальная DJ школа Pioneer DJ</span></li>\r\n\r\n                            <li><span class="cons-label cons-label-left cons-1">Индивидуальное обучение</span></li>\r\n\r\n                            <li><span class="cons-label cons-label-left cons-1">Индивидуальный график</span></li>\r\n\r\n                            <li><span class="cons-label cons-label-left cons-1">Опытные преподаватели</span></li>\r\n\r\n                            <li><span class="cons-label cons-label-left cons-1">Без ограничений по возрасту</span></li>\r\n\r\n                            <li><span class="cons-label cons-label-left cons-1">индивидуальный подход к каждому ученику</span></li>\r\n\r\n                            <li><span class="cons-label cons-label-left cons-1">Возможна оплата частями</span></li>\r\n\r\n                            <li><span class="cons-label cons-label-left cons-1">лучшее DJ оборудование</span></li>\r\n\r\n                            <li><span class="cons-label cons-label-left cons-1">Сертификат по окончании</span></li>\r\n\r\n                            <li><span class="cons-label cons-label-left cons-1">поддержка и продвижение<br />после обучения</span></li>\r\n\r\n                        </ul>\r\n                    </div>\r\n                </div>\r\n            </div>\r\n        </div>\r\n    </div>\r\n</div>', 5, NULL, 'special', NULL),
(84, NULL, '<div class="section section-product-features">\r\n    <div class="container">\r\n        <h2 class="h2">КЛЮЧЕВЫЕ ОСОБЕННОСТИ</h2>\r\n        <div class="row features-key">\r\n            <div class="list">\r\n                <ul>\r\n                    <li>\r\n                        <div class="feature compact active">\r\n                            <div class="head">\r\n                                <h3 class="h3">Только индивидуальное обучение</h3>\r\n                                <img src="/css/images/content/courses/moscow/add/cons1.jpg" alt="32-bit-da-convertor-ess">\r\n                            </div>\r\n                            <div class="body">\r\n                                <p>Занятия проходят только в формате тет-а-тет преподаватель-ученик</p>\r\n\r\n\r\n                            </div>\r\n                        </div>\r\n                    </li>\r\n                    <li>\r\n                        <div class="feature compact">\r\n                            <div class="head">\r\n                                <h3 class="h3">Курс состоит из 7 занятий по 2 часа</h3>\r\n                                <img src="/css/images/content/courses/moscow/add/cons2.jpg?h=500&amp;w=500&amp;hash=9BB4FD4120B7E499EC107D2EF2A56DE0089B58F6" alt="digital-out-n">\r\n                            </div>\r\n                            <div class="body">\r\n                                <p>Средняя продолжительность курса - 1 месяца (по 2-3 занятия в неделю) /при желании можно заниматься чаще/</p>\r\n\r\n\r\n                            </div>\r\n                        </div>\r\n                    </li>\r\n                    <li>\r\n                        <div class="feature compact">\r\n                            <div class="head">\r\n                                <h3 class="h3">Курс можно оплатить частями</h3>\r\n                                <img src="/css/images/content/courses/moscow/add/cons3.jpg?h=500&amp;w=500&amp;hash=3C2744166B862D23598B6539C36CA827647690F6" alt="djm-fold-out-screen-n">\r\n                            </div>\r\n                            <div class="body">\r\n                                <p>Курс можно оплачивать по половине стоимости: 50% стоимости в начале и 50% стоимости в середине</p>\r\n\r\n\r\n                            </div>\r\n                        </div>\r\n                    </li>\r\n                    <li>\r\n                        <div class="feature compact">\r\n                            <div class="head">\r\n                                <h3 class="h3">Предоставляется свободная практика на оборудовании DJ Центра</h3>\r\n                                <img src="/css/images/content/courses/moscow/add/cons4.jpg?h=500&amp;w=500&amp;hash=66B7DC3A354A88A1DEE485E60E607DFE74CA48A1" alt="5-port-lan-hub-n">\r\n                            </div>\r\n                            <div class="body">\r\n                                <p>Между занятиями каждому ученику предоставляется возможность отработать полученные навыки на занятиях с преподавателем на любом оборудовании DJ Центра</p>\r\n\r\n\r\n                            </div>\r\n                        </div>\r\n                    </li>\r\n                </ul>\r\n            </div>\r\n            <div class="viewmaster jogwheel" style="top: 0px;">\r\n                <div class="view">\r\n                    <div class="picture-wrap"><div class="picture active"><img src="https://pdj-ecom-cdn.azureedge.net/-/media/pioneerdj/images/features/mixer/djm-tour1/32-bit-da-convertor-ess.jpg?h=500&amp;w=500&amp;hash=33725A2A1A98EC1EE726352EC03F03D88EC264D4"></div><div class="picture"><img src="https://pdj-ecom-cdn.azureedge.net/-/media/pioneerdj/images/features/mixer/djm-tour1/digital-out.jpg?h=500&amp;w=500&amp;hash=9BB4FD4120B7E499EC107D2EF2A56DE0089B58F6"></div><div class="picture"><img src="https://pdj-ecom-cdn.azureedge.net/-/media/pioneerdj/images/features/mixer/djm-tour1/djm-fold-out-screen.jpg?h=500&amp;w=500&amp;hash=3C2744166B862D23598B6539C36CA827647690F6"></div><div class="picture"><img src="https://pdj-ecom-cdn.azureedge.net/-/media/pioneerdj/images/features/mixer/djm-tour1/5-port-lan-hub.jpg?h=500&amp;w=500&amp;hash=66B7DC3A354A88A1DEE485E60E607DFE74CA48A1"></div><div class="picture"><img src="https://pdj-ecom-cdn.azureedge.net/-/media/pioneerdj/images/features/mixer/djm-tour1/b2b-cueing-second-headphone.jpg?h=500&amp;w=500&amp;hash=3B2961C5035790AF0B77AF35B9ADA97FD8869AEE"></div><div class="picture"><img src="https://pdj-ecom-cdn.azureedge.net/-/media/pioneerdj/images/features/mixer/djm-tour1/xlr-aux-in.jpg?h=500&amp;w=500&amp;hash=0A741753076BA6EA946BAA93F56619E1D3A254C8"></div></div>\r\n                    <div class="mask"></div>\r\n                    <a href="#" class="controlbtn trigger__open-overlayer video-player hidden" data-title="" style=""><span class="ico icon-controlbtn-play"><span class="sr-only">Play</span></span></a>\r\n                </div>\r\n            </div>\r\n        </div>\r\n    </div>\r\n</div>', 5, NULL, 'moscow_features', NULL),
(85, NULL, '<div class="section section-product-info">\r\n    <div class="container">\r\n\r\n        <!--\r\n            Add class has-serie if this highlight block exists\r\n            Add class has-latest-update if this highlight block exists\r\n        -->\r\n\r\n        <div class="info has-serie has-latest-update row">\r\n\r\n            <div class="col usp">\r\n\r\n                <h2>MIDI КУРС ВКЛЮЧАЕТ В СЕБЯ:</h2>\r\n                <div class="course-includes-block col-md-12">\r\n\r\n                    <ul>\r\n\r\n                        <li>Терминология и знакомство с оборудованием</li>\r\n\r\n                        <li>Предоставление официальных материалов по подготовке от компании Pioneer DJ</li>\r\n\r\n                        <li>Предоставление музыки (при необходимости)</li>\r\n\r\n                        <li>Теоретическая основа, история, специфика музыкальных стилей</li>\r\n\r\n                        <li>Техническое устройство и коммутация</li>\r\n\r\n                        <li>Проработка  и тренинг слуха</li>\r\n\r\n                        <li>Специфика работы на Midi-контроллерах</li>\r\n\r\n                        <li>Работа в rekordbox dj</li>\r\n\r\n                        <li>Работа в Serato DJ</li>\r\n\r\n                        <li>Работа в Taktor Pro 2</li>\r\n\r\n                        <li>Основы качественных выступлений (проработка дальнейших выступлений)</li>\r\n\r\n                        <li>Информация по источникам покупки / скачивания, структуризации, специфики музыки</li>\r\n\r\n                        <li>Запись Promo-материалов для дальнейшего продвижения</li>\r\n\r\n                    </ul>\r\n\r\n                    <p class="additional-cons">По окончании школы выдаётся сертификат от компании Pioneer DJ</p>\r\n\r\n                    <h3 class="block-header">Стоимость: 12 000 р.</h3>\r\n                </div>\r\n            </div>\r\n        </div>\r\n\r\n    </div>\r\n</div>', 5, NULL, 'moscow_desc', NULL),
(86, NULL, '<div class="content-container-wrapper course-cons">\r\n    <div class="content-container">\r\n        <div class="content">\r\n            <div class="row">\r\n                <div class="col-md-12">\r\n                    <div class="bg">\r\n                        <ul>\r\n\r\n                            <li><span class="cons-label cons-label-left cons-1">Официальная DJ школа Pioneer DJ</span></li>\r\n\r\n                            <li><span class="cons-label cons-label-left cons-1">Индивидуальное обучение</span></li>\r\n\r\n                            <li><span class="cons-label cons-label-left cons-1">Индивидуальный график</span></li>\r\n\r\n                            <li><span class="cons-label cons-label-left cons-1">Опытные преподаватели</span></li>\r\n\r\n                            <li><span class="cons-label cons-label-left cons-1">Без ограничений по возрасту</span></li>\r\n\r\n                            <li><span class="cons-label cons-label-left cons-1">индивидуальный подход к каждому ученику</span></li>\r\n\r\n                            <li><span class="cons-label cons-label-left cons-1">Возможна оплата частями</span></li>\r\n\r\n                            <li><span class="cons-label cons-label-left cons-1">лучшее DJ оборудование</span></li>\r\n\r\n                            <li><span class="cons-label cons-label-left cons-1">Сертификат по окончании</span></li>\r\n\r\n                            <li><span class="cons-label cons-label-left cons-1">поддержка и продвижение<br />после обучения</span></li>\r\n\r\n                        </ul>\r\n                    </div>\r\n                </div>\r\n            </div>\r\n        </div>\r\n    </div>\r\n</div>', 8, NULL, 'special', NULL),
(87, NULL, '    <div class="section section-product-features">\r\n        <div class="container">\r\n            <h2 class="h2">КЛЮЧЕВЫЕ ОСОБЕННОСТИ</h2>\r\n            <div class="row features-key">\r\n                <div class="list">\r\n                    <ul>\r\n                        <li>\r\n                            <div class="feature compact active">\r\n                                <div class="head">\r\n                                    <h3 class="h3">Только индивидуальное обучение</h3>\r\n                                    <img src="/css/images/content/courses/moscow/add/cons1.jpg" alt="32-bit-da-convertor-ess">\r\n                                </div>\r\n                                <div class="body">\r\n                                    <p>Занятия проходят только в формате тет-а-тет преподаватель-ученик</p>\r\n    \r\n    \r\n                                </div>\r\n                            </div>\r\n                        </li>\r\n                        <li>\r\n                            <div class="feature compact">\r\n                                <div class="head">\r\n                                    <h3 class="h3">Курс состоит из 10 занятий по 2 часа</h3>\r\n                                    <img src="/css/images/content/courses/moscow/add/cons2.jpg?h=500&amp;w=500&amp;hash=9BB4FD4120B7E499EC107D2EF2A56DE0089B58F6" alt="digital-out-n">\r\n                                </div>\r\n                                <div class="body">\r\n                                    <p>Средняя продолжительность курса - 2 месяца (по 2-3 занятия в неделю) /при желании можно заниматься чаще/</p>\r\n    \r\n    \r\n                                </div>\r\n                            </div>\r\n                        </li>\r\n                        <li>\r\n                            <div class="feature compact">\r\n                                <div class="head">\r\n                                    <h3 class="h3">Курс можно оплатить частями</h3>\r\n                                    <img src="/css/images/content/courses/moscow/add/cons3.jpg?h=500&amp;w=500&amp;hash=3C2744166B862D23598B6539C36CA827647690F6" alt="djm-fold-out-screen-n">\r\n                                </div>\r\n                                <div class="body">\r\n                                    <p>Курс можно оплачивать по половине стоимости: 50% стоимости в начале и 50% стоимости в середине</p>\r\n    \r\n    \r\n                                </div>\r\n                            </div>\r\n                        </li>\r\n                        \r\n                    </ul>\r\n                </div>\r\n                <div class="viewmaster jogwheel" style="top: 0px;">\r\n                    <div class="view">\r\n                        <div class="picture-wrap"><div class="picture active"><img src="https://pdj-ecom-cdn.azureedge.net/-/media/pioneerdj/images/features/mixer/djm-tour1/32-bit-da-convertor-ess.jpg?h=500&amp;w=500&amp;hash=33725A2A1A98EC1EE726352EC03F03D88EC264D4"></div><div class="picture"><img src="https://pdj-ecom-cdn.azureedge.net/-/media/pioneerdj/images/features/mixer/djm-tour1/digital-out.jpg?h=500&amp;w=500&amp;hash=9BB4FD4120B7E499EC107D2EF2A56DE0089B58F6"></div><div class="picture"><img src="https://pdj-ecom-cdn.azureedge.net/-/media/pioneerdj/images/features/mixer/djm-tour1/djm-fold-out-screen.jpg?h=500&amp;w=500&amp;hash=3C2744166B862D23598B6539C36CA827647690F6"></div><div class="picture"><img src="https://pdj-ecom-cdn.azureedge.net/-/media/pioneerdj/images/features/mixer/djm-tour1/5-port-lan-hub.jpg?h=500&amp;w=500&amp;hash=66B7DC3A354A88A1DEE485E60E607DFE74CA48A1"></div><div class="picture"><img src="https://pdj-ecom-cdn.azureedge.net/-/media/pioneerdj/images/features/mixer/djm-tour1/b2b-cueing-second-headphone.jpg?h=500&amp;w=500&amp;hash=3B2961C5035790AF0B77AF35B9ADA97FD8869AEE"></div><div class="picture"><img src="https://pdj-ecom-cdn.azureedge.net/-/media/pioneerdj/images/features/mixer/djm-tour1/xlr-aux-in.jpg?h=500&amp;w=500&amp;hash=0A741753076BA6EA946BAA93F56619E1D3A254C8"></div></div>\r\n                        <div class="mask"></div>\r\n                        <a href="#" class="controlbtn trigger__open-overlayer video-player hidden" data-title="" style=""><span class="ico icon-controlbtn-play"><span class="sr-only">Play</span></span></a>\r\n                    </div>\r\n                </div>\r\n            </div>\r\n        </div>\r\n    </div>', 8, NULL, 'moscow_features', NULL),
(88, NULL, '<div class="section section-product-info">\r\n    <div class="container">\r\n\r\n        <!--\r\n            Add class has-serie if this highlight block exists\r\n            Add class has-latest-update if this highlight block exists\r\n        -->\r\n\r\n        <div class="info has-serie has-latest-update row">\r\n\r\n            <div class="col usp">\r\n\r\n                <h2>БАЗОВЫЙ КУРС ВКЛЮЧАЕТ В СЕБЯ:</h2>\r\n                <div class="course-includes-block col-md-12">\r\n\r\n                    <ul>\r\n\r\n                        <li>Фундаментальные знания о программе написания музыки и практические навыки их применения.</li>\r\n\r\n                        <li>Основные принципы написания музыки, основы психоакустики.</li>\r\n\r\n                        <li>Изучение основ частотной, динамической и пространственной обработки звука.</li>\r\n\r\n                        <li>Основы композиции и аранжировки.</li>\r\n\r\n                        <li>Приобретение навыков записи внешних источников звука (аналоговые синтезаторы, музыкальные инструменты, вокал).</li>\r\n\r\n                        <li>Основы синтеза звука.</li>\r\n\r\n                        <li>Базовые знания сведения и мастеринга трека.</li>\r\n\r\n                        <li>Работу с MIDI-контроллерами.</li>\r\n\r\n                    </ul>\r\n\r\n                    <p class="additional-cons">По окончании школы выдаётся сертификат от компании Pioneer DJ</p>\r\n\r\n                    <h3 class="block-header">Стоимость: 25 000 р.</h3>\r\n                </div>\r\n            </div>\r\n        </div>\r\n\r\n    </div>\r\n</div>', 8, NULL, 'moscow_desc', NULL),
(89, NULL, '<div class="content-container-wrapper course-cons">\r\n    <div class="content-container">\r\n        <div class="content">\r\n            <div class="row">\r\n                <div class="col-md-12">\r\n                    <div class="bg">\r\n                        <ul>\r\n\r\n                            <li><span class="cons-label cons-label-left cons-1">Официальная DJ школа Pioneer DJ</span></li>\r\n\r\n                            <li><span class="cons-label cons-label-left cons-1">Индивидуальное обучение</span></li>\r\n\r\n                            <li><span class="cons-label cons-label-left cons-1">Индивидуальный график</span></li>\r\n\r\n                            <li><span class="cons-label cons-label-left cons-1">Опытные преподаватели</span></li>\r\n\r\n                            <li><span class="cons-label cons-label-left cons-1">Без ограничений по возрасту</span></li>\r\n\r\n                            <li><span class="cons-label cons-label-left cons-1">индивидуальный подход к каждому ученику</span></li>\r\n\r\n                            <li><span class="cons-label cons-label-left cons-1">Возможна оплата частями</span></li>\r\n\r\n                            <li><span class="cons-label cons-label-left cons-1">лучшее DJ оборудование</span></li>\r\n\r\n                            <li><span class="cons-label cons-label-left cons-1">Сертификат по окончании</span></li>\r\n\r\n                            <li><span class="cons-label cons-label-left cons-1">поддержка и продвижение<br />после обучения</span></li>\r\n\r\n                        </ul>\r\n                    </div>\r\n                </div>\r\n            </div>\r\n        </div>\r\n    </div>\r\n</div>', 10, NULL, 'special', NULL),
(90, NULL, '    <div class="section section-product-features">\r\n        <div class="container">\r\n            <h2 class="h2">КЛЮЧЕВЫЕ ОСОБЕННОСТИ</h2>\r\n            <div class="row features-key">\r\n                <div class="list">\r\n                    <ul>\r\n                        <li>\r\n                            <div class="feature compact active">\r\n                                <div class="head">\r\n                                    <h3 class="h3">Только индивидуальное обучение</h3>\r\n                                    <img src="/css/images/content/courses/moscow/add/cons1.jpg" alt="32-bit-da-convertor-ess">\r\n                                </div>\r\n                                <div class="body">\r\n                                    <p>Занятия проходят только в формате тет-а-тет преподаватель-ученик</p>\r\n    \r\n    \r\n                                </div>\r\n                            </div>\r\n                        </li>\r\n                       \r\n                        <li>\r\n                            <div class="feature compact">\r\n                                <div class="head">\r\n                                    <h3 class="h3">Курс можно оплатить частями</h3>\r\n                                    <img src="/css/images/content/courses/moscow/add/cons3.jpg?h=500&amp;w=500&amp;hash=3C2744166B862D23598B6539C36CA827647690F6" alt="djm-fold-out-screen-n">\r\n                                </div>\r\n                                <div class="body">\r\n                                    <p>Курс можно оплачивать по половине стоимости: 50% стоимости в начале и 50% стоимости в середине</p>\r\n    \r\n    \r\n                                </div>\r\n                            </div>\r\n                        </li>\r\n                        \r\n                    </ul>\r\n                </div>\r\n                <div class="viewmaster jogwheel" style="top: 0px;">\r\n                    <div class="view">\r\n                        <div class="picture-wrap"><div class="picture active"><img src="https://pdj-ecom-cdn.azureedge.net/-/media/pioneerdj/images/features/mixer/djm-tour1/32-bit-da-convertor-ess.jpg?h=500&amp;w=500&amp;hash=33725A2A1A98EC1EE726352EC03F03D88EC264D4"></div><div class="picture"><img src="https://pdj-ecom-cdn.azureedge.net/-/media/pioneerdj/images/features/mixer/djm-tour1/digital-out.jpg?h=500&amp;w=500&amp;hash=9BB4FD4120B7E499EC107D2EF2A56DE0089B58F6"></div><div class="picture"><img src="https://pdj-ecom-cdn.azureedge.net/-/media/pioneerdj/images/features/mixer/djm-tour1/djm-fold-out-screen.jpg?h=500&amp;w=500&amp;hash=3C2744166B862D23598B6539C36CA827647690F6"></div><div class="picture"><img src="https://pdj-ecom-cdn.azureedge.net/-/media/pioneerdj/images/features/mixer/djm-tour1/5-port-lan-hub.jpg?h=500&amp;w=500&amp;hash=66B7DC3A354A88A1DEE485E60E607DFE74CA48A1"></div><div class="picture"><img src="https://pdj-ecom-cdn.azureedge.net/-/media/pioneerdj/images/features/mixer/djm-tour1/b2b-cueing-second-headphone.jpg?h=500&amp;w=500&amp;hash=3B2961C5035790AF0B77AF35B9ADA97FD8869AEE"></div><div class="picture"><img src="https://pdj-ecom-cdn.azureedge.net/-/media/pioneerdj/images/features/mixer/djm-tour1/xlr-aux-in.jpg?h=500&amp;w=500&amp;hash=0A741753076BA6EA946BAA93F56619E1D3A254C8"></div></div>\r\n                        <div class="mask"></div>\r\n                        <a href="#" class="controlbtn trigger__open-overlayer video-player hidden" data-title="" style=""><span class="ico icon-controlbtn-play"><span class="sr-only">Play</span></span></a>\r\n                    </div>\r\n                </div>\r\n            </div>\r\n        </div>\r\n    </div>', 10, NULL, 'moscow_features', NULL),
(91, NULL, '<div class="section section-product-info">\r\n    <div class="container">\r\n\r\n        <!--\r\n            Add class has-serie if this highlight block exists\r\n            Add class has-latest-update if this highlight block exists\r\n        -->\r\n\r\n        <div class="info has-serie has-latest-update row">\r\n\r\n            <div class="col usp">\r\n\r\n                <h2>Level UP курс включает в себя:</h2>\r\n                <div class="course-includes-block col-md-12">\r\n\r\n                    <ul>\r\n\r\n                        <li>Курс составляется индивидуально исходя из Ваших пожеланий!</li>\r\n\r\n                    </ul>\r\n\r\n                    <p class="additional-cons">По окончании школы выдаётся сертификат от компании Pioneer DJ</p>\r\n\r\n                    <h3 class="block-header">Стоимость: 2 500 р.</h3>\r\n                </div>\r\n            </div>\r\n        </div>\r\n\r\n    </div>\r\n</div>', 10, NULL, 'moscow_desc', NULL),
(92, NULL, '<div class="content-container-wrapper course-cons">\r\n    <div class="content-container">\r\n        <div class="content">\r\n            <div class="row">\r\n                <div class="col-md-12">\r\n                    <div class="bg">\r\n                        <ul>\r\n\r\n                            <li><span class="cons-label cons-label-left cons-1">Официальная DJ школа Pioneer DJ</span></li>\r\n\r\n                            <li><span class="cons-label cons-label-left cons-1">Индивидуальное обучение</span></li>\r\n\r\n                            <li><span class="cons-label cons-label-left cons-1">Индивидуальный график</span></li>\r\n\r\n                            <li><span class="cons-label cons-label-left cons-1">Опытные преподаватели</span></li>\r\n\r\n                            <li><span class="cons-label cons-label-left cons-1">Без ограничений по возрасту</span></li>\r\n\r\n                            <li><span class="cons-label cons-label-left cons-1">индивидуальный подход к каждому ученику</span></li>\r\n\r\n                            <li><span class="cons-label cons-label-left cons-1">Возможна оплата частями</span></li>\r\n\r\n                            <li><span class="cons-label cons-label-left cons-1">лучшее DJ оборудование</span></li>\r\n\r\n                            <li><span class="cons-label cons-label-left cons-1">Сертификат по окончании</span></li>\r\n\r\n                            <li><span class="cons-label cons-label-left cons-1">поддержка и продвижение<br />после обучения</span></li>\r\n\r\n                        </ul>\r\n                    </div>\r\n                </div>\r\n            </div>\r\n        </div>\r\n    </div>\r\n</div>', 9, NULL, 'special', NULL),
(93, NULL, '<div class="section section-product-features">\r\n    <div class="container">\r\n        <h2 class="h2">КЛЮЧЕВЫЕ ОСОБЕННОСТИ</h2>\r\n        <div class="row features-key">\r\n            <div class="list">\r\n                <ul>\r\n                    <li>\r\n                        <div class="feature compact active">\r\n                            <div class="head">\r\n                                <h3 class="h3">Только индивидуальное обучение</h3>\r\n                                <img src="/css/images/content/courses/moscow/add/cons1.jpg" alt="32-bit-da-convertor-ess">\r\n                            </div>\r\n                            <div class="body">\r\n                                <p>Занятия проходят только в формате тет-а-тет преподаватель-ученик</p>\r\n\r\n\r\n                            </div>\r\n                        </div>\r\n                    </li>\r\n                    <li>\r\n                        <div class="feature compact">\r\n                            <div class="head">\r\n                                <h3 class="h3">Курс состоит из 10 занятий по 2 часа</h3>\r\n                                <img src="/css/images/content/courses/moscow/add/cons2.jpg?h=500&amp;w=500&amp;hash=9BB4FD4120B7E499EC107D2EF2A56DE0089B58F6" alt="digital-out-n">\r\n                            </div>\r\n                            <div class="body">\r\n                                <p>Средняя продолжительность курса - 2 месяца (по 2-3 занятия в неделю) /при желании можно заниматься чаще/</p>\r\n\r\n\r\n                            </div>\r\n                        </div>\r\n                    </li>\r\n                    <li>\r\n                        <div class="feature compact">\r\n                            <div class="head">\r\n                                <h3 class="h3">Курс можно оплатить частями</h3>\r\n                                <img src="/css/images/content/courses/moscow/add/cons3.jpg?h=500&amp;w=500&amp;hash=3C2744166B862D23598B6539C36CA827647690F6" alt="djm-fold-out-screen-n">\r\n                            </div>\r\n                            <div class="body">\r\n                                <p>Курс можно оплачивать по половине стоимости: 50% стоимости в начале и 50% стоимости в середине</p>\r\n\r\n\r\n                            </div>\r\n                        </div>\r\n                    </li>\r\n\r\n                </ul>\r\n            </div>\r\n            <div class="viewmaster jogwheel" style="top: 0px;">\r\n                <div class="view">\r\n                    <div class="picture-wrap"><div class="picture active"><img src="https://pdj-ecom-cdn.azureedge.net/-/media/pioneerdj/images/features/mixer/djm-tour1/32-bit-da-convertor-ess.jpg?h=500&amp;w=500&amp;hash=33725A2A1A98EC1EE726352EC03F03D88EC264D4"></div><div class="picture"><img src="https://pdj-ecom-cdn.azureedge.net/-/media/pioneerdj/images/features/mixer/djm-tour1/digital-out.jpg?h=500&amp;w=500&amp;hash=9BB4FD4120B7E499EC107D2EF2A56DE0089B58F6"></div><div class="picture"><img src="https://pdj-ecom-cdn.azureedge.net/-/media/pioneerdj/images/features/mixer/djm-tour1/djm-fold-out-screen.jpg?h=500&amp;w=500&amp;hash=3C2744166B862D23598B6539C36CA827647690F6"></div><div class="picture"><img src="https://pdj-ecom-cdn.azureedge.net/-/media/pioneerdj/images/features/mixer/djm-tour1/5-port-lan-hub.jpg?h=500&amp;w=500&amp;hash=66B7DC3A354A88A1DEE485E60E607DFE74CA48A1"></div><div class="picture"><img src="https://pdj-ecom-cdn.azureedge.net/-/media/pioneerdj/images/features/mixer/djm-tour1/b2b-cueing-second-headphone.jpg?h=500&amp;w=500&amp;hash=3B2961C5035790AF0B77AF35B9ADA97FD8869AEE"></div><div class="picture"><img src="https://pdj-ecom-cdn.azureedge.net/-/media/pioneerdj/images/features/mixer/djm-tour1/xlr-aux-in.jpg?h=500&amp;w=500&amp;hash=0A741753076BA6EA946BAA93F56619E1D3A254C8"></div></div>\r\n                    <div class="mask"></div>\r\n                    <a href="#" class="controlbtn trigger__open-overlayer video-player hidden" data-title="" style=""><span class="ico icon-controlbtn-play"><span class="sr-only">Play</span></span></a>\r\n                </div>\r\n            </div>\r\n        </div>\r\n    </div>\r\n</div>', 9, NULL, 'moscow_features', NULL),
(94, NULL, '<div class="section section-product-info">\r\n    <div class="container">\r\n\r\n        <!--\r\n            Add class has-serie if this highlight block exists\r\n            Add class has-latest-update if this highlight block exists\r\n        -->\r\n\r\n        <div class="info has-serie has-latest-update row">\r\n\r\n            <div class="col usp">\r\n\r\n                <h2>PRO курс включает в себя:</h2>\r\n                <div class="course-includes-block col-md-12">\r\n\r\n                    <ul>\r\n\r\n                        <li>Детальное изучение частотной, динамической и пространственной обработки звука. Фишки и секреты.</li>\r\n\r\n                        <li>Изучение инструмента Ableton Push и его практическое на всех этапах работы с Ableton Live.</li>\r\n\r\n                        <li>Продвинутые знания по записи звука и его обработке (ударные, голос, инструменты). Работа с разными микрофонами.</li>\r\n\r\n                        <li>Мастеринг.</li>\r\n\r\n                        <li>Семплирование и создание собственных инструментов.</li>\r\n\r\n                        <li>Обширные знания по подготовке и выступлению лайвом.</li>\r\n\r\n                        <li>Работа с видео.</li>\r\n\r\n                        <li>Основы "Max 4 Live".</li>\r\n\r\n                    </ul>\r\n\r\n                    <p class="additional-cons">По окончании школы выдаётся сертификат от компании Pioneer DJ</p>\r\n\r\n                    <h3 class="block-header">Стоимость: 25 000 р.</h3>\r\n                </div>\r\n            </div>\r\n        </div>\r\n\r\n    </div>\r\n</div>', 9, NULL, 'moscow_desc', NULL),
(95, NULL, '<div class="content-container-wrapper course-cons">\r\n    <div class="content-container">\r\n        <div class="content">\r\n            <div class="row">\r\n                <div class="col-md-12">\r\n                    <div class="bg">\r\n                        <ul>\r\n\r\n                            <li><span class="cons-label cons-label-left cons-1">Официальная DJ школа Pioneer DJ</span></li>\r\n\r\n                            <li><span class="cons-label cons-label-left cons-1">Индивидуальное обучение</span></li>\r\n\r\n                            <li><span class="cons-label cons-label-left cons-1">Индивидуальный график</span></li>\r\n\r\n                            <li><span class="cons-label cons-label-left cons-1">Опытные преподаватели</span></li>\r\n\r\n                            <li><span class="cons-label cons-label-left cons-1">Без ограничений по возрасту</span></li>\r\n\r\n                            <li><span class="cons-label cons-label-left cons-1">индивидуальный подход к каждому ученику</span></li>\r\n\r\n                            <li><span class="cons-label cons-label-left cons-1">Возможна оплата частями</span></li>\r\n\r\n                            <li><span class="cons-label cons-label-left cons-1">лучшее DJ оборудование</span></li>\r\n\r\n                            <li><span class="cons-label cons-label-left cons-1">Сертификат по окончании</span></li>\r\n\r\n                            <li><span class="cons-label cons-label-left cons-1">поддержка и продвижение<br />после обучения</span></li>\r\n\r\n                        </ul>\r\n                    </div>\r\n                </div>\r\n            </div>\r\n        </div>\r\n    </div>\r\n</div>', 2, NULL, 'special', NULL),
(96, NULL, '<div class="section section-product-features">\r\n    <div class="container">\r\n        <h2 class="h2">КЛЮЧЕВЫЕ ОСОБЕННОСТИ</h2>\r\n        <div class="row features-key">\r\n            <div class="list">\r\n                <ul>\r\n                    <li>\r\n                        <div class="feature compact active">\r\n                            <div class="head">\r\n                                <h3 class="h3">Только индивидуальное обучение</h3>\r\n                                <img src="/css/images/content/courses/moscow/add/cons1.jpg" alt="32-bit-da-convertor-ess">\r\n                            </div>\r\n                            <div class="body">\r\n                                <p>Занятия проходят только в формате тет-а-тет преподаватель-ученик</p>\r\n\r\n\r\n                            </div>\r\n                        </div>\r\n                    </li>\r\n                    <li>\r\n                        <div class="feature compact">\r\n                            <div class="head">\r\n                                <h3 class="h3">Курс состоит из 15 занятий по 2 часа</h3>\r\n                                <img src="/css/images/content/courses/moscow/add/cons2.jpg?h=500&amp;w=500&amp;hash=9BB4FD4120B7E499EC107D2EF2A56DE0089B58F6" alt="digital-out-n">\r\n                            </div>\r\n                            <div class="body">\r\n                                <p>Средняя продолжительность курса - 2 месяца (по 2-3 занятия в неделю) /при желании можно заниматься чаще/</p>\r\n\r\n\r\n                            </div>\r\n                        </div>\r\n                    </li>\r\n                    <li>\r\n                        <div class="feature compact">\r\n                            <div class="head">\r\n                                <h3 class="h3">Курс можно оплатить частями</h3>\r\n                                <img src="/css/images/content/courses/moscow/add/cons3.jpg?h=500&amp;w=500&amp;hash=3C2744166B862D23598B6539C36CA827647690F6" alt="djm-fold-out-screen-n">\r\n                            </div>\r\n                            <div class="body">\r\n                                <p>Курс можно оплачивать по половине стоимости: 50% стоимости в начале и 50% стоимости в середине</p>\r\n\r\n\r\n                            </div>\r\n                        </div>\r\n                    </li>\r\n                    <li>\r\n                        <div class="feature compact">\r\n                            <div class="head">\r\n                                <h3 class="h3">Предоставляется свободная практика на оборудовании DJ Центра</h3>\r\n                                <img src="/css/images/content/courses/moscow/add/cons4.jpg?h=500&amp;w=500&amp;hash=66B7DC3A354A88A1DEE485E60E607DFE74CA48A1" alt="5-port-lan-hub-n">\r\n                            </div>\r\n                            <div class="body">\r\n                                <p>Между занятиями каждому ученику предоставляется возможность отработать полученные навыки на занятиях с преподавателем на любом оборудовании DJ Центра</p>\r\n\r\n\r\n                            </div>\r\n                        </div>\r\n                    </li>\r\n                </ul>\r\n            </div>\r\n            <div class="viewmaster jogwheel" style="top: 0px;">\r\n                <div class="view">\r\n                    <div class="picture-wrap"><div class="picture active"><img src="https://pdj-ecom-cdn.azureedge.net/-/media/pioneerdj/images/features/mixer/djm-tour1/32-bit-da-convertor-ess.jpg?h=500&amp;w=500&amp;hash=33725A2A1A98EC1EE726352EC03F03D88EC264D4"></div><div class="picture"><img src="https://pdj-ecom-cdn.azureedge.net/-/media/pioneerdj/images/features/mixer/djm-tour1/digital-out.jpg?h=500&amp;w=500&amp;hash=9BB4FD4120B7E499EC107D2EF2A56DE0089B58F6"></div><div class="picture"><img src="https://pdj-ecom-cdn.azureedge.net/-/media/pioneerdj/images/features/mixer/djm-tour1/djm-fold-out-screen.jpg?h=500&amp;w=500&amp;hash=3C2744166B862D23598B6539C36CA827647690F6"></div><div class="picture"><img src="https://pdj-ecom-cdn.azureedge.net/-/media/pioneerdj/images/features/mixer/djm-tour1/5-port-lan-hub.jpg?h=500&amp;w=500&amp;hash=66B7DC3A354A88A1DEE485E60E607DFE74CA48A1"></div><div class="picture"><img src="https://pdj-ecom-cdn.azureedge.net/-/media/pioneerdj/images/features/mixer/djm-tour1/b2b-cueing-second-headphone.jpg?h=500&amp;w=500&amp;hash=3B2961C5035790AF0B77AF35B9ADA97FD8869AEE"></div><div class="picture"><img src="https://pdj-ecom-cdn.azureedge.net/-/media/pioneerdj/images/features/mixer/djm-tour1/xlr-aux-in.jpg?h=500&amp;w=500&amp;hash=0A741753076BA6EA946BAA93F56619E1D3A254C8"></div></div>\r\n                    <div class="mask"></div>\r\n                    <a href="#" class="controlbtn trigger__open-overlayer video-player hidden" data-title="" style=""><span class="ico icon-controlbtn-play"><span class="sr-only">Play</span></span></a>\r\n                </div>\r\n            </div>\r\n        </div>\r\n    </div>\r\n</div>', 2, NULL, 'moscow_features', NULL),
(97, NULL, '<div class="section section-product-info">\r\n    <div class="container">\r\n\r\n        <!--\r\n            Add class has-serie if this highlight block exists\r\n            Add class has-latest-update if this highlight block exists\r\n        -->\r\n\r\n        <div class="info has-serie has-latest-update row">\r\n\r\n            <div class="col usp">\r\n\r\n                <h2>PRO курс включает в себя:</h2>\r\n                <div class="course-includes-block col-md-12">\r\n\r\n                    <ul>\r\n\r\n                        <li>Тестирование исходных навыков диджея (от этой точки будет считаться прирост навыков в курсе)</li>\r\n\r\n                        <li>Предоставление официальных материалов по подготовке от компании Pioneer DJ</li>\r\n\r\n                        <li>Предоставление музыки (при необходимости)</li>\r\n\r\n                        <li>Техническое особенности и хитрости оборудования</li>\r\n\r\n                        <li>Техническое устройство и коммутация</li>\r\n\r\n                        <li>Самые популярные и сложные виды сведений</li>\r\n\r\n                        <li>Максимальная проработка (тренинг) слуха</li>\r\n\r\n                        <li>Фаст-миксинг (скоростные сведения)</li>\r\n\r\n                        <li>Сведение на СD / USB (rekordbox) / Wi-Fi (rekordbox)</li>\r\n\r\n                        <li>Сведение на Vinyl (Original / rekordbox dj / Traktor / Serato)</li>\r\n\r\n                        <li>Сведение на Midi (rekordbox dj / Taktor / Serato)</li>\r\n\r\n                        <li>Углубленная проработка применения эффектов</li>\r\n\r\n                        <li>Разработка индивидуального стиля выступлений, поиск своих фишек в оформлении звучания микса</li>\r\n\r\n                        <li>Создание "ремиксов" в реальном времени</li>\r\n\r\n                        <li>Сведение с эффектами (применение до 3х эффектов одновременно в одном сведении)</li>\r\n\r\n                        <li>Профессиональное сведение на трёх и четырёх проигрывателях</li>\r\n\r\n                        <li>Основы качественных выступлений /проработка дальнейших выступлений/</li>\r\n\r\n                        <li>Информация по источникам покупки / скачивания, структуризации, специфики музыки</li>\r\n\r\n                        <li>Запись Promo материалов для дальнейшего продвижения (максимальное продвижение)</li>\r\n\r\n                        <li>Информация о клубной культуре города и возможности работы /практика и дальнейшее продвижение/</li>\r\n\r\n                    </ul>\r\n\r\n                    <p class="additional-cons">По окончании школы выдаётся сертификат от компании Pioneer DJ</p>\r\n\r\n                    <p class="additional-cons">По окончании PRO курса записывается Promo-Video Mix на студии Pioneer DJ TV</p>\r\n\r\n                    <h3 class="block-header">Стоимость: 25 000 р.</h3>\r\n                </div>\r\n            </div>\r\n        </div>\r\n\r\n    </div>\r\n</div>', 2, NULL, 'moscow_desc', NULL),
(98, NULL, '<div class="content-container-wrapper course-cons">\r\n    <div class="content-container">\r\n        <div class="content">\r\n            <div class="row">\r\n                <div class="col-md-12">\r\n                    <div class="bg">\r\n                        <ul>\r\n\r\n                            <li><span class="cons-label cons-label-left cons-1">Официальная DJ школа Pioneer DJ</span></li>\r\n\r\n                            <li><span class="cons-label cons-label-left cons-1">Индивидуальное обучение</span></li>\r\n\r\n                            <li><span class="cons-label cons-label-left cons-1">Индивидуальный график</span></li>\r\n\r\n                            <li><span class="cons-label cons-label-left cons-1">Опытные преподаватели</span></li>\r\n\r\n                            <li><span class="cons-label cons-label-left cons-1">Без ограничений по возрасту</span></li>\r\n\r\n                            <li><span class="cons-label cons-label-left cons-1">индивидуальный подход к каждому ученику</span></li>\r\n\r\n                            <li><span class="cons-label cons-label-left cons-1">Возможна оплата частями</span></li>\r\n\r\n                            <li><span class="cons-label cons-label-left cons-1">лучшее DJ оборудование</span></li>\r\n\r\n                            <li><span class="cons-label cons-label-left cons-1">Сертификат по окончании</span></li>\r\n\r\n                            <li><span class="cons-label cons-label-left cons-1">поддержка и продвижение<br />после обучения</span></li>\r\n\r\n                        </ul>\r\n                    </div>\r\n                </div>\r\n            </div>\r\n        </div>\r\n    </div>\r\n</div>', 3, NULL, 'special', NULL),
(99, NULL, '<div class="section section-product-features">\r\n    <div class="container">\r\n        <h2 class="h2">КЛЮЧЕВЫЕ ОСОБЕННОСТИ</h2>\r\n        <div class="row features-key">\r\n            <div class="list">\r\n                <ul>\r\n                    <li>\r\n                        <div class="feature compact active">\r\n                            <div class="head">\r\n                                <h3 class="h3">Только индивидуальное обучение</h3>\r\n                                <img src="/css/images/content/courses/moscow/add/cons1.jpg" alt="32-bit-da-convertor-ess">\r\n                            </div>\r\n                            <div class="body">\r\n                                <p>Занятия проходят только в формате тет-а-тет преподаватель-ученик</p>\r\n\r\n\r\n                            </div>\r\n                        </div>\r\n                    </li>\r\n                    <li>\r\n                        <div class="feature compact">\r\n                            <div class="head">\r\n                                <h3 class="h3">Курс состоит из 10 занятий по 2 часа</h3>\r\n                                <img src="/css/images/content/courses/moscow/add/cons2.jpg?h=500&amp;w=500&amp;hash=9BB4FD4120B7E499EC107D2EF2A56DE0089B58F6" alt="digital-out-n">\r\n                            </div>\r\n                            <div class="body">\r\n                                <p>Средняя продолжительность курса - 1 месяц (по 2-3 занятия в неделю) /при желании можно заниматься чаще/</p>\r\n\r\n\r\n                            </div>\r\n                        </div>\r\n                    </li>\r\n                    <li>\r\n                        <div class="feature compact">\r\n                            <div class="head">\r\n                                <h3 class="h3">Курс можно оплатить частями</h3>\r\n                                <img src="/css/images/content/courses/moscow/add/cons3.jpg?h=500&amp;w=500&amp;hash=3C2744166B862D23598B6539C36CA827647690F6" alt="djm-fold-out-screen-n">\r\n                            </div>\r\n                            <div class="body">\r\n                                <p>Курс можно оплачивать по половине стоимости: 50% стоимости в начале и 50% стоимости в середине</p>\r\n\r\n\r\n                            </div>\r\n                        </div>\r\n                    </li>\r\n                    <li>\r\n                        <div class="feature compact">\r\n                            <div class="head">\r\n                                <h3 class="h3">Предоставляется свободная практика на оборудовании DJ Центра</h3>\r\n                                <img src="/css/images/content/courses/moscow/add/cons4.jpg?h=500&amp;w=500&amp;hash=66B7DC3A354A88A1DEE485E60E607DFE74CA48A1" alt="5-port-lan-hub-n">\r\n                            </div>\r\n                            <div class="body">\r\n                                <p>Между занятиями каждому ученику предоставляется возможность отработать полученные навыки на занятиях с преподавателем на любом оборудовании DJ Центра</p>\r\n\r\n\r\n                            </div>\r\n                        </div>\r\n                    </li>\r\n                </ul>\r\n            </div>\r\n            <div class="viewmaster jogwheel" style="top: 0px;">\r\n                <div class="view">\r\n                    <div class="picture-wrap"><div class="picture active"><img src="https://pdj-ecom-cdn.azureedge.net/-/media/pioneerdj/images/features/mixer/djm-tour1/32-bit-da-convertor-ess.jpg?h=500&amp;w=500&amp;hash=33725A2A1A98EC1EE726352EC03F03D88EC264D4"></div><div class="picture"><img src="https://pdj-ecom-cdn.azureedge.net/-/media/pioneerdj/images/features/mixer/djm-tour1/digital-out.jpg?h=500&amp;w=500&amp;hash=9BB4FD4120B7E499EC107D2EF2A56DE0089B58F6"></div><div class="picture"><img src="https://pdj-ecom-cdn.azureedge.net/-/media/pioneerdj/images/features/mixer/djm-tour1/djm-fold-out-screen.jpg?h=500&amp;w=500&amp;hash=3C2744166B862D23598B6539C36CA827647690F6"></div><div class="picture"><img src="https://pdj-ecom-cdn.azureedge.net/-/media/pioneerdj/images/features/mixer/djm-tour1/5-port-lan-hub.jpg?h=500&amp;w=500&amp;hash=66B7DC3A354A88A1DEE485E60E607DFE74CA48A1"></div><div class="picture"><img src="https://pdj-ecom-cdn.azureedge.net/-/media/pioneerdj/images/features/mixer/djm-tour1/b2b-cueing-second-headphone.jpg?h=500&amp;w=500&amp;hash=3B2961C5035790AF0B77AF35B9ADA97FD8869AEE"></div><div class="picture"><img src="https://pdj-ecom-cdn.azureedge.net/-/media/pioneerdj/images/features/mixer/djm-tour1/xlr-aux-in.jpg?h=500&amp;w=500&amp;hash=0A741753076BA6EA946BAA93F56619E1D3A254C8"></div></div>\r\n                    <div class="mask"></div>\r\n                    <a href="#" class="controlbtn trigger__open-overlayer video-player hidden" data-title="" style=""><span class="ico icon-controlbtn-play"><span class="sr-only">Play</span></span></a>\r\n                </div>\r\n            </div>\r\n        </div>\r\n    </div>\r\n</div>', 3, NULL, 'moscow_features', NULL);
INSERT INTO `field_value` (`id`, `field_id`, `value`, `element_id`, `iblock`, `code`, `input_type`) VALUES
(100, NULL, '<div class="section section-product-info">\r\n    <div class="container">\r\n\r\n        <!--\r\n            Add class has-serie if this highlight block exists\r\n            Add class has-latest-update if this highlight block exists\r\n        -->\r\n\r\n        <div class="info has-serie has-latest-update row">\r\n\r\n            <div class="col usp">\r\n\r\n                <h2>Scratch DJ курс включает в себя:</h2>\r\n                <div class="course-includes-block col-md-12">\r\n\r\n                    <ul>\r\n\r\n                        <li>Основы построения музыки. Основополагающие принципы работы скретч диджея. Понятия ритма и темпа.</li>\r\n\r\n                        <li>Знакомство с современной DJ-аппаратурой. Обзор функций скретч DJ комплекта. Простейшие скретч техники.</li>\r\n\r\n                        <li>Основные принципы и техники сведения и скретча. Специфика инкорпорирования скретч-составляющих в миксе. Работа со скоростью и эквалайзером. Характерные особенности сведения на виниле с применением скретча. Отличительные черты структуры скретч-сета. Построение показательных программ.</li>\r\n\r\n                        <li>Отработка практических навыков сведения и скретча (продвинутый уровень) на виниле.</li>\r\n\r\n                        <li>Психология танцпола. Индивидуальность и креативный подход в работе скретч диджея. Продвинутые техники скретча. Основы бит-джаглинга. Закрепление практических навыков скретча. Изображение скретча в письменной форме.</li>\r\n\r\n                        <li>Самопродвижение, создание собственного сценического образа. Букинг и гастрольная деятельность диджея. Подготовка к соревнованиям, повышение эффективности самосовершенствования.</li>\r\n\r\n                    </ul>\r\n\r\n                    <p class="additional-cons">По окончании школы выдаётся сертификат от компании Pioneer DJ</p>\r\n\r\n                    <p class="additional-cons">Предоставляется практика в ночных заведениях</p>\r\n\r\n                    <h3 class="block-header">Стоимость: 25 000 р.</h3>\r\n                </div>\r\n            </div>\r\n        </div>\r\n\r\n    </div>\r\n</div>', 3, NULL, 'moscow_desc', NULL),
(101, NULL, '<div class="content-container-wrapper course-cons">\r\n    <div class="content-container">\r\n        <div class="content">\r\n            <div class="row">\r\n                <div class="col-md-12">\r\n                    <div class="bg">\r\n                        <ul>\r\n\r\n                            <li><span class="cons-label cons-label-left cons-1">Официальная DJ школа Pioneer DJ</span></li>\r\n\r\n                            <li><span class="cons-label cons-label-left cons-1">Индивидуальное обучение</span></li>\r\n\r\n                            <li><span class="cons-label cons-label-left cons-1">Индивидуальный график</span></li>\r\n\r\n                            <li><span class="cons-label cons-label-left cons-1">Опытные преподаватели</span></li>\r\n\r\n                            <li><span class="cons-label cons-label-left cons-1">Без ограничений по возрасту</span></li>\r\n\r\n                            <li><span class="cons-label cons-label-left cons-1">индивидуальный подход к каждому ученику</span></li>\r\n\r\n                            <li><span class="cons-label cons-label-left cons-1">Возможна оплата частями</span></li>\r\n\r\n                            <li><span class="cons-label cons-label-left cons-1">лучшее DJ оборудование</span></li>\r\n\r\n                            <li><span class="cons-label cons-label-left cons-1">Сертификат по окончании</span></li>\r\n\r\n                            <li><span class="cons-label cons-label-left cons-1">поддержка и продвижение<br />после обучения</span></li>\r\n\r\n                        </ul>\r\n                    </div>\r\n                </div>\r\n            </div>\r\n        </div>\r\n    </div>\r\n</div>', 7, NULL, 'special', NULL),
(102, NULL, '<div class="section section-product-features">\r\n    <div class="container">\r\n        <h2 class="h2">КЛЮЧЕВЫЕ ОСОБЕННОСТИ</h2>\r\n        <div class="row features-key">\r\n            <div class="list">\r\n                <ul>\r\n                    <li>\r\n                        <div class="feature compact active">\r\n                            <div class="head">\r\n                                <h3 class="h3">Только индивидуальное обучение</h3>\r\n                                <img src="/css/images/content/courses/moscow/add/cons1.jpg" alt="32-bit-da-convertor-ess">\r\n                            </div>\r\n                            <div class="body">\r\n                                <p>Занятия проходят только в формате тет-а-тет преподаватель-ученик</p>\r\n\r\n\r\n                            </div>\r\n                        </div>\r\n                    </li>\r\n                    <li>\r\n                        <div class="feature compact">\r\n                            <div class="head">\r\n                                <h3 class="h3">Курс состоит из 10 занятий по 2 часа</h3>\r\n                                <img src="/css/images/content/courses/moscow/add/cons2.jpg?h=500&amp;w=500&amp;hash=9BB4FD4120B7E499EC107D2EF2A56DE0089B58F6" alt="digital-out-n">\r\n                            </div>\r\n                            <div class="body">\r\n                                <p>Средняя продолжительность курса - 2 месяца (по 2-3 занятия в неделю) /при желании можно заниматься чаще/</p>\r\n\r\n\r\n                            </div>\r\n                        </div>\r\n                    </li>\r\n                    <li>\r\n                        <div class="feature compact">\r\n                            <div class="head">\r\n                                <h3 class="h3">Курс можно оплатить частями</h3>\r\n                                <img src="/css/images/content/courses/moscow/add/cons3.jpg?h=500&amp;w=500&amp;hash=3C2744166B862D23598B6539C36CA827647690F6" alt="djm-fold-out-screen-n">\r\n                            </div>\r\n                            <div class="body">\r\n                                <p>Курс можно оплачивать по половине стоимости: 50% стоимости в начале и 50% стоимости в середине</p>\r\n\r\n\r\n                            </div>\r\n                        </div>\r\n                    </li>\r\n                    <li>\r\n                        <div class="feature compact">\r\n                            <div class="head">\r\n                                <h3 class="h3">Предоставляется свободная практика на оборудовании DJ Центра</h3>\r\n                                <img src="/css/images/content/courses/moscow/add/cons4.jpg?h=500&amp;w=500&amp;hash=66B7DC3A354A88A1DEE485E60E607DFE74CA48A1" alt="5-port-lan-hub-n">\r\n                            </div>\r\n                            <div class="body">\r\n                                <p>Между занятиями каждому ученику предоставляется возможность отработать полученные навыки на занятиях с преподавателем на любом оборудовании DJ Центра</p>\r\n\r\n\r\n                            </div>\r\n                        </div>\r\n                    </li>\r\n                </ul>\r\n            </div>\r\n            <div class="viewmaster jogwheel" style="top: 0px;">\r\n                <div class="view">\r\n                    <div class="picture-wrap"><div class="picture active"><img src="https://pdj-ecom-cdn.azureedge.net/-/media/pioneerdj/images/features/mixer/djm-tour1/32-bit-da-convertor-ess.jpg?h=500&amp;w=500&amp;hash=33725A2A1A98EC1EE726352EC03F03D88EC264D4"></div><div class="picture"><img src="https://pdj-ecom-cdn.azureedge.net/-/media/pioneerdj/images/features/mixer/djm-tour1/digital-out.jpg?h=500&amp;w=500&amp;hash=9BB4FD4120B7E499EC107D2EF2A56DE0089B58F6"></div><div class="picture"><img src="https://pdj-ecom-cdn.azureedge.net/-/media/pioneerdj/images/features/mixer/djm-tour1/djm-fold-out-screen.jpg?h=500&amp;w=500&amp;hash=3C2744166B862D23598B6539C36CA827647690F6"></div><div class="picture"><img src="https://pdj-ecom-cdn.azureedge.net/-/media/pioneerdj/images/features/mixer/djm-tour1/5-port-lan-hub.jpg?h=500&amp;w=500&amp;hash=66B7DC3A354A88A1DEE485E60E607DFE74CA48A1"></div><div class="picture"><img src="https://pdj-ecom-cdn.azureedge.net/-/media/pioneerdj/images/features/mixer/djm-tour1/b2b-cueing-second-headphone.jpg?h=500&amp;w=500&amp;hash=3B2961C5035790AF0B77AF35B9ADA97FD8869AEE"></div><div class="picture"><img src="https://pdj-ecom-cdn.azureedge.net/-/media/pioneerdj/images/features/mixer/djm-tour1/xlr-aux-in.jpg?h=500&amp;w=500&amp;hash=0A741753076BA6EA946BAA93F56619E1D3A254C8"></div></div>\r\n                    <div class="mask"></div>\r\n                    <a href="#" class="controlbtn trigger__open-overlayer video-player hidden" data-title="" style=""><span class="ico icon-controlbtn-play"><span class="sr-only">Play</span></span></a>\r\n                </div>\r\n            </div>\r\n        </div>\r\n    </div>\r\n</div>', 7, NULL, 'moscow_features', NULL),
(103, NULL, '<div class="section section-product-info">\r\n    <div class="container">\r\n\r\n        <!--\r\n            Add class has-serie if this highlight block exists\r\n            Add class has-latest-update if this highlight block exists\r\n        -->\r\n\r\n        <div class="info has-serie has-latest-update row">\r\n\r\n            <div class="col usp">\r\n\r\n                <h2>Курс техничного диджеинга включает в себя:</h2>\r\n                <div class="course-includes-block col-md-12">\r\n\r\n                    <ul>\r\n\r\n                        <li>Обучение основным элементам скретча</li>\r\n\r\n                        <li>Применение скретча в рамках клубного сета</li>\r\n\r\n                        <li>Beatjuggling</li>\r\n\r\n                        <li>Гармоничное сведение</li>\r\n\r\n                        <li>Построение сетов в стиле "диджейской рутины"</li>\r\n\r\n                        <li>Speedmixing (быстрое сведение треков)</li>\r\n\r\n                        <li>Tone Play и изучение техники работы с пэдами.</li>\r\n\r\n                        <li>работа с метками, тэгами и лупами</li>\r\n\r\n                        <li>продвинутое изучение программы Serato SL (Serato DJ)</li>\r\n\r\n                        <li>создание правильных плэйлистов</li>\r\n\r\n                    </ul>\r\n\r\n                    <p class="additional-cons">По окончании школы выдаётся сертификат от компании Pioneer DJ</p>\r\n\r\n                    <p class="additional-cons">Предоставляется практика в ночных заведениях</p>\r\n\r\n                    <h3 class="block-header">Стоимость: 30 000 р.</h3>\r\n                </div>\r\n            </div>\r\n        </div>\r\n\r\n    </div>\r\n</div>', 7, NULL, 'moscow_desc', NULL),
(104, NULL, '<div class="content-container-wrapper course-cons">\r\n    <div class="content-container">\r\n        <div class="content">\r\n            <div class="row">\r\n                <div class="col-md-12">\r\n                    <div class="bg">\r\n                        <ul>\r\n\r\n                            <li><span class="cons-label cons-label-left cons-1">Официальная DJ школа Pioneer DJ</span></li>\r\n\r\n                            <li><span class="cons-label cons-label-left cons-1">Индивидуальное обучение</span></li>\r\n\r\n                            <li><span class="cons-label cons-label-left cons-1">Индивидуальный график</span></li>\r\n\r\n                            <li><span class="cons-label cons-label-left cons-1">Опытные преподаватели</span></li>\r\n\r\n                            <li><span class="cons-label cons-label-left cons-1">Без ограничений по возрасту</span></li>\r\n\r\n                            <li><span class="cons-label cons-label-left cons-1">индивидуальный подход к каждому ученику</span></li>\r\n\r\n                            <li><span class="cons-label cons-label-left cons-1">Возможна оплата частями</span></li>\r\n\r\n                            <li><span class="cons-label cons-label-left cons-1">лучшее DJ оборудование</span></li>\r\n\r\n                            <li><span class="cons-label cons-label-left cons-1">Сертификат по окончании</span></li>\r\n\r\n                            <li><span class="cons-label cons-label-left cons-1">поддержка и продвижение<br />после обучения</span></li>\r\n\r\n                        </ul>\r\n                    </div>\r\n                </div>\r\n            </div>\r\n        </div>\r\n    </div>\r\n</div>', 6, NULL, 'special', NULL),
(105, NULL, '<div class="section section-product-features">\r\n    <div class="container">\r\n        <h2 class="h2">КЛЮЧЕВЫЕ ОСОБЕННОСТИ</h2>\r\n        <div class="row features-key">\r\n            <div class="list">\r\n                <ul>\r\n                    <li>\r\n                        <div class="feature compact active">\r\n                            <div class="head">\r\n                                <h3 class="h3">Только индивидуальное обучение</h3>\r\n                                <img src="/css/images/content/courses/moscow/add/cons1.jpg" alt="32-bit-da-convertor-ess">\r\n                            </div>\r\n                            <div class="body">\r\n                                <p>Занятия проходят только в формате тет-а-тет преподаватель-ученик</p>\r\n\r\n\r\n                            </div>\r\n                        </div>\r\n                    </li>\r\n                    <li>\r\n                        <div class="feature compact">\r\n                            <div class="head">\r\n                                <h3 class="h3">Курс состоит из 7 занятий по 2 часа</h3>\r\n                                <img src="/css/images/content/courses/moscow/add/cons2.jpg?h=500&amp;w=500&amp;hash=9BB4FD4120B7E499EC107D2EF2A56DE0089B58F6" alt="digital-out-n">\r\n                            </div>\r\n                            <div class="body">\r\n                                <p>Средняя продолжительность курса - 1 месяца (по 2-3 занятия в неделю) /при желании можно заниматься чаще/</p>\r\n\r\n\r\n                            </div>\r\n                        </div>\r\n                    </li>\r\n                    <li>\r\n                        <div class="feature compact">\r\n                            <div class="head">\r\n                                <h3 class="h3">Курс можно оплатить частями</h3>\r\n                                <img src="/css/images/content/courses/moscow/add/cons3.jpg?h=500&amp;w=500&amp;hash=3C2744166B862D23598B6539C36CA827647690F6" alt="djm-fold-out-screen-n">\r\n                            </div>\r\n                            <div class="body">\r\n                                <p>Курс можно оплачивать по половине стоимости: 50% стоимости в начале и 50% стоимости в середине</p>\r\n\r\n\r\n                            </div>\r\n                        </div>\r\n                    </li>\r\n                    <li>\r\n                        <div class="feature compact">\r\n                            <div class="head">\r\n                                <h3 class="h3">Предоставляется свободная практика на оборудовании DJ Центра</h3>\r\n                                <img src="/css/images/content/courses/moscow/add/cons4.jpg?h=500&amp;w=500&amp;hash=66B7DC3A354A88A1DEE485E60E607DFE74CA48A1" alt="5-port-lan-hub-n">\r\n                            </div>\r\n                            <div class="body">\r\n                                <p>Между занятиями каждому ученику предоставляется возможность отработать полученные навыки на занятиях с преподавателем на любом оборудовании DJ Центра</p>\r\n\r\n\r\n                            </div>\r\n                        </div>\r\n                    </li>\r\n                </ul>\r\n            </div>\r\n            <div class="viewmaster jogwheel" style="top: 0px;">\r\n                <div class="view">\r\n                    <div class="picture-wrap"><div class="picture active"><img src="https://pdj-ecom-cdn.azureedge.net/-/media/pioneerdj/images/features/mixer/djm-tour1/32-bit-da-convertor-ess.jpg?h=500&amp;w=500&amp;hash=33725A2A1A98EC1EE726352EC03F03D88EC264D4"></div><div class="picture"><img src="https://pdj-ecom-cdn.azureedge.net/-/media/pioneerdj/images/features/mixer/djm-tour1/digital-out.jpg?h=500&amp;w=500&amp;hash=9BB4FD4120B7E499EC107D2EF2A56DE0089B58F6"></div><div class="picture"><img src="https://pdj-ecom-cdn.azureedge.net/-/media/pioneerdj/images/features/mixer/djm-tour1/djm-fold-out-screen.jpg?h=500&amp;w=500&amp;hash=3C2744166B862D23598B6539C36CA827647690F6"></div><div class="picture"><img src="https://pdj-ecom-cdn.azureedge.net/-/media/pioneerdj/images/features/mixer/djm-tour1/5-port-lan-hub.jpg?h=500&amp;w=500&amp;hash=66B7DC3A354A88A1DEE485E60E607DFE74CA48A1"></div><div class="picture"><img src="https://pdj-ecom-cdn.azureedge.net/-/media/pioneerdj/images/features/mixer/djm-tour1/b2b-cueing-second-headphone.jpg?h=500&amp;w=500&amp;hash=3B2961C5035790AF0B77AF35B9ADA97FD8869AEE"></div><div class="picture"><img src="https://pdj-ecom-cdn.azureedge.net/-/media/pioneerdj/images/features/mixer/djm-tour1/xlr-aux-in.jpg?h=500&amp;w=500&amp;hash=0A741753076BA6EA946BAA93F56619E1D3A254C8"></div></div>\r\n                    <div class="mask"></div>\r\n                    <a href="#" class="controlbtn trigger__open-overlayer video-player hidden" data-title="" style=""><span class="ico icon-controlbtn-play"><span class="sr-only">Play</span></span></a>\r\n                </div>\r\n            </div>\r\n        </div>\r\n    </div>\r\n</div>', 6, NULL, 'moscow_features', NULL),
(106, NULL, '<div class="section section-product-info">\r\n    <div class="container">\r\n\r\n        <!--\r\n            Add class has-serie if this highlight block exists\r\n            Add class has-latest-update if this highlight block exists\r\n        -->\r\n\r\n        <div class="info has-serie has-latest-update row">\r\n\r\n            <div class="col usp">\r\n\r\n                <h2>Vinyl курс включает в себя:</h2>\r\n                <div class="course-includes-block col-md-12">\r\n\r\n                    <ul>\r\n\r\n                        <li>Терминология и знакомство с оборудованием</li>\r\n\r\n                        <li>Предоставление официальных материалов по подготовке от компании Pioneer DJ</li>\r\n\r\n                        <li>Предоставление музыки (при необходимости)</li>\r\n\r\n                        <li>Теоретическая основа, история, специфика музыкальных стилей</li>\r\n\r\n                        <li>Техническое устройство и коммутация</li>\r\n\r\n                        <li>Проработка  и тренинг слуха</li>\r\n\r\n                        <li>Специфика работы на Vinyl (Оригинальные пластинки)</li>\r\n\r\n                        <li>Сведение на Vinyl Rekordbox DJ / Taktor Scratch Pro / Serato DJ (Timecode пластинки)</li>\r\n\r\n                        <li>Основы качественных выступлений (проработка дальнейших выступлений)</li>\r\n\r\n                        <li>Информация по источникам покупки, структуризации, специфики музыки</li>\r\n\r\n                        <li>Запись Promo-материалов для дальнейшего продвижения</li>\r\n\r\n                    </ul>\r\n\r\n                    <p class="additional-cons">По окончании школы выдаётся сертификат от компании Pioneer DJ</p>\r\n\r\n                    <h3 class="block-header">Стоимость: 12 000 р.</h3>\r\n                </div>\r\n            </div>\r\n        </div>\r\n\r\n    </div>\r\n</div>', 6, NULL, 'moscow_desc', NULL),
(113, NULL, 'moscow', 66, NULL, 'city', NULL),
(114, NULL, 'https://www.youtube.com/embed/EcC_mUNLU2k?ecver=2', 67, NULL, 'url', NULL),
(115, NULL, 'https://www.youtube.com/embed/Fcda2WPaiEc', 68, NULL, 'url', NULL),
(116, NULL, 'https://www.youtube.com/embed/gKuLBAFgoUw', 69, NULL, 'url', NULL),
(117, NULL, 'https://www.youtube.com/embed/0abYWi4UyK8', 70, NULL, 'url', NULL),
(118, NULL, '<div class="section section-product-features">\r\n    <div class="container">\r\n        <h2 class="h2">КЛЮЧЕВЫЕ ОСОБЕННОСТИ</h2>\r\n        <div class="row features-key">\r\n            <div class="list">\r\n                <ul>\r\n                    <li>\r\n                        <div class="feature compact active">\r\n                            <div class="head">\r\n                                <h3 class="h3">Только индивидуальное обучение</h3>\r\n                                <img src="/css/images/content/courses/moscow/add/cons1.jpg" alt="s">\r\n                            </div>\r\n                            <div class="body">\r\n                                <p>Занятия проходят только в формате тет-а-тет преподаватель-ученик</p>\r\n\r\n\r\n                            </div>\r\n                        </div>\r\n                    </li>\r\n                    <li>\r\n                        <div class="feature compact">\r\n                            <div class="head">\r\n                                <h3 class="h3">Курс состоит из 14 занятий по 2 часа</h3>\r\n                                <img src="/css/images/content/courses/moscow/add/cons2.jpg" alt="">\r\n                            </div>\r\n                            <div class="body">\r\n                                <p>Средняя продолжительность курса - 2 месяца (по 2-3 занятия в неделю) /при желании можно заниматься чаще/</p>\r\n\r\n\r\n                            </div>\r\n                        </div>\r\n                    </li>\r\n                    <li>\r\n                        <div class="feature compact">\r\n                            <div class="head">\r\n                                <h3 class="h3">Курс можно оплатить частями</h3>\r\n                                <img src="/css/images/content/courses/moscow/add/cons3.jpg" alt="">\r\n                            </div>\r\n                            <div class="body">\r\n                                <p>Курс можно оплачивать по половине стоимости: 50% стоимости в начале и 50% стоимости в середине</p>\r\n\r\n\r\n                            </div>\r\n                        </div>\r\n                    </li>\r\n                    <li>\r\n                        <div class="feature compact">\r\n                            <div class="head">\r\n                                <h3 class="h3">Предоставляется свободная практика на оборудовании DJ Центра</h3>\r\n                                <img src="/css/images/content/courses/moscow/add/cons4.jpg" alt="">\r\n                            </div>\r\n                            <div class="body">\r\n                                <p>Между занятиями каждому ученику предоставляется возможность отработать полученные навыки на занятиях с преподавателем на любом оборудовании DJ Центра</p>\r\n\r\n\r\n                            </div>\r\n                        </div>\r\n                    </li>\r\n                </ul>\r\n            </div>\r\n            <div class="viewmaster jogwheel" style="top: 0px;">\r\n                <div class="view">\r\n                    <div class="picture-wrap"></div>\r\n                    <div class="mask"></div>\r\n                    <a href="#" class="controlbtn trigger__open-overlayer video-player hidden" data-title="" style=""><span class="ico icon-controlbtn-play"><span class="sr-only">Play</span></span></a>\r\n                </div>\r\n            </div>\r\n        </div>\r\n    </div>\r\n</div>', 1, NULL, 'nsk_features', NULL),
(119, NULL, '<div class="section section-product-info">\r\n    <div class="container">\r\n\r\n        <!--\r\n            Add class has-serie if this highlight block exists\r\n            Add class has-latest-update if this highlight block exists\r\n        -->\r\n\r\n        <div class="info has-serie has-latest-update row">\r\n\r\n            <div class="col usp">\r\n\r\n                <h2>БАЗОВЫЙ КУРС ВКЛЮЧАЕТ В СЕБЯ:</h2>\r\n                <div class="course-includes-block col-md-12">\r\n\r\n                    <ul>\r\n\r\n                        <li>Терминология и знакомство с оборудованием</li>\r\n\r\n                        <li>Предоставление оф. материалов по подготовке от компании Pioпeer DJ</li>\r\n\r\n                        <li>Предоставление музыки (при необходимости)</li>\r\n\r\n                        <li>Теоретическая основа, история, слецифика музыкальных стилей</li>\r\n\r\n                        <li>Техническое устройство и коммутация</li>\r\n\r\n                        <li>Самые популярные и актуальные виды и типы сведений</li>\r\n\r\n                        <li>Проработка (тренинг) слуха</li>\r\n\r\n                        <li>Фаст-миксинг (скоростные сведения)</li>\r\n\r\n                        <li>Сведение на СD / USB (rekordbox) / Wi-Fi (rekordbox)</li>\r\n\r\n                        <li>Разработка индивидуальности выступлений</li>\r\n\r\n                        <li>Проработка эффектов и преобразование звучания</li>\r\n\r\n                        <li>Сведение на 3-х проигрывателях</li>\r\n\r\n                        <li>Основы качественных выступлений (проработка дальнейших выступлений)</li>\r\n\r\n                        <li>Информация относительно источников покупки/скачивания, структуризации, специфики музыки</li>\r\n\r\n                        <li>Запись Promo материалов для дальнейшего продвижения</li>\r\n\r\n                        <li>Информация о клубной культуре города а так же возможности работы /практика и дальнейшее продвижение/</li>\r\n\r\n                    </ul>\r\n\r\n                    <p class="additional-cons">По окончании школы выдаётся сертификат от компании Pioneer DJ</p>\r\n\r\n                    <p class="additional-cons">Предоставляется практика в ночных заведениях</p>\r\n\r\n                    <h3 class="block-header">Стоимость: 14 000 р.</h3>\r\n                </div>\r\n            </div>\r\n        </div>\r\n\r\n    </div>\r\n</div>', 1, NULL, 'nsk_desc', NULL),
(120, NULL, '<div class="section section-product-features">\r\n    <div class="container">\r\n        <h2 class="h2">КЛЮЧЕВЫЕ ОСОБЕННОСТИ</h2>\r\n        <div class="row features-key">\r\n            <div class="list">\r\n                <ul>\r\n                    <li>\r\n                        <div class="feature compact active">\r\n                            <div class="head">\r\n                                <h3 class="h3">Только индивидуальное обучение</h3>\r\n                                <img src="/css/images/content/courses/moscow/add/cons1.jpg" alt="32-bit-da-convertor-ess">\r\n                            </div>\r\n                            <div class="body">\r\n                                <p>Занятия проходят только в формате тет-а-тет преподаватель-ученик</p>\r\n\r\n\r\n                            </div>\r\n                        </div>\r\n                    </li>\r\n                    <li>\r\n                        <div class="feature compact">\r\n                            <div class="head">\r\n                                <h3 class="h3">Курс состоит из 10 занятий по 2 часа</h3>\r\n                                <img src="/css/images/content/courses/moscow/add/cons2.jpg?h=500&amp;w=500&amp;hash=9BB4FD4120B7E499EC107D2EF2A56DE0089B58F6" alt="digital-out-n">\r\n                            </div>\r\n                            <div class="body">\r\n                                <p>Средняя продолжительность курса - 2 месяца (по 2-3 занятия в неделю) /при желании можно заниматься чаще/</p>\r\n\r\n\r\n                            </div>\r\n                        </div>\r\n                    </li>\r\n                    <li>\r\n                        <div class="feature compact">\r\n                            <div class="head">\r\n                                <h3 class="h3">Курс можно оплатить частями</h3>\r\n                                <img src="/css/images/content/courses/moscow/add/cons3.jpg?h=500&amp;w=500&amp;hash=3C2744166B862D23598B6539C36CA827647690F6" alt="djm-fold-out-screen-n">\r\n                            </div>\r\n                            <div class="body">\r\n                                <p>Курс можно оплачивать по половине стоимости: 50% стоимости в начале и 50% стоимости в середине</p>\r\n\r\n\r\n                            </div>\r\n                        </div>\r\n                    </li>\r\n                    <li>\r\n                        <div class="feature compact">\r\n                            <div class="head">\r\n                                <h3 class="h3">Предоставляется свободная практика на оборудовании DJ Центра</h3>\r\n                                <img src="/css/images/content/courses/moscow/add/cons4.jpg?h=500&amp;w=500&amp;hash=66B7DC3A354A88A1DEE485E60E607DFE74CA48A1" alt="5-port-lan-hub-n">\r\n                            </div>\r\n                            <div class="body">\r\n                                <p>Между занятиями каждому ученику предоставляется возможность отработать полученные навыки на занятиях с преподавателем на любом оборудовании DJ Центра</p>\r\n\r\n\r\n                            </div>\r\n                        </div>\r\n                    </li>\r\n                </ul>\r\n            </div>\r\n            <div class="viewmaster jogwheel" style="top: 0px;">\r\n                <div class="view">\r\n                    <div class="picture-wrap"><div class="picture active"><img src="https://pdj-ecom-cdn.azureedge.net/-/media/pioneerdj/images/features/mixer/djm-tour1/32-bit-da-convertor-ess.jpg?h=500&amp;w=500&amp;hash=33725A2A1A98EC1EE726352EC03F03D88EC264D4"></div><div class="picture"><img src="https://pdj-ecom-cdn.azureedge.net/-/media/pioneerdj/images/features/mixer/djm-tour1/digital-out.jpg?h=500&amp;w=500&amp;hash=9BB4FD4120B7E499EC107D2EF2A56DE0089B58F6"></div><div class="picture"><img src="https://pdj-ecom-cdn.azureedge.net/-/media/pioneerdj/images/features/mixer/djm-tour1/djm-fold-out-screen.jpg?h=500&amp;w=500&amp;hash=3C2744166B862D23598B6539C36CA827647690F6"></div><div class="picture"><img src="https://pdj-ecom-cdn.azureedge.net/-/media/pioneerdj/images/features/mixer/djm-tour1/5-port-lan-hub.jpg?h=500&amp;w=500&amp;hash=66B7DC3A354A88A1DEE485E60E607DFE74CA48A1"></div><div class="picture"><img src="https://pdj-ecom-cdn.azureedge.net/-/media/pioneerdj/images/features/mixer/djm-tour1/b2b-cueing-second-headphone.jpg?h=500&amp;w=500&amp;hash=3B2961C5035790AF0B77AF35B9ADA97FD8869AEE"></div><div class="picture"><img src="https://pdj-ecom-cdn.azureedge.net/-/media/pioneerdj/images/features/mixer/djm-tour1/xlr-aux-in.jpg?h=500&amp;w=500&amp;hash=0A741753076BA6EA946BAA93F56619E1D3A254C8"></div></div>\r\n                    <div class="mask"></div>\r\n                    <a href="#" class="controlbtn trigger__open-overlayer video-player hidden" data-title="" style=""><span class="ico icon-controlbtn-play"><span class="sr-only">Play</span></span></a>\r\n                </div>\r\n            </div>\r\n        </div>\r\n    </div>\r\n</div>', 4, NULL, 'nsk_features', NULL),
(121, NULL, '<div class="section section-product-info">\r\n    <div class="container">\r\n\r\n        <!--\r\n            Add class has-serie if this highlight block exists\r\n            Add class has-latest-update if this highlight block exists\r\n        -->\r\n\r\n        <div class="info has-serie has-latest-update row">\r\n\r\n            <div class="col usp">\r\n\r\n                <h2>KIDS КУРС ВКЛЮЧАЕТ В СЕБЯ:</h2>\r\n                <div class="course-includes-block col-md-12">\r\n\r\n                    <ul>\r\n\r\n                        <li>Терминология и знакомство с оборудованием</li>\r\n\r\n                        <li>Предоставление официальных материалов по подготовке от компании Pioneer DJ</li>\r\n\r\n                        <li>Предоставление музыки (при необходимости)</li>\r\n\r\n                        <li>Теоретическая основа, история, специфика музыкальных стилей</li>\r\n\r\n                        <li>Техническое устройство и коммутация</li>\r\n\r\n                        <li>Самые популярные и актуальные виды и типы сведений</li>\r\n\r\n                        <li>Проработка  и тренинг слуха</li>\r\n\r\n                        <li>Фаст-миксинг (скоростные сведения)</li>\r\n\r\n                        <li>Сведение на СD / USB (rekordbox) / Wi-Fi (rekordbox)</li>\r\n\r\n                        <li>Проработка эффектов и преобразование звучания</li>\r\n\r\n                        <li>Основы качественных выступлений (проработка дальнейших выступлений)</li>\r\n\r\n                        <li>Информация по источникам покупки / скачивания, структуризации, специфики музыки</li>\r\n\r\n                        <li>Запись Promo-материалов для дальнейшего продвижения</li>\r\n\r\n                        <li>Информация о клубной культуре города /практика и дальнейшее продвижение с учётом возраста/</li>\r\n\r\n                    </ul>\r\n\r\n                    <p class="additional-cons">По окончании школы выдаётся сертификат от компании Pioneer DJ</p>\r\n\r\n                    <h3 class="block-header">Стоимость: 12 000 р.</h3>\r\n                </div>\r\n            </div>\r\n        </div>\r\n\r\n    </div>\r\n</div>', 4, NULL, 'nsk_desc', NULL),
(122, NULL, '<div class="section section-product-features">\r\n    <div class="container">\r\n        <h2 class="h2">КЛЮЧЕВЫЕ ОСОБЕННОСТИ</h2>\r\n        <div class="row features-key">\r\n            <div class="list">\r\n                <ul>\r\n                    <li>\r\n                        <div class="feature compact active">\r\n                            <div class="head">\r\n                                <h3 class="h3">Только индивидуальное обучение</h3>\r\n                                <img src="/css/images/content/courses/moscow/add/cons1.jpg" alt="32-bit-da-convertor-ess">\r\n                            </div>\r\n                            <div class="body">\r\n                                <p>Занятия проходят только в формате тет-а-тет преподаватель-ученик</p>\r\n\r\n\r\n                            </div>\r\n                        </div>\r\n                    </li>\r\n                    <li>\r\n                        <div class="feature compact">\r\n                            <div class="head">\r\n                                <h3 class="h3">Курс состоит из 7 занятий по 2 часа</h3>\r\n                                <img src="/css/images/content/courses/moscow/add/cons2.jpg?h=500&amp;w=500&amp;hash=9BB4FD4120B7E499EC107D2EF2A56DE0089B58F6" alt="digital-out-n">\r\n                            </div>\r\n                            <div class="body">\r\n                                <p>Средняя продолжительность курса - 1 месяца (по 2-3 занятия в неделю) /при желании можно заниматься чаще/</p>\r\n\r\n\r\n                            </div>\r\n                        </div>\r\n                    </li>\r\n                    <li>\r\n                        <div class="feature compact">\r\n                            <div class="head">\r\n                                <h3 class="h3">Курс можно оплатить частями</h3>\r\n                                <img src="/css/images/content/courses/moscow/add/cons3.jpg?h=500&amp;w=500&amp;hash=3C2744166B862D23598B6539C36CA827647690F6" alt="djm-fold-out-screen-n">\r\n                            </div>\r\n                            <div class="body">\r\n                                <p>Курс можно оплачивать по половине стоимости: 50% стоимости в начале и 50% стоимости в середине</p>\r\n\r\n\r\n                            </div>\r\n                        </div>\r\n                    </li>\r\n                    <li>\r\n                        <div class="feature compact">\r\n                            <div class="head">\r\n                                <h3 class="h3">Предоставляется свободная практика на оборудовании DJ Центра</h3>\r\n                                <img src="/css/images/content/courses/moscow/add/cons4.jpg?h=500&amp;w=500&amp;hash=66B7DC3A354A88A1DEE485E60E607DFE74CA48A1" alt="5-port-lan-hub-n">\r\n                            </div>\r\n                            <div class="body">\r\n                                <p>Между занятиями каждому ученику предоставляется возможность отработать полученные навыки на занятиях с преподавателем на любом оборудовании DJ Центра</p>\r\n\r\n\r\n                            </div>\r\n                        </div>\r\n                    </li>\r\n                </ul>\r\n            </div>\r\n            <div class="viewmaster jogwheel" style="top: 0px;">\r\n                <div class="view">\r\n                    <div class="picture-wrap"><div class="picture active"><img src="https://pdj-ecom-cdn.azureedge.net/-/media/pioneerdj/images/features/mixer/djm-tour1/32-bit-da-convertor-ess.jpg?h=500&amp;w=500&amp;hash=33725A2A1A98EC1EE726352EC03F03D88EC264D4"></div><div class="picture"><img src="https://pdj-ecom-cdn.azureedge.net/-/media/pioneerdj/images/features/mixer/djm-tour1/digital-out.jpg?h=500&amp;w=500&amp;hash=9BB4FD4120B7E499EC107D2EF2A56DE0089B58F6"></div><div class="picture"><img src="https://pdj-ecom-cdn.azureedge.net/-/media/pioneerdj/images/features/mixer/djm-tour1/djm-fold-out-screen.jpg?h=500&amp;w=500&amp;hash=3C2744166B862D23598B6539C36CA827647690F6"></div><div class="picture"><img src="https://pdj-ecom-cdn.azureedge.net/-/media/pioneerdj/images/features/mixer/djm-tour1/5-port-lan-hub.jpg?h=500&amp;w=500&amp;hash=66B7DC3A354A88A1DEE485E60E607DFE74CA48A1"></div><div class="picture"><img src="https://pdj-ecom-cdn.azureedge.net/-/media/pioneerdj/images/features/mixer/djm-tour1/b2b-cueing-second-headphone.jpg?h=500&amp;w=500&amp;hash=3B2961C5035790AF0B77AF35B9ADA97FD8869AEE"></div><div class="picture"><img src="https://pdj-ecom-cdn.azureedge.net/-/media/pioneerdj/images/features/mixer/djm-tour1/xlr-aux-in.jpg?h=500&amp;w=500&amp;hash=0A741753076BA6EA946BAA93F56619E1D3A254C8"></div></div>\r\n                    <div class="mask"></div>\r\n                    <a href="#" class="controlbtn trigger__open-overlayer video-player hidden" data-title="" style=""><span class="ico icon-controlbtn-play"><span class="sr-only">Play</span></span></a>\r\n                </div>\r\n            </div>\r\n        </div>\r\n    </div>\r\n</div>', 5, NULL, 'nsk_features', NULL),
(123, NULL, '<div class="section section-product-info">\r\n    <div class="container">\r\n\r\n        <!--\r\n            Add class has-serie if this highlight block exists\r\n            Add class has-latest-update if this highlight block exists\r\n        -->\r\n\r\n        <div class="info has-serie has-latest-update row">\r\n\r\n            <div class="col usp">\r\n\r\n                <h2>MIDI КУРС ВКЛЮЧАЕТ В СЕБЯ:</h2>\r\n                <div class="course-includes-block col-md-12">\r\n\r\n                    <ul>\r\n\r\n                        <li>Терминология и знакомство с оборудованием</li>\r\n\r\n                        <li>Предоставление официальных материалов по подготовке от компании Pioneer DJ</li>\r\n\r\n                        <li>Предоставление музыки (при необходимости)</li>\r\n\r\n                        <li>Теоретическая основа, история, специфика музыкальных стилей</li>\r\n\r\n                        <li>Техническое устройство и коммутация</li>\r\n\r\n                        <li>Проработка  и тренинг слуха</li>\r\n\r\n                        <li>Специфика работы на Midi-контроллерах</li>\r\n\r\n                        <li>Работа в rekordbox dj</li>\r\n\r\n                        <li>Работа в Serato DJ</li>\r\n\r\n                        <li>Работа в Taktor Pro 2</li>\r\n\r\n                        <li>Основы качественных выступлений (проработка дальнейших выступлений)</li>\r\n\r\n                        <li>Информация по источникам покупки / скачивания, структуризации, специфики музыки</li>\r\n\r\n                        <li>Запись Promo-материалов для дальнейшего продвижения</li>\r\n\r\n                    </ul>\r\n\r\n                    <p class="additional-cons">По окончании школы выдаётся сертификат от компании Pioneer DJ</p>\r\n\r\n                    <h3 class="block-header">Стоимость: 7 000 р.</h3>\r\n                </div>\r\n            </div>\r\n        </div>\r\n\r\n    </div>\r\n</div>', 5, NULL, 'nsk_desc', NULL),
(125, NULL, '<div class="section section-product-features">\r\n    <div class="container">\r\n        <h2 class="h2">КЛЮЧЕВЫЕ ОСОБЕННОСТИ</h2>\r\n        <div class="row features-key">\r\n            <div class="list">\r\n                <ul>\r\n                    <li>\r\n                        <div class="feature compact active">\r\n                            <div class="head">\r\n                                <h3 class="h3">Только индивидуальное обучение</h3>\r\n                                <img src="/css/images/content/courses/moscow/add/cons1.jpg" alt="32-bit-da-convertor-ess">\r\n                            </div>\r\n                            <div class="body">\r\n                                <p>Занятия проходят только в формате тет-а-тет преподаватель-ученик</p>\r\n\r\n\r\n                            </div>\r\n                        </div>\r\n                    </li>\r\n                    <li>\r\n                        <div class="feature compact">\r\n                            <div class="head">\r\n                                <h3 class="h3">Курс состоит из 14 занятий по 2 часа</h3>\r\n                                <img src="/css/images/content/courses/moscow/add/cons2.jpg?h=500&amp;w=500&amp;hash=9BB4FD4120B7E499EC107D2EF2A56DE0089B58F6" alt="digital-out-n">\r\n                            </div>\r\n                            <div class="body">\r\n                                <p>Средняя продолжительность курса - 2 месяца (по 2-3 занятия в неделю) /при желании можно заниматься чаще/</p>\r\n\r\n\r\n                            </div>\r\n                        </div>\r\n                    </li>\r\n                    <li>\r\n                        <div class="feature compact">\r\n                            <div class="head">\r\n                                <h3 class="h3">Курс можно оплатить частями</h3>\r\n                                <img src="/css/images/content/courses/moscow/add/cons3.jpg?h=500&amp;w=500&amp;hash=3C2744166B862D23598B6539C36CA827647690F6" alt="djm-fold-out-screen-n">\r\n                            </div>\r\n                            <div class="body">\r\n                                <p>Курс можно оплачивать по половине стоимости: 50% стоимости в начале и 50% стоимости в середине</p>\r\n\r\n\r\n                            </div>\r\n                        </div>\r\n                    </li>\r\n                    <li>\r\n                        <div class="feature compact">\r\n                            <div class="head">\r\n                                <h3 class="h3">Предоставляется свободная практика на оборудовании DJ Центра</h3>\r\n                                <img src="/css/images/content/courses/moscow/add/cons4.jpg?h=500&amp;w=500&amp;hash=66B7DC3A354A88A1DEE485E60E607DFE74CA48A1" alt="5-port-lan-hub-n">\r\n                            </div>\r\n                            <div class="body">\r\n                                <p>Между занятиями каждому ученику предоставляется возможность отработать полученные навыки на занятиях с преподавателем на любом оборудовании DJ Центра</p>\r\n\r\n\r\n                            </div>\r\n                        </div>\r\n                    </li>\r\n                </ul>\r\n            </div>\r\n            <div class="viewmaster jogwheel" style="top: 0px;">\r\n                <div class="view">\r\n                    <div class="picture-wrap"><div class="picture active"><img src="https://pdj-ecom-cdn.azureedge.net/-/media/pioneerdj/images/features/mixer/djm-tour1/32-bit-da-convertor-ess.jpg?h=500&amp;w=500&amp;hash=33725A2A1A98EC1EE726352EC03F03D88EC264D4"></div><div class="picture"><img src="https://pdj-ecom-cdn.azureedge.net/-/media/pioneerdj/images/features/mixer/djm-tour1/digital-out.jpg?h=500&amp;w=500&amp;hash=9BB4FD4120B7E499EC107D2EF2A56DE0089B58F6"></div><div class="picture"><img src="https://pdj-ecom-cdn.azureedge.net/-/media/pioneerdj/images/features/mixer/djm-tour1/djm-fold-out-screen.jpg?h=500&amp;w=500&amp;hash=3C2744166B862D23598B6539C36CA827647690F6"></div><div class="picture"><img src="https://pdj-ecom-cdn.azureedge.net/-/media/pioneerdj/images/features/mixer/djm-tour1/5-port-lan-hub.jpg?h=500&amp;w=500&amp;hash=66B7DC3A354A88A1DEE485E60E607DFE74CA48A1"></div><div class="picture"><img src="https://pdj-ecom-cdn.azureedge.net/-/media/pioneerdj/images/features/mixer/djm-tour1/b2b-cueing-second-headphone.jpg?h=500&amp;w=500&amp;hash=3B2961C5035790AF0B77AF35B9ADA97FD8869AEE"></div><div class="picture"><img src="https://pdj-ecom-cdn.azureedge.net/-/media/pioneerdj/images/features/mixer/djm-tour1/xlr-aux-in.jpg?h=500&amp;w=500&amp;hash=0A741753076BA6EA946BAA93F56619E1D3A254C8"></div></div>\r\n                    <div class="mask"></div>\r\n                    <a href="#" class="controlbtn trigger__open-overlayer video-player hidden" data-title="" style=""><span class="ico icon-controlbtn-play"><span class="sr-only">Play</span></span></a>\r\n                </div>\r\n            </div>\r\n        </div>\r\n    </div>\r\n</div>', 2, NULL, 'nsk_features', NULL),
(126, NULL, '<div class="section section-product-info">\r\n    <div class="container">\r\n\r\n        <!--\r\n            Add class has-serie if this highlight block exists\r\n            Add class has-latest-update if this highlight block exists\r\n        -->\r\n\r\n        <div class="info has-serie has-latest-update row">\r\n\r\n            <div class="col usp">\r\n\r\n                <h2>PRO курс включает в себя:</h2>\r\n                <div class="course-includes-block col-md-12">\r\n\r\n                    <ul>\r\n\r\n                        <li>Тестирование исходных навыков диджея (от этой точки будет считаться прирост навыков в курсе)</li>\r\n\r\n                        <li>Предоставление официальных материалов по подготовке от компании Pioneer DJ</li>\r\n\r\n                        <li>Предоставление музыки (при необходимости)</li>\r\n\r\n                        <li>Техническое особенности и хитрости оборудования</li>\r\n\r\n                        <li>Техническое устройство и коммутация</li>\r\n\r\n                        <li>Самые популярные и сложные виды сведений</li>\r\n\r\n                        <li>Максимальная проработка (тренинг) слуха</li>\r\n\r\n                        <li>Фаст-миксинг (скоростные сведения)</li>\r\n\r\n                        <li>Сведение на СD / USB (rekordbox) / Wi-Fi (rekordbox)</li>\r\n\r\n                        <li>Сведение на Vinyl (Original / rekordbox dj / Traktor / Serato)</li>\r\n\r\n                        <li>Сведение на Midi (rekordbox dj / Taktor / Serato)</li>\r\n\r\n                        <li>Углубленная проработка применения эффектов</li>\r\n\r\n                        <li>Разработка индивидуального стиля выступлений, поиск своих фишек в оформлении звучания микса</li>\r\n\r\n                        <li>Создание "ремиксов" в реальном времени</li>\r\n\r\n                        <li>Сведение с эффектами (применение до 3х эффектов одновременно в одном сведении)</li>\r\n\r\n                        <li>Профессиональное сведение на трёх и четырёх проигрывателях</li>\r\n\r\n                        <li>Основы качественных выступлений /проработка дальнейших выступлений/</li>\r\n\r\n                        <li>Информация по источникам покупки / скачивания, структуризации, специфики музыки</li>\r\n\r\n                        <li>Запись Promo материалов для дальнейшего продвижения (максимальное продвижение)</li>\r\n\r\n                        <li>Информация о клубной культуре города и возможности работы /практика и дальнейшее продвижение/</li>\r\n\r\n                    </ul>\r\n\r\n                    <p class="additional-cons">По окончании школы выдаётся сертификат от компании Pioneer DJ</p>\r\n\r\n                    <p class="additional-cons">По окончании PRO курса записывается Promo-Video Mix на студии Pioneer DJ TV</p>\r\n\r\n                    <h3 class="block-header">Стоимость: 16 000 р.</h3>\r\n                </div>\r\n            </div>\r\n        </div>\r\n\r\n    </div>\r\n</div>', 2, NULL, 'nsk_desc', NULL);
INSERT INTO `field_value` (`id`, `field_id`, `value`, `element_id`, `iblock`, `code`, `input_type`) VALUES
(127, NULL, '<div class="section section-product-info">\r\n    <div class="container">\r\n\r\n        <!--\r\n            Add class has-serie if this highlight block exists\r\n            Add class has-latest-update if this highlight block exists\r\n        -->\r\n\r\n        <div class="info has-serie has-latest-update row">\r\n\r\n            <div class="col usp">\r\n\r\n                <h2>Vinyl курс включает в себя:</h2>\r\n                <div class="course-includes-block col-md-12">\r\n\r\n                    <ul>\r\n\r\n                        <li>Терминология и знакомство с оборудованием</li>\r\n\r\n                        <li>Предоставление официальных материалов по подготовке от компании Pioneer DJ</li>\r\n\r\n                        <li>Предоставление музыки (при необходимости)</li>\r\n\r\n                        <li>Теоретическая основа, история, специфика музыкальных стилей</li>\r\n\r\n                        <li>Техническое устройство и коммутация</li>\r\n\r\n                        <li>Проработка  и тренинг слуха</li>\r\n\r\n                        <li>Специфика работы на Vinyl (Оригинальные пластинки)</li>\r\n\r\n                        <li>Сведение на Vinyl Rekordbox DJ / Taktor Scratch Pro / Serato DJ (Timecode пластинки)</li>\r\n\r\n                        <li>Основы качественных выступлений (проработка дальнейших выступлений)</li>\r\n\r\n                        <li>Информация по источникам покупки, структуризации, специфики музыки</li>\r\n\r\n                        <li>Запись Promo-материалов для дальнейшего продвижения</li>\r\n\r\n                    </ul>\r\n\r\n                    <p class="additional-cons">По окончании школы выдаётся сертификат от компании Pioneer DJ</p>\r\n\r\n                    <h3 class="block-header">Стоимость: 7 000 р.</h3>\r\n                </div>\r\n            </div>\r\n        </div>\r\n\r\n    </div>\r\n</div>', 6, NULL, 'nsk_desc', NULL),
(128, NULL, '<div class="section section-product-features">\r\n    <div class="container">\r\n        <h2 class="h2">КЛЮЧЕВЫЕ ОСОБЕННОСТИ</h2>\r\n        <div class="row features-key">\r\n            <div class="list">\r\n                <ul>\r\n                    <li>\r\n                        <div class="feature compact active">\r\n                            <div class="head">\r\n                                <h3 class="h3">Только индивидуальное обучение</h3>\r\n                                <img src="/css/images/content/courses/moscow/add/cons1.jpg" alt="32-bit-da-convertor-ess">\r\n                            </div>\r\n                            <div class="body">\r\n                                <p>Занятия проходят только в формате тет-а-тет преподаватель-ученик</p>\r\n\r\n\r\n                            </div>\r\n                        </div>\r\n                    </li>\r\n                    <li>\r\n                        <div class="feature compact">\r\n                            <div class="head">\r\n                                <h3 class="h3">Курс состоит из 7 занятий по 2 часа</h3>\r\n                                <img src="/css/images/content/courses/moscow/add/cons2.jpg?h=500&amp;w=500&amp;hash=9BB4FD4120B7E499EC107D2EF2A56DE0089B58F6" alt="digital-out-n">\r\n                            </div>\r\n                            <div class="body">\r\n                                <p>Средняя продолжительность курса - 1 месяца (по 2-3 занятия в неделю) /при желании можно заниматься чаще/</p>\r\n\r\n\r\n                            </div>\r\n                        </div>\r\n                    </li>\r\n                    <li>\r\n                        <div class="feature compact">\r\n                            <div class="head">\r\n                                <h3 class="h3">Курс можно оплатить частями</h3>\r\n                                <img src="/css/images/content/courses/moscow/add/cons3.jpg?h=500&amp;w=500&amp;hash=3C2744166B862D23598B6539C36CA827647690F6" alt="djm-fold-out-screen-n">\r\n                            </div>\r\n                            <div class="body">\r\n                                <p>Курс можно оплачивать по половине стоимости: 50% стоимости в начале и 50% стоимости в середине</p>\r\n\r\n\r\n                            </div>\r\n                        </div>\r\n                    </li>\r\n                    <li>\r\n                        <div class="feature compact">\r\n                            <div class="head">\r\n                                <h3 class="h3">Предоставляется свободная практика на оборудовании DJ Центра</h3>\r\n                                <img src="/css/images/content/courses/moscow/add/cons4.jpg?h=500&amp;w=500&amp;hash=66B7DC3A354A88A1DEE485E60E607DFE74CA48A1" alt="5-port-lan-hub-n">\r\n                            </div>\r\n                            <div class="body">\r\n                                <p>Между занятиями каждому ученику предоставляется возможность отработать полученные навыки на занятиях с преподавателем на любом оборудовании DJ Центра</p>\r\n\r\n\r\n                            </div>\r\n                        </div>\r\n                    </li>\r\n                </ul>\r\n            </div>\r\n            <div class="viewmaster jogwheel" style="top: 0px;">\r\n                <div class="view">\r\n                    <div class="picture-wrap"><div class="picture active"><img src="https://pdj-ecom-cdn.azureedge.net/-/media/pioneerdj/images/features/mixer/djm-tour1/32-bit-da-convertor-ess.jpg?h=500&amp;w=500&amp;hash=33725A2A1A98EC1EE726352EC03F03D88EC264D4"></div><div class="picture"><img src="https://pdj-ecom-cdn.azureedge.net/-/media/pioneerdj/images/features/mixer/djm-tour1/digital-out.jpg?h=500&amp;w=500&amp;hash=9BB4FD4120B7E499EC107D2EF2A56DE0089B58F6"></div><div class="picture"><img src="https://pdj-ecom-cdn.azureedge.net/-/media/pioneerdj/images/features/mixer/djm-tour1/djm-fold-out-screen.jpg?h=500&amp;w=500&amp;hash=3C2744166B862D23598B6539C36CA827647690F6"></div><div class="picture"><img src="https://pdj-ecom-cdn.azureedge.net/-/media/pioneerdj/images/features/mixer/djm-tour1/5-port-lan-hub.jpg?h=500&amp;w=500&amp;hash=66B7DC3A354A88A1DEE485E60E607DFE74CA48A1"></div><div class="picture"><img src="https://pdj-ecom-cdn.azureedge.net/-/media/pioneerdj/images/features/mixer/djm-tour1/b2b-cueing-second-headphone.jpg?h=500&amp;w=500&amp;hash=3B2961C5035790AF0B77AF35B9ADA97FD8869AEE"></div><div class="picture"><img src="https://pdj-ecom-cdn.azureedge.net/-/media/pioneerdj/images/features/mixer/djm-tour1/xlr-aux-in.jpg?h=500&amp;w=500&amp;hash=0A741753076BA6EA946BAA93F56619E1D3A254C8"></div></div>\r\n                    <div class="mask"></div>\r\n                    <a href="#" class="controlbtn trigger__open-overlayer video-player hidden" data-title="" style=""><span class="ico icon-controlbtn-play"><span class="sr-only">Play</span></span></a>\r\n                </div>\r\n            </div>\r\n        </div>\r\n    </div>\r\n</div>', 6, NULL, 'nsk_features', NULL),
(129, NULL, '<div class="section section-product-features">\r\n    <div class="container">\r\n        <h2 class="h2">КЛЮЧЕВЫЕ ОСОБЕННОСТИ</h2>\r\n        <div class="row features-key">\r\n            <div class="list">\r\n                <ul>\r\n                    <li>\r\n                        <div class="feature compact active">\r\n                            <div class="head">\r\n                                <h3 class="h3">Только индивидуальное обучение</h3>\r\n                                <img src="/css/images/content/courses/moscow/add/cons1.jpg" alt="s">\r\n                            </div>\r\n                            <div class="body">\r\n                                <p>Занятия проходят только в формате тет-а-тет преподаватель-ученик</p>\r\n\r\n\r\n                            </div>\r\n                        </div>\r\n                    </li>\r\n                    <li>\r\n                        <div class="feature compact">\r\n                            <div class="head">\r\n                                <h3 class="h3">Курс состоит из 14 занятий по 2 часа</h3>\r\n                                <img src="/css/images/content/courses/moscow/add/cons2.jpg" alt="">\r\n                            </div>\r\n                            <div class="body">\r\n                                <p>Средняя продолжительность курса - 2 месяца (по 2-3 занятия в неделю) /при желании можно заниматься чаще/</p>\r\n\r\n\r\n                            </div>\r\n                        </div>\r\n                    </li>\r\n                    <li>\r\n                        <div class="feature compact">\r\n                            <div class="head">\r\n                                <h3 class="h3">Курс можно оплатить частями</h3>\r\n                                <img src="/css/images/content/courses/moscow/add/cons3.jpg" alt="">\r\n                            </div>\r\n                            <div class="body">\r\n                                <p>Курс можно оплачивать по половине стоимости: 50% стоимости в начале и 50% стоимости в середине</p>\r\n\r\n\r\n                            </div>\r\n                        </div>\r\n                    </li>\r\n                    <li>\r\n                        <div class="feature compact">\r\n                            <div class="head">\r\n                                <h3 class="h3">Предоставляется свободная практика на оборудовании DJ Центра</h3>\r\n                                <img src="/css/images/content/courses/moscow/add/cons4.jpg" alt="">\r\n                            </div>\r\n                            <div class="body">\r\n                                <p>Между занятиями каждому ученику предоставляется возможность отработать полученные навыки на занятиях с преподавателем на любом оборудовании DJ Центра</p>\r\n\r\n\r\n                            </div>\r\n                        </div>\r\n                    </li>\r\n                </ul>\r\n            </div>\r\n            <div class="viewmaster jogwheel" style="top: 0px;">\r\n                <div class="view">\r\n                    <div class="picture-wrap"></div>\r\n                    <div class="mask"></div>\r\n                    <a href="#" class="controlbtn trigger__open-overlayer video-player hidden" data-title="" style=""><span class="ico icon-controlbtn-play"><span class="sr-only">Play</span></span></a>\r\n                </div>\r\n            </div>\r\n        </div>\r\n    </div>\r\n</div>', 1, NULL, 'almati_features', NULL),
(130, NULL, '<div class="section section-product-info">\r\n    <div class="container">\r\n\r\n        <!--\r\n            Add class has-serie if this highlight block exists\r\n            Add class has-latest-update if this highlight block exists\r\n        -->\r\n\r\n        <div class="info has-serie has-latest-update row">\r\n\r\n            <div class="col usp">\r\n\r\n                <h2>БАЗОВЫЙ КУРС ВКЛЮЧАЕТ В СЕБЯ:</h2>\r\n                <div class="course-includes-block col-md-12">\r\n\r\n                    <ul>\r\n\r\n                        <li>Терминология и знакомство с оборудованием</li>\r\n\r\n                        <li>Предоставление оф. материалов по подготовке от компании Pioпeer DJ</li>\r\n\r\n                        <li>Предоставление музыки (при необходимости)</li>\r\n\r\n                        <li>Теоретическая основа, история, слецифика музыкальных стилей</li>\r\n\r\n                        <li>Техническое устройство и коммутация</li>\r\n\r\n                        <li>Самые популярные и актуальные виды и типы сведений</li>\r\n\r\n                        <li>Проработка (тренинг) слуха</li>\r\n\r\n                        <li>Фаст-миксинг (скоростные сведения)</li>\r\n\r\n                        <li>Сведение на СD / USB (rekordbox) / Wi-Fi (rekordbox)</li>\r\n\r\n                        <li>Разработка индивидуальности выступлений</li>\r\n\r\n                        <li>Проработка эффектов и преобразование звучания</li>\r\n\r\n                        <li>Сведение на 3-х проигрывателях</li>\r\n\r\n                        <li>Основы качественных выступлений (проработка дальнейших выступлений)</li>\r\n\r\n                        <li>Информация относительно источников покупки/скачивания, структуризации, специфики музыки</li>\r\n\r\n                        <li>Запись Promo материалов для дальнейшего продвижения</li>\r\n\r\n                        <li>Информация о клубной культуре города а так же возможности работы /практика и дальнейшее продвижение/</li>\r\n\r\n                    </ul>\r\n\r\n                    <p class="additional-cons">По окончании школы выдаётся сертификат от компании Pioneer DJ</p>\r\n\r\n                    <p class="additional-cons">Предоставляется практика в ночных заведениях</p>\r\n\r\n                    <h3 class="block-header">Стоимость: 59 000 тнг.</h3>\r\n                </div>\r\n            </div>\r\n        </div>\r\n\r\n    </div>\r\n</div>', 1, NULL, 'almati_desc', NULL),
(131, NULL, '<div class="section section-product-features">\r\n    <div class="container">\r\n        <h2 class="h2">КЛЮЧЕВЫЕ ОСОБЕННОСТИ</h2>\r\n        <div class="row features-key">\r\n            <div class="list">\r\n                <ul>\r\n                    <li>\r\n                        <div class="feature compact active">\r\n                            <div class="head">\r\n                                <h3 class="h3">Только индивидуальное обучение</h3>\r\n                                <img src="/css/images/content/courses/moscow/add/cons1.jpg" alt="32-bit-da-convertor-ess">\r\n                            </div>\r\n                            <div class="body">\r\n                                <p>Занятия проходят только в формате тет-а-тет преподаватель-ученик</p>\r\n\r\n\r\n                            </div>\r\n                        </div>\r\n                    </li>\r\n                    <li>\r\n                        <div class="feature compact">\r\n                            <div class="head">\r\n                                <h3 class="h3">Курс состоит из 14 занятий по 2 часа</h3>\r\n                                <img src="/css/images/content/courses/moscow/add/cons2.jpg?h=500&amp;w=500&amp;hash=9BB4FD4120B7E499EC107D2EF2A56DE0089B58F6" alt="digital-out-n">\r\n                            </div>\r\n                            <div class="body">\r\n                                <p>Средняя продолжительность курса - 2 месяца (по 2-3 занятия в неделю) /при желании можно заниматься чаще/</p>\r\n\r\n\r\n                            </div>\r\n                        </div>\r\n                    </li>\r\n                    <li>\r\n                        <div class="feature compact">\r\n                            <div class="head">\r\n                                <h3 class="h3">Курс можно оплатить частями</h3>\r\n                                <img src="/css/images/content/courses/moscow/add/cons3.jpg?h=500&amp;w=500&amp;hash=3C2744166B862D23598B6539C36CA827647690F6" alt="djm-fold-out-screen-n">\r\n                            </div>\r\n                            <div class="body">\r\n                                <p>Курс можно оплачивать по половине стоимости: 50% стоимости в начале и 50% стоимости в середине</p>\r\n\r\n\r\n                            </div>\r\n                        </div>\r\n                    </li>\r\n                    <li>\r\n                        <div class="feature compact">\r\n                            <div class="head">\r\n                                <h3 class="h3">Предоставляется свободная практика на оборудовании DJ Центра</h3>\r\n                                <img src="/css/images/content/courses/moscow/add/cons4.jpg?h=500&amp;w=500&amp;hash=66B7DC3A354A88A1DEE485E60E607DFE74CA48A1" alt="5-port-lan-hub-n">\r\n                            </div>\r\n                            <div class="body">\r\n                                <p>Между занятиями каждому ученику предоставляется возможность отработать полученные навыки на занятиях с преподавателем на любом оборудовании DJ Центра</p>\r\n\r\n\r\n                            </div>\r\n                        </div>\r\n                    </li>\r\n                </ul>\r\n            </div>\r\n            <div class="viewmaster jogwheel" style="top: 0px;">\r\n                <div class="view">\r\n                    <div class="picture-wrap"><div class="picture active"><img src="https://pdj-ecom-cdn.azureedge.net/-/media/pioneerdj/images/features/mixer/djm-tour1/32-bit-da-convertor-ess.jpg?h=500&amp;w=500&amp;hash=33725A2A1A98EC1EE726352EC03F03D88EC264D4"></div><div class="picture"><img src="https://pdj-ecom-cdn.azureedge.net/-/media/pioneerdj/images/features/mixer/djm-tour1/digital-out.jpg?h=500&amp;w=500&amp;hash=9BB4FD4120B7E499EC107D2EF2A56DE0089B58F6"></div><div class="picture"><img src="https://pdj-ecom-cdn.azureedge.net/-/media/pioneerdj/images/features/mixer/djm-tour1/djm-fold-out-screen.jpg?h=500&amp;w=500&amp;hash=3C2744166B862D23598B6539C36CA827647690F6"></div><div class="picture"><img src="https://pdj-ecom-cdn.azureedge.net/-/media/pioneerdj/images/features/mixer/djm-tour1/5-port-lan-hub.jpg?h=500&amp;w=500&amp;hash=66B7DC3A354A88A1DEE485E60E607DFE74CA48A1"></div><div class="picture"><img src="https://pdj-ecom-cdn.azureedge.net/-/media/pioneerdj/images/features/mixer/djm-tour1/b2b-cueing-second-headphone.jpg?h=500&amp;w=500&amp;hash=3B2961C5035790AF0B77AF35B9ADA97FD8869AEE"></div><div class="picture"><img src="https://pdj-ecom-cdn.azureedge.net/-/media/pioneerdj/images/features/mixer/djm-tour1/xlr-aux-in.jpg?h=500&amp;w=500&amp;hash=0A741753076BA6EA946BAA93F56619E1D3A254C8"></div></div>\r\n                    <div class="mask"></div>\r\n                    <a href="#" class="controlbtn trigger__open-overlayer video-player hidden" data-title="" style=""><span class="ico icon-controlbtn-play"><span class="sr-only">Play</span></span></a>\r\n                </div>\r\n            </div>\r\n        </div>\r\n    </div>\r\n</div>', 2, NULL, 'almati_features', NULL),
(132, NULL, '<div class="section section-product-info">\r\n    <div class="container">\r\n\r\n        <!--\r\n            Add class has-serie if this highlight block exists\r\n            Add class has-latest-update if this highlight block exists\r\n        -->\r\n\r\n        <div class="info has-serie has-latest-update row">\r\n\r\n            <div class="col usp">\r\n\r\n                <h2>PRO курс включает в себя:</h2>\r\n                <div class="course-includes-block col-md-12">\r\n\r\n                    <ul>\r\n\r\n                        <li>Тестирование исходных навыков диджея (от этой точки будет считаться прирост навыков в курсе)</li>\r\n\r\n                        <li>Предоставление официальных материалов по подготовке от компании Pioneer DJ</li>\r\n\r\n                        <li>Предоставление музыки (при необходимости)</li>\r\n\r\n                        <li>Техническое особенности и хитрости оборудования</li>\r\n\r\n                        <li>Техническое устройство и коммутация</li>\r\n\r\n                        <li>Самые популярные и сложные виды сведений</li>\r\n\r\n                        <li>Максимальная проработка (тренинг) слуха</li>\r\n\r\n                        <li>Фаст-миксинг (скоростные сведения)</li>\r\n\r\n                        <li>Сведение на СD / USB (rekordbox) / Wi-Fi (rekordbox)</li>\r\n\r\n                        <li>Сведение на Vinyl (Original / rekordbox dj / Traktor / Serato)</li>\r\n\r\n                        <li>Сведение на Midi (rekordbox dj / Taktor / Serato)</li>\r\n\r\n                        <li>Углубленная проработка применения эффектов</li>\r\n\r\n                        <li>Разработка индивидуального стиля выступлений, поиск своих фишек в оформлении звучания микса</li>\r\n\r\n                        <li>Создание "ремиксов" в реальном времени</li>\r\n\r\n                        <li>Сведение с эффектами (применение до 3х эффектов одновременно в одном сведении)</li>\r\n\r\n                        <li>Профессиональное сведение на трёх и четырёх проигрывателях</li>\r\n\r\n                        <li>Основы качественных выступлений /проработка дальнейших выступлений/</li>\r\n\r\n                        <li>Информация по источникам покупки / скачивания, структуризации, специфики музыки</li>\r\n\r\n                        <li>Запись Promo материалов для дальнейшего продвижения (максимальное продвижение)</li>\r\n\r\n                        <li>Информация о клубной культуре города и возможности работы /практика и дальнейшее продвижение/</li>\r\n\r\n                    </ul>\r\n\r\n                    <p class="additional-cons">По окончании школы выдаётся сертификат от компании Pioneer DJ</p>\r\n\r\n                    <p class="additional-cons">По окончании PRO курса записывается Promo-Video Mix на студии Pioneer DJ TV</p>\r\n\r\n                    <h3 class="block-header">Стоимость: 68 000 тнг.</h3>\r\n                </div>\r\n            </div>\r\n        </div>\r\n\r\n    </div>\r\n</div>', 2, NULL, 'almati_desc', NULL),
(133, NULL, '<div class="section section-product-features">\r\n    <div class="container">\r\n        <h2 class="h2">КЛЮЧЕВЫЕ ОСОБЕННОСТИ</h2>\r\n        <div class="row features-key">\r\n            <div class="list">\r\n                <ul>\r\n                    <li>\r\n                        <div class="feature compact active">\r\n                            <div class="head">\r\n                                <h3 class="h3">Только индивидуальное обучение</h3>\r\n                                <img src="/css/images/content/courses/moscow/add/cons1.jpg" alt="32-bit-da-convertor-ess">\r\n                            </div>\r\n                            <div class="body">\r\n                                <p>Занятия проходят только в формате тет-а-тет преподаватель-ученик</p>\r\n\r\n\r\n                            </div>\r\n                        </div>\r\n                    </li>\r\n                    <li>\r\n                        <div class="feature compact">\r\n                            <div class="head">\r\n                                <h3 class="h3">Курс состоит из 10 занятий по 1 часа</h3>\r\n                                <img src="/css/images/content/courses/moscow/add/cons2.jpg?h=500&amp;w=500&amp;hash=9BB4FD4120B7E499EC107D2EF2A56DE0089B58F6" alt="digital-out-n">\r\n                            </div>\r\n                            <div class="body">\r\n                                <p>Средняя продолжительность курса - 1 месяц (по 2-3 занятия в неделю) /при желании можно заниматься чаще/</p>\r\n\r\n\r\n                            </div>\r\n                        </div>\r\n                    </li>\r\n                    <li>\r\n                        <div class="feature compact">\r\n                            <div class="head">\r\n                                <h3 class="h3">Курс можно оплатить частями</h3>\r\n                                <img src="/css/images/content/courses/moscow/add/cons3.jpg?h=500&amp;w=500&amp;hash=3C2744166B862D23598B6539C36CA827647690F6" alt="djm-fold-out-screen-n">\r\n                            </div>\r\n                            <div class="body">\r\n                                <p>Курс можно оплачивать по половине стоимости: 50% стоимости в начале и 50% стоимости в середине</p>\r\n\r\n\r\n                            </div>\r\n                        </div>\r\n                    </li>\r\n                    <li>\r\n                        <div class="feature compact">\r\n                            <div class="head">\r\n                                <h3 class="h3">Предоставляется свободная практика на оборудовании DJ Центра</h3>\r\n                                <img src="/css/images/content/courses/moscow/add/cons4.jpg?h=500&amp;w=500&amp;hash=66B7DC3A354A88A1DEE485E60E607DFE74CA48A1" alt="5-port-lan-hub-n">\r\n                            </div>\r\n                            <div class="body">\r\n                                <p>Между занятиями каждому ученику предоставляется возможность отработать полученные навыки на занятиях с преподавателем на любом оборудовании DJ Центра</p>\r\n\r\n\r\n                            </div>\r\n                        </div>\r\n                    </li>\r\n                </ul>\r\n            </div>\r\n            <div class="viewmaster jogwheel" style="top: 0px;">\r\n                <div class="view">\r\n                    <div class="picture-wrap"><div class="picture active"><img src="https://pdj-ecom-cdn.azureedge.net/-/media/pioneerdj/images/features/mixer/djm-tour1/32-bit-da-convertor-ess.jpg?h=500&amp;w=500&amp;hash=33725A2A1A98EC1EE726352EC03F03D88EC264D4"></div><div class="picture"><img src="https://pdj-ecom-cdn.azureedge.net/-/media/pioneerdj/images/features/mixer/djm-tour1/digital-out.jpg?h=500&amp;w=500&amp;hash=9BB4FD4120B7E499EC107D2EF2A56DE0089B58F6"></div><div class="picture"><img src="https://pdj-ecom-cdn.azureedge.net/-/media/pioneerdj/images/features/mixer/djm-tour1/djm-fold-out-screen.jpg?h=500&amp;w=500&amp;hash=3C2744166B862D23598B6539C36CA827647690F6"></div><div class="picture"><img src="https://pdj-ecom-cdn.azureedge.net/-/media/pioneerdj/images/features/mixer/djm-tour1/5-port-lan-hub.jpg?h=500&amp;w=500&amp;hash=66B7DC3A354A88A1DEE485E60E607DFE74CA48A1"></div><div class="picture"><img src="https://pdj-ecom-cdn.azureedge.net/-/media/pioneerdj/images/features/mixer/djm-tour1/b2b-cueing-second-headphone.jpg?h=500&amp;w=500&amp;hash=3B2961C5035790AF0B77AF35B9ADA97FD8869AEE"></div><div class="picture"><img src="https://pdj-ecom-cdn.azureedge.net/-/media/pioneerdj/images/features/mixer/djm-tour1/xlr-aux-in.jpg?h=500&amp;w=500&amp;hash=0A741753076BA6EA946BAA93F56619E1D3A254C8"></div></div>\r\n                    <div class="mask"></div>\r\n                    <a href="#" class="controlbtn trigger__open-overlayer video-player hidden" data-title="" style=""><span class="ico icon-controlbtn-play"><span class="sr-only">Play</span></span></a>\r\n                </div>\r\n            </div>\r\n        </div>\r\n    </div>\r\n</div>', 3, NULL, 'almati_features', NULL),
(134, NULL, '<div class="section section-product-info">\r\n    <div class="container">\r\n\r\n        <!--\r\n            Add class has-serie if this highlight block exists\r\n            Add class has-latest-update if this highlight block exists\r\n        -->\r\n\r\n        <div class="info has-serie has-latest-update row">\r\n\r\n            <div class="col usp">\r\n\r\n                <h2>Scratch DJ курс включает в себя:</h2>\r\n                <div class="course-includes-block col-md-12">\r\n\r\n                    <ul>\r\n\r\n                        <li>Основы построения музыки. Основополагающие принципы работы скретч диджея. Понятия ритма и темпа.</li>\r\n\r\n                        <li>Знакомство с современной DJ-аппаратурой. Обзор функций скретч DJ комплекта. Простейшие скретч техники.</li>\r\n\r\n                        <li>Основные принципы и техники сведения и скретча. Специфика инкорпорирования скретч-составляющих в миксе. Работа со скоростью и эквалайзером. Характерные особенности сведения на виниле с применением скретча. Отличительные черты структуры скретч-сета. Построение показательных программ.</li>\r\n\r\n                        <li>Отработка практических навыков сведения и скретча (продвинутый уровень) на виниле.</li>\r\n\r\n                        <li>Психология танцпола. Индивидуальность и креативный подход в работе скретч диджея. Продвинутые техники скретча. Основы бит-джаглинга. Закрепление практических навыков скретча. Изображение скретча в письменной форме.</li>\r\n\r\n                        <li>Самопродвижение, создание собственного сценического образа. Букинг и гастрольная деятельность диджея. Подготовка к соревнованиям, повышение эффективности самосовершенствования.</li>\r\n\r\n                    </ul>\r\n\r\n                    <p class="additional-cons">По окончании школы выдаётся сертификат от компании Pioneer DJ</p>\r\n\r\n                    <p class="additional-cons">Предоставляется практика в ночных заведениях</p>\r\n\r\n                    <h3 class="block-header">Стоимость: 35 000 тнг.</h3>\r\n                </div>\r\n            </div>\r\n        </div>\r\n\r\n    </div>\r\n</div>', 3, NULL, 'almati_desc', NULL),
(135, NULL, '<div class="section section-product-info">\r\n    <div class="container">\r\n\r\n        <!--\r\n            Add class has-serie if this highlight block exists\r\n            Add class has-latest-update if this highlight block exists\r\n        -->\r\n\r\n        <div class="info has-serie has-latest-update row">\r\n\r\n            <div class="col usp">\r\n\r\n                <h2>KIDS КУРС ВКЛЮЧАЕТ В СЕБЯ:</h2>\r\n                <div class="course-includes-block col-md-12">\r\n\r\n                    <ul>\r\n\r\n                        <li>Терминология и знакомство с оборудованием</li>\r\n\r\n                        <li>Предоставление официальных материалов по подготовке от компании Pioneer DJ</li>\r\n\r\n                        <li>Предоставление музыки (при необходимости)</li>\r\n\r\n                        <li>Теоретическая основа, история, специфика музыкальных стилей</li>\r\n\r\n                        <li>Техническое устройство и коммутация</li>\r\n\r\n                        <li>Самые популярные и актуальные виды и типы сведений</li>\r\n\r\n                        <li>Проработка  и тренинг слуха</li>\r\n\r\n                        <li>Фаст-миксинг (скоростные сведения)</li>\r\n\r\n                        <li>Сведение на СD / USB (rekordbox) / Wi-Fi (rekordbox)</li>\r\n\r\n                        <li>Проработка эффектов и преобразование звучания</li>\r\n\r\n                        <li>Основы качественных выступлений (проработка дальнейших выступлений)</li>\r\n\r\n                        <li>Информация по источникам покупки / скачивания, структуризации, специфики музыки</li>\r\n\r\n                        <li>Запись Promo-материалов для дальнейшего продвижения</li>\r\n\r\n                        <li>Информация о клубной культуре города /практика и дальнейшее продвижение с учётом возраста/</li>\r\n\r\n                    </ul>\r\n\r\n                    <p class="additional-cons">По окончании школы выдаётся сертификат от компании Pioneer DJ</p>\r\n\r\n                    <h3 class="block-header">Стоимость: 55 000 тнг.</h3>\r\n                </div>\r\n            </div>\r\n        </div>\r\n\r\n    </div>\r\n</div>', 4, NULL, 'almati_desc', NULL),
(136, NULL, '<div class="section section-product-features">\r\n    <div class="container">\r\n        <h2 class="h2">КЛЮЧЕВЫЕ ОСОБЕННОСТИ</h2>\r\n        <div class="row features-key">\r\n            <div class="list">\r\n                <ul>\r\n                    <li>\r\n                        <div class="feature compact active">\r\n                            <div class="head">\r\n                                <h3 class="h3">Только индивидуальное обучение</h3>\r\n                                <img src="/css/images/content/courses/moscow/add/cons1.jpg" alt="32-bit-da-convertor-ess">\r\n                            </div>\r\n                            <div class="body">\r\n                                <p>Занятия проходят только в формате тет-а-тет преподаватель-ученик</p>\r\n\r\n\r\n                            </div>\r\n                        </div>\r\n                    </li>\r\n                    <li>\r\n                        <div class="feature compact">\r\n                            <div class="head">\r\n                                <h3 class="h3">Курс состоит из 14 занятий по 2 часа</h3>\r\n                                <img src="/css/images/content/courses/moscow/add/cons2.jpg?h=500&amp;w=500&amp;hash=9BB4FD4120B7E499EC107D2EF2A56DE0089B58F6" alt="digital-out-n">\r\n                            </div>\r\n                            <div class="body">\r\n                                <p>Средняя продолжительность курса - 2 месяца (по 2-3 занятия в неделю) /при желании можно заниматься чаще/</p>\r\n\r\n\r\n                            </div>\r\n                        </div>\r\n                    </li>\r\n                    <li>\r\n                        <div class="feature compact">\r\n                            <div class="head">\r\n                                <h3 class="h3">Курс можно оплатить частями</h3>\r\n                                <img src="/css/images/content/courses/moscow/add/cons3.jpg?h=500&amp;w=500&amp;hash=3C2744166B862D23598B6539C36CA827647690F6" alt="djm-fold-out-screen-n">\r\n                            </div>\r\n                            <div class="body">\r\n                                <p>Курс можно оплачивать по половине стоимости: 50% стоимости в начале и 50% стоимости в середине</p>\r\n\r\n\r\n                            </div>\r\n                        </div>\r\n                    </li>\r\n                    <li>\r\n                        <div class="feature compact">\r\n                            <div class="head">\r\n                                <h3 class="h3">Предоставляется свободная практика на оборудовании DJ Центра</h3>\r\n                                <img src="/css/images/content/courses/moscow/add/cons4.jpg?h=500&amp;w=500&amp;hash=66B7DC3A354A88A1DEE485E60E607DFE74CA48A1" alt="5-port-lan-hub-n">\r\n                            </div>\r\n                            <div class="body">\r\n                                <p>Между занятиями каждому ученику предоставляется возможность отработать полученные навыки на занятиях с преподавателем на любом оборудовании DJ Центра</p>\r\n\r\n\r\n                            </div>\r\n                        </div>\r\n                    </li>\r\n                </ul>\r\n            </div>\r\n            <div class="viewmaster jogwheel" style="top: 0px;">\r\n                <div class="view">\r\n                    <div class="picture-wrap"><div class="picture active"><img src="https://pdj-ecom-cdn.azureedge.net/-/media/pioneerdj/images/features/mixer/djm-tour1/32-bit-da-convertor-ess.jpg?h=500&amp;w=500&amp;hash=33725A2A1A98EC1EE726352EC03F03D88EC264D4"></div><div class="picture"><img src="https://pdj-ecom-cdn.azureedge.net/-/media/pioneerdj/images/features/mixer/djm-tour1/digital-out.jpg?h=500&amp;w=500&amp;hash=9BB4FD4120B7E499EC107D2EF2A56DE0089B58F6"></div><div class="picture"><img src="https://pdj-ecom-cdn.azureedge.net/-/media/pioneerdj/images/features/mixer/djm-tour1/djm-fold-out-screen.jpg?h=500&amp;w=500&amp;hash=3C2744166B862D23598B6539C36CA827647690F6"></div><div class="picture"><img src="https://pdj-ecom-cdn.azureedge.net/-/media/pioneerdj/images/features/mixer/djm-tour1/5-port-lan-hub.jpg?h=500&amp;w=500&amp;hash=66B7DC3A354A88A1DEE485E60E607DFE74CA48A1"></div><div class="picture"><img src="https://pdj-ecom-cdn.azureedge.net/-/media/pioneerdj/images/features/mixer/djm-tour1/b2b-cueing-second-headphone.jpg?h=500&amp;w=500&amp;hash=3B2961C5035790AF0B77AF35B9ADA97FD8869AEE"></div><div class="picture"><img src="https://pdj-ecom-cdn.azureedge.net/-/media/pioneerdj/images/features/mixer/djm-tour1/xlr-aux-in.jpg?h=500&amp;w=500&amp;hash=0A741753076BA6EA946BAA93F56619E1D3A254C8"></div></div>\r\n                    <div class="mask"></div>\r\n                    <a href="#" class="controlbtn trigger__open-overlayer video-player hidden" data-title="" style=""><span class="ico icon-controlbtn-play"><span class="sr-only">Play</span></span></a>\r\n                </div>\r\n            </div>\r\n        </div>\r\n    </div>\r\n</div>', 4, NULL, 'almati_features', NULL),
(137, NULL, '<div class="section section-product-info">\r\n    <div class="container">\r\n\r\n        <!--\r\n            Add class has-serie if this highlight block exists\r\n            Add class has-latest-update if this highlight block exists\r\n        -->\r\n\r\n        <div class="info has-serie has-latest-update row">\r\n\r\n            <div class="col usp">\r\n\r\n                <h2>MIDI КУРС ВКЛЮЧАЕТ В СЕБЯ:</h2>\r\n                <div class="course-includes-block col-md-12">\r\n\r\n                    <ul>\r\n\r\n                        <li>Терминология и знакомство с оборудованием</li>\r\n\r\n                        <li>Предоставление официальных материалов по подготовке от компании Pioneer DJ</li>\r\n\r\n                        <li>Предоставление музыки (при необходимости)</li>\r\n\r\n                        <li>Теоретическая основа, история, специфика музыкальных стилей</li>\r\n\r\n                        <li>Техническое устройство и коммутация</li>\r\n\r\n                        <li>Проработка  и тренинг слуха</li>\r\n\r\n                        <li>Специфика работы на Midi-контроллерах</li>\r\n\r\n                        <li>Работа в rekordbox dj</li>\r\n\r\n                        <li>Работа в Serato DJ</li>\r\n\r\n                        <li>Работа в Taktor Pro 2</li>\r\n\r\n                        <li>Основы качественных выступлений (проработка дальнейших выступлений)</li>\r\n\r\n                        <li>Информация по источникам покупки / скачивания, структуризации, специфики музыки</li>\r\n\r\n                        <li>Запись Promo-материалов для дальнейшего продвижения</li>\r\n\r\n                    </ul>\r\n\r\n                    <p class="additional-cons">По окончании школы выдаётся сертификат от компании Pioneer DJ</p>\r\n\r\n                    <h3 class="block-header">Стоимость: 35 000 тнг.</h3>\r\n                </div>\r\n            </div>\r\n        </div>\r\n\r\n    </div>\r\n</div>', 5, NULL, 'almati_desc', NULL),
(138, NULL, '<div class="section section-product-features">\r\n    <div class="container">\r\n        <h2 class="h2">КЛЮЧЕВЫЕ ОСОБЕННОСТИ</h2>\r\n        <div class="row features-key">\r\n            <div class="list">\r\n                <ul>\r\n                    <li>\r\n                        <div class="feature compact active">\r\n                            <div class="head">\r\n                                <h3 class="h3">Только индивидуальное обучение</h3>\r\n                                <img src="/css/images/content/courses/moscow/add/cons1.jpg" alt="32-bit-da-convertor-ess">\r\n                            </div>\r\n                            <div class="body">\r\n                                <p>Занятия проходят только в формате тет-а-тет преподаватель-ученик</p>\r\n\r\n\r\n                            </div>\r\n                        </div>\r\n                    </li>\r\n                    <li>\r\n                        <div class="feature compact">\r\n                            <div class="head">\r\n                                <h3 class="h3">Курс состоит из 5 занятий по 2 часа</h3>\r\n                                <img src="/css/images/content/courses/moscow/add/cons2.jpg?h=500&amp;w=500&amp;hash=9BB4FD4120B7E499EC107D2EF2A56DE0089B58F6" alt="digital-out-n">\r\n                            </div>\r\n                            <div class="body">\r\n                                <p>Средняя продолжительность курса - 1 месяца (по 2-3 занятия в неделю) /при желании можно заниматься чаще/</p>\r\n\r\n\r\n                            </div>\r\n                        </div>\r\n                    </li>\r\n                    <li>\r\n                        <div class="feature compact">\r\n                            <div class="head">\r\n                                <h3 class="h3">Курс можно оплатить частями</h3>\r\n                                <img src="/css/images/content/courses/moscow/add/cons3.jpg?h=500&amp;w=500&amp;hash=3C2744166B862D23598B6539C36CA827647690F6" alt="djm-fold-out-screen-n">\r\n                            </div>\r\n                            <div class="body">\r\n                                <p>Курс можно оплачивать по половине стоимости: 50% стоимости в начале и 50% стоимости в середине</p>\r\n\r\n\r\n                            </div>\r\n                        </div>\r\n                    </li>\r\n                    <li>\r\n                        <div class="feature compact">\r\n                            <div class="head">\r\n                                <h3 class="h3">Предоставляется свободная практика на оборудовании DJ Центра</h3>\r\n                                <img src="/css/images/content/courses/moscow/add/cons4.jpg?h=500&amp;w=500&amp;hash=66B7DC3A354A88A1DEE485E60E607DFE74CA48A1" alt="5-port-lan-hub-n">\r\n                            </div>\r\n                            <div class="body">\r\n                                <p>Между занятиями каждому ученику предоставляется возможность отработать полученные навыки на занятиях с преподавателем на любом оборудовании DJ Центра</p>\r\n\r\n\r\n                            </div>\r\n                        </div>\r\n                    </li>\r\n                </ul>\r\n            </div>\r\n            <div class="viewmaster jogwheel" style="top: 0px;">\r\n                <div class="view">\r\n                    <div class="picture-wrap"><div class="picture active"><img src="https://pdj-ecom-cdn.azureedge.net/-/media/pioneerdj/images/features/mixer/djm-tour1/32-bit-da-convertor-ess.jpg?h=500&amp;w=500&amp;hash=33725A2A1A98EC1EE726352EC03F03D88EC264D4"></div><div class="picture"><img src="https://pdj-ecom-cdn.azureedge.net/-/media/pioneerdj/images/features/mixer/djm-tour1/digital-out.jpg?h=500&amp;w=500&amp;hash=9BB4FD4120B7E499EC107D2EF2A56DE0089B58F6"></div><div class="picture"><img src="https://pdj-ecom-cdn.azureedge.net/-/media/pioneerdj/images/features/mixer/djm-tour1/djm-fold-out-screen.jpg?h=500&amp;w=500&amp;hash=3C2744166B862D23598B6539C36CA827647690F6"></div><div class="picture"><img src="https://pdj-ecom-cdn.azureedge.net/-/media/pioneerdj/images/features/mixer/djm-tour1/5-port-lan-hub.jpg?h=500&amp;w=500&amp;hash=66B7DC3A354A88A1DEE485E60E607DFE74CA48A1"></div><div class="picture"><img src="https://pdj-ecom-cdn.azureedge.net/-/media/pioneerdj/images/features/mixer/djm-tour1/b2b-cueing-second-headphone.jpg?h=500&amp;w=500&amp;hash=3B2961C5035790AF0B77AF35B9ADA97FD8869AEE"></div><div class="picture"><img src="https://pdj-ecom-cdn.azureedge.net/-/media/pioneerdj/images/features/mixer/djm-tour1/xlr-aux-in.jpg?h=500&amp;w=500&amp;hash=0A741753076BA6EA946BAA93F56619E1D3A254C8"></div></div>\r\n                    <div class="mask"></div>\r\n                    <a href="#" class="controlbtn trigger__open-overlayer video-player hidden" data-title="" style=""><span class="ico icon-controlbtn-play"><span class="sr-only">Play</span></span></a>\r\n                </div>\r\n            </div>\r\n        </div>\r\n    </div>\r\n</div>', 5, NULL, 'almati_features', NULL),
(139, NULL, '<div class="section section-product-features">\r\n    <div class="container">\r\n        <h2 class="h2">КЛЮЧЕВЫЕ ОСОБЕННОСТИ</h2>\r\n        <div class="row features-key">\r\n            <div class="list">\r\n                <ul>\r\n                    <li>\r\n                        <div class="feature compact active">\r\n                            <div class="head">\r\n                                <h3 class="h3">Только индивидуальное обучение</h3>\r\n                                <img src="/css/images/content/courses/moscow/add/cons1.jpg" alt="32-bit-da-convertor-ess">\r\n                            </div>\r\n                            <div class="body">\r\n                                <p>Занятия проходят только в формате тет-а-тет преподаватель-ученик</p>\r\n\r\n\r\n                            </div>\r\n                        </div>\r\n                    </li>\r\n                    <li>\r\n                        <div class="feature compact">\r\n                            <div class="head">\r\n                                <h3 class="h3">Курс состоит из 5 занятий по 2 часа</h3>\r\n                                <img src="/css/images/content/courses/moscow/add/cons2.jpg?h=500&amp;w=500&amp;hash=9BB4FD4120B7E499EC107D2EF2A56DE0089B58F6" alt="digital-out-n">\r\n                            </div>\r\n                            <div class="body">\r\n                                <p>Средняя продолжительность курса - 1 месяца (по 2-3 занятия в неделю) /при желании можно заниматься чаще/</p>\r\n\r\n\r\n                            </div>\r\n                        </div>\r\n                    </li>\r\n                    <li>\r\n                        <div class="feature compact">\r\n                            <div class="head">\r\n                                <h3 class="h3">Курс можно оплатить частями</h3>\r\n                                <img src="/css/images/content/courses/moscow/add/cons3.jpg?h=500&amp;w=500&amp;hash=3C2744166B862D23598B6539C36CA827647690F6" alt="djm-fold-out-screen-n">\r\n                            </div>\r\n                            <div class="body">\r\n                                <p>Курс можно оплачивать по половине стоимости: 50% стоимости в начале и 50% стоимости в середине</p>\r\n\r\n\r\n                            </div>\r\n                        </div>\r\n                    </li>\r\n                    <li>\r\n                        <div class="feature compact">\r\n                            <div class="head">\r\n                                <h3 class="h3">Предоставляется свободная практика на оборудовании DJ Центра</h3>\r\n                                <img src="/css/images/content/courses/moscow/add/cons4.jpg?h=500&amp;w=500&amp;hash=66B7DC3A354A88A1DEE485E60E607DFE74CA48A1" alt="5-port-lan-hub-n">\r\n                            </div>\r\n                            <div class="body">\r\n                                <p>Между занятиями каждому ученику предоставляется возможность отработать полученные навыки на занятиях с преподавателем на любом оборудовании DJ Центра</p>\r\n\r\n\r\n                            </div>\r\n                        </div>\r\n                    </li>\r\n                </ul>\r\n            </div>\r\n            <div class="viewmaster jogwheel" style="top: 0px;">\r\n                <div class="view">\r\n                    <div class="picture-wrap"><div class="picture active"><img src="https://pdj-ecom-cdn.azureedge.net/-/media/pioneerdj/images/features/mixer/djm-tour1/32-bit-da-convertor-ess.jpg?h=500&amp;w=500&amp;hash=33725A2A1A98EC1EE726352EC03F03D88EC264D4"></div><div class="picture"><img src="https://pdj-ecom-cdn.azureedge.net/-/media/pioneerdj/images/features/mixer/djm-tour1/digital-out.jpg?h=500&amp;w=500&amp;hash=9BB4FD4120B7E499EC107D2EF2A56DE0089B58F6"></div><div class="picture"><img src="https://pdj-ecom-cdn.azureedge.net/-/media/pioneerdj/images/features/mixer/djm-tour1/djm-fold-out-screen.jpg?h=500&amp;w=500&amp;hash=3C2744166B862D23598B6539C36CA827647690F6"></div><div class="picture"><img src="https://pdj-ecom-cdn.azureedge.net/-/media/pioneerdj/images/features/mixer/djm-tour1/5-port-lan-hub.jpg?h=500&amp;w=500&amp;hash=66B7DC3A354A88A1DEE485E60E607DFE74CA48A1"></div><div class="picture"><img src="https://pdj-ecom-cdn.azureedge.net/-/media/pioneerdj/images/features/mixer/djm-tour1/b2b-cueing-second-headphone.jpg?h=500&amp;w=500&amp;hash=3B2961C5035790AF0B77AF35B9ADA97FD8869AEE"></div><div class="picture"><img src="https://pdj-ecom-cdn.azureedge.net/-/media/pioneerdj/images/features/mixer/djm-tour1/xlr-aux-in.jpg?h=500&amp;w=500&amp;hash=0A741753076BA6EA946BAA93F56619E1D3A254C8"></div></div>\r\n                    <div class="mask"></div>\r\n                    <a href="#" class="controlbtn trigger__open-overlayer video-player hidden" data-title="" style=""><span class="ico icon-controlbtn-play"><span class="sr-only">Play</span></span></a>\r\n                </div>\r\n            </div>\r\n        </div>\r\n    </div>\r\n</div>', 6, NULL, 'almati_features', NULL),
(140, NULL, '<div class="section section-product-info">\r\n    <div class="container">\r\n\r\n        <!--\r\n            Add class has-serie if this highlight block exists\r\n            Add class has-latest-update if this highlight block exists\r\n        -->\r\n\r\n        <div class="info has-serie has-latest-update row">\r\n\r\n            <div class="col usp">\r\n\r\n                <h2>Vinyl курс включает в себя:</h2>\r\n                <div class="course-includes-block col-md-12">\r\n\r\n                    <ul>\r\n\r\n                        <li>Терминология и знакомство с оборудованием</li>\r\n\r\n                        <li>Предоставление официальных материалов по подготовке от компании Pioneer DJ</li>\r\n\r\n                        <li>Предоставление музыки (при необходимости)</li>\r\n\r\n                        <li>Теоретическая основа, история, специфика музыкальных стилей</li>\r\n\r\n                        <li>Техническое устройство и коммутация</li>\r\n\r\n                        <li>Проработка  и тренинг слуха</li>\r\n\r\n                        <li>Специфика работы на Vinyl (Оригинальные пластинки)</li>\r\n\r\n                        <li>Сведение на Vinyl Rekordbox DJ / Taktor Scratch Pro / Serato DJ (Timecode пластинки)</li>\r\n\r\n                        <li>Основы качественных выступлений (проработка дальнейших выступлений)</li>\r\n\r\n                        <li>Информация по источникам покупки, структуризации, специфики музыки</li>\r\n\r\n                        <li>Запись Promo-материалов для дальнейшего продвижения</li>\r\n\r\n                    </ul>\r\n\r\n                    <p class="additional-cons">По окончании школы выдаётся сертификат от компании Pioneer DJ</p>\r\n\r\n                    <h3 class="block-header">Стоимость: 35 000 тнг.</h3>\r\n                </div>\r\n            </div>\r\n        </div>\r\n\r\n    </div>\r\n</div>', 6, NULL, 'almati_desc', NULL),
(141, NULL, 'moscow', 71, NULL, 'city', NULL),
(142, NULL, 'moscow', 72, NULL, 'city', NULL),
(143, NULL, 'almati', 73, NULL, 'city', NULL);
INSERT INTO `field_value` (`id`, `field_id`, `value`, `element_id`, `iblock`, `code`, `input_type`) VALUES
(144, NULL, 'moscow', 74, NULL, 'city', NULL),
(145, NULL, 'moscow', 75, NULL, 'city', NULL),
(146, NULL, 'moscow', 76, NULL, 'city', NULL),
(147, NULL, 'moscow', 77, NULL, 'city', NULL),
(148, NULL, 'moscow', 78, NULL, 'city', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `files`
--

CREATE TABLE IF NOT EXISTS `files` (
  `id` int(11) NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `chain_type` varchar(255) DEFAULT NULL,
  `chain_id` varchar(255) DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `server_name` varchar(255) DEFAULT NULL,
  `hits` varchar(255) DEFAULT NULL,
  `content_id` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=1091 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `files`
--

INSERT INTO `files` (`id`, `type`, `user_id`, `chain_type`, `chain_id`, `path`, `name`, `title`, `server_name`, `hits`, `content_id`) VALUES
(1010, 'Photo', 7, '', '', 'uploads/user_files/7/images/88e07a32c6e4e2d631293e86773a5fd0.jpeg', '88e07a32c6e4e2d631293e86773a5fd0.jpeg', '', 'funornot.ru', '0', 23),
(1011, 'Photo', 7, NULL, NULL, 'css/images/content/services/services/sale_system.jpg', 'sale_system.jpg', NULL, 'pioneerdjschool.ru', NULL, 25),
(1012, 'Photo', 7, NULL, NULL, 'css/images/content/services/services/partnership.jpg', 'partnership.jpg', NULL, 'pioneerdjschool.ru', NULL, 26),
(1013, 'Photo', 7, NULL, NULL, 'css/images/content/services/services/photosession.jpg', 'photosession.jpg', NULL, 'pioneerdjschool.ru', NULL, 27),
(1014, 'Photo', 7, NULL, NULL, 'css/images/content/services/services/rent.jpg', 'rent.jpg', NULL, 'pioneerdjschool.ru', NULL, 28),
(1015, 'Photo', 7, NULL, NULL, 'css/images/content/services/services/traning.jpg', 'traning.jpg', NULL, 'pioneerdjschool.ru', NULL, 29),
(1016, 'Photo', 7, NULL, NULL, 'css/images/content/services/services/video-mix.jpg', 'video-mix.jpg', NULL, 'pioneerdjschool.ru', NULL, 30),
(1017, 'detail_image', 7, NULL, NULL, 'css/images/content/services/apply/sale_system.jpg', 'sale_system.jpg', NULL, 'pioneerdjschool.ru', NULL, 25),
(1018, 'detail_image', 7, NULL, NULL, 'css/images/content/services/apply/partnership.jpg', 'partnership.jpg', NULL, 'pioneerdjschool.ru', NULL, 26),
(1019, 'detail_image', 7, NULL, NULL, 'css/images/content/services/apply/photosession.jpg', 'photosession.jpg', NULL, 'pioneerdjschool.ru', NULL, 27),
(1020, 'detail_image', 7, NULL, NULL, 'css/images/content/services/apply/rent.jpg', 'rent.jpg', NULL, 'pioneerdjschool.ru', NULL, 28),
(1021, 'detail_image', 7, NULL, NULL, 'css/images/content/services/apply/traning.jpg', 'traning.jpg', NULL, 'pioneerdjschool.ru', NULL, 29),
(1022, 'detail_image', 7, NULL, NULL, 'css/images/content/services/apply/video-mix.jpg', 'video-mix.jpg', NULL, 'pioneerdjschool.ru', NULL, 30),
(1023, 'Photo', 7, '', '', 'uploads/user_files/7/images/b411dc89a706bb044a1d4913819e7f80.jpeg', 'b411dc89a706bb044a1d4913819e7f80.jpeg', '', 'pioneerdjschool.ru', '0', 35),
(1025, 'Photo', 7, '', '', 'uploads/user_files/7/images/a858f6f2c44e014a7f803319a4dfb3f4.jpeg', 'a858f6f2c44e014a7f803319a4dfb3f4.jpeg', '', 'pioneerdjschool.ru', '0', 34),
(1027, 'Photo', 7, '', '', 'uploads/user_files/7/images/c50454583976c53fbf9c6e7085f4d81a.jpeg', 'c50454583976c53fbf9c6e7085f4d81a.jpeg', '', 'pioneerdjschool.ru', '0', 33),
(1029, 'Photo', 7, '', '', 'uploads/user_files/7/images/52bbb800ca636ecfb6392f532aacb9b9.jpeg', '52bbb800ca636ecfb6392f532aacb9b9.jpeg', '', 'pioneerdjschool.ru', '0', 32),
(1031, 'Photo', 7, '', '', 'uploads/user_files/7/images/ac106fdc9354d80b710a2dd4290a7af7.jpeg', 'ac106fdc9354d80b710a2dd4290a7af7.jpeg', '', 'pioneerdjschool.ru', '0', 31),
(1034, 'detail_image', 7, '', '', 'uploads/user_files/7/images/6fb96feb4d235cd97d06eee2f2ac24a7.jpeg', '6fb96feb4d235cd97d06eee2f2ac24a7.jpeg', '', 'pioneerdjschool.ru', '0', 31),
(1035, 'detail_image', 7, '', '', 'uploads/user_files/7/images/9321e68721b226b945d684f183a6835a.jpeg', '9321e68721b226b945d684f183a6835a.jpeg', '', 'pioneerdjschool.ru', '0', 32),
(1036, 'Photo', 7, '', '', 'uploads/user_files/7/images/064f4867b58ff1a3bd17c0fdfde6938c.jpeg', '064f4867b58ff1a3bd17c0fdfde6938c.jpeg', '', 'pioneerdjschool.ru', '0', 48),
(1043, 'detail_image', 7, '', '', 'uploads/user_files/7/images/2ced123b701f5e3b7ac27d3ae9f3c13a.jpeg', '2ced123b701f5e3b7ac27d3ae9f3c13a.jpeg', '', 'pioneerdjschool.ru', '0', 48),
(1044, 'Photo', 7, '', '', 'uploads/user_files/7/images/523500c690d01b9ff5199369d8c9f629.jpeg', '523500c690d01b9ff5199369d8c9f629.jpeg', '', 'pioneerdjschool.ru', '0', 49),
(1045, 'detail_image', 7, '', '', 'uploads/user_files/7/images/2b3b8ba7c0b1ff95684fd91bc62e6fe9.jpeg', '2b3b8ba7c0b1ff95684fd91bc62e6fe9.jpeg', '', 'pioneerdjschool.ru', '0', 49),
(1046, 'Photo', 7, '', '', 'uploads/user_files/7/images/29f46fdbbfa1ac13c70ffa51ee7f964d.jpeg', '29f46fdbbfa1ac13c70ffa51ee7f964d.jpeg', '', 'pioneerdjschool.ru', '0', 50),
(1047, 'detail_image', 7, '', '', 'uploads/user_files/7/images/bd3eb97b39304b8f7d85f0613242e8ce.jpeg', 'bd3eb97b39304b8f7d85f0613242e8ce.jpeg', '', 'pioneerdjschool.ru', '0', 50),
(1048, 'detail_image', 7, '', '', 'uploads/user_files/7/images/e397f4523ecc5590e8f629398f26a6c4.jpeg', 'e397f4523ecc5590e8f629398f26a6c4.jpeg', '', 'pioneerdjschool.ru', '0', 33),
(1049, 'detail_image', 7, '', '', 'uploads/user_files/7/images/9d73cc8ee08ff2071efd3b9e7aa07570.jpeg', '9d73cc8ee08ff2071efd3b9e7aa07570.jpeg', '', 'pioneerdjschool.ru', '0', 34),
(1050, 'detail_image', 7, '', '', 'uploads/user_files/7/images/f07ce9d46a760a567cc78328fe0c7e9b.jpeg', 'f07ce9d46a760a567cc78328fe0c7e9b.jpeg', '', 'pioneerdjschool.ru', '0', 35),
(1051, 'Photo', 7, '', '', 'uploads/user_files/7/images/6692419ee9158cfdaed6520565ee36a7.jpeg', '6692419ee9158cfdaed6520565ee36a7.jpeg', '', 'pioneerdjschool.ru', '0', 52),
(1052, 'detail_image', 7, '', '', 'uploads/user_files/7/images/bfbf4da48ebfee9e40d29b8b0e104ddd.jpeg', 'bfbf4da48ebfee9e40d29b8b0e104ddd.jpeg', '', 'pioneerdjschool.ru', '0', 52),
(1053, 'Photo', 7, '', '', 'uploads/user_files/7/images/893e094654e69f0d55931a2d5751424a.jpeg', '893e094654e69f0d55931a2d5751424a.jpeg', '', 'pioneerdjschool.ru', '0', 56),
(1054, 'detail_image', 7, '', '', 'uploads/user_files/7/images/b26f332c3a1cdab96fb2f4171c056a15.jpeg', 'b26f332c3a1cdab96fb2f4171c056a15.jpeg', '', 'pioneerdjschool.ru', '0', 56),
(1055, 'Photo', 7, '', '', 'uploads/user_files/7/images/8868f54aa81f2e0183c96d7c4d42843b.jpeg', '8868f54aa81f2e0183c96d7c4d42843b.jpeg', '', 'pioneerdjschool.ru', '0', 57),
(1056, 'detail_image', 7, '', '', 'uploads/user_files/7/images/579b0ec4a2900941e89c40c5bcebc26a.jpeg', '579b0ec4a2900941e89c40c5bcebc26a.jpeg', '', 'pioneerdjschool.ru', '0', 57),
(1057, 'Photo', 7, '', '', 'uploads/user_files/7/images/963ad6a92c0adf390f4e4fca020ee762.jpeg', '963ad6a92c0adf390f4e4fca020ee762.jpeg', '', 'pioneerdjschool.ru', '0', 58),
(1058, 'detail_image', 7, '', '', 'uploads/user_files/7/images/5ee4f58d9d3c1445cd2a99335220db6e.jpeg', '5ee4f58d9d3c1445cd2a99335220db6e.jpeg', '', 'pioneerdjschool.ru', '0', 58),
(1059, 'Photo', 7, '', '', 'uploads/user_files/7/images/77863a33a5eac8578829e44665d99a3b.jpeg', '77863a33a5eac8578829e44665d99a3b.jpeg', '', 'pioneerdjschool.ru', '0', 59),
(1060, 'detail_image', 7, '', '', 'uploads/user_files/7/images/0edda3dbc508757964054cbd2a38ae23.jpeg', '0edda3dbc508757964054cbd2a38ae23.jpeg', '', 'pioneerdjschool.ru', '0', 59),
(1061, 'Photo', 7, '', '', 'uploads/user_files/7/images/a697456f579c5574d18e85ffb4234901.jpeg', 'a697456f579c5574d18e85ffb4234901.jpeg', '', 'pioneerdjschool.ru', '0', 60),
(1062, 'detail_image', 7, '', '', 'uploads/user_files/7/images/731483df29b9d6b79d85794f98665fee.jpeg', '731483df29b9d6b79d85794f98665fee.jpeg', '', 'pioneerdjschool.ru', '0', 60),
(1063, 'Photo', 7, '', '', 'uploads/user_files/7/docs/612bae7565c98b685f1d6dc28d662967.', '612bae7565c98b685f1d6dc28d662967.', '', 'pioneerdjschool.ru', '0', 61),
(1064, 'detail_image', 7, '', '', 'uploads/user_files/7/docs/612bae7565c98b685f1d6dc28d662967.', '612bae7565c98b685f1d6dc28d662967.', '', 'pioneerdjschool.ru', '0', 61),
(1065, 'Photo', 7, '', '', 'uploads/user_files/7/docs/50a7b2f6fdd1e9c0263974b01e5c693b.', '50a7b2f6fdd1e9c0263974b01e5c693b.', '', 'pioneerdjschool.ru', '0', 62),
(1066, 'detail_image', 7, '', '', 'uploads/user_files/7/docs/50a7b2f6fdd1e9c0263974b01e5c693b.', '50a7b2f6fdd1e9c0263974b01e5c693b.', '', 'pioneerdjschool.ru', '0', 62),
(1067, 'Photo', 7, '', '', 'uploads/user_files/7/docs/e98104e53341cc12e0ef443ca0dfa1e3.', 'e98104e53341cc12e0ef443ca0dfa1e3.', '', 'pioneerdjschool.ru', '0', 63),
(1068, 'detail_image', 7, '', '', 'uploads/user_files/7/docs/e98104e53341cc12e0ef443ca0dfa1e3.', 'e98104e53341cc12e0ef443ca0dfa1e3.', '', 'pioneerdjschool.ru', '0', 63),
(1069, 'Photo', 7, '', '', 'uploads/user_files/7/docs/fdb46c221ba8e5b318abff9bc27962cb.', 'fdb46c221ba8e5b318abff9bc27962cb.', '', 'pioneerdjschool.ru', '0', 64),
(1070, 'detail_image', 7, '', '', 'uploads/user_files/7/docs/fdb46c221ba8e5b318abff9bc27962cb.', 'fdb46c221ba8e5b318abff9bc27962cb.', '', 'pioneerdjschool.ru', '0', 64),
(1071, 'Photo', 7, '', '', 'uploads/user_files/7/images/b247e2248d77f7a7c55b70d1ecccce39.jpeg', 'b247e2248d77f7a7c55b70d1ecccce39.jpeg', '', 'pioneerdjschool.ru', '0', 65),
(1072, 'detail_image', 7, '', '', 'uploads/user_files/7/images/b247e2248d77f7a7c55b70d1ecccce39.jpeg', 'b247e2248d77f7a7c55b70d1ecccce39.jpeg', '', 'pioneerdjschool.ru', '0', 65),
(1073, 'Photo', 7, '', '', 'uploads/user_files/7/images/1dd8888da50f8b0c66329ec58b4c07c2.jpeg', '1dd8888da50f8b0c66329ec58b4c07c2.jpeg', '', 'pioneerdjschool.ru', '0', 66),
(1074, 'detail_image', 7, '', '', 'uploads/user_files/7/images/d85e07c8f94e07a417a6fd5e36f6071e.jpeg', 'd85e07c8f94e07a417a6fd5e36f6071e.jpeg', '', 'pioneerdjschool.ru', '0', 66),
(1075, 'Photo', 7, '', '', 'uploads/user_files/7/images/01ccdf6e4b47d652a0bfe1256dfed263.jpeg', '01ccdf6e4b47d652a0bfe1256dfed263.jpeg', '', 'pioneerdjschool.ru', '0', 71),
(1076, 'detail_image', 7, '', '', 'uploads/user_files/7/images/43115cbd69e17f0fc44359d2b2649abb.jpeg', '43115cbd69e17f0fc44359d2b2649abb.jpeg', '', 'pioneerdjschool.ru', '0', 71),
(1077, 'Photo', 7, '', '', 'uploads/user_files/7/images/ddb4fd7ef21a84890e4a05a0b3e3210b.jpeg', 'ddb4fd7ef21a84890e4a05a0b3e3210b.jpeg', '', 'pioneerdjschool.ru', '0', 72),
(1078, 'detail_image', 7, '', '', 'uploads/user_files/7/images/493df3eea1c1221dc1eccfa46371e9e1.jpeg', '493df3eea1c1221dc1eccfa46371e9e1.jpeg', '', 'pioneerdjschool.ru', '0', 72),
(1079, 'Photo', 7, '', '', 'uploads/user_files/7/images/c7467a8862ef9ec30948775834892ff7.jpeg', 'c7467a8862ef9ec30948775834892ff7.jpeg', '', 'pioneerdjschool.ru', '0', 73),
(1080, 'detail_image', 7, '', '', 'uploads/user_files/7/images/a07db73673357b67ded993ba5162a9a8.jpeg', 'a07db73673357b67ded993ba5162a9a8.jpeg', '', 'pioneerdjschool.ru', '0', 73),
(1081, 'Photo', 7, '', '', 'uploads/user_files/7/images/97efa93ce0a6d7241cf50f468947946c.jpeg', '97efa93ce0a6d7241cf50f468947946c.jpeg', '', 'pioneerdjschool.ru', '0', 74),
(1082, 'detail_image', 7, '', '', 'uploads/user_files/7/images/f7beade177194ce36f43343885205981.jpeg', 'f7beade177194ce36f43343885205981.jpeg', '', 'pioneerdjschool.ru', '0', 74),
(1083, 'Photo', 7, '', '', 'uploads/user_files/7/images/b837c052dc35c18941f4527412951c5f.jpeg', 'b837c052dc35c18941f4527412951c5f.jpeg', '', 'pioneerdjschool.ru', '0', 75),
(1084, 'detail_image', 7, '', '', 'uploads/user_files/7/images/6e9708100441254f2b6b483668541051.jpeg', '6e9708100441254f2b6b483668541051.jpeg', '', 'pioneerdjschool.ru', '0', 75),
(1085, 'Photo', 7, '', '', 'uploads/user_files/7/images/0d4a9937bccaf69261b78a5530884b2d.jpeg', '0d4a9937bccaf69261b78a5530884b2d.jpeg', '', 'pioneerdjschool.ru', '0', 76),
(1086, 'detail_image', 7, '', '', 'uploads/user_files/7/images/00c40e8c21c6afea388db24e85c1865e.jpeg', '00c40e8c21c6afea388db24e85c1865e.jpeg', '', 'pioneerdjschool.ru', '0', 76),
(1087, 'Photo', 7, '', '', 'uploads/user_files/7/images/da03d94264fd2bc73901809ab3fd6494.jpeg', 'da03d94264fd2bc73901809ab3fd6494.jpeg', '', 'pioneerdjschool.ru', '0', 77),
(1088, 'detail_image', 7, '', '', 'uploads/user_files/7/images/a71e4c4ecb0eea19dba7c0474907765f.jpeg', 'a71e4c4ecb0eea19dba7c0474907765f.jpeg', '', 'pioneerdjschool.ru', '0', 77),
(1089, 'Photo', 7, '', '', 'uploads/user_files/7/images/0119568585551f34abf8044944ef4d95.jpeg', '0119568585551f34abf8044944ef4d95.jpeg', '', 'pioneerdjschool.ru', '0', 78),
(1090, 'detail_image', 7, '', '', 'uploads/user_files/7/images/74fe1efbd932cd89dbd5d1e66c7e513f.jpeg', '74fe1efbd932cd89dbd5d1e66c7e513f.jpeg', '', 'pioneerdjschool.ru', '0', 78);

-- --------------------------------------------------------

--
-- Структура таблицы `geopos`
--

CREATE TABLE IF NOT EXISTS `geopos` (
  `id` int(11) NOT NULL,
  `sess_id` varchar(100) DEFAULT NULL,
  `lat` varchar(100) DEFAULT NULL,
  `lon` varchar(100) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=1543 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `geopos`
--

INSERT INTO `geopos` (`id`, `sess_id`, `lat`, `lon`) VALUES
(412, '20170312095538', '55.0345587', '82.9110953'),
(413, '20170312095538', '55.0345382', '82.91124909999999'),
(414, '20170312102415', '55.7603119339118', '37.66337768347114'),
(415, '20170312103237', '55.79949713782947', '37.268693866242906'),
(416, '20170312105231', '55.0344277', '82.9118069'),
(417, '20170312122150', '55.73303432873044', '37.63587154238452'),
(418, '20170312122156', '55.73302813585356', '37.63582558951545'),
(419, '20170312122212', '55.7330220231451', '37.63578023151827'),
(420, '20170312142441', '55.76738144638373', '37.57566830670397'),
(421, '20170312142501', '55.76738175671179', '37.575668371439875'),
(422, '20170312142511', '55.76738206825684', '37.57566843642965'),
(423, '20170312142511', '55.76741642161191', '37.57567560270363'),
(424, '20170312163444', '29.9579135', '-81.530286'),
(425, '20170312203146', '55.797694199999995', '49.1638763'),
(426, '20170312205717', '39.7392', '-104.9903'),
(427, '20170312213852', '61.698653', '99.505405'),
(428, '20170312220422', '41.8369', '-87.6847'),
(429, '20170312220422', '40.7127', '-74.0059'),
(430, '20170312223833', '54.9953806', '82.9092547'),
(431, '20170313065247', '55.8242908', '37.9468894'),
(432, '20170313065332', '55.8243602', '37.9467701'),
(433, '20170313065413', '55.8245792', '37.9467292'),
(434, '20170313075654', '41.8369', '-87.6847'),
(435, '20170313121425', '54.9953806', '82.9092547'),
(436, '20170313121425', '54.9954266', '82.9093013'),
(437, '20170313121425', '54.9954175', '82.9092921'),
(438, '20170313121425', '54.9954136', '82.9092881'),
(439, '20170313121425', '54.9954152', '82.9092898'),
(440, '20170313121425', '54.9953806', '82.9092547'),
(441, '20170313121425', '54.9954037', '82.9092781'),
(442, '20170313121425', '54.9954178', '82.9092744'),
(443, '20170313121425', '54.9954125', '82.9092716'),
(444, '20170313121425', '54.9954243', '82.9092629'),
(445, '20170313121425', '54.9954204', '82.9092622'),
(446, '20170313121425', '54.9953806', '82.9092547'),
(447, '20170313121425', '54.9954266', '82.9093013'),
(448, '20170313121425', '54.9954191', '82.9092937'),
(449, '20170313121425', '54.995421', '82.9092956'),
(450, '20170313121425', '54.9954216', '82.9092962'),
(451, '20170313121425', '54.9954221', '82.9092968'),
(452, '20170313142505', '55.0446552', '82.88447459999999'),
(453, '20170313135752', '55.75987030999998', '37.663372999999986'),
(454, '20170313143937', '55.76681582054716', '37.60745963275493'),
(455, '20170313162415', '55.803408039298596', '37.72535194560782'),
(456, '20170313170606', '55.62590646755845', '37.74281440280497'),
(457, '20170313192842', '55.6383479', '37.5181897'),
(458, '20170313213338', '55.830118115991354', '37.490668036043644'),
(459, '20170314081009', '55.703090200000005', '37.7317129'),
(460, '20170314081029', '55.7030781', '37.7317205'),
(461, '20170314081029', '55.703102099999995', '37.7317618'),
(462, '20170314112051', '55.703108099999994', '37.7317715'),
(463, '20170314112109', '55.7030714', '37.7317324'),
(464, '20170314114847', '55.703068900000005', '37.7317316'),
(465, '20170314114847', '55.70309160000001', '37.731749199999996'),
(466, NULL, '55.703084', '37.731746099999995'),
(467, '20170314155509', '55.7031138', '37.7317441'),
(468, '20170314164754', '55.71333327584667', '37.76209917574103'),
(469, NULL, '55.7030865', '37.731752199999995'),
(470, '20170314175632', '55.7030823', '37.731729400000006'),
(471, '20170314184104', '55.7030883', '37.7317143'),
(472, '20170314200517', '55.703074699999995', '37.731727299999996'),
(473, '20170315012646', '55.7031012', '37.7317876'),
(474, '20170315014407', '55.7031036', '37.7317864'),
(475, '20170315024637', '55.703084', '37.7317422'),
(476, '20170315024637', '55.7030971', '37.731736'),
(477, '20170315024637', '55.7031291', '37.731741'),
(478, '20170315043519', '55.703101999999994', '37.7317701'),
(479, '20170315055748', '55.702', '37.6888'),
(480, '20170315072215', '59.948788667320834', '30.407661061600905'),
(481, '20170315090027', '55.703085599999994', '37.731749199999996'),
(482, '20170315114255', '55.54237460999998', '37.585338009999994'),
(483, '20170315121222', '55.7030909', '37.7317367'),
(484, '20170315121235', '55.7030846', '37.7317415'),
(485, '20170315121235', '55.703084999999994', '37.7317433'),
(486, '20170315123630', '55.703075899999995', '37.731747399999996'),
(487, '20170315123630', '55.703073599999996', '37.731746199999996'),
(488, '20170315125151', '55.7030819', '37.7317317'),
(489, '20170315140031', '55.0265777', '82.9207186'),
(490, '20170315131419', '55.703075899999995', '37.7317629'),
(491, NULL, '55.7030706', '37.731734599999996'),
(492, '20170315161613', '55.7030714', '37.7317396'),
(493, '20170315161613', '55.703094099999994', '37.7317348'),
(494, '20170315161613', '55.7030749', '37.7317438'),
(495, '20170315165849', '55.7030944', '37.7317125'),
(496, '20170315165849', '55.703100299999996', '37.731774200000004'),
(497, '20170315165849', '55.7030762', '37.7317192'),
(498, '20170315182347', '55.703112499999996', '37.7317483'),
(499, '20170315185649', '44.49132590043838', '34.16353990161442'),
(500, '20170315185658', '44.49136016291554', '34.16351262192786'),
(501, '20170315185807', '44.49132590043838', '34.16353990161442'),
(502, '20170315190842', '60.003020944838404', '30.21606339087918'),
(503, '20170315190845', '60.003021252473445', '30.216126140849436'),
(504, '20170315190900', '60.00302033295366', '30.21589203166244'),
(505, NULL, '55.703081499999996', '37.7317517'),
(506, '20170315234330', '55.9113749', '37.865677'),
(507, '20170315234247', '55.7030854', '37.731754599999995'),
(508, '20170315234247', '55.703070999999994', '37.7317371'),
(509, '20170316023507', '55.703089', '37.731742'),
(510, '20170316023507', '55.7030939', '37.7317524'),
(511, '20170316023507', '55.7031', '37.7317179'),
(512, '20170316023507', '55.703085699999995', '37.7317604'),
(513, '20170316023507', '55.703106899999995', '37.731733999999996'),
(514, '20170316023507', '55.703102699999995', '37.7317646'),
(515, '20170316023507', '55.703094099999994', '37.731773200000006'),
(516, '20170316071543', '55.7030731', '37.7317186'),
(517, '20170316071543', '55.7030975', '37.7317566'),
(518, NULL, '55.703101', '37.731738799999995'),
(519, '20170316093411', '55.647361250078724', '37.65688713375468'),
(520, '20170316102148', '55.034601200000004', '82.91115909999999'),
(521, '20170316102152', '55.0346731', '82.9110994'),
(522, NULL, '55.703100299999996', '37.731770999999995'),
(523, '20170316103741', '55.0346684', '82.9111073'),
(524, '20170316103909', '55.0346577', '82.91111769999999'),
(525, '20170316103909', '55.0346655', '82.9110781'),
(526, '20170316103909', '55.0346559', '82.9111257'),
(527, '20170316104526', '55.0346535', '82.9110929'),
(528, '20170316103152', '55.7030852', '37.731752199999995'),
(529, '20170316104709', '55.0345454', '82.911599'),
(530, '20170316105713', '55.0344756', '82.9118608'),
(531, '20170316103152', '55.7030831', '37.731751900000006'),
(532, '20170316111822', '55.0346424', '82.9111611'),
(533, '20170316112626', '55.034661899999996', '82.9111321'),
(534, '20170316112907', '55.034637599999996', '82.91113279999999'),
(535, '20170316114224', '55.034517099999995', '82.9116028'),
(536, '20170316114224', '55.034656399999996', '82.91114759999999'),
(537, NULL, '55.7030859', '37.731747399999996'),
(538, '20170316114632', '55.034662399999995', '82.9111179'),
(539, '20170316114719', '55.0345062', '82.9116683'),
(540, '20170316115709', '55.0346494', '82.91114449999999'),
(541, '20170316114719', '55.0344277', '82.9118069'),
(542, '20170316121107', '55.0346537', '82.91110820000002'),
(543, NULL, '55.7030969', '37.7317535'),
(544, NULL, '55.703097799999995', '37.7317652'),
(545, '20170316132130', '55.0346454', '82.9111321'),
(546, '20170316133349', '55.0346167', '82.91114689999999'),
(547, '20170316133739', '55.034666300000005', '82.9111138'),
(548, '20170316133739', '55.0346785', '82.9110905'),
(549, '20170316133739', '55.034675199999995', '82.91108810000001'),
(550, '20170316145708', '55.8509728', '37.366765699999995'),
(551, '20170316133739', '55.034486099999995', '82.91174'),
(552, '20170316152010', '55.82461761399677', '37.81742501053387'),
(553, '20170316152042', '55.82461686833583', '37.817125609864'),
(554, NULL, '55.848268499999996', '37.3640717'),
(555, '20170316162512', '55.18045319999999', '36.65091897999999'),
(556, '20170317002548', '54.9953806', '82.9092547'),
(557, '20170317014459', '54.8596685', '83.1104916'),
(558, '20170317042143', '54.9954266', '82.9093013'),
(559, '20170317051418', '55.5000945', '37.568208'),
(560, '20170317051447', '55.4998399', '37.5677884'),
(561, '20170317051706', '55.4993591', '37.568704'),
(562, '20170317051808', '55.4993321', '37.5690614'),
(563, '20170317100412', '41.8369', '-87.6847'),
(564, '20170317102421', '55.3036638', '83.6020921'),
(565, '20170317102656', '55.3035781', '83.6021127'),
(566, '20170317103537', '55.3036638', '83.6020921'),
(567, '20170317105620', '55.6102905', '37.7524541'),
(568, '20170317105811', '55.6100559', '37.7526309'),
(569, '20170317111216', '55.6102905', '37.7524541'),
(570, '20170317111248', '55.6098717', '37.7527697'),
(571, '20170317111810', '55.6102281', '37.752466'),
(572, '20170317114850', '55.754293399999995', '37.8082427'),
(573, '20170317114931', '55.754294099999996', '37.808257'),
(574, '20170317115901', '55.69003504999535', '37.85502182998079'),
(575, '20170317121432', '55.75395965576172', '37.62039184570312'),
(576, '20170317132254', '55.3034161', '83.6015052'),
(577, '20170317142710', '55.0346182', '82.9112475'),
(578, '20170317142717', '55.0346139', '82.9112335'),
(579, '20170317150812', '55.64463370254704', '37.4881673939037'),
(580, '20170317150919', '55.64457632916464', '37.48840858861836'),
(581, '20170317151148', '55.644589726078', '37.488161046901574'),
(582, '20170317151301', '55.644604387308064', '37.48822867608028'),
(583, '20170317160758', '55.7031061', '37.7317555'),
(584, '20170317160805', '55.70309160000001', '37.731749199999996'),
(585, '20170317160805', '55.703083299999996', '37.7317355'),
(586, '20170317160805', '55.703092600000005', '37.7317043'),
(587, '20170317164537', '54.9953', '82.9090439'),
(588, '20170317160805', '55.7030891', '37.7317399'),
(589, '20170317160805', '55.703103199999994', '37.7317368'),
(590, '20170317165824', '55.60769292823276', '37.24123796530423'),
(591, '20170317165838', '55.607538483509316', '37.24201126304275'),
(592, '20170317165930', '55.60738354684056', '37.24278702392903'),
(593, '20170317160805', '55.7031005', '37.731756'),
(594, '20170317160805', '55.7031066', '37.7317563'),
(595, '20170317174455', '55.609444440537395', '37.232036095730734'),
(596, '20170317174455', '55.60734168685862', '37.242996592961696'),
(597, '20170317164545', '54.9953195', '82.9090788'),
(598, '20170317160805', '55.703115700000005', '37.7317119'),
(599, '20170317175601', '55.7031001', '37.7317183'),
(600, '20170317175601', '55.7031066', '37.731710799999995'),
(601, '20170317175601', '55.7031302', '37.7317551'),
(602, '20170317183640', '55.703103899999995', '37.7317336'),
(603, '20170317174455', '55.606629289325845', '37.24504467418271'),
(604, '20170317174455', '55.61034933745589', '37.22862146648265'),
(605, '20170317191520', '55.610178752250825', '37.22888517773524'),
(606, '20170317185411', '55.703080299999996', '37.7317263'),
(607, '20170317214755', '55.74669680632703', '37.552600448233115'),
(608, '20170317210231', '55.7031262', '37.7318266'),
(609, '20170318035923', '55.75395965576172', '37.62039184570312'),
(610, '20170318074850', '55.845937432655404', '37.55204412370104'),
(611, '20170318080422', '43.2327054', '76.9300506'),
(612, '20170318113440', '56.333140635420804', '36.719367535636174'),
(613, '20170318113444', '56.33314060258554', '36.71936752834311'),
(614, '20170318124432', '55.7933629', '38.8898102'),
(615, NULL, '55.84700382999998', '37.55460415999998'),
(616, '20170318131916', '55.84589448349449', '37.552063739941055'),
(617, '20170318161942', '55.75395965576172', '37.62039184570312'),
(618, '20170318170742', '57.653965054686964', '39.960358895580065'),
(619, '20170318183840', '52.6278769', '29.723125'),
(620, '20170318191736', '55.318372131917826', '37.526310033560456'),
(621, '20170318200945', '54.974950915729586', '82.86963507671892'),
(622, '20170318202646', '54.9954236', '82.9093055'),
(623, '20170318215128', '55.57661819458008', '37.65738296508789'),
(624, '20170318215232', '55.57646942138672', '37.65719985961914'),
(625, '20170318224720', '55.94513361428859', '37.646300592550666'),
(626, '20170318224723', '55.945226183147426', '37.646361117614646'),
(627, '20170318224728', '55.94531904796606', '37.64648340376806'),
(628, '20170318224827', '55.592482499999996', '37.212228599999996'),
(629, '20170319050901', '53.7712654', '87.1334963'),
(630, '20170319051426', '39.2202113', '46.3581951'),
(631, '20170319073552', '55.857287825598455', '37.40994952456893'),
(632, NULL, '55.760201099999996', '37.6632726'),
(633, '20170319105405', '55.7602148', '37.663186499999995'),
(634, '20170319114523', '55.67622756958008', '37.68816757202148'),
(635, '20170319114627', '55.67616653442383', '37.68807601928711'),
(636, '20170319114627', '55.67611694335938', '37.68819046020508'),
(637, '20170319114627', '55.67621231079102', '37.68790435791016'),
(638, '20170319114627', '55.67610168457031', '37.68816757202148'),
(639, '20170319115608', '55.76623168686478', '37.654466181580005'),
(640, '20170319114627', '55.67623519897461', '37.68801879882812'),
(641, '20170319114627', '55.67608642578125', '37.68821716308594'),
(642, '20170319114627', '55.67621231079102', '37.68811798095703'),
(643, '20170319114627', '55.67619705200195', '37.68809127807617'),
(644, '20170319114627', '55.67620849609375', '37.68814086914062'),
(645, '20170319120801', '55.67613983154297', '37.68796539306641'),
(646, '20170319112208', '55.7602176', '37.663191399999995'),
(647, '20170319122454', '55.9328663', '37.8399226'),
(648, '20170319122541', '55.932862199999995', '37.8399286'),
(649, '20170319122715', '55.932859199999996', '37.8399296'),
(650, '20170319122747', '55.932865899999996', '37.8399224'),
(651, '20170319122757', '55.9328668', '37.8399219'),
(652, '20170319122835', '55.9328636', '37.839925099999995'),
(653, '20170319122835', '55.9328553', '37.8399405'),
(654, '20170319122835', '55.9328641', '37.8399383'),
(655, '20170319133406', '55.7165023', '37.7338563'),
(656, '20170319140309', '61.803019799999994', '50.7484946'),
(657, '20170319122032', '55.7602014', '37.6632521'),
(658, '20170319140309', '61.803016799999995', '50.7485073'),
(659, '20170319140751', '61.8030166', '50.7484945'),
(660, '20170319140759', '61.803019500000005', '50.7484945'),
(661, '20170319150729', '47.758214', '37.677248399999996'),
(662, '20170319215355', '55.754274499999994', '37.808225799999995'),
(663, '20170319222256', '55.754270899999995', '37.808209999999995'),
(664, '20170319225823', '55.7443226', '37.543783399999995'),
(665, '20170319222256', '55.754288599999995', '37.8082146'),
(666, '20170319225841', '55.7542945', '37.8082202'),
(667, '20170319225910', '55.744302399999995', '37.543771'),
(668, '20170319225948', '55.7442972', '37.5438194'),
(669, '20170319225948', '55.743911', '37.543648'),
(670, '20170319230009', '55.744266499999995', '37.5438451'),
(671, '20170319230024', '55.744314100000004', '37.543795599999996'),
(672, '20170319230048', '55.744344299999995', '37.543746600000006'),
(673, '20170319230106', '55.7442892', '37.543766'),
(674, '20170319230109', '55.744295699999995', '37.543743'),
(675, '20170319230145', '55.7442861', '37.5437562'),
(676, '20170319225847', '55.754311799999996', '37.8082335'),
(677, '20170319234432', '55.754294699999996', '37.808205099999995'),
(678, '20170320014447', '55.7569', '37.615'),
(679, '20170320075245', '39.7392', '-104.9903'),
(680, '20170320080658', '54.975055399999995', '83.0992077'),
(681, '20170320101128', '55.62885991026651', '37.51674089035103'),
(682, '20170320105220', '55.76007547252653', '37.663298166894116'),
(683, '20170320105225', '55.76021137839203', '37.663245095146834'),
(684, '20170320105232', '55.760216658158825', '37.663243033569515'),
(685, '20170320105302', '55.76021703425073', '37.66324288671785'),
(686, '20170320105331', '55.760217222363664', '37.663242813265875'),
(687, '20170320105331', '55.76021732057777', '37.663242774916455'),
(688, NULL, '55.7602062', '37.6631998'),
(689, '20170320121519', '55.746071699999995', '37.6823787'),
(690, '20170320121435', '55.760211899999995', '37.6631925'),
(691, '20170320161144', '55.64594866993892', '37.5416236691786'),
(692, '20170320171051', '55.7031314', '37.731752900000004'),
(693, '20170320172553', '55.7031415', '37.7317101'),
(694, '20170320225647', '55.62918980942993', '37.76323968149745'),
(695, '20170320225651', '55.63143223728711', '37.761955265913876'),
(696, '20170320225726', '55.63139880732399', '37.76197176699678'),
(697, '20170320225744', '55.63143652222788', '37.76193552908395'),
(698, '20170320230646', '55.7916611', '37.7875448'),
(699, '20170321001358', '53.16620118352633', '44.987188188543314'),
(700, '20170321001618', '53.166179124764604', '44.98700710987946'),
(701, '20170321001638', '53.166237746032046', '44.98706657197113'),
(702, '20170321001638', '53.166158429163964', '44.98718645321535'),
(703, '20170321001638', '53.16606937020516', '44.98680609566672'),
(704, '20170321075432', '54.9952894', '82.9090532'),
(705, '20170321082627', '55.734494', '37.6617156'),
(706, '20170321082654', '55.7344602', '37.6617223'),
(707, '20170321082730', '55.7344598', '37.6617709'),
(708, '20170321082830', '55.7344869', '37.6617279'),
(709, '20170321083033', '55.7344884', '37.6617102'),
(710, '20170321083040', '55.7344612', '37.6617489'),
(711, '20170321083334', '55.7344765', '37.6617504'),
(712, '20170321083342', '55.7344885', '37.6617242'),
(713, '20170321111547', '55.8589707', '37.6730824'),
(714, '20170321121053', '55.7617366', '37.5518504'),
(715, '20170321121053', '55.761786099999995', '37.5517739'),
(716, NULL, '55.7030974', '37.7317341'),
(717, '20170321135055', '43.23777409498047', '76.90811349453381'),
(718, '20170321135107', '43.237776245405115', '76.90812718713126'),
(719, '20170321135129', '43.23776821834542', '76.90819355601778'),
(720, '20170321135144', '43.23777168140839', '76.90815639560317'),
(721, '20170321135144', '43.23777153864612', '76.90814647939814'),
(722, '20170321135551', '43.237775359865545', '76.9081918321905'),
(723, '20170321135551', '43.23776346810271', '76.90818330298703'),
(724, '20170321135551', '43.23777348674864', '76.90822931618231'),
(725, '20170321121053', '55.7617492', '37.551862799999995'),
(726, '20170321135551', '43.23772143956448', '76.90825044404936'),
(727, '20170321135551', '43.23772751817867', '76.90823367389955'),
(728, NULL, '55.8588598', '37.6731753'),
(729, NULL, '43.23776696037563', '76.90806424955157'),
(730, NULL, '54.995282599999996', '82.9090823'),
(731, NULL, '43.2358253075049', '76.90543393121516'),
(732, NULL, '43.23776593893341', '76.9082371403484'),
(733, NULL, '43.237774770746476', '76.90804318502359'),
(734, '20170321195802', '56.131396099999996', '47.257725799999996'),
(735, '20170321195935', '56.1315497', '47.257805399999995'),
(736, NULL, '54.995282599999996', '82.9090823'),
(737, NULL, '56.1314547', '47.257734199999994'),
(738, NULL, '56.131431899999995', '47.257821899999996'),
(739, '20170321224628', '56.1314353', '47.2578435'),
(740, '20170321224630', '56.13142', '47.2578253'),
(741, '20170321224637', '56.1314279', '47.257827'),
(742, NULL, '54.995294799999996', '82.90909959999999'),
(743, NULL, '54.995294799999996', '82.90909959999999'),
(744, '20170322063237', '69.35236854999998', '88.17734746999996'),
(745, NULL, '54.9952877', '82.90903209999999'),
(746, '20170322085225', '40.7127', '-74.0059'),
(747, '20170322085243', '41.8369', '-87.6847'),
(748, '20170322091134', '55.75396', '37.620393'),
(749, NULL, '56.1515493', '47.1943918'),
(750, '20170322094118', '64.24797579999999', '95.11041759999999'),
(751, '20170322095315', '69.36063485512919', '88.18508664923358'),
(752, '20170322095714', '69.36081376720192', '88.18519809236521'),
(753, '20170322110332', '54.8597936', '37.4895356'),
(754, NULL, '55.7030636', '37.7317161'),
(755, '20170322121154', '47.2936701', '39.7057921'),
(756, '20170322121218', '47.2936668', '39.7057284'),
(757, '20170322121218', '47.293644699999994', '39.7057442'),
(758, '20170322122608', '47.293645000000005', '39.7057177'),
(759, '20170322122619', '47.2936388', '39.7057174'),
(760, '20170322130821', '55.753261699999996', '37.7040985'),
(761, '20170322142817', '55.703108', '37.7317109'),
(762, NULL, '54.9952854', '82.9090868'),
(763, '20170322153406', '54.995318499999996', '82.9091013'),
(764, '20170322142817', '55.703101399999994', '37.7317262'),
(765, '20170322153511', '54.9953174', '82.909127'),
(766, '20170322153511', '54.995310599999996', '82.9090962'),
(767, '20170322153511', '54.9953088', '82.90905'),
(768, '20170322153511', '54.995315399999996', '82.9090904'),
(769, '20170322162246', '57.9214912', '59.9816186'),
(770, NULL, '55.703125099999994', '37.731730899999995'),
(771, '20170322153511', '54.9952754', '82.9090945'),
(772, NULL, '54.995256399999995', '82.9090646'),
(773, '20170323043605', '54.9953279', '82.909164'),
(774, '20170323043610', '54.995244899999996', '82.9090343'),
(775, '20170323043610', '54.9953222', '82.9090485'),
(776, '20170323043610', '54.995320299999996', '82.9092216'),
(777, '20170323043610', '54.995279599999996', '82.9090272'),
(778, '20170323043610', '54.995217999999994', '82.90898039999999'),
(779, '20170323043610', '54.9953508', '82.90924129999999'),
(780, '20170323043610', '54.995343299999995', '82.9090916'),
(781, '20170323065546', '54.9952523', '82.90895929999999'),
(782, '20170323065546', '54.9953381', '82.90926569999999'),
(783, '20170323065546', '54.995289199999995', '82.9090595'),
(784, '20170323075725', '55.76965068237433', '37.48923769039281'),
(785, '20170323075734', '55.769608717600875', '37.489379045739874'),
(786, '20170323075922', '55.769521712710976', '37.48928356230042'),
(787, '20170323075927', '55.81622971915566', '38.97141507321266'),
(788, '20170323080008', '55.76954187432263', '37.48922634938711'),
(789, '20170323065546', '54.995354299999995', '82.9091086'),
(790, '20170323065546', '54.9952238', '82.90895739999999'),
(791, '20170323065546', '54.995300699999994', '82.909058'),
(792, '20170323065546', '54.995312399999996', '82.9090885'),
(793, '20170323065546', '54.9953044', '82.9090701'),
(794, '20170323065546', '54.9952561', '82.9090384'),
(795, '20170323065546', '54.995327599999996', '82.9090932'),
(796, '20170323065546', '54.9953131', '82.909065'),
(797, '20170323065546', '54.995318999999995', '82.9090867'),
(798, '20170323065546', '54.9953071', '82.90909479999999'),
(799, '20170323065546', '54.995259499999996', '82.9090348'),
(800, '20170323113421', '55.83335849990103', '37.92231436957582'),
(801, '20170323113445', '55.83336742070526', '37.922146545930424'),
(802, '20170323113643', '55.83336973649452', '37.92218803840109'),
(803, '20170323115257', '54.995319699999996', '82.9092367'),
(804, '20170323115257', '54.9952909', '82.90904119999999'),
(805, '20170323124001', '54.9953115', '82.9090411'),
(806, '20170323124001', '54.9952574', '82.9089716'),
(807, '20170323124001', '54.9953289', '82.9093596'),
(808, NULL, '55.760201599999995', '37.6632884'),
(809, '20170323151433', '55.760208899999995', '37.6631828'),
(810, '20170323162618', '44.1677141', '19.069108399999998'),
(811, '20170323213400', '55.7715513', '37.8201288'),
(812, '20170323213909', '55.76260210362941', '37.65121999716086'),
(813, '20170323214016', '55.76260091874059', '37.6512632662876'),
(814, NULL, '54.995270999999995', '82.9090544'),
(815, '20170324025534', '55.6658508', '37.8565168'),
(816, '20170324032901', '55.6658508', '37.8565168'),
(817, NULL, '54.99530060000001', '82.9090916'),
(818, '20170324070303', '59.922638181176026', '30.293037698769606'),
(819, '20170324143011', '55.743676925367005', '37.683618056818034'),
(820, '20170324143025', '55.74366406996557', '37.68360217243744'),
(821, '20170324145548', '41.8369', '-87.6847'),
(822, NULL, '55.7031291', '37.7317115'),
(823, '20170324164528', '55.0255787', '82.9171961'),
(824, '20170324161334', '55.7030962', '37.7317361'),
(825, '20170324164919', '55.7030962', '37.7317361'),
(826, '20170324164923', '55.703087999999994', '37.7316832'),
(827, '20170324193403', '55.9977265', '37.2100647'),
(828, '20170325040537', '54.995347699999996', '82.9092381'),
(829, '20170325040544', '54.9952906', '82.90908'),
(830, NULL, '54.995264', '82.9089832'),
(831, '20170325061340', '54.995270299999994', '82.9090417'),
(832, '20170325062249', '54.9952231', '82.9089865'),
(833, '20170325110910', '55.88885894225199', '37.5601003884403'),
(834, NULL, '55.703089999999996', '37.731732699999995'),
(835, '20170325115448', '55.703138', '37.7317576'),
(836, '20170325115650', '55.7252854', '37.5734839'),
(837, '20170325122809', '55.7972335', '37.941240799999996'),
(838, '20170325124558', '55.36605834960938', '37.5069465637207'),
(839, NULL, '54.995295399999996', '82.9090853'),
(840, NULL, '55.7602146', '37.66319060000001'),
(841, NULL, '55.760215499999994', '37.6631834'),
(842, '20170325140734', '54.995275199999995', '82.90908189999999'),
(843, '20170325141614', '54.9953357', '82.9090935'),
(844, '20170325140131', '55.7602085', '37.6631727'),
(845, '20170325140131', '55.7602234', '37.6631365'),
(846, '20170325150149', '54.9954233', '82.9092434'),
(847, '20170325150209', '54.9954244', '82.909263'),
(848, '20170325151020', '54.995331799999995', '82.9091033'),
(849, '20170325140131', '55.7602037', '37.6632436'),
(850, '20170325142048', '54.995265499999995', '82.9090198'),
(851, '20170325142048', '54.995336099999996', '82.90912709999999'),
(852, '20170325154740', '54.995279599999996', '82.90905029999999'),
(853, '20170325165631', '55.734195042210104', '37.56509361031814'),
(854, '20170325165634', '55.73416657337978', '37.56512596796402'),
(855, '20170325165638', '55.734145243316796', '37.5652754474548'),
(856, '20170325165651', '55.73481398999998', '37.565296469999986'),
(857, NULL, '54.995308699999995', '82.9090939'),
(858, '20170325172155', '54.995259600000004', '82.9091042'),
(859, '20170325172155', '54.9953174', '82.9090435'),
(860, '20170325183058', '55.70419765482642', '37.75203133170468'),
(861, '20170325183203', '55.70415246344555', '37.751992692788086'),
(862, '20170325183437', '55.704107745558005', '37.751919492324795'),
(863, '20170325172155', '54.995324700000005', '82.9092074'),
(864, '20170325183709', '55.70402852760587', '37.75196464340196'),
(865, '20170325183709', '55.703985095596074', '37.7522133148801'),
(866, '20170325183709', '55.70396235730737', '37.752137151135884'),
(867, '20170325172155', '54.9952301', '82.9089372'),
(868, '20170325172155', '54.9953286', '82.90905649999999'),
(869, '20170325183709', '55.70410625432333', '37.75216360548933'),
(870, '20170325172155', '54.9952769', '82.90900289999999'),
(871, '20170325183709', '55.70417334188644', '37.752102648210744'),
(872, '20170325192329', '55.72501746875211', '37.578886682293216'),
(873, '20170325172155', '54.9953023', '82.90909570000001'),
(874, '20170325172155', '54.995302499999994', '82.9090542'),
(875, '20170325172155', '54.9952858', '82.90903709999999'),
(876, '20170325172155', '54.995298999999996', '82.9091079'),
(877, '20170325172155', '54.9952861', '82.90907120000001'),
(878, '20170325172155', '54.9952682', '82.909072'),
(879, '20170325172155', '54.995238699999994', '82.9089764'),
(880, '20170325172155', '54.995292799999994', '82.9090719'),
(881, '20170325172155', '54.995305800000004', '82.90909959999999'),
(882, '20170325172155', '54.9953073', '82.90906629999999'),
(883, '20170325172155', '54.9953126', '82.90910769999999'),
(884, '20170325172155', '54.995321499999996', '82.9091595'),
(885, '20170325172155', '54.9952812', '82.9091086'),
(886, '20170325172155', '54.9953353', '82.90919989999999'),
(887, '20170325172155', '54.995302599999995', '82.9090895'),
(888, '20170325172155', '54.9953119', '82.90907519999999'),
(889, '20170325172155', '54.995274599999995', '82.9090928'),
(890, '20170325172155', '54.995257699999996', '82.9090267'),
(891, '20170325172155', '54.995271499999994', '82.9090444'),
(892, '20170325172155', '54.995322599999994', '82.9090944'),
(893, '20170326003732', '54.9953031', '82.9090909'),
(894, '20170326004154', '54.995296599999996', '82.9091116'),
(895, '20170326014137', '54.995258199999995', '82.9089669'),
(896, '20170326014811', '54.9952884', '82.9090792'),
(897, '20170326014811', '54.995294599999994', '82.9090653'),
(898, '20170326030539', '54.995339799999996', '82.90902229999999'),
(899, '20170326031149', '54.9952642', '82.9090351'),
(900, '20170326031149', '54.995307499999996', '82.90909119999999'),
(901, '20170326031149', '54.995259399999995', '82.9089793'),
(902, '20170326033121', '54.9953256', '82.9091424'),
(903, '20170326033128', '54.9953104', '82.90921999999999'),
(904, '20170326033128', '54.9952712', '82.9090497'),
(905, '20170326033128', '54.9953352', '82.9093369'),
(906, '20170326033128', '54.9952736', '82.9090157'),
(907, '20170326033128', '54.9953132', '82.90907399999999'),
(908, '20170326041149', '54.9953031', '82.9090454'),
(909, '20170326041918', '54.995309799999994', '82.9090714'),
(910, '20170326041918', '54.9953299', '82.909075'),
(911, '20170326041918', '54.995257099999996', '82.90903039999999'),
(912, '20170326054553', '55.0346595', '82.91122659999999'),
(913, '20170326055000', '55.034464799999995', '82.9118165'),
(914, '20170326055400', '55.0346282', '82.9111142'),
(915, '20170326060234', '55.0344446', '82.91184969999999'),
(916, '20170326060234', '55.0346821', '82.91121679999999'),
(917, '20170326060234', '55.034448999999995', '82.91186809999999'),
(918, '20170326061734', '55.034605299999996', '82.911226'),
(919, '20170326062623', '55.034637', '82.9111571'),
(920, '20170326062623', '55.0345395', '82.9110822'),
(921, '20170326062623', '55.034527499999996', '82.9113537'),
(922, '20170326062623', '55.034622', '82.91112389999999'),
(923, '20170326064010', '55.034610099999995', '82.9111988'),
(924, '20170326064010', '55.0346706', '82.9112457'),
(925, '20170326064010', '55.034617', '82.91117450000002'),
(926, '20170326064010', '55.034513200000006', '82.9110354'),
(927, '20170326064010', '55.034497699999996', '82.9115484'),
(928, '20170326064010', '55.034477499999994', '82.9114728'),
(929, '20170326064010', '55.0344675', '82.9118029'),
(930, '20170326064010', '55.0344614', '82.9117689'),
(931, '20170326064010', '55.0344355', '82.91101479999999'),
(932, '20170326064010', '55.0346276', '82.9112207'),
(933, '20170326064010', '55.034468499999996', '82.9118078'),
(934, '20170326064010', '55.0344826', '82.9109653'),
(935, '20170326064010', '55.0345223', '82.9113512'),
(936, '20170326064010', '55.034448399999995', '82.9118712'),
(937, '20170326064010', '55.034464299999996', '82.9110388'),
(938, '20170326064010', '55.034514200000004', '82.9113438'),
(939, '20170326064010', '55.034603999999995', '82.9111824'),
(940, '20170326094244', '56.741805799999995', '37.1720766'),
(941, '20170326102314', '56.741794899999995', '37.1721084'),
(942, NULL, '55.0344851', '82.9111544'),
(943, '20170326112301', '55.0344723', '82.9115207'),
(944, '20170326112301', '55.034447500000006', '82.9119011'),
(945, NULL, '55.0345963', '82.911261'),
(946, '20170326124322', '56.20732879638672', '37.54936981201172'),
(947, '20170326124434', '56.20726776123047', '37.54950332641602'),
(948, '20170326124655', '56.20733642578125', '37.5493278503418'),
(949, '20170326124917', '56.20735168457031', '37.54935073852539'),
(950, NULL, '56.741775399999995', '37.1721879'),
(951, '20170326143201', '55.026766699999996', '82.9209087'),
(952, '20170326143427', '55.0255787', '82.9171961'),
(953, '20170326143721', '55.026716099999994', '82.9208211'),
(954, '20170326143850', '55.026756199999994', '82.9207879'),
(955, '20170326143850', '55.026716099999994', '82.9208211'),
(956, '20170326144321', '55.026772099999995', '82.9208606'),
(957, '20170326144344', '55.0266511', '82.9208474'),
(958, '20170326144344', '55.0255787', '82.9171961'),
(959, '20170326144344', '55.026703499999996', '82.9208678'),
(960, '20170326145206', '54.6329745', '39.773246'),
(961, '20170326145223', '55.0267494', '82.92080899999999'),
(962, '20170326145225', '54.6330826', '39.7732314'),
(963, '20170326145232', '54.6329745', '39.773246'),
(964, '20170326145509', '55.0266511', '82.9208474'),
(965, '20170326145604', '55.0255787', '82.9171961'),
(966, '20170326145604', '55.0267494', '82.92080899999999'),
(967, '20170326145604', '55.0267622', '82.9208232'),
(968, '20170326145604', '55.0267494', '82.92080899999999'),
(969, '20170326145604', '55.0255787', '82.9171961'),
(970, '20170326145604', '55.0267494', '82.92080899999999'),
(971, '20170326151738', '55.0267622', '82.9208232'),
(972, '20170326152554', '55.0255787', '82.9171961'),
(973, '20170326152602', '55.0267542', '82.9208494'),
(974, NULL, '55.760186999999995', '37.663257'),
(975, '20170326152602', '55.0267494', '82.92080899999999'),
(976, '20170326152602', '55.0255787', '82.9171961'),
(977, '20170326152602', '55.0267622', '82.9208232'),
(978, '20170326152602', '55.0267494', '82.92080899999999'),
(979, '20170326152602', '55.0267826', '82.9208945'),
(980, '20170326152602', '55.0267494', '82.92080899999999'),
(981, '20170326152602', '55.0267622', '82.9208232'),
(982, '20170326152602', '55.0266993', '82.92090549999999'),
(983, '20170326152602', '55.0255787', '82.9171961'),
(984, '20170326152602', '55.0267103', '82.9209154'),
(985, '20170326195053', '55.91440582275391', '37.75856399536133'),
(986, '20170327031915', '54.9952707', '82.909041'),
(987, '20170327035720', '55.798052', '37.9725212'),
(988, '20170327060448', '56.741800399999995', '37.1721754'),
(989, NULL, '56.741800399999995', '37.1721754'),
(990, '20170327121644', '44.735872116774466', '37.7319091996411'),
(991, '20170327121748', '44.73587197555032', '37.73190904594308'),
(992, '20170327123642', '55.701610795726296', '37.46498866800247'),
(993, '20170327123712', '55.70180765537374', '37.46531023705449'),
(994, '20170327123738', '55.701981972908264', '37.46551582797981'),
(995, '20170327130723', '55.0345532', '82.9289836'),
(996, '20170327131443', '55.0266528', '82.9208372'),
(997, '20170327131443', '55.0267582', '82.9208245'),
(998, '20170327131443', '55.0267833', '82.9208175'),
(999, '20170327132538', '55.026756299999995', '82.92077979999999'),
(1000, '20170327133145', '55.026704699999996', '82.92091719999999'),
(1001, '20170327133145', '55.0345532', '82.9289836'),
(1002, '20170327133145', '55.0267561', '82.9208203'),
(1003, '20170327134658', '55.0345532', '82.9289836'),
(1004, '20170327134658', '55.0267646', '82.9208513'),
(1005, '20170327134658', '55.0266849', '82.9208544'),
(1006, '20170327134658', '55.0267969', '82.92085209999999'),
(1007, '20170327134658', '55.0267735', '82.9209103'),
(1008, '20170327134658', '55.0345436', '82.93699319999999'),
(1009, '20170327134658', '55.0267567', '82.92084489999999'),
(1010, '20170327153712', '55.833922478485185', '37.23904236248562'),
(1011, '20170327153720', '55.8339269086281', '37.23907671278026'),
(1012, '20170327153819', '55.83409563351372', '37.2344489820025'),
(1013, '20170327153855', '55.833876105133974', '37.23910503207471'),
(1014, '20170327153933', '55.833877413700534', '37.239073408208505'),
(1015, '20170327153950', '55.8339906861111', '37.23903909509396'),
(1016, '20170327154045', '55.83395625316626', '37.239062737663325'),
(1017, '20170327154152', '55.83399737318384', '37.23914199022147'),
(1018, '20170327154209', '55.833910161984434', '37.239004855481916'),
(1019, '20170327161415', '56.18514633178711', '36.97667694091797'),
(1020, '20170327134658', '55.026666299999995', '82.9208469'),
(1021, '20170327134658', '55.0345436', '82.93699319999999'),
(1022, '20170327134658', '55.0267561', '82.9208203'),
(1023, '20170327134658', '55.0267487', '82.9207876'),
(1024, '20170327180438', '55.54356666110077', '37.5616775279917'),
(1025, '20170327180458', '55.54360840770925', '37.56164526638191'),
(1026, '20170327180500', '55.5436111796157', '37.561642386416516'),
(1027, '20170327180508', '55.54360427664747', '37.561643570506355'),
(1028, '20170327180701', '55.54328383837728', '37.5626042787428'),
(1029, '20170327180701', '55.544452700553', '37.561859644187756'),
(1030, '20170327195826', '55.54444799747867', '37.56181068834945'),
(1031, '20170327203830', '55.85929424109802', '37.517395248446185'),
(1032, '20170327211232', '55.85929680448008', '37.51736980661508'),
(1033, '20170327220339', '54.995259999999995', '82.90909359999999'),
(1034, '20170327220343', '54.995324399999994', '82.9090973'),
(1035, '20170328082335', '55.836316157974764', '37.3092859841362'),
(1036, '20170328102746', '55.83335107386546', '37.922094771881625'),
(1037, '20170328102852', '55.833312815814516', '37.92233481568441'),
(1038, '20170328102907', '55.83332951406337', '37.92246684237872'),
(1039, '20170328103220', '54.995294099999995', '82.90918169999999'),
(1040, '20170328103241', '55.83336730162801', '37.92237673883198'),
(1041, '20170328103249', '55.833367851979006', '37.92238100039927'),
(1042, '20170328103255', '55.83336798553365', '37.92239128034471'),
(1043, '20170328103334', '55.83336750645662', '37.922394324151554'),
(1044, '20170328103406', '55.833354480716125', '37.92228210023523'),
(1045, '20170328103532', '55.833336520656246', '37.92248619774674'),
(1046, '20170328103556', '55.83332891715846', '37.922420344032176'),
(1047, '20170328103845', '55.83332837533271', '37.92241603789777'),
(1048, '20170328103854', '55.833361456148786', '37.92230901217007'),
(1049, '20170328111408', '55.747967', '37.6503036'),
(1050, NULL, '55.703096599999995', '37.731725999999995'),
(1051, '20170328122609', '55.7031074', '37.731763199999996'),
(1052, '20170328125248', '55.7031', '37.731723099999996'),
(1053, '20170328135726', '60.0338', '30.3957'),
(1054, '20170328170903', '55.7234121', '37.792067'),
(1055, '20170328175459', '55.63842683262486', '37.37163845588922'),
(1056, '20170328175459', '55.63848050659091', '37.37159648932639'),
(1057, '20170328182415', '56.18514633178711', '36.97667694091797'),
(1058, NULL, '55.7030807', '37.7317124'),
(1059, '20170328183311', '55.76029169347874', '37.66331765504087'),
(1060, '20170328191025', '55.85295678824597', '37.4461532877267'),
(1061, '20170328210520', '55.83335943849998', '37.92230205636867'),
(1062, '20170328212117', '60.00327682495117', '30.22226333618164'),
(1063, '20170328233408', '55.6450031', '37.5392887'),
(1064, '20170328233432', '55.6450117', '37.5393185'),
(1065, '20170328234539', '55.6450046', '37.5393112'),
(1066, '20170328234539', '55.645022999999995', '37.5393947'),
(1067, '20170329020700', '55.645025999999994', '37.5394168'),
(1068, '20170329020717', '55.645063799999996', '37.539423'),
(1069, '20170329031424', '55.0373449', '82.92917360000001'),
(1070, '20170329060407', '55.75396', '37.620393'),
(1071, '20170329091114', '54.9954266', '82.9093013'),
(1072, '20170329094942', '59.9512087', '30.3442892'),
(1073, '20170329122605', '55.0267567', '82.9208132'),
(1074, '20170329122607', '55.026756299999995', '82.92077979999999'),
(1075, '20170329122607', '55.0286688', '82.9327156'),
(1076, '20170329124158', '55.0267765', '82.92087930000001'),
(1077, '20170329124503', '55.7469099', '37.6509818'),
(1078, '20170329125513', '55.0286688', '82.9327156'),
(1079, '20170329130122', '55.026769699999996', '82.920806'),
(1080, '20170329130122', '55.026688899999996', '82.9208653'),
(1081, '20170329130122', '55.0286688', '82.9327156'),
(1082, '20170329132851', '54.1716194152832', '37.60080337524414'),
(1083, '20170329130122', '55.0266648', '82.9208235'),
(1084, '20170329133941', '55.0286688', '82.9327156'),
(1085, '20170329133941', '55.0267525', '82.9208201'),
(1086, '20170329133941', '55.0267312', '82.9208728'),
(1087, '20170329133941', '55.0267048', '82.9208779'),
(1088, '20170329150740', '55.026692999999995', '82.9208779'),
(1089, '20170329150740', '55.026775699999995', '82.92088129999999'),
(1090, '20170329150740', '55.026692', '82.92096370000002'),
(1091, '20170329153314', '59.8581751', '30.351952700000002'),
(1092, '20170329150740', '55.026742999999996', '82.9208551'),
(1093, '20170329150740', '55.026750799999995', '82.9208077'),
(1094, '20170329153853', '55.0267738', '82.920926'),
(1095, '20170329154351', '59.8581751', '30.351952700000002'),
(1096, '20170329153853', '55.0266981', '82.9208812'),
(1097, NULL, '55.703123', '37.7317241'),
(1098, '20170329164449', '55.85929830991934', '37.51737619193022'),
(1099, '20170329164530', '55.85931217357937', '37.51746363692917'),
(1100, '20170329164540', '55.85929416593743', '37.51738431040418'),
(1101, '20170329165409', '55.85931712265858', '37.517310676131956'),
(1102, '20170329165722', '55.85929575404106', '37.51736852550804'),
(1103, '20170329165729', '55.859293149234816', '37.51737549189653'),
(1104, '20170329165753', '55.85929208271727', '37.5173783463243'),
(1105, NULL, '55.7031068', '37.7317117'),
(1106, '20170329175038', '55.85929259289834', '37.51737696494943'),
(1107, '20170329175042', '55.85929883079035', '37.5173840852927'),
(1108, '20170329175103', '55.85931983325458', '37.51731151236668'),
(1109, '20170329205626', '55.910585499999996', '36.8605872'),
(1110, '20170329232228', '55.5292791', '37.1325199'),
(1111, '20170330054947', '56.18514633178711', '36.97667694091797'),
(1112, '20170330055624', '41.8369', '-87.6847'),
(1113, '20170330092504', '55.859333595786396', '37.51741448419152'),
(1114, '20170330092511', '55.85932242759736', '37.51749206692458'),
(1115, '20170330105843', '55.81908649643235', '37.495678644150196'),
(1116, '20170330133902', '44.72672761071142', '37.76183589854138'),
(1117, '20170330133913', '44.72673259011258', '37.761865218227584'),
(1118, '20170330133913', '44.73749690311099', '37.732500757968644'),
(1119, '20170330172027', '54.995324100000005', '82.9090787'),
(1120, '20170330191931', '54.8022298', '32.0982042'),
(1121, '20170330203906', '55.8899914', '37.4527708'),
(1122, '20170330213134', '56.09119119184285', '37.90129595736572'),
(1123, '20170331104643', '55.75396', '37.620393'),
(1124, '20170331131345', '55.75396', '37.620393'),
(1125, NULL, '54.9953023', '82.90905959999999'),
(1126, '20170331145547', '55.69003504999998', '37.531628189999985'),
(1127, '20170331151806', '56.18514633178711', '36.97667694091797'),
(1128, NULL, '56.18514633178711', '36.97667694091797'),
(1129, '20170331174812', '55.703114199999995', '37.731746199999996'),
(1130, NULL, '56.18514633178711', '36.97667694091797'),
(1131, '20170331235324', '55.74517822265625', '36.85313034057617'),
(1132, '20170401060617', '54.9953076', '82.90913979999999'),
(1133, '20170401064300', '64.5375353', '39.777043299999995'),
(1134, '20170401064323', '64.53752899999999', '39.7770425'),
(1135, '20170401064323', '64.537544', '39.777046'),
(1136, '20170401064323', '64.53752829999999', '39.7770728'),
(1137, '20170401064831', '64.5375299', '39.7770495'),
(1138, '20170401064853', '64.53748399999999', '39.7768656'),
(1139, '20170401072848', '55.8861605', '37.4445272'),
(1140, '20170401080922', '55.870807199999994', '38.7819974'),
(1141, '20170401062120', '54.9952806', '82.9091255'),
(1142, '20170401101850', '55.85929609983483', '37.51738311732382'),
(1143, '20170401101907', '55.85929537028232', '37.51738294851561'),
(1144, '20170401102349', '55.85928329870445', '37.51740246516477'),
(1145, '20170401102349', '55.85928945432432', '37.517385595688374'),
(1146, '20170401102349', '55.85929969219629', '37.51735768405715'),
(1147, '20170401113649', '54.995248', '82.90903879999999'),
(1148, NULL, '55.7030975', '37.7317288'),
(1149, '20170401124237', '55.75395965576172', '37.62039184570312'),
(1150, '20170401122623', '55.7031387', '37.7317264'),
(1151, NULL, '54.9952683', '82.9091128'),
(1152, '20170401164400', '55.026534899999994', '82.92099999999999'),
(1153, NULL, '55.7030837', '37.7317271'),
(1154, '20170401164403', '55.0353402', '82.93878459999999'),
(1155, '20170401164403', '55.026776399999996', '82.9208763'),
(1156, '20170401164403', '55.026534899999994', '82.92099999999999'),
(1157, '20170401184110', '55.638299399999994', '37.518347399999996'),
(1158, '20170401184110', '55.6383', '37.518355799999995'),
(1159, '20170401205151', '56.18514633178711', '36.97667694091797'),
(1160, '20170402013530', '55.76052787326197', '37.540762519497775'),
(1161, '20170402013551', '55.76052820271573', '37.54080934004912'),
(1162, '20170402013600', '55.76047968710069', '37.540996615162356'),
(1163, '20170402014709', '55.76046970898298', '37.541132953746846'),
(1164, '20170402014722', '55.760524864354046', '37.54073629833987'),
(1165, '20170402014807', '55.7605271885647', '37.54080305526862'),
(1166, '20170402015011', '55.760520232008844', '37.54059907726198'),
(1167, NULL, '54.9952769', '82.9091992'),
(1168, '20170402094316', '55.7328243759003', '37.634649451009246'),
(1169, '20170402094337', '55.732813860312945', '37.6346236146636'),
(1170, '20170402102631', '59.90152017593398', '30.32243325643633'),
(1171, '20170402102635', '55.762110378306076', '37.66640536088516'),
(1172, '20170402134708', '55.7478915125762', '37.516006551488914'),
(1173, '20170402134714', '55.747891185475176', '37.516007107125326'),
(1174, '20170402134732', '55.747939388146875', '37.515907394236045'),
(1175, '20170402134755', '55.74795897910547', '37.51583369605261'),
(1176, '20170402134912', '55.74794727051264', '37.515863597677985'),
(1177, '20170402134914', '55.74796330923823', '37.5158155871286'),
(1178, '20170402134926', '55.74796293254157', '37.51581711493537'),
(1179, '20170402135045', '55.74796427293424', '37.51581407748125'),
(1180, '20170402135742', '55.8638331', '37.4428413'),
(1181, '20170402150836', '55.78838952777918', '37.38713278694159'),
(1182, '20170402150908', '55.77632892037865', '37.419764967593494'),
(1183, '20170402151834', '55.026798299999996', '82.9208719'),
(1184, '20170402173458', '55.86153511796972', '37.614503807362354'),
(1185, '20170402173603', '55.86157707846264', '37.61449657052843'),
(1186, '20170402173641', '55.86155718443149', '37.61451759477645'),
(1187, '20170402173641', '55.86151176795164', '37.61450890134827'),
(1188, '20170402173955', '55.861536072977835', '37.614426698482895'),
(1189, '20170402174030', '55.86150525819769', '37.61445370764187'),
(1190, '20170402174030', '55.861580679245165', '37.61454208757506'),
(1191, '20170402174357', '55.86164028020004', '37.61459887813956'),
(1192, '20170402183122', '54.9952641', '82.90905389999999'),
(1193, '20170402183125', '54.9952733', '82.9091191'),
(1194, '20170402184859', '54.995271699999996', '82.90905550000001'),
(1195, NULL, '55.69521098498404', '37.48438830502644'),
(1196, NULL, '55.73370342404746', '37.60241842352073'),
(1197, NULL, '55.73519136210903', '37.60698091563562'),
(1198, NULL, '55.736190303353986', '37.61004398772923'),
(1199, NULL, '55.736305620773074', '37.6103975876732'),
(1200, NULL, '55.6981345706364', '37.492115438586566'),
(1201, '20170402202058', '55.66441429679124', '37.453894778183965'),
(1202, '20170402202138', '55.664491141594446', '37.45375489723339'),
(1203, '20170402202141', '55.66447379325158', '37.45381112868375'),
(1204, '20170402202159', '55.66450553379226', '37.45372412657113'),
(1205, '20170402202219', '55.664400031961755', '37.45391993887019'),
(1206, '20170402184859', '54.9952804', '82.90902299999999'),
(1207, '20170402184859', '54.995282499999995', '82.90903829999999'),
(1208, NULL, '56.18514633178711', '36.97667694091797'),
(1209, '20170403064419', '56.18514633178711', '36.97667694091797'),
(1210, '20170403074006', '62.052229339583775', '129.71305615610322'),
(1211, '20170403102813', '55.7597', '37.6963'),
(1212, '20170403120124', '55.814743899999996', '37.7323594'),
(1213, '20170403121239', '55.712318232454486', '37.57509032072829'),
(1214, '20170403121242', '55.71231440319786', '37.57509725807774'),
(1215, '20170403121248', '55.71231325874529', '37.575099331448136'),
(1216, NULL, '55.7602793', '37.66321'),
(1217, '20170403130637', '56.18514633178711', '36.97667694091797'),
(1218, '20170403122301', '55.760273', '37.6631984'),
(1219, '20170403134928', '55.7602779', '37.6630803'),
(1220, NULL, '55.71232797791011', '37.57525543354954'),
(1221, '20170403160640', '53.34346877510004', '55.93764067409337'),
(1222, '20170403173231', '55.6187585', '37.6066645'),
(1223, '20170403173246', '55.6187586', '37.6066638'),
(1224, '20170403182941', '55.7659777', '38.663384799999996'),
(1225, NULL, '56.18514633178711', '36.97667694091797'),
(1226, '20170403183015', '55.766004599999995', '38.663322799999996'),
(1227, '20170403183015', '55.765965599999994', '38.663301'),
(1228, '20170403194233', '55.762130737304666', '37.603500358102856'),
(1229, '20170403194316', '55.762130737304666', '37.6035003657099'),
(1230, '20170403194542', '55.762130737304666', '37.603500366210916'),
(1231, '20170403201409', '55.17432194637145', '37.35696178836593'),
(1232, '20170403211055', '55.17092460153984', '37.36342443782164'),
(1233, '20170403225433', '55.74978637695312', '37.98852157592773'),
(1234, '20170403232455', '55.82128397382788', '37.055709962507436'),
(1235, '20170404001757', '56.36418914794922', '38.58608627319336'),
(1236, '20170404061340', '56.18514633178711', '36.97667694091797'),
(1237, '20170404095518', '55.7316559', '37.6687846'),
(1238, '20170404095919', '55.5294703', '37.1310233'),
(1239, '20170404120122', '55.6029184', '37.7330332'),
(1240, NULL, '55.0399599', '82.9426885'),
(1241, '20170404142110', '54.9749102', '82.8699617'),
(1242, '20170404124046', '56.18514633178711', '36.97667694091797'),
(1243, '20170404161001', '55.718434', '37.598549'),
(1244, NULL, '55.7031036', '37.7317203'),
(1245, '20170404165215', '55.7031022', '37.7317377'),
(1246, '20170404170334', '55.587987599624334', '37.43663580260079'),
(1247, '20170404170418', '55.58793851207183', '37.43661647944948'),
(1248, '20170404170735', '55.58793411707417', '37.43662792761657'),
(1249, '20170404180025', '55.7929065', '37.5298971'),
(1250, '20170404165215', '55.7031072', '37.731702899999995'),
(1251, '20170404195838', '54.995263', '82.9090564'),
(1252, '20170404212139', '55.9447345', '37.3492315'),
(1253, '20170404222244', '55.78433906999999', '37.30765530999999'),
(1254, NULL, '54.9952877', '82.9090986'),
(1255, NULL, '54.995335', '82.9090994'),
(1256, '20170405094728', '55.75396', '37.620393'),
(1257, '20170405103750', '55.7661162', '37.5284332'),
(1258, '20170405103915', '55.7664399', '37.535132'),
(1259, NULL, '55.0267991', '82.9207394'),
(1260, '20170405141231', '55.71150207519531', '37.97230529785156'),
(1261, NULL, '55.0267796', '82.9208'),
(1262, '20170405142552', '55.0266606', '82.92080759999999'),
(1263, '20170405142552', '55.0255787', '82.9171961'),
(1264, '20170405142552', '55.026762899999994', '82.92076929999999'),
(1265, '20170405142552', '55.026761', '82.9208636'),
(1266, '20170405142552', '55.0266606', '82.92080759999999'),
(1267, '20170405142552', '55.0255787', '82.9171961'),
(1268, '20170405142552', '55.0267434', '82.920776'),
(1269, '20170405142552', '55.026743499999995', '82.92086929999999'),
(1270, '20170405142552', '55.0266606', '82.92080759999999'),
(1271, '20170405150135', '55.771196715385116', '37.62710522222526'),
(1272, '20170405150136', '55.7703771149336', '37.6439036902155'),
(1273, '20170405150213', '55.776022876424214', '37.629842225090506'),
(1274, '20170405140652', '55.9758029', '37.909119499999996'),
(1275, '20170405150708', '55.0267494', '82.9208153'),
(1276, '20170405150708', '55.0267054', '82.9208262');
INSERT INTO `geopos` (`id`, `sess_id`, `lat`, `lon`) VALUES
(1277, '20170405160702', '55.70324425352673', '37.731786828143704'),
(1278, '20170405160702', '55.703227741761594', '37.73166957697624'),
(1279, '20170405140652', '55.9689762', '37.9020897'),
(1280, '20170405150213', '55.73576353039887', '37.64390562895876'),
(1281, NULL, '55.728380832076304', '37.59161031181581'),
(1282, '20170405195127', '55.1079397', '36.6428441'),
(1283, '20170405195127', '55.1055631', '36.6390843'),
(1284, '20170405195127', '55.0985753', '36.6377105'),
(1285, '20170405195127', '55.1074816', '36.6358783'),
(1286, '20170405195127', '55.1224339', '36.6420894'),
(1287, '20170405195127', '55.1007416', '36.634566'),
(1288, '20170406042039', '55.65056991577148', '37.56361770629883'),
(1289, '20170406043117', '55.0267956', '82.92083099999999'),
(1290, '20170406043121', '55.0267428', '82.92083099999999'),
(1291, NULL, '55.026791499999995', '82.92081689999999'),
(1292, NULL, '55.0267553', '82.9208136'),
(1293, NULL, '55.026746599999996', '82.920898'),
(1294, NULL, '55.0266113', '82.9209298'),
(1295, NULL, '55.0267565', '82.9208692'),
(1296, '20170406064330', '55.0267829', '82.92081689999999'),
(1297, '20170406064354', '55.0268071', '82.92078959999999'),
(1298, '20170406065312', '40.7127', '-74.0059'),
(1299, '20170406064354', '55.026767', '82.92080109999999'),
(1300, '20170406070313', '43.2274593', '76.9048967'),
(1301, '20170406070313', '43.2274567', '76.90490129999999'),
(1302, '20170406070313', '43.227457199999996', '76.9048906'),
(1303, '20170406081322', '55.73394012451172', '37.62435150146484'),
(1304, '20170406064354', '55.0267889', '82.92080279999999'),
(1305, '20170406064354', '55.0267565', '82.9208692'),
(1306, '20170406083139', '55.0268071', '82.92078959999999'),
(1307, '20170406114800', '55.760210199999996', '37.6632577'),
(1308, '20170406130937', '55.7343001', '37.610785'),
(1309, '20170406130937', '55.734308', '37.61069'),
(1310, '20170406132121', '55.734336199999994', '37.6107624'),
(1311, '20170406132158', '55.7343443', '37.6107613'),
(1312, '20170406132343', '55.7343088', '37.6107587'),
(1313, '20170406132343', '55.7343014', '37.610754799999995'),
(1314, '20170406132854', '55.734309100000004', '37.6108165'),
(1315, '20170406132927', '55.7343105', '37.6107432'),
(1316, '20170406132927', '55.7343019', '37.6107985'),
(1317, '20170406132927', '55.734299299999996', '37.610790699999995'),
(1318, '20170406132927', '55.7343438', '37.6107503'),
(1319, '20170406132927', '55.734338699999995', '37.6106944'),
(1320, '20170406133900', '55.734353199999994', '37.6108087'),
(1321, '20170406133900', '55.7342989', '37.6108475'),
(1322, '20170406134226', '55.7343515', '37.6110654'),
(1323, '20170406134421', '55.734316299999996', '37.6107826'),
(1324, '20170406134500', '55.7343133', '37.6107684'),
(1325, '20170406134500', '55.734317499999996', '37.6108054'),
(1326, '20170406135039', '55.7343492', '37.6108605'),
(1327, '20170406135039', '55.7343291', '37.610685499999995'),
(1328, '20170406135452', '55.7343384', '37.610811'),
(1329, '20170406135630', '55.7343389', '37.610799199999995'),
(1330, '20170406135630', '55.734299', '37.610807699999995'),
(1331, '20170406135630', '55.7343139', '37.6107891'),
(1332, '20170406140754', '55.7343464', '37.610811999999996'),
(1333, '20170406141003', '55.734301699999996', '37.6107809'),
(1334, '20170406141204', '55.734299799999995', '37.6107723'),
(1335, '20170406141412', '55.734299799999995', '37.610790900000005'),
(1336, '20170406141419', '55.7343335', '37.610816899999996'),
(1337, '20170406141457', '55.734353', '37.6108026'),
(1338, '20170406141500', '55.7343993', '37.610913'),
(1339, '20170406141538', '55.7343586', '37.6107939'),
(1340, '20170406141541', '55.7343566', '37.61079'),
(1341, '20170406141612', '55.7343723', '37.610914799999996'),
(1342, '20170406141628', '55.7343549', '37.610815099999996'),
(1343, '20170406141655', '55.7343129', '37.610764499999995'),
(1344, '20170406152505', '55.026726', '82.9208192'),
(1345, '20170406153038', '43.2378719', '76.9223983'),
(1346, '20170406153122', '43.2378407', '76.9230905'),
(1347, '20170406154142', '55.026726', '82.9208192'),
(1348, '20170406154435', '55.0255787', '82.9171961'),
(1349, '20170406154435', '55.0267774', '82.92077499999999'),
(1350, '20170406154435', '55.0255787', '82.9171961'),
(1351, '20170406154435', '55.026801000000006', '82.92074199999999'),
(1352, '20170406163255', '55.7343098', '37.610804099999996'),
(1353, '20170406163300', '55.7343089', '37.6107466'),
(1354, '20170406163315', '55.734314999999995', '37.6108009'),
(1355, '20170406163315', '55.734340499999995', '37.6107551'),
(1356, '20170406164146', '55.744254299999994', '37.5434953'),
(1357, '20170406164156', '55.7442576', '37.5435283'),
(1358, '20170406164207', '55.744256199999995', '37.543547'),
(1359, '20170406201252', '56.1209602355957', '38.14094161987305'),
(1360, '20170406211609', '55.744272300000006', '37.5435272'),
(1361, '20170406211614', '55.7442704', '37.5434632'),
(1362, '20170406211634', '55.744266499999995', '37.5434003'),
(1363, '20170406211640', '55.7442741', '37.5434785'),
(1364, '20170406211655', '55.744272900000006', '37.5434617'),
(1365, '20170406211712', '55.7442585', '37.5434255'),
(1366, '20170406232512', '55.7443336', '37.5436623'),
(1367, '20170406232518', '55.7443289', '37.5437003'),
(1368, '20170406232532', '55.744318299999996', '37.5437309'),
(1369, '20170406232545', '55.744327299999995', '37.5437088'),
(1370, '20170406232634', '55.7443016', '37.5435283'),
(1371, '20170406232650', '55.7443278', '37.5436232'),
(1372, '20170406232726', '55.7443238', '37.5436439'),
(1373, '20170406233516', '55.744347999999995', '37.5437642'),
(1374, '20170406233516', '55.7443205', '37.5436803'),
(1375, '20170406233520', '55.744332', '37.5436899'),
(1376, '20170407023859', '55.696037635012516', '37.505623930723885'),
(1377, '20170407023905', '55.69604128997933', '37.50562324602841'),
(1378, '20170407023919', '55.69604340377288', '37.50564765817072'),
(1379, '20170407023929', '55.696055655907976', '37.50566884808519'),
(1380, '20170407024028', '55.69604128929347', '37.50563127400894'),
(1381, '20170407042421', '55.03019714355469', '82.9204330444336'),
(1382, '20170407045130', '55.81211090087891', '37.34393310546875'),
(1383, '20170407073020', '55.8047007', '37.6300426'),
(1384, '20170407073043', '55.8089996', '37.6289162'),
(1385, '20170407081338', '54.761259499999994', '83.1062345'),
(1386, '20170407082816', '55.76927752019413', '37.607138509997526'),
(1387, '20170407082821', '55.76928937785901', '37.60711846974234'),
(1388, '20170407082829', '55.76926074378781', '37.60725796150584'),
(1389, '20170407082914', '55.76918676001916', '37.60693471250662'),
(1390, '20170407082918', '55.769245128325835', '37.60727278643795'),
(1391, '20170407100236', '55.69694519999999', '37.8084422'),
(1392, '20170407100312', '55.6969566', '37.8084533'),
(1393, '20170407100322', '55.6969459', '37.80845780000001'),
(1394, '20170407100341', '55.6969371', '37.8084718'),
(1395, '20170407100341', '55.6969432', '37.8084743'),
(1396, '20170407104958', '55.81977593169184', '37.60385700733683'),
(1397, '20170407111747', '54.995257699999996', '82.9090116'),
(1398, NULL, '55.7602099', '37.663257300000005'),
(1399, '20170407120550', '54.9953145', '82.9090257'),
(1400, '20170407122932', '54.995263099999995', '82.9090525'),
(1401, NULL, '55.7602087', '37.663237099999996'),
(1402, '20170407132720', '55.74411390884336', '37.54383566691302'),
(1403, '20170407132731', '55.7440967712568', '37.543831325636354'),
(1404, '20170407132738', '55.74424377292272', '37.543681833678846'),
(1405, '20170407131607', '55.7602099', '37.663257300000005'),
(1406, '20170407131607', '55.760210099999995', '37.663162299999996'),
(1407, '20170407134348', '55.74421681003248', '37.54394475374142'),
(1408, '20170407141744', '54.9952975', '82.9090362'),
(1409, NULL, '56.18514633178711', '36.97667694091797'),
(1410, '20170407175514', '55.703084399999995', '37.7316608'),
(1411, '20170407192239', '55.94354636442327', '37.896393269801784'),
(1412, '20170407200524', '55.633351671403496', '37.36227754901913'),
(1413, '20170407200529', '55.63333711250494', '37.36225646838599'),
(1414, '20170407200537', '55.633354347836274', '37.36225768366784'),
(1415, '20170407200708', '55.63334698073534', '37.36224972327303'),
(1416, '20170407200814', '55.6333558846182', '37.36227039955894'),
(1417, '20170407222523', '55.80815099668792', '37.49567419860565'),
(1418, '20170407222700', '55.808149076663405', '37.49568231858406'),
(1419, '20170407223116', '55.748595823764546', '37.42361872934503'),
(1420, '20170407223207', '55.748554870879886', '37.42369069503268'),
(1421, '20170407225637', '55.931709366091276', '37.18233077362753'),
(1422, '20170408073154', '55.53365365892872', '37.51789352242592'),
(1423, '20170408073154', '55.53361424769138', '37.5179853320396'),
(1424, '20170408083616', '55.71637373270115', '37.71612765313203'),
(1425, '20170408083829', '55.71737899300825', '37.70813617838651'),
(1426, '20170408084312', '55.4859365', '37.3078482'),
(1427, '20170408090330', '55.760202299999996', '37.6631932'),
(1428, NULL, '54.9952915', '82.9090648'),
(1429, '20170408113107', '55.87104336120212', '37.659237488831614'),
(1430, '20170408113115', '55.87105929563983', '37.659246992635325'),
(1431, '20170408114545', '55.87089429308505', '37.66624460184958'),
(1432, '20170408114624', '55.86833002588153', '37.66436342315989'),
(1433, '20170408141455', '55.0267656', '82.92085720000001'),
(1434, '20170408141455', '55.0255787', '82.9171961'),
(1435, '20170408141455', '55.026805499999995', '82.92076689999999'),
(1436, '20170408144108', '55.0255787', '82.9171961'),
(1437, NULL, '55.0255787', '82.9171961'),
(1438, '20170408154033', '55.026784199999994', '82.92078699999999'),
(1439, '20170408154327', '55.593184910937694', '37.05077287365861'),
(1440, '20170408154355', '55.0255787', '82.9171961'),
(1441, '20170408185129', '54.9952945', '82.909211'),
(1442, '20170408190856', '55.6691074', '37.758128'),
(1443, '20170408190929', '55.6699339', '37.7591905'),
(1444, NULL, '55.7031023', '37.731718099999995'),
(1445, '20170408204134', '55.9113991', '37.7217365'),
(1446, '20170408213108', '55.64786459086988', '37.33951022606994'),
(1447, '20170408213123', '55.64787606634368', '37.33971029536191'),
(1448, '20170408232531', '55.693488749808914', '37.960120063853246'),
(1449, '20170409061012', '55.9113991', '37.7217365'),
(1450, '20170409074836', '55.63517761230469', '37.8424186706543'),
(1451, '20170409074943', '55.63522338867188', '37.84273147583008'),
(1452, '20170409091217', '50.997654399999995', '39.489272'),
(1453, '20170409091729', '55.63520050048828', '37.84243011474609'),
(1454, '20170409091731', '55.63518142700195', '37.8424072265625'),
(1455, '20170409092112', '55.63520050048828', '37.84244918823242'),
(1456, '20170409092347', '55.63095855712891', '37.84967803955078'),
(1457, '20170409092347', '55.63521957397461', '37.84247207641602'),
(1458, '20170409092347', '55.63095855712891', '37.84967803955078'),
(1459, '20170409092347', '55.63522338867188', '37.84243392944336'),
(1460, '20170409092347', '55.63095855712891', '37.84967803955078'),
(1461, '20170409092347', '55.63519668579102', '37.84248733520508'),
(1462, '20170409092347', '55.63095855712891', '37.84967803955078'),
(1463, '20170409092347', '55.63516616821289', '37.84247589111328'),
(1464, '20170409092347', '55.63095855712891', '37.84967803955078'),
(1465, '20170409092347', '55.63521957397461', '37.84239196777344'),
(1466, '20170409092347', '55.63522338867188', '37.84273147583008'),
(1467, '20170409092347', '55.63519287109375', '37.8424186706543'),
(1468, '20170409092347', '55.63522338867188', '37.84273147583008'),
(1469, '20170409092347', '55.63095855712891', '37.84967803955078'),
(1470, '20170409092347', '55.63522338867188', '37.84273147583008'),
(1471, '20170409111144', '54.735592499999996', '20.5371945'),
(1472, '20170409115529', '55.69591620371533', '37.961374204953394'),
(1473, '20170409124547', '54.17159271240234', '37.60073471069336'),
(1474, NULL, '54.9953116', '82.90931169999999'),
(1475, '20170409134857', '54.9953143', '82.909066'),
(1476, '20170409135038', '54.995329999999996', '82.9091613'),
(1477, '20170409124635', '54.19303131103516', '37.61775207519531'),
(1478, '20170409152553', '54.995314799999996', '82.9092258'),
(1479, NULL, '55.63519287109375', '37.84240341186523'),
(1480, '20170409201005', '55.7546493993243', '49.385822353747656'),
(1481, '20170409201103', '55.75464946779143', '49.385822563242314'),
(1482, '20170409201310', '55.7442172057191', '49.389782305919184'),
(1483, '20170409201425', '55.75654839351698', '49.38861885769661'),
(1484, '20170409201425', '55.75268724267191', '49.38598240625981'),
(1485, '20170409201425', '55.75283752320208', '49.38597013701242'),
(1486, '20170409201425', '55.75428530783983', '49.385851106335565'),
(1487, NULL, '54.9953059', '82.9090575'),
(1488, '20170409201425', '55.75464543007065', '49.38582288655073'),
(1489, NULL, '54.995267', '82.9089642'),
(1490, '20170409210816', '55.818894799999995', '37.2893761'),
(1491, '20170409210748', '54.9953094', '82.9092429'),
(1492, '20170409211215', '55.606314441538466', '37.51322270923076'),
(1493, '20170409211459', '54.9953126', '82.9091548'),
(1494, '20170409211459', '54.9953387', '82.90926089999999'),
(1495, '20170409213333', '54.9953619', '82.9089887'),
(1496, '20170409213333', '54.995305200000004', '82.9092423'),
(1497, '20170409215148', '54.9952526', '82.9089307'),
(1498, '20170409223438', '54.995299599999996', '82.90911700000001'),
(1499, '20170409223718', '54.995281399999996', '82.9090362'),
(1500, '20170409223728', '54.9952962', '82.90915199999999'),
(1501, '20170409225042', '54.995355599999996', '82.90926209999999'),
(1502, '20170409230343', '54.995318', '82.9092494'),
(1503, '20170409230747', '54.9953116', '82.90922830000001'),
(1504, '20170410063838', '54.995294799999996', '82.90924389999999'),
(1505, '20170410063846', '54.9953065', '82.9092549'),
(1506, NULL, '55.73094940185547', '37.47491073608398'),
(1507, '20170410063846', '54.995244899999996', '82.9089099'),
(1508, '20170410090528', '55.74895095825195', '37.53653335571289'),
(1509, '20170410090533', '55.75148010253906', '37.53203201293945'),
(1510, '20170410090533', '55.74895095825195', '37.53653335571289'),
(1511, '20170410090533', '55.75148010253906', '37.53203201293945'),
(1512, '20170410092151', '54.9953082', '82.9091782'),
(1513, '20170410104901', '55.7742283658476', '37.60942639662202'),
(1514, '20170410104908', '55.77420985337427', '37.60946192607239'),
(1515, NULL, '54.995284500000004', '82.90904359999999'),
(1516, NULL, '54.995305', '82.9092375'),
(1517, '20170410114711', '54.995278799999994', '82.909044'),
(1518, '20170410114810', '54.9953072', '82.9092031'),
(1519, '20170410115004', '54.995263699999995', '82.9090549'),
(1520, '20170410120802', '54.995264399999996', '82.9089707'),
(1521, '20170410130314', '54.9953246', '82.90925080000001'),
(1522, '20170410134100', '54.9953164', '82.9090883'),
(1523, '20170410135828', '55.70547486161476', '37.58614609871151'),
(1524, '20170410135903', '55.705559629316625', '37.586313305098734'),
(1525, '20170410143307', '54.9952968', '82.9091828'),
(1526, '20170410144926', '54.99527930000001', '82.9090532'),
(1527, '20170410144926', '54.995275299999996', '82.9090303'),
(1528, '20170410155138', '55.7604479', '37.6615837'),
(1529, '20170410155156', '55.7600924', '37.6620073'),
(1530, '20170410155201', '55.7601836', '37.6617532'),
(1531, NULL, '54.995289899999996', '82.90899399999999'),
(1532, NULL, '54.995282700000004', '82.90899619999999'),
(1533, NULL, '54.9952784', '82.9090035'),
(1534, '20170410174202', '55.72946451372965', '37.47339891455515'),
(1535, '20170410174210', '55.72984480912282', '37.4733021036694'),
(1536, '20170410174257', '55.73086416541186', '37.472449522073276'),
(1537, '20170410174257', '55.73126589790093', '37.47212107615246'),
(1538, '20170410175236', '55.7314792245953', '37.474782109569055'),
(1539, '20170410175424', '55.731524053776035', '37.47480722171554'),
(1540, '20170410175454', '55.731478833185506', '37.47478025587895'),
(1541, '20170410180252', '55.5292851', '37.1325296'),
(1542, '20170410192534', '56.0552615', '36.7230961');

-- --------------------------------------------------------

--
-- Структура таблицы `iblock`
--

CREATE TABLE IF NOT EXISTS `iblock` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `iblock`
--

INSERT INTO `iblock` (`id`, `name`, `type`) VALUES
(1, 'user', 'user'),
(2, 'login', 'login'),
(3, 'system', 'system');

-- --------------------------------------------------------

--
-- Структура таблицы `modules`
--

CREATE TABLE IF NOT EXISTS `modules` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `page_id` varchar(11) DEFAULT NULL,
  `desc` varchar(255) DEFAULT NULL,
  `pos` varchar(255) DEFAULT NULL,
  `html` varchar(1000) DEFAULT NULL,
  `params` varchar(255) DEFAULT NULL,
  `module_name` varchar(255) DEFAULT NULL,
  `temp` varchar(255) NOT NULL DEFAULT 'default',
  `chain` varchar(255) DEFAULT 'N',
  `chain_elements` varchar(255) DEFAULT NULL,
  `confirm_phrase` varchar(255) DEFAULT NULL,
  `reload` int(255) DEFAULT '1',
  `error_phrase` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modules`
--

INSERT INTO `modules` (`id`, `name`, `type`, `page_id`, `desc`, `pos`, `html`, `params`, `module_name`, `temp`, `chain`, `chain_elements`, `confirm_phrase`, `reload`, `error_phrase`) VALUES
(1, 'elem', 'elem', 'any', 'вывод определенных элементов на страницу', 'elem', NULL, NULL, 'elem', 'admin-default', 'N', NULL, NULL, 0, NULL),
(2, 'admin-login', 'login', 'any', NULL, 'admin-login', NULL, NULL, 'login', 'admin-login', 'N', NULL, NULL, 1, NULL),
(3, 'Главное меню', 'menu', 'any', 'Главное меню', 'main-menu', NULL, NULL, 'menu', 'default', 'N', NULL, NULL, 1, NULL),
(4, 'Регистрация', 'register', '1', 'Регистрация', 'pos-register', NULL, NULL, 'register', 'default', 'N', NULL, NULL, 1, NULL),
(5, 'Вход', 'login', 'any', 'Авторизация', 'login', NULL, NULL, 'login', 'default', 'N', NULL, NULL, 1, NULL),
(6, 'Активация аккаунта', 'register', 'any', 'Активация аккаунта при регистрации', 'pos-register-activate', NULL, NULL, 'register', 'activate', 'N', NULL, NULL, 1, NULL),
(7, 'Меню Личного кабинете', 'menu', 'any', 'Меню личного кабинета', 'lk-menu', NULL, NULL, 'menu', 'default', 'N', NULL, NULL, 1, NULL),
(8, 'Левое меню', 'menu', 'any', 'Левое меню', 'left-menu', NULL, NULL, 'menu', 'left-menu', 'Y', '10,11,12', NULL, 1, NULL),
(9, 'Главный контент ЛК', 'content', 'any', 'Главный контент ЛК', 'lk-main', NULL, NULL, 'content', 'lk-main', 'N', NULL, NULL, 1, NULL),
(10, 'Аккаунт', 'menu', 'any', 'меню Аккаунта', 'account-menu', NULL, NULL, 'menu', 'left-menu-etc', 'N', '', NULL, 1, NULL),
(11, 'Помощь', 'menu', 'any', 'меню Помощи', 'help-menu', NULL, NULL, 'menu', 'left-menu-etc', 'N', NULL, NULL, 1, NULL),
(12, 'Другое', 'menu', 'any', 'меню Другое', 'others-menu', NULL, NULL, 'menu', 'left-menu-etc', 'N', NULL, NULL, 1, NULL),
(13, 'Формы сбора информации', 'form', 'any', 'шаблоны форм и их обработка', 'form', NULL, '', 'form', 'default', 'N', NULL, 'Успешное сохранение', 1, NULL),
(14, 'пример html', 'html', 'any', 'пример html модуля', 'html-scope', '<div>\r\nHello <br />\r\n</div>\r\n', NULL, 'html', 'default', 'N', NULL, NULL, 1, NULL),
(23, 'admin-top-menu', 'menu', 'any', NULL, 'admin-top-menu', NULL, NULL, 'menu', 'admin-top-menu', 'N', NULL, NULL, 1, NULL),
(24, 'admin-left-menu', 'menu', 'any', NULL, 'admin-left-menu', NULL, NULL, 'menu', 'admin-left-menu', 'N', NULL, NULL, 1, NULL),
(25, 'admin-form', 'form', 'any', 'админская форма для работы в админке', 'admin-form', NULL, NULL, 'form', 'admin-form', 'N', NULL, 'Сохранение прошло успешно', 1, 'Произошла ошибка, обратитесь к администратору, ой вы и есть администратор. :('),
(26, 'admin-form-fields', 'form', 'any', NULL, 'admin-form-fields', NULL, NULL, 'form', 'admin-form-fields', 'N', NULL, 'Сохранение прошло успешно', 1, 'Произошла ошибка, обратитесь к администратору, ой вы и есть администратор. :('),
(27, 'pagination', 'pagination', 'any', 'Пагинация', 'pagination', NULL, NULL, 'pagination', 'default', 'N', NULL, NULL, 1, NULL),
(28, 'Приветствие на главной странице', 'html', 'any', NULL, 'html-privet-main', '<p>\r\nПриветственный модуль главной страницы\r\n</p>', NULL, 'html', 'default', 'N', NULL, NULL, 1, NULL),
(29, 'user-menu', 'menu', 'any', NULL, 'user-menu', NULL, NULL, 'menu', 'default', 'N', NULL, NULL, 1, NULL),
(30, 'admin-form-users', 'form', 'any', NULL, 'admin-form-users', NULL, NULL, 'form', 'admin-form-users', 'N', NULL, 'Сохранение прошло успешно', 1, 'Произошла ошибка, обратитесь к администратору, ой вы и есть администратор. :('),
(31, 'shortlink', 'shortlink', 'any', NULL, 'shortlink', NULL, NULL, 'shortlink', 'default', 'N', NULL, 'Сохранение прошло успешно', 1, 'Произошла ошибка, обратитесь к администратору, ой вы и есть администратор. :('),
(32, 'Мобильное меню', 'menu', 'any', NULL, 'right-menu', NULL, NULL, 'menu', 'right-menu', 'N', NULL, NULL, 1, NULL),
(33, 'Хлебные крошки', 'breadcrumbs', 'any', 'Хлебные крошки', 'breadcrumbs', NULL, NULL, 'breadcrumbs', 'default', 'N', NULL, NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `modules_type`
--

CREATE TABLE IF NOT EXISTS `modules_type` (
  `id` int(11) NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `version` varchar(255) DEFAULT NULL,
  `version_desc` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `modules_type`
--

INSERT INTO `modules_type` (`id`, `type`, `version`, `version_desc`) VALUES
(1, 'element', '1', NULL),
(2, 'list', '1', NULL),
(3, 'menu', '2', NULL),
(4, 'banner', '1', NULL),
(5, 'search', '2', 'улучшенный поиск с возможностью сохранять поиск при переходе по страницам'),
(6, 'map', '1', NULL),
(7, 'login', '1', NULL),
(8, 'register', '1', NULL),
(9, 'html', '1', NULL),
(10, 'form', '5', NULL),
(11, 'breadcrumbs', '1', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `pages`
--

CREATE TABLE IF NOT EXISTS `pages` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `model` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `temp` varchar(255) NOT NULL,
  `metakeys` varchar(255) DEFAULT NULL,
  `keywords` varchar(255) DEFAULT NULL,
  `index` int(11) NOT NULL DEFAULT '0' COMMENT 'главная ли',
  `active` varchar(11) NOT NULL DEFAULT 'Y' COMMENT 'активна ли',
  `menu_active` varchar(11) NOT NULL DEFAULT 'Y' COMMENT 'показывать ли в меню эту страницу',
  `menu_type` varchar(255) NOT NULL,
  `temp_folder` varchar(255) NOT NULL DEFAULT 'default',
  `menu_name` varchar(255) NOT NULL,
  `template_type` varchar(255) NOT NULL DEFAULT 'default',
  `modules` varchar(1) NOT NULL DEFAULT 'N',
  `alias` varchar(255) DEFAULT NULL,
  `permission` int(11) DEFAULT NULL,
  `content_type` varchar(255) NOT NULL DEFAULT 'N',
  `content_temp` varchar(255) DEFAULT 'default',
  `list_limit` int(3) DEFAULT '10'
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `pages`
--

INSERT INTO `pages` (`id`, `name`, `model`, `title`, `temp`, `metakeys`, `keywords`, `index`, `active`, `menu_active`, `menu_type`, `temp_folder`, `menu_name`, `template_type`, `modules`, `alias`, `permission`, `content_type`, `content_temp`, `list_limit`) VALUES
(1, 'main', 'pioneerdjschool', 'Pioneer DJ School', 'main', '', 'Pioneer Dj School, обучение на Dj, scratch, vinyl, базовый курс dj, продвинутый курс dj', 1, 'Y', 'N', 'main-menu', 'default', 'Главная', 'pioneerdj', 'Y', 'pioneer', 11, 'N', 'dafeult', 10),
(2, 'administrator', 'administrator', 'Административная панель', 'main', '', '', 0, 'Y', 'Y', 'admin-menu', 'administrator', 'Рабочий стол', 'default', 'Y', 'main', 3, 'N', 'default', 10),
(7, 'login', 'login', 'Вход', 'login', '', '', 0, 'Y', 'N', 'main-menu', 'default', 'Вход', 'default', 'N', 'login', 11, 'N', 'default', 10),
(8, 'personal', 'personal', 'Личный кабинет', 'personal', '', '', 0, 'Y', 'N', 'main-menu', 'default', 'Личный кабинет', 'personal', 'N', 'personal', 5, 'N', 'default', 10),
(9, 'register', 'register', 'Регистрация', 'register', '', '', 0, 'Y', 'N', 'main-menu', 'default', 'Регистрация', 'default', 'N', 'register', 11, 'N', 'default', 10),
(11, 'pages', 'administrator', 'Страницы сайта', 'main', '', '', 0, 'Y', 'Y', '', 'administrator', '', 'default', 'N', 'pages', 3, 'list', 'listPages', 10),
(12, 'cats', 'administrator', 'Категории', 'main', '', '', 0, 'Y', 'Y', '', 'administrator', '', 'default', 'N', 'cats', 3, 'N', 'default', 100),
(13, 'modules', 'administrator', 'Модули', 'main', '', '', 0, 'Y', 'Y', '', 'administrator', '', 'default', 'N', 'modules', 3, 'N', 'default', 10),
(14, 'users', 'administrator', 'Пользователи', 'main', '', '', 0, 'Y', 'Y', '', 'administrator', '', 'default', 'N', 'users', 3, 'N', 'default', 10),
(15, 'content', 'administrator', 'Контент', 'main', '', '', 0, 'Y', 'Y', '', 'administrator', '', 'default', 'N', 'content', 3, 'N', 'default', 50),
(16, 'fields', 'administrator', 'Дополнительные поля', 'main', '', '', 0, 'Y', 'Y', '', 'administrator', '', 'default', 'N', 'fields', 3, 'N', 'default', 10),
(21, 'katalog', 'katalog', 'Сервис генерирования укороченных ссылок', 'default', '', '', 0, 'N', 'Y', 'main-menu', 'default', 'Микросервис', 'default', 'N', 'katalog', 11, 'detail', 'service', 9),
(24, 'busket', 'busket', 'Корзина', 'busket', '', '', 0, 'N', 'N', '', 'default', '', 'default', 'N', 'busket', 11, 'N', 'default', 10),
(25, 'buys', 'administrator', 'Покупки', 'buys', '', '', 0, 'N', 'Y', '', 'administrator', '', 'default', 'N', 'buys', 3, 'N', 'default', 10),
(29, 'settings', 'settings', 'Настройка', 'settings', '', '', 0, 'Y', 'Y', '', 'default', '', 'personal', 'N', 'settings', 5, 'N', 'default', 10),
(100, 'news', 'news', 'Новости', 'default', 'блабла', 'лаблабла', 0, 'Y', 'Y', 'main-menu', 'default', 'Новости', 'pioneerdj', 'N', 'news', 11, 'list', 'listNews', 10),
(101, 'courses', 'courses', 'Курсы', 'courses', NULL, NULL, 0, 'Y', 'Y', 'main-menu', 'default', 'Курсы', 'pioneerdj', 'N', 'courses', 11, 'list', 'listCourses', 10),
(102, 'services', 'services', 'Услуги', 'services', NULL, NULL, 0, 'Y', 'Y', 'main-menu', 'default', 'Услуги', 'pioneerdj', 'N', 'services', 11, 'list', 'listServices', 10),
(103, 'contacts', 'contacts', 'Контакты', 'contacts', NULL, NULL, 0, 'Y', 'Y', 'main-menu', 'default', 'Контакты', 'pioneerdj', 'N', 'contacts', 11, 'list', 'default', 10),
(104, 'franchise', 'franchise', 'Франшиза', 'franchise', NULL, NULL, 0, 'Y', 'Y', 'main-menu', 'default', 'Франшиза', 'pioneerdj', 'N', 'franchise', 11, 'list', 'default', 10),
(105, 'preload', 'preload', 'Pioneer Dj School', 'preload', NULL, NULL, 0, 'Y', 'Y', '', 'default', '', 'preload', 'N', 'preload', 11, 'N', 'default', 10),
(106, 'video', 'video', 'Видео', 'video', NULL, NULL, 0, 'Y', 'Y', '', 'default', '', 'pioneerdj', 'N', 'video', 11, 'N', 'default', 10),
(107, 'djcentri', 'djcentri', 'DJ Центры', 'djcentri', NULL, 'DJ Центры Pioneer DJ School', 0, 'Y', 'N', 'main-menu', 'default', 'Dj центры', 'pioneerdj', 'N', 'djcentri', 11, 'N', 'default', 10);

-- --------------------------------------------------------

--
-- Структура таблицы `shortlink`
--

CREATE TABLE IF NOT EXISTS `shortlink` (
  `id` int(255) NOT NULL,
  `orig_url` varchar(255) NOT NULL,
  `edit_url` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=118 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `shortlink`
--

INSERT INTO `shortlink` (`id`, `orig_url`, `edit_url`) VALUES
(114, 'https://www.google.com/doodles/434th-anniversary-of-the-introduction-of-the-gregorian-calendar/', 'http://searchsiru.temp.swtest.ru/5473'),
(115, 'https://www.google.com/doodles/434th-anniversary-of-the-introduction-of-the-gregorian-calendar/', 'http://searchsiru.temp.swtest.ru/e9ac'),
(116, 'https://www.youtube.com/watch?v=iISqkvzIW8w/', 'http://searchsiru.temp.swtest.ru/f118'),
(117, 'http://a-pb.ru/postroenie-otdela-prodazh/?utm_source=facebook/', 'http://searchsiru.temp.swtest.ru/5d69');

-- --------------------------------------------------------

--
-- Структура таблицы `site_params`
--

CREATE TABLE IF NOT EXISTS `site_params` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `site_params`
--

INSERT INTO `site_params` (`id`, `name`, `value`, `type`) VALUES
(1, 'ajax', 'Y', 'ajax'),
(2, 'mail', 'mvlad91@mail.ru', 'main'),
(3, 'sitename', 'Protobox', 'main'),
(4, 'siteactive', 'Y', 'main'),
(5, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `middle_name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `login` varchar(255) DEFAULT NULL,
  `active` varchar(255) DEFAULT 'active',
  `status` varchar(255) DEFAULT 'active',
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `site` varchar(255) DEFAULT NULL,
  `domen` varchar(255) DEFAULT NULL,
  `group` varchar(255) DEFAULT 'registed',
  `permissions` varchar(255) DEFAULT '3',
  `hesh` varchar(255) DEFAULT NULL,
  `reg_date` timestamp NULL DEFAULT NULL,
  `last_online` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `sess_id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `middle_name`, `password`, `login`, `active`, `status`, `email`, `phone`, `site`, `domen`, `group`, `permissions`, `hesh`, `reg_date`, `last_online`, `sess_id`) VALUES
(7, 'Максим', 'Пятков', 'Владиславович', '2a1dd5bd9f4ff21631577d6f56845d4a', 'admin', 'Y', 'active', 'mvlad91@mail.ru', '89134754665', NULL, 'ilab', '1', '1', '21232f297a57a5a743894a0e4a801fc3', '2015-07-28 15:49:50', '2017-04-06 15:39:39', 'offline'),
(8, 'max', '', '', '0a59126e0b255f8bcb330b13f3027349', 'upsarin', 'Y', 'active', 'mvlad1991@mail.ru', NULL, NULL, NULL, 'registed', '3', 'cafc03e392c08d6d8363d2779b3ff65a', NULL, '2016-10-18 05:09:32', '03d7eb42d96f82af1e12bb11ac397546');

-- --------------------------------------------------------

--
-- Структура таблицы `user_groups`
--

CREATE TABLE IF NOT EXISTS `user_groups` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `permissions` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `user_groups`
--

INSERT INTO `user_groups` (`id`, `name`, `permissions`) VALUES
(1, 'admin', '1'),
(2, 'registed', '5'),
(3, 'moderator', '2'),
(4, 'guest', '11'),
(5, 'time-guest', '5'),
(6, 'executor', '5'),
(7, 'customer', '5');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `buys`
--
ALTER TABLE `buys`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Индексы таблицы `cats`
--
ALTER TABLE `cats`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Индексы таблицы `content`
--
ALTER TABLE `content`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Индексы таблицы `fields`
--
ALTER TABLE `fields`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `field_value`
--
ALTER TABLE `field_value`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `geopos`
--
ALTER TABLE `geopos`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `iblock`
--
ALTER TABLE `iblock`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Индексы таблицы `modules`
--
ALTER TABLE `modules`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Индексы таблицы `modules_type`
--
ALTER TABLE `modules_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Индексы таблицы `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Индексы таблицы `shortlink`
--
ALTER TABLE `shortlink`
  ADD UNIQUE KEY `ID` (`id`);

--
-- Индексы таблицы `site_params`
--
ALTER TABLE `site_params`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Индексы таблицы `user_groups`
--
ALTER TABLE `user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `buys`
--
ALTER TABLE `buys`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `cats`
--
ALTER TABLE `cats`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT для таблицы `content`
--
ALTER TABLE `content`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=79;
--
-- AUTO_INCREMENT для таблицы `fields`
--
ALTER TABLE `fields`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=136;
--
-- AUTO_INCREMENT для таблицы `field_value`
--
ALTER TABLE `field_value`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=149;
--
-- AUTO_INCREMENT для таблицы `files`
--
ALTER TABLE `files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1091;
--
-- AUTO_INCREMENT для таблицы `geopos`
--
ALTER TABLE `geopos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1543;
--
-- AUTO_INCREMENT для таблицы `iblock`
--
ALTER TABLE `iblock`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT для таблицы `modules`
--
ALTER TABLE `modules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT для таблицы `modules_type`
--
ALTER TABLE `modules_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT для таблицы `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=108;
--
-- AUTO_INCREMENT для таблицы `shortlink`
--
ALTER TABLE `shortlink`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=118;
--
-- AUTO_INCREMENT для таблицы `site_params`
--
ALTER TABLE `site_params`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT для таблицы `user_groups`
--
ALTER TABLE `user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
