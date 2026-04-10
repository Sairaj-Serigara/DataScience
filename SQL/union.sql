USE harryjoins;
SHOW TABLES;

SELECT * FROM students;
SELECT * FROM marks;

SELECT student_id FROM  marks UNION SELECT id FROM students; 

CREATE table employees(
employee_id INT PRIMARY KEY,
first_name VARCHAR(50),
last_name VARCHAR(50),
department VARCHAR(50),
hire_date DATE,
salary DECIMAL(10,2),
is_active BOOLEAN
);

DESC employees;

INSERT INTO employees (employee_id,first_name,last_name,department,hire_date,salary,is_active) VALUES 
(1,'Alice','johnson','enginnering','2020-03-10',75000.00,TRUE),
(2,'Bob','Smith','Marketing','2019-11-20',52000.00,TRUE),
(3,'Charlie','Devis','Finance','2021-06-21',89000.00,TRUE),
(4,'Dana','Lee','Human_reources','2018-06-20',20000.00,FALSE),
(5,'Evan','Tylor','enginnering','2022-10-10',23000.00,TRUE),
(6,'fiona','clark','sales','2025-03-10',90000.00,FALSE),
(7,'george','wright','IT-support','2025-07-14',50000.00,TRUE);

SELECT * FROM employees;

CREATE table emp_personal(
personal_id INT auto_increment PRIMARY KEY,
employee_id INT,
date_of_birth DATE,
phone_number VARCHAR(50),
email VARCHAR(50),
adress text,
marital_status VARCHAR(20),
foreign key (employee_id) references employees(employee_id)
);

INSERT INTO emp_personal (employee_id,date_of_birth,phone_number,email,adress,marital_status) VALUES
(1,'1990-10-24','9662139745','Alice.johnson@gmail.com','123 ty yshyg','single'),
(2,'1989-5-4','9662569745','Bob.Smith@gmail.com','123 hgf ybhyg','Married'),
(3,'1972-8-24','9856321456','Charlie.Devis@gmail.com','1265 nkyg oujg','single'),
(4,'1990-12-11','9851541456','Dana.Lee@gmail.com','1564 ggyug vddrs','married'),
(5,'1890-05-08','9845231456','Evan.Tylor@gmail.com','4561 ggfty vgc','single'),
(6,'1992-01-28','9234231456','fiona.clark@gmail.com','54 vgy huy','single'),
(7,'1995-10-13','9234231456','george.wright@gmail.com','126 jhgtyf aep','divorced');

SELECT * FROM emp_personal;
SELECT * FROM employees;

SELECT email,adress FROM emp_personal UNION SELECT first_name,last_name FROM employees; -- every datas must be of same datatype

