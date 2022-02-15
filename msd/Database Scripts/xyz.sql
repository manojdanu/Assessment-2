CREATE TABLE `state` (
  `id` int NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `countryId` int NOT NULL REFERENCES country(id)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `state` (`id`, `name`, `countryId`) VALUES
(1, 'State 1', 1),
(2, 'State 2', 1),
(3, 'State 3', 1),
(4, 'State 5', 2),
(5, 'State 6', 2),
(6, 'State 7', 3),
(7, 'State 8', 3);
commit;
select * from state;
select * from country;

CREATE TABLE `country` (
  `id` int NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `name` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `country` (`id`, `name`) VALUES
(1, 'Country 1'),
(2, 'Country 2'),
(3, 'Country 3'),
(4, 'Country 4');