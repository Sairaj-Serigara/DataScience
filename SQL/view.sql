USE harryjoins;
SELECT * FROM employees;

-- here im creating a view named raj,view is a virtual table which doesnt store data by itself	instead shows data from one or more table
-- its like im storing query first_name,dept,years 
-- view is used to simplify a queries by giving them a name

CREATE VIEW raj  AS SELECT first_name,department,round(datediff(now(),hire_date)/365,0)  AS year FROM employees;
SELECT * FROM raj;
SELECT * FROM raj WHERE year >5;

-- UPDATING A VIEW
CREATE OR REPLACE VIEW raj as SELECT first_name,last_name,department,round(datediff(now(),hire_date)/365,0) AS year FROM employees;
SELECT * FROM raj;

-- DROP VIEW raj;

