-- Drops the inventory_db if it exists currently --
DROP DATABASE IF EXISTS employeetracker_db;
-- Creates the employeetracker_db database --
CREATE DATABASE employeetracker_db;

-- use employeetracker_db database --
USE employeetracker_db;

-- Creates the table "table1" within employeetracker_db --
CREATE TABLE table1(
  -- Creates a numeric column called "id" --
  id INT NOT NULL,
  -- Makes a string column called "name" which cannot contain null --
  name VARCHAR(30) NOT NULL
);


    -- Run in CLI with: source schema.sql --