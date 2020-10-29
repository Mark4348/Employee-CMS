

INSERT INTO departments(department_name)
VALUES("Human Resources"),("IT"),("Developers");

INSERT INTO employees(first_name,last_name,employee_role)
VALUES("Jennifer", "Smith", 1),("Hughie", "Johnson", 3),
("Steve", "Madura", 3), ("Eric", "Douglas", 3),
("Drew", "McSally", 3), ("Stewart", "Swanson", 3);

INSERT INTO roles(title, salary, department_id)
VALUES("Developer", 40000, 3), ("Lead Developer", 50000, 3),
("System Administrator", 60000, 2), ("Junior Developer", 37000, 3);