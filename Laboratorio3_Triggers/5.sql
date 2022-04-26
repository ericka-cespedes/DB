ALTER TABLE ad_bitacora
      ADD fec_creacion  DATE DEFAULT SYSDATE;
ALTER TABLE ad_bitacora
      ADD usuario_creacion   VARCHAR2(10);
ALTER TABLE ad_bitacora
      ADD fec_ultima_modificacion    DATE DEFAULT SYSDATE;
ALTER TABLE ad_bitacora
      ADD usuario_ultima_modificacion     VARCHAR2(10);
