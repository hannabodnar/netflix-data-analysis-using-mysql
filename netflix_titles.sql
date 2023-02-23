-- In order to work with the dataset, I created a table in MySQL Workbench that will store the information from the dataset.
-- While this is the original code, it has been modified from the default to include "NOT NULL" and an increase in byte size.
-- Refer to modify_columns.sql for details.

CREATE TABLE `netflix_titles` (
  `show_id` varchar(45) NOT NULL,
  `type` varchar(45) NOT NULL,
  `title` varchar(1000) NOT NULL,
  `director` varchar(1000) NOT NULL,
  `cast` varchar(1000) NOT NULL,
  `country` varchar(1000) NOT NULL,
  `date_added` text,
  `release_year` int DEFAULT NULL,
  `rating` varchar(45) NOT NULL,
  `duration` varchar(45) NOT NULL,
  `listed_in` varchar(1000) NOT NULL,
  `description` varchar(255) NOT NULL,
  PRIMARY KEY (`show_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci
