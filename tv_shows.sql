-- This query is used to answer the question, "Which genre had the most releases?"
-- Note this query is specific to 'TV Shows'

SELECT listed_in, COUNT(listed_in)
FROM netflix_condense
WHERE country = 'United States' AND type = 'TV Show'
GROUP BY listed_in
ORDER BY COUNT(listed_in) DESC;
