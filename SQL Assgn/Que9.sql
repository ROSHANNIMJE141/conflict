use "sales" database to solve below queries.

use SalesAsgnmnt;

-- •	Create an index that will enable a user to pull orders for ‘1990-10-03’ out of the Orders table quickly. 
create index d_orders
 on orders(odate);

-- •	If the Orders table has already been created, how can you force the onum field to be unique (assume all current values are unique)? 
EXEC SP_COLUMNS ORDERS;    

Alter Table ORDERS  
ADD CONSTRAINT UK_ONUM UNIQUE  (ONUM);

-- •	Create an index that would permit salesperson to retrieve his orders. 
CREATE INDEX I_DATE ON orders(odate);

-- •	Let us assume that each salesperson is to have only one customer of a given rating, and that this is currently the case. Create an index that enforces it. 
ALTER TABLE customers MODIFY rating PRIMARY KEY;

-- •	Create an index to speed up searching order on a given date by given customer.
CREATE INDEX ODATE ON ORDERS(CNUM ASC); 
