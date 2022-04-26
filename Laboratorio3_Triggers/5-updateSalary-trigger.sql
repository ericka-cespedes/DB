CREATE OR REPLACE TRIGGER beforeUpdateSalary
before insert or update of salary
on employee
for each row
BEGIN
	INSERT INTO ad.ad_bitacora
  (id_bitacora, nom_esquema, nom_tabla, nom_campo, fec_cambio, valor_anterior, valor_actual)
  VALUES (s_bitacora.nextval, 'GE', 'EMPLOYEE', 'SALARY', SYSDATE, :old.salary, :new.salary);
END beforeUpdateSalary;
