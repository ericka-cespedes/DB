CREATE SEQUENCE s_course
START WITH 0
INCREMENT BY 1
MINVALUE 0
MAXVALUE 10000000
NOCACHE
NOCYCLE;

CREATE SEQUENCE s_major
START WITH 0
INCREMENT BY 1
MINVALUE 0
MAXVALUE 10000000
NOCACHE
NOCYCLE;

CREATE SEQUENCE s_student
START WITH 0
INCREMENT BY 1
MINVALUE 0
MAXVALUE 10000000
NOCACHE
NOCYCLE;

INSERT INTO COURSE
(course_id, course_name)
VALUES(s_course.nextval, 'CDI');

INSERT INTO COURSE 
(course_id,course_name)
VALUES(S_COURSE.nextval,'Análisis de Algortimos');

INSERT INTO COURSE 
(course_id,course_name)
VALUES(S_COURSE.nextval,'Cálculo y Algebra Lineal');

INSERT INTO COURSE 
(course_id,course_name)
VALUES(S_COURSE.nextval,'Base de datos I');

INSERT INTO major
(major_id,major_name)
VALUES(s_major.nextval,'Ingeniería en Computación');

INSERT INTO major
(major_id,major_name)
VALUES(s_major.nextval,'Ingeniería en Computadores');

INSERT INTO major
(major_id,major_name)
VALUES(s_major.nextval,'Ingeniería en Mecatronica');

INSERT INTO student
(student_id, first_name, last_name, email, persona_id)
VALUES(s_student.nextval, 'Daniel','López Amador','daniel0567@hotmail.com',3076923);

INSERT INTO student
(student_id, first_name, last_name, email, persona_id)
VALUES(s_student.nextval, 'Meylin','Martínez','meylinmg2@gmail.com',4076923);

INSERT INTO student
(student_id, first_name, last_name, email, persona_id)
VALUES(s_student.nextval, 'Alejandra','Rivera','ale0701@hotmail.com',103450978);
INSERT INTO student
(student_id, first_name, last_name, email, persona_id)
VALUES(s_student.nextval, 'Mauricio','Avilés','aviles_elprofe@gmail.com',107690236);

INSERT INTO course_x_major
(course_id, major_id)
VALUES (1,3);

INSERT INTO course_x_major
(course_id, major_id)
VALUES (2,1);

INSERT INTO course_x_major
(course_id, major_id)
VALUES (4,1);

INSERT INTO course_X_major
(course_id,major_id)
VALUES(3,1);

INSERT INTO student_x_course
(student_id,course_id,state_course)
VALUES(1,1,'Aprovado');

INSERT INTO student_x_course
(student_id,course_id,state_course)
VALUES(2,2,'Aprovado');

INSERT INTO student_x_course
(student_id,course_id,state_course)
VALUES(3,4,'Aprovado');

INSERT INTO student_x_course
(student_id,course_id,state_course)
VALUES(4,1,'Retirado');

INSERT INTO student_x_major
(student_id,major_id)
VALUES(1,3);

INSERT INTO student_X_major
(student_id,major_id)
VALUES(2,1);

INSERT INTO student_x_major
(student_id,major_id)
VALUES(3,1);

INSERT INTO student_x_major
(student_id, major_id)
VALUES(4,3);
