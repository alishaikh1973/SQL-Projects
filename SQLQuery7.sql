drop table Employee
create table Employee
(
id int primary key,
name varchar(20) not null,
email varchar(40) unique,
age int check(age>=18),
salary numeric(12,2)
)

select * from Employee  
insert into Employee values(1,'Ali','ali@gmail.com',22,40000.00)
insert into Employee values(2,'Rashid','rashid@gmail.com',24,80000.00)
insert into Employee values(3,'Suyash','suyash@gmail.com',22,400000.00)
insert into Employee values(4,'Amay','amay@gmail.com',22,44000.00)
insert into Employee values(5,'Anmol','anmol@gmail.com',22,400000.00)
insert into Employee values(6,'Amol','amol@gmail.com',24,15000.00)
insert into Employee values(7,'Deep','deep@gmail.com',22,28000.00)
insert into Employee values(8,'Pradip','pradip@gmail.com',23,24000.00)
insert into Employee values(9,'Bhagyesh','bhagyesh@gmail.com',22,80000.00)
insert into Employee values(10,'Rushi','rushi@gmail.com',24,45000.00)
insert into Employee values(11,'Aakash','aakash@gmail.com',22,28000.00)
insert into Employee values(12,'Mayur','mayur@gmail.com',20,20000.00)
insert into Employee values(13,'Yuvraj','yuvraj@gmail.com',20,400000.00)
insert into Employee values(14,'Manish','manish@gmail.com',28,44000.00)
insert into Employee values(15,'Aadil','aadil@gmail.com',24,40000.00)
exec sp_help Employee

update Employee set salary=21800 where id=3

update Employee set email='amolk@gmail.com',salary=65000,age=34 where id=4

alter table employee add city varchar(20)

update Employee set city='Mumbai' where id in(1)
update Employee set city='Mumbai' where id in(4)
update Employee set city='Mumbai' where id in(5)
update Employee set city='Mumbai' where id in(7)
update Employee set city='Mumbai' where id in(9)
update Employee set city='Pune' where id in(2)
update Employee set city='Pune' where id in(3)
update Employee set city='Pune' where id in(6)
update Employee set city='Pune' where id in(12)
delete from Employee where id=11

delete from Employee where city='pune'

delete from Employee where age <18

delete from Employee where id in(1,2,3,4,5)
insert into Employee(id,name,email,age,salary) values(11,'Kishor','kishor@gmail.com',31,55670)
select name,email from Employee
select name as 'Employee name', email as 'Email Id' from Employee
select emp.name as 'Emp name',emp.email,emp.salary from 
Employee emp
select emp.* from 
Employee emp
select * from Employee where age <>34 and age<>26
select distinct city from Employee
select distinct age from Employee
select * from Employee where salary<28000 and city='Pune' and age<23
select * from Employee where salary between 23000 and 25000 

select * from Employee where age between 20 and 25
select*from Employee where id in(1,4,8,12)

--null and not null
select*from Employee where city is null
select*from Employee where city is null
select*from employee where city is  not null

--like clause
select*from employee where name like 's%'
select*from employee where name like '%s'
select*from employee where name like '%a'
select*from Employee where name like 's%'
select*from employee 
select*from employee where name like 'a%'
select*from employee where name like '%a%'
select*from employee where name like '%[inl]'
select*from employee where name like '%[inl]%'
select*from employee where name like '[a-z]%'
select*from employee where name like '%[a-z]%'
select*from employee where name like 'a____'
select*from employee where name like 'a__'
select*from employee where name like '_____b'
select*from employee where name like '_a___'

--not like clause
select*from employee where name not like 'a%'
select*from employee where name not like '%a%'
select*from employee where name not like '%[inl]'
select*from employee where name not like '%[inl]%'
select*from employee where name not like '[a-z]%'
select*from employee where name not like '%[a-z]%'
select*from employee where name not like 'a____'
select*from employee where name not like 'a__'
select*from employee where name not like '_____b'
select*from employee where name not like '_a___'

--order by clause
select*from employee order by name
select*from employee order by name desc
select*from employee order by name asc
select*from employee order by name ,age
select*from employee order by salary
select*from employee order by salary,name asc 

--top clause
select top 5* from employee order by id

select top 3* from employee order by id desc
select top 1* from employee order by id 
select top 1* from employee order by salary
select top 40 percent * from employee order by id desc
select top 40 percent * from employee order by id desc
select top 3 with ties * from employee order by id desc
select top 3 with ties * from employee order by salary

--fetch and offset
select * from employee order by salary desc
offset 2 rows
fetch next 1 rows only

select * from employee order by salary desc
offset 4 rows
fetch next 1 rows only

select * from employee order by salary desc
offset 2 rows
fetch next 2 rows only

select * from employee order by salary 
offset 5 rows
fetch next 1 rows only


--Aggregate function
select max(salary) as 'max salary' from employee
select min(salary) as 'min salary' from employee
select avg(salary) as 'avg salary' from employee

select *from employee

-- BUILT IN FUCTIONS IN SQL--
--1. len fuction--
select name,len(name) from Employee

--2.Uppercase and lowercase fuctions--
select UPPER(name) as'Upper case',LOWER(name) as'lower case' from Employee

--3.Substring fuction--
select SUBSTRING(email,0,5) as'substring' from Employee

--4.Trim function--
select TRIM(name) from Employee  

--5.Left trim and Right trim fuction--
select LTRIM(name) from Employee 
select RTRIM(name) from Employee

--6. Concat Function--
select concat(name,'->',email,'->',age) from Employee

--7.Replace function--
select REPLACE(email,'@','#') from Employee

--8. Cast function--
select cast(salary as varchar(20))as 'string salary' from Employee

--9.Date function--
select GETDATE() 
select cast(GETDATE() as date)


--10. Time function--
select cast(getdate() as time)
select * from employee
select  year(cast(GETDATE() as date))
select  month(cast(GETDATE() as date))
select  day(cast(GETDATE() as date))

 select cast(GETDATE() as time)

  select format(cast(GETDATE() as time),'hh')
    select format(cast(GETDATE() as time),'mm')
	  select format(cast(GETDATE() as time),'ss')
	    select format(cast(GETDATE() as time),'ms')


-- Find the birth year of each employee--
--current year - age-- formula----
select name,age,year(cast(GETDATE() as date))-age as'Birth year' from Employee













































 







                   