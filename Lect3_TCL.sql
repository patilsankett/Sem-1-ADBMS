create database TCL;
use TCL;

create table orders (
	order_id INT primary key,
    cust_name VARCHAR(100),
    status VARCHAR(50)
    );
desc orders;

set autocommit = 0; /* in mysql uto commit is on by default which means whenever we execute any sql statement is auto commited*/
BEGIN;

Insert into orders Values(101,'Geet','Pending');
Insert into orders Values(102,'Bob','Pending');
truncate table orders;
select * from orders;
rollback;
commit;

-- For Commit
Insert into orders Values(101,'Alice','Pending');
Insert into orders Values(102,'Bob','Pending');
select * from orders; 
commit;
-- update orders set cust_name='Raj'Where order_id=102;
Rollback;
