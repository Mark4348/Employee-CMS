DROP DATABASE IF EXISTS employeecms;
CREATE DATABASE employeecms;

USE employeecms;

CREATE TABLE departments(
    id INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
    department_name VARCHAR(30)
);

INSERT INTO departments(department_name)
VALUES("Human Resources"),("IT"),("Developers");


CREATE TABLE employees(
    id INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
    first_name NOT NULL VARCHAR(30),
    last_name NOT NULL VARCHAR(30),
    employee_role INTEGER,
    FOREIGN KEY (roles_id) REFERENCES roles(id)

);

INSERT INTO employees(first_name,last_name,employee_role)
VALUES("Jennifer", "Smith", 1),("Hughie", "Johnson", 3),
("Steve", "Madura", 3), ("Eric", "Douglas", 3),
("Drew", "McSally", 3), ("Stewart", "Swanson", 3)
)

CREATE TABLE roles(
    id INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(30),
    salary DECIMAL(6,2),
    department_id INTEGER,
    FOREIGN KEY (department_id) REFERENCES departments(id)

);

INSERT INTO roles(title, salary, department_id)
VALUES("Developer", 40000, 3), ("Lead Developer", 50000, 3),
("System Administrator", 60000, 2), ("Junior Developer", 37000, 3);