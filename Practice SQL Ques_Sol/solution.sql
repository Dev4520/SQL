create database practice;
use practice;
create table orders
(
    ord_no int,
    purch_amt float,
    ord_date date,
    customer_id int,
    salesman_id int
);

select * from orders;
insert into orders values
(70001,150.5,'2012-10-05',3005,5002);
insert into orders values
(70009,270.65,'2012-09-10',3001,5005);
insert into orders values
(70002,65.26,'2012-10-05',3002,5001);
insert into orders values
(70004,110.5,'2012-08-17',3009,5003);
insert into orders values
(70007,948.5,'2012-09-10',3005,5002);
insert into orders values
(70005,2400.6,'2012-07-27',3007,5001);
insert into orders values
(70008,5760,'2012-09-10',3002,5001);
insert into orders values
(70010,1983.43,'2012-10-10',3004,5006);
insert into orders values
(70003,2480.4,'2012-10-10',3009,5003);
insert into orders values
(70012,250.45,'2012-06-27',3008,5002);
insert into orders values
(70011,75.29,'2012-08-17',3003,5007);
insert into orders values
(70012,3045.6,'2012-04-25',3002,5001);

select * from orders;

select ord_date,salesman_id,ord_no,purch_amt from orders;

create table salespeople
(
    salesman_id int,
    name varchar(50),
    city varchar(50),
    commsission float
);
select * from salespeople;
insert into salespeople values(5001,'james Hoog','New York',0.15);
insert into salespeople values(5002,'Nail knite','Paris',0.13);
insert into salespeople values(5005,'Pit Ales','London',0.11);
insert into salespeople values(5006,'Mc Lyon','Paris',0.14);
insert into salespeople values(5007,'Paul Adam','Rome',0.13);
insert into salespeople values(5003,'Lauson Hen','San Jose',0.12);

select * from salespeople;

select name,city from salespeople where city = 'Paris';

create table sales
(
    PRO_ID INT,
    PRO_NAME VARCHAR(50),
    PRO_PRICE FLOAT,
    PRO_COM INT
);
select * from sales;
insert into sales values(101,'Motherboard',3200.00,15);
insert into sales values(102,'keyboard',450.00,16);
insert into sales values(103,'ZIP drive',250.00,14);
insert into sales values(104,'Speaker',550.00,16);
insert into sales values(105,'Moniter',5000.00,11);
insert into sales values(106,'DVD drive',900.00,12);
insert into sales values(107,'CD drive',800.00,12);
insert into sales values(108,'Printer',2600.00,13);
insert into sales values(109,'Refill cartridge',350.00,13);
insert into sales values(110,'Mouse',250.00,12);

select * from sales;

select * from sales where PRO_PRICE >= 200 AND PRO_PRICE <=600;

select PRO_NAME,PRO_PRICE from sales where PRO_PRICE >= 550 order by PRO_PRICE,PRO_NAME desc;

select PRO_NAME,PRO_PRICE from sales where PRO_PRICE >= 550 order by PRO_NAME asc;

select * from orders;
select ord_no,purch_amt,ord_date,customer_id,salesman_id from orders where ord_date='2012-09-10' and salesman_id>5005 or purch_amt>;

# Q6.
create table world
(
    name varchar(50),
    continent varchar(50),
    area bigint,
    population bigint,
    gdp bigint
);
select * from world;

insert into world values('Afghanistan','Asia',652230,25500100,20343000000);
insert into world values('Albania','Europe',28748,2831741,12960000000);
insert into world values('Algeria','Africa',2381741,37100000,188681000000);
insert into world values('Andorra','Europe',468,78115,3712000000);
insert into world values('Angola','Africa',1246700,20609294,100990000000);
insert into world values('Dominican Republic','Caribbean',48671,9445281,58898000000);
insert into world values('China','Asia',9596961,1365370000,8358400000000);
insert into world values('Colombia','South America',1141748,47662000,369813000000);
insert into world values('Comoros','Africa',1862,743798,616000000);
insert into world values('Denmark','Europe',43094,5634434,314889000000);
insert into world values('Djibouti','Africa',23200,886000,1361000000);
insert into world values('Dominica','Caribbean',751,71293,499000000);

select * from world;

# sol:-1
select max(population) as population,name from world;
# Sol-2
select min(gdp) as gdp,name from world;
-- Sol:-3
select * from world where name like '%c';
# Sol:- 4
select * from world where name like 'D%';
# -- Sol:- 5
select max(gdp) as GDP, name from world;

# Sol-6
select sum(gdp) as total_gdp from world where continent='Africa';
# Sol-7
select continent, sum(population) as each_continent from world group by continent;
# Sol:-8
select name,continent, max(population) as max_pop,count(name) as count_country from world group by continent,name;
select * from world where 
