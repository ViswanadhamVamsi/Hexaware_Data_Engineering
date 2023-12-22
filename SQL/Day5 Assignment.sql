use pet_adoption;
create table student(roll int, name varchar(50), address varchar(50), phone int, age int);
insert into student values
(1, 'a', 'sdvkjb', 9873243, 20),
(2, 'b', 'sajdkb', 98793, 22),
(3, 'c', 'asdj', 987243, 24),
(4, 'd', 'asdjkb', 27562, 25),
(5, 'e', 'adsjkb', 229744, 26),
(6, 'f', 'sjkv', 897429, 27),
(7, 'g', 'skdjv ', 24472, 28),
(8, 'h', 'ksjd', 985837, 29);
create table studcourse(c_id int, roll int);
insert into studcourse values
(1, 1),
(2, 2),
(1, 3),
(3, 4),
(1, 5),
(5, 11);

#inner join -> inner join / join
select name, phone, age , c_id from student inner join studcourse on student.roll = studcourse.roll;

#left join
select name, phone, age , c_id from student left join studcourse on student.roll = studcourse.roll;

#right join
select name, phone, age , c_id from student right join studcourse on student.roll = studcourse.roll;

#equi join
select name, phone, age, c_id from student, studcourse where student.roll = studcourse.roll;

#non equi join
select name, phone, age, c_id from student, studcourse where student.roll < studcourse.roll;
select name, phone, age, c_id from student, studcourse where student.roll <= studcourse.roll;
select name, phone, age, c_id from student, studcourse where student.roll > studcourse.roll;
select name, phone, age, c_id from student, studcourse where student.roll >= studcourse.roll;

#outer join
SELECT * FROM student LEFT JOIN studcourse on student.roll = studcourse.roll
UNION
SELECT * FROM student right JOIN studcourse on student.roll = studcourse.roll;

select * from student;
select * from studcourse;

#EXISTS
SELECT name
FROM student
WHERE EXISTS (SELECT roll FROM studcourse WHERE student.roll = studcourse.roll AND roll > 3);

#ALL and ANY #correlated subquery #nested subquery
SELECT name
FROM student
WHERE roll = ALL
  (SELECT roll
  FROM studcourse
  WHERE c_id = 5);
  
SELECT name
FROM student
WHERE roll = ANY
  (SELECT roll
  FROM studcourse
  WHERE c_id = 5);
update student set roll = 4 where  name = 'd';
update studcourse set roll = 11 where c_id = 5;
set sql_safe_updates = 0;

#subquery #nested subquery 
select name from student where roll in (select roll from studcourse where c_id = 1);

#better example for all and any
create table profs (name varchar(50), age int);
create table studs (name varchar(50), age int);
insert into profs values
('a', 50),
('b', 35),
('c', 45),
('d', 64),
('e', 57);
insert into studs values
('f', 20),
('g', 37),
('h', 65),
('i', 21),
('j', 22);

select * from studs where age >= all(select age from profs);
select * from studs where age >= any(select age from profs);

#with Clause -> nested subquery using with clause
with temp as (select roll from studcourse where c_id = 1)
select name, phone from student , temp where student.roll = temp.roll;
