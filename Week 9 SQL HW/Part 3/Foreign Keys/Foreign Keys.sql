Drop table if exists departments,employees;
CREATE TABLE departments (
  id integer UNIQUE NOT NULL,
  dept_name VARCHAR (40) NOT NULL,
  primary key (id)
);

CREATE TABLE employees (
  employee_id INTEGER UNIQUE NOT NULL,
  first_name VARCHAR (40)NOT NULL,
  last_name VARCHAR (40)NOT NULL,
  department_id INTEGER NOT NULL,
  PRIMARY KEY (employee_id),
  FOREIGN KEY (department_id) REFERENCES departments(id)
);
Select * from employees;
Select * from departments;

INSERT INTO departments (id, dept_name) VALUES (80, 'data science');
INSERT INTO departments (id, dept_name) VALUES (70, 'fake boot camp');

INSERT INTO employees (employee_id, first_name, last_name, department_id) VALUES (1, 'Zek', 'Spahr', 70);
INSERT INTO employees (employee_id, first_name, last_name, department_id) VALUES (2, 'Bob', 'Wilson', 80);
INSERT INTO employees (employee_id, first_name, last_name, department_id) VALUES (3, 'Master', 'Bilson', 70);

SELECT * FROM employees e
JOIN departments d
ON (e.department_id = d.id)
WHERE e.department_id = 70;
