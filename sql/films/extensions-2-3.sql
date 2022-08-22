CREATE TABLE directors (
	id SERIAL PRIMARY KEY,
	name TEXT
);
--
CREATE TABLE films (
	id SERIAL PRIMARY KEY,
	title TEXT UNIQUE,
	genre TEXT,
	release_year INTEGER,
	score INTEGER,
	director_id INTEGER
);
--
INSERT INTO directors
	(name)
VALUES
	('Mike'),
	('Bob'),
	('Charles'),
	('Lisa'),
	('Jane');
--
INSERT INTO films 
	(title, genre, release_year, score, director_id)
VALUES
	('The Shawshank Redemption', 'Drama', 1994, 9, 1),
	('The Godfather', 'Crime', 1972, 9, 3),
	('The Dark Knight', 'Action', 2008, 9, 1),
	('Alien', 'SciFi', 1979, 9, 5),
	('Total Recall', 'SciFi', 1990, 8, 2),
	('The Matrix', 'SciFi', 1999, 8, 4),
	('The Matrix Resurrections', 'SciFi', 2021, 5, 4),
	('The Matrix Reloaded', 'SciFi', 2003, 6, 4),
	('The Hunt for Red October', 'Thriller', 1990, 7, 5),
	('Misery', 'Thriller', 1990, 7, 1),
	('The Power Of The Dog', 'Western', 2021, 6, 3),
	('Hell or High Water', 'Western', 2016, 8, 3),
	('The Good the Bad and the Ugly', 'Western', 1966, 9, 2),
	('Unforgiven', 'Western', 1992, 7, 5);
--
SELECT 
	title,
	directors."name"
FROM
	films
JOIN directors
	ON directors.id = films.director_id;
--
SELECT 
	name,
	COUNT(name)
FROM
	films
JOIN directors
	ON films.director_id = directors.id
GROUP BY
	name;