--Q4
SELECT C_NAME,C_ADDRESS
FROM CORPORATION
WHERE Owner_ID IN (
SELECT OWNER_ID
FROM OWNS
WHERE OWNS.Reg# IN (
SELECT REG#
FROM AIRPLANE
WHERE OF_TYPE IN (
SELECT Model_Number 
FROM PLANE_TYPE
WHERE CAPACITY > 200)))