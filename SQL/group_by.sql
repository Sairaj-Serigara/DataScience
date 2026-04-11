USE harryjoins;
SELECT * FROM employees;

SELECT department ,count(*) AS total FROM employees group by department;

SELECT department,AVG(salary) AS avg FROM employees group by department;

SELECT department ,is_active,AVG(salary) AS avg FROM employees group by department,is_active;

-- cannot use where in groupby

SELECT department,AVG(salary) AS total FROM employees group by department having total>50000;


-- group employees by department then only shoe those dept where total >1
SELECT department,COUNT(*) AS total FROM employees group by department having total>1;

SELECT department ,is_active,AVG(salary) AS avg FROM employees group by department,is_active with rollup;
-- calculates avg of each dept and also avg of total
