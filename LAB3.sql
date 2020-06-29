--create database NANTIPAT;
--use NANTIPAT;
--drop table CUSTOMER;
/*
create table CUSTOMER(
	CID char(3),
	Fname varchar(15),
	Lname varchar(15),
	Address varchar(30),
	Salary money,
	Job varchar(20)
	
);

insert into CUSTOMER(CID,Fname,Lname,Address,Salary,Job)
values ('001','Khumthorn','Nawalertpanya','Suratthani',15000,null),
('032','Kanchana','Pramong','Sathun',30000,'Doctor'),
('087','Kriangsak','Yakkapan','Pattalung',20000,'Doctor'),
('024','Rungruedee','Kitmakom','Sathun',28000,'Doctor'),
('123','Chettachai','Dittakan','Suratthani',80000,'Pilot'),
('456','Jiraporn','Jittiangtum','Suratthani',15000,'Admin'),
('940','Orasa','Siriphan','Bangkok',18000,'Admin')
*/
/*
select * --select columy,columx
from CUSTOMER --choose Table
*/

--select Fname,Lname,Salary
--from CUSTOMER
--select Job,Salary,Address
--From CUSTOMER
/*
	where condition,,
*/

/*
select CID,Fname,Lname,Job
from CUSTOMER
where CID='087';
*/

/*
select CID,Fname,Lname,Job
from CUSTOMER
where Job='Doctor'
*/

/*
select *
from CUSTOMER
WHERE Job!='Doctor'
*/

/*--find name and salary > 20000
select Fname,Lname,Salary
from CUSTOMER
where Salary >20000
*/
--where can use "AND" and "OR"

/*--Ex.find doctor and salary>25000
select CID,Fname,Lname,Salary,Job
from CUSTOMER
where salary>25000
and Job='Doctor'
*/

/*--try to use or
select CID,Fname,Lname,Salary,Job
from CUSTOMER
where salary>25000
or Job='Doctor'
*/

/*--find Fname Lname of customer !doctor live in bangkok
select Fname,Lname
from CUSTOMER
where Job !='Doctor' --it can actully use <> to be !=
and Address = 'Bangkok'
*/

--use between for number from x1 to x2
/*--example
select CID,Fname,Lname,Salary,Job
from CUSTOMER
where Salary between 10000 and 20000
*/

/*--find name lastname job salary of customer that have salary between 20k to 30k and live in !bangkok
select Fname,Lname,Job,Salary
from CUSTOMER
where Salary between 20000 and 30000
and Address !='Bangkok'
*/
/*--find name lastname address of customer that live in Bangkok and Pattalung
select Fname,Lname,Address
from CUSTOMER
where Address='Bangkok'
or Address = 'Pattalung'
*/
/*	--use set IN(condition1,....,conditionAtn)
select Fname,Lname,Address
from CUSTOMER
where Address IN('Bangkok','Pattalung')
*/
/*--find name lastname and salary of customer there're dortor and  pilot
select Fname,Lname,Salary
from CUSTOMER
where Job IN('Doctor','Pilot')
*/
/*
 for similar word by using "Like" use with "%" use for charactors >0
								  or "_" for just one charactor
 ex. A% for any records that A at the front
 ex. _____a% for any record that 'a' at 5 of word
 ex. %a%
 */

 /*--find any records that have 'th' in name
 select *
 from CUSTOMER
 where Fname like '%th%' 
 */

 /*--find name lastname salary job of customer that have 'an' in name or lastname
 select Fname,Lname,Salary,Job
 from CUSTOMER
 where Fname like '%an%'
 or Lname like '%an%'
 */

 --find job null

 --Order by condition DESC that must be last of statements
 -- by the default it goto from little to many
 
 /*
 select * 
 from CUSTOMER
 where Address = 'Suratthani'
 order by salary
 */

 /*
 select * 
 from CUSTOMER
 order by Fname
 */

 /*
 select*
 from CUSTOMER
 order by Address,Salary DESC
 */

 /*--DISINK display not same record
 select DISTINCT Address
 from CUSTOMER
 */

 /*RENAME FOR DISPLAY NOT FOR DATABASE ATTRIBUTEs'NAME*/
 -- use 'AS' ex. attribute1 as NAMEFORDISPLAY
/*
select 
	CID AS 'Customer ID',
	Fname AS 'Fist Name',
	Lname AS 'Last Name'
From CUSTOMER
*/
--select * from CUSTOMER