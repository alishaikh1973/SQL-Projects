
create table Dept
(

dept_name varchar(10),
Did int,
constraint pk_dept primary key(Did)

)
drop table Employee

create table Employee
(
id int,
name varchar(20),
Did int,
constraint pk_emp primary key(id),
constraint fk_dept foreign key(Did) references Dept (Did)
)

alter table employee add Did int
alter table Dept add constraint pk_dept primary key(id)