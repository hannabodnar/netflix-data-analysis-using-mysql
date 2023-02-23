-- Addresses the question, "Which country has the most releases?"

SELECT country, COUNT(country)
FROM netflix_condense
GROUP BY country
ORDER BY COUNT(country) DESC;
