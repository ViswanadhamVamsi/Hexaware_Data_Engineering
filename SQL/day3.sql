CREATE database day3;
use day3;
CREATE TABLE CUSTOMERS (
   ID INT NOT NULL,
   NAME VARCHAR (20) NOT NULL,
   AGE INT NOT NULL,
   ADDRESS CHAR (25),
   SALARY DECIMAL (18, 2),
   PRIMARY KEY (ID)
);
INSERT INTO CUSTOMERS VALUES(1, 'Ramesh', 32, 'Ahmedabad', 2000.00);
INSERT INTO CUSTOMERS VALUES(2, 'Khilan', 25, 'Delhi', 1500.00);
INSERT INTO CUSTOMERS VALUES(3, 'Kaushik', 23, 'Kota', 2000.00);
INSERT INTO CUSTOMERS VALUES(4, 'Chaitali', 25, 'Mumbai', 6500.00);
INSERT INTO CUSTOMERS VALUES(5, 'Hardik', 27, 'Bhopal', 8500.00);
INSERT INTO CUSTOMERS VALUES(6, 'Komal', 22, 'Hyderabad', 4500.00);
INSERT INTO CUSTOMERS VALUES(7, 'Muffy', 24, 'Indore', 10000.00);
INSERT INTO CUSTOMERS VALUES(8, 'Ramesh', 32, 'Ahmedabad', 3200.00);
INSERT INTO CUSTOMERS VALUES(9, 'Kaushik', 23, 'Kota', 1500);
select * from customers;
select distinct name from customers;

#work on gruop by and having
select name, sum(salary) as CTC from customers group by name;
select name, sum(salary) from customers group by name having sum(salary) between 2000 and 4000;

#work on set operations
create table emp1(id int, name varchar(50), department varchar(50), salary int, yoe int);
create table emp2(id int, name varchar(50), department varchar(50), salary int, yoe int);
insert into emp1 values (1, 'abc', 'a', 5000, 2);
insert into emp1 values (2, 'efg', 'b', 3000, 1);
insert into emp1 values (3, 'fgh', 'c', 4000, 4);
insert into emp1 values (4, 'pqr', 'd', 8000, 6);
insert into emp1 values (5, 'stv', 'e', 7000, 1);
insert into emp1 values (6, 'xyz', 'f', 6000, 5);
insert into emp2 values (1, 'aav', 'a', 5000, 2);
insert into emp2 values (2, 'efasf', 'b', 3000, 1);
insert into emp2 values (3, 'fghsv', 'c', 4000, 4);
insert into emp2 values (4, 'pqrasdf', 'd', 8000, 6);
insert into emp2 values (5, 'stv', 'e', 7000, 1);
insert into emp2 values (6, 'xyz', 'f', 6000, 5);
select * from emp1 union select * from emp2;
select * from emp1 union all select * from emp2;

#work on tcl commands, such as rollback, commit, savepoint
delete from customers where salary = 1500;
rollback;
select * from customers;
set autocommit = 0;
savepoint p1;
rollback to p1;
drop table Demo;

#work on constraints
#default
Create table Demo(Id int not null,name varchar(50),Salary int DEFAULT 35000);
insert into Demo(Id, name, Salary) values(1, 'vamsi', 1500);
insert into Demo(Id, name, Salary) values(2, 'abcd', default);
select * from Demo;

#unique
create table Demo1(id int unique not null, name varchar(50), salary int);
insert into Demo1 values(1, 'vamsi', 50000);
insert into Demo1 values(1, 'abcd', 23949);

#check
Create table demo4(id int, Age int check(Age between 18 and 24));
insert into demo4 values(1, 10);
insert into demo4 values(1, 20);
commit;
delete from demo4 where age = 20;
rollback;
select * from demo4;
savepoint sp1;
insert into demo4 values(2, 23);
commit;
set autocommit=0;
savepoint sp1;
select * from demo4;
insert into demo4 values(3, 21);
rollback to sp1;

#work on aggregate functions
select * from customers;
select count(salary) from customers;
select max(salary) from customers;
select avg(salary) from customers;
select min(salary) from customers;
select sum(salary) from customers;
select count(distinct(salary)) from customers;

#work on order of execution of commands
SELECT 
  name, 
  AVG(salary) AS avg_sal
FROM customers
WHERE age > 10
GROUP BY name
HAVING AVG(salary) > 1000
ORDER BY avg_sal DESC
LIMIT 5;













