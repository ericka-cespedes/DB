CREATE VIEW "Query1" AS
SELECT rownum id, first_name||' '||last_name nombre, salary
FROM (SELECT first_name, last_name, salary
     FROM employee ORDER BY salary desc)
WHERE rownum <= 1;

SELECT*FROM "Query1";
