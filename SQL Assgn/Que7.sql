use SalesAsgnmnt;
-- •	Write a query that lists each order number followed by the name of the customer who made the order.
SELECT orders.onum, customers.cname
FROM orders, customers
WHERE orders.cnum = customers.cnum;

-- •	Write a query that gives the names of both the salesperson and the customer for each order along with the order number

SELECT sname,cname,onum
FROM orders o,customers c,salespeople s
WHERE o.snum=c.snum AND o.snum=s.snum;

-- •	Write a query that produces all customers serviced by salespeople with a commission above 12%. Output the customer’s name, the salesperson’s name, and the salesperson’s rate of commission
SELECT cname,s.snum,comm*100 "Rate of comm"
FROM customers c,
salespeople s
WHERE c.snum=s.snum
AND comm>.12 ;


-- •	Write a query that calculates the amount of the salesperson’s commission on each order by a customer with a rating above 100.
SELECT onum, cname, comm,
amt*comm FROM salespeople,orders,customers
WHERE orders.cnum = customers.cnum
AND orders.snum = salespeople.snum
AND customers.rating>100;

-- •	Write a query that produces all pairs of salespeople who are living in the same city.Exclude combinations of salespeople with themselves as well as duplicate rows with the order reversed
SELECT s.sname, s.city
FROM salespeople s,salespeople n
WHERE s.city=n.city
AND s.sname<n.sname;


