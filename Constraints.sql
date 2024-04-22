
--Ques1: create PK on eid in employee table,did in dept table,sid in sales table using any method.
create table emp
(eid int primary key, ename varchar(50),gender char(2),deptno int,salary int);

create table dept
(did int primary key,deptno int,dname varchar(30));

create table sale
(sid int primary key ,sname varchar(30),sdate varchar(30),emp_id int,total_sales int);

--Ques2: cretae FK on emp_id in sale table referring PK as eid from employee table.
ALTER TABLE sale ADD CONSTRAINT Fk_emp FOREIGN KEY(emp_id) REFERENCES emp(eid);

--Ques3: Add email ,telephone_no columns in employee table.(use appropriate datatypes)
ALTER TABLE emp ADD email NVARCHAR(250), telephone_no VARCHAR(15);

--Ques4: add default null values to email column in employee table.
ALTER TABLE emp ALTER COLUMN email VARCHAR(50) NULL;

--QUes5: Add defualt value as 00000 to telephone number coumn in employee table.
ALTER TABLE emp ADD CONSTRAINT df_telephone_no DEFAULT '00000' FOR telephone_no;

--Ques6: add check constraint to salary column in employee table such table salary>=100 and sal<100000
ALTER TABLE emp ADD CONSTRAINT ch_salary CHECK (salary >= 100 AND salary < 100000);

--Ques7: add check constraint on total_sales column in sales table such that no negative sales is allowed.
ALTER TABLE sale ADD CONSTRAINT ck_total_sales CHECK (total_sales >= 0);

--Ques8: add not null and unique constraint to sid in sales table.
ALTER TABLE sale ALTER COLUMN sid int NOT NULL;

--Ques9: add unique constraint to dname in dept table.
ALTER TABLE dept ADD CONSTRAINT uk_dname UNIQUE (dname);

--Ques10: add new constraint on salary of emp table such that salary should be non negative and less then 200000
ALTER TABLE emp ADD CONSTRAINT ck_salary_new CHECK (salary >= 0 AND salary < 200000);
