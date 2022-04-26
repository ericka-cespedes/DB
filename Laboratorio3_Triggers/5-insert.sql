CREATE OR REPLACE TRIGGER ad.beforeInsertBitacora
BEFORE INSERT
ON ad.ad_bitacora
For each row
BEGIN
  :new.usuario_creacion:=USER;
  :new.fec_creacion:=SYSDATE;
END beforeInsertBitacora;
