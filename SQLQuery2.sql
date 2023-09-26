CREATE TABLE Student
(
rollno int,
name varchar(20),
percentage numeric(6,2),
city varchar(10),
dob date
)
alter table Student alter column name varchar(25)
alter table Student add country varchar(20)
alter table Student drop column country
