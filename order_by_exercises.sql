SELECT concat(first_name, ' ', last_name) AS full_name
FROM employees
WHERE (first_name = 'Irena'
OR first_name = 'Vidya'
OR first_name = 'Maya')
AND gender = 'M'
ORDER BY last_name, first_name;

SELECT DISTINCT concat(first_name, ' ', last_name) AS full_name
FROM employees
WHERE (last_name LIKE 'E%'
AND last_name LIKE '%E')
ORDER BY emp_no;

SELECT concat(first_name, ' ', last_name) AS full_name
FROM employees
WHERE (last_name LIKE 'E%'
OR last_name LIKE '%E')
ORDER BY emp_no;

SELECT concat(first_name, ' ', last_name) AS full_name
FROM employees
WHERE hire_date LIKE '199%'
AND birth_date LIKE '%-12-25'
limit 5;

SELECT concat(first_name, ' ', last_name) AS full_name
FROM employees
WHERE birth_date LIKE '%-12-25'
ORDER BY birth_date ASC, hire_date DESC;


SELECT DISTINCT concat(first_name, ' ', last_name) AS full_name
FROM employees
WHERE last_name NOT LIKE '%qu%'
AND last_name LIKE '%q%';