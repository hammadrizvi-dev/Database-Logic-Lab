-- Unique Constraint
CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    email VARCHAR(255) UNIQUE
);

-- Unique constraint allows only unique values in the email column, preventing duplicate entries.


-- not null constraint
CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(255) NOT NULL
);
-- Not null constraint ensures that the product_name column cannot have null values, enforcing that every product must have a name.


-- Check constraint
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    quantity INT CHECK (quantity > 0)
);
-- Check constraint ensures that the quantity column must have a value greater than 0, preventing invalid order quantities.

--Default constraint
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(255) NOT NULL,
    registration_date DATE DEFAULT CURRENT_DATE
);
-- Default constraint automatically assigns the current date to the registration_date column if no value is provided during insertion.

-- Primary Key constraint
CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(255) NOT NULL
);  
-- Primary key constraint uniquely identifies each record in the departments table, ensuring that department_id is unique and not null.

-- Auto Increment constraint
CREATE TABLE invoices ( 
    invoice_id INT AUTO_INCREMENT PRIMARY KEY,
    amount DECIMAL(10, 2) NOT NULL
);
-- Auto Increment constraint automatically generates a unique value for the invoice_id column for each new record inserted, starting from 1 and incrementing by 1 for each subsequent record.

-- Foreign Key constraint
CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    department_id INT,
    FOREIGN KEY (department_id) REFERENCES departments(department_id)
);
-- Foreign key constraint establishes a relationship between the employees and departments tables, ensuring that the department_id in the employees table must exist in the departments table, maintaining referential integrity.

-- Composite Key constraint
CREATE TABLE project_assignments (
    employee_id INT,
    project_id INT,
    PRIMARY KEY (employee_id, project_id)
);

-- Composite key constraint uses a combination of employee_id and project_id to uniquely identify each record in the project_assignments table, allowing an employee to be assigned to multiple projects while ensuring that each assignment is unique.

-- Unique constraint on multiple columns
CREATE TABLE user_accounts (
    user_id INT PRIMARY KEY,
    username VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    UNIQUE (username, email)
);
-- Unique constraint on multiple columns ensures that the combination of username and email must be unique across the user_accounts table, preventing duplicate entries with the same username and email.

