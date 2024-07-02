INSERT INTO movies (title,releasedate,moviestatus,synopsis,poster,trailer,ratings,duration,directorid,userid,deleted)
VALUES ('The Blacklist','2013-09-23','released','Raymond "Red" Reddington one of the FBI most wanted fugitives','https://www.alangordon.com/the-blacklist','https://www.youtube.com/watch?v=3rg0n5zjHc0',7.2,43,1,2,0);

INSERT INTO movies (title,releasedate,moviestatus,synopsis,poster,trailer,ratings,duration,directorid,userid,deleted)
VALUES ('Hawaii FIVE-0','2010-09-20','released','Steve McGarrett returns home to Oahu, in order to find his father killer','https://m.media-amazon.com/images/I/71EEgghpSLS._AC_UF894,1000_QL80_.jpg','https://www.youtube.com/watch?v=xy30TGdaEAE',7.4,44,2,3,0);

ALTER TABLE movies MODIFY ratings DECIMAL(3,1);

-- SELECT DATA --
SELECT movieid,synopsis,title,releasedate,ratings FROM movies

-- FILTER DATA -- WHERE CLAUSE
SELECT movieid,synopsis,title,releasedate,ratings FROM movies
WHERE ratings = 7.4

SELECT movieid,synopsis,title,releasedate,ratings FROM movies
WHERE synopsis LIKE '%FBI%'

-- SORT DATA -- ORDER CLAUSE
SELECT movieid,synopsis,title,releasedate,ratings FROM movies
ORDER BY releasedate ASC

-- FUNCTIONS -- Scalar value functions
SELECT movieid,UPPER (synopsis),title,releasedate,ratings FROM movies

SELECT movieid,synopsis,title,releasedate,ratings, 
CHAR_LENGTH (title) AS charactersintitle
FROM movies

SELECT movieid,UPPER (synopsis) AS uppercasesynopsis,title,releasedate,ratings, 
CHAR_LENGTH (title) AS charactersintitle, LEFT (title,4) abbreviation
FROM movies

-- AGGREGATE FUNCTIONS
SELECT COUNT(movieid) moviestotal FROM movies

SELECT AVG(ratings) FROM movies

SELECT SUM(ratings) FROM movies

SELECT MIN(ratings) FROM movies

SELECT MAX(ratings) FROM movies

-- GROUPING -- GROUP BY CLAUSE
SELECT ratings, COUNT(movieid) AS movieratings
FROM movies
GROUP BY ratings
HAVING COUNT(movieid)>1
LIMIT 0, 1000

INSERT INTO users(username,firstname,lastname)
VALUES('Jom','Joe','Mira')

ALTER TABLE movies CHANGE userid addedby INT;

-- JOIN --
SELECT movieid,synopsis,title,releasedate,ratings,firstname,lastname
FROM movies , users
WHERE movies. addedby = users. userid

SELECT movieid,synopsis,title,releasedate,ratings,firstname,lastname
FROM movies AS m INNER JOIN users AS u
ON m. addedby = u. userid

SELECT movieid,synopsis,title,releasedate,ratings, CONCAT (firstname,' ',lastname) addedbyname
FROM movies , users
WHERE movies. addedby = users. userid

-- OUTER JOIN --
SELECT movieid,synopsis,title,releasedate,ratings,CONCAT (firstname,' ',lastname) addedbyname
FROM movies AS m LEFT OUTER JOIN users AS u
ON m. addedby = u. userid


