SELECT employee.Name AS Employee
FROM Employee as employee, Employee as manager
WHERE employee.ManagerId = manager.id AND employee.salary > manager.salary