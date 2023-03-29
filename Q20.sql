--Q20
select MODEL_NUMBER, count(distinct(airplane.reg#)) AS Number_of_Planes
from PLANE_TYPE
INNER JOIN AIRPLANE
ON Model_Number = OF_TYPE
GROUP BY Model_Number