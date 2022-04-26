CREATE OR REPLACE TRIGGER ge.beforeInsertEmployee
BEFORE INSERT
ON ge.employee
FOR EACH ROW
BEGIN
  :new.usuario_creacion:=USER;
  :new.fec_creacion:=SYSDATE;
END beforeInsertEmployee;
