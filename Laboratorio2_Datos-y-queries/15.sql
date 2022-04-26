CREATE VIEW "Employees whose salary > $2500" AS
SELECT*FROM employee
WHERE salary > 2500;

SELECT*FROM "Employees whose salary > $2500";

-- El resultado es el correcto, deben de aparecer todos los empleados creados, ya que todos
-- tienen un salario mayor a 2500
