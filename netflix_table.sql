CREATE TABLE `netflix_condense` (
  `type` varchar(45) NOT NULL,
  `title` varchar(1000) NOT NULL,
  `country` varchar(1000) NOT NULL,
  `date_added` text,
  `release_year` int NOT NULL,
  `rating` varchar(45) NOT NULL,
  `duration` varchar(45) NOT NULL,
  `listed_in` varchar(1000) NOT NULL,
  PRIMARY KEY (`title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci

