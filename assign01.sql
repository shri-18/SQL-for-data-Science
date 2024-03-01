--1
select * from cd.facilities;

--2
select facilities.name, membercost from cd.facilities;

--4
select * from cd.facilities
where facilities.membercost > 0;

--4
select facilities.facid, name, membercost, monthlymaintenance from cd.facilities
where membercost > 0 and
membercost < (monthlymaintenance/50.0);

--5
select * from cd.facilities
where name like '%Tennis%';

--6
select * from cd.facilities 
where facid in (1,5);

--7
select memid, surname, firstname, joindate from cd.members
where joindate >= '2012-09-01';

--8
select surname from cd.members limit 10;

--9
select joindate from cd.members
order by memid desc limit 1;

--10
select count(*) from cd.facilities
where guestcost >= 10;

--11
select facid, sum(slots) as Total_Slots from cd.bookings
where starttime >= '2012-09-01'
group by facid
order by sum(slots);
 
--12
select facid, sum(slots) as Total_Slots from cd.bookings 
group by facid
having sum(slots)>1000
order by facid;

--13
select cd.bookings.starttime as start ,cd.facilities.name from cd.facilities
inner join cd.bookings  on
cd.bookings.facid = cd.facilities.facid
where cd.facilities.name in ('Tennis Court 1', 'Tennis Court 2')
and cd.bookings.starttime >= '2012-09-21' 
and cd.bookings.starttime < '2012-09-22';

--14
select cd.bookings.starttime from cd.bookings
inner join cd.members
on cd.members.memid = cd.bookings.memid
where cd.members.firstname = 'David' and cd.members.surname = 'Farrell';






