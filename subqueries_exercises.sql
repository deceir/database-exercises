use employees;

select e.first_name as 'first name', e.last_name as 'last name'
from employees e
where e.hire_date in (select e.hire_date from employees e where e.emp_no = 101010);

# select e.hire_date
# from employees e
# where e.emp_no = 101010;
#
# select e.first_name as 'first name', e.last_name as 'last name'
# from employees e
# where e.hire_date = '1990-10-22';

select t.title
from titles as t
where t.emp_no in (select e.emp_no from employees as e where e.first_name = 'Aamod');

select first_name as 'First Name', last_name as 'Last Name'
from employees e
where emp_no in (select emp_no from dept_manager dm) and gender = 'f';

#bonus highest salary
select e.first_name as 'First Name', e.last_name as 'Last Name'
from employees e
where e.emp_no in (select s.emp_no from salaries s group by s.salary)
limit 1;



