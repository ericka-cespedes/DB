CREATE OR REPLACE PACKAGE PACKAGE_EMPLOYEE IS
PROCEDURE insertEmployee;
END PACKAGE_EMPLOYEE;

CREATE OR REPLACE PACKAGE BODY PACKAGE_EMPLOYEE AS
PROCEDURE insertEmployee IS
BEGIN
  INSERT INTO employee
  VALUES(s_employee.nextval, s_employee.currval, 'David', 'Martinez', 'garay'||s_employee.currval||'@gmail.com', '(506)8898-6632', to_date('01/01/2019','DD/MM/YYYY'), 20000, 1, to_date('10/10/1998','DD/MM/YYYY'), NULL, NULL, NULL, NULL);
  commit;
END;
END PACKAGE_EMPLOYEE;
