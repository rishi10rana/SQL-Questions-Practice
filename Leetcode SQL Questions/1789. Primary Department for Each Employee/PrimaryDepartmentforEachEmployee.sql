# Write your MySQL query statement below

# using the union set opeartion
select employee_id, department_id from Employee
group by employee_id having count(department_id) = 1
union
select employee_id, department_id from Employee
where primary_flag = 'Y';


# using the trick of 0 and 1 value using condition in select statement
/*
select employee_id, case
when count(department_id) = 1 then department_id
when count(department_id) > 1 then sum((primary_flag = 'Y')*department_id)
end as department_id
from Employee
group by employee_id;
*/


# using subquery
/*
select employee_id, department_id
from Employee where employee_id
in (select employee_id from employee
group by employee_id having count(department_id) = 1)
or primary_flag = 'Y';
*/

