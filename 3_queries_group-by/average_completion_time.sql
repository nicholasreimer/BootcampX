/* Get currently enrolled students' average assignment completion time.  */
 
SELECT 
students.name as student, 
AVG(assignment_submissions.duration) as average_assignment_duration
FROM students

JOIN assignment_submissions ON student_id = students.id

WHERE end_date IS NULL

GROUP BY student

ORDER BY average_assignment_duration DESC;

/* STEPS
-select the value of name from the students table and giv it an alias of student
-get the average value of the duration value from the assignment_submissions table and giv it an
 alias of average_assignment_duration
 -pull both of the above from the student table

 -jpoin the two tables together via the student_id value with the assignment_submissions table 
  and call the joined value students.id

-have the results be based of wether the value of end_date from the students table is NULL 
(if they are currenlty enrolled they will have null since they arent done yet)

-group the resuylts thhat mett the above conditonal by student

-order the results by avg_assignement_duration in descending order
*/


