use my_db;
CREATE TABLE accounts(
id INT,
balance DECIMAL(10,2) CHECK (balance>=0));

-- INSERT INTO accounts(id ,balance) VALUES(1,-36); 

INSERT INTO accounts(id ,balance) VALUES(1,36); 
SELECT * FROM accounts;


CREATE TABLE college_student(
roll_no INT PRIMARY KEY,
 age INT CONSTRAINT chk_age CHECK(AGE>=18),    -- creating constraints named chk_age 
email VARCHAR(100) UNIQUE );
SELECT * FROM college_student;

INSERT INTO college_student(roll_no,age,email)
VALUES (1,29,'sss@gmail.com');

INSERT INTO college_student(roll_no,age,email)
VALUES (2,55,'ss@gmail.com');