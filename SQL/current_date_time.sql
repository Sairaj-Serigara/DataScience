SELECT current_date;
SELECT current_time;

SELECT current_timestamp;
SELECT now();

SELECT localtime();
SELECT localtimestamp();

USE my_db;
select * from students;

ALTER TABLE students ADD COLUMN date_joind DATETIME DEFAULT (now());

INSERT INTO students (id,age,date_joind)
values(3,45,now());
INSERT INTO students (id,age,date_joind)
values(4,56,current_time());