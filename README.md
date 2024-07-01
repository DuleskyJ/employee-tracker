# Employee Tracker

## Description

The Employee Tracker is a command-line application built using Node.js, Inquirer, and MySQL. It allows users to manage a company's employee database.

## Table of Contents

- [Installation](#installation)
- [Features](#features)
- [Technologies Used](#technologies-used)
- [Screenshots](#screenshots)
- [Walkthrough Video](#walkthrough-video)
- [License](#license)

## Installation

1. Clone the repository:

git clone https://github.com/DuleskyJ/employee-tracker.git
cd employee-tracker

Install dependencies:

npm install

Set up the database:

Start MySQL and log in to the MySQL shell.

Run the schema and seeds files:

mysql -u root -p < db/schema.sql
mysql -u root -p < db/seeds.sql

Start the application:

bash
Copy code
node index.js
Follow the prompts to view and manage departments, roles, and employees.

## Features
View all departments, roles, and employees.
Add departments, roles, and employees.
Update employee roles.

## Technologies Used
Node.js
Inquirer
MySQL
Console Table

## Walkthrough Video
(https://www.loom.com/share/57fc710a5e014616a58ca4ede8d4c676?sid=9289a1eb-f79e-4cb7-a58c-897e2331d28b)

## License
This project is licensed under the MIT License.
