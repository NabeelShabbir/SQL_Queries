
	--Q17
	select AIRPLANE.Reg#, AIRPLANE.OF_TYPE from AIRPLANE inner join OWNS on AIRPLANE.Reg# = OWNS.Reg# inner join 
	O_OWNER on O_OWNER.ID = OWNS.Owner_ID inner join PERSON on PERSON.Owner_ID = O_OWNER.ID
	inner join PLANE_SERVICE on PLANE_SERVICE.Reg# = AIRPLANE.Reg#  inner join S_SERVICE on S_SERVICE.ID = PLANE_SERVICE.Service_ID
	inner join MAINTAINS on MAINTAINS.seviceID = S_SERVICE.ID inner join EMPLOYEE on EMPLOYEE.Ssn = MAINTAINS.Ssn 
	where EMPLOYEE.E_Shift = 'Day' and OWNS.Reg# not IN (select OWNS.Reg# from OWNS inner join O_OWNER on OWNS.Owner_ID = O_OWNER.ID where O_OWNER.O_Type = 'Corporation');


	