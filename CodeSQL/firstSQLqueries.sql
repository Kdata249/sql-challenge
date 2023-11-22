SELECT e."Emp_no", e."Last_name" , e."First_name", e."Sex", "salaries"."Salary"
FROM "employees" AS e
INNER JOIN "salaries" ON
"salaries"."Emp_no"=e."Emp_no";

SELECT e."First_name", e."Last_name" , e."Hire_date"
FROM "employees" AS e
WHERE e."Hire_date" BETWEEN '1986-01-01' and '1986-12-31'


SELECT e."Emp_no", e."Last_name" , e."First_name", d."Dept_name", d."Dept_no"
FROM "dept_manager" AS dm
INNER JOIN "departments" as d ON dm."Dept_no" = d."Dept_no"
INNER JOIN "employees" as e ON dm."Emp_no" = e."Emp_no"

SELECT e."Emp_no", e."Last_name" , e."First_name", d."Dept_name", d."Dept_no"
FROM "dept_emp" as de
INNER JOIN "departments" as d ON de."Dept_no" = d."Dept_no"
INNER JOIN "employees" as e ON de."Emp_no" = e."Emp_no"


SELECT e."First_name", e."Last_name", e."Sex"
FROM "employees" AS e
WHERE e."First_name" = 'Hercules' and e."Last_name" LIKE 'B%';

SELECT e."Emp_no", e."Last_name" , e."First_name"
FROM "dept_emp" as de
INNER JOIN "departments" as d ON de."Dept_no" = d."Dept_no"
INNER JOIN "employees" as e ON de."Emp_no" = e."Emp_no"
WHERE d."Dept_name" = 'Sales';

SELECT e."Emp_no", e."Last_name" , e."First_name", d."Dept_name"
FROM "dept_emp" as de
INNER JOIN "departments" as d ON de."Dept_no" = d."Dept_no"
INNER JOIN "employees" as e ON de."Emp_no" = e."Emp_no"
WHERE d."Dept_name" IN('Sales', 'Development');

SELECT "Last_name", COUNT("Last_name")
FROM "employees"
Group by "Last_name"
Order BY COUNT("Last_name") DESC;



















