# MySQL

Create table If Not Exists Weather (id int, recordDate date, temperature int);
insert into Weather (id, recordDate, temperature) values ('1', '2015-01-01', '10');
insert into Weather (id, recordDate, temperature) values ('2', '2015-01-02', '25');
insert into Weather (id, recordDate, temperature) values ('3', '2015-01-03', '20');
insert into Weather (id, recordDate, temperature) values ('4', '2015-01-04', '30');

select Weather.id from Weather, Weather as YesterdayWeather
where datediff(Weather.recordDate, YesterdayWeather.recordDate) = 1 and Weather.temperature > YesterdayWeather.temperature
