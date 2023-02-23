SELECT type, COUNT(type)
FROM netflix_condense
WHERE country = 'United States'
GROUP BY type
HAVING COUNT(type) > 1;
