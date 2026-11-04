CREATE DATABASE constraint_db;
USE constraint_db;
CREATE TABLE department (
 dept_id INT PRIMARY KEY,
 dept_name VARCHAR(20) UNIQUE
);
CREATE TABLE student (
 roll INT PRIMARY KEY,
 name VARCHAR(20) NOT NULL,
 email VARCHAR(50) UNIQUE,
 city VARCHAR(20) DEFAULT 'Chennai',
 mark INT CHECK (mark >= 0 AND mark <= 100),
 dept_id INT,
 FOREIGN KEY (dept_id) REFERENCES department(dept_id)
);
INSERT INTO department VALUES (1, 'CSE'), (2, 'IT');
INSERT INTO student (roll, name, email, mark, dept_id)
VALUES (1, 'Anu', 'anu@mail.com', 90, 1);
INSERT INTO student (roll, name, email, mark, dept_id)
VALUES (2, 'Bala', 'bala@mail.com', 85, 2);
SELECT * FROM student;
