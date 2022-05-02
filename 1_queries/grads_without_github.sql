/* 
Get all graduates without a linked Github account.
-we know whos a graduate becuase there end date is NOT null
  */

SELECT name, email, phone, end_date FROM students

WHERE end_date IS NOT NULL

AND github IS NULL;

