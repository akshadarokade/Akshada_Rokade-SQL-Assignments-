use classicmodels ;

create table project
(employeeid int primary key auto_increment,
fullname varchar(50) not null,
gender varchar(6) check (gender in ("male", "female")) not null,
managerid int);

describe project;

insert into project (fullname, gender, managerid ) 
values  ("pranaya", "male", 3),
		("priyanka","female", 1),
        ("preety", "female",null),
        ("anurag", "male", 1),
        ("sambit", "male", 1),
        ("rajesh", "male", 3),
        ("hina", "female", 3);
         
select * from project;
        
select T1.fullname as employee_name, T2.fullname as manager_name 
from project as T1
join project as T2
on T2.employeeid = T1.managerid;

