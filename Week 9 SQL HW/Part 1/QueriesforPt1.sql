Select * from titles_data;
-- The salaries data joined with employees
SELECT  employee.emp_no,
        employee.last_name,
        employee.first_name,
        employee.gender,
        salaries.salary
FROM employees_data as employee
    LEFT JOIN salaries_data as salaries
    ON (employee.emp_no = salaries.emp_no)
ORDER BY employee.emp_no;
-- Employees Hired in 1986 
SELECT first_name, last_name
FROM employees_data
WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31';
-- The manager of each department
SELECT  dmd.dept_no,
        depart.dept_name,
        dmd.emp_no,
        emp.last_name,
        emp.first_name,
        dmd.from_date,
        dmd.to_date
FROM dept_manager_data AS dmd
    INNER JOIN departments_data AS depart
        ON (dmd.dept_no = depart.dept_no)
    INNER JOIN employees_data AS emp
        ON (dmd.emp_no = emp.emp_no);
-- The Department of each employee
SELECT  emp.emp_no,
        emp.last_name,
        emp.first_name,
        depart.dept_name
FROM employees_data AS emp
    INNER JOIN dept_emp_data AS demp
        ON (emp.emp_no = demp.emp_no)
    INNER JOIN departments_data AS depart
        ON (demp.dept_no = depart.dept_no)
ORDER BY emp.emp_no;
-- Employees Named Hercules with last name B
-- There are 20 employees who meet this condition. 
SELECT *
FROM employees_data
WHERE first_name = 'Hercules'
AND last_name LIKE 'B%';
-- Employees in the Sales Department
SELECT  emp.emp_no,
        emp.last_name,
        emp.first_name,
        depart.dept_name
FROM employees_data AS emp
    INNER JOIN dept_emp_data AS demp
        ON (emp.emp_no = demp.emp_no)
    INNER JOIN departments_data AS depart
        ON (demp.dept_no = depart.dept_no)
WHERE depart.dept_name IN ('Sales')
;
ORDER BY emp.emp_no;
-- Employees in the sales and development department 
SELECT  emp.emp_no,
        emp.last_name,
        emp.first_name,
        depart.dept_name
FROM employees_data AS emp
    INNER JOIN dept_emp_data AS demp
        ON (emp.emp_no = demp.emp_no)
    INNER JOIN departments_data AS depart
        ON (demp.dept_no = depart.dept_no)
WHERE depart.dept_name IN ('Sales', 'Development')
ORDER BY emp.emp_no;
-- Frequency of Last Names in Descending Order 
-- Most Frequent Last Name is Baba
SELECT last_name, COUNT(last_name)
FROM employees_data
GROUP BY last_name
ORDER BY COUNT(last_name) DESC;
