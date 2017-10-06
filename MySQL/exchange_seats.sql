SELECT id,
IF (id % 2 = 0,
    (SELECT student FROM seat WHERE id = (s.id - 1)),
    IF (id < (SELECT COUNT(*) FROM seat),
        (SELECT student FROM seat WHERE id = (s.id + 1)),
        student
       )
   ) AS student
FROM seat AS s