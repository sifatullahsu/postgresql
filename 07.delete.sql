CREATE TABLE student (
  student_id SERIAL PRIMARY KEY,
  first_name VARCHAR(20),
  last_name VARCHAR(20),
);

SELECT * FROM student;


-- START --


-- ## DELETE RECORDS
DELETE FROM student
WHERE student_id = 10;



SELECT * FROM courses c
WHERE course_id NOT IN (
  SELECT course_id FROM enrollment GROUP BY course_id
);