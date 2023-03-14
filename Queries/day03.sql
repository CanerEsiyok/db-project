create table ScrumTeam(
  Emp_ID Integer PRIMARY KEY ,
  FirstName varchar(30) not null ,
  LastName varchar(30),
  JObTitle varchar(20)
);
select * from SCRUMTEAM;
insert into SCRUMTEAM (emp_id, firstname, lastname, jobtitle)
VALUES (1,'Severus','Snape','SDET');
select * from SCRUMTEAM;
insert into SCRUMTEAM values (2,'Lord','Voldemort','Developer');
select * from SCRUMTEAM;
insert into SCRUMTEAM values (3,'Frodo','Baggins','ScrumMaster');
insert into SCRUMTEAM values (4,'Gollum','Smaegol','PO');

