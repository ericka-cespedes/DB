CREATE OR REPLACE TRIGGER ge.beforeUpdateEmployee
BEFORE UPDATE
ON ge.employee
FOR EACH ROW
BEGIN
  :new.usuario_ultima_modificacion:=USER;
  :new.fec_ultima_modificacion:=SYSDATE;
END beforeUpdateEmployee;
