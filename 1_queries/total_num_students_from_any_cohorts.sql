/* Select the total number of students who were in the first 3 cohorts. */

SELECT count(id) FROM STUDENTS

WHERE cohort_id = 1 OR cohort_id = 2 OR cohort_id = 3;


/* COMPASS ANSWER (same but different)

SELECT count(id)
FROM students 
WHERE cohort_id IN (1,2,3);

*/