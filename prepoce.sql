
---crear tabla con películas que han sido calificadas entre 20 y 150 usuarios
DROP TABLE IF EXISTS movies_sel;

CREATE TABLE movies_sel AS SELECT movieId,
                         count(*) AS cnt_rat
                         FROM ratings
                         GROUP BY movieId
                         HAVING cnt_rat >=20 AND cnt_rat <=300;

DROP TABLE IF EXISTS movies_n;
CREATE TABLE movies_n AS SELECT movieId, title, genres
                        FROM movies;

-------

DROP TABLE IF EXISTS  ratings_final;

CREATE TABLE  ratings_final AS
SELECT a.UserId AS userId,
a.movieId AS movieId,
a.rating AS rating,
a.timestamp AS timestamp
FROM ratings a
INNER JOIN movies_sel b
ON a.movieId =b.movieId;


DROP TABLE IF EXISTS movies_final;

CREATE TABLE movies_final as select
a.*,
b.*
from movies_n a inner join
movies_sel b on a.movieId = b.movieId;

-- crear tabla completa

DROP TABLE IF EXISTS full_ratings;

CREATE TABLE full_ratings AS
SELECT 
    a.userId,
    a.movieId,
    a.rating,
    a.timestamp,
    b.*
FROM 
    ratings_final a
INNER JOIN 
    movies_final b ON a.movieId = b.movieId;





