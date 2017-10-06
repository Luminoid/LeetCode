SET @rank = 0, @previous = -1;
SELECT Score, @rank := @rank + (@previous <> (@previous := Score)) AS Rank
FROM Scoress
ORDER BY Score DESC