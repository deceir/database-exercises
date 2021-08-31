use employees;

SELECT DISTINCT title
from employees.titles as e
group by title;

select distinct first_name, last_name, COUNT(*)
from employees.employees
where last_name like 'e%'
and last_name like '%e'
group by last_name, first_name


select  count(*), gender
from employees.employees
where first_name like 'Irenna'
    or first_name like 'Vidya'
        or first_name like 'Maya'
group by gender;




