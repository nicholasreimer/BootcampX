/*  the average of the total_duration column from the previous query. */

SELECT 
avg (total_duration) as average_total_duration

FROM (
  SELECT cohorts.name as cohort, sum(completed_at-started_at) as total_duration
  FROM assistance_requests

  JOIN students ON students.id = student_id
  JOIN cohorts on cohorts.id = cohort_id

  GROUP BY cohorts.name
  ORDER BY total_duration
      ) as total_durations;

/*
-get the average of total_duration and giv it the alias average_total_duration
-within the select statement do a subselect statement where u make the above possible

-join the neccesarry fields together

-group and order accordingly

-call the entire sub select an alias of total_durations
*/