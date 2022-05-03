/* Get each day with the total number of assignments and the total duration of the assignments. */

SELECT 
day, 
count(*) as number_of_assignments, 
sum(duration) as duration
FROM assignments

GROUP BY day
ORDER BY day;

/*
-select all of the following form the assignments table
-use count to get the total number of assignments
-use sum o duration to get the total duration

-group these results by day
-and order the grouped results by day


*/