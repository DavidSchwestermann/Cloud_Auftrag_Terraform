
use mariadb;

DROP TABLE IF EXISTS section;
CREATE TABLE `section` (
                           `id` int(11) NOT NULL,
                           `name` varchar(255) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
DROP TABLE IF EXISTS Mitarbeiter;
CREATE TABLE `Mitarbeiter` (
                        `id` int(11) NOT NULL,
                        `section_idfs` int(11) NOT NULL,
                        `Name` text COLLATE utf8_bin NOT NULL,
                        `Nachname` text COLLATE utf8_bin NOT NULL,
                        `Alter` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
--
-- Indizes für die Tabelle `Mitarbeiter`
--
ALTER TABLE `Mitarbeiter` ADD PRIMARY KEY (`id`);
ALTER TABLE `section` ADD PRIMARY KEY (`id`);
ALTER TABLE `Mitarbeiter` MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
ALTER TABLE `section` MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;


INSERT INTO `section` (`id`, `name`) VALUES
(1, 'Mitarbeiter'),
(2, 'Angestellter');

INSERT INTO `Mitarbeiter` (`id`, `section_idfs`, `Name`, `Nachname`, `Alter`) VALUES
(1, 1, 'David' , 'Schwestermann' , 19 ),
(2, 1, 'Luca' , 'Amrein' , 19 ),
(3, 1, 'Yannic' , 'Erzinger' , 19 ),
(6, 2, 'Yves' , 'Huber' , 18 ),

