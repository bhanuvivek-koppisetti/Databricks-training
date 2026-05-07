------------------------------------------------------------------------------
-- Basic Queries
------------------------------------------------------------------------------

--Select all columns from the employee table
SELECT * FROM Employee;

--Select only the name and salary columns from the employee table
 SELECT name,salary FROM Employee;

--Select employees who is older than 30
SELECT * FROM Employee WHERE age>30;

-- Select the names of all departments
SELECT name FROM Department;

--Select employees who work in the IT department
SELECT Employee.* FROM Employee 
JOIN Department
on Employee.department_id = Department.department_id
WHERE Department.name = "IT";

------------------------------------------------------------------------------
-- String Matching queries
------------------------------------------------------------------------------

--Select employees whose names start with 'J'
SELECT * FROM Employee
WHERE name LIKE 'J%';

--Select employees whose names end with 'e'
SELECT * FROM Employee
WHERE name LIKE '%e';

--Select employees whose names contain 'a'
SELECT * FROM Employee
WHERE name LIKE '%a%';

--Select employees whose names are exactly 9 characters long
SELECT * FROM Employee
WHERE name LIKE '_________';

--Select employees whose names have 'o' as the second character
SELECT * FROM Employee
WHERE name LIKE '_o%';

------------------------------------------------------------------------------
-- Date Queries
------------------------------------------------------------------------------

-- Select employees hired in the year 2020
SELECT * FROM Employee
WHERE YEAR(hire_date) = 2020;

--Select employees hired in january of any year
SELECT * FROM Employee
WHERE MONTH(hire_date) = 1;

--select employees hired before 2019
SELECT * FROM Employee
WHERE YEAR(hire_date) < 2019;

--Select employees hired on or after March 1,2021
SELECT * FROM Employee
WHERE hire_date > '2021-03-01';

--Select employees hired in last 2 years
SELECT * FROM Employee
WHERE hire_date >= CURRENT_DATE - INTERVAL 2 YEAR;

------------------------------------------------------------------------------
--AGGREGATED QUERIES
------------------------------------------------------------------------------

--Select the total salary of all the employees
SELECT SUM(salary) as total_salary FROM Employee;

--Select the average salary of employees
SELECT AVG(salary) as average_salary FROM Employee;

--Select the minimum salary in the employee table
SELECT MIN(salary) as minimum_salary FROM Employee;

--select the number of employees in each department
SELECT Department.name,count(*) as no_of_emp From Department
JOIN Employee
on Department.department_id =  Employee.department_id
GROUP BY Department.department_id;

--Select the average salary of employees in each department
SELECT Department.name,AVG(salary) as avg_salary From Department
JOIN Employee
on Department.department_id =  Employee.department_id
GROUP BY Department.department_id;

------------------------------------------------------------------------------
-- GROUP BY Queries
------------------------------------------------------------------------------

-- Select the total salary of each department
SELECT SUM(SALARY) as total_salary, department_id
FROM Employee
GROUP BY department_id;

-- Select the average age of employees in each department
SELECT AVG(age) as avg_salary, department_id
FROM Employee
GROUP BY department_id;

--Select the number of employees hired in each year
SELECT COUNT(*) as total_no_of_emp ,YEAR(hire_date) FROM Employee
GROUP BY YEAR(hire_date);

--Select the highest salary in each department
SELECT MAX(salary) as max_salary,department_id from Employee
GROUP BY department_id;

--Select the department with the highest average salary
select Department.name From Department
JOIN Employee
on Department.department_id =  Employee.department_id
GROUP BY Department.department_id
ORDER BY AVG(salary) DESC
LIMIT 1;

------------------------------------------------------------------------------
-- Having Queries
------------------------------------------------------------------------------

-- Select departments with more than 2 employees
SELECT Department.name,count(*) as no_of_emp From Department
JOIN Employee
on Department.department_id =  Employee.department_id
GROUP BY Department.department_id
HAVING COUNT(*)>2;

-- Select departments with an average salary greater than 55000
select Department.name,AVG(Employee.salary) as avg_salary From Department
JOIN Employee
on Department.department_id =  Employee.department_id
GROUP BY Department.department_id
HAVING AVG(salary)>55000;

--Select years with more than 1 employee hired
SELECT YEAR(hire_date),count(*) as no_of_emp
FROM Employee
GROUP BY YEAR(hire_date)
HAVING COUNT(*)>1;

--select departments with a total salary expenses less than 100000
select Department.name,SUM(Employee.salary) as total_salary From Department
JOIN Employee
on Department.department_id =  Employee.department_id
GROUP BY Department.department_id
HAVING SUM(salary)>100000;

--select departments with the maximum salary above 75000
select Department.name,MAX(Employee.salary) as max_salary From Department
JOIN Employee
on Department.department_id =  Employee.department_id
GROUP BY Department.department_id
HAVING MAX(salary)>75000;

------------------------------------------------------------------------------
-- ORDER BY QUERIES
------------------------------------------------------------------------------

--Select all employees ordered by their salary in ascending oreder
SELECT * FROM Employee
ORDER BY salary ASC;

--Select all employees ordered by their age in descending order
SELECT * FROM Employee
ORDER BY age DESC;

--select all employees ordered by their hire date in ascending order
SELECT * FROM Employee
ORDER BY hire_date ASC;

--Select employees ordered by their department and then by their salary
select * From Employee
JOIN Department
on Employee.department_id =  Department.department_id
ORDER BY Department.name,Employee.salary;

--select departments ordered by the total salary of their employees
select Department.name,SUM(Employee.salary) as total_salary From Department
JOIN Employee
on Department.department_id =  Employee.department_id
GROUP BY Department.department_id
ORDER BY total_salary;

------------------------------------------------------------------------------
--Join Queries
------------------------------------------------------------------------------

-- Select employee names along with their department names
SELECT Employee.name as emp_name,Department.name as dept_name FROM Employee
JOIN Department
ON Employee.department_id = Department.department_id;

-- Select project names along with the department names they belong to
SELECT Project.name as Project_name,Department.name as dept_name From Project
JOIN Department
ON Project.department_id = Department.department_id;

-- Select employee names and their corresponding project names
SELECT Employee.name as emp_name,Project.name as Project_name FROM Employee
JOIN Project
ON Employee.department_id = Project.department_id;

-- Select all Employees and their departments including those wothout a department
SELECT Employee.name as emp_name, Department.name as dept_name From Employee
LEFT JOIN Department
ON Employee.department_id = Department.department_id;

-- Select all departments and their employees, including departments without employees
SELECT Department.name as dept_name, Employee.name as emp_name FROM Department
LEFT JOIN Employee
ON Department.department_id = Employee.department_id;

-- Select employees who are not assigned to any project
SELECT Employee.name as emp_name, Project.name as project_name
FROM Employee LEFT JOIN Project
ON Employee.department_id = Project.department_id
WHERE Project.project_id is NULL;

-- Select employees and the number of projects their department is working on.
SELECT Employee.name as emp_name,Project.department_id as dept_id,COUNT(Project.Project_id) as total_projects FROM Employee
JOIN Project 
ON Employee.department_id = Project.department_id
GROUP BY Employee.name,Project.department_id;

-- Select the departments that have no employees
Select Department.department_id as dept_id,Department.name as dept_name,Employee.emp_id as emp_id From Department
LEFT JOIN Employee
ON Department.department_id = Employee.department_id
WHERE Employee.emp_id is NULL ;

-- Select employee names who share the same department with 'John Doe'
SELECT Employee.name as emp_name From Employee 
Where Employee.department_id = (
  SELECT Employee.department_id From Employee 
  WHERE Employee.name = 'John Doe'
) 
And Employee.name <> 'John Doe';

-- Select the department name with the highest average salary
SELECT Department.name as dept_name,AVG(Employee.salary) as average_salary FROM Department
RIGHT JOIN Employee 
ON Department.department_id = Employee.department_id
GROUP BY Department.name
ORDER BY average_salary DESC
LIMIT 1;

------------------------------------------------------------------------------
-- Nested and correlated queries
------------------------------------------------------------------------------

-- Select the employee with the highest salary
SELECT Employee.emp_id as emp_id, Employee.name as emp_name,Employee.salary as Highest_salary
FROM Employee
ORDER BY Employee.salary DESC
LIMIT 1;

-- Select employees whose salary is above the average salary
SELECT Employee.emp_id as emp_id, Employee.name as emp_name, Employee.salary as salary
FROM Employee
WHERE Employee.salary > (SELECT AVG(Employee.salary) FROM Employee
                         );

-- Select the second highest salary from the employee table     
SELECT salary FROM Employee
ORDER BY salary DESC
LIMIT 1 OFFSET 1;






















