SELECT d.name Department_Name, MAX(salary) MAX_SALARY FROM employee e
INNER JOIN department d
ON d.id_department = e.id_department
GROUP BY d.name
ORDER BY d.name;
