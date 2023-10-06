-- create database
create database db_name;

-- Drop database or delete database
drop database db_name;
DROP DATABASE IF EXISTS db_name;

CREATE DATABASE my_college;
CREATE DATABASE IF NOT EXISTS my_college;
USE my_college;

-- To create table
CREATE TABLE student (id INT PRIMARY KEY, s_name VARCHAR(25), s_age INT NOT NULL);
SELECT * FROM student;

-- To insert the data into the table
INSERT INTO student(id, s_name ,s_age) VALUES (1, 'AMAN',20);
INSERT INTO student(id, s_name ,s_age) VALUES (2, 'ABHISHEK',23);
INSERT INTO student(id, s_name ,s_age) VALUES (3, 'RASHIK',24);
INSERT INTO student(id, s_name ,s_age) VALUES (4, 'SACHIN',23);
INSERT INTO student(id, s_name ,s_age) VALUES (5, 'SANJESH',23);
INSERT INTO student(id, s_name ,s_age) VALUES (6, 'AMIT',23);
SELECT * FROM STUDENT;

DROP TABLE student;

CREATE TABLE student (id INT PRIMARY KEY, s_name VARCHAR(25), s_age INT NOT NULL);
SELECT * FROM student;
INSERT INTO student(id,s_name,s_age) VALUES(1,'SANJESH',23),
(2,'SACHIN',23),
(3,'RASHIK',24),
(4,'PRAVEEN',23),
(5,'ABHISHNEK',23),
(6,'AMIT',24);

SELECT * FROM student;
INSERT INTO student VALUES(7,'AMAN',24);
SELECT * FROM student;


-- To showing database and table
SHOW DATABASES;
SHOW TABLES;

-- QUESTION_1
CREATE DATABASE IF NOT EXISTS XYZ;
USE XYZ;
CREATE TABLE employee_info(id INT PRIMARY KEY, emp_name varchar(25),salary INT NOT NULL);
SELECT * FROM employee_info;
INSERT INTO employee_info(id,emp_name,salary) VALUES(1,'adam',25000),
(2,'bob',30000),
(3,'casey',40000);

-- THE WAY OF PRIMARY KEY DEFINE
/*
CREATE TABLE temp1(
id INT PRIMARY KEY,
age INT NOT NULL);

CREATE TABLE temp(
id INT NOT NULL,
age INT NOT NULL,
name VARCHAR(25),
PRIMARY KEY(id));

-- TO COLUMN MAKES PRIMARY KEY

CREATE TABLE temp2(
id INT,
name VARCHAR(25),
age INT NOT NULL,
PRIMARY KEY(id,name);
*/

 CREATE DATABASE College;
 USE College;
 CREATE TABLE Student(rollno INT PRIMARY KEY ,sname VARCHAR(25), marks INT NOT NULL, grade VARCHAR(1), city VARCHAR(20)); 
INSERT INTO Student (rollno,sname,marks,grade,city) VALUES
(101,'ANIL',78,'C','Pune'),
(102,'BHUMIKA',93,'A','Mumbai'),
(103,'CHETAN',85,'B','Mumbai'),
(104,'DHRUV',96,'A','Dehli'),
(105,'SHAMI',12,'F','Pune'),
(106,'FARAH',85,'B','Dehli');
SELECT * FROM Student;



SELECT sname,city FROM Student;
SELECT DISTINCT city FROM Student;

--  WHERE CLAUSE
SELECT * FROM Student WHERE marks > 80;
SELECT sname FROM Student WHERE city = 'Dehli';

-- OPERATOR WITH WHERE CLAUSE
SELECT * FROM Student WHERE marks+10 > 100;

-- AND OPERATOR
SELECT * FROM Student WHERE marks > 85 AND city = 'Mumbai';

-- OR OPERATOR
SELECT * FROM Student WHERE marks > 93 OR city = 'Dehli';

-- BETWEEN OPERATOR
SELECT * FROM Student WHERE marks BETWEEN 80 AND 90;

-- IN OPERATOR
SELECT * FROM Student WHERE city IN ('Pune','Mumbai');

-- NOT IN  OPERATOR
SELECT * FROM Student WHERE city NOT IN ('Dehli','Mumbai');

-- LIMIT CLAUSE
SELECT * FROM Student LIMIT 3;
SELECT * FROM Student WHERE marks > 75 LIMIT 3;

-- ORDER BY CLAUSE
SELECT * FROM Student ORDER BY city ASC; 
SELECT * FROM Student ORDER BY marks ASC; 

SELECT * FROM Student ORDER BY marks DESC LIMIT 3; 

-- AGREGATE FUNCTION
SELECT  MAX(marks) FROM Student;
SELECT AVG(marks) FROM Student LIMIT 3;
SELECT AVG(marks) FROM Student ;
SELECT COUNT(rollno) FROM Student;
SELECT SUM(marks) FROM Student LIMIT 3;

-- GROUP BY CLAUSE

SELECT city,sname,COUNT(rollno)  FROM Student GROUP BY city,sname;
SELECT city ,avg(marks)FROM Student GROUP BY city;
SELECT city ,avg(marks) FROM Student GROUP BY city ORDER BY city ASC;
SELECT city ,avg(marks) FROM Student GROUP BY city ORDER BY city ASC;
SELECT city ,avg(marks) FROM Student GROUP BY city ORDER BY city DESC;

CREATE TABLE customer(customer_id int primary key ,c_name varchar(25) not null ,mode varchar(25),city varchar(25));
select * from customer;
insert into customer(customer_id,c_name,mode,city) values(101,'omnath','netbanking','portland'),
(102,'elvishyadav','creditcard','miami'),
(103,'maya','creditcard','seattle'),
(104,'lena','netbanking','denver'),
(105,'sophia','creditcard','newyork'),
(106,'charan','debitcard','bosten');

insert into customer(customer_id,c_name,mode,city) values
(107,'amit','creditcard','miami');
select * from customer;
select city,count(mode) from customer group by city
select mode,count(customer_id) from customer group by mode;

select grade, count(rollno) from Student group by grade order by grade asc;

-- having clause
SELECT city,COUNT(rollno) FROM Student GROUP BY city HAVING MAX(marks) > 90;  

select * from Student;
use college;

-- UPDATE 
SET SQL_SAFE_UPDATES = 0;
Update Student SET grade = 'O' WHERE grade = 'A';











