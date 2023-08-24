-- ## SELECT, SELECT DISTINCT, WHERE
-- ## =  <  >  <=  >=  <>  !=
-- ## MIN, MAX, COUNT, SUM, AVG
-- ## AND, OR, IN, LIKE, ILIKE, BETWEEN, IS NULL
-- ## NOT IN, NOT LIKE, NOT ILIKE, NOT BETWEEN, IS NOT NULL
-- ## LIMIT, OFFSET, ORDER BY, AS
-- ## JOIN, INNER JOIN, LEFT JOIN, RIGHT JOIN, FULL JOIN, CROSS JOIN
-- ## UNION, GROUP BY
-- ## HAVING, EXISTS
-- ## ANY, ALL, CASE

CREATE TABLE employees (
    employee_id SERIAL PRIMARY KEY,
    first_name VARCHAR(20),
    last_name VARCHAR(20),
    department VARCHAR(20),
    salary NUMERIC(10, 2),
    hire_date DATE
);
INSERT INTO employees (first_name, last_name, department, salary, hire_date) VALUES 
('John', 'Doe', 'Sales', 50000.00, '2020-01-15'),
('Jane', 'Smith', 'HR', 60000.00, '2019-05-10'),
('Michael', 'Johnson', 'IT', 75000.00, '2022-03-22'),
('Emily', 'Williams', 'Marketing', 55000.00, '2021-11-07'),
('William', 'Brown', 'IT', 70000.00, '2022-08-18'),
('Olivia', 'Jones', 'Sales', 48000.00, '2020-06-30'),
('James', 'Miller', 'Marketing', 60000.00, '2018-09-12'),
('Sophia', 'Wilson', 'HR', 58000.00, '2023-01-02'),
('Benjamin', 'Davis', 'IT', 72000.00, '2019-02-28'),
('Ava', 'Martinez', 'Sales', 51000.00, '2023-04-17');


SELECT * FROM employees;


-- START --


-- ## = [equeal to]
SELECT * FROM employees WHERE employee_id = 2;

-- ## < [less than]
SELECT * FROM employees WHERE salary < 50000;

-- ## > [greater than]
SELECT * FROM employees WHERE salary > 60000;

-- ## <= [less than equal to]
SELECT * FROM employees WHERE salary <= 50000;

-- ## >= [greater than equal to]
SELECT * FROM employees WHERE salary >= 60000;

-- ## <>, != [not equal]
SELECT * FROM employees WHERE department <> 'HR';

SELECT * FROM employees WHERE department != 'HR';


-- × --


-- ## MIN
SELECT MIN(salary) FROM employees;

SELECT MIN(salary) FROM employees 
WHERE department = 'HR';

-- ## MAX
SELECT MAX(salary) FROM employees;

SELECT MAX(salary) FROM employees 
WHERE department = 'HR';

-- ## COUNT
SELECT COUNT(employee_id) FROM employees;

SELECT COUNT(department) FROM employees 
WHERE department = 'HR';

-- ## SUM
SELECT SUM(salary) FROM employees;

SELECT SUM(salary) FROM employees
WHERE department = 'HR';

-- ## AVG
SELECT AVG(salary) FROM employees;

SELECT AVG(salary) FROM employees
WHERE department = 'HR';


-- × --


-- ## AND
SELECT * FROM employees
WHERE salary > 50000 AND department = 'IT';

-- ## OR
SELECT * FROM employees
WHERE hire_date >= '2022-08-18' OR department = 'IT';

-- ## IN
SELECT * FROM employees
WHERE department IN ('HR', 'IT');

-- ## LIKE -> ('a%', '%a', '%a%')
SELECT * FROM employees
WHERE first_name LIKE 'Jo%';

-- ## ILIKE -> ('a%', '%a', '%a%')
SELECT * FROM employees
WHERE first_name ILIKE 'jo%';

-- ## BETWEEN
SELECT * FROM employees
WHERE employee_id BETWEEN 1 AND 5;

-- ## IS NULL
SELECT * FROM employees
WHERE department IS NULL;


-- × --


-- ## NOT IN
SELECT * FROM employees
WHERE department NOT IN ('HR', 'IT');

-- ## NOT LIKE -> ('a%', '%a', '%a%')
SELECT * FROM employees
WHERE first_name NOT LIKE 'Jo%';

-- ## NOT ILIKE -> ('a%', '%a', '%a%')
SELECT * FROM employees
WHERE first_name NOT ILIKE 'jo%';

-- ## NOT BETWEEN
SELECT * FROM employees
WHERE employee_id NOT BETWEEN 1 AND 5;

-- ## IS NOT NULL
SELECT * FROM employees
WHERE department IS  NULL;


-- × --


-- ## LIMIT
SELECT * FROM employees
LIMIT 5;

-- ## OFFSET
SELECT * FROM employees
LIMIT 5 OFFSET 2;

-- ## ORDER BY -> (ASC, DESC) -> {ASC}
SELECT * FROM employees
ORDER BY salary DESC;

SELECT * FROM employees
ORDER BY salary ASC;

-- ## AS
SELECT MAX(salary) as max_salary FROM employees;

SELECT MAX(salary) max_salary FROM employees;


-- × --