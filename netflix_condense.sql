-- Since the dataset was so large, I decided to make a condensed table featuring only variables that I wanted to explore. 

CREATE TABLE `netflix_condense` (
  `type` varchar(45) NOT NULL,
  `title` varchar(1000) NOT NULL,
  `country` varchar(1000) NOT NULL,
  `date_added` text,
  `release_year` int NOT NULL,
  `rating` varchar(45) NOT NULL,
  `duration` varchar(45) NOT NULL,
  `listed_in` varchar(1000) NOT NULL,
  `show_id` varchar(45) NOT NULL,
  PRIMARY KEY (`show_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci
