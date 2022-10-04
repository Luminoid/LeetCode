-- SQLite

Create table If Not Exists Employee (id int, name varchar(255), salary int, departmentId int);
Create table If Not Exists Department (id int, name varchar(255));
insert into Employee (id, name, salary, departmentId) values ('1', 'Joe', '70000', '1');
insert into Employee (id, name, salary, departmentId) values ('2', 'Jim', '90000', '1');
insert into Employee (id, name, salary, departmentId) values ('3', 'Henry', '80000', '2');
insert into Employee (id, name, salary, departmentId) values ('4', 'Sam', '60000', '2');
insert into Employee (id, name, salary, departmentId) values ('5', 'Max', '90000', '1');
insert into Department (id, name) values ('1', 'IT');
insert into Department (id, name) values ('2', 'Sales');

select Department.name as Department, Employee.name as Employee, Employee.salary as Salary
from Employee, Department, (select max(salary) as salary, departmentId from Employee group by departmentId) as maxSalary
where Employee.departmentId = Department.id and Employee.departmentId = maxSalary.departmentId and Employee.salary = maxSalary.salary
