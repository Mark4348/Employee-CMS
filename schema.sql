DROP DATABASE IF EXISTS employeecms;
CREATE DATABASE employeecms;

USE employeecms;

CREATE TABLE departments(
    id INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
    department_name VARCHAR(30)
);

CREATE TABLE employees(
    id INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
    first_name NOT NULL VARCHAR(30),
    last_name NOT NULL VARCHAR(30),
    employee_role INTEGER,
    FOREIGN KEY (roles_id) REFERENCES roles(id)

);

CREATE TABLE roles(
    id INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(30),
    salary DECIMAL(6,2),
    department_id INTEGER,
    FOREIGN KEY (department_id) REFERENCES departments(id)

);
