const mysql = require('mysql2');

const connection = mysql.createConnection({
  host: 'localhost',
  user: 'root',
  password: 'Bananas6477!',
  database: 'employee_tracker'
});

connection.connect(err => {
  if (err) throw err;
  console.log('Connected to the employee_tracker database.');
});

module.exports = connection;