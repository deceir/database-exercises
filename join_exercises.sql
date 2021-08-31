use employees;

select de.dept_name, concat(e.first_name, ' ', e.last_name) as fullname
from employees.departments as de
         join employees.dept_manager as dm
              on de.dept_no = dm.dept_no
         join employees.employees as e
              on dm.emp_no = e.emp_no
where dm.to_date = '9999-01-01';

select de.dept_name, concat(e.first_name, ' ', e.last_name) as fullname
from employees.departments as de
         join employees.dept_manager as dm
              on de.dept_no = dm.dept_no
         join employees.employees as e
              on dm.emp_no = e.emp_no
where dm.to_date = '9999-01-01'
  and e.gender = 'F';

select title, count(*) as Total
from employees.titles as et
where et.to_date = '9999-01-01'
group by title;


select de.dept_name as Department, concat(e.first_name, ' ', e.last_name) as fullname, s.salary as Salary
from employees.departments as de
         join employees.dept_manager as dm
              on de.dept_no = dm.dept_no
         join employees.employees as e
              on dm.emp_no = e.emp_no
         join employees.salaries as s
              on e.emp_no = s.emp_no
where dm.to_date = '9999-01-01'
  and s.to_date = '9999-01-01';


# bonus attempt
select distinct concat(e.first_name, ' ', e.last_name) as fullname, de.dept_name as Department
from employees.departments as de
         join employees.dept_manager as dm
              on de.dept_no = dm.dept_no
         join employees.employees as e
              on dm.emp_no = e.emp_no
         join employees.salaries as s
              on e.emp_no = s.emp_no
where dm.to_date = '9999-01-01'