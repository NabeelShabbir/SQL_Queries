
	--Q25
	--(a)
	select PERSON.E_Name, flies.Model, Airplane.Reg#, PILOT.Restrictions from PERSON inner join PILOT on PERSON.Ssn = PILOT.Ssn inner join Flies on FLIES.Ssn = PILOT.Ssn inner join 
	PLANE_TYPE on FLIES.Model = PLANE_TYPE.Model_Number inner join AIRPLANE on PLANE_TYPE.Model_Number = AIRPLANE.OF_TYPE group by AIRPLANE.Reg#, person.E_Name, flies.Model, PILOT.Restrictions, Airplane.Reg#
	having pilot.Restrictions = 'None';

	--(b)
	