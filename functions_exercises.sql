use employees;

select concat(e.first_name, e.last_name)
from employees.employees as e;

select concat(e.first_name, e.last_name)
from employees.employees as e
where birth_date is DAYOFMONTH(0000-12-26);

