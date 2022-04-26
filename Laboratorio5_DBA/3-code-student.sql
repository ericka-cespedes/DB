alter table UN.STUDENT disable constraint STUDENT_EMAIL_UK;
alter table UN.STUDENT disable constraint PK_STUDENT;
alter table UN.STUDENT disable constraint STUDENT_PERSONA_ID_NN;
alter table UN.STUDENT disable constraint STUDENT_LAST_NAME_NN;
alter table UN.STUDENT disable constraint STUDENT_FIRST_NAME_NN;
alter table UN.STUDENT disable constraint STUDENT_STUDENT_ID_NN;

--la llave primaria no se puede desactivar porque existen dependencias
