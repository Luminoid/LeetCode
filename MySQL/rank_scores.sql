SET @rank = 0, @previous = -1;
SELECT Score, @rank := @rank + (@previous <> (@previous := Score)) AS Rank
FROM Scores
ORDER BY Score DESC