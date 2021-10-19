#
# TABLE STRUCTURE FOR: users
#

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `first_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Имя пользователя',
  `last_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Фамилия пользователя',
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Почта',
  `phone` char(11) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Телефон',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `phone` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Пользователи';


INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (1, 'Pearl', 'Cartwright', 'dayna89@example.com', '870-784-613', '2008-06-17 01:17:20', '1970-11-06 12:01:46');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (2, 'Zakary', 'Parisian', 'ucasper@example.org', '(723)203-94', '1990-03-28 06:39:08', '1976-10-28 11:58:00');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (3, 'Alanis', 'Stroman', 'robel.talia@example.net', '1-076-227-0', '1983-04-21 12:50:24', '2000-05-10 21:44:52');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (4, 'Gussie', 'Carter', 'dooley.bernita@example.com', '03169934950', '1994-09-26 08:29:56', '1972-02-20 00:11:15');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (5, 'Emmalee', 'Carter', 'cdare@example.org', '1-845-294-4', '1977-04-12 08:21:06', '1974-12-27 15:48:49');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (6, 'Rosella', 'Hudson', 'berneice17@example.com', '1-510-347-3', '1986-01-02 03:22:54', '1981-11-01 19:07:50');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (7, 'Ellsworth', 'Cronin', 'atremblay@example.net', '489-051-285', '1994-08-07 09:01:07', '2017-04-02 23:14:36');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (8, 'Franco', 'Grimes', 'roberta.barrows@example.com', '1-241-224-3', '1990-12-30 15:45:47', '1996-12-17 18:38:59');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (9, 'Heath', 'Durgan', 'kuhic.orville@example.net', '897-907-741', '2013-08-23 17:38:45', '1990-05-01 19:51:16');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (10, 'Sidney', 'Hettinger', 'kihn.troy@example.net', '1-783-999-9', '1977-07-31 18:49:46', '1988-08-31 22:45:13');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (11, 'Jermain', 'Deckow', 'cebert@example.org', '261-387-039', '1983-08-22 04:27:41', '2000-12-27 20:14:18');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (12, 'Berta', 'Ratke', 'bobby.heathcote@example.org', '705-386-935', '2005-03-16 06:54:00', '2013-02-25 16:51:21');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (13, 'Aiyana', 'Feeney', 'victoria65@example.com', '+34(5)41117', '2008-12-30 01:14:27', '2002-12-05 02:06:41');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (14, 'Shanie', 'Bernhard', 'jstrosin@example.com', '06372451890', '2009-02-18 07:24:55', '2020-11-14 14:07:55');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (15, 'Retta', 'Watsica', 'mayer.eldred@example.net', '907.672.676', '2004-06-06 03:34:11', '1975-11-05 01:30:35');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (16, 'Bailee', 'Kuhn', 'torey.klocko@example.org', '385.736.615', '1993-11-26 07:34:29', '2004-05-30 09:44:54');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (17, 'Merle', 'Tillman', 'larson.richmond@example.org', '445.949.033', '1979-05-25 18:46:49', '1974-06-13 05:49:04');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (18, 'Constance', 'Kris', 'jayden.volkman@example.com', '+21(8)99968', '1992-08-27 09:34:07', '2010-04-15 02:11:51');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (19, 'Vita', 'Sipes', 'lizzie.goyette@example.net', '09544035870', '2004-01-15 19:19:41', '1977-12-19 10:14:06');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (20, 'Corine', 'Harris', 'neoma.braun@example.net', '+70(2)32705', '1989-05-01 22:04:22', '1973-08-13 15:14:26');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (21, 'Manuela', 'Krajcik', 'sandrine.mitchell@example.net', '897.701.512', '2011-08-27 18:54:25', '2010-02-04 23:43:05');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (22, 'Arlene', 'Lemke', 'crooks.mary@example.net', '1-265-638-9', '1977-10-13 00:14:09', '1982-08-19 01:52:52');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (23, 'Abby', 'Collier', 'bauch.gerardo@example.com', '238.943.618', '1979-05-23 23:51:54', '2017-10-02 09:39:06');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (24, 'Tiara', 'Hilpert', 'jake.johnson@example.org', '(458)083-62', '1976-07-16 05:38:41', '1991-02-24 10:26:47');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (25, 'Aracely', 'Walsh', 'erling.heidenreich@example.org', '094.440.095', '2019-10-10 10:44:34', '1995-09-29 15:44:22');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (26, 'Carroll', 'Schoen', 'edwardo62@example.net', '239-712-735', '2015-05-17 15:47:54', '1990-02-07 23:51:28');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (27, 'Jaunita', 'OKon', 'ustark@example.net', '1-252-270-4', '2016-09-13 20:24:02', '2016-04-03 14:54:04');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (28, 'Tess', 'Reichert', 'tkshlerin@example.net', '592-153-988', '1977-04-05 17:08:05', '2016-03-22 03:25:37');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (29, 'Nils', 'Harris', 'miller.janiya@example.com', '(874)927-79', '1983-12-16 18:34:43', '1988-01-05 20:34:19');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (30, 'Presley', 'Effertz', 'marty06@example.net', '008.612.063', '2000-07-05 19:34:11', '2012-03-25 23:52:52');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (31, 'Ethyl', 'Funk', 'maggio.jalyn@example.net', '064-963-234', '1982-08-07 06:01:57', '1975-10-11 07:04:58');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (32, 'Alana', 'Halvorson', 'jacky13@example.org', '(134)126-97', '1982-01-14 20:33:27', '2004-02-06 11:57:53');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (33, 'Hilario', 'Hansen', 'pullrich@example.com', '+89(9)90639', '1984-08-21 11:53:56', '1972-02-06 05:35:54');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (34, 'Louisa', 'Satterfield', 'gcrist@example.org', '07499592175', '1972-12-08 15:42:37', '1983-08-15 19:15:38');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (35, 'Louisa', 'Zboncak', 'schultz.marcelo@example.net', '029-411-467', '1995-04-07 05:23:48', '1976-07-30 20:55:56');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (36, 'Ariel', 'Lynch', 'kihn.edward@example.com', '(636)533-18', '1991-09-15 05:52:58', '2016-11-27 14:36:28');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (37, 'Buster', 'Schaefer', 'rebekah.willms@example.net', '918-708-098', '1973-12-24 06:17:29', '1992-08-07 03:44:02');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (38, 'Gina', 'Kemmer', 'west.tyreek@example.com', '514-816-745', '1983-05-04 22:59:27', '1991-11-25 18:14:12');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (39, 'Carmel', 'Tromp', 'nyasia.gusikowski@example.org', '+27(0)68047', '1974-11-22 01:02:42', '1991-03-03 05:21:52');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (40, 'King', 'Gibson', 'krajcik.arianna@example.org', '294.614.465', '1997-05-20 20:30:47', '1991-09-04 09:37:58');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (41, 'Jerry', 'McClure', 'collier.angelina@example.net', '1-728-404-5', '1970-07-25 10:58:58', '1971-10-10 02:54:34');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (42, 'Pearline', 'OKon', 'olin.nikolaus@example.com', '991.894.375', '2008-06-17 16:43:07', '2018-11-22 17:01:35');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (43, 'Beverly', 'Reinger', 'domenico33@example.org', '02348333309', '2001-06-21 15:29:43', '2020-07-16 16:34:02');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (44, 'Marcelo', 'Hane', 'wpfannerstill@example.net', '(017)358-46', '1979-06-11 00:31:51', '1995-12-24 17:42:58');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (45, 'Clare', 'Abshire', 'fernando.marvin@example.org', '(250)890-64', '1998-08-31 17:59:19', '1999-10-06 13:03:56');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (46, 'Erin', 'Mayer', 'kozey.leatha@example.org', '1-749-127-7', '2021-07-11 03:12:59', '1982-02-01 23:41:20');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (47, 'Hellen', 'Robel', 'noah44@example.org', '569-130-083', '1992-04-10 01:02:28', '2019-04-05 02:29:55');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (48, 'Hans', 'Bartell', 'ybernier@example.org', '755.543.646', '1979-12-29 18:46:53', '2017-06-07 06:22:19');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (49, 'Amelia', 'Hermiston', 'zkautzer@example.net', '801-835-470', '1979-10-25 23:56:40', '2006-07-15 03:33:59');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (50, 'Octavia', 'Johns', 'collier.kathryne@example.org', '1-981-672-0', '2012-12-25 12:12:11', '2020-10-02 02:32:57');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (51, 'Hank', 'Hirthe', 'claire.west@example.net', '(583)723-15', '1987-12-18 14:45:23', '1981-03-28 01:54:38');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (52, 'Alisa', 'Leannon', 'jacinthe.mills@example.com', '+72(5)28904', '1994-07-27 10:30:36', '1992-08-23 05:58:27');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (53, 'Dasia', 'Kub', 'jordy42@example.net', '(920)873-15', '2006-01-10 21:51:06', '1983-02-07 12:37:21');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (54, 'Amaya', 'Rohan', 'jose97@example.com', '03720288799', '2012-09-30 05:57:13', '1981-05-26 07:27:17');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (55, 'Tabitha', 'Russel', 'brittany.padberg@example.com', '498.963.429', '1997-10-18 10:28:28', '1997-02-24 21:56:59');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (56, 'Catharine', 'Dibbert', 'mayra.dubuque@example.com', '(162)536-03', '2014-04-13 03:21:48', '1995-01-03 22:38:07');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (57, 'Adrain', 'Treutel', 'omer.mayer@example.com', '(248)546-82', '1996-03-18 20:27:26', '2015-12-23 16:12:08');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (58, 'Adam', 'Kunde', 'rjacobi@example.com', '1-707-629-7', '1970-09-17 03:52:20', '2002-05-15 04:01:14');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (59, 'Alisa', 'Davis', 'fmonahan@example.com', '775-062-795', '1982-10-15 14:23:52', '1983-10-22 20:20:22');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (60, 'Brenda', 'Johnston', 'kmorissette@example.com', '797-451-955', '1976-11-09 02:44:03', '2011-07-02 14:04:02');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (61, 'Amalia', 'Watsica', 'colby13@example.org', '369-653-536', '1982-04-01 13:57:13', '2016-03-25 05:23:33');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (62, 'Jacquelyn', 'Rowe', 'erdman.raheem@example.net', '1-946-637-5', '1993-08-05 02:40:21', '2020-04-15 13:13:57');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (63, 'Tevin', 'Toy', 'oreilly.corine@example.net', '654-734-731', '1997-11-16 01:39:39', '1992-11-21 22:32:47');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (64, 'Gabrielle', 'Walker', 'pete87@example.net', '580.619.881', '2018-01-27 16:15:21', '1974-11-21 12:18:15');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (65, 'Mac', 'Grimes', 'hfadel@example.org', '(671)988-43', '2004-11-07 00:51:12', '2010-10-22 17:31:50');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (66, 'Marilie', 'Boehm', 'bcormier@example.net', '593.996.993', '2000-10-28 15:43:28', '2020-10-04 10:20:47');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (67, 'Elna', 'Schoen', 'armani35@example.com', '1-801-009-2', '1980-08-06 10:07:00', '1986-01-29 17:23:18');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (68, 'Brionna', 'Rempel', 'smitham.minerva@example.net', '425.552.290', '2006-08-17 15:28:29', '1990-06-04 15:19:51');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (69, 'Wellington', 'Stracke', 'pstreich@example.org', '1-963-699-7', '1970-02-24 08:50:31', '1993-01-26 16:37:25');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (70, 'Toni', 'Carroll', 'mmuller@example.com', '(109)742-48', '2016-01-03 19:04:56', '2013-11-15 11:01:49');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (71, 'Davin', 'Leannon', 'julian42@example.com', '508.703.336', '2005-07-13 01:01:54', '2000-01-28 00:51:33');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (72, 'Mariah', 'Labadie', 'assunta90@example.net', '574-222-985', '1983-06-21 13:42:52', '2006-12-23 17:00:29');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (73, 'Hobart', 'Crooks', 'mia21@example.com', '1-506-035-2', '1987-01-05 21:18:46', '1972-04-04 20:25:01');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (74, 'Astrid', 'Crist', 'bertha68@example.org', '08996778248', '2012-05-14 16:13:19', '2010-07-23 22:54:56');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (75, 'Heath', 'Hauck', 'darian11@example.com', '408.890.988', '1975-06-18 02:20:54', '1996-05-17 11:19:41');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (76, 'Emiliano', 'Lehner', 'xgislason@example.net', '175.743.862', '1998-07-27 05:14:20', '1973-03-09 17:05:15');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (77, 'Marcelle', 'Kessler', 'alfonso63@example.com', '035-184-994', '1980-06-08 18:30:48', '1977-01-06 15:55:44');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (78, 'Rahul', 'Luettgen', 'oran10@example.org', '04054491721', '1986-04-12 11:28:08', '2004-06-02 04:24:16');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (79, 'Mckenzie', 'Gaylord', 'ashtyn.ankunding@example.net', '1-251-854-6', '2010-02-06 12:45:52', '1994-04-08 08:35:57');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (80, 'Nicholas', 'Cummings', 'brown.jaylan@example.com', '1-790-158-7', '2005-05-26 17:16:16', '1987-05-17 19:35:11');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (81, 'Junius', 'Haley', 'ankunding.alena@example.com', '1-640-672-5', '1991-09-13 07:38:58', '1977-07-30 16:43:24');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (82, 'Darrel', 'Price', 'juliana38@example.com', '785-506-933', '1979-08-25 03:11:48', '2018-04-12 15:31:14');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (83, 'Nestor', 'Kozey', 'xlemke@example.net', '142-009-987', '1979-06-25 05:41:18', '1982-01-30 20:48:27');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (84, 'Marquise', 'Volkman', 'marge56@example.org', '388-618-340', '1988-04-22 18:44:26', '1983-10-07 04:20:12');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (85, 'Delfina', 'Becker', 'cara.jakubowski@example.com', '+58(0)20509', '1973-04-22 18:26:09', '2004-07-14 15:13:52');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (86, 'Aracely', 'Kautzer', 'arely.okeefe@example.com', '(187)988-85', '2015-05-22 19:58:01', '1991-06-28 06:41:10');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (87, 'Travis', 'Schaden', 'mraz.mike@example.net', '354-837-904', '1997-06-10 05:30:31', '2016-01-26 11:50:42');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (88, 'Oda', 'Waelchi', 'camilla18@example.org', '897.220.717', '2003-12-30 02:23:23', '1974-01-28 09:37:00');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (89, 'Yoshiko', 'Funk', 'aquigley@example.com', '664-512-785', '1980-03-01 23:13:31', '2003-11-21 17:56:42');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (90, 'Maudie', 'Sauer', 'enos58@example.net', '240-076-301', '1970-01-28 17:21:32', '1996-04-01 15:32:27');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (91, 'Jordi', 'Koepp', 'dino.bernier@example.net', '1-082-099-3', '2006-02-23 00:35:54', '2021-04-27 22:02:45');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (92, 'Lyda', 'Fritsch', 'tsporer@example.org', '1-120-873-9', '1995-12-23 09:55:53', '2019-07-15 21:00:21');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (93, 'Mara', 'Ebert', 'abdul44@example.net', '1-147-261-9', '1981-01-08 07:25:23', '2003-09-19 11:12:13');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (94, 'Johnpaul', 'Funk', 'lstanton@example.net', '+67(6)54716', '1971-10-04 03:16:50', '1983-08-08 10:54:13');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (95, 'Anastasia', 'Kuphal', 'giles.schulist@example.net', '447-109-110', '1985-02-06 22:29:46', '2010-07-20 07:02:11');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (96, 'Maeve', 'Jaskolski', 'genevieve65@example.org', '925.515.599', '1970-11-23 12:20:57', '2007-02-02 12:28:39');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (97, 'Ernie', 'Dooley', 'kacey.kulas@example.net', '576-867-346', '2014-10-03 17:28:33', '2013-01-23 04:02:41');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (98, 'Easton', 'Sporer', 'gottlieb.andreane@example.org', '521.449.582', '1982-09-30 04:00:14', '1994-05-02 00:42:24');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (99, 'Woodrow', 'Huel', 'xrodriguez@example.org', '448-599-597', '2007-04-22 04:10:58', '1983-11-02 10:28:18');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (100, 'Alison', 'Morissette', 'cory.koelpin@example.org', '(297)118-54', '1984-04-17 11:02:39', '1981-12-16 00:44:27');


#
# TABLE STRUCTURE FOR: media_types
#

DROP TABLE IF EXISTS `media_types`;

CREATE TABLE `media_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Название типа',
  `metadata` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'мета данные о файле' CHECK (json_valid(`metadata`)),
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Типы медиафайлов';

INSERT INTO `media_types` (`id`, `name`, `metadata`, `created_at`, `updated_at`) VALUES (1, 'et', NULL, '2004-03-05 14:03:11', '2009-03-18 20:56:23');
INSERT INTO `media_types` (`id`, `name`, `metadata`, `created_at`, `updated_at`) VALUES (2, 'consequatur', NULL, '2018-07-09 02:53:40', '1982-10-31 05:45:43');
INSERT INTO `media_types` (`id`, `name`, `metadata`, `created_at`, `updated_at`) VALUES (3, 'blanditiis', NULL, '1981-10-04 05:20:31', '1988-12-08 05:02:56');


#
# TABLE STRUCTURE FOR: media
#

DROP TABLE IF EXISTS `media`;

CREATE TABLE `media` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `filename` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Путь к файлу',
  `media_type_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на тип файла',
  `size` int(11) NOT NULL COMMENT 'Размер файла',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `filename` (`filename`),
  KEY `media_media_type_id` (`media_type_id`),
  CONSTRAINT `media_media_type_id` FOREIGN KEY (`media_type_id`) REFERENCES `media_types` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=151 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Медиафайлы';

INSERT INTO `media` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (1, 'provident', 1, 4394433, '2000-03-12 02:29:05', '1975-06-20 12:39:11');
INSERT INTO `media` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (2, 'qui', 2, 71571994, '1983-04-18 22:46:32', '2019-06-23 20:54:16');
INSERT INTO `media` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (3, 'explicabo', 3, 0, '1988-10-14 03:41:52', '1987-06-09 22:28:53');
INSERT INTO `media` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (4, 'veritatis', 1, 699005, '1985-12-03 17:59:01', '1976-03-30 09:25:12');
INSERT INTO `media` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (5, 'dicta', 2, 9217075, '1977-02-18 05:11:47', '1989-10-25 17:19:35');
INSERT INTO `media` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (6, 'et', 3, 22, '1984-05-04 09:17:50', '2013-08-03 18:52:19');
INSERT INTO `media` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (7, 'tempora', 1, 89790117, '1984-02-07 00:45:13', '1986-05-15 03:20:08');
INSERT INTO `media` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (8, 'quia', 2, 44394, '1989-04-25 10:02:31', '2005-06-18 15:41:07');
INSERT INTO `media` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (9, 'delectus', 3, 0, '2013-11-26 13:57:18', '1981-10-14 12:17:33');
INSERT INTO `media` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (10, 'sed', 1, 42, '1979-04-19 03:36:14', '2007-08-26 01:38:45');
INSERT INTO `media` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (11, 'numquam', 2, 5, '1987-01-13 01:22:06', '1994-07-27 02:41:23');
INSERT INTO `media` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (12, 'dolores', 3, 43502, '1981-10-31 11:01:29', '1987-07-13 19:19:32');
INSERT INTO `media` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (13, 'recusandae', 1, 1, '1971-01-28 10:48:43', '1980-01-11 10:26:50');
INSERT INTO `media` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (14, 'quae', 2, 873613797, '2014-07-02 14:04:03', '1993-11-13 01:36:21');
INSERT INTO `media` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (15, 'amet', 3, 78463150, '1972-08-19 00:27:32', '2021-01-11 01:29:01');
INSERT INTO `media` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (16, 'nesciunt', 1, 72143517, '1980-10-06 00:50:09', '2012-10-10 03:45:47');
INSERT INTO `media` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (17, 'illo', 2, 620121817, '1978-10-03 04:07:52', '1997-08-09 09:39:55');
INSERT INTO `media` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (18, 'facere', 3, 782317941, '2018-05-22 09:53:53', '1978-12-26 15:48:57');
INSERT INTO `media` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (19, 'quaerat', 1, 805, '1981-05-13 05:45:42', '1983-06-05 01:02:19');
INSERT INTO `media` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (20, 'nobis', 2, 0, '2000-09-02 07:34:59', '1976-01-10 04:19:26');
INSERT INTO `media` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (21, 'sint', 3, 8401, '2001-08-21 14:07:52', '2001-03-16 19:39:34');
INSERT INTO `media` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (22, 'expedita', 1, 38, '2003-08-06 04:30:58', '1972-02-18 21:52:02');
INSERT INTO `media` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (23, 'at', 2, 7626, '2006-10-09 21:35:04', '2007-09-02 18:02:17');
INSERT INTO `media` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (24, 'ad', 3, 3285, '2013-02-17 11:57:48', '2003-10-22 06:09:39');
INSERT INTO `media` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (25, 'rerum', 1, 1, '1978-08-30 04:45:26', '2018-03-07 03:24:32');
INSERT INTO `media` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (26, 'magni', 2, 0, '2012-07-07 04:09:31', '2013-12-23 12:56:14');
INSERT INTO `media` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (27, 'sit', 3, 872080855, '2011-10-18 10:47:09', '2003-01-06 13:43:47');
INSERT INTO `media` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (28, 'aliquid', 1, 2, '2006-08-26 17:41:47', '1981-05-14 02:47:03');
INSERT INTO `media` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (29, 'molestias', 2, 5722411, '1987-10-08 14:16:29', '1988-08-07 17:17:33');
INSERT INTO `media` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (30, 'ut', 3, 972, '1986-06-21 21:41:12', '1972-06-01 02:04:24');
INSERT INTO `media` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (31, 'quam', 1, 321229, '1970-03-30 02:14:51', '1992-11-20 02:38:27');
INSERT INTO `media` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (32, 'est', 2, 5589915, '2004-12-05 16:25:26', '2001-05-17 02:09:35');
INSERT INTO `media` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (33, 'eum', 3, 6678168, '1989-08-24 16:50:47', '1987-11-05 03:39:57');
INSERT INTO `media` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (34, 'optio', 1, 74269, '1971-12-30 14:36:06', '1992-01-04 05:12:34');
INSERT INTO `media` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (35, 'eligendi', 2, 812, '2005-02-13 02:33:25', '2010-09-17 06:56:40');
INSERT INTO `media` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (36, 'ratione', 3, 430569, '1980-06-05 23:32:20', '2011-01-07 20:06:28');
INSERT INTO `media` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (37, 'atque', 1, 315, '2019-11-21 20:51:01', '2016-07-16 09:32:51');
INSERT INTO `media` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (38, 'excepturi', 2, 1, '1981-09-11 18:09:29', '1970-05-31 05:08:13');
INSERT INTO `media` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (39, 'dolorum', 3, 78839646, '2020-08-31 13:22:28', '1996-12-06 09:50:32');
INSERT INTO `media` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (40, 'sapiente', 1, 15707786, '1985-10-09 23:21:52', '1982-03-26 18:41:50');
INSERT INTO `media` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (41, 'placeat', 2, 36011806, '1986-03-19 08:58:37', '2002-03-14 05:15:20');
INSERT INTO `media` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (42, 'ex', 3, 448735878, '2002-05-04 21:45:32', '2001-06-14 18:39:40');
INSERT INTO `media` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (43, 'aut', 1, 9927, '2019-06-09 18:07:38', '1990-07-03 11:57:38');
INSERT INTO `media` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (44, 'cupiditate', 2, 0, '1991-01-05 00:35:53', '1990-01-30 05:25:24');
INSERT INTO `media` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (45, 'earum', 3, 2058113, '1979-11-12 01:30:06', '1980-09-07 08:55:14');
INSERT INTO `media` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (46, 'voluptas', 1, 8959, '2007-12-17 04:19:02', '1999-06-11 02:39:38');
INSERT INTO `media` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (47, 'vel', 2, 0, '1986-06-20 09:20:05', '2001-01-04 22:21:22');
INSERT INTO `media` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (48, 'beatae', 3, 15, '2012-08-11 16:13:38', '1977-10-06 12:22:29');
INSERT INTO `media` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (49, 'nihil', 1, 2750488, '1994-04-25 16:11:35', '1977-02-07 21:58:23');
INSERT INTO `media` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (50, 'modi', 2, 682385, '1983-05-08 02:12:39', '2018-01-04 01:26:23');
INSERT INTO `media` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (51, 'corrupti', 3, 506, '1989-06-10 08:28:06', '1981-01-09 09:26:53');
INSERT INTO `media` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (52, 'itaque', 1, 898, '1992-11-16 12:02:31', '2007-12-06 11:52:14');
INSERT INTO `media` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (53, 'illum', 2, 0, '1989-08-05 22:14:13', '1986-02-28 06:55:45');
INSERT INTO `media` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (54, 'laudantium', 3, 21, '1978-10-03 20:49:32', '2008-07-13 05:30:39');
INSERT INTO `media` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (55, 'saepe', 1, 84, '2007-06-15 00:34:25', '2021-03-30 04:25:07');
INSERT INTO `media` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (56, 'esse', 2, 5725660, '1975-01-22 20:42:59', '2004-01-15 11:35:22');
INSERT INTO `media` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (57, 'officiis', 3, 5836, '2016-09-21 01:51:53', '1973-06-18 04:13:20');
INSERT INTO `media` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (58, 'natus', 1, 4, '2014-06-22 14:59:40', '2004-01-07 06:25:42');
INSERT INTO `media` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (59, 'enim', 2, 199603827, '2001-06-24 04:12:14', '2018-02-04 09:58:43');
INSERT INTO `media` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (60, 'repellat', 3, 2822, '2019-08-27 17:23:40', '2000-04-20 06:59:28');
INSERT INTO `media` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (61, 'repudiandae', 1, 41, '1995-07-20 03:26:40', '1998-06-09 23:56:31');
INSERT INTO `media` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (62, 'velit', 2, 0, '2008-12-24 21:34:53', '1996-11-15 08:15:40');
INSERT INTO `media` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (63, 'voluptates', 3, 994825, '1980-12-29 08:59:15', '2000-05-15 12:06:50');
INSERT INTO `media` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (64, 'temporibus', 1, 2343, '2021-01-29 15:11:21', '2012-04-30 22:20:04');
INSERT INTO `media` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (65, 'culpa', 2, 4, '1998-08-02 01:53:12', '2012-09-25 19:50:42');
INSERT INTO `media` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (66, 'non', 3, 0, '1988-01-30 13:20:21', '1979-12-06 02:46:51');
INSERT INTO `media` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (67, 'totam', 1, 68881421, '1979-09-11 19:37:15', '1970-05-23 13:20:18');
INSERT INTO `media` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (68, 'iure', 2, 20, '2019-08-30 13:50:57', '1982-06-18 22:33:57');
INSERT INTO `media` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (69, 'quasi', 3, 42, '2020-05-30 04:13:32', '2012-11-21 16:25:08');
INSERT INTO `media` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (70, 'a', 1, 417, '2012-09-15 20:43:59', '2013-07-18 07:05:46');
INSERT INTO `media` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (71, 'libero', 2, 97, '2005-04-13 14:31:34', '2004-04-06 23:25:52');
INSERT INTO `media` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (72, 'sunt', 3, 36132, '2001-04-01 08:51:03', '1978-01-02 18:47:06');
INSERT INTO `media` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (73, 'corporis', 1, 33988291, '1990-09-14 03:46:06', '2005-05-17 21:34:24');
INSERT INTO `media` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (74, 'ab', 2, 67763587, '1974-12-14 03:31:37', '1979-02-02 23:45:24');
INSERT INTO `media` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (75, 'possimus', 3, 2456012, '1975-10-21 08:21:08', '1971-03-05 04:32:27');
INSERT INTO `media` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (76, 'officia', 1, 18086671, '2000-11-19 15:04:33', '2014-12-06 00:34:09');
INSERT INTO `media` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (77, 'dolorem', 2, 6262, '2010-03-23 17:42:42', '2012-03-28 03:06:13');
INSERT INTO `media` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (78, 'maiores', 3, 14688, '1973-09-25 03:44:44', '1999-12-13 10:43:47');
INSERT INTO `media` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (79, 'minus', 1, 437718, '2000-06-07 10:43:34', '1978-12-05 12:12:04');
INSERT INTO `media` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (80, 'doloremque', 2, 2244024, '2005-11-18 08:47:14', '2003-06-13 10:50:15');
INSERT INTO `media` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (81, 'ducimus', 3, 0, '1974-07-22 20:27:51', '1997-09-20 08:35:10');
INSERT INTO `media` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (82, 'ipsa', 1, 21301805, '2015-04-27 05:48:25', '2003-02-20 12:24:28');
INSERT INTO `media` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (83, 'id', 2, 523, '1981-02-27 00:54:29', '1977-05-17 09:21:46');
INSERT INTO `media` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (84, 'quas', 3, 82007446, '1974-09-03 01:16:16', '1977-04-19 00:38:39');
INSERT INTO `media` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (85, 'architecto', 1, 4040, '1974-08-10 19:50:31', '1981-09-02 15:40:53');
INSERT INTO `media` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (86, 'fugit', 2, 9, '1983-06-19 23:57:38', '2010-05-29 21:34:31');
INSERT INTO `media` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (87, 'ullam', 3, 10299, '1999-07-26 19:16:21', '1976-03-05 16:13:51');
INSERT INTO `media` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (88, 'ipsum', 1, 7642, '1996-03-18 19:45:21', '1990-06-29 23:27:52');
INSERT INTO `media` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (89, 'adipisci', 2, 3419685, '2020-01-31 14:45:11', '2001-11-16 07:21:17');
INSERT INTO `media` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (90, 'voluptatibus', 3, 382719, '1983-03-01 19:42:46', '1970-08-01 17:43:19');
INSERT INTO `media` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (91, 'eos', 1, 28392011, '1999-07-09 04:06:01', '2009-06-08 16:14:22');
INSERT INTO `media` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (92, 'aspernatur', 2, 250735, '1998-03-02 23:09:03', '2015-02-09 15:31:11');
INSERT INTO `media` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (93, 'inventore', 3, 682, '1984-12-30 05:19:38', '2016-09-19 06:37:16');
INSERT INTO `media` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (94, 'facilis', 1, 45979997, '1996-10-08 03:52:19', '1995-08-15 01:12:51');
INSERT INTO `media` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (95, 'voluptate', 2, 4407, '2015-08-19 11:57:23', '1987-11-09 19:14:40');
INSERT INTO `media` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (96, 'cumque', 3, 9, '2013-02-03 17:10:59', '1978-10-26 11:28:23');
INSERT INTO `media` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (97, 'nostrum', 1, 9549989, '2013-12-23 18:49:29', '1977-02-12 13:36:58');
INSERT INTO `media` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (98, 'labore', 2, 556, '2003-10-05 00:15:43', '2013-07-20 19:16:28');
INSERT INTO `media` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (99, 'ea', 3, 4, '1981-07-26 09:45:10', '1984-03-29 12:41:57');
INSERT INTO `media` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (100, 'tempore', 1, 8393, '1998-08-16 21:31:55', '2008-06-29 03:52:50');
INSERT INTO `media` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (101, 'alias', 2, 450696391, '1987-06-13 11:52:46', '1979-11-15 08:32:55');
INSERT INTO `media` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (102, 'similique', 3, 3, '1987-06-22 01:12:08', '1981-06-25 08:12:57');
INSERT INTO `media` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (103, 'hic', 1, 0, '1982-09-07 04:25:58', '1975-03-19 04:55:16');
INSERT INTO `media` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (104, 'fugiat', 2, 42068, '1972-12-26 02:44:58', '1999-07-02 00:32:23');
INSERT INTO `media` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (105, 'distinctio', 3, 86423, '2017-06-10 13:06:34', '2010-05-17 16:56:26');
INSERT INTO `media` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (106, 'voluptatum', 1, 438038, '2008-03-02 12:20:07', '2012-05-31 08:04:27');
INSERT INTO `media` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (107, 'pariatur', 2, 0, '1974-06-12 21:16:54', '2018-01-02 10:25:50');
INSERT INTO `media` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (108, 'quo', 3, 644199564, '1985-01-30 21:44:38', '1989-06-26 05:10:15');
INSERT INTO `media` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (109, 'suscipit', 1, 372, '1984-01-03 11:25:18', '2006-04-24 05:52:14');
INSERT INTO `media` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (110, 'quis', 2, 80, '1973-03-25 05:01:12', '1975-09-04 02:28:56');
INSERT INTO `media` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (111, 'consequuntur', 3, 0, '2021-09-07 03:13:09', '2007-06-18 16:34:24');
INSERT INTO `media` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (112, 'deserunt', 1, 48433167, '2003-11-15 22:50:24', '1996-06-08 01:52:36');
INSERT INTO `media` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (113, 'quod', 2, 0, '2009-08-14 19:35:50', '2011-05-05 04:38:11');
INSERT INTO `media` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (114, 'voluptatem', 3, 2472179, '2013-09-17 23:14:15', '1987-09-21 00:56:13');
INSERT INTO `media` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (115, 'nam', 1, 85483730, '1975-07-16 18:49:00', '1985-07-07 06:10:52');
INSERT INTO `media` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (116, 'impedit', 2, 5, '1990-01-20 09:25:29', '1988-11-22 18:50:06');
INSERT INTO `media` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (117, 'iusto', 3, 547, '2002-02-04 00:39:16', '1979-06-09 19:08:11');
INSERT INTO `media` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (118, 'quisquam', 1, 115107, '1974-01-13 05:00:55', '1997-11-09 13:52:21');
INSERT INTO `media` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (119, 'incidunt', 2, 47436879, '1984-06-03 04:35:05', '2013-07-05 11:23:35');
INSERT INTO `media` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (120, 'molestiae', 3, 0, '2002-08-18 00:38:57', '2016-03-23 09:32:24');
INSERT INTO `media` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (121, 'praesentium', 1, 66, '2009-06-08 04:43:57', '1980-07-15 10:36:27');
INSERT INTO `media` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (122, 'in', 2, 235, '1981-03-11 14:22:36', '1981-05-08 04:26:50');
INSERT INTO `media` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (123, 'eius', 3, 1, '1992-03-09 06:01:25', '1993-09-30 02:19:29');
INSERT INTO `media` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (124, 'deleniti', 1, 50, '1976-09-22 02:54:49', '1973-02-23 16:20:26');
INSERT INTO `media` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (125, 'eaque', 2, 43154022, '2002-08-27 03:56:35', '2018-05-04 22:11:42');
INSERT INTO `media` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (126, 'vitae', 3, 1, '1996-01-14 10:04:00', '1971-09-06 01:47:46');
INSERT INTO `media` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (127, 'reiciendis', 1, 9, '1992-11-11 06:06:26', '2010-03-20 15:00:19');
INSERT INTO `media` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (128, 'omnis', 2, 1, '1973-01-13 06:21:05', '1983-07-03 21:31:09');
INSERT INTO `media` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (129, 'magnam', 3, 42, '2012-02-16 12:25:04', '1976-07-05 16:40:42');
INSERT INTO `media` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (130, 'dolore', 1, 5, '1978-12-03 10:34:13', '2016-06-23 23:05:14');
INSERT INTO `media` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (131, 'nulla', 2, 9, '2016-01-18 01:30:36', '1975-12-28 01:06:40');
INSERT INTO `media` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (132, 'nemo', 3, 122, '1972-12-20 03:04:52', '1993-11-09 22:33:02');
INSERT INTO `media` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (133, 'tenetur', 1, 7, '1984-12-26 07:29:45', '1978-12-24 21:27:06');
INSERT INTO `media` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (134, 'aperiam', 2, 19514, '2018-08-28 12:50:05', '1999-04-24 16:40:58');
INSERT INTO `media` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (135, 'rem', 3, 456099, '1976-06-24 05:10:05', '2009-04-08 02:01:09');
INSERT INTO `media` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (136, 'harum', 1, 53623, '2006-06-27 10:59:08', '2017-09-30 06:54:55');
INSERT INTO `media` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (137, 'quos', 2, 56271, '2013-10-27 02:02:30', '1973-06-12 16:13:17');
INSERT INTO `media` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (138, 'maxime', 3, 1, '1994-04-11 06:10:15', '1974-01-08 10:41:06');
INSERT INTO `media` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (139, 'exercitationem', 1, 17529, '1973-06-17 23:33:39', '1975-10-25 01:02:55');
INSERT INTO `media` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (140, 'consequatur', 2, 5663, '1972-09-14 16:21:12', '2019-12-28 05:33:17');
INSERT INTO `media` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (141, 'cum', 3, 889286, '1990-06-30 11:50:01', '2004-08-07 13:40:46');
INSERT INTO `media` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (142, 'quibusdam', 1, 0, '2015-05-20 18:33:11', '2010-03-06 22:24:42');
INSERT INTO `media` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (143, 'reprehenderit', 2, 0, '2013-09-30 12:58:52', '2008-02-24 03:56:17');
INSERT INTO `media` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (144, 'accusamus', 3, 5867, '1991-11-04 07:38:51', '2009-11-28 06:29:00');
INSERT INTO `media` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (145, 'dolor', 1, 173, '1983-10-26 00:04:00', '2010-02-19 05:57:32');
INSERT INTO `media` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (146, 'ipsam', 2, 9258, '2004-03-25 16:04:54', '1978-10-05 06:03:36');
INSERT INTO `media` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (147, 'laboriosam', 3, 0, '1997-11-21 07:29:50', '1971-03-09 15:30:04');
INSERT INTO `media` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (148, 'consectetur', 1, 2996, '2003-08-25 10:20:38', '2002-12-08 10:48:35');
INSERT INTO `media` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (149, 'autem', 2, 929879, '1993-06-18 03:11:37', '2003-08-12 17:26:35');
INSERT INTO `media` (`id`, `filename`, `media_type_id`, `size`, `created_at`, `updated_at`) VALUES (150, 'assumenda', 3, 3, '2016-10-06 14:03:02', '1975-06-19 05:38:48');


#
# TABLE STRUCTURE FOR: profiles
#

DROP TABLE IF EXISTS `profiles`;

CREATE TABLE `profiles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на пользователя',
  `gender` enum('M','F','?') COLLATE utf8_unicode_ci NOT NULL COMMENT 'Пол',
  `birthday` date DEFAULT NULL COMMENT 'Дата рождения',
  `photo_id` int(10) unsigned DEFAULT NULL COMMENT 'Ссылка на основную фотографию пользователя',
  `status` enum('online','offline','disabled') COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Текущий статус',
  `city` varchar(130) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Город проживания',
  `country` varchar(130) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Страна проживания',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  KEY `profiles_user_id` (`user_id`),
  KEY `profiles_photo_id` (`photo_id`),
  CONSTRAINT `profiles_photo_id` FOREIGN KEY (`photo_id`) REFERENCES `media` (`id`),
  CONSTRAINT `profiles_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Профили';



INSERT INTO `profiles` (`id`, `user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (1, 1, 'M', '1981-12-28', 1, 'online', 'Lake Rebekastad', '4', '2019-01-30 08:51:19', '2001-12-25 12:50:53');
INSERT INTO `profiles` (`id`, `user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (2, 2, 'M', '2017-04-04', 2, 'online', 'North Aleenton', '873', '1998-05-14 16:01:43', '2013-09-14 13:56:43');
INSERT INTO `profiles` (`id`, `user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (3, 3, 'F', '2004-11-11', 3, 'offline', 'Lake Jaylan', '12101', '1975-11-28 05:45:26', '1999-12-01 13:12:22');
INSERT INTO `profiles` (`id`, `user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (4, 4, 'F', '2020-08-31', 4, 'disabled', 'North Amaliaberg', '487', '1977-05-13 03:02:05', '1990-05-21 18:59:14');
INSERT INTO `profiles` (`id`, `user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (5, 5, 'M', '1980-10-17', 5, 'offline', 'Lemuelchester', '89481949', '2009-01-15 23:37:51', '1984-11-21 00:05:41');
INSERT INTO `profiles` (`id`, `user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (6, 6, '?', '1988-03-07', 6, 'disabled', 'Parisianland', '504238789', '2007-07-07 04:18:58', '1986-05-22 03:26:33');
INSERT INTO `profiles` (`id`, `user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (7, 7, '?', '2005-08-24', 7, 'offline', 'New Ada', '', '1996-07-09 02:26:18', '2017-11-25 12:47:55');
INSERT INTO `profiles` (`id`, `user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (8, 8, '?', '1995-06-02', 8, 'online', 'New Lorinemouth', '2', '1971-03-08 02:37:50', '1973-04-24 09:49:09');
INSERT INTO `profiles` (`id`, `user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (9, 9, 'F', '1995-07-18', 9, 'offline', 'Port Deonte', '48058', '1974-12-13 22:32:19', '2009-04-27 07:53:50');
INSERT INTO `profiles` (`id`, `user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (10, 10, '?', '2004-04-02', 10, 'disabled', 'East Samara', '58', '1980-10-04 08:30:06', '1974-12-09 18:08:56');
INSERT INTO `profiles` (`id`, `user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (11, 11, '?', '1986-05-12', 11, 'online', 'Port Wilmer', '618474008', '1979-10-01 06:42:36', '2017-06-15 18:57:06');
INSERT INTO `profiles` (`id`, `user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (12, 12, 'M', '2003-02-27', 12, 'offline', 'West Michelleburgh', '2851', '2003-09-29 01:17:53', '1987-10-05 18:36:41');
INSERT INTO `profiles` (`id`, `user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (13, 13, '?', '2014-08-13', 13, 'disabled', 'New Gisselleview', '1246', '1988-05-14 01:19:28', '1991-10-11 02:20:14');
INSERT INTO `profiles` (`id`, `user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (14, 14, 'M', '1991-04-09', 14, 'online', 'Lake Yolandabury', '5802614', '1993-03-21 10:21:15', '2002-07-21 13:35:27');
INSERT INTO `profiles` (`id`, `user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (15, 15, 'F', '1991-03-12', 15, 'offline', 'South Lillyborough', '8613', '2012-03-17 11:44:52', '2011-06-03 12:00:11');
INSERT INTO `profiles` (`id`, `user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (16, 16, 'M', '2011-11-04', 16, 'disabled', 'Williamsonshire', '', '2011-08-12 14:26:59', '1983-02-13 21:50:07');
INSERT INTO `profiles` (`id`, `user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (17, 17, 'F', '1982-01-30', 17, 'offline', 'Raymondstad', '152142395', '1970-07-23 05:53:22', '2009-01-03 19:13:42');
INSERT INTO `profiles` (`id`, `user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (18, 18, '?', '1991-04-14', 18, 'disabled', 'Sporertown', '401501', '2020-06-22 05:40:01', '1997-04-13 00:37:11');
INSERT INTO `profiles` (`id`, `user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (19, 19, '?', '2016-02-23', 19, 'online', 'Lake Nicholas', '63776091', '2008-11-02 22:57:33', '1973-10-07 03:36:47');
INSERT INTO `profiles` (`id`, `user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (20, 20, '?', '1972-09-01', 20, 'online', 'Kingbury', '317657', '1993-09-07 11:38:47', '2011-08-14 02:06:56');
INSERT INTO `profiles` (`id`, `user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (21, 21, '?', '1991-04-21', 21, 'online', 'Eloyhaven', '9997759', '1983-02-20 00:36:50', '2001-12-20 17:02:07');
INSERT INTO `profiles` (`id`, `user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (22, 22, '?', '1985-10-24', 22, 'online', 'Mohrstad', '12534', '1996-12-13 03:30:09', '1982-09-27 09:54:38');
INSERT INTO `profiles` (`id`, `user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (23, 23, 'F', '1985-06-22', 23, 'offline', 'West Lueburgh', '29725637', '2003-11-24 04:33:17', '1989-11-19 21:18:58');
INSERT INTO `profiles` (`id`, `user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (24, 24, 'M', '2009-12-19', 24, 'disabled', 'West Janetchester', '668238271', '1972-07-04 09:23:15', '1989-05-25 10:55:35');
INSERT INTO `profiles` (`id`, `user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (25, 25, 'M', '2018-11-25', 25, 'online', 'East Andreanne', '95557804', '1989-09-08 20:06:56', '1974-01-10 00:59:17');
INSERT INTO `profiles` (`id`, `user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (26, 26, 'F', '2021-06-06', 26, 'disabled', 'East Maya', '927', '2007-08-27 05:48:34', '2006-03-16 20:12:18');
INSERT INTO `profiles` (`id`, `user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (27, 27, '?', '1973-07-27', 27, 'online', 'Karleeton', '15', '1979-09-22 13:35:02', '2010-04-04 05:30:06');
INSERT INTO `profiles` (`id`, `user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (28, 28, 'F', '2009-02-04', 28, 'disabled', 'South Fionaville', '7811', '1990-01-01 00:17:42', '1989-02-03 02:33:17');
INSERT INTO `profiles` (`id`, `user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (29, 29, 'F', '2001-05-20', 29, 'online', 'East Sheila', '75727257', '1972-09-24 10:10:20', '1985-05-07 18:14:04');
INSERT INTO `profiles` (`id`, `user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (30, 30, '?', '1976-02-23', 30, 'offline', 'Willmsfurt', '8417845', '2012-12-10 15:38:28', '2014-05-30 04:17:33');
INSERT INTO `profiles` (`id`, `user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (31, 31, '?', '2013-03-01', 31, 'offline', 'Lebsackmouth', '8', '2004-12-01 17:12:13', '1974-07-19 14:04:11');
INSERT INTO `profiles` (`id`, `user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (32, 32, 'M', '1989-03-07', 32, 'offline', 'Rebaburgh', '2', '2020-05-30 00:24:51', '2020-01-06 18:47:29');
INSERT INTO `profiles` (`id`, `user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (33, 33, '?', '1977-07-19', 33, 'disabled', 'Marcelberg', '15', '2001-09-17 10:07:50', '2009-12-29 11:36:21');
INSERT INTO `profiles` (`id`, `user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (34, 34, 'F', '1974-09-19', 34, 'offline', 'Preciousstad', '7', '1998-03-10 15:53:47', '1975-05-30 11:00:28');
INSERT INTO `profiles` (`id`, `user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (35, 35, 'F', '2012-12-31', 35, 'disabled', 'Leschview', '69058', '1973-11-28 08:14:45', '1983-03-04 19:27:45');
INSERT INTO `profiles` (`id`, `user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (36, 36, '?', '1971-11-05', 36, 'offline', 'Lake Kieraberg', '', '1989-05-03 10:38:52', '1998-01-27 05:46:15');
INSERT INTO `profiles` (`id`, `user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (37, 37, 'F', '1982-06-01', 37, 'disabled', 'Breannamouth', '684865', '1976-03-01 08:37:37', '1981-08-07 04:43:09');
INSERT INTO `profiles` (`id`, `user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (38, 38, 'M', '1985-08-24', 38, 'online', 'Hellerburgh', '188', '2006-02-13 20:31:01', '1970-02-14 19:50:29');
INSERT INTO `profiles` (`id`, `user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (39, 39, '?', '2015-07-24', 39, 'online', 'Yvonnemouth', '46298', '1988-10-20 10:27:02', '1994-02-11 02:16:40');
INSERT INTO `profiles` (`id`, `user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (40, 40, 'M', '1973-03-31', 40, 'online', 'Beattyview', '', '2001-07-26 05:52:36', '2015-09-20 06:53:18');
INSERT INTO `profiles` (`id`, `user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (41, 41, 'M', '1993-03-02', 41, 'online', 'Robertoborough', '4', '1995-08-27 22:18:33', '1974-12-05 08:23:28');
INSERT INTO `profiles` (`id`, `user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (42, 42, 'F', '2005-05-17', 42, 'online', 'Itzelchester', '565', '2015-04-08 14:14:47', '2017-03-13 06:29:29');
INSERT INTO `profiles` (`id`, `user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (43, 43, 'M', '1980-07-29', 43, 'offline', 'Beattybury', '57', '1992-03-22 12:10:35', '2007-03-24 18:36:53');
INSERT INTO `profiles` (`id`, `user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (44, 44, 'F', '1988-06-17', 44, 'online', 'South Coryfurt', '5276', '1988-07-24 08:34:06', '1986-06-08 05:44:23');
INSERT INTO `profiles` (`id`, `user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (45, 45, 'M', '1997-06-25', 45, 'online', 'Whiteburgh', '48731', '2017-10-05 19:00:22', '2013-06-02 14:52:27');
INSERT INTO `profiles` (`id`, `user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (46, 46, 'F', '1979-10-26', 46, 'offline', 'Lake Queenietown', '210', '1976-06-11 18:57:30', '1971-10-24 03:02:56');
INSERT INTO `profiles` (`id`, `user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (47, 47, 'M', '1999-10-18', 47, 'online', 'Mullerside', '2604', '1970-09-29 19:51:15', '1983-11-07 23:30:59');
INSERT INTO `profiles` (`id`, `user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (48, 48, 'F', '1999-05-31', 48, 'online', 'Goldnerland', '712', '1971-06-05 00:29:48', '2012-10-27 17:44:08');
INSERT INTO `profiles` (`id`, `user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (49, 49, 'F', '1988-06-20', 49, 'offline', 'Beattyhaven', '17471', '2009-09-30 08:08:11', '1991-04-20 08:09:24');
INSERT INTO `profiles` (`id`, `user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (50, 50, '?', '2018-06-05', 50, 'disabled', 'Audiehaven', '', '1976-03-12 17:24:05', '1973-04-14 05:59:58');
INSERT INTO `profiles` (`id`, `user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (51, 51, '?', '1977-07-09', 51, 'disabled', 'Nicolasville', '3', '2019-11-26 11:01:54', '2013-03-02 21:37:28');
INSERT INTO `profiles` (`id`, `user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (52, 52, '?', '2006-07-22', 52, 'offline', 'New Effieside', '9', '1971-03-11 09:01:23', '1990-10-09 00:21:26');
INSERT INTO `profiles` (`id`, `user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (53, 53, 'F', '1990-09-13', 53, 'disabled', 'Nitzschefort', '63713826', '1985-11-18 00:57:55', '1987-01-05 11:26:07');
INSERT INTO `profiles` (`id`, `user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (54, 54, 'F', '1997-02-16', 54, 'offline', 'Yundtville', '66033', '2008-06-20 10:53:15', '1982-02-11 16:47:02');
INSERT INTO `profiles` (`id`, `user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (55, 55, 'M', '2013-09-22', 55, 'offline', 'Borerstad', '86719', '1988-07-03 12:44:34', '1993-12-27 15:10:31');
INSERT INTO `profiles` (`id`, `user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (56, 56, 'F', '1977-06-23', 56, 'offline', 'New Winstonfurt', '1', '2007-09-11 19:27:42', '1998-08-20 00:41:24');
INSERT INTO `profiles` (`id`, `user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (57, 57, '?', '2017-06-24', 57, 'disabled', 'North Kayli', '4', '1977-08-25 05:44:10', '1972-11-26 13:06:13');
INSERT INTO `profiles` (`id`, `user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (58, 58, 'F', '1989-10-20', 58, 'online', 'Klockomouth', '7427', '1972-10-27 06:10:56', '2002-07-05 12:36:12');
INSERT INTO `profiles` (`id`, `user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (59, 59, 'F', '1998-07-22', 59, 'disabled', 'Rosettaberg', '592808897', '2010-09-24 01:28:43', '2018-07-31 14:22:25');
INSERT INTO `profiles` (`id`, `user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (60, 60, 'M', '1975-09-04', 60, 'online', 'Patrickmouth', '', '1970-05-31 23:29:45', '2006-12-29 15:00:35');
INSERT INTO `profiles` (`id`, `user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (61, 61, 'M', '1986-01-06', 61, 'offline', 'Crooksberg', '34211', '2004-05-26 18:53:07', '2020-08-03 12:28:33');
INSERT INTO `profiles` (`id`, `user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (62, 62, 'M', '1971-06-15', 62, 'online', 'Irvingview', '', '2013-05-14 18:10:59', '1974-12-30 21:17:11');
INSERT INTO `profiles` (`id`, `user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (63, 63, '?', '1997-08-16', 63, 'offline', 'North Weldon', '40', '1981-06-05 08:32:46', '1981-11-13 17:37:54');
INSERT INTO `profiles` (`id`, `user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (64, 64, 'M', '2001-09-10', 64, 'disabled', 'Josianefort', '16039340', '1976-06-22 11:05:03', '1994-12-11 21:58:05');
INSERT INTO `profiles` (`id`, `user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (65, 65, 'M', '1984-08-10', 65, 'online', 'New Kattie', '3', '1986-03-27 10:48:57', '2020-05-10 20:48:07');
INSERT INTO `profiles` (`id`, `user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (66, 66, '?', '2010-12-22', 66, 'offline', 'Meggiechester', '5584', '1979-02-27 13:28:25', '1975-03-05 07:01:48');
INSERT INTO `profiles` (`id`, `user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (67, 67, 'M', '1980-05-11', 67, 'disabled', 'South Eleanoreside', '9568820', '2021-03-20 23:04:20', '2000-03-12 06:55:04');
INSERT INTO `profiles` (`id`, `user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (68, 68, 'M', '2017-04-26', 68, 'offline', 'Cronaside', '186216664', '1995-01-11 10:15:40', '1985-01-28 04:00:39');
INSERT INTO `profiles` (`id`, `user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (69, 69, 'F', '1993-03-15', 69, 'disabled', 'South Rachaelburgh', '33', '1977-09-13 22:05:11', '2020-05-20 12:24:12');
INSERT INTO `profiles` (`id`, `user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (70, 70, 'M', '1977-11-30', 70, 'offline', 'Philipside', '', '1999-08-28 14:05:33', '1990-07-27 21:46:23');
INSERT INTO `profiles` (`id`, `user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (71, 71, 'M', '2001-04-11', 71, 'disabled', 'West Amarashire', '51', '1991-02-15 19:56:35', '1999-08-03 00:50:35');
INSERT INTO `profiles` (`id`, `user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (72, 72, 'M', '1986-08-04', 72, 'online', 'Anastasiaview', '', '2017-07-28 22:31:58', '2020-04-06 05:58:04');
INSERT INTO `profiles` (`id`, `user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (73, 73, 'F', '1998-12-27', 73, 'online', 'Port Nyah', '31483452', '2010-03-28 20:45:36', '1980-10-25 14:28:55');
INSERT INTO `profiles` (`id`, `user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (74, 74, 'M', '2015-03-19', 74, 'disabled', 'Lillianside', '99968739', '2003-04-02 14:57:06', '1992-05-13 06:26:01');
INSERT INTO `profiles` (`id`, `user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (75, 75, 'F', '2002-11-21', 75, 'online', 'South Hopeshire', '8', '2011-06-23 09:15:09', '1985-08-20 05:30:51');
INSERT INTO `profiles` (`id`, `user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (76, 76, 'F', '2019-08-24', 76, 'online', 'Goodwinville', '18718', '1976-01-01 11:37:32', '2006-09-20 00:36:17');
INSERT INTO `profiles` (`id`, `user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (77, 77, 'M', '1987-06-22', 77, 'disabled', 'Cruickshankport', '62167569', '1971-08-09 06:07:31', '2001-05-15 12:02:52');
INSERT INTO `profiles` (`id`, `user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (78, 78, 'M', '1971-04-26', 78, 'online', 'New Lilianshire', '3074', '2012-08-29 08:52:01', '1993-10-30 06:30:53');
INSERT INTO `profiles` (`id`, `user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (79, 79, 'M', '1997-01-11', 79, 'offline', 'Townehaven', '5864', '1988-09-17 03:24:16', '1974-11-12 23:09:55');
INSERT INTO `profiles` (`id`, `user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (80, 80, '?', '1976-05-16', 80, 'offline', 'Lucianofort', '17298911', '1983-07-18 05:50:45', '2013-03-13 00:39:06');
INSERT INTO `profiles` (`id`, `user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (81, 81, 'F', '2016-03-28', 81, 'disabled', 'Romagueraborough', '784022577', '1980-07-17 15:07:11', '2004-03-30 20:23:38');
INSERT INTO `profiles` (`id`, `user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (82, 82, '?', '2010-11-13', 82, 'disabled', 'Caspermouth', '929', '1997-01-15 13:38:44', '2014-07-18 03:38:13');
INSERT INTO `profiles` (`id`, `user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (83, 83, 'F', '1987-06-01', 83, 'online', 'Kemmermouth', '909257', '1998-05-07 20:36:02', '2008-03-27 20:41:35');
INSERT INTO `profiles` (`id`, `user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (84, 84, '?', '1976-09-23', 84, 'online', 'Mabelstad', '1529', '1976-07-20 08:27:15', '2005-09-07 04:33:28');
INSERT INTO `profiles` (`id`, `user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (85, 85, 'F', '1978-08-11', 85, 'offline', 'North Isaacton', '69506', '2010-12-11 10:02:31', '1982-11-26 13:57:16');
INSERT INTO `profiles` (`id`, `user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (86, 86, 'F', '1998-12-31', 86, 'offline', 'Friedafort', '286951', '2014-05-16 08:56:34', '1974-12-22 08:21:50');
INSERT INTO `profiles` (`id`, `user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (87, 87, 'F', '1995-10-03', 87, 'online', 'Tremblaymouth', '9773854', '1980-11-26 23:24:07', '1993-09-01 23:25:39');
INSERT INTO `profiles` (`id`, `user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (88, 88, '?', '1992-06-10', 88, 'online', 'New Brendaside', '2525771', '2000-02-06 01:05:13', '1989-10-05 11:38:37');
INSERT INTO `profiles` (`id`, `user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (89, 89, 'F', '1986-10-25', 89, 'disabled', 'Port Katharinabury', '79', '1978-04-11 07:28:19', '2020-11-07 15:21:36');
INSERT INTO `profiles` (`id`, `user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (90, 90, 'M', '2010-08-23', 90, 'online', 'Port Miracleborough', '7', '2012-01-10 09:47:19', '1987-07-05 10:14:02');
INSERT INTO `profiles` (`id`, `user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (91, 91, 'M', '2001-11-03', 91, 'disabled', 'North Dock', '209504542', '2003-06-01 19:23:57', '2014-05-15 17:23:14');
INSERT INTO `profiles` (`id`, `user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (92, 92, 'M', '1995-09-13', 92, 'offline', 'Strackeview', '641', '1988-03-22 19:05:27', '2000-02-12 09:59:31');
INSERT INTO `profiles` (`id`, `user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (93, 93, '?', '1982-08-05', 93, 'online', 'East Ozella', '6984', '1994-01-14 14:33:35', '1991-09-11 07:38:21');
INSERT INTO `profiles` (`id`, `user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (94, 94, '?', '1998-11-01', 94, 'disabled', 'South Markusbury', '7', '1971-01-13 22:50:09', '1975-04-22 17:56:28');
INSERT INTO `profiles` (`id`, `user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (95, 95, '?', '2017-10-15', 95, 'online', 'Emiehaven', '', '1970-09-07 15:00:41', '1991-02-25 17:38:49');
INSERT INTO `profiles` (`id`, `user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (96, 96, 'F', '2019-08-02', 96, 'offline', 'North Lucinda', '1079970', '1999-06-30 23:54:58', '1987-02-11 00:35:58');
INSERT INTO `profiles` (`id`, `user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (97, 97, 'F', '2021-04-26', 97, 'online', 'Kristinabury', '366', '2006-11-19 14:40:37', '2013-11-22 20:50:35');
INSERT INTO `profiles` (`id`, `user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (98, 98, 'F', '1994-03-05', 98, 'disabled', 'Port Genovevamouth', '898814566', '1970-01-04 21:53:53', '2011-02-09 04:57:21');
INSERT INTO `profiles` (`id`, `user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (99, 99, 'M', '1990-12-27', 99, 'offline', 'South Erickaton', '7', '1999-09-01 01:30:47', '1999-02-21 20:24:07');
INSERT INTO `profiles` (`id`, `user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (100, 100, 'M', '1980-04-26', 100, 'disabled', 'East Rebeca', '27653', '1993-07-12 18:20:57', '2013-09-03 01:43:57');


#
# TABLE STRUCTURE FOR: friendship_request_types
#

DROP TABLE IF EXISTS `friendship_request_types`;

CREATE TABLE `friendship_request_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `name` varchar(150) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Название статуса',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Типы запроса на дружбы';


INSERT INTO `friendship_request_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (1, 'tenetur', '1977-04-29 02:44:50', '1978-08-12 23:02:02');
INSERT INTO `friendship_request_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (2, 'a', '2000-08-09 16:16:19', '2020-02-05 08:00:35');


#
# TABLE STRUCTURE FOR: communities
#


DROP TABLE IF EXISTS `communities`;

CREATE TABLE `communities` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор сроки',
  `name` varchar(150) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Название группы',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Группы';

INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (1, 'qui', '1996-04-05 10:16:19', '1972-02-22 22:54:45');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (2, 'quam', '2005-11-07 22:52:11', '1980-06-18 07:35:44');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (3, 'ipsum', '2011-07-24 05:10:03', '2000-06-02 20:23:33');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (4, 'voluptatem', '1983-12-25 11:36:25', '2009-09-29 07:53:06');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (5, 'earum', '1997-05-21 08:09:00', '2017-09-14 18:22:26');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (6, 'in', '2013-06-07 19:25:09', '1997-10-07 18:55:26');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (7, 'fugit', '1993-03-04 13:33:23', '1980-12-25 08:14:52');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (8, 'suscipit', '1999-06-20 13:30:27', '1970-04-03 00:51:13');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (9, 'voluptas', '1974-07-25 12:25:42', '1972-03-16 12:31:22');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (10, 'dolorem', '1982-01-07 05:55:40', '2018-07-25 18:54:46');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (11, 'sit', '1975-04-20 08:50:32', '1995-04-08 03:07:44');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (12, 'enim', '2018-09-29 02:17:29', '2002-09-16 14:26:01');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (13, 'aut', '2018-08-31 13:02:11', '1991-05-28 19:22:41');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (14, 'omnis', '1983-04-25 23:16:31', '2014-03-18 05:46:53');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (15, 'at', '2012-07-12 13:20:36', '2000-04-18 16:27:21');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (16, 'a', '2020-03-03 05:39:26', '1975-10-24 06:47:42');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (17, 'assumenda', '1978-05-12 15:12:08', '1987-03-07 13:55:29');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (18, 'rerum', '1981-05-18 12:49:43', '1980-07-09 23:34:29');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (19, 'sint', '2020-01-02 12:23:55', '1985-01-02 05:20:57');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (20, 'ut', '1993-02-10 16:40:46', '2013-07-12 02:02:42');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (21, 'temporibus', '1977-05-20 16:23:56', '2008-05-31 00:06:31');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (22, 'eaque', '2014-02-15 06:52:17', '2001-03-20 04:35:12');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (23, 'sequi', '2017-09-26 12:56:10', '1996-10-27 21:04:34');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (24, 'sed', '2005-05-17 05:19:40', '1978-04-20 10:06:49');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (25, 'rem', '1984-04-27 20:56:06', '2004-07-23 21:50:43');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (26, 'vel', '1992-09-28 19:31:22', '1970-12-22 05:51:16');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (27, 'maiores', '1975-09-07 18:11:57', '1999-04-12 07:16:30');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (28, 'velit', '2010-02-23 10:31:37', '2013-08-12 02:40:31');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (29, 'ullam', '2016-04-13 22:44:21', '2013-07-25 14:24:33');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (30, 'consectetur', '2011-02-11 20:05:54', '1982-12-05 06:18:48');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (31, 'quisquam', '2000-07-02 21:41:02', '1979-08-31 02:20:20');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (32, 'corrupti', '2019-07-12 06:19:41', '2021-01-06 04:16:34');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (33, 'non', '1995-08-02 04:13:39', '1973-12-13 11:05:21');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (34, 'saepe', '2001-02-19 04:14:19', '1990-02-16 09:25:51');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (35, 'ex', '1997-07-14 13:51:57', '1992-08-01 03:30:37');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (36, 'iste', '1987-09-05 21:49:37', '1988-12-13 00:03:15');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (37, 'eius', '1977-12-11 19:51:00', '2001-02-02 09:48:01');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (38, 'fugiat', '1974-05-24 19:01:47', '2008-02-07 11:09:45');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (39, 'minima', '1972-05-17 13:21:51', '1974-07-17 05:25:43');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (40, 'fuga', '1972-08-28 20:22:10', '1990-09-03 11:19:06');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (41, 'pariatur', '2012-06-04 09:27:21', '1979-12-13 13:45:19');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (42, 'iure', '2000-09-14 00:08:53', '2019-01-02 07:33:52');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (43, 'quaerat', '2008-07-05 10:42:00', '1987-03-12 18:54:55');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (44, 'necessitatibus', '2007-07-11 22:25:21', '2003-10-14 06:00:33');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (45, 'numquam', '2016-02-26 09:57:45', '1986-12-29 09:58:34');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (46, 'magni', '1982-09-12 10:59:18', '1980-02-13 23:10:55');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (47, 'harum', '1979-08-06 00:12:56', '2006-10-05 03:19:36');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (48, 'quis', '2017-05-05 00:26:24', '1976-03-27 06:37:52');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (49, 'nihil', '2021-07-10 10:43:13', '2006-08-15 22:31:13');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (50, 'perspiciatis', '2005-09-25 06:04:43', '1983-12-21 19:32:23');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (51, 'et', '2017-11-27 14:48:59', '2011-08-13 01:15:02');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (52, 'sunt', '2002-02-15 22:14:16', '2016-05-07 18:20:58');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (53, 'blanditiis', '1975-06-11 22:27:54', '2001-02-11 04:40:33');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (54, 'porro', '1976-07-01 00:51:38', '2001-05-06 13:15:37');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (55, 'accusantium', '1971-07-27 01:26:10', '1992-05-01 04:15:24');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (56, 'eligendi', '1973-09-23 10:53:08', '1996-09-17 21:18:58');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (57, 'nam', '1981-09-05 16:25:18', '1986-03-11 16:28:15');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (58, 'libero', '1974-09-21 13:32:02', '2004-09-20 22:29:13');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (59, 'architecto', '2016-10-16 22:15:37', '2020-05-11 03:08:56');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (60, 'quia', '1981-10-22 08:31:35', '2018-04-04 19:04:47');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (61, 'ea', '1996-04-01 22:09:43', '1986-04-12 11:37:01');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (62, 'distinctio', '1999-08-03 13:19:25', '1972-11-23 02:43:58');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (63, 'cupiditate', '1977-11-03 08:08:21', '2013-08-23 01:02:23');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (64, 'hic', '1980-05-21 05:26:55', '1992-01-28 00:27:37');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (65, 'reiciendis', '1989-07-27 18:42:48', '1982-04-25 13:45:42');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (66, 'officia', '1971-02-06 16:20:26', '1981-12-15 13:04:23');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (67, 'officiis', '1999-02-07 00:43:26', '1979-07-02 03:20:30');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (68, 'veritatis', '1983-08-19 16:13:13', '1991-09-29 10:20:16');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (69, 'ratione', '2012-12-05 01:17:20', '1976-06-02 14:43:23');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (70, 'iusto', '1978-11-03 23:24:49', '2008-07-21 19:01:52');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (71, 'placeat', '2005-10-25 00:09:02', '2004-09-20 02:20:06');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (72, 'dolores', '1984-08-12 00:27:55', '1989-10-18 20:00:40');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (73, 'quos', '1972-05-25 04:01:09', '2004-05-14 01:25:36');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (74, 'delectus', '1970-11-08 18:09:46', '2011-05-27 10:03:45');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (75, 'quidem', '1988-12-24 07:19:57', '2018-07-15 07:02:57');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (76, 'ipsam', '2017-09-04 00:39:12', '2004-07-12 15:19:08');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (77, 'eos', '2001-05-12 08:47:55', '2010-02-04 07:49:44');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (78, 'maxime', '1988-04-10 19:45:06', '2013-02-13 05:51:11');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (79, 'reprehenderit', '2010-02-01 10:03:34', '1979-10-03 23:27:58');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (80, 'dolor', '1978-12-06 04:17:35', '1972-07-14 07:52:54');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (81, 'est', '1991-08-06 07:30:54', '2016-09-05 17:26:55');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (82, 'ducimus', '1984-07-31 02:45:25', '2010-02-18 00:06:34');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (83, 'aperiam', '1989-02-10 07:32:33', '2006-04-15 21:03:43');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (84, 'occaecati', '2012-01-29 11:23:51', '2011-05-13 04:24:26');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (85, 'veniam', '2003-11-23 23:21:06', '2019-12-25 23:21:33');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (86, 'aspernatur', '2020-04-17 06:50:12', '1988-04-29 05:45:44');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (87, 'magnam', '1971-05-02 19:32:54', '2002-09-16 14:51:38');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (88, 'nisi', '2015-06-11 03:26:36', '1996-02-28 14:07:22');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (89, 'totam', '1993-11-21 13:34:45', '1975-11-23 12:32:29');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (90, 'vero', '1990-04-11 16:28:00', '1988-10-05 13:20:20');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (91, 'atque', '1982-09-24 01:48:07', '2011-12-16 12:51:41');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (92, 'nostrum', '1971-12-27 03:18:03', '1985-06-03 12:24:16');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (93, 'cum', '1984-12-13 18:48:53', '1988-10-24 21:08:13');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (94, 'expedita', '1993-05-12 04:50:17', '1973-11-14 01:28:42');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (95, 'debitis', '2006-08-09 05:28:27', '1980-11-09 03:38:49');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (96, 'laboriosam', '1979-03-05 10:12:33', '1978-08-13 17:29:27');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (97, 'culpa', '2017-05-18 05:00:02', '2016-10-07 12:57:04');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (98, 'soluta', '1982-10-05 17:19:41', '2009-08-03 13:08:39');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (99, 'deleniti', '1977-10-10 17:58:35', '2000-10-06 11:29:29');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (100, 'cumque', '1984-06-22 22:34:05', '2013-01-12 15:44:11');


#
# TABLE STRUCTURE FOR: communities_users
#

DROP TABLE IF EXISTS `communities_users`;

CREATE TABLE `communities_users` (
  `community_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на группу',
  `user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на пользователя',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  PRIMARY KEY (`community_id`,`user_id`) COMMENT 'Составной первичный ключ',
  KEY `communities_users_user_id` (`user_id`),
  CONSTRAINT `communities_users_community_id_id` FOREIGN KEY (`community_id`) REFERENCES `communities` (`id`),
  CONSTRAINT `communities_users_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Участники групп, связь между пользователями и группами';

INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (1, 1, '2010-10-11 04:34:59');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (2, 2, '1973-01-27 08:16:10');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (3, 3, '2006-03-15 08:27:49');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (4, 4, '1979-01-20 05:09:35');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (5, 5, '2004-05-14 03:23:47');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (6, 6, '2009-07-19 03:48:05');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (7, 7, '1980-09-17 13:47:13');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (8, 8, '1997-05-30 10:47:06');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (9, 9, '2016-07-29 23:44:41');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (10, 10, '2002-11-28 20:04:47');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (11, 11, '1985-05-30 00:19:25');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (12, 12, '2005-06-26 20:39:26');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (13, 13, '1994-01-30 07:31:15');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (14, 14, '2013-05-04 23:36:41');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (15, 15, '2002-12-20 11:48:52');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (16, 16, '1983-04-10 03:35:59');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (17, 17, '1994-07-22 03:39:20');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (18, 18, '1984-11-27 20:08:46');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (19, 19, '2005-04-03 21:56:40');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (20, 20, '2007-09-11 04:20:49');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (21, 21, '2003-12-19 06:30:25');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (22, 22, '2000-08-16 23:57:54');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (23, 23, '1977-05-06 10:00:33');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (24, 24, '2000-12-19 10:10:02');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (25, 25, '2004-07-23 17:59:45');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (26, 26, '1993-06-25 23:34:13');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (27, 27, '2003-02-01 21:51:54');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (28, 28, '1980-03-19 23:25:12');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (29, 29, '2019-10-23 15:53:13');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (30, 30, '2012-03-13 02:32:00');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (31, 31, '1987-12-01 10:27:04');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (32, 32, '1984-03-13 10:22:17');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (33, 33, '2002-08-31 21:32:15');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (34, 34, '1986-12-10 18:01:00');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (35, 35, '2014-04-30 13:33:30');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (36, 36, '2006-08-07 11:24:57');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (37, 37, '2003-07-12 08:46:57');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (38, 38, '1994-10-12 19:21:48');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (39, 39, '2014-09-24 12:30:09');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (40, 40, '1985-09-17 21:33:15');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (41, 41, '1986-09-25 04:37:01');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (42, 42, '1994-04-02 07:08:11');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (43, 43, '1989-04-06 17:00:22');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (44, 44, '1989-05-29 22:47:58');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (45, 45, '1998-11-11 22:27:20');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (46, 46, '1980-06-10 16:23:22');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (47, 47, '1980-05-06 07:57:34');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (48, 48, '1975-04-26 05:49:23');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (49, 49, '1985-08-20 09:29:06');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (50, 50, '2017-08-01 09:10:07');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (51, 51, '2010-02-20 07:05:13');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (52, 52, '1999-12-20 17:00:16');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (53, 53, '1978-01-21 16:46:48');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (54, 54, '1975-08-01 13:35:05');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (55, 55, '2007-02-15 11:56:44');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (56, 56, '2014-03-11 04:42:16');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (57, 57, '1982-02-18 01:33:14');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (58, 58, '1999-11-20 03:29:59');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (59, 59, '2005-03-08 19:26:15');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (60, 60, '2010-10-29 07:18:46');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (61, 61, '1977-12-27 04:27:20');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (62, 62, '1992-04-15 05:56:28');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (63, 63, '1990-03-04 10:16:14');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (64, 64, '1999-06-28 11:59:41');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (65, 65, '2009-11-30 08:04:56');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (66, 66, '2008-12-25 08:16:07');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (67, 67, '2007-05-19 05:06:59');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (68, 68, '2003-03-01 22:13:46');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (69, 69, '2008-04-18 12:34:24');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (70, 70, '2010-09-03 07:40:53');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (71, 71, '1981-08-21 10:35:09');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (72, 72, '2020-07-08 16:38:26');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (73, 73, '2019-08-20 17:44:39');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (74, 74, '2005-05-21 19:19:47');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (75, 75, '2016-11-03 20:49:41');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (76, 76, '1985-08-28 08:34:56');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (77, 77, '2020-11-09 19:15:50');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (78, 78, '2000-04-21 21:12:07');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (79, 79, '2021-01-04 05:52:01');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (80, 80, '1978-10-13 21:03:59');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (81, 81, '1983-08-05 12:37:46');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (82, 82, '2007-01-08 05:23:30');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (83, 83, '2008-05-01 23:12:04');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (84, 84, '1973-03-08 19:51:16');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (85, 85, '1972-11-26 09:31:16');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (86, 86, '2001-07-01 11:16:06');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (87, 87, '2001-11-15 00:30:03');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (88, 88, '1981-11-17 18:02:29');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (89, 89, '2012-03-05 12:02:39');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (90, 90, '2010-03-20 02:14:39');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (91, 91, '2006-01-09 11:00:22');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (92, 92, '2000-03-07 04:33:10');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (93, 93, '2005-01-21 01:13:13');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (94, 94, '1974-12-03 07:52:07');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (95, 95, '1974-04-16 11:19:00');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (96, 96, '1993-10-16 05:34:45');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (97, 97, '1998-04-29 02:20:47');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (98, 98, '1975-09-05 15:14:54');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (99, 99, '2013-07-14 03:16:57');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (100, 100, '2014-10-31 16:05:01');


#
# TABLE STRUCTURE FOR: friendship
#

DROP TABLE IF EXISTS `friendship`;

CREATE TABLE `friendship` (
  `user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на пользователя',
  `friend_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на друга пользователя',
  `request_type_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на тип запроса',
  `requested_at` datetime DEFAULT current_timestamp() COMMENT 'Время отправления приглашения дружить',
  `confirmed_at` datetime DEFAULT NULL COMMENT 'Время подтверждения приглашения',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`user_id`,`friend_id`),
  KEY `friendship_friend_id` (`friend_id`),
  KEY `friendship_request_type_id` (`request_type_id`),
  CONSTRAINT `friendship_friend_id` FOREIGN KEY (`friend_id`) REFERENCES `users` (`id`),
  CONSTRAINT `friendship_request_type_id` FOREIGN KEY (`request_type_id`) REFERENCES `friendship_request_types` (`id`),
  CONSTRAINT `friendship_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `friendship` (`user_id`, `friend_id`, `request_type_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (1, 1, 1, '2007-09-20 19:25:08', '1980-12-03 08:22:44', '2000-07-31 01:50:46', '1973-07-28 02:43:06');
INSERT INTO `friendship` (`user_id`, `friend_id`, `request_type_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (2, 2, 2, '2011-10-01 13:17:05', '1971-12-20 05:06:22', '2003-12-25 07:31:04', '1981-09-27 18:32:35');
INSERT INTO `friendship` (`user_id`, `friend_id`, `request_type_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (3, 3, 1, '2020-04-02 07:08:08', '1999-11-14 10:55:06', '2003-09-10 14:02:29', '2017-03-06 08:23:06');
INSERT INTO `friendship` (`user_id`, `friend_id`, `request_type_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (4, 4, 2, '1985-11-22 14:50:20', '2004-08-07 02:40:12', '2000-02-29 06:06:50', '1974-06-04 19:04:13');
INSERT INTO `friendship` (`user_id`, `friend_id`, `request_type_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (5, 5, 1, '2009-04-28 12:20:19', '1980-11-04 04:03:47', '2002-10-22 23:24:12', '2011-10-24 03:18:10');
INSERT INTO `friendship` (`user_id`, `friend_id`, `request_type_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (6, 6, 2, '1992-04-29 20:58:25', '2011-03-10 19:58:53', '2003-03-30 18:08:52', '1993-01-11 14:59:09');
INSERT INTO `friendship` (`user_id`, `friend_id`, `request_type_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (7, 7, 1, '1973-11-03 14:45:48', '1987-09-14 03:36:47', '1980-11-04 08:41:09', '1975-10-06 04:25:11');
INSERT INTO `friendship` (`user_id`, `friend_id`, `request_type_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (8, 8, 2, '2008-08-11 17:36:20', '2012-04-24 23:47:01', '1997-01-06 11:50:03', '1995-01-05 13:38:26');
INSERT INTO `friendship` (`user_id`, `friend_id`, `request_type_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (9, 9, 1, '1972-06-21 13:36:27', '2003-07-17 17:19:20', '1978-05-13 14:59:45', '1996-08-19 09:58:11');
INSERT INTO `friendship` (`user_id`, `friend_id`, `request_type_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (10, 10, 2, '2003-09-04 19:06:54', '1985-01-05 20:47:13', '2006-02-16 19:26:41', '1994-09-30 08:15:31');
INSERT INTO `friendship` (`user_id`, `friend_id`, `request_type_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (11, 11, 1, '2011-10-16 04:11:17', '1970-08-25 01:30:13', '2005-07-01 09:01:38', '2003-03-04 10:07:26');
INSERT INTO `friendship` (`user_id`, `friend_id`, `request_type_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (12, 12, 2, '1976-08-08 00:39:58', '2021-05-09 04:11:53', '1986-05-02 18:09:42', '1993-04-05 04:24:56');
INSERT INTO `friendship` (`user_id`, `friend_id`, `request_type_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (13, 13, 1, '1984-10-05 00:08:10', '1989-05-30 18:10:01', '2010-01-19 05:22:30', '1977-11-24 03:31:10');
INSERT INTO `friendship` (`user_id`, `friend_id`, `request_type_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (14, 14, 2, '1993-05-07 22:29:46', '2019-10-02 21:26:51', '1975-01-29 18:40:07', '1995-11-09 17:30:36');
INSERT INTO `friendship` (`user_id`, `friend_id`, `request_type_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (15, 15, 1, '1973-02-04 18:56:56', '1975-08-14 08:34:30', '2016-01-12 23:29:19', '1991-03-08 11:09:54');
INSERT INTO `friendship` (`user_id`, `friend_id`, `request_type_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (16, 16, 2, '1999-02-18 11:54:15', '1997-06-04 06:22:29', '1983-02-24 14:22:52', '2020-03-27 10:03:15');
INSERT INTO `friendship` (`user_id`, `friend_id`, `request_type_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (17, 17, 1, '2009-02-02 10:16:37', '1994-11-06 04:05:11', '1997-03-31 02:36:52', '1996-08-19 17:53:46');
INSERT INTO `friendship` (`user_id`, `friend_id`, `request_type_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (18, 18, 2, '2019-05-22 22:26:51', '2011-02-10 18:03:33', '1995-09-04 15:01:38', '2004-10-21 16:36:05');
INSERT INTO `friendship` (`user_id`, `friend_id`, `request_type_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (19, 19, 1, '1970-12-16 13:24:40', '2010-05-04 03:46:23', '1990-01-23 03:08:15', '1980-08-06 22:18:21');
INSERT INTO `friendship` (`user_id`, `friend_id`, `request_type_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (20, 20, 2, '1978-07-23 02:33:54', '1994-10-18 02:14:32', '1997-12-21 13:55:01', '1976-01-24 19:11:20');
INSERT INTO `friendship` (`user_id`, `friend_id`, `request_type_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (21, 21, 1, '1982-04-01 22:14:03', '1983-04-06 19:29:01', '1991-04-25 16:22:43', '2000-07-19 15:45:02');
INSERT INTO `friendship` (`user_id`, `friend_id`, `request_type_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (22, 22, 2, '2013-04-30 05:36:23', '1991-03-20 20:47:09', '1981-02-21 11:55:49', '1995-05-25 20:12:22');
INSERT INTO `friendship` (`user_id`, `friend_id`, `request_type_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (23, 23, 1, '2019-10-27 07:57:34', '2006-10-03 15:55:09', '1978-02-09 17:57:03', '2011-02-28 23:34:48');
INSERT INTO `friendship` (`user_id`, `friend_id`, `request_type_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (24, 24, 2, '1996-07-14 23:05:06', '2019-08-06 17:20:27', '1991-01-16 04:18:21', '1992-06-04 09:49:09');
INSERT INTO `friendship` (`user_id`, `friend_id`, `request_type_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (25, 25, 1, '2000-04-12 19:26:32', '1973-04-10 09:24:28', '1981-04-23 08:17:56', '1999-01-23 05:28:49');
INSERT INTO `friendship` (`user_id`, `friend_id`, `request_type_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (26, 26, 2, '1983-04-18 18:16:58', '1994-10-08 03:36:47', '1971-06-14 18:54:18', '2011-09-05 11:02:10');
INSERT INTO `friendship` (`user_id`, `friend_id`, `request_type_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (27, 27, 1, '1985-02-13 05:30:26', '2009-08-13 23:34:16', '2004-10-10 20:43:20', '2020-05-01 05:14:57');
INSERT INTO `friendship` (`user_id`, `friend_id`, `request_type_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (28, 28, 2, '1974-03-21 13:04:24', '1975-01-18 14:47:53', '2011-11-15 03:36:51', '1994-07-02 16:14:01');
INSERT INTO `friendship` (`user_id`, `friend_id`, `request_type_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (29, 29, 1, '1985-02-10 14:36:27', '1979-06-13 00:30:14', '1992-10-21 00:32:21', '1976-09-16 12:52:18');
INSERT INTO `friendship` (`user_id`, `friend_id`, `request_type_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (30, 30, 2, '2006-12-01 07:28:39', '1976-10-31 17:49:17', '1989-05-03 07:04:39', '2003-07-23 08:18:13');
INSERT INTO `friendship` (`user_id`, `friend_id`, `request_type_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (31, 31, 1, '1976-08-27 11:22:02', '2013-01-19 10:30:44', '1996-10-16 16:24:47', '2001-08-03 15:17:38');
INSERT INTO `friendship` (`user_id`, `friend_id`, `request_type_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (32, 32, 2, '1975-10-01 22:31:10', '1992-02-19 01:29:56', '1984-09-12 03:44:13', '1980-06-21 13:25:36');
INSERT INTO `friendship` (`user_id`, `friend_id`, `request_type_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (33, 33, 1, '1974-01-25 06:09:46', '1991-04-03 22:58:30', '1980-05-22 12:27:32', '2003-03-02 16:45:22');
INSERT INTO `friendship` (`user_id`, `friend_id`, `request_type_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (34, 34, 2, '1996-11-25 05:50:06', '2009-08-18 09:03:45', '1995-08-27 19:34:05', '2000-12-14 10:39:24');
INSERT INTO `friendship` (`user_id`, `friend_id`, `request_type_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (35, 35, 1, '1977-01-06 23:43:19', '1979-11-18 13:27:13', '1980-04-21 01:52:15', '2015-03-15 06:26:06');
INSERT INTO `friendship` (`user_id`, `friend_id`, `request_type_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (36, 36, 2, '2007-11-16 05:11:15', '2007-08-31 02:22:50', '1991-02-21 01:16:35', '2006-12-13 23:05:23');
INSERT INTO `friendship` (`user_id`, `friend_id`, `request_type_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (37, 37, 1, '2006-12-11 11:10:34', '1973-11-22 09:28:43', '2021-01-21 07:06:38', '2006-05-01 13:05:43');
INSERT INTO `friendship` (`user_id`, `friend_id`, `request_type_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (38, 38, 2, '1988-02-19 11:03:16', '2008-01-25 05:52:44', '2010-03-21 00:59:54', '1981-05-19 04:00:47');
INSERT INTO `friendship` (`user_id`, `friend_id`, `request_type_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (39, 39, 1, '1976-05-11 18:07:19', '2017-11-09 06:54:55', '2020-12-07 23:30:32', '2017-06-23 10:21:14');
INSERT INTO `friendship` (`user_id`, `friend_id`, `request_type_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (40, 40, 2, '1990-08-23 11:27:07', '1986-04-04 07:58:45', '2019-08-20 14:14:23', '1971-02-25 19:31:16');
INSERT INTO `friendship` (`user_id`, `friend_id`, `request_type_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (41, 41, 1, '2018-04-24 04:35:10', '1983-10-15 02:55:54', '1974-10-09 20:01:50', '1983-04-14 22:13:21');
INSERT INTO `friendship` (`user_id`, `friend_id`, `request_type_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (42, 42, 2, '2009-04-21 10:28:21', '1983-09-10 09:32:54', '1979-05-22 16:40:33', '2011-10-17 17:37:10');
INSERT INTO `friendship` (`user_id`, `friend_id`, `request_type_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (43, 43, 1, '2013-10-18 03:35:27', '2010-12-21 20:55:39', '1972-06-02 10:43:38', '2000-03-30 02:51:01');
INSERT INTO `friendship` (`user_id`, `friend_id`, `request_type_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (44, 44, 2, '1991-06-13 09:02:40', '2016-01-08 13:00:26', '2021-01-09 00:44:11', '1973-04-21 06:59:34');
INSERT INTO `friendship` (`user_id`, `friend_id`, `request_type_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (45, 45, 1, '1992-11-05 03:42:30', '1994-11-06 12:49:44', '2005-06-25 17:19:36', '1985-07-13 10:33:21');
INSERT INTO `friendship` (`user_id`, `friend_id`, `request_type_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (46, 46, 2, '1995-05-07 03:52:02', '1998-03-06 02:01:24', '1972-12-20 10:18:16', '2014-06-17 06:34:37');
INSERT INTO `friendship` (`user_id`, `friend_id`, `request_type_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (47, 47, 1, '1998-01-30 04:19:41', '1972-10-22 22:11:33', '2005-08-28 15:02:57', '1999-07-09 14:32:28');
INSERT INTO `friendship` (`user_id`, `friend_id`, `request_type_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (48, 48, 2, '1972-09-26 07:33:01', '2005-09-01 19:06:33', '2005-10-18 19:22:49', '1986-11-15 16:59:02');
INSERT INTO `friendship` (`user_id`, `friend_id`, `request_type_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (49, 49, 1, '2009-02-26 18:16:32', '1978-04-07 11:40:04', '1997-10-24 01:27:54', '1992-10-29 05:21:06');
INSERT INTO `friendship` (`user_id`, `friend_id`, `request_type_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (50, 50, 2, '1977-06-15 17:37:09', '1989-08-20 21:28:58', '2011-09-16 20:38:30', '1993-11-27 07:06:37');
INSERT INTO `friendship` (`user_id`, `friend_id`, `request_type_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (51, 51, 1, '1989-07-14 07:13:43', '1998-01-01 15:52:47', '2012-06-20 15:58:00', '2003-11-17 19:13:41');
INSERT INTO `friendship` (`user_id`, `friend_id`, `request_type_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (52, 52, 2, '1974-12-19 00:23:24', '1979-09-29 15:32:25', '1971-04-25 00:22:50', '1993-08-27 21:31:21');
INSERT INTO `friendship` (`user_id`, `friend_id`, `request_type_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (53, 53, 1, '1989-09-20 21:27:47', '2013-05-25 01:03:56', '2003-08-18 11:52:00', '2000-06-07 07:18:03');
INSERT INTO `friendship` (`user_id`, `friend_id`, `request_type_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (54, 54, 2, '2018-09-25 17:58:05', '2007-10-16 12:28:24', '1970-03-17 02:28:39', '1986-11-28 04:09:45');
INSERT INTO `friendship` (`user_id`, `friend_id`, `request_type_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (55, 55, 1, '2000-09-01 00:01:18', '1973-04-18 01:30:46', '1987-11-16 01:21:26', '2016-12-29 00:00:01');
INSERT INTO `friendship` (`user_id`, `friend_id`, `request_type_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (56, 56, 2, '1999-03-01 03:08:48', '1974-03-22 04:58:01', '1996-08-08 19:01:25', '1983-01-06 13:46:48');
INSERT INTO `friendship` (`user_id`, `friend_id`, `request_type_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (57, 57, 1, '2015-03-30 14:16:36', '2017-11-30 07:46:44', '1996-03-15 03:27:25', '2006-02-19 15:58:51');
INSERT INTO `friendship` (`user_id`, `friend_id`, `request_type_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (58, 58, 2, '2007-10-22 19:56:30', '1970-05-13 07:13:01', '1974-10-23 15:27:11', '2017-12-26 06:05:56');
INSERT INTO `friendship` (`user_id`, `friend_id`, `request_type_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (59, 59, 1, '1986-03-04 17:15:28', '1986-08-03 05:03:19', '1998-03-01 03:14:33', '1980-03-07 04:27:16');
INSERT INTO `friendship` (`user_id`, `friend_id`, `request_type_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (60, 60, 2, '1979-08-23 10:07:22', '1981-11-17 20:00:25', '1994-07-18 06:42:36', '1980-08-06 03:41:58');
INSERT INTO `friendship` (`user_id`, `friend_id`, `request_type_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (61, 61, 1, '1999-07-10 05:49:14', '1991-10-16 18:34:35', '1990-12-19 19:47:38', '2020-09-05 11:42:32');
INSERT INTO `friendship` (`user_id`, `friend_id`, `request_type_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (62, 62, 2, '2019-02-21 04:53:08', '1978-08-03 17:04:02', '1989-10-27 06:28:56', '1991-05-02 12:57:56');
INSERT INTO `friendship` (`user_id`, `friend_id`, `request_type_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (63, 63, 1, '2010-09-04 15:27:18', '1979-11-26 07:57:49', '1981-05-13 11:22:20', '1991-02-20 19:00:54');
INSERT INTO `friendship` (`user_id`, `friend_id`, `request_type_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (64, 64, 2, '1989-08-20 01:40:54', '2001-09-14 19:53:27', '1986-09-24 11:50:13', '1971-10-27 15:07:56');
INSERT INTO `friendship` (`user_id`, `friend_id`, `request_type_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (65, 65, 1, '2007-05-15 10:13:46', '2006-11-13 15:33:51', '1997-08-02 13:44:03', '1994-08-29 09:32:45');
INSERT INTO `friendship` (`user_id`, `friend_id`, `request_type_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (66, 66, 2, '2003-03-01 21:41:30', '1975-07-20 09:10:55', '2013-06-13 08:46:36', '1983-10-06 20:14:46');
INSERT INTO `friendship` (`user_id`, `friend_id`, `request_type_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (67, 67, 1, '2008-12-05 08:15:40', '1979-02-12 07:48:48', '1994-06-10 02:08:04', '2006-03-02 06:57:27');
INSERT INTO `friendship` (`user_id`, `friend_id`, `request_type_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (68, 68, 2, '1974-01-27 13:10:18', '1997-04-29 03:38:23', '1978-09-04 20:11:21', '2003-06-16 12:52:42');
INSERT INTO `friendship` (`user_id`, `friend_id`, `request_type_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (69, 69, 1, '1980-03-07 08:38:42', '1993-08-04 18:47:25', '2001-01-18 03:25:29', '1996-10-02 16:31:36');
INSERT INTO `friendship` (`user_id`, `friend_id`, `request_type_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (70, 70, 2, '2000-12-25 16:50:32', '1979-12-28 21:39:12', '1974-08-25 20:19:08', '2008-07-30 21:09:12');
INSERT INTO `friendship` (`user_id`, `friend_id`, `request_type_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (71, 71, 1, '2008-09-25 22:04:09', '1979-01-16 21:23:10', '1976-06-15 13:17:17', '1985-06-13 01:54:32');
INSERT INTO `friendship` (`user_id`, `friend_id`, `request_type_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (72, 72, 2, '1996-03-16 14:29:33', '2019-04-20 19:25:09', '1977-05-27 18:03:10', '2011-05-28 09:06:50');
INSERT INTO `friendship` (`user_id`, `friend_id`, `request_type_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (73, 73, 1, '1973-01-14 09:05:31', '2010-06-18 16:36:57', '2012-08-26 08:42:49', '1994-02-25 03:33:38');
INSERT INTO `friendship` (`user_id`, `friend_id`, `request_type_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (74, 74, 2, '1995-06-30 06:01:47', '1987-04-30 06:08:46', '2008-12-15 03:23:17', '1990-01-21 13:24:00');
INSERT INTO `friendship` (`user_id`, `friend_id`, `request_type_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (75, 75, 1, '2012-02-19 04:36:55', '1982-05-06 18:44:50', '1992-03-20 02:02:47', '1970-07-29 01:32:10');
INSERT INTO `friendship` (`user_id`, `friend_id`, `request_type_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (76, 76, 2, '1984-01-11 04:47:55', '2012-02-01 22:24:33', '2003-12-04 18:27:42', '2004-11-08 23:15:55');
INSERT INTO `friendship` (`user_id`, `friend_id`, `request_type_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (77, 77, 1, '2014-02-01 00:39:30', '1995-10-11 01:59:32', '2017-11-28 21:44:42', '1987-12-11 22:11:26');
INSERT INTO `friendship` (`user_id`, `friend_id`, `request_type_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (78, 78, 2, '1988-03-26 10:08:59', '2018-02-27 22:57:58', '2016-05-09 18:15:01', '1971-08-08 19:10:12');
INSERT INTO `friendship` (`user_id`, `friend_id`, `request_type_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (79, 79, 1, '2002-08-20 08:10:39', '2016-07-27 13:36:40', '2021-08-01 07:28:17', '1982-09-07 03:48:40');
INSERT INTO `friendship` (`user_id`, `friend_id`, `request_type_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (80, 80, 2, '2013-03-12 07:54:43', '1995-06-22 23:31:43', '1983-11-27 02:47:33', '1990-08-11 02:40:30');
INSERT INTO `friendship` (`user_id`, `friend_id`, `request_type_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (81, 81, 1, '2001-03-17 06:29:50', '1970-11-24 07:39:20', '2009-01-04 06:15:57', '1998-06-16 16:04:45');
INSERT INTO `friendship` (`user_id`, `friend_id`, `request_type_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (82, 82, 2, '2015-01-03 20:21:33', '1986-02-11 06:02:35', '2002-03-05 06:50:11', '1985-06-06 12:42:06');
INSERT INTO `friendship` (`user_id`, `friend_id`, `request_type_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (83, 83, 1, '2008-06-26 16:51:24', '1998-07-19 06:11:18', '1981-01-20 22:17:05', '1996-10-11 17:02:46');
INSERT INTO `friendship` (`user_id`, `friend_id`, `request_type_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (84, 84, 2, '2007-03-28 00:37:04', '2009-08-04 01:31:33', '1975-01-03 23:34:27', '2001-10-05 18:35:08');
INSERT INTO `friendship` (`user_id`, `friend_id`, `request_type_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (85, 85, 1, '1973-07-25 18:23:36', '2011-12-18 06:53:58', '2018-01-03 00:00:32', '2009-02-19 22:23:07');
INSERT INTO `friendship` (`user_id`, `friend_id`, `request_type_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (86, 86, 2, '1984-07-03 19:01:26', '1990-02-03 00:00:38', '1990-08-29 15:19:47', '2009-09-28 08:49:07');
INSERT INTO `friendship` (`user_id`, `friend_id`, `request_type_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (87, 87, 1, '1979-08-23 12:06:15', '1988-07-19 01:41:32', '2011-07-19 18:33:22', '1975-09-16 09:30:13');
INSERT INTO `friendship` (`user_id`, `friend_id`, `request_type_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (88, 88, 2, '1989-12-02 23:28:47', '1973-12-31 18:08:47', '1983-05-03 00:37:49', '2015-01-07 22:16:23');
INSERT INTO `friendship` (`user_id`, `friend_id`, `request_type_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (89, 89, 1, '1972-12-26 00:36:47', '2003-01-22 05:08:48', '1989-03-12 18:23:37', '1992-08-05 02:33:16');
INSERT INTO `friendship` (`user_id`, `friend_id`, `request_type_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (90, 90, 2, '1990-11-09 02:49:06', '2000-12-01 03:07:57', '2016-06-20 13:11:41', '1979-06-13 11:59:58');
INSERT INTO `friendship` (`user_id`, `friend_id`, `request_type_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (91, 91, 1, '2011-06-10 11:54:20', '1973-08-16 13:42:32', '2007-05-10 08:25:17', '1972-04-14 18:42:27');
INSERT INTO `friendship` (`user_id`, `friend_id`, `request_type_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (92, 92, 2, '1999-03-16 01:00:30', '2004-03-24 11:56:25', '1980-05-21 06:14:31', '2018-06-01 22:43:27');
INSERT INTO `friendship` (`user_id`, `friend_id`, `request_type_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (93, 93, 1, '1984-12-29 15:11:09', '2016-07-12 13:22:48', '2005-08-31 19:04:27', '1970-12-07 11:03:04');
INSERT INTO `friendship` (`user_id`, `friend_id`, `request_type_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (94, 94, 2, '2009-06-07 11:51:10', '1995-12-02 08:40:16', '1978-08-29 15:17:38', '2014-04-23 17:52:11');
INSERT INTO `friendship` (`user_id`, `friend_id`, `request_type_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (95, 95, 1, '1997-05-31 20:12:47', '2016-08-05 10:13:48', '2007-10-13 08:28:43', '1999-04-07 03:56:54');
INSERT INTO `friendship` (`user_id`, `friend_id`, `request_type_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (96, 96, 2, '2015-05-30 11:13:01', '1972-06-14 12:25:08', '1986-08-01 15:54:02', '1979-09-14 03:28:41');
INSERT INTO `friendship` (`user_id`, `friend_id`, `request_type_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (97, 97, 1, '1977-05-03 09:43:15', '1976-03-17 19:25:25', '1989-11-02 10:55:29', '2000-11-27 21:15:01');
INSERT INTO `friendship` (`user_id`, `friend_id`, `request_type_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (98, 98, 2, '2013-12-10 18:26:18', '1983-07-28 18:52:00', '1986-05-06 08:36:03', '1979-09-20 14:11:30');
INSERT INTO `friendship` (`user_id`, `friend_id`, `request_type_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (99, 99, 1, '1970-05-09 23:47:27', '1984-01-27 15:56:15', '2018-07-07 00:46:04', '1974-03-08 05:53:41');
INSERT INTO `friendship` (`user_id`, `friend_id`, `request_type_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (100, 100, 2, '1989-01-25 04:04:18', '1998-10-29 18:11:19', '1970-04-07 14:52:40', '2004-05-08 14:57:59');

#
# TABLE STRUCTURE FOR: media_likes
#

DROP TABLE IF EXISTS `media_likes`;

CREATE TABLE `media_likes` (
  `media_id` int(10) unsigned NOT NULL COMMENT 'id объекта которому поставили лайк',
  `likes_dict` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT '''список'' юзеров' CHECK (json_valid(`likes_dict`)),
  PRIMARY KEY (`media_id`),
  CONSTRAINT `media_likes_media_id` FOREIGN KEY (`media_id`) REFERENCES `media` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Список лайков';

INSERT INTO `media_likes` (`media_id`, `likes_dict`) VALUES (1, NULL);
INSERT INTO `media_likes` (`media_id`, `likes_dict`) VALUES (2, NULL);
INSERT INTO `media_likes` (`media_id`, `likes_dict`) VALUES (3, NULL);
INSERT INTO `media_likes` (`media_id`, `likes_dict`) VALUES (4, NULL);
INSERT INTO `media_likes` (`media_id`, `likes_dict`) VALUES (5, NULL);
INSERT INTO `media_likes` (`media_id`, `likes_dict`) VALUES (6, NULL);
INSERT INTO `media_likes` (`media_id`, `likes_dict`) VALUES (7, NULL);
INSERT INTO `media_likes` (`media_id`, `likes_dict`) VALUES (8, NULL);
INSERT INTO `media_likes` (`media_id`, `likes_dict`) VALUES (9, NULL);
INSERT INTO `media_likes` (`media_id`, `likes_dict`) VALUES (10, NULL);
INSERT INTO `media_likes` (`media_id`, `likes_dict`) VALUES (11, NULL);
INSERT INTO `media_likes` (`media_id`, `likes_dict`) VALUES (12, NULL);
INSERT INTO `media_likes` (`media_id`, `likes_dict`) VALUES (13, NULL);
INSERT INTO `media_likes` (`media_id`, `likes_dict`) VALUES (14, NULL);
INSERT INTO `media_likes` (`media_id`, `likes_dict`) VALUES (15, NULL);
INSERT INTO `media_likes` (`media_id`, `likes_dict`) VALUES (16, NULL);
INSERT INTO `media_likes` (`media_id`, `likes_dict`) VALUES (17, NULL);
INSERT INTO `media_likes` (`media_id`, `likes_dict`) VALUES (18, NULL);
INSERT INTO `media_likes` (`media_id`, `likes_dict`) VALUES (19, NULL);
INSERT INTO `media_likes` (`media_id`, `likes_dict`) VALUES (20, NULL);
INSERT INTO `media_likes` (`media_id`, `likes_dict`) VALUES (21, NULL);
INSERT INTO `media_likes` (`media_id`, `likes_dict`) VALUES (22, NULL);
INSERT INTO `media_likes` (`media_id`, `likes_dict`) VALUES (23, NULL);
INSERT INTO `media_likes` (`media_id`, `likes_dict`) VALUES (24, NULL);
INSERT INTO `media_likes` (`media_id`, `likes_dict`) VALUES (25, NULL);
INSERT INTO `media_likes` (`media_id`, `likes_dict`) VALUES (26, NULL);
INSERT INTO `media_likes` (`media_id`, `likes_dict`) VALUES (27, NULL);
INSERT INTO `media_likes` (`media_id`, `likes_dict`) VALUES (28, NULL);
INSERT INTO `media_likes` (`media_id`, `likes_dict`) VALUES (29, NULL);
INSERT INTO `media_likes` (`media_id`, `likes_dict`) VALUES (30, NULL);
INSERT INTO `media_likes` (`media_id`, `likes_dict`) VALUES (31, NULL);
INSERT INTO `media_likes` (`media_id`, `likes_dict`) VALUES (32, NULL);
INSERT INTO `media_likes` (`media_id`, `likes_dict`) VALUES (33, NULL);
INSERT INTO `media_likes` (`media_id`, `likes_dict`) VALUES (34, NULL);
INSERT INTO `media_likes` (`media_id`, `likes_dict`) VALUES (35, NULL);
INSERT INTO `media_likes` (`media_id`, `likes_dict`) VALUES (36, NULL);
INSERT INTO `media_likes` (`media_id`, `likes_dict`) VALUES (37, NULL);
INSERT INTO `media_likes` (`media_id`, `likes_dict`) VALUES (38, NULL);
INSERT INTO `media_likes` (`media_id`, `likes_dict`) VALUES (39, NULL);
INSERT INTO `media_likes` (`media_id`, `likes_dict`) VALUES (40, NULL);
INSERT INTO `media_likes` (`media_id`, `likes_dict`) VALUES (41, NULL);
INSERT INTO `media_likes` (`media_id`, `likes_dict`) VALUES (42, NULL);
INSERT INTO `media_likes` (`media_id`, `likes_dict`) VALUES (43, NULL);
INSERT INTO `media_likes` (`media_id`, `likes_dict`) VALUES (44, NULL);
INSERT INTO `media_likes` (`media_id`, `likes_dict`) VALUES (45, NULL);
INSERT INTO `media_likes` (`media_id`, `likes_dict`) VALUES (46, NULL);
INSERT INTO `media_likes` (`media_id`, `likes_dict`) VALUES (47, NULL);
INSERT INTO `media_likes` (`media_id`, `likes_dict`) VALUES (48, NULL);
INSERT INTO `media_likes` (`media_id`, `likes_dict`) VALUES (49, NULL);
INSERT INTO `media_likes` (`media_id`, `likes_dict`) VALUES (50, NULL);
INSERT INTO `media_likes` (`media_id`, `likes_dict`) VALUES (51, NULL);
INSERT INTO `media_likes` (`media_id`, `likes_dict`) VALUES (52, NULL);
INSERT INTO `media_likes` (`media_id`, `likes_dict`) VALUES (53, NULL);
INSERT INTO `media_likes` (`media_id`, `likes_dict`) VALUES (54, NULL);
INSERT INTO `media_likes` (`media_id`, `likes_dict`) VALUES (55, NULL);
INSERT INTO `media_likes` (`media_id`, `likes_dict`) VALUES (56, NULL);
INSERT INTO `media_likes` (`media_id`, `likes_dict`) VALUES (57, NULL);
INSERT INTO `media_likes` (`media_id`, `likes_dict`) VALUES (58, NULL);
INSERT INTO `media_likes` (`media_id`, `likes_dict`) VALUES (59, NULL);
INSERT INTO `media_likes` (`media_id`, `likes_dict`) VALUES (60, NULL);
INSERT INTO `media_likes` (`media_id`, `likes_dict`) VALUES (61, NULL);
INSERT INTO `media_likes` (`media_id`, `likes_dict`) VALUES (62, NULL);
INSERT INTO `media_likes` (`media_id`, `likes_dict`) VALUES (63, NULL);
INSERT INTO `media_likes` (`media_id`, `likes_dict`) VALUES (64, NULL);
INSERT INTO `media_likes` (`media_id`, `likes_dict`) VALUES (65, NULL);
INSERT INTO `media_likes` (`media_id`, `likes_dict`) VALUES (66, NULL);
INSERT INTO `media_likes` (`media_id`, `likes_dict`) VALUES (67, NULL);
INSERT INTO `media_likes` (`media_id`, `likes_dict`) VALUES (68, NULL);
INSERT INTO `media_likes` (`media_id`, `likes_dict`) VALUES (69, NULL);
INSERT INTO `media_likes` (`media_id`, `likes_dict`) VALUES (70, NULL);
INSERT INTO `media_likes` (`media_id`, `likes_dict`) VALUES (71, NULL);
INSERT INTO `media_likes` (`media_id`, `likes_dict`) VALUES (72, NULL);
INSERT INTO `media_likes` (`media_id`, `likes_dict`) VALUES (73, NULL);
INSERT INTO `media_likes` (`media_id`, `likes_dict`) VALUES (74, NULL);
INSERT INTO `media_likes` (`media_id`, `likes_dict`) VALUES (75, NULL);
INSERT INTO `media_likes` (`media_id`, `likes_dict`) VALUES (76, NULL);
INSERT INTO `media_likes` (`media_id`, `likes_dict`) VALUES (77, NULL);
INSERT INTO `media_likes` (`media_id`, `likes_dict`) VALUES (78, NULL);
INSERT INTO `media_likes` (`media_id`, `likes_dict`) VALUES (79, NULL);
INSERT INTO `media_likes` (`media_id`, `likes_dict`) VALUES (80, NULL);
INSERT INTO `media_likes` (`media_id`, `likes_dict`) VALUES (81, NULL);
INSERT INTO `media_likes` (`media_id`, `likes_dict`) VALUES (82, NULL);
INSERT INTO `media_likes` (`media_id`, `likes_dict`) VALUES (83, NULL);
INSERT INTO `media_likes` (`media_id`, `likes_dict`) VALUES (84, NULL);
INSERT INTO `media_likes` (`media_id`, `likes_dict`) VALUES (85, NULL);
INSERT INTO `media_likes` (`media_id`, `likes_dict`) VALUES (86, NULL);
INSERT INTO `media_likes` (`media_id`, `likes_dict`) VALUES (87, NULL);
INSERT INTO `media_likes` (`media_id`, `likes_dict`) VALUES (88, NULL);
INSERT INTO `media_likes` (`media_id`, `likes_dict`) VALUES (89, NULL);
INSERT INTO `media_likes` (`media_id`, `likes_dict`) VALUES (90, NULL);
INSERT INTO `media_likes` (`media_id`, `likes_dict`) VALUES (91, NULL);
INSERT INTO `media_likes` (`media_id`, `likes_dict`) VALUES (92, NULL);
INSERT INTO `media_likes` (`media_id`, `likes_dict`) VALUES (93, NULL);
INSERT INTO `media_likes` (`media_id`, `likes_dict`) VALUES (94, NULL);
INSERT INTO `media_likes` (`media_id`, `likes_dict`) VALUES (95, NULL);
INSERT INTO `media_likes` (`media_id`, `likes_dict`) VALUES (96, NULL);
INSERT INTO `media_likes` (`media_id`, `likes_dict`) VALUES (97, NULL);
INSERT INTO `media_likes` (`media_id`, `likes_dict`) VALUES (98, NULL);
INSERT INTO `media_likes` (`media_id`, `likes_dict`) VALUES (99, NULL);
INSERT INTO `media_likes` (`media_id`, `likes_dict`) VALUES (100, NULL);


#
# TABLE STRUCTURE FOR: posts
#

DROP TABLE IF EXISTS `posts`;

CREATE TABLE `posts` (
  `id` int(10) unsigned NOT NULL,
  `user_created_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на автора',
  `community_pub_id` int(10) unsigned DEFAULT NULL COMMENT 'Id сообщество если пост был опубликован в нем',
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Название поста',
  `post_text` tinytext COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Текст поста',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  KEY `posts_user_id` (`user_created_id`),
  CONSTRAINT `posts_user_id` FOREIGN KEY (`user_created_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `posts` (`id`, `user_created_id`, `community_pub_id`, `title`, `post_text`, `created_at`, `updated_at`) VALUES (0, 1, NULL, 'Recusandae voluptatem facere consectetur sed neque autem.', NULL, '1985-09-15 17:52:39', '1971-04-08 17:31:47');


#
# TABLE STRUCTURE FOR: posts_likes
#

DROP TABLE IF EXISTS `posts_likes`;

CREATE TABLE `posts_likes` (
  `post_id` int(10) unsigned NOT NULL COMMENT 'id объекта которому поставили лайк',
  `likes_dict` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT '''список'' юзеров' CHECK (json_valid(`likes_dict`)),
  PRIMARY KEY (`post_id`),
  CONSTRAINT `post_likes_post_id` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Список лайков';

INSERT INTO `posts_likes` (`post_id`, `likes_dict`) VALUES (0, NULL);

#
# TABLE STRUCTURE FOR: user_likes
#

DROP TABLE IF EXISTS `user_likes`;

CREATE TABLE `user_likes` (
  `user_id` int(10) unsigned NOT NULL COMMENT 'id объекта которому поставили лайк',
  `likes_dict` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT '''список'' юзеров' CHECK (json_valid(`likes_dict`)),
  PRIMARY KEY (`user_id`),
  CONSTRAINT `user_likes_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Список лайков';

INSERT INTO `user_likes` (`user_id`, `likes_dict`) VALUES (1, NULL);
INSERT INTO `user_likes` (`user_id`, `likes_dict`) VALUES (2, NULL);
INSERT INTO `user_likes` (`user_id`, `likes_dict`) VALUES (3, NULL);
INSERT INTO `user_likes` (`user_id`, `likes_dict`) VALUES (4, NULL);
INSERT INTO `user_likes` (`user_id`, `likes_dict`) VALUES (5, NULL);
INSERT INTO `user_likes` (`user_id`, `likes_dict`) VALUES (6, NULL);
INSERT INTO `user_likes` (`user_id`, `likes_dict`) VALUES (7, NULL);
INSERT INTO `user_likes` (`user_id`, `likes_dict`) VALUES (8, NULL);
INSERT INTO `user_likes` (`user_id`, `likes_dict`) VALUES (9, NULL);
INSERT INTO `user_likes` (`user_id`, `likes_dict`) VALUES (10, NULL);
INSERT INTO `user_likes` (`user_id`, `likes_dict`) VALUES (11, NULL);
INSERT INTO `user_likes` (`user_id`, `likes_dict`) VALUES (12, NULL);
INSERT INTO `user_likes` (`user_id`, `likes_dict`) VALUES (13, NULL);
INSERT INTO `user_likes` (`user_id`, `likes_dict`) VALUES (14, NULL);
INSERT INTO `user_likes` (`user_id`, `likes_dict`) VALUES (15, NULL);
INSERT INTO `user_likes` (`user_id`, `likes_dict`) VALUES (16, NULL);
INSERT INTO `user_likes` (`user_id`, `likes_dict`) VALUES (17, NULL);
INSERT INTO `user_likes` (`user_id`, `likes_dict`) VALUES (18, NULL);
INSERT INTO `user_likes` (`user_id`, `likes_dict`) VALUES (19, NULL);
INSERT INTO `user_likes` (`user_id`, `likes_dict`) VALUES (20, NULL);
INSERT INTO `user_likes` (`user_id`, `likes_dict`) VALUES (21, NULL);
INSERT INTO `user_likes` (`user_id`, `likes_dict`) VALUES (22, NULL);
INSERT INTO `user_likes` (`user_id`, `likes_dict`) VALUES (23, NULL);
INSERT INTO `user_likes` (`user_id`, `likes_dict`) VALUES (24, NULL);
INSERT INTO `user_likes` (`user_id`, `likes_dict`) VALUES (25, NULL);
INSERT INTO `user_likes` (`user_id`, `likes_dict`) VALUES (26, NULL);
INSERT INTO `user_likes` (`user_id`, `likes_dict`) VALUES (27, NULL);
INSERT INTO `user_likes` (`user_id`, `likes_dict`) VALUES (28, NULL);
INSERT INTO `user_likes` (`user_id`, `likes_dict`) VALUES (29, NULL);
INSERT INTO `user_likes` (`user_id`, `likes_dict`) VALUES (30, NULL);
INSERT INTO `user_likes` (`user_id`, `likes_dict`) VALUES (31, NULL);
INSERT INTO `user_likes` (`user_id`, `likes_dict`) VALUES (32, NULL);
INSERT INTO `user_likes` (`user_id`, `likes_dict`) VALUES (33, NULL);
INSERT INTO `user_likes` (`user_id`, `likes_dict`) VALUES (34, NULL);
INSERT INTO `user_likes` (`user_id`, `likes_dict`) VALUES (35, NULL);
INSERT INTO `user_likes` (`user_id`, `likes_dict`) VALUES (36, NULL);
INSERT INTO `user_likes` (`user_id`, `likes_dict`) VALUES (37, NULL);
INSERT INTO `user_likes` (`user_id`, `likes_dict`) VALUES (38, NULL);
INSERT INTO `user_likes` (`user_id`, `likes_dict`) VALUES (39, NULL);
INSERT INTO `user_likes` (`user_id`, `likes_dict`) VALUES (40, NULL);
INSERT INTO `user_likes` (`user_id`, `likes_dict`) VALUES (41, NULL);
INSERT INTO `user_likes` (`user_id`, `likes_dict`) VALUES (42, NULL);
INSERT INTO `user_likes` (`user_id`, `likes_dict`) VALUES (43, NULL);
INSERT INTO `user_likes` (`user_id`, `likes_dict`) VALUES (44, NULL);
INSERT INTO `user_likes` (`user_id`, `likes_dict`) VALUES (45, NULL);
INSERT INTO `user_likes` (`user_id`, `likes_dict`) VALUES (46, NULL);
INSERT INTO `user_likes` (`user_id`, `likes_dict`) VALUES (47, NULL);
INSERT INTO `user_likes` (`user_id`, `likes_dict`) VALUES (48, NULL);
INSERT INTO `user_likes` (`user_id`, `likes_dict`) VALUES (49, NULL);
INSERT INTO `user_likes` (`user_id`, `likes_dict`) VALUES (50, NULL);
INSERT INTO `user_likes` (`user_id`, `likes_dict`) VALUES (51, NULL);
INSERT INTO `user_likes` (`user_id`, `likes_dict`) VALUES (52, NULL);
INSERT INTO `user_likes` (`user_id`, `likes_dict`) VALUES (53, NULL);
INSERT INTO `user_likes` (`user_id`, `likes_dict`) VALUES (54, NULL);
INSERT INTO `user_likes` (`user_id`, `likes_dict`) VALUES (55, NULL);
INSERT INTO `user_likes` (`user_id`, `likes_dict`) VALUES (56, NULL);
INSERT INTO `user_likes` (`user_id`, `likes_dict`) VALUES (57, NULL);
INSERT INTO `user_likes` (`user_id`, `likes_dict`) VALUES (58, NULL);
INSERT INTO `user_likes` (`user_id`, `likes_dict`) VALUES (59, NULL);
INSERT INTO `user_likes` (`user_id`, `likes_dict`) VALUES (60, NULL);
INSERT INTO `user_likes` (`user_id`, `likes_dict`) VALUES (61, NULL);
INSERT INTO `user_likes` (`user_id`, `likes_dict`) VALUES (62, NULL);
INSERT INTO `user_likes` (`user_id`, `likes_dict`) VALUES (63, NULL);
INSERT INTO `user_likes` (`user_id`, `likes_dict`) VALUES (64, NULL);
INSERT INTO `user_likes` (`user_id`, `likes_dict`) VALUES (65, NULL);
INSERT INTO `user_likes` (`user_id`, `likes_dict`) VALUES (66, NULL);
INSERT INTO `user_likes` (`user_id`, `likes_dict`) VALUES (67, NULL);
INSERT INTO `user_likes` (`user_id`, `likes_dict`) VALUES (68, NULL);
INSERT INTO `user_likes` (`user_id`, `likes_dict`) VALUES (69, NULL);
INSERT INTO `user_likes` (`user_id`, `likes_dict`) VALUES (70, NULL);
INSERT INTO `user_likes` (`user_id`, `likes_dict`) VALUES (71, NULL);
INSERT INTO `user_likes` (`user_id`, `likes_dict`) VALUES (72, NULL);
INSERT INTO `user_likes` (`user_id`, `likes_dict`) VALUES (73, NULL);
INSERT INTO `user_likes` (`user_id`, `likes_dict`) VALUES (74, NULL);
INSERT INTO `user_likes` (`user_id`, `likes_dict`) VALUES (75, NULL);
INSERT INTO `user_likes` (`user_id`, `likes_dict`) VALUES (76, NULL);
INSERT INTO `user_likes` (`user_id`, `likes_dict`) VALUES (77, NULL);
INSERT INTO `user_likes` (`user_id`, `likes_dict`) VALUES (78, NULL);
INSERT INTO `user_likes` (`user_id`, `likes_dict`) VALUES (79, NULL);
INSERT INTO `user_likes` (`user_id`, `likes_dict`) VALUES (80, NULL);
INSERT INTO `user_likes` (`user_id`, `likes_dict`) VALUES (81, NULL);
INSERT INTO `user_likes` (`user_id`, `likes_dict`) VALUES (82, NULL);
INSERT INTO `user_likes` (`user_id`, `likes_dict`) VALUES (83, NULL);
INSERT INTO `user_likes` (`user_id`, `likes_dict`) VALUES (84, NULL);
INSERT INTO `user_likes` (`user_id`, `likes_dict`) VALUES (85, NULL);
INSERT INTO `user_likes` (`user_id`, `likes_dict`) VALUES (86, NULL);
INSERT INTO `user_likes` (`user_id`, `likes_dict`) VALUES (87, NULL);
INSERT INTO `user_likes` (`user_id`, `likes_dict`) VALUES (88, NULL);
INSERT INTO `user_likes` (`user_id`, `likes_dict`) VALUES (89, NULL);
INSERT INTO `user_likes` (`user_id`, `likes_dict`) VALUES (90, NULL);
INSERT INTO `user_likes` (`user_id`, `likes_dict`) VALUES (91, NULL);
INSERT INTO `user_likes` (`user_id`, `likes_dict`) VALUES (92, NULL);
INSERT INTO `user_likes` (`user_id`, `likes_dict`) VALUES (93, NULL);
INSERT INTO `user_likes` (`user_id`, `likes_dict`) VALUES (94, NULL);
INSERT INTO `user_likes` (`user_id`, `likes_dict`) VALUES (95, NULL);
INSERT INTO `user_likes` (`user_id`, `likes_dict`) VALUES (96, NULL);
INSERT INTO `user_likes` (`user_id`, `likes_dict`) VALUES (97, NULL);
INSERT INTO `user_likes` (`user_id`, `likes_dict`) VALUES (98, NULL);
INSERT INTO `user_likes` (`user_id`, `likes_dict`) VALUES (99, NULL);
INSERT INTO `user_likes` (`user_id`, `likes_dict`) VALUES (100, NULL);

