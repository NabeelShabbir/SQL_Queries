--Q23
select owner_name,Number_of_Planes_Owned from
(select Owner_ID, count(distinct(owns.Reg#)) AS Number_of_Planes_Owned
from owns
inner join O_OWNER
on OWNS.Owner_ID = O_OWNER.ID
group by Owner_ID) as temp1
inner join
(SELECT E_NAME as owner_name,Owner_ID
FROM PERSON
WHERE Owner_ID IN (
SELECT OWNER_ID
FROM OWNS)
UNION
SELECT C_NAME, Owner_ID
FROM CORPORATION
WHERE Owner_ID IN (
SELECT OWNER_ID
FROM OWNS
)) as temp2
on temp1.Owner_ID = temp2.Owner_ID