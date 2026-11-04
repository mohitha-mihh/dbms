CREATE DATABASE company_db;
USE company_db;
CREATE TABLE employees (
 id INT PRIMARY KEY,
 name VARCHAR(30),
 department VARCHAR(30)
);
-- Create a database user
CREATE USER 'john'@'localhost' IDENTIFIED BY 'John@123';
-- Give SELECT and INSERT permissions
GRANT SELECT, INSERT ON company_db.employees
TO 'john'@'localhost';
-- Check the granted permission (run after logging in as john)
SELECT * FROM company_db.employees;
INSERT INTO company_db.employees
VALUES (1, 'Alice', 'HR');
-- Remove INSERT permission
REVOKE INSERT ON company_db.employees
FROM 'john'@'localhost';
-- This INSERT should now be denied for john
INSERT INTO company_db.employees
VALUES (2, 'Bob', 'IT');
-- SELECT permission is still available
SELECT * FROM company_db.employees;
