--Q5
SELECT avg(SALARY) as AVERAGE_SALARY_OF_NIGHT_SHIFT_EMPLOYEES
FROM EMPLOYEE
WHERE E_Shift = 'NIGHT'