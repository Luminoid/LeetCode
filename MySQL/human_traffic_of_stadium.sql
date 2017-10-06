SELECT s3.*
FROM stadium AS s3
    LEFT JOIN stadium AS s1 ON s1.id = (s3.id - 2)
    LEFT JOIN stadium AS s2 ON s2.id = (s3.id - 1)
    LEFT JOIN stadium AS s4 ON s4.id = (s3.id + 1)
    LEFT JOIN stadium AS s5 ON s5.id = (s3.id + 2)
WHERE (s1.people >= 100 && s2.people >= 100 && s3.people >= 100)
    || (s2.people >= 100 && s3.people >= 100 && s4.people >= 100)
    || (s3.people >= 100 && s4.people >= 100 && s5.people >= 100)
ORDER BY id