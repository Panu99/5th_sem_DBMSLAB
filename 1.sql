create table employee(ssn varchar(6),name varchar(10),deptno int, primary key(ssn));

create table project(projectno varchar(10),projectarea varchar(20),primary key(projectno));

create table assigned_to(ssn varchar(6),projectno varchar(10),foreign key(ssn)references employee(ssn),foreign key(projectno)references p(projectno));

insert into employee values('412','Pranav',10);

insert into employee values('02','raksha',20);

insert into employee values('03','prakash',30);

insert into employee values('04','nancy',40);

insert into project values('100','database');

insert into project values('200','network');

insert into project values('300','android');

insert into assigned_to values('01','100');

insert into assigned_to values('02','200');

insert into assigned_to values('03','300');

insert into assigned_to values('01','200');

--a
SELECT ssn from assigned_to where ProjectNo = (Select ProjectNo from project where ProjectArea='database');
--b
select count(ssn),deptno from employee group by deptno;
--c
UPDATE ASSIGNED_TO SET ProjectNo=20 WHERE SSN=1;
