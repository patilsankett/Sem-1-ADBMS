create database company_db;
use company_db;
create table employee7(EmpID int primary key, FirstName varchar(10),LastName varchar(10),EmpAge int,Salary int );

Alter table Employee7 add constraint chk_EmpAge_salary -- By giving constraint name 
check(EmpAge>20 AND salary>=5000);

desc table Employee7;

insert into Employee7 values (1,'Ram','Kumar',22,6000);
desc table Employee7;
select * from Employee7;
SHOW CREATE TABLE Employee7; -- To check constraint name 

Alter table Employee7 add check(salary>=5000);

Alter table Employee7 drop check chk_EmpAge_salary; 
alter table Employee7 DROP check  employee7_chk_1; 

create INDEX Demoindex on Employee7 (FirstName);
show indexes from Employee7;

create INDEX Demoindex2 on Employee7 (FirstName,LastName);
show indexes from Employee7;

drop index Demoindex on Employee7;
drop index Demoindex2 on Employee7;




