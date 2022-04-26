-- Create/Recreate check constraints table employee

ALTER TABLE employee
	ADD CONSTRAINT employee_email_uk UNIQUE (email)
	USING INDEX
	TABLESPACE AD_DATA
	PCTFREE 10
	INITRANS 2
	MAXTRANS 255;

ALTER TABLE employee
	ADD CONSTRAINT employee_email_nn
	CHECK ("email" IS NOT NULL);

ALTER TABLE employee
	ADD CONSTRAINT employee_hiredate_nn
	CHECK ("hire_date" IS NOT NULL);

ALTER TABLE employee
	ADD CONSTRAINT employee_lastname_nn
	CHECK ("last name" IS NOT NULL);

ALTER TABLE employee
	ADD CONSTRAINT employee_salary_min
	CHECK (salary>0);

ALTER TABLE employee
	ADD CONSTRAINT employee_salary_nn
	CHECK ("salary" IS NOT NULL);

-- Create/Recreate check constraints table department
ALTER TABLE department
	ADD CONSTRAINT dept_name_nn
	check ("name" is not null);