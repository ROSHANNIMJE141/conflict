
use SalesAsgnmnt
-- •	Write a query that counts the number of salespeople registering orders for each day. (If a salesperson has more than one order on a given day, he or she should be counted only once.)

SELECT odate,snum,COUNT(*)  FROM orders GROUP BY odate,snum;

-- •	Write a query on the Customers table that will find the highest rating in each city. Put the output in this form: For the city (city), the highest rating is : (rating). 

	SELECT city,MAX(rating) FROM customers GROUP BY city;

-- •	Write a query that totals the orders for each day and places the results in descending order. 

SELECT count(odate) "TOTAL ORDERS",odate FROM orders GROUP BY odate ORDER BY "TOTAL ORDERS";

-- •	Write a query that selects the total amount in orders for each salesperson for whom this total is greater than the amount of the largest order in the table.

select * from customers where rating>200;


-- •	Write a query that selects the highest rating in each city.

select city,max(rating) as rating from customers group by city;


-- •	Largest order taken by each salesperson with order value more than Rs.3000. 
select odate, snum, MAX(amt) from orders where amt > 3000 group by odate, snum ORDER BY odate,snum;

-- •	Select each customer smallest order

select cnum, min(amt) from orders group by cnum;






