
CREATE FUNCTION getNombre(id_estudiante_cedula IN NUMBER) RETURN VARCHAR2 IS
    name_result VARCHAR2(76);
    BEGIN
    SELECT first_name||' '||last_name INTO name_result FROM student
    WHERE id_estudiante_cedula=persona_id;
    RETURN (name_result);
END;

CREATE FUNCTION getNombre_studentID (carnet IN NUMBER) RETURN VARCHAR2 IS 
    name_result VARCHAR2(76);
    BEGIN
    SELECT first_name||' '||last_name INTO name_result FROM student
    WHERE carnet=student_id;
    RETURN (name_result);
END;

CREATE FUNCTION getCorreo(id_student IN NUMBER)RETURN VARCHAR2 IS
    correo_result VARCHAR2(38);
    BEGIN
    SELECT email INTO correo_result FROM student
    WHERE id_student=student_id;
    RETURN(correo_result);
END;

CREATE FUNCTION getCarrera(id_estudiante IN NUMBER) RETURN VARCHAR2 IS
    carrera_result VARCHAR2(38);
    BEGIN
    SELECT major_name INTO carrera_result FROM major m
    INNER JOIN student_x_major sm
    ON m.major_id=sm.major_id and id_estudiante=sm.student_id;
    RETURN (carrera_result);
END;

CREATE FUNCTION getCursos(id_estudiante IN NUMBER) RETURN VARCHAR2 IS
    cursos_result VARCHAR2(400);
    BEGIN
    SELECT c.course_name||' '||sc.state_course INTO cursos_result FROM course c
    INNER JOIN student_x_course sc
    ON c.course_id=sc.course_id and id_estudiante=sc.student_id;
    RETURN(cursos_result);
END;

SELECT getNombre(4076923) FROM dual;
SELECT getNombre_studentID(1) FROM dual;
SELECT getCorreo(3) FROM DUAL;
SELECT getCarrera(4) FROM DUAL;
SELECT getCursos(1) FROM dual;
