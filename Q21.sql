--Q21
select airplane.Reg#, count(distinct(Service_ID)) AS Number_of_Services
from PLANE_SERVICE
inner join AIRPLANE
on PLANE_SERVICE.Reg# = AIRPLANE.Reg#
group by airplane.Reg#