SELECT
    Request_at AS Day,
    ROUND(SUM(IF(Status <> 'completed', 1, 0)) / COUNT(*), 2) AS 'Cancellation Rate'
FROM Trips
JOIN Users ON Trips.Client_id = Users.Users_Id && Users.Banned = 'NO'
WHERE (Request_at BETWEEN '2013-10-01' AND '2013-10-03')
GROUP BY Request_at