USE harryjoins;
SELECT * FROM employees;

SELECT * FROM employees WHERE department="enginnering" ;

CREATE index idx on employees(department);

CREATE INDEX multiple_index on employees(department,salary);

-- drop index multiple_index on employees;

SHOW INDEX FROM employees;