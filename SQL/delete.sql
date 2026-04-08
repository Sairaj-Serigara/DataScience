USE schooldb;
SELECT * FROM student;

DELETE FROM student WHERE date_of_birth IS NULL;

DELETE FROM student WHERE age=NULL;

DELETE FROM student;

DROP TABLE student;

