	--Q18
	select PERSON.E_Name, PERSON.E_Address, CORPORATION.C_Name, CORPORATION.C_Address from O_OWNER left join PERSON on PERSON.Owner_ID = O_OWNER.ID full outer join CORPORATION on CORPORATION.Owner_ID = O_OWNER.ID where O_OWNER.ID IN
	(select OWNS.Owner_ID from ( select ROW_NUMBER() over (PARTITION BY OWNS.Reg# order by OWNS.Pdate desc) as RowNum,
	OWNS.Owner_ID, OWNS.Pdate, O_OWNER.ID, O_OWNER.O_Type, AIRPLANE.Reg#, AIRPLANE.OF_TYPE from OWNS inner join O_OWNER on O_OWNER.ID = OWNS.Owner_ID inner join 
	AIRPLANE on AIRPLANE.Reg# = OWNS.Reg#) as T inner join OWNS on OWNS.Reg# = T.Reg#
	inner join O_OWNER on O_OWNER.ID = OWNS.Owner_ID inner join AIRPLANE on AIRPLANE.Reg# = OWNS.Reg#
	where RowNum in (2) and T.O_Type = 'Corporation' and T.Owner_ID != Owns.Owner_ID and T.OF_TYPE = (select AIRPLANE.OF_TYPE from AIRPLANE inner join OWNS on AIRPLANE.Reg# = OWNS.Reg#
	where OWNS.Owner_ID = T.Owner_ID and OWNS.Pdate >= DATEADD(day,-30,GETDATE()) and T.OF_TYPE = AIRPLANE.OF_TYPE));
