Create table If Not Exists Logs (id int, num int);
insert into Logs (id, num) values ('1', '1');
insert into Logs (id, num) values ('2', '1');
insert into Logs (id, num) values ('3', '1');
insert into Logs (id, num) values ('4', '2');
insert into Logs (id, num) values ('5', '1');
insert into Logs (id, num) values ('6', '2');
insert into Logs (id, num) values ('7', '2');

select distinct Logs.num as ConsecutiveNums
from Logs join Logs as L1 join Logs as L2
on Logs.id = L1.id - 1 and L1.id = L2.id - 1
where Logs.num = L1.num and Logs.num = L2.num
