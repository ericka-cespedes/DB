ALTER TABLE employee
      ADD CONSTRAINT pk_employee PRIMARY KEY(id_employee)
      USING INDEX
      TABLESPACE ad_ind PCTFREE 20
      STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);

ALTER TABLE department
      ADD CONSTRAINT pk_department PRIMARY KEY(id_department)
      USING INDEX
      TABLESPACE ad_ind PCTFREE 20
      STORAGE (INITIAL 10K NEXT 10K PCTINCREASE 0);