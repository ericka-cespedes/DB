CREATE OR REPLACE PACKAGE AD_PACKAGE IS

TRIGGER ad.beforeInsertBitacora;
TRIGGER ad.beforeUpdateBitacora;

END AD_PACKAGE;

CREATE OR REPLACE PACKAGE BODY AD_PACKAGE AS
TRIGGER ad.beforeInsertBitacora
BEFORE INSERT
ON ad.ad_bitacora
For each row
BEGIN
  :new.usuario_creacion:=USER;
  :new.fec_creacion:=SYSDATE;
END beforeInsertBitacora;

TRIGGER ad.beforeUpdateBitacora
BEFORE UPDATE
ON ad.ad_bitacora
FOR EACH ROW
BEGIN
  :new.usuario_ultima_modificacion:=USER;
  :new.fec_ultima_modificacion:=SYSDATE;
END beforeUpdateBitacora;

END AD_PACKAGE;