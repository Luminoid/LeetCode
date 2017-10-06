SELECT w2.Id
FROM Weather AS w1, Weather AS w2
WHERE DATEDIFF(w2.Date, w1.Date) = 1 AND w2.Temperature > w1.Temperature