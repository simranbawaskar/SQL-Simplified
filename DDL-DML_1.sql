--create three tables, Employee, department, and Sales
create table Employee (
empid int,
empname NVARCHAR(100),
deptno int,
gender NVARCHAR(20),
salary decimal(10,2));

create table Department (
deptno int,
dname  NVARCHAR(20),
);

create table Sales (
sid int, sname varchar(150), totalsales int);

--Now in the above question add an ‘email’ column in employee table,
-- add ‘department_code’ column in department table, and add ‘date’ column in sales table writing alter statement.

ALTER table Employee add email varchar(250);

ALTER table Sales add date DATE;

ALTER table Department add department_code varchar(50);


-- add records in every table
select * from Employee;
INSERT INTO Employee values (1,'Pavan Shetty', 20, 'M', 12000,'shetty.pa@gmail.com'), (2,'Avanti Chalke', 30, 'F', 80000, 'chalke.ava@outlook.com'),
(3, 'Dhruwa Patil', 55,'F',95000, 'dhru.patil@gmail.com');

select * from Sales;
INSERT INTO Sales Values (1, 'Atharv Dalvi',574, getdate()),
(2, 'Skanda AP', 648, '2024-02-01'),
(3, 'Shubham Ayachit', 548,'2023-09-06');

select * from Department
INSERT INTO Department Values (20, 'Robotics', 'RBT'), (30,'Ayurvedic','AYU'),(55,'Biotechnology','BOT');

--Delete all records from Sales table.
delete from Sales;

--Update all salary to 10000 in employee table.
UPDATE Employee
SET salary = 10000;

--update statement to update all the employee name as ‘linda’
UPDATE Employee SET empname = 'Linda';

--update statement to update all the gender as ‘female’.
UPDATE Employee SET gender = 'F';

DROP table Employee;
--Write syntax to create table with following requirement:
--tablename=Employee
--columns:
--employeeid(keep primary key)
--employeename(columns should not hold more then 255 characters)
--age(no nulls are allowed)
--dateofbirth(column should contain date values only, and nulls are not allowed)
--SSN(no duplicates are allowed in table)

CREATE table Employee 
(eid int Primary KEY,
ename varchar(250),
age  int NOT NULL,
dob  date NOT NULL,
SSN Varchar(200) Unique);

--In this question, we have a table called categories with the following data:
--category_id	category_name
--25	Deli
--50	Produce
--75	Bakery
--100	General Merchandise
--125	Technology

--1.	Write a query to create the above categories table & insert all records.
create table Categories ( category_id int, category_name Varchar(100));
INSERT INTO Categories Values (25, 'Deli'), (50,'Produce'), (75,'Bakery'), (100,'General Merchandise'), (125, 'Technology');

--2.	Write a SQL query to insert one record into the categories table. This new record would have a category_id of 150 and a category_name as 'Miscellaneous'.
INSERT INTO Categories Values (150, 'Miscellaneous');

--3.	Write a SQL code to delete all the records where category_id is less than 100.
Delete from Categories where category_id < 100;
select * from Categories;

--In this question, we have a table called employees with the following data:
--employee_number	last_name	first_name	salary	dept_id
--1001	Smith	John	62000	500
--1002	Anderson	Jane	57500	500
--1003	Everest	Brad	71000	501
--1004	Horvath	Jack	42000	501

--1.	Write a SQL Code to create employees table.
drop table Employee;
create table Employee (employee_number int PRIMARY KEY , last_name VARCHAR(50), first_name VARCHAR(50), salary decimal(10,2), dept_id int);



--2.	Write a single SQL statement to insert all records in employees table.
INSERT INTO Employee VALUES 
(1001, 'Smith',	'John',62000,500),
(1002,	'Anderson'	,'Jane',57500,500),
(1003,	'Everest',	'Brad',	71000,	501),
(1004,	'Horvath',	'Jack',	42000,	501);
--3.	Write a code to insert record in employees table. This new record would have employee_number of 1005, first_name as 'Mary'
--, salary of 47500 & employee_number of 1006, last_name as 'William', salary of 32000.
INSERT INTO Employee VALUES ( 1005,'','Mary',47500,NULL),(1006,'William','',32000,NULL);
select * from Employee;

--4.	Write a code to update all salary of employees by 20 percent.
UPDATE Employee SET salary = salary * 1.20;

--5.	Write a SQL query to delete all records for dept_id of 501.
delete from Employee where dept_id = 501;

--In this question, we have a table called suppliers with the following data:
--supplier_id	supplier_name	city	state
--100	Microsoft	Redmond	Washington
--200	Google	Mountain View	California
--300	Oracle	Redwood City	California
--400	Kimberly-Clark	Irving	Texas
--500	Tyson Foods	Springdale	Arkansas
--600	SC Johnson	Racine	Wisconsin
--700	Dole Food Company	Westlake Village	California
--800	Flowers Foods	Thomasville	Georgia
--900	Electronic Arts	Redwood City	California

--1.	Write a SQL Query to create & insert all records in suppliers table.
CREATE Table suppliers (supplir_id int PRIMARY KEY, supplier_name VARCHAR(100), city VARCHAR(50), state VARCHAR(50));
INSERT INTO suppliers VALUES
(100,	'Microsoft',	'Redmond',	'Washington'),
(200,	'Google'	,'Mountain View'	,'California'),
(300,	'Oracle',	'Redwood City',	'California'),
(400,	'Kimberly-Clark',	'Irving',	'Texas'),
(500,	'Tyson Foods'	,'Springdale',	'Arkansas'),
(600,	'SC Johnson',	'Racine',	'Wisconsin'),
(700,	'Dole Food Company',	'Westlake Village',	'California'),
(800,	'Flowers Foods'	,'Thomasville',	'Georgia'),
(900,	'Electronic Arts',	'Redwood City',	'California');

--2.	Write a query to delete a record where state as ‘California’ and supplier_name as ‘Google’.
delete from suppliers where state ='California' AND supplier_name ='Google';

--3.	Write a query to delete a record where state as ‘California’ and supplier_name as ‘Google’ and ‘Oracle’.
delete from suppliers where state ='California' AND supplier_name IN ('Google','Oracle') ;

--4.	Write a query to delete a record from suppliers table where supplier_name as ‘Microsoft’.
DELETE FROM suppliers where supplier_name = 'Microsoft';

--5.	Write a query to delete a record from suppliers table where state as ‘California’.
delete from suppliers where state ='California';

select * from suppliers;


