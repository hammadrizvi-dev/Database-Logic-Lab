-- Conditional statements in SQL

-- IF statement
SELECT 
    CASE 
        WHEN age < 18 THEN 'Minor'
        WHEN age >= 18 AND age < 65 THEN 'Adult'
        ELSE 'Senior'
    END AS age_group
FROM users;

-- IFNULL function
SELECT name, IFNULL(phone_number, 'No phone number') AS contact_info
FROM users;

-- COALESCE function
SELECT name, COALESCE(phone_number, email, 'No contact info') AS contact_info
FROM users;

-- NULLIF function
SELECT name, NULLIF(phone_number, '') AS phone_number
FROM users;
-- CASE statement with multiple conditions
SELECT name,
    CASE 
        WHEN salary < 30000 THEN 'Low'
        WHEN salary >= 30000 AND salary < 70000 THEN 'Medium'
        ELSE 'High'
    END AS salary_range
FROM users;

-- CASE statement with ELSE
SELECT name,
    CASE 
        WHEN department = 'HR' THEN 'Human Resources'
        WHEN department = 'IT' THEN 'Information Technology'
        ELSE 'Other'
    END AS department_name
FROM users;

-- CASE statement without ELSE
SELECT name,
    CASE 
        WHEN department = 'HR' THEN 'Human Resources'
        WHEN department = 'IT' THEN 'Information Technology'
    END AS department_name
FROM users;

-- Using CASE in ORDER BY
SELECT name, department
FROM users  
ORDER BY 
    CASE department
        WHEN 'HR' THEN 1
        WHEN 'IT' THEN 2
        ELSE 3
    END;

-- Using CASE in WHERE clause
SELECT name, salary
FROM users
WHERE 
    CASE 
        WHEN department = 'HR' THEN salary > 50000
        WHEN department = 'IT' THEN salary > 70000
        ELSE salary > 30000
    END;

    
