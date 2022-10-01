Create table If Not Exists Employee (id int, name varchar(255), salary int, managerId int);
insert into Employee (id, name, salary, managerId) values ('1', 'Joe', '70000', '3');
insert into Employee (id, name, salary, managerId) values ('2', 'Henry', '80000', '4');
insert into Employee (id, name, salary, managerId) values ('3', 'Sam', '60000', 'None');
insert into Employee (id, name, salary, managerId) values ('4', 'Max', '90000', 'None');

select Employee.name as Employee from Employee Employee, Employee as Manager
                                 where Employee.managerId = Manager.id
                                   and Employee.salary > Manager.salary