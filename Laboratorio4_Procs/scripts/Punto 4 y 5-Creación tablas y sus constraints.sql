
CREATE TABLE student(
    student_id NUMBER(6) CONSTRAINT student_student_id_nn NOT NULL, CONSTRAINT pk_student PRIMARY KEY(student_id)
    USING INDEX
    TABLESPACE UN_Ind01 PCTFREE 20
    STORAGE(INITIAL 10K NEXT 10K PCTINCREASE 0),
    first_name VARCHAR2(38) CONSTRAINT student_first_name_nn NOT NULL,
    last_name VARCHAR2(38) CONSTRAINT student_last_name_nn NOT NULL,
    email VARCHAR2(38), CONSTRAINT student_email_uk UNIQUE(email),
    persona_id NUMBER(9) CONSTRAINT student_persona_id_nn NOT NULL
);

CREATE TABLE major(
    major_id NUMBER(6) CONSTRAINT major_major_id_nn NOT NULL, CONSTRAINT pk_major PRIMARY KEY(major_id)
    USING INDEX
    TABLESPACE UN_Ind01 PCTFREE 20
    STORAGE(INITIAL 10K NEXT 10K PCTINCREASE 0),
    major_name VARCHAR2(38) CONSTRAINT major_major_name_nn NOT NULL, CONSTRAINT major_major_name_uk UNIQUE(major_name)
);

CREATE TABLE course(
    course_id NUMBER(6) CONSTRAINT course_course_id_nn NOT NULL, CONSTRAINT pk_course PRIMARY KEY(course_id)
    USING INDEX
    TABLESPACE UN_Ind01 PCTFREE 20
    STORAGE(INITIAL 10K NEXT 10K PCTINCREASE 0),
    course_name VARCHAR2(38) CONSTRAINT course_course_name_nn NOT NULL, CONSTRAINT course_course_name_uk UNIQUE(course_name)
);

CREATE TABLE student_x_course(
    student_id NUMBER(6),
    course_id NUMBER(6),
    state_course VARCHAR2(38) CONSTRAINT course_state_nn NOT NULL,
    CONSTRAINT fk_student_x_course_studentID FOREIGN KEY(student_id) REFERENCES student(student_id),
    CONSTRAINT fk_student_x_course_courseID FOREIGN KEY(course_id) REFERENCES course(course_id),
    CONSTRAINT pk_student_x_course PRIMARY KEY(course_id, student_id)
    USING INDEX
    TABLESPACE UN_Ind01 PCTFREE 20
    STORAGE(INITIAL 10K NEXT 10K PCTINCREASE 0)
);

CREATE TABLE course_x_major(
	course_id NUMBER(6),
	major_id NUMBER(6),
	CONSTRAINT course_x_major_majorID FOREIGN KEY(major_id) REFERENCES major(major_id),
	CONSTRAINT course_x_major_courseID FOREIGN KEY(course_id) REFERENCES course(course_id),
	CONSTRAINT pk_course_x_major PRIMARY KEY(course_id,major_id)
        USING INDEX
        TABLESPACE UN_Ind01 PCTFREE 20
        STORAGE(INITIAL 10K NEXT 10K PCTINCREASE 0)
);

CREATE TABLE student_x_major(
    student_id NUMBER(6),
    major_id NUMBER(6),
    CONSTRAINT fk_student_x_major_majorID FOREIGN KEY(major_id) REFERENCES major(major_id),
    CONSTRAINT fk_student_x_major_studentID FOREIGN KEY(student_id) REFERENCES student(student_id),
    CONSTRAINT pk_student_x_major PRIMARY KEY(major_id,student_id)
    USING INDEX
    TABLESPACE UN_Ind01 PCTFREE 20
    STORAGE(INITIAL 10K NEXT 10K PCTINCREASE 0)
);