BEGIN
DBMS_SCHEDULER.create_job (
job_name        => 'A01',
job_type        => 'PLSQL_BLOCK',
job_action      => 'BEGIN PACKAGE_EMPLOYEE.insertEmployee; END;',
start_date      => SYSTIMESTAMP,
repeat_interval => 'freq=secondly',
end_date        => NULL,
enabled         => TRUE,
comments        => 'Mi primer job');
END;

--a.¿Qué significa “A01”?
-- Es el nombre del JOB
--b.¿Se puede cambiar “A01”?
-- Si, se le puede poner el nombre que quiera
--c.¿Qué implicación tendría el cambio del punto b. en el código del procedimiento a ejecutar en el job?
-- El nombre del job y del procedimiento no tiene ninguna relacion. Se puede crear un job con otro nombre
-- que llame al mismo procedimiento
--d.¿Qué significa freq=secondly?
-- La frecuencia con la cual se repite el intervalo, en este caso, por segundo
--e.¿Qué otros valores puede tener freq?
-- YEARLY, MONTHLY, WEEKLY, DAILY, HOURLY, MINUTELY, SECONDLY
--f.¿Qué implicación tiene que end_date esté en NULL?
-- El job correra infinitamente a menos que haya un max_runs o max_failures
--g.¿Qué significa SYSTIMESTAMP?
-- Comienza inmediatamente, apenas sea creado. Es la fecha y hora actual del sistema.
