INSERT INTO employee
VALUES(1, 'Ericka', 'Cespedes', 'ericka.cespedes@gmail.com', '(506)2227-2915', to_date('01/01/2019','DD/MM/YYYY'), 20000, 1, to_date('19/04/2019','DD/MM/YYYY'));
INSERT INTO employee
VALUES(2, 'Daniela', 'Moya', 'daniela.moya@gmail.com', '(506)2221-0015', to_date('10/03/1980','DD/MM/YYYY'), 25000, 2, to_date('20/04/2010','DD/MM/YYYY'));
INSERT INTO employee
VALUES(3, 'Daniel', 'Araya', 'daniel_araya@gmail.com', '(506)2220-1016', to_date('27/08/1990','DD/MM/YYYY'), 10000, 3, to_date('15/10/2005','DD/MM/YYYY'));
INSERT INTO employee
VALUES(4, 'Ariel', 'Mora', 'arielmora25@gmail.com', '(506)2225-2551', to_date('25/12/1990','DD/MM/YYYY'), 15000, 2, to_date('30/01/2010','DD/MM/YYYY'));
INSERT INTO employee
VALUES(5, 'Mary', 'Galiano', 'maryygal@gmail.com', '(506)22227-1515', to_date('05/05/1994','DD/MM/YYYY'), 20000, 1, to_date('10/01/2018','DD/MM/YYYY'));
INSERT INTO employee
VALUES(6, 'Gloriana', 'Salazar', 'glorysalazar@gmail.com', '(506)2226-5541', to_date('19/05/1997','DD/MM/YYYY'), 30000, 2, to_date('20/04/2010','DD/MM/YYYY'));
INSERT INTO employee
VALUES(7, 'Eduardo', 'Morales', 'edomorales@gmail.com', '(506)2224-1771', to_date('08/06/1993','DD/MM/YYYY'), 25000, 1, to_date('19/04/2015','DD/MM/YYYY'));
INSERT INTO employee
VALUES(8, 'Carlos', 'Salazar', 'carlos.salazar@gmail.com', '(506)2227-5556', to_date('24/04/1960','DD/MM/YYYY'), 30000, 3, to_date('01/02/2011','DD/MM/YYYY'));
INSERT INTO employee
VALUES(9, 'Paula', 'Bassett', 'paula_bassett@gmail.com', '(506)2210-5560', to_date('06/10/1985','DD/MM/YYYY'), 25000, 3, to_date('21/04/2015','DD/MM/YYYY'));
INSERT INTO employee
VALUES(10, 'Gabriela', 'Quesada', 'quesadagaby@gmail.com', '(506)2224-0015', to_date('15/04/1970','DD/MM/YYYY'), 21000, 3, to_date('10/11/2010','DD/MM/YYYY'));
INSERT INTO employee
VALUES(11, 'Mauricio', 'Cespedes', 'maucespedes@gmail.com', '(506)2226-1114', to_date('30/10/1984','DD/MM/YYYY'), 30000, 4, to_date('07/05/2014','DD/MM/YYYY'));
INSERT INTO employee
VALUES(12, 'Daniel', 'Meneses', 'daniel.meneses@gmail.com', '(506)2224-2115', to_date('05/12/1987','DD/MM/YYYY'), 10000, 5, to_date('21/02/2012','DD/MM/YYYY'));
INSERT INTO employee
VALUES(13, 'Anai', 'Moringa', 'moringaanai@gmail.com', '(506)2226-1554', to_date('10/03/1996','DD/MM/YYYY'), 10000, 6, to_date('25/06/2017','DD/MM/YYYY'));
INSERT INTO employee
VALUES(14, 'Rodrigo', 'Fallas', 'rodrigofallas@gmail.com', '(506)2222-1014', to_date('22/07/1985','DD/MM/YYYY'), 10000, 7, to_date('23/01/2018','DD/MM/YYYY'));
INSERT INTO employee
VALUES(15, 'Charlie', 'Jimenez', 'charliejimenez@gmail.com', '(506)2221-6004', to_date('21/05/1997','DD/MM/YYYY'), 25000, 2, to_date('20/04/2015','DD/MM/YYYY'));
INSERT INTO employee
VALUES(16, 'Jose', 'Quiros', 'jose.quiros@gmail.com', '(506)2221-1665', to_date('10/10/1993','DD/MM/YYYY'), 22000, 4, to_date('05/10/2015','DD/MM/YYYY'));

--Carlos, Gloriana y Mauricio tienen 30 000 de salario.
--Seguidamente (2) Daniela, (7) Eduardo, (9) Paula, (15) Charlie tienen 25000 de salario
-- En total son 7 los salarios mas altos: 3 con 30 y 4 con 25

-- (A) La insercion corresponde a lenguaje DML
-- (B) La creacion de la tabla corresponde a lenguaje DDL
-- (C) Si se encuentran los datos registrados luego de salir y volver a entrar. Los datos se encuentran registrados porque estan en los datafiles dentro del
--     tablespace. Cuando se inicia la base de datos se cargan esos directorios.
--     Cabe resaltar que todo el lenguaje DML para que sea registrado en la base de datos, tiene que hacersele un commit para que sea agregado a la BD.
