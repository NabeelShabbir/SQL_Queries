

		--Q6
	select top 5 Sum(S_SERVICE.S_Hours) as summ, MAINTAINS.Ssn, EMPLOYEE.Salary from S_SERVICE inner join MAINTAINS
	on S_SERVICE.ID = MAINTAINS.seviceID inner join EMPLOYEE on MAINTAINS.Ssn = EMPLOYEE.Ssn
	group by MAINTAINS.Ssn,EMPLOYEE.Salary order by summ desc;
