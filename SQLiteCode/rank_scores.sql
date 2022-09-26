Create table If Not Exists Scores (id int, score DECIMAL(3,2));
insert into Scores (id, score) values ('1', '3.5');
insert into Scores (id, score) values ('2', '3.65');
insert into Scores (id, score) values ('3', '4.0');
insert into Scores (id, score) values ('4', '3.85');
insert into Scores (id, score) values ('5', '4.0');
insert into Scores (id, score) values ('6', '3.65');

-- rank is a reserved word since MySQL 8.0.2

select score, (select count(*) + 1 from (select distinct score s from Scores) S where s > score) as `rank`
from Scores order by score desc
