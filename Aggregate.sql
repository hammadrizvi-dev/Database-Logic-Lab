-- Aggregate Functions

-- 1. COUNT

-- Counts total number of users
SELECT COUNT(*) FROM users;

-- Count users who are female
SELECT COUNT(*) FROM users
WHERE gender = 'female';

-- 2. MIN() and MAX()

--Get the maximum and minimum salary from the users table
SELECT MAX(salary) AS max_salary, MIN(salary) AS min_salary
FROM users;

--3. Sum()
SELECT SUM(salary)AS total_payroll FROM users;

--4. AVG()
SELECT AVG(salary) AS average_salary FROM users;

--5. GROUP BY
-- Get the average salary for each department
SELECT department, AVG(salary) AS average_salary
FROM users
GROUP BY department;