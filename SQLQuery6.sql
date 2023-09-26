create table Bank
(
accno int,
name varchar(20) not null,
email varchar(30) unique,
balance int,
branch varchar(20) default('kothrud'),
constraint pk_bank primary key(accno),
constraint chk_bal check (balance>0)
)
drop table bank


alter table bank add branch varchar(20)  
alter table bank add constraint de_branch default 'Pune' for branch 
alter table bank drop constraint de_branch 
