DROP TABLE IF EXISTS people;
DROP TABLE IF EXISTS departments;
CREATE TABLE departments (
  id SERIAL PRIMARY KEY,
  dept_no VARCHAR(30) NOT NULL,
  dept_name VARCHAR(30) NOT NULL);
DROP TABLE IF EXISTS dept_emp;
CREATE TABLE dept_emp (
  id SERIAL PRIMARY KEY,
  emp_no INT,
  dept_no VARCHAR(30) NOT NULL,
  from_date VARCHAR(30) NOT NULL,
  to_date VARCHAR(30) NOT NULL
);

DROP TABLE IF EXISTS dept_manager;
CREATE TABLE dept_manager (
  id SERIAL PRIMARY KEY,
  dept_no VARCHAR(30) NOT NULL,
  emp_no INT,
  from_date VARCHAR(30) NOT NULL,
  to_date VARCHAR(30) NOT NULL
);
DROP TABLE IF EXISTS employees;
CREATE TABLE employees (
  id SERIAL PRIMARY KEY,
  emp_no INT,
  birth_date VARCHAR(30)NOT NULL,
  first_name VARCHAR(30) NOT NULL,
  last_name VARCHAR(30) NOT NULL,
  gender VARCHAR(1) NOT NULL,
  hire_date VARCHAR(30) NOT NULL
);
DROP TABLE IF EXISTS salaries;
CREATE TABLE salaries (
  id SERIAL PRIMARY KEY,
  emp_no INT,
  salary INT,
  from_date VARCHAR(30) NOT NULL,
  to_date VARCHAR(30) NOT NULL
);
DROP TABLE IF EXISTS titles;
CREATE TABLE titles (
  id SERIAL PRIMARY KEY,
  emp_no INT,
  title VARCHAR(30) NOT NULL,
  from_date VARCHAR(30) NOT NULL,
  to_date VARCHAR(30) NOT NULL
);
SELECT *
FROM titles;
