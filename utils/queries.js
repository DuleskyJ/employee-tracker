const db = require('../db/connection');
const inquirer = require('inquirer');
const consoleTable = require('console.table');

const viewAllDepartments = () => {
  db.query('SELECT * FROM department', (err, results) => {
    if (err) throw err;
    console.table(results);
    mainMenu();
  });
};

const viewAllRoles = () => {
  db.query('SELECT * FROM role', (err, results) => {
    if (err) throw err;
    console.table(results);
    mainMenu();
  });
};

const viewAllEmployees = () => {
  db.query('SELECT * FROM employee', (err, results) => {
    if (err) throw err;
    console.table(results);
    mainMenu();
  });
};

const addDepartment = () => {
  inquirer.prompt({
    name: 'name',
    type: 'input',
    message: 'What is the name of the new department?',
  }).then((answer) => {
    db.query('INSERT INTO department SET ?', { name: answer.name }, (err) => {
      if (err) throw err;
      console.log('Department added successfully!');
      mainMenu();
    });
  });
};

const addRole = () => {
  inquirer.prompt([
    {
      name: 'title',
      type: 'input',
      message: 'What is the title of the new role?',
    },
    {
      name: 'salary',
      type: 'input',
      message: 'What is the salary of the new role?',
    },
    {
      name: 'department_id',
      type: 'input',
      message: 'What is the department ID for the new role?',
    }
  ]).then((answers) => {
    db.query('INSERT INTO role SET ?', {
      title: answers.title,
      salary: answers.salary,
      department_id: answers.department_id
    }, (err) => {
      if (err) throw err;
      console.log('Role added successfully!');
      mainMenu();
    });
  });
};

const addEmployee = () => {
  inquirer.prompt([
    {
      name: 'first_name',
      type: 'input',
      message: 'What is the first name of the new employee?',
    },
    {
      name: 'last_name',
      type: 'input',
      message: 'What is the last name of the new employee?',
    },
    {
      name: 'role_id',
      type: 'input',
      message: 'What is the role ID of the new employee?',
    },
    {
      name: 'manager_id',
      type: 'input',
      message: 'What is the manager ID of the new employee?',
    }
  ]).then((answers) => {
    db.query('INSERT INTO employee SET ?', {
      first_name: answers.first_name,
      last_name: answers.last_name,
      role_id: answers.role_id,
      manager_id: answers.manager_id
    }, (err) => {
      if (err) throw err;
      console.log('Employee added successfully!');
      mainMenu();
    });
  });
};

const updateEmployeeRole = () => {
  inquirer.prompt([
    {
      name: 'employee_id',
      type: 'input',
      message: 'What is the ID of the employee you want to update?',
    },
    {
      name: 'role_id',
      type: 'input',
      message: 'What is the new role ID for the employee?',
    }
  ]).then((answers) => {
    db.query('UPDATE employee SET role_id = ? WHERE id = ?', [answers.role_id, answers.employee_id], (err) => {
      if (err) throw err;
      console.log('Employee role updated successfully!');
      mainMenu();
    });
  });
};

module.exports = {
  viewAllDepartments,
  viewAllRoles,
  viewAllEmployees,
  addDepartment,
  addRole,
  addEmployee,
  updateEmployeeRole,
};