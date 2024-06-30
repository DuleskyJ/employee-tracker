CREATE DATABASE employee_tracker;

USE employee_tracker;

CREATE TABLE department (
  id VARCHAR(50) PRIMARY KEY,
  name VARCHAR(30) NOT NULL
);

CREATE TABLE role (
  id VARCHAR(50) PRIMARY KEY,
  title VARCHAR(30) NOT NULL,
  salary DECIMAL NOT NULL,
  department_id VARCHAR(50),
  FOREIGN KEY (department_id) REFERENCES department(id)
);

CREATE TABLE employee (
  id VARCHAR(50) PRIMARY KEY,
  first_name VARCHAR(30) NOT NULL,
  last_name VARCHAR(30) NOT NULL,
  role_id VARCHAR(50),
  manager_id VARCHAR(50),
  FOREIGN KEY (role_id) REFERENCES role(id),
  FOREIGN KEY (manager_id) REFERENCES employee(id)
);