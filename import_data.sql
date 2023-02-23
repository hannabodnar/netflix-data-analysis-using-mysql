-- After creating my condensed table, I imported the information I needed from my original table. 

INSERT INTO netflix_condense (show_id, type, title, country, date_added, release_year, rating, duration, listed_in)
SELECT show_id, type, title, country, date_added, release_year, rating, duration, listed_in
FROM netflix_titles;
