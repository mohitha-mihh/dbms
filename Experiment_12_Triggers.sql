CREATE DATABASE trigger_db;
USE trigger_db;
CREATE TABLE student (
 id INT PRIMARY KEY,
 name VARCHAR(30),
 class_no INT
);
CREATE TABLE student_log (
 message VARCHAR(255)
);
-- Log every inserted student
DELIMITER //
CREATE TRIGGER after_student_insert
AFTER INSERT ON student
FOR EACH ROW
BEGIN
 INSERT INTO student_log
 VALUES (CONCAT('Inserted: ', NEW.id, ' ', NEW.name));
END //
-- Log every class update
CREATE TRIGGER after_student_update
AFTER UPDATE ON student
FOR EACH ROW
BEGIN
 INSERT INTO student_log
 VALUES (CONCAT('Updated ', OLD.name,
 ' from class ', OLD.class_no,
 ' to ', NEW.class_no));
END //
DELIMITER ;
INSERT INTO student VALUES (1, 'David', 9);
INSERT INTO student VALUES (2, 'Mike', 9);
UPDATE student SET class_no = 10 WHERE id = 1;
SELECT * FROM student;
SELECT * FROM student_log;
