CREATE DATABASE operator_db;
USE operator_db;
CREATE TABLE numbers (num1 INT, num2 INT);
INSERT INTO numbers VALUES (5, 10), (15, 20);
-- Arithmetic operators
SELECT num1, num2, num1 + num2 AS addition FROM numbers;
SELECT num1, num2, num1 - num2 AS subtraction FROM numbers;
SELECT num1, num2, num1 * num2 AS multiplication FROM numbers;
SELECT num1, num2, num1 / num2 AS division FROM numbers;
SELECT num1, num2, POW(num1, 2) AS power_value FROM numbers;
SELECT num1, num2, num1 % num2 AS remainder FROM numbers;
-- Logical and comparison operators
SELECT * FROM numbers WHERE num1 > 5 AND num2 >= 20;
SELECT * FROM numbers WHERE num1 = 5 OR num2 = 20;
SELECT * FROM numbers WHERE num1 != num2;
