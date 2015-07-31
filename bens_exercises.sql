
SELECT u.name AS user_name, r.name AS roles_name
FROM users u
JOIN roles r 
WHERE u.role_id = r.id;


SELECT count(u.role_id), r.name AS roles_name
FROM users u
JOIN roles r 
WHERE u.role_id = r.id
GROUP BY u.role_id;


SELECT CONCAT(e.first_name, ' ', e.last_name) AS full_name, d.dept_name
FROM employees e
JOIN dept_manager dm
    ON dm.emp_no = e.emp_no
JOIN departments AS d
    ON d.dept_no = dm.dept_no
WHERE dm.to_date = '9999-01-01';


SELECT CONCAT(e.first_name, ' ', e.last_name) AS full_name, t.title
FROM employees e
JOIN titles t 
	ON e.emp_no = t.emp_no
WHERE t.title LIKE 'Senior %' AND t.to_date = '9999-01-01';


SELECT CONCAT(e.first_name, ' ', e.last_name) AS full_name, d.dept_name
FROM employees e
JOIN dept_manager dm
    ON dm.emp_no = e.emp_no
JOIN departments AS d
    ON d.dept_no = dm.dept_no
WHERE dm.to_date = '9999-01-01' AND e.gender = 'F';

SELECT concat(e.first_name, ' ', e.last_name), s.salary
FROM employees e
JOIN dept_manager dm ON e.emp_no = dm.emp_no
JOIN salaries s ON e.emp_no = s.emp_no
WHERE dm.to_date >= now()
AND s.to_date >= now();


SELECT t.title AS "Title", AVG(s.salary) AS "Avg. Salary"
FROM titles t
LEFT JOIN employees e ON t.emp_no = e.emp_no
LEFT JOIN salaries s ON e.emp_no = s.emp_no
WHERE t.to_date >= now()
AND s.to_date >=now()
GROUP BY t.title;

SELECT concat(e.first_name, ' ', e.last_name) AS Employee, d.dept_name AS Department, concat(e.first_name, ' ', e.last_name) AS Manager
FROM employees e
JOIN dept_emp de ON e.emp_no = de.emp_no
LEFT JOIN departments d ON de.dept_no = d.dept_no
LEFT JOIN dept_manager dm ON d.dept_no = dm.dept_no
LEFT JOIN employees em ON dm.emp_no = em.emp_no
WHERE de.to_date >= now()
AND dm.to_date >=now()
ORDER BY d.dept_name, e.last_name, e.first_name;

