create database Sai;
show databases;
use sai;
create table student(
id int auto_increment primary key,
name varchar(100) not null default 'no name',
age int,
email varchar(100) unique,
admission date);
select * from student;  
show tables;
describe student;

rename table student to student_cwh;
show tables;
rename table student_cwh to students;
desc students;

alter table students rename column admission to admission_date;
desc students;

alter table students drop column admission_date;
desc students;

alter table students add column is_passed bool default True;
desc students;

ALTER TABLE students MODIFY COLUMN name varchar(50) default (" ");
desc students;

ALTER TABLE students MODIFY column name varchar(50) AFTER id;
desc students;

