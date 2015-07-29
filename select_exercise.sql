use codeup_test_db;

SELECT album_name as 'The name of all albums by Pink Floyd.' FROM albums WHERE album_artist = 'Pink Floyd';

SELECT album_release as 'The year Sgt. Pepper''s Lonely Hearts Club Band was released' FROM albums WHERE album_name = 'Sgt. Pepper''s Lonely Hearts Club Band';

SELECT album_genre as 'The genre for Nevermind' FROM albums WHERE album_name = 'Nevermind';

SELECT album_name as 'Which albums were released in the 1990s' FROM albums WHERE album_release BETWEEN '1990' and '1999';

SELECT album_name as 'Which albums had less than 20 million certified sales' FROM albums WHERE album_sales < '20';

SELECT album_name as 'All the albums in the rock genre. Is this all the rock albums in the table?' FROM albums WHERE album_genre = 'rock';
