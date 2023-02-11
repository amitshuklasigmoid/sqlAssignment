create database assignment;
use assignment;

create table employee(
	empid int not null,
    name varchar(1),
    gender varchar(8),
    department varchar(10)
);

insert into employee values 
(1,'X','Female','Finance'),
(2,'Y','Male','IT'),
(3,'Z','Male','HR'),
(4,'W','Female','IT');

select department,count(*) as 'Num of Female' from employee group by department;
