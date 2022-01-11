
create database saipreethireddy
create table saipreethireddy(preethireddyId int,preethireddyDesc varchar(max),preethireddyBook varchar(max),published int)
insert into saipreethireddy values(1,'Harrypotter','J.K Rowling',20)
insert into saipreethireddy values(2,'Magical Book','Sai Chander',10)
insert into saipreethireddy values(3,'Casual Vacancy','J.K Rowling',12)
insert into saipreethireddy values(4,'Fault Lines','Emily Itami',20)
alter table saipreethireddy add price int
update saipreethireddy set price= 120 where preethireddyBook = 'Sai Chander'
update saipreethireddy set price=500 where preethireddyDesc ='Harrypotter'
alter table saipreethireddy add sold int
update saipreethireddy set sold=10 where preethireddyBook ='J.K Rowling'
update saipreethireddy set sold=8 where preethireddyBook ='Emily Itami'
update saipreethireddy set sold=20 where preethireddyDesc ='Harrypotter'
update saipreethireddy set sold=5 where preethireddyBook ='Sai Chander'


select *from saipreethireddy where preethireddyBook='J.K Rowling'
delete from saipreethireddy 
select * from saipreethireddy

