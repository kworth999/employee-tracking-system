DROP DATABASE IF EXISTS employee_trackingdb;

CREATE DATABASE employee_trackingdb;

USE employee_trackingdb;

CREATE TABLE department (

id INT AUTO_INCREMENT NOT NULL,

department_name VARCHAR(30) NOT NULL,

PRIMARY KEY(id)

);

CREATE TABLE role (

id INT AUTO_INCREMENT NOT NULL,

title VARCHAR(30) NOT NULL,

salary DECIMAL(10,4) NOT NULL,

department_id VARCHAR(30) NOT NULL,

PRIMARY KEY(id)

);


CREATE TABLE employee ( 

id INT AUTO_INCREMENT NOT NULL,

first_name VARCHAR(30) NOT NULL,

last_name VARCHAR(30) NOT NULL,

role_id INT,

manager_id INT NULL,

PRIMARY KEY(id)
);



INSERT INTO department (department_name)
VALUES ("Management");

INSERT INTO department (department_name)
VALUES ("Engineering");

INSERT INTO department (department_name)
VALUES ("Production");

INSERT INTO department (department_name)
VALUES ("Design");





INSERT INTO role (title, salary, department_id)
VALUES ("Album Manager", 250000, 1);

INSERT INTO role (title, salary, department_id)
VALUES ("Recording Manager", 200000, 1);

INSERT INTO role (title, salary, department_id)
VALUES ("Recording Engineer", 150000, 2);

INSERT INTO role (title, salary, department_id)
VALUES ("Production Manager", 200000, 1);

INSERT INTO role (title, salary, department_id)
VALUES ("Production Assistant", 120000, 3);

INSERT INTO role (title, salary, department_id)
VALUES ("Design Manager", 200000, 1);

INSERT INTO role (title, salary, department_id)
VALUES ("Designer", 140000 , 4);



INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Alia", "Wagner", 1, NULL);

INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Rory", "Robbins", 2, NULL);

INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Mariela", "Black", 3, 2);

INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Jaden", "Crane", 4, NULL);

INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Leah", "Hubbard", 5, 4);

INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Leila", "Torres", 6, NULL);

INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Orlando", "Fisher", 7, 6);

INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Michael", "Ortega", 7, 6);