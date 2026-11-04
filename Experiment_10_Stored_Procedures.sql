CREATE DATABASE procedure_db;
USE procedure_db;
CREATE TABLE employee (
 id INT PRIMARY KEY,
 name VARCHAR(30),
 salary DECIMAL(10,2)
);
INSERT INTO employee VALUES
(1, 'John', 50000),
(2, 'Jane', 60000);
-- IN parameter
DELIMITER //
CREATE PROCEDURE GetEmployee(IN emp_id INT)
BEGIN
 SELECT * FROM employee WHERE id = emp_id;
END //
-- OUT parameter
CREATE PROCEDURE GetSalary(
 IN emp_id INT,
 OUT emp_salary DECIMAL(10,2)
)
BEGIN
 SELECT salary INTO emp_salary
 FROM employee WHERE id = emp_id;
END //
-- INOUT parameter
CREATE PROCEDURE UpdateBonus(INOUT bonus DECIMAL(10,2))
BEGIN
 SET bonus = bonus + 500;
END //
DELIMITER ;
CALL GetEmployee(2);
SET @salary = 0;
CALL GetSalary(2, @salary);
SELECT @salary AS EmployeeSalary;
SET @bonus = 1500;
CALL UpdateBonus(@bonus);
SELECT @bonus AS UpdatedBonus;
