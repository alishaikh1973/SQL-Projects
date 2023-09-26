use DPTitans
create table Book
(
B_id int,
B_name varchar(80),
A_id int unique,
B_price numeric (8,0),
)
insert into Book values(1,'Alchemist',401,200)
insert into Book values(2,'Ikagai',402,250)
insert into Book values(3,'Doghlapan',403,240)
insert into Book values(4,'Subtle art of not giving a f*ck',404,200)
insert into Book values(5,'Power of subconcious mind',405,400)
select * from Book

create table Author
(
A_id int primary key,
A_name varchar(80),
p_no numeric(10,0)unique,
email varchar(80)unique,
address varchar(240),
city varchar(24))
drop table Author

insert into Author values(1,'Ali',8619423334,'ali@gmail.com','near stadium','Hyderabad')
insert into Author values(2,'Amay',992244124,'amay@gmail.com','Bajaj hospital','Aurangabad')
insert into Author values(3,'Anmol',9824356888,'anmol@gmail.com','lohegoan','Pune')
insert into Author values(4,'Suyash',9785226054,'suyash@gmail.com','Mira road','Mumbai')
insert into Author values(5,'Deep',9876543210,'deep@gmail.com','Kothrud','Pune')

select* from Author

create table Award
(
Award_id int primary key,
Atype_id int,
A_id int,
B_id int,
year int,
)



