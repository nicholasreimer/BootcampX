/* Get the total number of assistance_requests for a teacher.  */

SELECT 
count(assistance_requests.*) as total_assistances, 
teachers.name
FROM assistance_requests

JOIN teachers ON teachers.id = teacher_id

WHERE name = 'Waylon Boehm'

GROUP BY teachers.name;

/*
-select and count up all of the assistance requests via the primary id 
-and giv that value an alias of total_assitances
-also select teachers names via the name column withing the teachers table

-since you made selections from two different places u need to join them

-JOIN the teachers table to the assistance-request table at teacher_id (foreign key)

-sort the results WHERE name of teacher = Waylon

-group the results by teacher name in default ascednding order

*/