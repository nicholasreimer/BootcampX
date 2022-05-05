//-------------------------------------------------
//Connect to the bootcampx database

const { Pool } = require("pg");

//using Pool allows to manage multiple client connections
const pool = new Pool({
  user: "vagrant",
  password: "123",
  host: "localhost",
  database: "bootcampx",
});

//-------------------------------------------------

pool
  .query(
    `
SELECT DISTINCT teachers.name as teacher, cohorts.name as cohort
FROM teachers
JOIN assistance_requests ON teacher_id = teachers.id
JOIN students ON student_id = students.id
JOIN cohorts ON cohort_id = cohorts.id
WHERE cohorts.name = '${process.argv[2] || "JUL02"}'
ORDER BY teacher;
`
  )
  .then((res) => {
    res.rows.forEach((row) => {
      console.log(`${row.cohort}: ${row.teacher}`);
    });
  });

/*
-select and count up all of the assistance requests via the primary id 
-and giv that value an alias of total_assitances
-also select teachers names via the name column withing the teachers table

-since you made selections from two different places u need to join them

-JOIN the teachers table to the assistance-request table at teacher_id (foreign key)

-sort the results WHERE name of teacher = Waylon

-group the results by teacher name in default ascednding order

*/
