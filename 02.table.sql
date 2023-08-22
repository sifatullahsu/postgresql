-- ## CREATE TABLE
CREATE TABLE student (
  student_id SERIAL PRIMARY KEY,
  first_name VARCHAR(20),
  last_name VARCHAR(20),
  username VARCHAR(20) UNIQUE,
  email VARCHAR(50) UNIQUE,
  password VARCHAR(255),
  cgpa NUMERIC(1,2)
);

-- ## RENAME TABLE
ALTER TABLE student RENAME TO students;

-- ## DROP TABLE
DROP TABLE student;

-- ## EMPTY TABLE
TRUNCATE TABLE student;