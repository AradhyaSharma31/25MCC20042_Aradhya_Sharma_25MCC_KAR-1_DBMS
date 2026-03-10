<h2>Table Creation:</h2>
  
```
CREATE TABLE Employees (

    emp_id INT PRIMARY KEY,
    
    emp_name VARCHAR(50),
    
    manager_id INT,
    
    department VARCHAR(50),
    
    salary INT

);
```

<h2>Data Insertion:</h2>

```
INSERT INTO Employees VALUES

(1, 'Amit', NULL, 'Management', 120000),

(2, 'Ravi', 1, 'Engineering', 80000),

(3, 'Neha', 1, 'Engineering', 82000),

(4, 'Karan', 2, 'Engineering', 60000),

(5, 'Simran', 2, 'Engineering', 62000),

(6, 'Pooja', 3, 'Engineering', 61000),

(7, 'Rahul', 3, 'Engineering', 64000),

(8, 'Arjun', 1, 'HR', 70000);
```

<h2>Find all unique pairs of employees who report to the same manager:</h2>
  
```
select e1.manager_id, e1.emp_name as employee_1, e2.emp_name as employee_2

from employees e1

join employees e2

ON e1.manager_id = e2.manager_id

and e1.emp_id < e2.emp_id

where e1.manager_id is not null
```

<h2>Output</h2>

<img width="436" height="228" alt="output" src="https://github.com/user-attachments/assets/e3d8566d-ba5a-4edd-9963-d546aab93f28" />

<h2>Find the second highest salary:</h2>
  
```
select max(salary) as second_highest_salary

from employees

where salary < (

  select max(salary)
	
  from employees
);
```

<h2>Output</h2

<img width="333" height="129" alt="output" src="https://github.com/user-attachments/assets/7f5f0253-c040-44b5-a6b1-df05c29f3a55" />
<img width="333" height="129" alt="output" src="https://github.com/user-attachments/assets/a29bf715-acb2-4912-83b0-8836a4b66289" />

...
