--use NANTIPAT
--drop table CUSTOMER
/*
create table Customer(
	CID char(3),
	Fname varchar(15),
	Lname varchar(15),
	Address varchar(30),
	Salary money,
	Job varchar(20)
	
);

insert into Customer(CID,Fname,Lname,Address,Salary,Job)
values ('001','Khumthorn','Nawalertpanya','Suratthani',15000,null),
('032','Kanchana','Pramong','Sathun',30000,'Doctor'),
('087','Kriangsak','Yakkapan','Pattalung',20000,'Doctor'),
('024','Rungruedee','Kitmakom','Sathun',28000,'Doctor'),
('123','Chettachai','Dittakan','Suratthani',80000,'Pilot'),
('456','Jiraporn','Jittiangtum','Suratthani',15000,'Admin'),
('940','Orasa','Siriphan','Bangkok',18000,'Admin')
*/
/*
create table Aircraft(
	AID char(6),
	Aname varchar(10),
	Model char(5),
	Cruising_Range int,
	SupID char(5)
)
*/
/*
create table Supplier(
	SubID char(5),
	SupName varchar(30),
	SupAddress varchar(150),
	Telephone varchar(16)
)
*/
/*
insert into Aircraft
values ('AB1086','BUCK','A-320',5000,'S1002'),
('AB1208','DEWEY','A-320',5000,'S1003'),
('AB2369','MAYA','A-380',10000,'S1001'),
('AB2475','MAX','A-333',10000,'S1002'),
('BO1287','OLD JACK','B-747',8000,'S1004'),
('BO1733','SHADOW','B-747',8000,'S1003'),
('BO3409','SHORTIE','B-777',10000,'S1004'),
('BO7861','THUMAN','B-737',5000,'S1002')
*/
/*
INSERT INTO Supplier
VALUES ('S1001','American Rockwell','3236 M St NW, Washington, DC 20007, United States','001-140-7717177'),
('S1002','ATR Bombardier Embraer','1550 Wilson Blvd, Arlington, VA 22209, United States','001-159-23923969'),
('S1003','Aerospariale','35 Rue Chevalier de La Barre, 75018 Paris, France','36-01-53418900'),
('S1004','Boeing Commercial Airplanes','Echterdinger Straße 30, 70599 Stuttgart, Germany','49-0711167650')
*/

--select *from customer
/*
select *from Flights
select *from Aircraft
select *from Supplier
*/


/*Subqueries
connect pri with forign by sub and join
subqueriea
	select  main query
		>select sub query
			>select ..32 query
*/
/*
select Aname								--{
from Aircraft									--process 2rd
where AID = ( --normally condition
		select AID --normally condition			{
		from Flights
		where FlgFrom = 'Bangkok'				--process 1st subquery frist
		and FlgTo = 'Narita'				--	}
		)
											--}
*/
--find routes flightno, flgfrom,flgto,distance by using b-747
/* ** ** * ** ** ** * ** * * * ** * * ** * ** ** ** * * * * ** * *
select FlightNo,FlgFrom,Flgto,Distance
from Flights
where AID in(    --if not sure that the answer not one use "in" set of answers
		select aid
		from Aircraft
		where Model='B-747'
		)
 ** * ** * * ** * * * ** * ** * ** * * ** * * ** * ** * * * ** * ** */
 --find routes flightno, flgfrom,flgto,distance by using b-747 and  build in france
 
 select FlightNo,FlgFrom,FlgTo,Distance
 from Flights
 where AID in (
			select AID
			from Aircraft
			where Model = 'B-747'
			and SupID in (
						select SupID
						from Supplier
						where SupAddress like '%France%'
					)
		)

--fing name model of aircraft that flight distance more than average distance of all air craft
/*
select Aname,Model
from Aircraft
where AID in (
	select AID
	from Flights
	where Distance > (
	select avg(Distance)
	from Flights
	)	
)
*/

