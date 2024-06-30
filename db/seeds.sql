USE employee_tracker;

INSERT INTO department (id, name)
VALUES
('DEPT_SALES', 'Sales'),
('DEPT_ENG', 'Engineering'),
('DEPT_FIN', 'Finance'),
('DEPT_LEG', 'Legal');

INSERT INTO role (id, title, salary, department_id) 
VALUES
('ROLE_SALES_LEAD', 'Sales Lead', 100000, 'DEPT_SALES'),
('ROLE_SALESPERSON', 'Salesperson', 80000, 'DEPT_SALES'),
('ROLE_SOFTWARE_ENGINEER', 'Software Engineer', 120000, 'DEPT_ENG'),
('ROLE_ACCOUNTANT', 'Accountant', 90000, 'DEPT_FIN');

INSERT INTO employee (id, first_name, last_name, role_id, manager_id) 
VALUES
('EMP_JD01', 'John', 'Doe', 'ROLE_SALES_LEAD', NULL),
('EMP_WW02', 'Willy', 'Wonka', 'ROLE_SALESPERSON', 'EMP_JD01'),
('EMP_JD03', 'Jaden', 'Dulesky', 'ROLE_SOFTWARE_ENGINEER', NULL),
('EMP_JM04', 'Joe', 'Mama', 'ROLE_ACCOUNTANT', NULL),
('EMP_TB05', 'Tom', 'Brady', 'ROLE_SALES_LEAD', 'EMP_JD01'),
('EMP_EJ06', 'Terry', 'Crews', 'ROLE_SALESPERSON', 'EMP_WW02'),
('EMP_CD07', 'Chris', 'Brown', 'ROLE_SOFTWARE_ENGINEER', 'EMP_JD03'),
('EMP_AM08', 'Donald', 'Trump', 'ROLE_ACCOUNTANT', 'EMP_JM04');