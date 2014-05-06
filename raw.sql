-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `p4_youtube_playlist`
--

CREATE TABLE IF NOT EXISTS `p4_youtube_playlist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `playlistId` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `youtubePlaylistId` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(355) COLLATE utf8_unicode_ci NOT NULL,
  `isActive` int(11) NOT NULL DEFAULT '1',
  `isCurrent` int(11) NOT NULL DEFAULT '2',
  `sort` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=15 ;

--
-- Daten für Tabelle `p4_youtube_playlist`
--

INSERT INTO `p4_youtube_playlist` (`id`, `playlistId`, `youtubePlaylistId`, `title`, `url`, `isActive`, `isCurrent`, `sort`) VALUES
(2, 'PLD260F6C6942E8CBE', 'PLD260F6C6942E8CBE', 'Corporate', 'https://gdata.youtube.com/feeds/api/playlists/PLD260F6C6942E8CBE', 2, 0, 1),
(3, 'PLC3843476CCBF605C', 'PLC3843476CCBF605C', 'NetApp Technologien', 'https://gdata.youtube.com/feeds/api/playlists/PLC3843476CCBF605C', 2, 0, 11),
(4, 'PL715C3D13EDC39381', 'PL715C3D13EDC39381', 'NetApp Kunden und ihre Erfolgsgeschichten', 'https://gdata.youtube.com/feeds/api/playlists/PL715C3D13EDC39381', 2, 0, 12),
(5, 'PLE494035A55A1E519', 'PLE494035A55A1E519', 'TechDemo Nuggets', 'https://gdata.youtube.com/feeds/api/playlists/PLE494035A55A1E519', 2, 0, 13),
(6, 'PLbgeRzdqrm9SytRTqLFsbx-gO2YYxOIjp', 'PLbgeRzdqrm9SytRTqLFsbx-gO2YYxOIjp', 'Data Protection', 'https://gdata.youtube.com/feeds/api/playlists/PLbgeRzdqrm9SytRTqLFsbx-gO2YYxOIjp', 2, 2, 2),
(7, 'PLbgeRzdqrm9RbeeecDWzJZ-6eGUIh_MY9', 'PLbgeRzdqrm9RbeeecDWzJZ-6eGUIh_MY9', 'SAP', 'https://gdata.youtube.com/feeds/api/playlists/PLbgeRzdqrm9RbeeecDWzJZ-6eGUIh_MY9', 2, 2, 3),
(8, 'PLbgeRzdqrm9QjMqcInx7f0hibKwQBzEg6', 'PLbgeRzdqrm9QjMqcInx7f0hibKwQBzEg6', 'Flash E-Series', 'https://gdata.youtube.com/feeds/api/playlists/PLbgeRzdqrm9QjMqcInx7f0hibKwQBzEg6', 2, 2, 4),
(9, 'PLbgeRzdqrm9TrqQAA73MAccz0NuJhZKPZ', 'PLbgeRzdqrm9TrqQAA73MAccz0NuJhZKPZ', 'Cloud', 'https://gdata.youtube.com/feeds/api/playlists/PLbgeRzdqrm9TrqQAA73MAccz0NuJhZKPZ', 2, 2, 5),
(10, 'PLbgeRzdqrm9SVis5caFmVuKw-uP58RcDF', 'PLbgeRzdqrm9SVis5caFmVuKw-uP58RcDF', 'Archiv', 'https://gdata.youtube.com/feeds/api/playlists/PLbgeRzdqrm9SVis5caFmVuKw-uP58RcDF', 2, 2, 6),
(11, 'PLbgeRzdqrm9SLqpoz2pcMs-49qb9Fsje9', 'PLbgeRzdqrm9SLqpoz2pcMs-49qb9Fsje9', 'NetApp Deutschland', 'https://gdata.youtube.com/feeds/api/playlists/PLbgeRzdqrm9SLqpoz2pcMs-49qb9Fsje9', 1, 2, 10),
(12, 'PLbgeRzdqrm9SxPH8n9kl6eGSZPLtWbb3u', 'PLbgeRzdqrm9SxPH8n9kl6eGSZPLtWbb3u', 'NetApp Live', 'https://gdata.youtube.com/feeds/api/playlists/PLbgeRzdqrm9SxPH8n9kl6eGSZPLtWbb3u', 1, 2, 9),
(13, 'PLbgeRzdqrm9RLvqIq5ZCZx_8z0jdxYwuj', 'PLbgeRzdqrm9RLvqIq5ZCZx_8z0jdxYwuj', 'NetApp Referenzkunden', 'https://gdata.youtube.com/feeds/api/playlists/PLbgeRzdqrm9RLvqIq5ZCZx_8z0jdxYwuj', 1, 2, 7),
(14, 'PLbgeRzdqrm9RcMGH88RneL4Lcz1V8GkU_', 'PLbgeRzdqrm9RcMGH88RneL4Lcz1V8GkU_', 'NetApp Lösungen', 'https://gdata.youtube.com/feeds/api/playlists/PLbgeRzdqrm9RcMGH88RneL4Lcz1V8GkU_', 1, 2, 8);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `p4_youtube_videos`
--

CREATE TABLE IF NOT EXISTS `p4_youtube_videos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `playlistId` int(11) NOT NULL,
  `start` int(11) NOT NULL DEFAULT '0',
  `videoId` varchar(355) COLLATE utf8_unicode_ci NOT NULL,
  `thumbnail` varchar(355) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(355) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `playlistId` (`playlistId`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=197 ;

--
-- Daten für Tabelle `p4_youtube_videos`
--

INSERT INTO `p4_youtube_videos` (`id`, `playlistId`, `start`, `videoId`, `thumbnail`, `title`) VALUES
(76, 2, 0, 'IH6ryuabAz0', 'https://i1.ytimg.com/vi/IH6ryuabAz0/mqdefault.jpg', 'NetApp Germany: Great Place to Work'),
(77, 2, 0, 'FpvlEcJ3kO8', 'https://i1.ytimg.com/vi/FpvlEcJ3kO8/mqdefault.jpg', 'Yep, it''s NetApp Style!'),
(78, 2, 0, 'BA_cPE4jDw0', 'https://i1.ytimg.com/vi/BA_cPE4jDw0/mqdefault.jpg', 'Computerwoche-Webcast: Cloud made in Germany'),
(79, 3, 0, '6kAowUxSXVo', 'https://i1.ytimg.com/vi/6kAowUxSXVo/mqdefault.jpg', 'Mr. Flexo nutzt die Agilität der Cloud'),
(80, 3, 0, 'x96ytojlpwY', 'https://i1.ytimg.com/vi/x96ytojlpwY/mqdefault.jpg', 'Wie NetApp Datamanagement in der Cloud ermöglicht'),
(81, 3, 0, 'b5N67GfVpnM', 'https://i1.ytimg.com/vi/b5N67GfVpnM/mqdefault.jpg', 'Holen Sie sich die Cloud -- mit NetApp'),
(82, 3, 0, 'q_uwGdEhht4', 'https://i1.ytimg.com/vi/q_uwGdEhht4/mqdefault.jpg', 'Mr. Flexo bringt Effizienz in die Cloud'),
(83, 3, 0, 'oYHQlIveunE', 'https://i1.ytimg.com/vi/oYHQlIveunE/mqdefault.jpg', 'Mr. Flexos Einstieg in die Cloud'),
(84, 3, 0, '_fwlX32Lg8c', 'https://i1.ytimg.com/vi/_fwlX32Lg8c/mqdefault.jpg', 'NetApp präsentiert seinen Weg in die Cloud'),
(85, 3, 0, 'RGPvP0Q022Y', 'https://i1.ytimg.com/vi/RGPvP0Q022Y/mqdefault.jpg', 'Warum kompliziert -- wenn es auch einfach geht?'),
(86, 8, 0, '6gIkyYdi3DU', 'https://i1.ytimg.com/vi/6gIkyYdi3DU/mqdefault.jpg', 'NetApp im Interview: Alles über Flash'),
(87, 3, 0, '-T1WpwmJExo', 'https://i1.ytimg.com/vi/-T1WpwmJExo/mqdefault.jpg', 'Smart, sicher, skalierbar: Agile Data Infrastructure von NetApp'),
(88, 3, 0, '49h-WreF-KI', 'https://i1.ytimg.com/vi/49h-WreF-KI/mqdefault.jpg', 'Smart, sicher, skalierbar: Agile Data Infrastructure von NetApp basierend auf Data ONTAP'),
(89, 3, 0, 'WYuAHpemp24', 'https://i1.ytimg.com/vi/WYuAHpemp24/mqdefault.jpg', 'NetApp Storage System FAS6200 - Always On'),
(90, 3, 0, '4UFA6p6GQNk', 'https://i1.ytimg.com/vi/4UFA6p6GQNk/mqdefault.jpg', 'ADI optimiert IT-Performance'),
(91, 3, 0, '1bVWQIFGODk', 'https://i1.ytimg.com/vi/1bVWQIFGODk/mqdefault.jpg', 'NetApp Data ONTAP - Mehr Spielraum für den Mittelstand'),
(92, 3, 0, 'FILB_umWiGc', 'https://i1.ytimg.com/vi/FILB_umWiGc/mqdefault.jpg', 'Große Datenmengen beherrschen: NetApp Data ONTAP Clustering'),
(93, 3, 0, 'Gc3fn6vye7s', 'https://i1.ytimg.com/vi/Gc3fn6vye7s/mqdefault.jpg', 'Datacenter-Technologien: Data ONTAP Cluster-Mode'),
(94, 3, 0, 'CEqodTsa_RM', 'https://i1.ytimg.com/vi/CEqodTsa_RM/mqdefault.jpg', 'Revisionsichere Archivierung'),
(95, 3, 0, 'Rdtc_Kw1dS0', 'https://i1.ytimg.com/vi/Rdtc_Kw1dS0/mqdefault.jpg', 'Technologien zur Datensicherung'),
(96, 3, 0, 'mP_WjJPKezY', 'https://i1.ytimg.com/vi/mP_WjJPKezY/mqdefault.jpg', 'Virtualisierung'),
(97, 3, 0, '1DwJiz39akE', 'https://i1.ytimg.com/vi/1DwJiz39akE/mqdefault.jpg', 'Wie eine NetApp Private Cloud Ihr IT-Management revolutioniert'),
(98, 3, 0, 'pV7bnGu873I', 'https://i1.ytimg.com/vi/pV7bnGu873I/mqdefault.jpg', 'Smart Backup -- die Lösung von Hamburg Cloud und NetApp'),
(99, 4, 0, 'wXnfqPafVZ0', 'https://i1.ytimg.com/vi/wXnfqPafVZ0/mqdefault.jpg', 'InterCard: FlexPod von NetApp ermöglicht Migration des Rechenzentrums ohne Datenverlust'),
(100, 4, 0, 'ITMs8ss7bO0', 'https://i1.ytimg.com/vi/ITMs8ss7bO0/mqdefault.jpg', 'Malteser: Sicher in die Cloud mit NetApp Storage'),
(101, 4, 0, '13ry56-VSeU', 'https://i1.ytimg.com/vi/13ry56-VSeU/mqdefault.jpg', 'Thomas-Krenn.AG setzt auf NetApp clustered Data ONTAP'),
(102, 4, 0, 'orbDmLsBFdc', 'https://i1.ytimg.com/vi/orbDmLsBFdc/mqdefault.jpg', 'Maredo: geringere Energiekosten und Backupzeiten dank agiler Dateninfrastruktur-Lösung von NetApp'),
(103, 4, 0, 'gkL3gY1sEO0', 'https://i1.ytimg.com/vi/gkL3gY1sEO0/mqdefault.jpg', 'Ingersoll Werkzeuge: Wachstum effizient meistern, dank NetApp Storage-Lösungen'),
(104, 7, 0, 'ozto1-lxIfI', 'https://i1.ytimg.com/vi/ozto1-lxIfI/mqdefault.jpg', 'Fresenius Netcare: zuverlässige und agile NetApp Storage-Lösung für SAP-Umgebung'),
(105, 4, 0, 'HS3hUS0g1ME', 'https://i1.ytimg.com/vi/HS3hUS0g1ME/mqdefault.jpg', 'NetApp Referenzen im Überblick'),
(106, 4, 0, 'YXDEMP4x0ZA', 'https://i1.ytimg.com/vi/YXDEMP4x0ZA/mqdefault.jpg', 'ProSiebenSat.1: Keine Sendeunterbrechung beim E-Mail Versand dank NetApp Storage'),
(107, 4, 0, '2XSnO_7tygs', 'https://i1.ytimg.com/vi/2XSnO_7tygs/mqdefault.jpg', 'Computacenter setzt auf flexible Lösung für flexible Anforderungen'),
(108, 4, 0, '0MiFuyag8Aw', 'https://i1.ytimg.com/vi/0MiFuyag8Aw/mqdefault.jpg', 'Magura: Effiziente NetApp Technologie für heterogene IT-Landschaft'),
(109, 4, 0, '-_w3kFfw2Po', 'https://i1.ytimg.com/vi/-_w3kFfw2Po/mqdefault.jpg', 'NORMA Group dank NetApp Produkten effektiver und effizienter'),
(110, 4, 0, 'WbcPGWJrh9w', 'https://i1.ytimg.com/vi/WbcPGWJrh9w/mqdefault.jpg', 'Langenscheidt setzt auf flexible IT-Infrastruktur von NetApp, Cisco und VMware'),
(111, 4, 0, 'fyM7oxNJajg', 'https://i1.ytimg.com/vi/fyM7oxNJajg/mqdefault.jpg', 'Jack Wolfskin: Passion für Technologie'),
(112, 4, 0, 'Zdbrb-GPBJs', 'https://i1.ytimg.com/vi/Zdbrb-GPBJs/mqdefault.jpg', 'Börse Stuttgart: Schneller Handel mit schnellen IT-Systemen'),
(113, 4, 0, 'IqX5xbr-hD4', 'https://i1.ytimg.com/vi/IqX5xbr-hD4/mqdefault.jpg', 'Simba Dickie: Auf der Überholspur mit NetApp Storage'),
(114, 5, 0, 'Ms-oWfHSa2Y', 'https://i1.ytimg.com/vi/Ms-oWfHSa2Y/mqdefault.jpg', 'TechDemo Nuggets: Wie erstelle ich mit Hilfe der NetApp Tools einen Datenspiegel?'),
(115, 5, 0, 'E6PkF9ZfyQQ', 'https://i1.ytimg.com/vi/E6PkF9ZfyQQ/mqdefault.jpg', 'TechDemo Nuggets: Effizienzsteigerung durch Thin Provisioning und Deduplizierung'),
(116, 5, 0, 'h-c7fk4uI70', 'https://i1.ytimg.com/vi/h-c7fk4uI70/mqdefault.jpg', 'TechDemo Nuggets:  Migration von Datenbanken mit dem SnapManager für SQL in der Version 5.1'),
(117, 5, 0, 'znOgfkHH8p4', 'https://i1.ytimg.com/vi/znOgfkHH8p4/mqdefault.jpg', 'TechDemo Nuggets: Restore einer Datenbank mit dem SnapManager für SQL'),
(118, 5, 0, 'nnhE9jNdYSc', 'https://i1.ytimg.com/vi/nnhE9jNdYSc/mqdefault.jpg', 'TechDemo Nuggets: Wie kann ich meine Datenbank mit dem SnapManager für SQL verändern?'),
(119, 5, 0, 'b8Ix3FmW9Dg', 'https://i1.ytimg.com/vi/b8Ix3FmW9Dg/mqdefault.jpg', 'TechDemo Nuggets: Wie erstelle ich ein Backup meiner SQL-Datenbank?'),
(120, 5, 0, 'QueqtKdYhdU', 'https://i1.ytimg.com/vi/QueqtKdYhdU/mqdefault.jpg', 'TechDemo Nuggets: Wie vergrößere ich eine LUN?'),
(121, 5, 0, 'jqitLCkruPo', 'https://i1.ytimg.com/vi/jqitLCkruPo/mqdefault.jpg', 'TechDemo Nuggets: Vergrößerung eines Datastores'),
(122, 5, 0, 'a0YvgzdplF0', 'https://i1.ytimg.com/vi/a0YvgzdplF0/mqdefault.jpg', 'TechDemo Nuggets: Anlegen eines neuen Datastore in einer VMware Umgebung'),
(123, 5, 0, '3SpEYYvt6Iw', 'https://i1.ytimg.com/vi/3SpEYYvt6Iw/mqdefault.jpg', 'TechDemo Nuggets: Anlegen einer LUN'),
(124, 5, 0, 'xzbw0sbcjJQ', 'https://i1.ytimg.com/vi/xzbw0sbcjJQ/mqdefault.jpg', 'TechDemo Nuggets: Anlegen einer virtuellen Festplatte'),
(125, 5, 0, 'C2EeiksD8U0', 'https://i1.ytimg.com/vi/C2EeiksD8U0/mqdefault.jpg', 'TechDemo Nuggets: Durchführung eines SnapRestores'),
(126, 5, 0, 'hyAYmPN2iSo', 'https://i1.ytimg.com/vi/hyAYmPN2iSo/mqdefault.jpg', 'TechDemo Nuggets: Vergrößerung einer virtuellen Festplatte'),
(127, 5, 0, 'kpkGotcjrso', 'https://i1.ytimg.com/vi/kpkGotcjrso/mqdefault.jpg', 'Einführung System Manager'),
(128, 5, 0, 'jEFkaIlQ-ns', 'https://i1.ytimg.com/vi/jEFkaIlQ-ns/mqdefault.jpg', 'Einführung ThinProvisioning'),
(129, 5, 0, 'kpb44wIWh-k', 'https://i1.ytimg.com/vi/kpb44wIWh-k/mqdefault.jpg', 'TechDemo SnapManager Exchange'),
(130, 5, 0, 'OZV3QPUrNz4', 'https://i1.ytimg.com/vi/OZV3QPUrNz4/mqdefault.jpg', 'Flash Accel - Technische Demo'),
(131, 5, 0, 'IrKNJASae1I', 'https://i1.ytimg.com/vi/IrKNJASae1I/mqdefault.jpg', 'Quality Of Service - Neues Feature Clustered Data ONTAP 8.2'),
(132, 5, 0, 'UMwIpryRzno', 'https://i1.ytimg.com/vi/UMwIpryRzno/mqdefault.jpg', 'EF540 - NetApp All Flash Array - 300.000 IOPS Demo'),
(133, 11, 0, '8aL9hqdBYHY', 'https://i1.ytimg.com/vi/8aL9hqdBYHY/mqdefault.jpg', 'Grußwort Alexander Wallner, Area Vice President Germany bei NetApp'),
(134, 12, 0, 'TLZG09RKOJI', 'https://i1.ytimg.com/vi/TLZG09RKOJI/mqdefault.jpg', 'Best in Cloud: SPRIT ist mit NetApp und QSC über allen Wolken'),
(135, 4, 0, '_Ax9bMYlc34', 'https://i1.ytimg.com/vi/_Ax9bMYlc34/mqdefault.jpg', 'eBay: Mit SAP HANA und NetApp die richtigen Signale finden'),
(136, 6, 0, 'pV7bnGu873I', 'https://i1.ytimg.com/vi/pV7bnGu873I/mqdefault.jpg', 'Smart Backup -- die Lösung von Hamburg Cloud und NetApp'),
(137, 9, 0, '6kAowUxSXVo', 'https://i1.ytimg.com/vi/6kAowUxSXVo/mqdefault.jpg', 'Mr. Flexo nutzt die Agilität der Cloud'),
(138, 9, 0, 'ITMs8ss7bO0', 'https://i1.ytimg.com/vi/ITMs8ss7bO0/mqdefault.jpg', 'Malteser: Sicher in die Cloud mit NetApp Storage'),
(139, 9, 0, 'BA_cPE4jDw0', 'https://i1.ytimg.com/vi/BA_cPE4jDw0/mqdefault.jpg', 'Computerwoche-Webcast: Cloud made in Germany'),
(140, 10, 0, 'Gc3fn6vye7s', 'https://i1.ytimg.com/vi/Gc3fn6vye7s/mqdefault.jpg', 'Datacenter-Technologien: Data ONTAP Cluster-Mode'),
(141, 10, 0, 'Ms-oWfHSa2Y', 'https://i1.ytimg.com/vi/Ms-oWfHSa2Y/mqdefault.jpg', 'TechDemo Nuggets: Wie erstelle ich mit Hilfe der NetApp Tools einen Datenspiegel?'),
(142, 10, 0, 'E6PkF9ZfyQQ', 'https://i1.ytimg.com/vi/E6PkF9ZfyQQ/mqdefault.jpg', 'TechDemo Nuggets: Effizienzsteigerung durch Thin Provisioning und Deduplizierung'),
(143, 10, 0, 'h-c7fk4uI70', 'https://i1.ytimg.com/vi/h-c7fk4uI70/mqdefault.jpg', 'TechDemo Nuggets:  Migration von Datenbanken mit dem SnapManager für SQL in der Version 5.1'),
(144, 10, 0, 'znOgfkHH8p4', 'https://i1.ytimg.com/vi/znOgfkHH8p4/mqdefault.jpg', 'TechDemo Nuggets: Restore einer Datenbank mit dem SnapManager für SQL'),
(145, 10, 0, 'b8Ix3FmW9Dg', 'https://i1.ytimg.com/vi/b8Ix3FmW9Dg/mqdefault.jpg', 'TechDemo Nuggets: Wie erstelle ich ein Backup meiner SQL-Datenbank?'),
(146, 10, 0, 'QueqtKdYhdU', 'https://i1.ytimg.com/vi/QueqtKdYhdU/mqdefault.jpg', 'TechDemo Nuggets: Wie vergrößere ich eine LUN?'),
(147, 10, 0, 'jqitLCkruPo', 'https://i1.ytimg.com/vi/jqitLCkruPo/mqdefault.jpg', 'TechDemo Nuggets: Vergrößerung eines Datastores'),
(148, 10, 0, 'a0YvgzdplF0', 'https://i1.ytimg.com/vi/a0YvgzdplF0/mqdefault.jpg', 'TechDemo Nuggets: Anlegen eines neuen Datastore in einer VMware Umgebung'),
(149, 10, 0, '3SpEYYvt6Iw', 'https://i1.ytimg.com/vi/3SpEYYvt6Iw/mqdefault.jpg', 'TechDemo Nuggets: Anlegen einer LUN'),
(150, 10, 0, 'xzbw0sbcjJQ', 'https://i1.ytimg.com/vi/xzbw0sbcjJQ/mqdefault.jpg', 'TechDemo Nuggets: Anlegen einer virtuellen Festplatte'),
(151, 10, 0, 'hyAYmPN2iSo', 'https://i1.ytimg.com/vi/hyAYmPN2iSo/mqdefault.jpg', 'TechDemo Nuggets: Vergrößerung einer virtuellen Festplatte'),
(152, 10, 0, 'mP_WjJPKezY', 'https://i1.ytimg.com/vi/mP_WjJPKezY/mqdefault.jpg', 'Virtualisierung'),
(153, 10, 0, 'C2EeiksD8U0', 'https://i1.ytimg.com/vi/C2EeiksD8U0/mqdefault.jpg', 'TechDemo Nuggets: Durchführung eines SnapRestores'),
(154, 10, 0, 'kpb44wIWh-k', 'https://i1.ytimg.com/vi/kpb44wIWh-k/mqdefault.jpg', 'TechDemo SnapManager Exchange'),
(155, 11, 0, 'FpvlEcJ3kO8', 'https://i1.ytimg.com/vi/FpvlEcJ3kO8/mqdefault.jpg', 'Yep, it''s NetApp Style!'),
(156, 11, 0, 'IH6ryuabAz0', 'https://i1.ytimg.com/vi/IH6ryuabAz0/mqdefault.jpg', 'NetApp Germany: Great Place to Work'),
(157, 12, 0, 'BA_cPE4jDw0', 'https://i1.ytimg.com/vi/BA_cPE4jDw0/mqdefault.jpg', 'Computerwoche-Webcast: Cloud made in Germany'),
(158, 13, 0, 'ITMs8ss7bO0', 'https://i1.ytimg.com/vi/ITMs8ss7bO0/mqdefault.jpg', 'Malteser: Sicher in die Cloud mit NetApp Storage'),
(159, 13, 0, 'ozto1-lxIfI', 'https://i1.ytimg.com/vi/ozto1-lxIfI/mqdefault.jpg', 'Fresenius Netcare: zuverlässige und agile NetApp Storage-Lösung für SAP-Umgebung'),
(160, 13, 0, '0MiFuyag8Aw', 'https://i1.ytimg.com/vi/0MiFuyag8Aw/mqdefault.jpg', 'Magura: Effiziente NetApp Technologie für heterogene IT-Landschaft'),
(161, 13, 0, 'wXnfqPafVZ0', 'https://i1.ytimg.com/vi/wXnfqPafVZ0/mqdefault.jpg', 'InterCard: FlexPod von NetApp ermöglicht Migration des Rechenzentrums ohne Datenverlust'),
(162, 13, 0, '13ry56-VSeU', 'https://i1.ytimg.com/vi/13ry56-VSeU/mqdefault.jpg', 'Thomas-Krenn.AG setzt auf NetApp clustered Data ONTAP'),
(163, 13, 0, 'orbDmLsBFdc', 'https://i1.ytimg.com/vi/orbDmLsBFdc/mqdefault.jpg', 'Maredo: geringere Energiekosten und Backupzeiten dank agiler Dateninfrastruktur-Lösung von NetApp'),
(164, 13, 0, 'gkL3gY1sEO0', 'https://i1.ytimg.com/vi/gkL3gY1sEO0/mqdefault.jpg', 'Ingersoll Werkzeuge: Wachstum effizient meistern, dank NetApp Storage-Lösungen'),
(165, 13, 0, 'HS3hUS0g1ME', 'https://i1.ytimg.com/vi/HS3hUS0g1ME/mqdefault.jpg', 'NetApp Referenzen im Überblick'),
(166, 13, 0, 'YXDEMP4x0ZA', 'https://i1.ytimg.com/vi/YXDEMP4x0ZA/mqdefault.jpg', 'ProSiebenSat.1: Keine Sendeunterbrechung beim E-Mail Versand dank NetApp Storage'),
(167, 13, 0, 'IqX5xbr-hD4', 'https://i1.ytimg.com/vi/IqX5xbr-hD4/mqdefault.jpg', 'Simba Dickie: Auf der Überholspur mit NetApp Storage'),
(168, 13, 0, 'Zdbrb-GPBJs', 'https://i1.ytimg.com/vi/Zdbrb-GPBJs/mqdefault.jpg', 'Börse Stuttgart: Schneller Handel mit schnellen IT-Systemen'),
(169, 13, 0, 'fyM7oxNJajg', 'https://i1.ytimg.com/vi/fyM7oxNJajg/mqdefault.jpg', 'Jack Wolfskin: Passion für Technologie'),
(170, 13, 0, 'WbcPGWJrh9w', 'https://i1.ytimg.com/vi/WbcPGWJrh9w/mqdefault.jpg', 'Langenscheidt setzt auf flexible IT-Infrastruktur von NetApp, Cisco und VMware'),
(171, 13, 0, '-_w3kFfw2Po', 'https://i1.ytimg.com/vi/-_w3kFfw2Po/mqdefault.jpg', 'NORMA Group dank NetApp Produkten effektiver und effizienter'),
(172, 13, 0, '2XSnO_7tygs', 'https://i1.ytimg.com/vi/2XSnO_7tygs/mqdefault.jpg', 'Computacenter setzt auf flexible Lösung für flexible Anforderungen'),
(173, 14, 0, '6kAowUxSXVo', 'https://i1.ytimg.com/vi/6kAowUxSXVo/mqdefault.jpg', 'Mr. Flexo nutzt die Agilität der Cloud'),
(174, 14, 0, '6gIkyYdi3DU', 'https://i1.ytimg.com/vi/6gIkyYdi3DU/mqdefault.jpg', 'NetApp im Interview: Alles über Flash'),
(175, 14, 0, 'UMwIpryRzno', 'https://i1.ytimg.com/vi/UMwIpryRzno/mqdefault.jpg', 'EF540 - NetApp All Flash Array - 300.000 IOPS Demo'),
(176, 14, 0, 'b5N67GfVpnM', 'https://i1.ytimg.com/vi/b5N67GfVpnM/mqdefault.jpg', 'Holen Sie sich die Cloud -- mit NetApp'),
(177, 14, 0, 'q_uwGdEhht4', 'https://i1.ytimg.com/vi/q_uwGdEhht4/mqdefault.jpg', 'Mr. Flexo bringt Effizienz in die Cloud'),
(178, 14, 0, 'oYHQlIveunE', 'https://i1.ytimg.com/vi/oYHQlIveunE/mqdefault.jpg', 'Mr. Flexos Einstieg in die Cloud'),
(179, 14, 0, '_fwlX32Lg8c', 'https://i1.ytimg.com/vi/_fwlX32Lg8c/mqdefault.jpg', 'NetApp präsentiert seinen Weg in die Cloud'),
(180, 14, 0, '1DwJiz39akE', 'https://i1.ytimg.com/vi/1DwJiz39akE/mqdefault.jpg', 'Wie eine NetApp Private Cloud Ihr IT-Management revolutioniert'),
(181, 14, 0, 'IrKNJASae1I', 'https://i1.ytimg.com/vi/IrKNJASae1I/mqdefault.jpg', 'Quality Of Service - Neues Feature Clustered Data ONTAP 8.2'),
(182, 14, 0, 'RGPvP0Q022Y', 'https://i1.ytimg.com/vi/RGPvP0Q022Y/mqdefault.jpg', 'Warum kompliziert -- wenn es auch einfach geht?'),
(183, 14, 0, '-T1WpwmJExo', 'https://i1.ytimg.com/vi/-T1WpwmJExo/mqdefault.jpg', 'Smart, sicher, skalierbar: Agile Data Infrastructure von NetApp'),
(184, 14, 0, '49h-WreF-KI', 'https://i1.ytimg.com/vi/49h-WreF-KI/mqdefault.jpg', 'Smart, sicher, skalierbar: Agile Data Infrastructure von NetApp basierend auf Data ONTAP'),
(185, 14, 0, 'WYuAHpemp24', 'https://i1.ytimg.com/vi/WYuAHpemp24/mqdefault.jpg', 'NetApp Storage System FAS6200 - Always On'),
(186, 14, 0, 'OZV3QPUrNz4', 'https://i1.ytimg.com/vi/OZV3QPUrNz4/mqdefault.jpg', 'Flash Accel - Technische Demo'),
(187, 14, 0, '4UFA6p6GQNk', 'https://i1.ytimg.com/vi/4UFA6p6GQNk/mqdefault.jpg', 'ADI optimiert IT-Performance'),
(188, 14, 0, '1bVWQIFGODk', 'https://i1.ytimg.com/vi/1bVWQIFGODk/mqdefault.jpg', 'NetApp Data ONTAP - Mehr Spielraum für den Mittelstand'),
(189, 14, 0, 'FILB_umWiGc', 'https://i1.ytimg.com/vi/FILB_umWiGc/mqdefault.jpg', 'Große Datenmengen beherrschen: NetApp Data ONTAP Clustering'),
(190, 14, 0, 'Gc3fn6vye7s', 'https://i1.ytimg.com/vi/Gc3fn6vye7s/mqdefault.jpg', 'Datacenter-Technologien: Data ONTAP Cluster-Mode'),
(191, 14, 0, 'jEFkaIlQ-ns', 'https://i1.ytimg.com/vi/jEFkaIlQ-ns/mqdefault.jpg', 'Einführung ThinProvisioning'),
(192, 14, 0, 'kpkGotcjrso', 'https://i1.ytimg.com/vi/kpkGotcjrso/mqdefault.jpg', 'Einführung System Manager'),
(193, 14, 0, 'CEqodTsa_RM', 'https://i1.ytimg.com/vi/CEqodTsa_RM/mqdefault.jpg', 'Revisionsichere Archivierung'),
(194, 14, 0, 'Rdtc_Kw1dS0', 'https://i1.ytimg.com/vi/Rdtc_Kw1dS0/mqdefault.jpg', 'Technologien zur Datensicherung'),
(195, 3, 0, '6gIkyYdi3DU', 'https://i1.ytimg.com/vi/6gIkyYdi3DU/mqdefault.jpg', 'NetApp im Interview: Alles über Flash'),
(196, 4, 0, 'ozto1-lxIfI', 'https://i1.ytimg.com/vi/ozto1-lxIfI/mqdefault.jpg', 'Fresenius Netcare: zuverlässige und agile NetApp Storage-Lösung für SAP-Umgebung');

-- --------------------------------------------------------

--
-- Constraints der Tabelle `p4_youtube_videos`
--
ALTER TABLE `p4_youtube_videos`
ADD CONSTRAINT `p4_youtube_videos_ibfk_1` FOREIGN KEY (`playlistId`) REFERENCES `p4_youtube_playlist` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;