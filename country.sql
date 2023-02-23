SELECT country, COUNT(country)
FROM netflix_condense
GROUP BY country
HAVING COUNT(country) > 1;