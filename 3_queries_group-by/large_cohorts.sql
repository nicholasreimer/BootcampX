/* Get all cohorts with 18 or more students.  */

SELECT cohorts.name as cohort_name, count(students.*) AS student_count 
FROM cohorts

JOIN students ON cohorts.id = cohort_id

GROUP BY cohort_name 

HAVING count(students.*) >= 18

ORDER BY student_count;

/* STEPS
-select the value in name from the cohorts table and give it an alias of cohort_name
-count up the value of all student ids and giv it an alias of student_count
-both of the above are pulled from cohorts

-join both the cohorts table and the students table via the cohorts table id which 
 is equal to the value laid out in the ERD

-group this info u have summed, pulled and joined by cohort_name

-only show the results having a cohort sum of 18 or more total students

-for the results that meet the having conditional order them by student count (ascending is default)
*/