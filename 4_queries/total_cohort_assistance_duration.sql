/* Get the total duration of all assistance requests for each cohort. */

SELECT 
cohorts.name as cohort, 
sum(completed_at - started_at) as total_duration
FROM assistance_requests

JOIN students ON students.id = student_id
JOIN cohorts on cohorts.id = cohort_id

GROUP BY cohorts.name
ORDER BY total_duration;

/*
-SELECT cohorts at its name column and make the alias cohort
-sum all the results of completed_at subtracted from started_at and giv it an alias of total_duration
NOTE: we are tring to get the toal duration of all asistance requests
      one assistance request starts at started_at and ends at completed_at

-we join students to assistance requests via student_id
-then we join cohorts to students so it can then join assistance requests

-we group the results by cohorts.name

-then we order those results by the alias total_duration


*/