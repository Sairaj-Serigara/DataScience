USE schooldb;
SELECT * FROM student;

UPDATE student SET grade='10' WHERE grade='10-th' or grade='10_th';

UPDATE student SET age=age+3 WHERE AGE<20;
