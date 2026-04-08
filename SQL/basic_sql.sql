CREATE DATABASE SchoolDB;
USE SchoolDB;

CREATE TABLE student(
id INT primary KEY ,
name VARCHAR(50),
age INT ,
grade VARCHAR(50),
date_of_birth date
);

desc student;

INSERT INTO student(id,name,age,grade,date_of_birth) VALUES (1,"Sairaj",20,"engineering","2005-07-10");
SELECT * FROM student;

INSERT INTO student (id,name,age,grade,date_of_birth) VALUES
(2,"prithesh",20,"enginnering","2005-04-14"),
(3,"prajwal",20,"10-th","2005-08-24"),
(4,"pavan",20,"12-th","2005-05-29"),
(5,"sacchu",20,"10_th","2005-04-13");
SELECT* FROM student;
INSERT INTO student (name,id,age,grade,date_of_birth)VALUES("prajwal",6,20,"10-th","2005-08-24");

USE schooldb;
SELECT * FROM student;

SELECT  name,age FROM student WHERE grade="10-th";

SELECT * FROM student WHERE age >15 and grade="10-th";


SELECT * FROM student WHERE name LIKE 'P%';

SELECT * FROM student WHERE name NOT  LIKE '%AJ';

INSERT INTO student(id,name,age,grade,date_of_birth) VALUES (7,'sagar',15,"pu",null);

SELECT * FROM student WHERE date_of_birth IS NULL;
SELECT * FROM student WHERE date_of_birth IS NOT NULL AND grade='10-TH';

SELECT * FROM STUDENT;

select * FROM student WHERE (grade="10-th" OR grade='12-TH') AND age>15;

SELECT * FROM student WHERE date_of_birth IS NOT NULL order by age DESC LIMIT 5;

SELECT * FROM student WHERE date_of_birth IS NOT NULL order by age DESC LIMIT 2,5;   -- SKIP FIRST TWO AND NEXT 5  
