/*UC1*/	
create database payroll_service;
use payroll_service;

/*UC2*/
create table employee_payrol(id int identity(1,1) primary key, name varchar(150) Not NULL, salary float NOT NULL, start date NOT NULL);


