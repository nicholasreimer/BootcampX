/* List each assignment with the total number of assistance requests with it. */

SELECT 
assignments.id, 
name, 
day, 
chapter, 
count(assistance_requests) as total_requests
FROM assignments

JOIN assistance_requests ON assignments.id = assignment_id

GROUP BY assignments.id
ORDER BY total_requests DESC;

/*
-SELECT a bunch of different shit from the assignments table
-getthe value of assistance_request when counted up and giv it the alias total_requests

-join the assistance request table to the assignments table via assignent_id

-group the results by assignment.id

-order the results by the alias total_reuqests in descending order


*/