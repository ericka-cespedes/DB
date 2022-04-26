CREATE OR REPLACE PACKAGE UN_FUNCTIONS IS

FUNCTION getCarrera(id_estudiante NUMBER) RETURN VARCHAR2;
FUNCTION getCorreo(id_student NUMBER) RETURN VARCHAR2;
FUNCTION getCursos(id_estudiante NUMBER) RETURN VARCHAR2;
FUNCTION getNombre(id_estudiante_cedula NUMBER) RETURN VARCHAR2;
FUNCTION getNombre_studentID (carnet NUMBER) RETURN VARCHAR2;

END UN_FUNCTIONS;

CREATE OR REPLACE PACKAGE BODY UN_FUNCTIONS AS
FUNCTION getCarrera(id_estudiante IN NUMBER) RETURN VARCHAR2 IS
    carrera_result VARCHAR2(38);
    BEGIN
    SELECT major_name INTO carrera_result FROM major m
    INNER JOIN student_x_major sm
    ON m.major_id=sm.major_id and id_estudiante=sm.student_id;
    RETURN (carrera_result);
END;

FUNCTION getCorreo(id_student IN NUMBER)RETURN VARCHAR2 IS
    correo_result VARCHAR2(38);
    BEGIN
    SELECT email INTO correo_result FROM student
    WHERE id_student=student_id;
    RETURN(correo_result);
END;

FUNCTION getCursos(id_estudiante IN NUMBER) RETURN VARCHAR2 IS
    cursos_result VARCHAR2(400);
    BEGIN
    SELECT c.course_name||' '||sc.state_course INTO cursos_result FROM course c
    INNER JOIN student_x_course sc
    ON c.course_id=sc.course_id and id_estudiante=sc.student_id;
    RETURN(cursos_result);
END;

FUNCTION getNombre(id_estudiante_cedula IN NUMBER) RETURN VARCHAR2 IS
    name_result VARCHAR2(76);
    BEGIN
    SELECT first_name||' '||last_name INTO name_result FROM student
    WHERE id_estudiante_cedula=persona_id;
    RETURN (name_result);
END;

FUNCTION getNombre_studentID (carnet IN NUMBER) RETURN VARCHAR2 IS 
    name_result VARCHAR2(76);
    BEGIN
    SELECT first_name||' '||last_name INTO name_result FROM student
    WHERE carnet=student_id;
    RETURN (name_result);
END;

END UN_FUNCTIONS;