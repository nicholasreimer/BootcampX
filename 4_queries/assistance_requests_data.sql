/*
Each assistance request is related to a bunch of data like a teacher, student, assignment, and more.
 We want to be able to see all important data about an assistance request.
*/

SELECT 
teachers.name as teacher, 
students.name as student, 
assignments.name as assignment, 

(completed_at-started_at) as duration
FROM assistance_requests


JOIN teachers ON teachers.id = teacher_id

JOIN students ON students.id = student_id

JOIN assignments ON assignments.id = assignment_id

ORDER BY duration;

/*
-select teachers.name, students.name and assignments.name and giv all of them corresponding alias's

-minus the two values and set its resulting alias value as duration
NOTE: since the two values are totally unique and not refernce in any other table we dont have to use ., we can
      just call there columns

-join teachers on teacher.id
-same for student
-same assignments
NOTE: we set the FROM at the beginging to assistance_requests becuase it interacts with each and every table we need values from
      when we do the joins wer simply connecting the dots

-order by duration (the value we created at the end of the select statement at the begining)

\i 4_queries/assistance_requests_data.sql

*/
