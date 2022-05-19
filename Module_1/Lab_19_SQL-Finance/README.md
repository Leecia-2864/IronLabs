![logo_ironhack_blue 7](https://user-images.githubusercontent.com/23629340/40541063-a07a0a8a-601a-11e8-91b5-2f13e4e6b441.png)
# Lab | MySQL Select

## Introduction

 In this lab, we will practice selecting and projecting data. You can finish all questions with only these clauses:
- `SELECT`
- `SELECT DISTINCT`
- `COUNT`
- `FROM`
- `WHERE`
- `ORDER BY`
- `GROUP BY`
- `SUM`
- `LIMIT`

The Sql script is here: https://drive.google.com/file/d/1tT1OTdIgkI5tkeeXIsnZwMC5SxI1FE9m/view
Please submit your solutions in a text file `solutions.sql`.

#### ##1. From the `order_items` table, find the price of the highest priced order and lowest price order.
select price from order_items
order by price desc limit 1;
select max(price), min(price) from order_items;

#### 2. From the `order_items` table, what is range of the shipping_limit_date of the orders?
select datediff(max(shipping_limit_date), min(shipping_limit_date)) from order_items;


#### 3. From the `customers` table, find the states with the greatest number of customers.
select customer_state, count(customer_id) from customers;

#### 4. From the `customers` table, within the state with the greatest number of customers, find the cities with the greatest number of customers.
select customer_state, customer_city,count(customer_id) from customers;

#### 5. From the `closed_deals` table, how many distinct business segments are there (not including null)?
select count(distinct(business_segment)) from closed_deals
where business_segment is not null;


#### 6. From the `closed_deals` table, sum the declared_monthly_revenue for duplicate row values 
#in business_segment and find the 3 business segments with the highest declared monthly revenue 
#(of those that declared revenue).
select sum(declared_monthly_revenue) Sum_of_DMV, business_segment
from closed_deals
group by business_segment
having count(mql_id) >1
order by Sum_of_DMV desc limit 3;



#### 7. From the `order_reviews` table, find the total number of distinct review score values.
select count(distinct(review_score)) as num_of_DRSV from order_reviews;



#### 8. In the `order_reviews` table, create a new column with a description that corresponds
 #to each number category for each review score from 1 - 5, then find the review score
 #and category occurring most frequently in the table.
 
CREATE TABLE new_table_name AS 
SELECT review_score, count(review_score) as Frequency,
CASE WHEN review_score = '1' THEN 'Terrible'
WHEN review_score = '2' THEN 'Bad'
WHEN review_score = '3' THEN 'Acceptable'
WHEN review_score = '4' THEN 'Good'
ELSE 'Very Good!'
END AS Description_review
FROM olist.order_reviews
GROUP BY review_score
ORDER BY count(review_score) DESC
LIMIT 1;


#### 9. From the `order_reviews` table, find the review value occurring most frequently and how many times it occurs.

SELECT count(review_id)
FROM   order_reviews
GROUP BY review_id
ORDER BY COUNT(review_id) DESC
LIMIT    1;

