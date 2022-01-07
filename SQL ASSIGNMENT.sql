create database Salesman
create table Salesman(salesman_id numeric(5),
                      name varchar(30) primary key,
					  city varchar(15),
					  commission decimal(5,2))
insert into Salesman values(5001,'James Hoog','New York',0.15)
insert into Salesman values(5002,'Nai Knite','Paris',0.13)
insert into Salesman values(5005,'Pit Alex','London',0.11)
insert into Salesman values(5006,'Mc Lyon','Paris',0.14)
insert into Salesman values(5007,'Paul Adam','Rome',0.13)
insert into Salesman values(5003,'Lauson Hen','San Jose',0.12)
select *from Salesman
select city,count(salesman_id) as numberofsalespeople from Salesman group by city
select count(salesman_id) as numberofsalespeople from Salesman
select name,commission from Salesman
drop  table orders
create table orders(ord_date date ,
                    salesman_id numeric(5) check (salesman_id>5000),
                    ord_no numeric(5) primary key,
                    purch_amt decimal(8,2) unique,
					customer_id numeric(5))
insert into orders values('2012-10-05',5002,70001,150.5,3005)
insert into orders values('2012-09-10',5005,70009,270.65,3001)
insert into orders values('2012-10-05',5001,70002,65.26,3002)
insert into orders values('2012-08-17',5003,70004,110.5,3009)
insert into orders values('2012-09-10',5002,70007,948.5,3005)
insert into orders values('2012-07-27',5001,70005,2400.6,3007)
insert into orders values('2012-09-10',5001,70008,5760,3002)
insert into orders values('2012-10-10',5006,70010,1983.43,3004)
insert into orders values('2012-10-10',5003,70003,2480.4,3009)
insert into orders values('2012-06-27',5002,70012,250.45,3008)
insert into orders values('2012-08-17',5007,70011,75.29,3003)
insert into orders values('2012-04-25',5001,70013,3045.6,3002)
select *from orders
select salesman_id,max(purch_amt) as maximumpurchaseamount from orders group by salesman_id having ((salesman_id>=5003) and (salesman_id<=5008)) 
select salesman_id,count(ord_date) as nooforders from orders where ord_date='2012-08-17' group by salesman_id
select ord_date,salesman_id,count(ord_no)as numberoforders from orders group by ord_date,salesman_id
select avg(purch_amt) as averagepurchaseamount,max(purch_amt)as purchaseamount from orders
select customer_id,max(purch_amt) as maximumpurchaseamount from orders group by customer_id
select ord_date,salesman_id,ord_no,purch_amt from orders
select name,city from Salesman where city='Paris'
create table Customer(customer_id numeric(5) unique,
                      cust_name varchar(30) primary key,
					  city varchar(15) not null,
					  grade numeric(3) check(grade%2=0),
					  salesman_id numeric(5))
insert into Customer values(3002 ,'Nick Rimando','New York',100, 5001)
insert into Customer values(3007, 'Brad Davis' ,'New York', 200 , 5001)
insert into Customer values(3005, 'Graham Zusi', 'California',200, 5002)
insert into Customer values(3008,'Julian Green','London',300,5002)
insert into Customer values(3004, 'Fabian Johnson','Paris',300,5006)
insert into Customer values(3009, 'Geoff Cameron','Berlin',100,5003)
insert into Customer values(3003, 'Jozy Altidor','Moscow',200,5007)
insert into Customer values(3001, 'Brad Guzan','London',0,5005)
select customer_id,cust_name,city,grade,salesman_id from Customer where grade =200
select ord_no,ord_date,purch_amt from orders where salesman_id=5001
select count(customer_id)as numberofcustomers from Customer 
select * from Customer
select city,max(grade) as maximumgrade from Customer where city='Paris' group by city having max(grade)>50 order by maximumgrade desc






