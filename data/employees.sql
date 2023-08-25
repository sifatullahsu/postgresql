CREATE TABLE employees (
    employee_id SERIAL PRIMARY KEY,
    first_name VARCHAR(20),
    last_name VARCHAR(20),
    department VARCHAR(20),
    salary NUMERIC(10, 2),
    hire_date DATE
);

INSERT INTO employees (first_name, last_name, department, salary, hire_date) 
VALUES ('John', 'Doe', 'Sales', 50000.00, '2020-01-15'),
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