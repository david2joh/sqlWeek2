use employees;
-- Question 1
select count(e.emp_no), t.title from employees AS e INNER JOIN titles AS t ON e.emp_no = t.emp_no  WHERE e.birth_date > '1965-01-01' group by t.title; 
-- Question 2
select round(avg(s.salary),2) , t.title  from salaries AS s INNER JOIN titles AS t on s.emp_no = t.emp_no group by t.title;
-- Question 3
-- Joins to solve
SELECT SUM(s.salary) from salaries AS s
 INNER JOIN dept_emp AS de ON s.emp_no = de.emp_no
 INNER JOIN departments d ON d.dept_no = de.dept_no 
 WHERE d.dept_name = 'Marketing'  AND ( s.from_date > '1990-01-01' and s.to_date < '1992_12_31') ;
 select * from departments;
 select count(1) from dept_emp where dept_no = 'd001';
  -- Nested subquery to solve question 3
 select SUM(salary) from salaries AS s 
 where (emp_no in 
 (select emp_no from dept_emp where dept_no = 
    (select dept_no from departments where dept_name = 'Marketing') ) )
    AND ( s.from_date > '1990-01-01' and s.to_date < '1992_12_31');
 
 
 