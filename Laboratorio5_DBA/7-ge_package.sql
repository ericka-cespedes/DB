CREATE OR REPLACE PACKAGE GE_PACKAGE IS

TRIGGER ge.beforeInsertDepartment;
TRIGGER ge.beforeInsertEmployee;
TRIGGER ge.beforeUpdateDepartment;
TRIGGER ge.beforeUpdateEmployee;
TRIGGER beforeUpdateSalary;

END GE_PACKAGE;

CREATE OR REPLACE PACKAGE BODY GE_PACKAGE AS
TRIGGER ge.beforeInsertDepartment
BEFORE INSERT
ON ge.department
For each row
BEGIN
  :new.usuario_creacion:=USER;
  :new.fec_creacion:=SYSDATE;
END beforeInsertDepartment;

TRIGGER ge.beforeInsertEmployee
BEFORE INSERT
ON ge.employee
FOR EACH ROW
BEGIN
  :new.usuario_creacion:=USER;
  :new.fec_creacion:=SYSDATE;
END beforeInsertEmployee;

TRIGGER ge.beforeUpdateDepartment
BEFORE UPDATE
ON ge.department
FOR EACH ROW
BEGIN
  :new.usuario_ultima_modificacion:=USER;
  :new.fec_ultima_modificacion:=SYSDATE;
END beforeUpdateDepartment;

TRIGGER ge.beforeUpdateEmployee
BEFORE UPDATE
ON ge.employee
FOR EACH ROW
BEGIN
  :new.usuario_ultima_modificacion:=USER;
  :new.fec_ultima_modificacion:=SYSDATE;
END beforeUpdateEmployee;

TRIGGER beforeUpdateSalary
before insert or update of salary
on employee
for each row
BEGIN
	INSERT INTO ad.ad_bitacora
  (id_bitacora, nom_esquema, nom_tabla, nom_campo, fec_cambio, valor_anterior, valor_actual)
  VALUES (s_bitacora.nextval, 'GE', 'EMPLOYEE', 'SALARY', SYSDATE, :old.salary, :new.salary);
END beforeUpdateSalary;

END GE_PACKAGE;