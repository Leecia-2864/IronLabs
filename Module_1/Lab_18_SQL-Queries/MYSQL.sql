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

## 1 what are the different gernes
use sakila;
select  distinct prime_genre from applestore;

##2 which is the gerne with the most rated app
select prime_genre, rating_count_tot from applestore
group by rating_count_tot 
order by rating_count_tot desc
limit 1;
# The genre with the most rated app is social networking with the rating count total of 2974676

## Which is the genre with most apps?
select prime_genre,count(prime_genre) from applestore
group by prime_genre
order by count(prime_genre) desc limit 1; 
#games is the genre with the most with 168 apps

#Which is the one with least?
select prime_genre,count(prime_genre) from applestore
group by prime_genre
order by count(prime_genre)  limit 1;
 #medical is the genre with least 1 app

# 5 Find the top 10 apps most rated.
select track_name, rating_count_tot 
from applestore 
order by rating_count_tot desc
limit 10; 
## the top 10 most rated are facebook, Pandora, pininteres, Bible, angrybirds,
#fruit ninja classic, solitaire, PAC-MAN, Calorie and the weather


#6 Find the top 10 apps best rated by users
select track_name, rating_count_tot 
from applestore
where user_rating = 5 
order by rating_count_tot desc
limit 10;


# 7 Take a look at the data you retrieved in question 5. Give some insights.
# we can see that facebook is the most rated

#8 Take a look at the data you retrieved in question 6. Give some insights.**
# we can see that plants and zombies is the most rated apps with 5 stars

#9. Now compare the data from questions 5 and 6. What do you see?**
# we notice that even though facebook has the most user who gave lots of ratings doesnt mean it has a good ratinG, 
# Pandora has the most rating with 5 stars

#10. How could you take the top 3 regarding both user ratings and number of votes?**
select track_name,user_rating, rating_count_tot from applestore
order by rating_count_tot desc;
# I would pick Facenbook, Pandora and pininterest, because even though they are not of 5 star rating because the have more users
# who use this apps and can generate a lot of income. 

#11. Do people care about the price of an app?** Do some queries, comment why are you doing them and the results you retrieve. What is your conclusion?
select avg(price),user_rating , sum(rating_count_tot) from applestore
group by user_rating
order by user_rating  desc;
##In my opinion people do not care about the price of app, because we can see that there are more rating count with user ratinfg 4.5
## even though its average price is lower than apps with 5 star rating. same goes for apps with rating of 4 stars 





