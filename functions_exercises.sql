SELECT count(gender), gender AS Male
FROM employees
WHERE first_name IN( 'Irena','Vidya','Maya')
GROUP BY gender;

SELECT 

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

SELECT datediff(curdate(), hire_date)
FROM employees
WHERE hire_date LIKE '199%'
AND birth_date like '%-12-25';

SELECT concat(first_name, ' ', last_name) AS full_name
FROM employees
WHERE birth_date LIKE '%-12-25'
ORDER BY birth_date ASC, hire_date DESC;


SELECT DISTINCT concat(first_name, ' ', last_name) AS full_name
FROM employees
WHERE last_name NOT LIKE '%qu%'
AND last_name LIKE '%q%';

SELECT concat(first_name, ' ', last_name) AS full_name
From employees
WHERE last_name like '%q%'
AND last_name NOT LIKE '%qu%'
GROUP BY full_name
ORDER BY count(*) desc;