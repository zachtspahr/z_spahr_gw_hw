DROP TABLE IF EXISTS employees_data,departments_data,dept_emp_data,dept_manager_data,salaries_data,titles_data;
CREATE TABLE employees_data (
    emp_no      INT             NOT NULL,
    birth_date  DATE            NOT NULL,
    first_name  VARCHAR(14)     NOT NULL,
    last_name   VARCHAR(16)     NOT NULL,
    gender      VARCHAR(1) 		NOT NULL,
    hire_date   DATE            NOT NULL,
    PRIMARY KEY (emp_no)
);

CREATE TABLE departments_data (
    dept_no     VARCHAR(4)         NOT NULL,
    dept_name   VARCHAR(40)     NOT NULL,
    PRIMARY KEY (dept_no),
    UNIQUE   	(dept_name)
);

CREATE TABLE dept_manager_data (
   dept_no      VARCHAR(4)         NOT NULL,
   emp_no       INT             NOT NULL,
   from_date    DATE            NOT NULL,
   to_date      DATE            NOT NULL,
   FOREIGN KEY (emp_no)  REFERENCES employees_data (emp_no),
   FOREIGN KEY (dept_no) REFERENCES departments_data (dept_no),
   PRIMARY KEY (emp_no,dept_no)
);

CREATE TABLE dept_emp_data (
    emp_no      INT             NOT NULL,
    dept_no     VARCHAR(4)         NOT NULL,
    from_date   DATE            NOT NULL,
    to_date     DATE            NOT NULL,
    FOREIGN KEY (emp_no)  REFERENCES employees_data   (emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments_data (dept_no),
    PRIMARY KEY (emp_no,dept_no)
);

CREATE TABLE titles_data (
    emp_no      INT             NOT NULL,
    title       VARCHAR(50)     NOT NULL,
    from_date   DATE            NOT NULL,
    to_date     DATE,
    FOREIGN KEY (emp_no) REFERENCES employees_data (emp_no),
    PRIMARY KEY (emp_no,title, from_date)
);

CREATE TABLE salaries_data (
    emp_no      INT             NOT NULL,
    salary      INT             NOT NULL,
    from_date   DATE            NOT NULL,
    to_date     DATE            NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES employees_data (emp_no),
    PRIMARY KEY (emp_no, from_date)
);


