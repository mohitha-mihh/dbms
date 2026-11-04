CREATE DATABASE college;
USE college;
CREATE TABLE student (
 name VARCHAR(30),
 regno INT,
 age INT,
 city VARCHAR(20)
);
DESC student;
ALTER TABLE student ADD phone VARCHAR(15);
DESC student;
ALTER TABLE student MODIFY age SMALLINT;
DESC student;
ALTER TABLE student DROP COLUMN phone;
DESC student;
TRUNCATE TABLE student;
DESC student;
DROP TABLE student;
SHOW TABLES;
