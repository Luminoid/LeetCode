-- SQLite

Create table If Not Exists Stadium (id int, visit_date DATE NULL, people int);
insert into Stadium (id, visit_date, people) values ('1', '2017-01-01', '10');
insert into Stadium (id, visit_date, people) values ('2', '2017-01-02', '109');
insert into Stadium (id, visit_date, people) values ('3', '2017-01-03', '150');
insert into Stadium (id, visit_date, people) values ('4', '2017-01-04', '99');
insert into Stadium (id, visit_date, people) values ('5', '2017-01-05', '145');
insert into Stadium (id, visit_date, people) values ('6', '2017-01-06', '1455');
insert into Stadium (id, visit_date, people) values ('7', '2017-01-07', '199');
insert into Stadium (id, visit_date, people) values ('8', '2017-01-09', '188');

select distinct S1.* from Stadium S1, Stadium S2, Stadium S3
where S1.people >= 100 and S2.people >= 100 and S3.people >= 100 and
      ((S1.id = S2.id - 1 and S1.id = S3.id - 2)
       or (S1.id = S2.id + 1 and S1.id = S3.id - 1)
       or (S1.id = S2.id + 1 and S1.id = S3.id + 2))
order by S1.id
