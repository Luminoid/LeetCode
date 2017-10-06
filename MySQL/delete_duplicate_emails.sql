DELETE p2
FROM Person AS p1, Person AS p2
WHERE p2.id > p1.id AND p2.Email = p1.Email