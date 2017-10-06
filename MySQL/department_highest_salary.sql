SELECT Department.Name AS Department, Employee.Name AS Employee, Employee.Salary
FROM Employee
    JOIN Department ON Employee.DepartmentId = Department.Id
    JOIN (SELECT DepartmentId, MAX(Salary) AS max FROM Employee GROUP BY DepartmentId) AS Max_salary ON Max_salary.DepartmentId = Department.Id
WHERE Employee.Salary = Max_salary.max