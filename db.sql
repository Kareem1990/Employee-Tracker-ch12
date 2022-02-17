DROP DATABASE IF EXISTS employeedb;
CREATE database employeedb;

USE employeedb; 

CREATE TABLE department (
  id INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
  name VARCHAR(30) NOT NULL
);

CREATE TABLE role (
  id INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
  title VARCHAR(30) NOT NULL,
  salary DECIMAL(10,2) NOT NULL,
  department_id INT NOT NULL
);

CREATE TABLE employee (
  id INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
  first_name VARCHAR(30) NOT NULL,
  last_name VARCHAR(30) NOT NULL,
  role_id INT,
  manager_id INT NULL
);

INSERT INTO department (id, name)
VALUES ("Finance");

INSERT INTO department (name)
VALUES ("IT");

INSERT INTO department (name)
VALUES ("HR");

INSERT INTO department (name)
VALUES ("sales");

INSERT INTO role (id, title, salary, department_id)
VALUES (1,"IT senior",100000,1);

INSERT INTO role (id, title, salary, department_id)
VALUES (2,"Junior sales",60000,1);

INSERT INTO role (id, title, salary, department_id)
VALUES (3,"FInance lead",100000,2);

INSERT INTO role (id, title, salary, department_id)
VALUES (4,"Software Engineer",80000,2);

INSERT INTO role (id, title, salary, department_id)
VALUES (5,"Tech lead",100000,3);

INSERT INTO role (id, title, salary, department_id)
VALUES (6,"Sales lead",80000,3);

INSERT INTO role (id, title, salary, department_id)
VALUES (7,"Engineering lead",100000,4);

INSERT INTO role (id, title, salary, department_id)
VALUES (8,"General Manager",80000,4);

-- EMPLOYEES
INSERT INTO employee (id, first_name, last_name, role_id)
VALUES (1,"Chris","Evan",1);

INSERT INTO employee (id, first_name, last_name, role_id, manager_id)
VALUES (2,"Riener","John",2,1);

INSERT INTO employee (id, first_name, last_name, role_id, manager_id)
VALUES (3,"Leonardo","Dicaprio",2,1);

INSERT INTO employee (id, first_name, last_name, role_id)
VALUES (4,"leon","Bouchard",3);

INSERT INTO employee (id, first_name, last_name, role_id, manager_id)
VALUES (5,"William","Darnell",4,4);

INSERT INTO employee (id, first_name, last_name, role_id)
VALUES (6,"Joseph","Bingham",5);

INSERT INTO employee (id, first_name, last_name, role_id, manager_id)
VALUES (7,"Courtney","Davis",6,6);

INSERT INTO employee (id, first_name, last_name, role_id, manager_id)
VALUES (8,"Michael","Casey",6,6);

INSERT INTO employee (id, first_name, last_name, role_id)
VALUES (9,"Liza","Solis",7);

INSERT INTO employee (id, first_name, last_name, role_id, manager_id)
VALUES (10,"Travis","Johnson",8,9);


