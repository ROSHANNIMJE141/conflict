--create database 
create database Student_db;

use Student_db;

-- create table school
create table school(id int primary key identity(1,1),name varchar(20),address varchar(20),principle varchar(20),phone int);

-- create table Student
 create table student(id int primary key identity(1,1),name varchar(20),schoolId int,
 address varchar(20),
phone int ,email varchar(20),age int
 ,FOREIGN key (schoolId) references school(id)
);

-- insert record 
insert into school (name,address,principle,phone)values('PRMIT','Amravati','jay Raj',1234567),
('Sanfrancisco','MP','jay Rajaput',5553456),('jaysingh','mumbai','Akash oberoi',5456646),('PRpote','pune','Raj singh',1454670);

-- display the record
select * from school;

-- insert record
INSERT into student
 values('ajay singh',4,'pune',5845845,'ajay@gmail.com',20),
 ('amar ingle',4,'akola',3234034,'amar@gmail.com',21),
 ('vijay sawarkar',3,'amravati',47234234,'vijay@gmail.com',22), 
 ('abhay sharma',3,'nashik',93132302,'abhay@gmail.com',21) ,
 ('avinash mahalle',4,'yavatmal',49403494,'ajay@gmail.com',20) ,
 ('jay malhotra',2,'pune',384423494,'jay@gmail.com',21) ,
 ('mayur singh',4,'mumbai',95495454,'mayur@gmail.com',22), 
 ('lokesh savde',4,'pune',945454532,'lokesh@gmail.com',23); 


