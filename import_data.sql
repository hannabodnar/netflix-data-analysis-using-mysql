INSERT INTO netflix_condense (show_id, type, title, country, date_added, release_year, rating, duration, listed_in)
SELECT show_id, type, title, country, date_added, release_year, rating, duration, listed_in
FROM netflix_titles;
