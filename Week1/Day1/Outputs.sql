**Query #1**

    SELECT * FROM Employee;

| emp_id | name        | age | salary  | department_id | hire_date  |
| ------ | ----------- | --- | ------- | ------------- | ---------- |
| 1      | John Doe    | 28  | 50000.0 | 1             | 2020-01-15 |
| 2      | Jane Smith  | 34  | 60000.0 | 2             | 2019-07-23 |
| 3      | Bob Brown   | 45  | 80000.0 | 1             | 2018-02-12 |
| 4      | Alice Blue  | 25  | 45000.0 | 3             | 2021-03-22 |
| 5      | Charlie P.  | 29  | 50000.0 | 2             | 2019-12-01 |
| 6      | David Green | 38  | 70000.0 | 4             | 2022-05-18 |
| 7      | Eve Black   | 40  | 55000.0 | 3             | 2021-08-30 |
| 8      | Frank White | 32  | 48000.0 |               | 2021-07-10 |
| 9      | Grace Kelly | 27  | 65000.0 | 1             | 2018-11-13 |
| 10     | Hannah Lee  | 30  | 53000.0 | 4             | 2020-02-25 |

---
**Query #2**

    SELECT name,salary FROM Employee;

| name        | salary  |
| ----------- | ------- |
| John Doe    | 50000.0 |
| Jane Smith  | 60000.0 |
| Bob Brown   | 80000.0 |
| Alice Blue  | 45000.0 |
| Charlie P.  | 50000.0 |
| David Green | 70000.0 |
| Eve Black   | 55000.0 |
| Frank White | 48000.0 |
| Grace Kelly | 65000.0 |
| Hannah Lee  | 53000.0 |

---
**Query #3**

    SELECT * FROM Employee WHERE age>30;

| emp_id | name        | age | salary  | department_id | hire_date  |
| ------ | ----------- | --- | ------- | ------------- | ---------- |
| 2      | Jane Smith  | 34  | 60000.0 | 2             | 2019-07-23 |
| 3      | Bob Brown   | 45  | 80000.0 | 1             | 2018-02-12 |
| 6      | David Green | 38  | 70000.0 | 4             | 2022-05-18 |
| 7      | Eve Black   | 40  | 55000.0 | 3             | 2021-08-30 |
| 8      | Frank White | 32  | 48000.0 |               | 2021-07-10 |

---
**Query #4**

    SELECT name FROM Department;

| name      |
| --------- |
| IT        |
| HR        |
| Finance   |
| Marketing |

---
**Query #5**

    SELECT Employee.* FROM Employee 
    JOIN Department
    on Employee.department_id = Department.department_id
    WHERE Department.name = "IT";

| emp_id | name        | age | salary  | department_id | hire_date  |
| ------ | ----------- | --- | ------- | ------------- | ---------- |
| 1      | John Doe    | 28  | 50000.0 | 1             | 2020-01-15 |
| 3      | Bob Brown   | 45  | 80000.0 | 1             | 2018-02-12 |
| 9      | Grace Kelly | 27  | 65000.0 | 1             | 2018-11-13 |

---
**Query #6**

    SELECT * FROM Employee
    WHERE name LIKE 'J%';

| emp_id | name       | age | salary  | department_id | hire_date  |
| ------ | ---------- | --- | ------- | ------------- | ---------- |
| 1      | John Doe   | 28  | 50000.0 | 1             | 2020-01-15 |
| 2      | Jane Smith | 34  | 60000.0 | 2             | 2019-07-23 |

---
**Query #7**

    SELECT * FROM Employee
    WHERE name LIKE '%e';

| emp_id | name        | age | salary  | department_id | hire_date  |
| ------ | ----------- | --- | ------- | ------------- | ---------- |
| 1      | John Doe    | 28  | 50000.0 | 1             | 2020-01-15 |
| 4      | Alice Blue  | 25  | 45000.0 | 3             | 2021-03-22 |
| 8      | Frank White | 32  | 48000.0 |               | 2021-07-10 |
| 10     | Hannah Lee  | 30  | 53000.0 | 4             | 2020-02-25 |

---
**Query #8**

    SELECT * FROM Employee
    WHERE name LIKE '%a%';

| emp_id | name        | age | salary  | department_id | hire_date  |
| ------ | ----------- | --- | ------- | ------------- | ---------- |
| 2      | Jane Smith  | 34  | 60000.0 | 2             | 2019-07-23 |
| 4      | Alice Blue  | 25  | 45000.0 | 3             | 2021-03-22 |
| 5      | Charlie P.  | 29  | 50000.0 | 2             | 2019-12-01 |
| 6      | David Green | 38  | 70000.0 | 4             | 2022-05-18 |
| 7      | Eve Black   | 40  | 55000.0 | 3             | 2021-08-30 |
| 8      | Frank White | 32  | 48000.0 |               | 2021-07-10 |
| 9      | Grace Kelly | 27  | 65000.0 | 1             | 2018-11-13 |
| 10     | Hannah Lee  | 30  | 53000.0 | 4             | 2020-02-25 |

---
**Query #9**

    SELECT * FROM Employee
    WHERE name LIKE '_________';

| emp_id | name      | age | salary  | department_id | hire_date  |
| ------ | --------- | --- | ------- | ------------- | ---------- |
| 3      | Bob Brown | 45  | 80000.0 | 1             | 2018-02-12 |
| 7      | Eve Black | 40  | 55000.0 | 3             | 2021-08-30 |

---
**Query #10**

    SELECT * FROM Employee
    WHERE name LIKE '_o%';

| emp_id | name      | age | salary  | department_id | hire_date  |
| ------ | --------- | --- | ------- | ------------- | ---------- |
| 1      | John Doe  | 28  | 50000.0 | 1             | 2020-01-15 |
| 3      | Bob Brown | 45  | 80000.0 | 1             | 2018-02-12 |

---
**Query #11**

    SELECT * FROM Employee
    WHERE YEAR(hire_date) = 2020;

| emp_id | name       | age | salary  | department_id | hire_date  |
| ------ | ---------- | --- | ------- | ------------- | ---------- |
| 1      | John Doe   | 28  | 50000.0 | 1             | 2020-01-15 |
| 10     | Hannah Lee | 30  | 53000.0 | 4             | 2020-02-25 |

---
**Query #12**

    SELECT * FROM Employee
    WHERE MONTH(hire_date) = 1;

| emp_id | name     | age | salary  | department_id | hire_date  |
| ------ | -------- | --- | ------- | ------------- | ---------- |
| 1      | John Doe | 28  | 50000.0 | 1             | 2020-01-15 |

---
**Query #13**

    SELECT * FROM Employee
    WHERE YEAR(hire_date) < 2019;

| emp_id | name        | age | salary  | department_id | hire_date  |
| ------ | ----------- | --- | ------- | ------------- | ---------- |
| 3      | Bob Brown   | 45  | 80000.0 | 1             | 2018-02-12 |
| 9      | Grace Kelly | 27  | 65000.0 | 1             | 2018-11-13 |

---
**Query #14**

    SELECT * FROM Employee
    WHERE hire_date > '2021-03-01';

| emp_id | name        | age | salary  | department_id | hire_date  |
| ------ | ----------- | --- | ------- | ------------- | ---------- |
| 4      | Alice Blue  | 25  | 45000.0 | 3             | 2021-03-22 |
| 6      | David Green | 38  | 70000.0 | 4             | 2022-05-18 |
| 7      | Eve Black   | 40  | 55000.0 | 3             | 2021-08-30 |
| 8      | Frank White | 32  | 48000.0 |               | 2021-07-10 |

---
**Query #15**

    SELECT * FROM Employee
    WHERE hire_date >= CURRENT_DATE - INTERVAL 2 YEAR;

There are no results to be displayed.

---
**Query #16**

    SELECT SUM(salary) as total_salary FROM Employee;

| total_salary |
| ------------ |
| 576000.0     |

---
**Query #17**

    SELECT AVG(salary) as average_salary FROM Employee;

| average_salary |
| -------------- |
| 57600.0        |

---
**Query #18**

    SELECT MIN(salary) as minimum_salary FROM Employee;

| minimum_salary |
| -------------- |
| 45000.0        |

---
**Query #19**

    SELECT Department.name,count(*) as no_of_emp From Department
    JOIN Employee
    on Department.department_id =  Employee.department_id
    GROUP BY Department.department_id;

| name      | no_of_emp |
| --------- | --------- |
| IT        | 3         |
| HR        | 2         |
| Finance   | 2         |
| Marketing | 2         |

---
**Query #20**

    SELECT Department.name,AVG(salary) as avg_salary From Department
    JOIN Employee
    on Department.department_id =  Employee.department_id
    GROUP BY Department.department_id;

| name      | avg_salary |
| --------- | ---------- |
| IT        | 65000.0    |
| HR        | 55000.0    |
| Finance   | 50000.0    |
| Marketing | 61500.0    |

---
**Query #21**

    SELECT SUM(SALARY) as total_salary, department_id
    FROM Employee
    GROUP BY department_id;

| total_salary | department_id |
| ------------ | ------------- |
| 48000.0      |               |
| 195000.0     | 1             |
| 110000.0     | 2             |
| 100000.0     | 3             |
| 123000.0     | 4             |

---
**Query #22**

    SELECT AVG(age) as avg_salary, department_id
    FROM Employee
    GROUP BY department_id;

| avg_salary | department_id |
| ---------- | ------------- |
| 32.0       |               |
| 33.3333    | 1             |
| 31.5       | 2             |
| 32.5       | 3             |
| 34.0       | 4             |

---
**Query #23**

    SELECT COUNT(*) as total_no_of_emp ,YEAR(hire_date) FROM Employee
    GROUP BY YEAR(hire_date);

| total_no_of_emp | YEAR(hire_date) |
| --------------- | --------------- |
| 2               | 2018            |
| 2               | 2019            |
| 2               | 2020            |
| 3               | 2021            |
| 1               | 2022            |

---
**Query #24**

    SELECT MAX(salary) as max_salary,department_id from Employee
    GROUP BY department_id;

| max_salary | department_id |
| ---------- | ------------- |
| 48000.0    |               |
| 80000.0    | 1             |
| 60000.0    | 2             |
| 55000.0    | 3             |
| 70000.0    | 4             |

---
**Query #25**

    select Department.name From Department
    JOIN Employee
    on Department.department_id =  Employee.department_id
    GROUP BY Department.department_id
    ORDER BY AVG(salary) DESC
    LIMIT 1;

| name |
| ---- |
| IT   |

---
**Query #26**

    SELECT Department.name,count(*) as no_of_emp From Department
    JOIN Employee
    on Department.department_id =  Employee.department_id
    GROUP BY Department.department_id
    HAVING COUNT(*)>2;

| name | no_of_emp |
| ---- | --------- |
| IT   | 3         |

---
**Query #27**

    select Department.name,AVG(Employee.salary) as avg_salary From Department
    JOIN Employee
    on Department.department_id =  Employee.department_id
    GROUP BY Department.department_id
    HAVING AVG(salary)>55000;

| name      | avg_salary |
| --------- | ---------- |
| IT        | 65000.0    |
| Marketing | 61500.0    |

---
**Query #28**

    SELECT YEAR(hire_date),count(*) as no_of_emp
    FROM Employee
    GROUP BY YEAR(hire_date)
    HAVING COUNT(*)>1;

| YEAR(hire_date) | no_of_emp |
| --------------- | --------- |
| 2018            | 2         |
| 2019            | 2         |
| 2020            | 2         |
| 2021            | 3         |

---
**Query #29**

    select Department.name,SUM(Employee.salary) as total_salary From Department
    JOIN Employee
    on Department.department_id =  Employee.department_id
    GROUP BY Department.department_id
    HAVING SUM(salary)>100000;

| name      | total_salary |
| --------- | ------------ |
| IT        | 195000.0     |
| HR        | 110000.0     |
| Marketing | 123000.0     |

---
**Query #30**

    select Department.name,MAX(Employee.salary) as max_salary From Department
    JOIN Employee
    on Department.department_id =  Employee.department_id
    GROUP BY Department.department_id
    HAVING MAX(salary)>75000;

| name | max_salary |
| ---- | ---------- |
| IT   | 80000.0    |

---
**Query #31**

    SELECT * FROM Employee
    ORDER BY salary ASC;

| emp_id | name        | age | salary  | department_id | hire_date  |
| ------ | ----------- | --- | ------- | ------------- | ---------- |
| 4      | Alice Blue  | 25  | 45000.0 | 3             | 2021-03-22 |
| 8      | Frank White | 32  | 48000.0 |               | 2021-07-10 |
| 1      | John Doe    | 28  | 50000.0 | 1             | 2020-01-15 |
| 5      | Charlie P.  | 29  | 50000.0 | 2             | 2019-12-01 |
| 10     | Hannah Lee  | 30  | 53000.0 | 4             | 2020-02-25 |
| 7      | Eve Black   | 40  | 55000.0 | 3             | 2021-08-30 |
| 2      | Jane Smith  | 34  | 60000.0 | 2             | 2019-07-23 |
| 9      | Grace Kelly | 27  | 65000.0 | 1             | 2018-11-13 |
| 6      | David Green | 38  | 70000.0 | 4             | 2022-05-18 |
| 3      | Bob Brown   | 45  | 80000.0 | 1             | 2018-02-12 |

---
**Query #32**

    SELECT * FROM Employee
    ORDER BY age DESC;

| emp_id | name        | age | salary  | department_id | hire_date  |
| ------ | ----------- | --- | ------- | ------------- | ---------- |
| 3      | Bob Brown   | 45  | 80000.0 | 1             | 2018-02-12 |
| 7      | Eve Black   | 40  | 55000.0 | 3             | 2021-08-30 |
| 6      | David Green | 38  | 70000.0 | 4             | 2022-05-18 |
| 2      | Jane Smith  | 34  | 60000.0 | 2             | 2019-07-23 |
| 8      | Frank White | 32  | 48000.0 |               | 2021-07-10 |
| 10     | Hannah Lee  | 30  | 53000.0 | 4             | 2020-02-25 |
| 5      | Charlie P.  | 29  | 50000.0 | 2             | 2019-12-01 |
| 1      | John Doe    | 28  | 50000.0 | 1             | 2020-01-15 |
| 9      | Grace Kelly | 27  | 65000.0 | 1             | 2018-11-13 |
| 4      | Alice Blue  | 25  | 45000.0 | 3             | 2021-03-22 |

---
**Query #33**

    SELECT * FROM Employee
    ORDER BY hire_date ASC;

| emp_id | name        | age | salary  | department_id | hire_date  |
| ------ | ----------- | --- | ------- | ------------- | ---------- |
| 3      | Bob Brown   | 45  | 80000.0 | 1             | 2018-02-12 |
| 9      | Grace Kelly | 27  | 65000.0 | 1             | 2018-11-13 |
| 2      | Jane Smith  | 34  | 60000.0 | 2             | 2019-07-23 |
| 5      | Charlie P.  | 29  | 50000.0 | 2             | 2019-12-01 |
| 1      | John Doe    | 28  | 50000.0 | 1             | 2020-01-15 |
| 10     | Hannah Lee  | 30  | 53000.0 | 4             | 2020-02-25 |
| 4      | Alice Blue  | 25  | 45000.0 | 3             | 2021-03-22 |
| 8      | Frank White | 32  | 48000.0 |               | 2021-07-10 |
| 7      | Eve Black   | 40  | 55000.0 | 3             | 2021-08-30 |
| 6      | David Green | 38  | 70000.0 | 4             | 2022-05-18 |

---
**Query #34**

    select * From Employee
    JOIN Department
    on Employee.department_id =  Department.department_id
    ORDER BY Department.name,Employee.salary;

| emp_id | name        | age | salary  | department_id | hire_date  | department_id | name      |
| ------ | ----------- | --- | ------- | ------------- | ---------- | ------------- | --------- |
| 4      | Alice Blue  | 25  | 45000.0 | 3             | 2021-03-22 | 3             | Finance   |
| 7      | Eve Black   | 40  | 55000.0 | 3             | 2021-08-30 | 3             | Finance   |
| 5      | Charlie P.  | 29  | 50000.0 | 2             | 2019-12-01 | 2             | HR        |
| 2      | Jane Smith  | 34  | 60000.0 | 2             | 2019-07-23 | 2             | HR        |
| 1      | John Doe    | 28  | 50000.0 | 1             | 2020-01-15 | 1             | IT        |
| 9      | Grace Kelly | 27  | 65000.0 | 1             | 2018-11-13 | 1             | IT        |
| 3      | Bob Brown   | 45  | 80000.0 | 1             | 2018-02-12 | 1             | IT        |
| 10     | Hannah Lee  | 30  | 53000.0 | 4             | 2020-02-25 | 4             | Marketing |
| 6      | David Green | 38  | 70000.0 | 4             | 2022-05-18 | 4             | Marketing |

---
**Query #35**

    select Department.name,SUM(Employee.salary) as total_salary From Department
    JOIN Employee
    on Department.department_id =  Employee.department_id
    GROUP BY Department.department_id
    ORDER BY total_salary;

| name      | total_salary |
| --------- | ------------ |
| Finance   | 100000.0     |
| HR        | 110000.0     |
| Marketing | 123000.0     |
| IT        | 195000.0     |

---

