-- sub query is a query which is nested inside another query

USE harryjoins;
SELECT * FROM employees;

SELECT first_name,last_name,salary FROM employees WHERE salary >( SELECT AVG(salary) FROM EMPLOYEES);

SELECT first_name,last_name FROM employees e WHERE salary >(SELECT AVG(salary) FROM employees WHERE department=e.department);
-- here e refers to employee table 
-- here it chooses roes one by one  of employee
-- select first_name and last_name from employee where avg sal is greatre than salary from employee where dept=employee.dept
-- here since it choosee one by one row first row is selected where employee=allice johnson ,dept= allice dept
-- WHERE department = e.department :Find rows in employees table that have the SAME department as the current employee