SELECT release_year, rating, type, COUNT(rating) AS rating_amount
FROM netflix_condense
WHERE country = 'United States' 
GROUP BY release_year, rating, type
ORDER BY release_year DESC, COUNT(rating) DESC;




