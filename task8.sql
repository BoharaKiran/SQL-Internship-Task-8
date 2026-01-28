use intern_training_db;

#INNER JOIN to fetch employees with their department names
select
    e.emp_id,
    e.emp_name,
    d.dept_name
from employees e
inner join departments d
on e.dept_id=d.dept_id;    

#LEFT JOIN to identify employees without departments.
select
    e.emp_id,
    e.emp_name,
    d.dept_name
from employees e
left join departments d
on e.dept_id=d.dept_id;    

#RIGHT JOIN to list all departments including empty one
SELECT 
    e.emp_id,
    e.emp_name,
    d.dept_name
FROM employees e
RIGHT JOIN departments d
ON e.dept_id = d.dept_id;

#FULL JOIN (Simulated using UNION)
select 
    e.emp_id,
    e.emp_name,
    d.dept_name
from employees e
left join departments d
on e.dept_id=d.dept_id

union

select
    e.emp_id,
    e.emp_name,
    d.dept_name
from employees e
right join departments d
on e.dept_id=   d.dept_id; 

#Compare JOIN Types

/*INNER JOIN:-Only matching records

LEFT JOIN:-All employees + matching departments

RIGHT JOIN:-All departments + matching employees

FULL JOIN:-Everything from both tables
*/

#Business Use Cases

/*INNER JOIN: Payroll report showing only valid employees with departments.

LEFT JOIN: Find employees who are not yet assigned to a department.

RIGHT JOIN: Identify departments that are unused or empty.

FULL JOIN: Complete audit report.*/