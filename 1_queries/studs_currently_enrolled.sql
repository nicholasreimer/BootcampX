/* 
Get all of the students currently enrolled:
-we know a student is currently enrolled because there end date will be null
-
  */

SELECT name, id, cohort_id, end_date FROM students

WHERE end_date IS NULL

ORDER BY cohort_id;