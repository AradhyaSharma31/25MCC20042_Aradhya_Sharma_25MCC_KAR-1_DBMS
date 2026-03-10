-- find all unique pairs of employees who report to the same manager.
select e1.manager_id, e1.emp_name as employee_1, e2.emp_name as employee_2
from employees e1
join employees e2
ON e1.manager_id = e2.manager_id
and e1.emp_id < e2.emp_id
where e1.manager_id is not null
