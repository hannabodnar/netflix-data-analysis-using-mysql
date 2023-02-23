-- This query is used to answer the question, "Which genre had the most releases?"
-- Note this query is specific to 'Movies'


SELECT listed_in, COUNT(listed_in)
FROM netflix_condense
WHERE country = 'United States' AND type = 'Movie'
GROUP BY listed_in
ORDER BY COUNT(listed_in) DESC;
