-- ## SELECT, SELECT DISTINCT, WHERE
-- ## =  <  >  <=  >=  <>  !=
-- ## MIN, MAX, COUNT, SUM, AVG
-- ## AND, OR, IN, LIKE, ILIKE, BETWEEN, IS NULL
-- ## NOT IN, NOT LIKE, NOT ILIKE, NOT BETWEEN, IS NOT NULL
-- ## LIMIT, OFFSET, ORDER BY, AS
-- ## JOIN, INNER JOIN, LEFT JOIN, RIGHT JOIN, FULL JOIN, CROSS JOIN
-- ## GROUP BY, HAVING, EXISTS, NOT EXISTS, CASE
-- ## ANY, ALL, UNION, UNION ALL

CREATE TABLE employees (
    employee_id SERIAL PRIMARY KEY,
    first_name VARCHAR(20),
    last_name VARCHAR(20),
    department VARCHAR(20),
    salary NUMERIC(10, 2),
    hire_date DATE
);
CREATE TABLE salaries (
    salary_id SERIAL PRIMARY KEY,
    employees_id INT REFERENCES employees (employee_id) NOT NULL,
    amount NUMERIC(10, 2) NOT NULL,
    status VARCHAR(20) DEFAULT 'approved',
    remark VARCHAR(256)
);

SELECT * FROM employees;
SELECT * FROM salaries;


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

-- ## MAX
SELECT MAX(salary) FROM employees;

-- ## COUNT
SELECT COUNT(employee_id) FROM employees;

-- ## SUM
SELECT SUM(salary) FROM employees;

-- ## AVG
SELECT AVG(salary) FROM employees;


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


-- ## JOIN, INNER JOIN
-- ## LEFT JOIN
-- ## RIGHT JOIN
-- ## FULL JOIN
-- ## CROSS JOIN


-- × --


-- ## GROUP BY
SELECT department, AVG(salary) FROM employees
GROUP BY department;

-- ## HAVING
SELECT department, COUNT(*) FROM employees
GROUP BY department
HAVING COUNT(*) > 2
ORDER BY COUNT(*) DESC;

-- ## EXISTS
SELECT * FROM employees
WHERE EXISTS (
    SELECT employee_id FROM salaries 
    WHERE salaries.employee_id = employees.employee_id
);

-- ## NOT EXISTS
SELECT * FROM employees
WHERE NOT EXISTS (
    SELECT employee_id FROM salaries
    WHERE salaries.employee_id = employees.employee_id
);

-- ## CASE
SELECT first_name, salary, 
CASE 
    WHEN salary >= 60000 THEN 'Above 60k' 
    WHEN salary >= 50000 THEN 'Above 50k' 
    ELSE  'Low salary'
END AS salary_title
FROM employees; 


-- × --


-- ## ANY
SELECT * FROM employees
WHERE employee_id = ANY (
    SELECT employee_id FROM salaries
    WHERE amount > 5000
);

-- ## ALL
SELECT * FROM employees
WHERE employee_id != ALL (
    SELECT employee_id FROM salaries
    WHERE amount > 5000
);

-- ## UNION
SELECT employee_id, first_name FROM employees
UNION
SELECT  customer_id, first_name FROM customers
ORDER BY employee_id ASC
LIMIT 10;

-- ## UNION ALL
SELECT employee_id, first_name FROM employees
UNION ALL
SELECT  customer_id, first_name FROM customers
ORDER BY employee_id ASC
LIMIT 10;


-- × --