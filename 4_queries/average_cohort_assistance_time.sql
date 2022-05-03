/* Get the average duration of assistance requests for each cohort. */

SELECT 
cohorts.name, 
avg(completed_at - started_at) as average_assistance_time
FROM assistance_requests 

JOIN students ON students.id = assistance_requests.student_id
JOIN cohorts ON cohorts.id = cohort_id

GROUP BY cohorts.name
ORDER BY average_assistance_time;

/*
-select cohorts name
-average_assitance_time is an alias representing the value of assitance request duration 
(completed at - started at) wrapped in an avg statement
-we will pull this from the assitance_request table

-we join students table to assistance_requests table via the students_id
-we join cohorts on to students via the cohorts_id in the students table

-group the results by cohort name

-order these grouped results by avg_assitance_time (from the end of the original select statement)

*/