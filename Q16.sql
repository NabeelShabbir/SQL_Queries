	--Q16
	select PERSON.E_Name, CORPORATION.C_Name, CORPORATION.Owner_ID, sum(S_SERVICE.S_Hours) as totalhours  from PERSON inner join EMPLOYEE on PERSON.SSN = EMPLOYEE.Ssn inner join MAINTAINS
	on MAINTAINS.Ssn = EMPLOYEE.Ssn inner join S_SERVICE on S_SERVICE.ID = MAINTAINS.seviceID inner join PLANE_SERVICE
	on  PLANE_SERVICE.Service_ID = S_SERVICE.ID inner join AIRPLANE on AIRPLANE.Reg# = PLANE_SERVICE.Reg#
	inner join OWNS on OWNS.Reg# = AIRPLANE.Reg# inner join O_OWNER on OWNS.Owner_ID = O_OWNER.ID inner join CORPORATION 
	on CORPORATION.Owner_ID = O_OWNER.ID group by CORPORATION.Owner_ID, CORPORATION.C_Name, PErson.E_Name
	--having CORPORATION.C_Name = 'B Corporation'
	order by Corporation.C_Name;