SELECT listed_in, COUNT(listed_in)
FROM netflix_condense
WHERE country = 'United States' AND type = 'Movie'
GROUP BY listed_in
ORDER BY COUNT(listed_in) DESC;
