SELECT last_name
FROM employees
GROUP BY last_name DESC
LIMIT 10;

SELECT concat(first_name, ' ', last_name) AS full_name
FROM employees
WHERE hire_date LIKE '199%'
AND birth_date LIKE '%-12-25'
limit 5;