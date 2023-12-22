/* work on Joins */
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
/* Inner Join/ Join */
select name, phone, age , c_id from student inner join studcourse on student.roll = studcourse.roll;

/*Left JOIN */
select name, phone, age , c_id from student left join studcourse on student.roll = studcourse.roll;

/* Right JOIN */
select name, phone, age , c_id from student right join studcourse on student.roll = studcourse.roll;

/*Full Outer Join */
select name, phone, age , c_id from student full outer join studcourse on student.roll = studcourse.roll;

/* Another form of Full outer join */
SELECT * FROM student LEFT JOIN studcourse on student.roll = studcourse.roll
UNION
SELECT * FROM student right JOIN studcourse on student.roll = studcourse.roll;

/*String Functions */
select str(134.56, 6, 4);
SELECT ascii ('AB');
SELECT char (66);
SELECT len ('WIDESKILLS');
SELECT lower ('JOHN');
SELECT REPLACE ('country', 'y', 'ies');
SELECT reverse ('PATH');
SELECT str (134.56, 10, 6);
SELECT upper ('Peter');


/*Date and time functions */
SELECT dateadd (mm, 2, '2010-02-03');
SELECT datediff ( year, convert (datetime, '2006-05-06'), convert ( datetime, '2009-01-01'));
SELECT datepart (mm, '2008-01-01');
SELECT day ('2010-03-21');
SELECT month ('2007-04-03');
SELECT year ('2011-04-17');

/*math functions */
SELECT abs (-77);
SELECT sin(1.5);
SELECT ceiling (14.45);
SELECT exp (4.5);
SELECT floor (15.55);
SELECT log (5.4);

/* Rank functions */
create table stud(id int, name varchar(50), points int);
insert into stud values
(1, 'a', 50),
(2, 'b', 50),
(3, 'c', 40),
(4, 'd', 60),
(5, 'e', 70),
(6, 'f', 20),
(7, 'g', 90);
select id, name, ROW_NUMBER() OVER ( ORDER BY points desc) as rank from stud;
select id, name, RANK() over ( order by points desc) as rank from stud;
select id, name, dense_rank() over (ORDER BY points desc) as rank from stud;
select id, name, points, NTILE(2) over ( order by points) as rank from stud where points > = 50;

/* Group by and Having */
select name, max(points) from stud group by name having max(points) > 40;

/* agregate functions */
select sum(points) from stud;
select count(points) from stud;
select min(points) from stud;
select avg(points) from stud;
select max(points) from stud;