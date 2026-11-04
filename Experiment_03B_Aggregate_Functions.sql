CREATE DATABASE aggregate_db;
USE aggregate_db;
CREATE TABLE student (
 rollno INT,
 sname VARCHAR(20),
 marks INT
);
INSERT INTO student VALUES
(1001, 'Yamini', 95),
(1002, 'Rose', 84),
(1003, 'Jennie', 98);
SELECT COUNT(*) AS total_students FROM student;
SELECT SUM(marks) AS total_marks FROM student;
SELECT AVG(marks) AS average_marks FROM student;
SELECT MAX(marks) AS highest_marks FROM student;
SELECT MIN(marks) AS lowest_marks FROM student;
