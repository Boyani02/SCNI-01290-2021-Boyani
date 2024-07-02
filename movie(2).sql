USE movie;
ALTER TABLE movies
ADD CHECK (moviestatus IN ( 'yet to be released','released','cancelled'))

ALTER TABLE moviestars
ADD CHECK (gender IN ('female', 'male'))

ALTER TABLE movieroles
ADD CHECK (rolename IN ('main actor', 'supporting role', 'villian'))

ALTER TABLE media
ADD CHECK (medianame IN ('DVD', 'Blu ray'))

ALTER TABLE privilege
ADD CHECK (addedby IN ('viewer', 'editor', 'administrator'));