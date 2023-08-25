CREATE TABLE salaries (
    salary_id SERIAL PRIMARY KEY,
    employees_id INT REFERENCES employees (employee_id) NOT NULL,
    amount NUMERIC(10, 2) NOT NULL,
    status VARCHAR(20) DEFAULT 'approved',
    remark VARCHAR(256)
);

INSERT INTO salaries (employees_id, amount) 
VALUES (1, 50000),
(1, 80000),
(2, 50000),
(2, 70000),
(3, 90000),
(4, 30000),
(4, 40000);

SELECT * FROM salaries;