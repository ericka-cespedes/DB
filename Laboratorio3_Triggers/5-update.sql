CREATE OR REPLACE TRIGGER ad.beforeUpdateBitacora
BEFORE UPDATE
ON ad.ad_bitacora
FOR EACH ROW
BEGIN
  :new.usuario_ultima_modificacion:=USER;
  :new.fec_ultima_modificacion:=SYSDATE;
END beforeUpdateBitacora;
