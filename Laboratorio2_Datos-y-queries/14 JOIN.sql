SELECT*FROM employee e
INNER JOIN department d
ON d.id_department = e.id_department
WHERE d.id_department = 1;
