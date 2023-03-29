--Q19
select stored_in, count(distinct(airplane.reg#)) as pstored
from airplane
group by stored_in