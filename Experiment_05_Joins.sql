CREATE DATABASE join_db;
USE join_db;
CREATE TABLE department (
 dept_id INT,
 dept_name VARCHAR(20)
);
CREATE TABLE employee (
 emp_id INT,
 emp_name VARCHAR(20),
 dept_id INT
);
INSERT INTO department VALUES
(1, 'CSE'), (2, 'IT'), (3, 'ECE');
INSERT INTO employee VALUES
(101, 'Anu', 1), (102, 'Bala', 2), (103, 'Charu', 1);
-- CROSS JOIN: all combinations
SELECT employee.emp_name, department.dept_name
FROM employee CROSS JOIN department;
-- INNER JOIN: matching rows only
SELECT employee.emp_name, department.dept_name
FROM employee INNER JOIN department
ON employee.dept_id = department.dept_id;
-- LEFT JOIN: all employees
SELECT employee.emp_name, department.dept_name
FROM employee LEFT JOIN department
ON employee.dept_id = department.dept_id;
-- RIGHT JOIN: all departments
SELECT employee.emp_name, department.dept_name
FROM employee RIGHT JOIN department
ON employee.dept_id = department.dept_id;
