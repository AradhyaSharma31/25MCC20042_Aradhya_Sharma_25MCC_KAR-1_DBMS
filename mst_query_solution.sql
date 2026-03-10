CREATE TABLE Employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    manager_id INT,
    department VARCHAR(50),
    salary INT
);

INSERT INTO Employees VALUES
(1, 'Amit', NULL, 'Management', 120000),
(2, 'Ravi', 1, 'Engineering', 80000),
(3, 'Neha', 1, 'Engineering', 82000),
(4, 'Karan', 2, 'Engineering', 60000),
(5, 'Simran', 2, 'Engineering', 62000),
(6, 'Pooja', 3, 'Engineering', 61000),
(7, 'Rahul', 3, 'Engineering', 64000),
(8, 'Arjun', 1, 'HR', 70000);

-- find all unique pairs of employees who report to the same manager.
select e1.manager_id, e1.emp_name as employee_1, e2.emp_name as employee_2
from employees e1
join employees e2
ON e1.manager_id = e2.manager_id
and e1.emp_id < e2.emp_id
where e1.manager_id is not null

-- find the second highest salary
select max(salary) as second_highest_salary
from employees
where salary < (
	select max(salary)
	from employees
);