use pet_adoption;
create table data_clean_demo(id int, name varchar(50), industry varchar(50), YOF int, emps int, state varchar(50), city varchar(50));
select * from data_clean_demo;
select name, count(name) from data_clean_demo group by name having count(name) >1;
select name, ROW_NUMBER() over (partition by name order by name ASC) as rn from data_clean_demo;
with temp as (select name, ROW_NUMBER() over(partition by name order by name asc) as rn from data_clean_demo) 
delete from temp where rn > 1;
select * from data_clean_demo where YOF is NULL;
delete from data_clean_demo where YOF is NULL;
select * from data_clean_demo where industry is NULL;
update data_clean_demo set industry = 'Other' where industry is NULL;
SELECT *
FROM data_clean_demo
WHERE YOF > CURRENT_TIMESTAMP;

create table cars(car_make varchar(50), car_model varchar(50), car_type varchar(50), car_price int);
select * from cars;
SELECT
    car_make,
    car_model,
    car_price,
    AVG(car_price) OVER() AS "overall average price",
    AVG(car_price) OVER (PARTITION BY car_type) AS "car type average price"
FROM cars;
SELECT car_make,
       AVG(car_price) AS average_price,
       MAX(car_price) AS top_price
FROM   cars
GROUP BY car_make;
SELECT car_make,
       car_model,
       car_price,
       AVG(car_price) OVER (PARTITION BY car_make) AS average_make
FROM   cars;
