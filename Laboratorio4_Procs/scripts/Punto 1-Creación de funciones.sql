
CREATE FUNCTION getCedula (id_employee_p IN NUMBER) RETURN NUMBER IS 
    resultGetCedula NUMBER(9);
   BEGIN
      SELECT person_id INTO resultGetCedula FROM employee
      WHERE id_employee_p=employee.id_employee;
      RETURN (resultgetcedula);
   END;
   
CREATE FUNCTION getNombreDepartamento(id_departamento_p IN NUMBER) RETURN VARCHAR2 IS
    resultNombreDepartamento VARCHAR2(30);
    BEGIN
        SELECT name INTO resultNombreDepartamento FROM department
        WHERE id_departamento_p=id_department;
        RETURN (resultNombreDepartamento);
    END;
   
CREATE FUNCTION calcularAumento(id_employee_p IN NUMBER, por_aumento IN NUMBER) RETURN NUMBER IS
    resultAumento NUMBER(12);
    BEGIN 
        SELECT salary INTO resultAumento FROM EMPLOYEE 
        WHERE id_employee_p=id_employee;
        RETURN (resultAumento+por_aumento);
    END;


CREATE FUNCTION getEdad(id_employee_p IN NUMBER)RETURN NUMBER IS 
    resultEdad NUMBER;
    edadTemp DATE;
    BEGIN 
        SELECT born_date INTO edadTemp FROM employee e
        WHERE id_employee_p=e.id_employee;
        SELECT TRUNC(months_between(sysdate,birth_date)/12)YEAR INTO resultEdad FROM (SELECT to_date(edadTemp)birth_date FROM dual);
        RETURN(resultEdad);
    END;
    
SELECT getCedula(3) FROM dual; 
SELECT getNombreDepartamento(5) FROM dual;
SELECT calcularAumento(9,30000) FROM dual;
SELECT getEdad(3) FROM DUAL;
