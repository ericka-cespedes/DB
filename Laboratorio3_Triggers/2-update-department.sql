CREATE OR REPLACE TRIGGER ge.beforeUpdateDepartment
BEFORE UPDATE
ON ge.department
FOR EACH ROW
BEGIN
  :new.usuario_ultima_modificacion:=USER;
  :new.fec_ultima_modificacion:=SYSDATE;
END beforeUpdateDepartment;
