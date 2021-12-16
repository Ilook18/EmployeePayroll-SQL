/*UC1*/	
create database payroll_service;
use payroll_service;

/*UC2*/
create table employee_payrol(id int identity(1,1) primary key, name varchar(150) Not NULL, salary float NOT NULL, start date NOT NULL);

/*UC3*/
insert into employee_payroll values ('Bill',20000,'2021-12-13'), ('Charlie',15000,'2021-12-14'), ('Terisa',18000,'2021-12-14');

/*UC4*/
select * from employee_payroll;

/*UC5*/
select name,salary from employee_payroll where name='Bill';
select * from employee_payroll WHERE start BETWEEN CAST('2021-12-12' AS DATE) AND GETDATE();

/*UC6*/
Alter table employee_payroll add gender char(1);
update employee_payroll set gender='F' where name='Terisa';
update employee_payroll set gender='M' where name='Bill' or name='Charlie';

/*UC7*/
select SUM(salary) from employee_payroll where gender='M' group by gender;
select AVG(salary) from employee_payroll where gender='M' group by gender;
select MIN(salary) from employee_payroll where gender='M' group by gender;
select MAX(salary) from employee_payroll where gender='M' group by gender;
select COUNT(salary) from employee_payroll where gender='M' group by gender;




