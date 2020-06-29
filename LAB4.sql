--use NANTIPAT;
--drop table Flights
/*
create table Flights(
	FlightNo char(5),
	AID char(6),
	Type varchar(10),
	FlgFrom varchar(15),
	FlgTo varchar(15),
	Distance int,
	Depart time(0),
	Arrive time(0),
	Price int
);
*/

--insert Flights(FlightNo,AID,Type,FlgFrom,FlgTo,Distance,Depart,Arrive,Price)
--values ('TG732','BO1733','BOEING','Bangkok','Dullus',8120,'01:00','23:30',38635);
--values ('TG865','AB1208','AIRBUS','Bangkok','Narita',2570,'10:00','15:00',17300);
--values ('TG122','BO3409','BOEING','Phuket','Singapore',835,'14:45','16:15',6950);
--values ('TG347','BO7861','BOEING','London','Bangkok',5895,'16:15','04:30',28650);
--values ('TG232','BO1287','BOEING','Bangkok','Egypt',2450,'20:30','02:45',17300);
--values ('TG455','AB1086','AIRBUS','Auckland','Bangkok',1575,'00:35','06:05',18600);
--values ('TG765','AB2475','AIRBUS','Perth','Bangkok',1250,'09:00','14:45',15700);
--values ('TG876','AB2369','AIRBUS','Vancuver','Bangkok',7595,'00:45','23:45',35000);
--values ('AW000',null,null,null,null,0,null,null,0);
/*
update Flights
set FlightNo='TG000',AID='AB000',Type = 'BOEING'
where FlightNo = 'AW000';
*/
/*
delete Flights
where FlightNo ='TG000';
*/ 
--select*from Flights;

-----------------------------------------------------------------------------------------
/*
TOP Aggregate function Group by
*/
/*
TOP n use with ORDER BY
top n is not the standard
*/

/* show top 5 flights price  most to low cost.
select  top 5 FlightNo,FlgFrom,FlgTo,Distance,Price
from Flights
ORDER BY Price DESC;
*/

/*use with ties behide top n count amount of cost not row

select top 5 with ties FlightNo,FlgFrom,FlgTo,Distance,Price
from Flights
ORDER BY Price DESC;
*/
/*show top 3 flights for low distace

select top 3 with ties *from Flights
order by Distance ASC;
*/

/*--show top 2 price flight from Bangkok
select top 2 with ties *from Flights
where FlgFrom ='Bangkok'
order by Price DESC; 
*/

/*
--Aggregate Function
--SUM,AVG,COUNT,MIN,MAX
select AGGREGATE (COLUMN|EXPTESSION AS COLUMNAME)
FROM TABLENAME
*/
/*
select count(*) 
from Flights
--result is No colum name and show amount of flights.
*/
/* --use 'as' for create name
select count(*) AS 'Number of Record'
from Flights;
*/
--it also can use many instructions by use ','
/* --examples
select count(*) AS 'Number of Record',
	avg(Price) AS 'Average Price',
	min(Price) AS 'Minimum Price',
	max(Price) AS 'Maximum Price',
	sum(Price) AS 'Summary Price'
From Flights;
*/
/*-- find amount of flight, average dista.,shortest dist.,longest dist.,sum dist of flight go to Bangkok.
select count(*) AS 'Amount of flight',
	avg(Distance) AS 'Average Distance',
	min(Distance) AS 'The Shortest Distance', --should be minimum
	max(Distance) AS 'The Longest Distance', -- should be maximum
	sum(Distance) AS 'Summary Distance'
from Flights 
where FlgTo = 'Bangkok';
*/

--'GROUP BY Columm' use for divided types
/*example be like
select Type,sum(Distance) AS 'Total Distance'
from Flights
group by Type;
*/
/*--find the shortest dist.,longest dist.,avg of all flight out
select FlgFrom,
	min(Distance) AS 'Minimum Distance',
	max(Distance) AS 'Maximum Distance',
	avg(Distance) AS 'Average Distance'
from Flights
group by FlgFrom
*/
-- *****in where must not have all aggregate functions  and also all functions ******
/* --'Having condition' is use for group by
group by column
 having condition 
*/
/* example be like
select FlgFrom AS 'Flight From',
	min(Distance) AS 'min',
	max(Distance) AS 'max',
	avg(Distance) AS 'avg'
from Flights
group by FlgFrom
having avg(Distance)>2000;
*/