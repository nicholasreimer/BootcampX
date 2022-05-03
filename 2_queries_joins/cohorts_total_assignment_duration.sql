/*
-Get the total amount of time that all students from a specific cohort have spent on all assignments.

-This should work for any cohort but use FEB12 for now.
-Select only the total amount of time as a single column.
-You can write as many JOIN statements as you need in a single query. 
*/

SELECT sum(assignment_submissions.duration) as total_duration
FROM assignment_submissions

JOIN students ON students.id = student_id

JOIN cohorts ON cohorts.id = cohort_id

WHERE cohorts.name = 'FEB12';

/* STEPS:
-SELECT the sum value of "duration" from the assignment_submissions table
-and give it the alias total_duration
-pull the above FROM the assignment_submissions table

-JOIN the students table and the assignments_submissions tables togehter with student_id 
(from the assignment_submissions table)

-JOIN the cohorts table and the students table together with cohort_id (from students table)

-show the result of the above when applied to this specific conditoinal

*/