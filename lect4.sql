create database user;
use user;

create table customer(
	Custid int ,
    custname varchar (15),
    City varchar (10),
    product varchar (15),
    price int 
	);
desc customer;

Alter table customer add primary key(custid);

insert into customer values (1,'OM','Pune','Mobile',1500);
insert into customer values (2,'Rucha','Nagpur','Laptop',40000);
insert into customer values (3,'Raj','Mumbai','Mouse',300);

select * from customer;
select custname, product from customer;

create table CloneTable as select * from customer; -- Create Clone of the Existing Table 
select * from CloneTable;
drop table clonetable; -- Dosn't affect the original table

select custname, city from customer;
select custname, city from customer where custid=1;
select custname, city, price from customer where price >15000; 
select * from customer where price >=1500;
select * from customer where custid=1;
select * from customer where city='nagpur';

/* Sorting data using order by Single Column*/

select * from customer order by price;
select * from customer order by custname desc;
select * from customer order by city asc;

/* Sorting data using order by Multiple Column*/

select * from customer order by city, price;
select * from customer order by city desc , price asc;

-- Single-row Functions 
-- Case Conversion Function 

select upper(custname), lower(product) from customer
where custid<3; 


alter table customer add column lastname varchar(15);
update customer set lastname='Patil' where Custid=1;
update customer set lastname='Shah' where custid=2;
update customer set lastname='Verma' where custid=3;
select * from customer;

-- Concat two columns
select concat(custname,lastname) from customer;
select concat(custname," ",lastname) as Fullname from customer;
select * from customer;

-- Use of SUBSTR and INSTR Functions
select * from customer;
select substr(custname,1,0) from customer;
select substr(custname,2,3) from customer; 		-- 2 is strting position and 3 are no of letters after that

select instr(custname,'o') as position from customer; 		-- returns no of times the letter occur