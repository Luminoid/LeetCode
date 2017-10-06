SELECT DISTINCT l1.Num AS ConsecutiveNums
FROM Logs AS l1
    JOIN Logs AS l2 ON l1.id = (l2.id - 1)
    JOIN Logs AS l3 ON l2.id = (l3.id - 1)
WHERE l1.Num = l2.Num && l2.Num = l3.Num