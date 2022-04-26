SELECT e.id_department, d.name Department_Name, COUNT(*) Quantity_of_Employees FROM employee e
INNER JOIN department d
ON d.id_department = e.id_department
GROUP BY e.id_department, d.name
ORDER BY e.id_department;
