--Q10

select number as Hanger_Number,H_LOCATION
from
(select number,H_LOCATION,capacity-pstored1 as available_space2
from hangar
inner join
(select stored_in, count(distinct(airplane.reg#)) as pstored1
from airplane
group by stored_in) as temp3
on hangar.number = STORED_IN) as temp3
where available_space2 = (
select max(available_Space) as max_available_space
from
(select number,H_LOCATION,capacity-pstored as available_space
from hangar
inner join
(select stored_in, count(distinct(airplane.reg#)) as pstored
from airplane
group by stored_in) as temp
on hangar.number = STORED_IN) as temp2)