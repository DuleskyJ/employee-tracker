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
(https://www.loom.com/share/b9c9e21f7a464d9ab376519b3f87b1d8?sid=be9311a5-ccf3-426f-ae1a-80b7103fa6b8)

## License
This project is licensed under the MIT License.
