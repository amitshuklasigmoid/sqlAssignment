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

SELECT department AS Department,
       count(case gender when 'male' then 1 end) as 'Num of male',
       count(case gender when 'female' then 1 end) as 'Num of female'
       from employee
group by department
order by department;
