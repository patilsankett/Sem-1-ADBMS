create database CompanyDB;
use CompanyDB;
create table Employee(
	Emp_ID int primary key,
    Emp_Name varchar (30),
    Salary int ,
    Join_Date date);
    
create table Departments(
	Dept_ID int primary key ,
    Dept_name varchar(20));
    
Alter table Employee add Email varchar(100);
desc employee;

alter table employee add phone int(10);
desc employee;

alter table departments add Dept_location varchar(50);

alter table employee modify phone int(10) not null;

alter table employee modify Emp_Name varchar(100);

alter table Employee add Dept_ID int;

alter table Employee add foreign key(Dept_ID)
references Departments (Dept_ID);

alter table employee
drop foreign key Dept_ID;

alter table employee
add constraint FK_emp_dept
foreign key(Dept_ID)
references departments(Dept_ID);


alter table employee drop foreign key FK_emp_dept;

alter table departments drop primary key;
desc employee;
desc departments;

ALTER TABLE employee DROP FOREIGN KEY FK_emp_dept;

SHOW CREATE TABLE Employee;

ALTER TABLE Employee
DROP FOREIGN KEY Dept_ID;

ALTER TABLE Employee
DROP FOREIGN KEY Employee_ibfk_1;

ALTER TABLE Departments
DROP PRIMARY KEY;

DESC Employee;
DESC Departments;
