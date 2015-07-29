use codeup_test_db;

SELECT album_name as 'all almbum names ' FROM albums;
SELECT album_release as 'All albums released before 1980 ' FROM albums WHERE album_release < '1980';
SELECT album_name as 'All albums by Michael Jackson ' FROM albums WHERE album_artist = 'Michael Jackson';
UPDATE albums SET album_sales = album_sales * 10;
UPDATE albums SET album_release = album_release - 100;
UPDATE albums SET album_artist = 'Peter Jackson' WHERE album_artist = 'Michael Jackson' ;


