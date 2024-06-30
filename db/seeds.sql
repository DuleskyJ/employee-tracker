USE employee_tracker;

INSERT INTO department (name)
VALUES
('Sales'),
('Engineering'),
('Finance'),
('Legal');

INSERT INTO role (title, salary, department_id) 
VALUES
('Sales Lead', 100000, 1),
('Salesperson', 80000, 1),
('Software Engineer', 120000, 2),
('Accountant', 90000, 3);

INSERT INTO employee (first_name, last_name, role_id, manager_id) 
VALUES
('John', 'Doe', 1, NULL),
('Willy', 'Wonka', 2, 1),
('Jaden', 'Dulesky', 3, NULL),
('Joe', 'Mama', 4, NULL);
('Tom', 'Brown', 1, 1),
('Emma', 'Jones', 2, 2),
('Chris', 'Davis', 3, 3),
('Anna', 'Miller', 4, 4);