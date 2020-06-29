--create database AMANDA; --keyword for create database
--use AMANDA;--keyword for use database
/*
for the number
	BIGINT 8bytes
	INTEGER or INT 4bytes
	SMALLINT 2 bytes
	TTNYINT 1 bytes (non-negative)
for numberic 
	DECIMAL(p,[s])
	NUMBERIC
	FLOAT

	MONEY 8 bytes
	SMALLMONEY 4 bytes
for character
	CHAR[(n)] or CHARACTER(n) 8,000 limit fixed-length data must be into length
	NCHAR[(n)] fixed-length into rent 4000
	VARCHAR[(n)] variable-length save for in use but not far from n
	NVARCHAR[(n)] variable -length not fixed-length
	TEXT[(n)] fixed-length string to 2,147,483,647 characters.
	NTEXT[(n)] 1073
for binary(and bit) String Data types
	BINARY
	VARBINARY
	..
	..
for Date ,time
	datetime
	smalldatetime
other
	UNIQUEIDENTIFIER 16 -bytes can use for id
	TIMESTAMP can use for id time can be quque
	

	
create table shipsInfo(-- employee
	ship_ID	char(9),--ssn CHAR(9)
	ship_Name VARCHAR(25),--first , last name Varchar 25
	made_by VARCHAR(12),--from wah country! --address varchar 30
	salary money
);

--insert info 1st
insert into shipsInfo(ship_ID,ship_Name,made_by,salary)
VALUES ('613252689','ENTERPRISE','AMERICA','100000000');

--show tables 1st
select*from  shipsInfo;

--insert info 2rd
insert into shipsInfo(ship_ID,ship_Name,made_by,salary)
values ('214568978','DISCOVERY','CN and RU',200000000);

--insert info 3th
insert into shipsInfo(ship_ID,ship_Name,made_by,salary)
values ('214568978','ZINJO','CN',1980000000);

select*from  shipsInfo;

--613252689	ENTERPRISE	AMERICA	100000000.00
--214568978	DISCOVERY	CN and RU	200000000.00
--214568978	ZINJO	CN	1980000000.00

--drop table
drop table shipsInfo;

select*from  shipsInfo;--Invalid object name 'shipsInfo'.

--drop database
drop database AMANDA; --Cannot drop database "AMANDA" because it is currently in use.

--select database DWQueue than new query then do below this
drop database AMANDA;
*/
--LAB2-TEST
--create database Database_Hospital;
--use Database_Hospital;
/*
create Table Doctor(
	ID char(3),
	Fname VarChar(25),
	Lname VarChar(25),
	DOB Smalldatetime,
	Address VarChar(15),
	Salary money,
	Ward VarChar(10)
	);
*/
--insert into Doctor(ID,Fname,Lname,DOB,Address,)
--drop table Doctor;
--insert into Doctor(ID,Fname,Lname,DOB,Address,Salary,Ward)
--values (053,'Monkol','Nawalertpanya','06/08/1980','Surat-thani',35000,'Surgery');
--drop table Doctor;--because smallint overflow
--select*from Doctor;

