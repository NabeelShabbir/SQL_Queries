![Q3](Images/Q3.png)
-- Q3
-- Used inner join first on airplane and plane service to get the records of all planes that have gone in maintenance. Then used not to get records of airplane id to not have gone in maintenance, and their data was shown.
![Q4](Images/Q4.png)
-- Q4
-- First got records of plane type with more than 200 capacity -> used them to get plane id with those types -> search for owners who own those planes -> show their data
![Q5](Images/Q5.png)
-- Q5
-- used avg function to get salary of employees with shift as 'Night'
![Q6](Images/Q6.png)
Q6: Sum function is used and group by each employee and order by to order
![Q7](Images/Q7.png)
-- Q7
-- Used dateadd function to get recods of id of services which were perform in last week -> Service id used to get plane id from plane_Service tavle -> Plane id used to display information.
![Q8](Images/Q8.png)
-- Q8
-- Used dateadd function to get ownerid of data where pdate is of last month -> used owner id to get records of person owners and corporation owners invidually -> Union to show both their data
![Q9](Images/Q9.png)
-- Q9
-- Used flies table to get pilot id and plane type. Used ilot id and plane type to get reg# of planes and then used group by ssn to get each of their planes count.
![Q10](Images/Q10.png)
-- Q10
-- First got hanger id and number of planes stored in it. Then got records of each hangars and capacity-plane stored as available space. Used max to get hangar with the most available space. Then used the duplicate of the table to get the data of the hangar.
![Q11](Images/Q11.png)
-- Q11
-- Used owner id from owns to get corporation id. Then used group by corporation name to get the number of planes owned by them.
![Q12](Images/Q12.png)
Q12: Avg function used to calculate avg service hours and it is grouped by Plane type
![Q13](Images/Q13.png)
![Q14](Images/Q14.png)
-- Q14
-- First made three tables, one of 2 entries with same plane id. Another with most recent purchases grouped by plane id, and the other of the oldest purchase on the basis of plane id. Used the owner id to filter out records where the seller was corporation. Then used buyer owner id to get the data of the 
![Q15](Images/Q15.png)
Q15: inner joins all necessary tables, where condition used for for all reg# where Service start date is 20 days behind, we assumed that maintanence takes 20 days
![Q16](Images/Q16.png)
Q16: Sum function used for total number of hours worked and grouped by Corporation and person
![Q17](Images/Q17.png)
Q17: The last line not IN query gives us planes whose owners have been corporation so they get excluded
![Q18](Images/Q18.png)
Q18: To find previous owner as corporate, ordered OwNS table by purchase date and checked the 2nd row number which shows previous owner
![Q19](Images/Q19.png)
-- Q19
-- Used group by stored in in airplane table to get number of planes stored in each hangar.
![Q20](Images/Q20.png)
-- Q20
-- Inner joined type of and airplane table on the basis of model number to get the count of each airplane reg#.
![Q21](Images/Q21.png)
-- Q21
-- Inner joined PLANE SERVICE and airplane table on the basis of model number to get the count of each airplane reg#.
![Q22](Images/Q22.png)
-- Q22
-- Used group by shift and average to get avg salary on the basis of shift
![Q23](Images/Q23.png)
-- Q23
-- First got names and owner ids ofall the owners in person and corporation using union. Inner joined with owns to get the number of planes each owner owns on the basis of owner id.
![Q24](Images/Q24.png)
-- Q24
-- Used flies table to get pilot id and plane type. Used ilot id and plane type to get reg# of planes and then used group by ssn to get each of their planes count.
![Q25](Images/Q25.png)
a) Find pilots who can fly with no restriction because definitely they would be preffered
b) All planes currently stored in Islamabad
c) Find total employees and total salary to know how much money needs to be allocated
d) buying and selling of airplanes between owners in data base
