CREATE TABLE student (
  student_id SERIAL PRIMARY KEY,
  first_name VARCHAR(20),
  last_name VARCHAR(20),
);

SELECT * FROM student;


-- START --


-- ## INSERT DATA TYPE 1
INSERT INTO student (first_name, last_name)
VALUES('sifat', 'ullah');

-- ## INSERT DATA TYPE 2
INSERT INTO student 
VALUES (2, 'sifat', 'ullah');

-- ## INSERT DATA TYPE 3 - MULTIPLE INSERT
INSERT INTO student (first_name, last_name)
VALUES ('sifat', 'ullah'),
('sifat', 'ullah'),
('sifat', 'ullah'),
('sifat', 'ullah');

-- ## INSERT DATA TYPE 4 - MULTIPLE INSERT
INSERT INTO student 
VALUES (7, 'sifat', 'ullah'),
(8, 'sifat', 'ullah'),
(9, 'sifat', 'ullah'),
(10, 'sifat', 'ullah');