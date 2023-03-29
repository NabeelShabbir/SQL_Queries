--Q9
select ssn, count(distinct(airplane.Reg#)) as No_of_planes_authorized_to_fly
from airplane
inner join 
(SELECT p.Ssn,  f.Model AS ptype
FROM PILOT p
LEFT JOIN FLIES f ON p.Ssn = f.Ssn
GROUP BY p.Ssn,f.model) as temp
on airplane.OF_TYPE = ptype
GROUP BY SSN;