CREATE DATABASE transaction_db;
USE transaction_db;
CREATE TABLE employee (
 id INT PRIMARY KEY,
 name VARCHAR(20),
 salary INT
);
INSERT INTO employee VALUES
(1, 'Kavi', 40000),
(2, 'Kar', 30000),
(3, 'Shanthi', 40000);
-- Start a transaction
START TRANSACTION;
-- Create a savepoint
SAVEPOINT sp1;
-- Insert a temporary row
INSERT INTO employee VALUES (4, 'Uma', 70000);
-- Undo only the insert after the savepoint
ROLLBACK TO SAVEPOINT sp1;
SELECT * FROM employee;
-- Permanently save the remaining transaction
COMMIT;
SELECT * FROM employee;
