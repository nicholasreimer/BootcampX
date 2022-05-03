/* Get the total number of assignment submissions for each cohort.  */

SELECT 
cohorts.name as cohort, 
count(assignment_submissions.*) as total_submissions
FROM assignment_submissions

JOIN students ON students.id = student_id

JOIN cohorts ON cohorts.id = cohort_id

GROUP BY cohorts.name

ORDER BY total_submissions DESC;

/* STEPS
-select the value in name from the cohorts table and give it an alias of cohort
-count up the value of all assignment submissions and giv it an alias of total_submissions
-both of the above are pulled from assignment_submissions.

-neithe rof these join statements make any fucking sense

-group this info by cohorts.name

-order the results by total_submissions in descending order
*/

