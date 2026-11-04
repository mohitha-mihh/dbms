CREATE DATABASE subquery_db;
USE subquery_db;
CREATE TABLE department (
 dno INT PRIMARY KEY,
 dname VARCHAR(20)
);
CREATE TABLE employee (
 eno INT PRIMARY KEY,
 ename VARCHAR(20),
 salary INT,
 dno INT
);
INSERT INTO department VALUES (1, 'CSE'), (2, 'IT');
INSERT INTO employee VALUES
(1, 'Bala', 7000, 1),
(2, 'Kala', 10000, 2),
(3, 'Mala', 19000, 1),
(4, 'Nila', 20000, 1),
(5, 'Vina', 50000, 2);
-- 1. Employees earning less than average salary
SELECT * FROM employee
WHERE salary < (SELECT AVG(salary) FROM employee);
-- 2. Department-wise employee count
SELECT dno, COUNT(*) AS total
FROM employee GROUP BY dno;
-- 3. Employees earning between 10000 and 20000
SELECT * FROM employee
WHERE salary BETWEEN 10000 AND 20000;
-- 4. Employees in the CSE department
SELECT * FROM employee
WHERE dno = (SELECT dno FROM department WHERE dname = 'CSE');
