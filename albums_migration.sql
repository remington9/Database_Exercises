USE codeup_test_db;
DROP TABLE IF EXISTS albums;

CREATE TABLE albums (
	id INT UNSIGNED NOT NULL AUTO_INCREMENT,
	album_artist VARCHAR(50) NOT NULL,
	album_name VARCHAR(100) NOT NULL,
	album_release INT(4),
	album_sales DECIMAL(10,2),
	album_genre VARCHAR(50),
	PRIMARY KEY (id)  
);

SHOW TABLES;