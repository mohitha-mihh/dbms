CREATE DATABASE where_db;
USE where_db;
CREATE TABLE student (
 rollno INT,
 sname VARCHAR(20),
 marks INT
);
INSERT INTO student VALUES
(1001, 'Yamini', 95),
(1002, 'Rose', 84),
(1003, 'Jennie', 98),
(1004, 'Ravi', 76);
-- Comparison condition
SELECT * FROM student WHERE marks > 90;
-- Logical operators
SELECT * FROM student
WHERE marks >= 80 AND rollno < 1003;
-- BETWEEN
SELECT * FROM student WHERE marks BETWEEN 80 AND 90;
-- LIKE
SELECT * FROM student WHERE sname LIKE 'R%';
-- IN
SELECT * FROM student WHERE marks IN (84, 98);
