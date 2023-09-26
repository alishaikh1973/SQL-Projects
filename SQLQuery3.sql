--SQL JOINS--
select * from Employee
select * from Dept
drop table Dept
use DPTitans
create table Dept
(
did int primary key,
dname varchar(20)
)

insert into Dept values(101,'HR'),(102,'Admin'),(103,'Development'),(104,'Testing')
,(105,'Sales')



alter table employee add did int
alter table employee add constraint pk_fk_dept_emp 
foreign key(did) references Dept(did)


update Employee set did=101 where id in (1,13)
update Employee set did=102 where id in (2,12)
update Employee set did=103 where id in (3,4,5,6,7)
update Employee set did=104 where id in (8,9)
update Employee set did=105 where id in (10,11)

select e.*,d.dname
from Employee e
inner join Dept d  on d.did=e.did

select e.*,d.dname
from Employee e
left join Dept d  on d.did=e.did

----group by clause----
select did,id from Employee
select did,count(id)as 'count' from  employee 
group by did

select *from customer
select * from orders

-- display number of order placed by each customer

select u_id, count(o_id) as 'total orders' from orders
group by u_id


--select cid count(sid) as 'total courses' from course
--group by course

--select cname count(sid) as 'c#' from course
--group by course

--select sum(cname) as 'total fees' from course


--having clause--
select cid count(sid) as 'total courses' from course
group by course
having count(sid)<15 
order by count(sid)desc

select city,count(id) as 'count' from Employee
group by city
having count(id)>2

select userid, count(oid) from order
group by userid
having count(oid)>5

select * from Employee



--SUBQUERY--

--find the max salary in employee table
select max(salary) from Employee

-- display the emp details who has max salary in emp table
--outer query                            inner/ subquery
select * from Employee where salary=(select max(salary) from Employee)

-- display emp details who work in HR dept

select * from Employee
select * from Dept
select * from Employee where did=
(
select did from Dept where dname='Development'
)

-- display emp details who has less salary than Rahul

select * from Employee where salary <
(
select salary from employee where name='yuvraj'
)

-- display the emp details who has less salary than the avg salary of all emps
select * from Employee where salary<
(
select avg(salary) from Employee
)

--display the emp from dev dept who has less salary then the 
--avg salary of admin dept
select * from Employee where salary<
(
select avg(salary) from Employee where did=(select did from dept where dname='hr')
)
and did=(select did from Dept where dname='development')


-- display the emp details who has 2nd highest salary
select * from Employee where salary=
(
select max(salary) from Employee where salary<>
(
select max(salary) from Employee
)
)

--UPDATE SUBQUERY--
-- update the salary by 2000rs for emp who work in hr dept

update Employee set salary=salary+2000 where did in
(
select did from Dept where dname='HR'
)

--DELETE SUBQUERY--
-- delete the emp who work in admin dept

delete from Employee where did in
(
select did from Dept where dname='HR'
)





