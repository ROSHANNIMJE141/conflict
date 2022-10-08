use SalesAsgnmnt;

-- •	Write a query that uses a subquery to obtain all orders for the customer named Cisneros. Assume you do not know his customer number (cnum).
select onum,
cnum from orders where cnum=(SELECT cnum
     FROM customers
     WHERE cname='Cisneros')

-- •	Write a query that produces the names and ratings of all customers who have above- average orders.
Select max(b.cname), max(b.rating), a.cnum from orders a, customers b where a.cnum = b.cnum group by a.cnum having count(a.cnum) > ( select avg(count(cnum)) from orders group by cnum);

-- •	Write a query that selects the total amount in orders for each salesperson for whom this total is greater than the amount of the largest order in the table.
Select snum, sum(amt)
from orders
group by snum
having sum(amt) >( select max(amt)
from orders);

-- •	Write a query that selects all customers whose ratings are equal to or greater than ANY of Serres. 
select a.sname,b.rating from salespeople a,customers b where a.snum=b.snum;
select * from customers where rating>=200;

-- •	Write a query using ANY or ALL that will find all salespeople who have no customers located in their city.
SELECT *
FROM salespeople 
WHERE city=ANY
    (SELECT city
     FROM customers);

-- •	Write a query that selects all orders for amounts greater than any for the customers in London. 
SELECT *
FROM orders
WHERE amt < ANY
   (SELECT amt
	FROM orders a, customers b
	WHERE  a.snum=b.snum
	AND b.city='London');

-- •	Extract all the orders of Motika. 
Select Onum
from orders
where snum = ( select snum from salespeople where sname = 'Motika');

-- •	Find all the order attribute to salespeople servicing customers in London. 
Select snum, cnum
from orders where cnum in 
(select cnum  from customers 
where city = 'London');

-- •	Find names and numbers of all salesperson who have more than one customer. 10. Find salespeople number,name and city who have multiple customers. 
SELECT a.snum, a.sname
FROM salespeople a
WHERE 1 <
(SELECT COUNT(*)
FROM customers
WHERE a.snum=a.snum);

-- •	Select customers who have a greater rating than any other customer in Rome. 
select * from customers where
rating>(select max(rating) 
from customers where city='Rome');

-- •	Select all orders that had amounts that were greater that at least one of the orders from ‘1990-10- 04’ .
SELECT *
FROM orders
WHERE amt > ANY (SELECT amt
FROM orders
WHERE odate = '1990-19-04');

-- •	 Find all orders with amounts smaller than any amount for a customer in San Jose. 
Select onum, amt from orders where amt < any 
( select amt from orders, customers where city = 'San Jose' and orders.cnum = customers.cnum);


-- •	 Select those customers whose rating are higher than every customer in Paris.
   Select *
from customers a
where not exists ( select b.rating from customers b
where b.city != 'Paris' and
b.rating>a.rating);


