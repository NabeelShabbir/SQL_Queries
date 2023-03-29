
	--Q15

	select * from PERSON inner join PILOT on PERSON.Ssn = PILOT.Ssn inner join flies on flies.Ssn = PILOT.ssn inner join PLANE_TYPE
	on FLIES.Model = PLANE_TYPE.Model_Number inner join AIRPLANE on AIRPLANE.OF_TYPE = PLANE_TYPE.Model_Number
	where Reg# IN(select PLANE_SERVICE.Reg# from PERSON inner join EMPLOYEE on PERSON.Ssn = EMPLOYEE.Ssn inner join MAINTAINS on MAINTAINS.Ssn = EMPLOYEE.Ssn
	inner join S_SERVICE on S_SERVICE.ID = MAINTAINS.seviceID inner join PLANE_SERVICE on PLANE_SERVICE.Service_ID = S_SERVICE.ID
	where S_SERVICE.S_Date >= DATEADD(day,-20,GETDATE()));-- Maintanence takes 20 days
