Create table If Not Exists Person (id int, email varchar(255));
insert into Person (id, email) values ('1', 'a@b.com');
insert into Person (id, email) values ('2', 'c@d.com');
insert into Person (id, email) values ('3', 'a@b.com');

select email from Person group by email having count(email) > 1
