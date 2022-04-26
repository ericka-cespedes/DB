CREATE TABLE ad_bitacora
(
       id_bitacora       NUMBER(6), CONSTRAINT pk_ad_bitacora PRIMARY KEY(id_bitacora)
       USING INDEX TABLESPACE ad_ind PCTFREE 20 STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0),
       nom_esquema       VARCHAR2(10),
       nom_tabla         VARCHAR2(30),
       nom_campo         VARCHAR2(30),
       fec_cambio        DATE DEFAULT SYSDATE,
       valor_anterior    VARCHAR2(100),
       valor_actual      VARCHAR2(100)
);
