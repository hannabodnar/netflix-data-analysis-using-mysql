ALTER TABLE netflix_titles
MODIFY COLUMN show_id varchar(45) NOT NULL,
MODIFY COLUMN type varchar(45) NOT NULL,
MODIFY COLUMN title varchar(1000) NOT NULL,
MODIFY COLUMN director varchar(1000) NOT NULL,
MODIFY COLUMN cast varchar(1000) NOT NULL,
MODIFY COLUMN country varchar(1000) NOT NULL,
MODIFY COLUMN rating varchar(45) NOT NULL,
MODIFY COLUMN duration varchar(45) NOT NULL,
MODIFY COLUMN listed_in varchar(1000) NOT NULL,
MODIFY COLUMN description varchar(255) NOT NULL;

