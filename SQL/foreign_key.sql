CREATE database school;
USE school;

CREATE TABLE classes (
class_id INT auto_increment primary KEY,
class_name varchar(50) NOT NULL);

CREATE TABLE students (
student_id INT AUTO_INCREMENT PRIMARY KEY,
student_name VARCHAR(50) NOT NULL,
class_id INT,
FOREIGN KEY (class_id) references classes(class_id)   -- FORIGN KEY = CLASS_ID  REFERENCES CLASSES OF CLASS_ID  ,(class_id need not
                                                     -- to be same),student(class_id) depends on classes(class_id)

ON UPDATE CASCADE    -- if updated in classes also update in students	
ON DELETE SET NULL);    -- if row is deleted set column in another table as null

INSERT INTO classes (class_name) VALUES ('maths'),('science'),('history');

INSERT INTO students (student_name,class_id) values('allice',1),
('bob',2),('charlie',3);

SELECT * FROM students;
SELECT * FROM classes;

delete from classes where class_id=2;  -- student id _2 will be deleted ,cuz depends on classes(class_id)

UPDATE classes SET class_id=103 WHERE class_id=1;
UPDATE classes SET class_id=104 WHERE class_id=2;   -- willl also change in the student_id 2
UPDATE classes SET class_id=105 WHERE class_id=3;

SHOW CREATE TABLE students; -- to view forign key constraints