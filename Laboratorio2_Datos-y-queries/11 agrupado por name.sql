SELECT d.name Department_Name, COUNT(*) Quantity_of_Employees FROM employee e
INNER JOIN department d
ON d.id_department = e.id_department
GROUP BY d.name
ORDER BY d.name;
