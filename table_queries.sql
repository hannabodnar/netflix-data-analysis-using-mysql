-- MySQL Queries

-- Create table in MySQL Workbench for dataset

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

-- Clean dataset by removing rows/columns with NULL values

SELECT *               -- used for each column
FROM netlfix_titles
WHERE director = '';


DELETE FROM netflix_titles WHERE director = '';
DELETE FROM netflix_titles WHERE country = '';
DELETE FROM netflix_titles WHERE cast = '';
DELETE FROM netflix_titles WHERE rating = '';

-- Create condensed table with only the variables in interest

CREATE TABLE `netflix_table` (
  `show_id` varchar(45) NOT NULL,
  `type` varchar(45) NOT NULL,
  `title` varchar(1000) NOT NULL,
  `country` varchar(1000) NOT NULL,
  `date_added` text,
  `release_year` int NOT NULL,
  `rating` varchar(255) NOT NULL,
  `duration` varchar(255) NOT NULL,
  `listed_in` varchar(1000) NOT NULL,
  PRIMARY KEY (`show_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci

-- Import data from netflix_titles

INSERT INTO netflix_table (show_id, type, title, country, date_added, release_year, rating, duration, listed_in)
SELECT show_id, type, title, country, date_added, release_year, rating, duration, listed_in
FROM netflix_titles;
