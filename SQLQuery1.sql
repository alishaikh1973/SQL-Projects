create table customer
(
id int primary key,
c_name varchar(20) not null,
country varchar(20),
)
drop table customer
insert into customer values(1,'ali','india')
insert into customer values(2,'rashid','dubai')
insert into customer values(3,'amay','london')
insert into customer values(4,'suyash','paris')
insert into customer values(5,'anmol','pakistan')
select*from customer
--1--
select city from customer
alter table customer add city varchar(20)
--2--
select country from customer
update customer set city='london' where id in(1,4)
--3--
select*from customer where city='london'
--4--
select*from customer where city not in('berlin')
--5--
select*from customer where id=4
update customer set city='berlin' where id in(2,3,5)
alter table customer add p_code numeric(6,0) 
exec sp_help customer
select* from customer where city = 'berlin'
update customer set p_code = '121110' where id in(2,3,5)
select * from customer
--6--
select* from customer where city = 'berlin' and p_code='121110'
--7--
select* from customer where city = 'berlin' or city='London'
--8--
select * from customer order by city asc
update customer set city='London' where id in(1,4)
--9--
select * from customer order by city desc
select * from customer order by city,country asc
select * from customer order by id asc
--10--
select * from customer order by city,country asc
select * from customer order by country asc
use DPTitans
--11--
select * from customer where p_code is null
--12--
select * from customer where p_code is not null
--13--
update customer set city='oslo' where country = 'london'
select * from customer 
--14--
delete from customer where city='london'
alter table customer add price int 
update customer set price ='20' where id in(1,2,5)
update customer set price ='10' where id in(3,4)
--15 --
select min(price) as 'min price' from customer 
--16--
select top 1* from customer order by price desc
--17--
select * from customer where price ='20'

create table product1
(
p_id int unique,
p_name varchar(20),
p_price int not null
)
insert into product1 values(1,'pen',20),
					      (2,'pencil',10),
						  (3,'eraser',5),
						  (4,'sharper',10)
select * from product1
--18--
select avg(p_price) as 'avg price' from product1
--19--
select sum(p_price) as 'sum of price' from product1 
--20--
select*from customer where city like 'l%'
--21--
select*from customer where city like '%n'
--22--
select*from customer where city like '%l%'
--23--
select*from customer where city like 'l%%n'
--24--
select*from customer where city not like 'l%'
--25--
select*from customer where city like '_o%'
--26--
select*from customer where city like '%[lbn]'
--27--
select*from customer where city like '%[a-z]%'
--28--
select*from customer where city not like '%[acf]%'
--30--
select * from customer where city not in('Norway','France')
--31--
select * from customer where price between 10 and 20
--32--
select * from customer where price  not between 10 and 20
--33--
select * from product1 where p_name between 'pen' and 'pencil'
--34--
select p_code as postalcode from customer
--35--
select* from customer as consumer
--38--
create database testDB
--39--
drop database testDB
--40--
create table person
(
pname varchar,
p_age int
)
alter table person add birthday date 
--41--
alter table person drop  column birthday





















						  






























