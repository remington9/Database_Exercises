use codeup_test_db;

SELECT album_release as 'All albums released after 1991 ' FROM albums WHERE album_release > '1991';
SELECT album_genre as 'All disco almbums ' FROM albums WHERE album_genre = 'Disco';
SELECT album_artist as 'All of Whitney Houston''s almbums ' FROM albums WHERE album_artist = 'Whitney Houston';

DELETE FROM albums WHERE album_release > '1991';
DELETE FROM albums WHERE album_genre = 'Disco';
DELETE FROM albums WHERE album_artist = 'Whitney Houston';