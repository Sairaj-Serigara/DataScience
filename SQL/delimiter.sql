-- A Stored Procedure is a saved block of SQL code that you can execute later by calling its name.
 

USE harryjoins;
SELECT * FROM employees;

delimiter //

CREATE PROCEDURE list_of_employees()
BEGIN
select CONCAT(first_name," " ,last_name) as name from employees;
END //

delimiter ;

call list_of_employees();