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

-- Stored Procedure with Parameters

delimiter //

CREATE PROCEDURE get_employee_by_id(IN id INT)

BEGIN
SELECT * FROM employees WHERE employee_id=id;
END //

delimiter ;
call get_employee_by_id(4);

-- DROP PROCEDURE IF EXISTS get_employee_by_id
