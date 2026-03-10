-- find the second highest salary
select max(salary) as second_highest_salary
from employees
where salary < (
	select max(salary)
	from employees
);
