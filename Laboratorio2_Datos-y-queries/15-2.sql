-- Se quiere cambiar los empleados con salario de 10000 a 2500

UPDATE employee
SET salary = 2500
WHERE salary = 10000;

-- Se les cambio el salario a id = 3, 12, 13, 14
-- El empleado con id = 2 se habia borrado en el punto 3

SELECT*FROM "Employees whose salary > $2500";
