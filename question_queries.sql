-- Question Queries

/* In the dataset, which genre had the most releases? */

SELECT listed_in, COUNT(listed_in)
FROM netflix_table
GROUP BY listed_in
ORDER BY COUNT(listed_in) DESC;

/* In the United States, which genre had the most releases? (Movies) */

SELECT listed_in, COUNT(listed_in)
FROM netflix_table
WHERE country = 'United States' AND type = 'Movie'
GROUP BY listed_in
ORDER BY COUNT(listed_in) DESC;

/* In the United States, which genre had the most releases? (TV Shows) */

SELECT listed_in, COUNT(listed_in)
FROM netflix_table
WHERE country = 'United States' AND type = 'TV Show'
GROUP BY listed_in
ORDER BY COUNT(listed_in) DESC;

/* Which country had the most releases? */

SELECT country, COUNT(country)
FROM netflix_table
GROUP BY country
ORDER BY COUNT(country) DESC;

/* Were there more movies or TV shows in the dataset? */

SELECT type, COUNT(type)
FROM netflix_table
GROUP BY type
HAVING COUNT(type) > 1;

/* Which rating had the most releases? */

SELECT rating, COUNT(rating)
FROM netflix_table
GROUP BY rating
ORDER BY COUNT(rating) DESC;

/* In the United States, for each year, which rating had the most releases? */

SELECT release_year, rating, type, COUNT(rating) AS rating_amount
FROM netflix_table
WHERE country = 'United States' 
GROUP BY release_year, rating, type
ORDER BY release_year DESC, COUNT(rating) DESC;
