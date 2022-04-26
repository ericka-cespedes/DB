ALTER TABLE employee
      ADD fec_creacion  DATE DEFAULT SYSDATE;
ALTER TABLE employee
      ADD usuario_creacion   VARCHAR2(10);
ALTER TABLE employee
      ADD fec_ultima_modificacion    DATE DEFAULT SYSDATE;
ALTER TABLE employee
      ADD usuario_ultima_modificacion     VARCHAR2(10);

ALTER TABLE department
      ADD fec_creacion  DATE DEFAULT SYSDATE;
ALTER TABLE department
      ADD usuario_creacion   VARCHAR2(10);
ALTER TABLE department
      ADD fec_ultima_modificacion    DATE DEFAULT SYSDATE;
ALTER TABLE department
      ADD usuario_ultima_modificacion     VARCHAR2(10);
