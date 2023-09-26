create table Bank
(
accno int,
name varchar(20) not null,
email varchar(30) unique,
balance int,
constraint pk_bank primary key(accno),
constraint chk_bal check (balance>0)
)
create table Employee
(
id int,
name varchar(20),
Did int,
constraint pk_emp primary key(id),
)

alter table employee add age int
alter table employee add constraint ch_age check(age>=18)
alter table employee drop constraint ch_age
exec sp_help employee