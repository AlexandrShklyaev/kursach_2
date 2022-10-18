SELECT first_name, last_name, home_phone, region  FROM employees 
WHERE region is NULL;
--
SELECT customers.country FROM employees
 RIGHT JOIN customers ON employees.country is NULL
 JOIN suppliers ON suppliers.country = customers.country
GROUP BY customers.country

