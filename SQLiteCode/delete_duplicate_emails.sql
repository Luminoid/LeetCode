Create table If Not Exists Person (Id int, Email varchar(255));
insert into Person (id, email) values ('1', 'john@example.com');
insert into Person (id, email) values ('2', 'bob@example.com');
insert into Person (id, email) values ('3', 'john@example.com');

# MySQL
delete P1 from Person as P1, Person as P2
where P1.Id > P2.Id and P1.Email = P2.Email
