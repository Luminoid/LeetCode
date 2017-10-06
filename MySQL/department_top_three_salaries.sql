SELECT Department.Name AS Department, Employee.Name AS Employee, Employee.Salary
FROM Employee
    JOIN Department ON Employee.DepartmentId = Department.Id
WHERE (
    SELECT COUNT(DISTINCT Salary) FROM Employee AS e
    WHERE e.DepartmentId = Department.Id && e.Salary > Employee.Salary
) < 3
ORDER BY Department.Id, Employee.Salary DESC