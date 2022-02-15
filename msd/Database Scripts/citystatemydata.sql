INSERT INTO `country` (`id`, `name`) VALUES
(1, 'America'),
(2, 'India'),
(3,'Japan'),
(4, 'Nepal'),
(5, 'Russia');

INSERT INTO `state` (`id`, `name`, `countryId`) VALUES
(1, 'New York', 1),
(2, 'California', 1),
(3, 'Texas', 1),
(4, 'Florida', 1),
(5, 'Uttarakhand', 2),
(6, 'Haryana', 2),
(7, 'Punjab', 2),
(8, 'Mumbai', 2),
(9, 'Keral', 2),
(10, 'Kagawa', 3),
(11, 'Kyoto', 3),
(12, 'Bagmati Province', 4),
(13, 'Adygea.', 5);

select * from state;

INSERT INTO `city` (`id`, `name`, `stateId`) VALUES
(1, 'Los Angeles', 2),
(2, 'New York', 1),
(3, 'Dehradun', 5),
(4, 'Haldwani', 5),
(5, 'City xyz', 12),
(6, 'City idk', 10),
(7, 'City abc', 13);

