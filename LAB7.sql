--use NANTIPAT
--Modifying data Lab7
--Delete data,Update data
--not standart but have in many DBMS = TRUNCATE TABLE 
--can use supqries as condition for delete records on only one table but not for join
/*
delete
from Aircraft
where Aname ='Max'

delete
from Flights
where aid in(
	select aid 
	from aircraft
	where model in ('B-747','A-320')
	and Cruising_range >=8000)
	)
	*/
-- delete data of company that produce aircraft flight from Phuket to Singapore
/*
DELETE 
FROM Supplier
where supid in (
	select supid
	from aircraft
	where aid in (
		select aid 
		from flights
		where flgFrom='Phuket'
		and FlgTo='Singapore'
		)	
	)
	*/
--TRUNCATE TABLE supplier --delete all records for one table
--updating data use for change data in record.
/*
UPDATE TABLE 
SET attribute = new value 
WHERE conditions
	*/
	/*
update aircraft
set Aname ='Bluebell'
where aid = 'BO1287'
*/
/*
update Flights
set Price = (price*1.1)
*/
--change of aicraft that flight Bangkok-Egypt to "Maya" , distance to 12000 ,type to Airbus and change price to 40000 THB
/*
update Flights
set distance=12000,
	type = 'AIRBUS',
	AID=(
	select aid
	from Aircraft
	where Aname='maya'
	),
	price = 40000
where flgfrom ='Bangkok'and
	flgto ='Egypt'
	*/

--Write down to SQL command for updating the supplier information of the aircraft that used on the flight from London.
--The new information is giving as follows:address = 'Ashton Street,Liverpool L69 3BX,United Kingdom'and telephone number = '+44(0)151 795 4275'.
/*
insert into supplier
values('S1001','American Rockwell','3236 M St NW, Washington, DC 20007, United States','001-140-7717177')

insert into supplier
values('S1002','ATR Bombardier Embraer','1550 Wilson Blvd, Arlington, VA 22209, United States','001-159-23923969')

insert into supplier
values('S1003','Areospatiale','35 Rue Chevalier de La Barre,75018 Paris, France','36-01-53418900')

insert into supplier
values('S1004','Boeing Commercial Airplanes ','Echterdinger Strass 30, 70599 Stuttgart, Germany','49-0711167650')*/

/*
update supplier
set SupAddress='Ashton Street, Liverpool L69 3BX, United Kingdom',
	Telephone='+44(0)1517954275'
where SupID in (
	select supid
	from aircraft
	where aid in (
		select aid
		from flights
		where FlgFrom='London'
		)
	)
*/	



--select*from Supplier
--select*from Aircraft
--select*from Flights
