-- Drops the employee_db if it exists currently --
DROP DATABASE IF EXISTS employee_db;
-- Creates the "employee_db" database --
CREATE DATABASE employee_db;

-- Makes it so all of the following code will affect employee_db --
USE employee_db;

CREATE TABLE department (
  -- Creates a numeric column called "id" which will automatically increment its default value as we create new rows --
  id INTEGER PRIMARY KEY,
   -- Makes a string column called "name" which cannot contain null --
  name VARCHAR(30) NULL
);

CREATE TABLE role (
  -- Creates a numeric column called "id" which will automatically increment its default value as we create new rows --
  id INTEGER NOT NULL AUTO_INCREMENT,
   -- Makes a string column called "name" which cannot contain null --
  title VARCHAR(30) NULL,
  salary DECIMAL(10,2) NULL,
  deptartment_id INTEGER NULL,
   -- Sets id as this table's primary key which means all data contained within it will be unique --
  PRIMARY KEY (id),
  FOREIGN KEY (department_id) REFERENCES department(id)
);


CREATE TABLE employee (
  -- Creates a numeric column called "id" which will automatically increment its default value as we create new rows --
  id INTEGER NOT NULL AUTO_INCREMENT,
   -- Makes a string column called "name" which cannot contain null --
  first_name VARCHAR(30) NULL,
  last_name VARCHAR(30) NULL,
  -- INT to hold reference to role/position employee has
  role_id INTEGER NULL,
  -- INT to hold reference to another employee that manages the employee being Created. This field may be null if the employee has no manager
  manager_id INTEGER NULL,
   -- Sets id as this table's primary key which means all data contained within it will be unique --
  PRIMARY KEY (id),
  FOREIGN KEY (role_id) REFERENCES role(id),
  FOREIGN KEY (manager_id) REFERENCES employee(id)
);

SELECT * FROM department;
SELECT * FROM role;
SELECT * FROM employee;
