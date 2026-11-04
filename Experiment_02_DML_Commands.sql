CREATE DATABASE dml_db;
USE dml_db;
CREATE TABLE student (
 name VARCHAR(20),
 regno INT,
 address VARCHAR(40)
);
INSERT INTO student VALUES
('Shalini', 1001, 'Chennai'),
('Vinosha', 1002, 'Tambaram'),
('Bharani', 1003, 'Chromepet');
SELECT * FROM student;
UPDATE student SET address = 'Pallavaram'
WHERE regno = 1002;
SELECT * FROM student;
SELECT * FROM student WHERE regno = 1001;
DELETE FROM student WHERE regno = 1003;
SELECT * FROM student;
