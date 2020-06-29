--use Nantipat
--using old table Filghts ,Aircraft ,Supplier

--Assign name temp variable
/*
select Aname, Aircraft.SupID, Supname 
from Aircraft inner join Supplier
ON Aircraft.SupID = Supplier.SubID
*/
/*
select Aname, A.SupID,SupName
from Aircraft AS A INNER JOIN Supplier As S
ON A.SupID= S.SupID
*/

--join 
--connect between Primary key and Forign key
/*
select *
from Aircraft , Flights
where Aircraft.aid = Flights.aid
*/
--shows aircraft name  model  company and address that produce aircraft
--of aircraft  have crusing_range > 5000 mile
/*
select  aname,model,supname,supaddress
from Aircraft,Supplier
where Aircraft.SupID= Supplier.SupID 
and Aircraft.Cruising_Range > 5000
*/
--inner join
-- if join record incomplete not show 
/*
select aname, model,supname,supaddress
from Aircraft inner join Supplier
on Aircraft.SupID = Supplier.supid
where Cruising_Range > 5000
*/
--LEFT OUTER JOIN
--RIGHT OUTER JOIN 
--all recrod in primary rable if join incomplete that must be show
--Full OUTER JOIN
--if join incomplete show all
/*
select aname,model,supname,supaddress
from Aircraft Right outer join Supplier
on Aircraft.SupID = Supplier.supid
where Cruising_Range > 5000
*/
/*
select aname,model,supname,supaddress
from Aircraft left outer join Supplier
on Aircraft.SupID = Supplier.supid
where Cruising_Range > 5000
*/
/*
select aname,model,supname,supaddress
from Aircraft full outer join Supplier
on Aircraft.SupID = Supplier.supid
where Cruising_Range > 5000
*/

--cross join like matrix that multiple all records 
--**that all not in relationship
/*
select aname,supname
from Aircraft cross join Supplier
*/
-- how to connect more than 2 table
--show all the number(id) of flight ,flgfrom ,flgto, aircraft's name, and the company of BOEING
/*
select Flights.AID,flgfrom,flgto,aname,supname
from Flights,Aircraft,Supplier
where Flights.AID = Aircraft.AID
and Aircraft.SupID=Supplier.SupID
and type = 'BOEING'
*/
/*
select Flights.aid, flgfrom,flgto,aname,supname
from Flights inner join Aircraft on Flights.AID=Aircraft.AID
inner join Supplier on Aircraft.SupID = Supplier.SupID
where type= 'BOEING' 
*/

--UNION that sum all records to show output
/*
SELECT  SupName, SupAddress, Telephone
FROM    Supplier, Aircraft
WHERE   Supplier.SupID = Aircraft.SupID
AND     Model = 'B-747'

UNION

SELECT  SupName, SupAddress, Telephone
FROM    Supplier
WHERE   SupAddress LIKE '%Germany%'
*/
