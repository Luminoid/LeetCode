Create table If Not Exists Employee (Id int, Salary int);
insert into Employee (id, salary) values ('1', '100');
insert into Employee (id, salary) values ('2', '200');
insert into Employee (id, salary) values ('3', '300');

# MySQL
CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
    set N = N - 1;
    RETURN (
        select distinct salary from Employee
        order by salary desc limit 1 offset N
    );
END
