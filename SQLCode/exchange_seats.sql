-- SQLite

Create table If Not Exists Seat (id int, student varchar(255));
insert into Seat (id, student) values ('1', 'Abbot');
insert into Seat (id, student) values ('2', 'Doris');
insert into Seat (id, student) values ('3', 'Emerson');
insert into Seat (id, student) values ('4', 'Green');
insert into Seat (id, student) values ('5', 'Jeames');

select id,
    iif(id % 2 = 0,
        (select student from Seat where id = S.id - 1),
        (iif(id < (select count(*) from Seat),
            (select student from Seat where id = S.id + 1),
            (select student from Seat where id = S.id)))) as student
from Seat S
