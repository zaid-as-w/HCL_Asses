create database Assesment;

use assesment;

create table employees(
    emp_id int primary key,
    emp_name varchar(50),
    dept_id int references departments(dept_id),
    salary int
);

create table departments(
    dept_id int primary key,
    dept_name varchar(50)
);

insert into employees 
values(101,'Zaid',1,50000),
(102,'Anmol',1,60000),
(103,'Felix',2,40000),
(104,'Akas',3,60000),
(105,'Gotam',3,60000),
(106,'Gopi',2,50000),
(107,'Adarsh',1,40000),
(108,'Srawan',2,45000);

insert into departments
values(1,'IT'),
(2,'Sales'),
(3,'Management'),
(4,'Production');

SELECT d.dept_id,
d.dept_name,
COUNT(e.emp_id) AS employee_count,
COALESCE(MAX(e.salary),0) AS highest_salary
FROM departments AS d
LEFT JOIN employees AS e
ON d.dept_id = e.dept_id
GROUP BY d.dept_id, d.dept_name;

