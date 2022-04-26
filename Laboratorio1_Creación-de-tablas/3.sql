-- Create table employee
CREATE TABLE employee
(
       id_employee    NUMBER(6) not null,
       first_name     VARCHAR2(20),
       last_name      VARCHAR2(25),
       email          VARCHAR2(25),
       phone_number   VARCHAR2(20),
       hire_date      DATE default SYSDATE,
       salary         NUMBER(8,2),
       id_department  NUMBER(4),
       hiredate DATE
);
tablespace AD_DATA
	pctfree 10
	initrans 1
	maxtrans 255;

--Create table department
CREATE TABLE department
(
	id_department NUMBER(4) not null,
	name          VARCHAR2(30),
	id_manager    NUMBER(6)
)
tablespace AD_DATA
	pctfree 10
	initrans 1
	maxtrans255;