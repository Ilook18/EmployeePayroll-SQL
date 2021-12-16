/*UC1*/	
create database payroll_service;
use payroll_service;

/*UC2*/
create table employee_payroll(id int identity(1,1) primary key, name varchar(150) Not NULL, salary float NOT NULL, start date NOT NULL);

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

/*UC8*/
Alter table employee_payroll add phone_nmber varchar(250);
Alter table employee_payroll Add address varchar(250) not null default 'TBD';
Alter table employee_payroll Add department varchar(150) default(' ') not null;
insert into employee_payroll(name,salary,start,phone_nmber,department) values('Bill',300000,'2021-12-18','7905142214','Finance');


/*UC9*/
exec sp_rename 'employee_payroll.salary', 'basic_pay', 'column';
Alter table employee_payroll add deductions float , taxable_pay float, tax float, net_pay float;




