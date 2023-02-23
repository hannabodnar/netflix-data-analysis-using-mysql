SELECT type, COUNT(type), country
FROM netflix_condense
WHERE country = 'United States'
GROUP BY type
HAVING COUNT(type) > 1;
