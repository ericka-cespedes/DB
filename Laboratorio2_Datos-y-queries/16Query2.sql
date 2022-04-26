CREATE VIEW "Query2" AS
SELECT first_name||' '||last_name nombre, salary
FROM (SELECT first_name, last_name, salary, RANK() OVER (ORDER BY salary DESC)
salary_rank
FROM employee)
WHERE salary_rank <= 1;

SELECT*FROM "Query2";
