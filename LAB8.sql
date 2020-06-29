-- not null
-- use for intallisation
--ex 
/*	acc_num char(10) not null,
*/

-- primary key
/*
	create table airpl(
		aid char(3) --or behind here! primary key,
		name varchar(25) not null,
		cruising_range int,
		primay key (aid)
		)
*/
--create database LabIntegrityConst
--use LabIntegrityConst
/*
create table airplane(
	aid char(3)	primary key,
	aname varchar(25)	not null,
	Model varchar(6)	not null,
	cruising_range int
)
*/
/*
insert into airplane
values('001','Demon','A-380',10000)
---can't duplicate key
insert into airplane
values('001','Demon','A-380',10000)
--nope
*/
/*
insert into airplane
values('002','Demon','A-380',10000)
--row affected
*/
/*
insert into airplane(aid,aname,Model)
values('003','BubbleBee','B-777')
*/--row affected
/*
insert into airplane(aid,aname,cruising_range)
values('004','Monday',20000)
*/--row not affected The statement has been terminated.


--Referential integrity (Foriegn key)
--ex
/* 
create table guil(
	flid	char(5), -- or leave the keyword 'primary key' behind vari
	aid char(3), -- or leave keyword 'references airplane' behind vari
	primary key(flid)
	foreign key(aid) references airplane
)
*/
--use LabIntegrityConst
/*
create table flight_test
(
	flgID	char(5)	primary key,
	aid		char(3) references airplane,
	detail	varchar(30)
)
*/
/*
insert into flight_test
values('00001','001','Test record 1')

insert into flight_test(flgID,aid)
values('00002','001')

insert into flight_test(flgID,detail)
values('00003','Test record 3')

insert into flight_test
values('00004','004','Test record 4')
*/
/*tpyes of db DDL DML DCL
*/

/*
	Alter 
	ex 3 samples

	for new colum do not set not null

	*/
	/*--ex
	ALTER TABLE AIRPLANE
	add remark varchar(30)
	--added column remark to table airplane
	select*from airplane
*/
/*
	ALTER TABLE AIRPLANE
	drop column remark 
	--droped column remark from table airplane
	select*from airplane
	*/
	/*--resize
	ALTER TABLE AIRPLANE
	ALTER COLUMN ANAME varchar(100)
	*/