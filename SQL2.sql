
-- SQL Part two

/*
Find all fantasy movies using the many to many join between movies and genres
through movie_genre table.
 */
SELECT m.title, g.genres
FROM movies m
JOIN movie_genre mg ON m.movieid = mg.movieid
JOIN genre g ON mg.genre_id = g.id
GROUP BY g.id, m.title
HAVING g.id = 15;


/*
For each genre find the total number of reviews
as well as the average review sort by highest average review.
 */

SELECT g.genres, count(r.rating), avg(r.rating)
FROM ratings r
JOIN movies m ON m.movieid = r.movieid
JOIN movie_genre mg ON m.movieid = mg.movieid
JOIN genre g ON g.id = mg.genre_id
GROUP BY g.genres
ORDER BY avg(r.rating) DESC;

/*
Create a new table called actors (We are going to pretend the actor can only play in one movie)
The table should include name, character name,
foreign key to movies and date of birth at least plus an id field.
*/

CREATE TABLE public.actors
(
  id SERIAL PRIMARY KEY,
  name VARCHAR(255),
  character_name VARCHAR(255),
  movieid INTEGER,
  dob DATE
);

/*
Pick 3 movies and create insert statements for 10 actors each.
You should use the multi value insert statements
 */

INSERT INTO actors (name, character_name, movieid, dob)
    VALUES ('Bob', 'Mr. Bob', 1, '2010-01-01'),
      ('Tom Hanks', 'Woody', 1, '1950-02-15'),
      ('Tim Allen', 'Buzz Lightyear', 1, '1955-06-2'),
      ('Don Rickles', 'Mr. Potatoe Head', 1, '1948-08-25'),
      ('Leslie Nielson', 'Dracula', 12, '1957-01-23'),
      ('Peter MacNicol', 'Renfield', 12, '1967-11-16'),
      ('Steven Weber', 'Harper', 12, '1970-5-17'),
      ('Peter Weller', 'Joe Hendricksson', 76, '1966-4-22'),
      ('Roy Dupuis', 'Becker', 76, '1973-12-2'),
      ('Jennifer Rubin', 'Jessica Hanson', 76, '1976-10-22');


/*
Create a new column in the movie table to hold the MPAA rating.
UPDATE 5 different movies to their correct rating
 */

ALTER TABLE movies
ADD mpaa_rating VARCHAR(10);

UPDATE movies
SET mpaa_rating = 'G'
WHERE movieid IN (1, 13, 34);

UPDATE movies
SET mpaa_rating = 'PG'
WHERE movieid IN (2, 5);

