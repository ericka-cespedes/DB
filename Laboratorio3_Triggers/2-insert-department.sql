CREATE OR REPLACE TRIGGER ge.beforeInsertDepartment
BEFORE INSERT
ON ge.department
For each row
BEGIN
  :new.usuario_creacion:=USER;
  :new.fec_creacion:=SYSDATE;
END beforeInsertDepartment;
