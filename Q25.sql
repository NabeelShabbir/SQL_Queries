
	--Q25
	--(a)
	select PERSON.E_Name, flies.Model, Airplane.Reg#, PILOT.Restrictions from PERSON inner join PILOT on PERSON.Ssn = PILOT.Ssn inner join Flies on FLIES.Ssn = PILOT.Ssn inner join 
	PLANE_TYPE on FLIES.Model = PLANE_TYPE.Model_Number inner join AIRPLANE on PLANE_TYPE.Model_Number = AIRPLANE.OF_TYPE group by AIRPLANE.Reg#, person.E_Name, flies.Model, PILOT.Restrictions, Airplane.Reg#
	having pilot.Restrictions = 'None';

	--(b)
	select * from AIRPLANE inner join HANGAR on AIRPLANE.STORED_IN = HANGAR.Number where HANGAR.H_Location = 'Islamabad';

	--(c)
	select count(distinct(Employee.ssn)) as TotalEmployee, SUM(Employee.Salary) as TotalSalary 
	from EMPLOYEE;

	--(d)
	select seller_id,temp6.Reg#,Owner_ID as buyer_id from
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
on temp6.Reg# = temp5.Reg#;
