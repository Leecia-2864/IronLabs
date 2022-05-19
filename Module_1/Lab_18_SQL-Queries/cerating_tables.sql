SELECT * FROM sakila.applestore;
select track_name 
from sakila.applestore
where user_rating = 4;
select track_name, user_rating from sakila.applestore
where track_name like "A%"
order by user_rating  desc;
select avg(price),user_rating from sakila.applestore
group by user_rating
order by user_rating  desc;
select * from sakila.applestore
where user_rating = 5;
select avg(price),user_rating , sum(rating_count_tot)from sakila.applestore
group by user_rating
order by user_rating  desc;

select prime_genre,avg(price),avg(user_rating) , sum(rating_count_tot)from sakila.applestore
group by prime_genre
order by avg(user_rating)  desc;


create database inventory;
use inventory;
CREATE table students(
student_id int,
name varchar(20),
location varchar(20));

INSERT INTO students(student_id, name, location)
VALUES (1, 'felicia', "montreuil"),
 (2, 'ferdi', "montreuil"),
(3, 'Nathan', "montreuil"),
(4, 'edgar',"montreuil"),
 (5, 'mathieu', "montreuil");
 
 delete from students where name= "mathieu";
 alter table students
 add course varchar(20);