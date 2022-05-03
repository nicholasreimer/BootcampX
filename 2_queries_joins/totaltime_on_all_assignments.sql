/* 
Get the total amount of time that a student has spent on all assignments:

-This should work for any student but use 'Ibrahim Schimmel' for now.
-Select only the total amount of time as a single column.

USE: \i 2_queries_joins/totaltime_on_all_assignments.sql
*/

SELECT sum(assignment_submissions.duration) as total_duration

FROM assignment_submissions

JOIN students ON students.id = student_id

WHERE students.name = 'Ibrahim Schimmel';

/* 
-SELECT the sum value of "duration" from the assignment_submissions table
-and give it the alias total_duration

-pull the above FROM the assignment_submissions table

-JOIN the students table ON the following shared values:
1.) within the assignment_submissions ther is a row value for student_id
  --JOIN IT WITH--
2.) the table students at that tables row value of id (student.id)  

-run all of the above when this specific condition is met
*/