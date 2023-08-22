CREATE TABLE student (
  student_id SERIAL PRIMARY KEY,
  first_name VARCHAR(20),
  last_name VARCHAR(20),
);

SELECT * FROM student;


-- START --


-- ## UPDATE SPECIFIC RECORD DATA
UPDATE student
SET first_name = 'Rifat'
WHERE student_id = 10;

-- ## UPDATE MULTIPLE RECORD DATA
UPDATE student
SET first_name = 'Khan', last_name = 'Uddin'
WHERE student_id = 10;