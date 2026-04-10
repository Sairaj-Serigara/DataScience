USE harryjoins;
SELECT * FROM employees;
SELECT first_name,last_name FROM employees;

SELECT CONCAT(first_name,' ',last_name) AS name FROM employees;

SELECT first_name,last_name,CONCAT(first_name,' ',last_name ) as name FROM employees;

SELECT first_name,length(first_name) as len from employees;

SELECT datediff('2020-03-10','2019-11-20');   -- diff in days
SELECT first_name,datediff(now(),hire_date) AS days from employees;
SELECT first_name,datediff(now(),hire_date)/365 AS years from employees;
SELECT first_name,round(datediff(now(),hire_date)/365,1) AS years from employees;
SELECT first_name,round(datediff(now(),hire_date)/365,0) AS years from employees;