/* Get the total number of assignments for each day of bootcamp.  */

SELECT day, count(*) as total_assignments 
FROM assignments
GROUP BY day
HAVING count(*) >= 10;
ORDER BY day;


/* STEPS:
-select day and in addtion sum up all of the total_asignments from the assignments table

-group the results by individual day (this applies the count func to each days collection of assignments)
-this is instead of the regular count function which would add them all up as one group

-only show results having more then 10 per day in total

-order these newly grouped results by day in the resulting table
*/