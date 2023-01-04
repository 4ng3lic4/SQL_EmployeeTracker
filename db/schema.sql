-- Drops the inventory_db if it exists currently --
DROP DATABASE IF EXISTS employeetracker_db;
-- Creates the employeetracker_db database --
CREATE DATABASE employeetracker_db;

-- use employeetracker_db database --
USE employeetracker_db;

-- Creates the table "table1" within employeetracker_db --
CREATE TABLE department(
  -- Creates a numeric column called "id" --
  id INT PRIMARY KEY AUTO_INCREMENT, 
  -- Makes a string column called "name" which cannot contain null --
  name VARCHAR(30) NOT NULL
);

CREATE TABLE role(
   id INT PRIMARY KEY AUTO_INCREMENT, 
   title VARCHAR(30) NOT NULL,
   salary DECIMAL NOT NULL,
   department_id INT NOT NULL
);

CREATE TABLE employee(
   id INT PRIMARY KEY AUTO_INCREMENT, 
   first_name VARCHAR(30) NOT NULL,
     last_name VARCHAR(30) NOT NULL,
     role_id INT NOT NULL, 
     manager_id INT 
     FOREIGN KEY (manager_id) REFERENCES employee (id)
);

    -- Run in CLI with: source schema.sql --