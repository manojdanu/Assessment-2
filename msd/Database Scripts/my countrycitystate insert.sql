INSERT INTO `country` (`id`, `name`) VALUES
(1, 'Afghanistan'),
(2, 'America'),
(3, 'India'),
(4, 'Israel'),
(5, 'Japan'),
(6, 'SouthKorea');
select * from state;
INSERT INTO state (id, name,countryId) VALUES
(1, 'Kabul',1),
(2, 'Herat',1),
(3, 'California',2),
(4, 'New York',2),
(5, 'Texas',2),
(6, 'Uttarakhand',3),
(7, 'Haryana',3),
(8, 'Rajasthan',3),
(9, 'Gujarat',3),
(10, 'Jerusalem District',4),
(11, 'Haifa District',4),
(12, 'Tohoku',5),
(13, 'North Chungcheong',6),
(14, 'North Jeolla',6);

select * from city;
INSERT INTO city (id, name,stateId) VALUES
(1, 'Kabul',1),
(2, 'Herat',2),
(3, 'San Diego',3),
(4, 'New York',4),
(5, 'San Antonio',5),
(6, 'Dehradun',6),
(7, 'Haldwani',6),
(8, 'Udham Singh Nagar',6),
(9, 'Chandigarh',7),
(10, 'Jaipur',8),
(11, 'Gandhi Nagar',9),
(12, 'Mehoz Yerushalayim',10),
(13, 'Mehoz Heifa',11),
(14, 'senadi',12),
(15, 'Cheongju',13),
(16, 'Jeonju',14);

