CREATE DATABASE my_db;
USE my_db;

create table students(
id int auto_increment primary key,
name varchar(100) not null default 'no name',
age int,
email varchar(100) unique,
is_passed bool );

SELECT * FROM students;

INSERT INTO students (id,name,age,email,is_passed) VALUES
(1,"sairaj",20-- "sai@gmail.com",TRUE),
(2,"PRITHES",30,"PRITHESH@gmail.com",TRUE);

SELECT @@autocommit;   -- auto commit on means once commited changes cannot de undone

SET autocommit=0;

START transaction;
UPDATE students SET age=age+1 WHERE id=1;
UPDATE students SET age=age-1 WHERE id=2;
COMMIT;

ROLLBACK;   -- no use cuz already commited

SET autocommit=1; 