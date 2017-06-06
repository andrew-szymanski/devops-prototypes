CREATE DATABASE mydb;
GRANT ALL PRIVILEGES ON mydb.* TO 'myuser'@'%' IDENTIFIED BY 'mysql';
GRANT ALL PRIVILEGES ON mydb.* TO 'myuser'@'localhost' IDENTIFIED BY 'mysql';
USE mydb

CREATE TABLE mytable
(
id INTEGER AUTO_INCREMENT,
sometext TEXT,
PRIMARY KEY (id)
) COMMENT='this is my test table';

INSERT INTO mytable (sometext) VALUES ("initial first record")
