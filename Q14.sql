--Q14
select E_Name as Owner_Name,phone as Owner_Phone
from
(select db1.Owner_ID,E_Address as ad, Reg#, db2.E_Name,db2.Phone  from
(select Owner_ID,E_Address,person.E_Name,Phone
from PERSON
inner join O_OWNER
on person.Owner_ID = O_OWNER.ID
union
select Owner_ID, C_Address,C_Name,CPhone
from CORPORATION) as db2
inner join
(select seller_id,temp6.Reg#,Owner_ID from
(select CORPORATION.Owner_ID as seller_id,Reg#
from CORPORATION
inner join
(
select temp3.reg#,Owner_ID,Pdate,number
from
(select owns.reg#,Owner_ID,Pdate,number
from owns
inner join (
select * from
(select reg#, count(Reg#) as number
from owns
group by Reg#) as temp
where number > 1) as temp2
on OWNS.Reg# = temp2.Reg#) as temp3
inner join
(SELECT reg#,min(pdate) as pd
FROM owns
group by reg#) as temp4
on temp3.Pdate = temp4.pd and temp3.Reg#= temp4.Reg#) as temp5
on temp5.Owner_ID = CORPORATION.Owner_ID) as temp6
inner join
(select temp3.reg#, Owner_ID
from
(select owns.reg#,Owner_ID,Pdate,number
from owns
inner join (
select * from
(select reg#, count(Reg#) as number
from owns
group by Reg#) as temp
where number > 1) as temp2
on OWNS.Reg# = temp2.Reg#) as temp3
inner join
(SELECT reg#,max(pdate) as pd
FROM owns
group by reg#) as temp4
on temp3.Pdate = temp4.pd and temp3.Reg#= temp4.Reg#) as temp5
on temp6.Reg# = temp5.Reg#) as db1
on db1.Owner_ID = db2.Owner_ID) as final1



inner join

(select db3.Reg#,temp1.H_Location from
(select reg#,H_Location
from AIRPLANE
inner join
HANGAR
on AIRPLANE.STORED_IN = hangar.Number) as temp1
inner join
(select seller_id,temp6.Reg#,Owner_ID from
(select CORPORATION.Owner_ID as seller_id,Reg#
from CORPORATION
inner join
(
select temp3.reg#,Owner_ID,Pdate,number
from
(select owns.reg#,Owner_ID,Pdate,number
from owns
inner join (
select * from
(select reg#, count(Reg#) as number
from owns
group by Reg#) as temp
where number > 1) as temp2
on OWNS.Reg# = temp2.Reg#) as temp3
inner join
(SELECT reg#,min(pdate) as pd
FROM owns
group by reg#) as temp4
on temp3.Pdate = temp4.pd and temp3.Reg#= temp4.Reg#) as temp5
on temp5.Owner_ID = CORPORATION.Owner_ID) as temp6

inner join
(select temp3.reg#, Owner_ID
from
(select owns.reg#,Owner_ID,Pdate,number
from owns
inner join (
select * from
(select reg#, count(Reg#) as number
from owns
group by Reg#) as temp
where number > 1) as temp2
on OWNS.Reg# = temp2.Reg#) as temp3
inner join
(SELECT reg#,max(pdate) as pd
FROM owns
group by reg#) as temp4
on temp3.Pdate = temp4.pd and temp3.Reg#= temp4.Reg#) as temp5
on temp6.Reg# = temp5.Reg#) as db3
on db3.Reg# = temp1.Reg#) as final2
on final1.Reg# = final2.Reg# and final1.ad = final2.H_Location