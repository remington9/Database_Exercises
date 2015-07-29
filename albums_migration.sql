USE codeup_test_db;
DROP TABLE IF EXISTS albums;

CREATE TABLE albums (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    artist VARCHAR(100) DEFAULT 'NONE',
    name  VARCHAR(100) NOT NULL,
    release_date DATE NOT NULL,
    sales FLOAT(9,2) NOT NULL,
    genre VARCHAR(100) NOT NULL,
    PRIMARY KEY (id)
);