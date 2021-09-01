DROP DATABASE IF EXISTS employee_trackerdb;
CREATE database employee_trackerdb;

USE employee_trackerdb;

CREATE TABLE department (
  ID INT NOT NULL AUTO_INCREMENT,
  dept_name VARCHAR(30) NULL,
  PRIMARY KEY (ID)
);
CREATE TABLE emp_role (
  ID INT NOT NULL AUTO_INCREMENT,
  title VARCHAR(30) NULL,
  salary DECIMAL(10,2) NULL,
  dept_id INT NULL REFERENCES department(ID),
  PRIMARY KEY (ID)
);
CREATE TABLE employee (
  ID INT NOT NULL AUTO_INCREMENT,
  first_name VARCHAR(30) NULL,
  last_name VARCHAR(30) NULL,
  role_id INT NULL REFERENCES emp_role(ID),
  manager_id INT NULL REFERENCES employee(ID),
  PRIMARY KEY (ID)
);

SELECT * FROM department;
SELECT * FROM emp_role;
SELECT * FROM employee;

INSERT INTO department (dept_name)
VALUES ("Sales"), ("Marketing"), ("Engineering"), ("Customer Service");
-- Seeding data into tables
INSERT INTO Emp_role (title, salary, dept_id)
VALUES 
("Manager", 105000, 1), 
("Sr. Developer", 100000, 3), 
("Jr Developer", 5000, 3), 
("Advisor", 4750, 4);
INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES 
("Harry", "Potter", 2, 3),
("Hermione", "Granger", 3 , 2),
("Ron", "Weasly", 4 , 1),
("Neville", "Longbottom", 5 , 1);