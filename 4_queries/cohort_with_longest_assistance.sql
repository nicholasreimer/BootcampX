/* Get the cohort with the longest average duration of assistance requests. */

SELECT 
cohorts.name, 
avg(completed_at - started_at) as average_assistance_time
FROM assistance_requests 

JOIN students ON students.id = assistance_requests.student_id
JOIN cohorts ON cohorts.id = cohort_id

GROUP BY cohorts.name
ORDER BY average_assistance_time DESC

LIMIT 1;

/*
same upper portion as last assignnment (up to end of x2 joins)

-flip the order by to DESC (instead of the deafult asec)

-then add on a limit of 1 (this displays the 1st result which is the biggestsince we flipped the group by)

*/

