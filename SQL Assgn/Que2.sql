-- create 'product_db' databse
-- create following tables
-- categories: id (PK), title, description
-- products: id (PK), title, price, description, category (FK), company
-- orders: id (PK), total, date
-- order_details: id (PK), orderId (FK), productId (FK), quantity, price, totalPrice, discount
-- create relationship as shown in the table schema
-- add some dummy data


--create Database
CREATE database Product_DB

--USE that database 
use Product_DB

--create the categories table 
create table categories(id int primary key identity(1,1),title varchar(20),description varchar(200));

--insert values into the categories TABLE
insert into categories values('Telivision','it is electronics product'),
('clothes','it is good quality products'),('Mobiles','it is good product with 4gb ram'),
('Laptop','it is electronics Product with 1 tb HHD products');

--create product table  
CREATE table product(id int primary key identity(1,1),title varchar(20),
price int ,categoryId int, company varchar(20),FOREIGN key(categoryId) REFERENCES categories(id) );

--display the product table  
select * from categories

--insert value into the product table 
insert into product values('LG TV',58000,1,'LG'),('Sony tv',60000,1,'Sony'),
('Hoodies',1200,2,'Piter England'),('Laptop',55000,4,'Hp'),('Mi Mobile',15000,3,'Mi'),
('Pants',700,2,'Denim'),('Laptop',57000,4,'Dell'),('Mobile',13000,3,'samsung')

--display categories table 
select * from categories


--create orders table 
create table orders(id int primary key identity(1,1),total Float,date date);

--insert values into table 
insert into orders values(55000,'2011/03/07'),(60000,'2011/03/09'),(57000,'2014/03/10'),(13000,'2022/07/09'),
(1200,'2015/08/08'),(55000,'2018/03/22'),(15000,'2019/07/27'),(700,'2020/06/19'),(57000,'2022/07/09')


--create the order_details
create table order_details(id int primary key identity(1,1),orderId int,productId int,
quantity int,price int,totalPrice int,discount int, FOREIGN key(orderId) REFERENCES Orders(id),FOREIGN key(productId) REFERENCES product(id) )

--display all the table 
select * from categories
select * from product 
select * from orders
select * from order_details


--insert values into order
insert into order_details values(1,4,1,55000,55000,10),(3,7,1,57000,57000,15),
(5,6,2,700,1400,10),(4,5,2,13000,26000,20),(2,2,1,60000,60000,22),(7,5,2,13000,26000,20),(9,7,1,57000,57000,20),
(7,8,2,15000,30000,20);


