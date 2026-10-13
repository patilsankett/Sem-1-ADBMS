CREATE DATABASE CompanyDB;
USE CompanyDB;
SHOW DATABASES;

CREATE TABLE Employees (
	EmpID INT PRIMARY KEY,
    EmpName VARCHAR(100),
    Salary DECIMAL(12,2),
	JoinDate DATE,
    Phone VARCHAR(13),
    Age INT,
    DeptID INT
	);
    desc Employees;
    
CREATE TABLE Departments (
    DeptID INT PRIMARY KEY,
    DeptName VARCHAR(100)
	);
    desc Departments;
    
Alter table Employees add Email varchar(100);
desc Employees;


Alter table Departments add dept_location varchar(100);
desc Departments;

Alter table Employees modify Phone varchar(13) not null;
desc Employees;

Alter table Employees modify EmpName VARCHAR(120);
desc Employees;

Alter table Departments drop PRIMARY KEY;
desc Departments;

ALTER TABLE Departments ADD PRIMARY KEY (DeptID);
DESC Departments;

ALTER TABLE Employees ADD CONSTRAINT fk_employee_department
FOREIGN KEY (DeptID) REFERENCES Departments(DeptID);
desc Employees;

Alter table Employees RENAME COLUMN EmpName TO EmployeeName;
desc Employees;

Alter table Employees add CONSTRAINT chk_employee_age CHECK (Age >= 18);
Alter table Employees ADD CONSTRAINT chk_employee_salary CHECK (Salary >= 0);
desc Employees;

Alter table Employees DROP COLUMN Phone;
desc Employees;

Rename table Employees TO EmployeeDetails;
SHOW tables;

Alter table  EmployeeDetails DROP CHECK chk_employee_age;
Alter table  EmployeeDetails DROP CHECK chk_employee_salary;
desc EmployeeDetails;

ALTER TABLE EmployeeDetails DROP FOREIGN KEY fk_employee_department;
Drop table Departments;
Show tables;

Drop DATABASE CompanyDB;
show databases;












