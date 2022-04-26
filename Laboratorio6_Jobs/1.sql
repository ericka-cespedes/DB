-- Create Job Parametros

-- job_name: nombre del job, debe ser unico en el esquema. No deben haber
-- tablas con el mismo nombre por ejemplo. Se puede usar GENERATE_JOB_NAME
-- y se generara el nombre por el Scheduler. Si el nombre no es especificado,
-- ocurrira un error.

-- job_type: especifica el tipo de job que se esta creando. Si no se especifica,
-- ocurrira un error. Hay diferentes tipos que se pueden usar:
-- 'PLSQL_BLOCK' significa que el job es un bloque anonimo de PL/SQL. Argumentos
-- en el job o tipo de programa deben ser 0.
-- 'STORED_PROCEDURE' especifica que el job es un procedimiento almacenado de 
-- Java o PL/SQL, o un subprograma externo de C. Solo procedimientos son
-- aceptados, no funciones.
-- 'EXECUTABLE' especifica que el job va a ser ejecutado fuera de la BD usando un
-- ejecutable externo. Estos pueden ser ejecutados desde la terminal de comandos
-- del sistema operativo. Se debe hacer un GRANT CREATE EXTERNAL JOB para crear
-- un job de este tipo.
-- 'CHAIN' especifica que job es una cadena. El numero de argumentos debe ser 0.
-- 'EXTERNAL_SCRIPT' especifica que el job es un script externo. Para Windows,
-- cmd.exe. Para Ubuntu, sh.
-- 'SQL_SCRIPT' especifica que el job es un SQL*Plus script. Se debe hacer un GRANT
-- CREATE EXTERNAL JOB para crear un job de este tipo.
-- 'BACKUP_SCRIPT' especifica que el job es un RMAN backup script. Se debe hacer un
-- GRANT CREATE EXTERNAL JOB para crear un job de este tipo.

-- job_action: la accion del job. Si no es especificado, ocurrira un error. Se asignan
-- de acuerdo al tipo del job.
-- Para un PL/SQL block:  BEGIN my_proc(); END; o DECLARE arg pls_integer:= 10;
-- BEGIN my_proc2(arg); END;
-- Para un procedimiento almacenado: job_action_action=>'"Schema"."Procedure"'
-- Para un ejecutable: se usa ? para acceder a la direccion en el directorio de
-- Oracle. Se usa @ para acceder al SID de la instancia actual de Oracle.
-- Para una cadena: la accion es el nombre de la objeto cadena del Scheduler.
-- Para un script externo: se pone la direccion al script del sistema operativo
-- Para un script SQL: la direccion al script SQL*Plus
-- Para un backup script: la direccion al script RMAN.

-- number_of_arguments: especifica la cantidad de argumentos que el job espera.
-- El rango es de 0 a 255, el default es 0.

-- program_name: el nombre del programa asociado con el job. Por ejemplo, para un
-- programa de tipo ejecutable, se pone EXECUTABLE.

-- start_date: la fecha inicial en la cual el job va a comenzar. Si se deja en NULL,
-- el job comienza apenas el job se habilitado (ENABLE).

-- event_condition: expresion condicional basada en las columnas de la tabla de
-- eventos   tab.user_data

-- queue_spec: la queue donde los eventos en donde este job va a comenzar, estan
-- enqueued.

-- repeat_interval: especifica la repeticion del job; se utiliza la sintaxis de
-- calendarizacion 'Calendaring Syntax' o expresiones PL/SQL

-- schedule_name: nombre del schedule, ventada o grupo de ventanas asociadas a este
-- job.

-- job_class: clase del job

-- end_date: fecha y hora cuando termina. Si auto_drop es TRUE, se le hace un drop
-- al job. Si auto_drop es FALSE, el job es deshabilitado y el estado del job cambia
-- a completado (STATE = COMPLETED). Si la fecha no se especifica, correra hasta
-- la eternidad a menos que haya un valor de max_runs o max_failures.
-- Este valor debe ser puesto siempre despues de start_date o el job fallara.

--comments: se usa para comentar el job, por default es nulo.

-- job_style: REGULAR o LIGHTWEIGHT (el segundo solo cuando hace referencia a un
-- objeto del programa). El default es REGULAR

-- credential_name: solo aplica para jobs de BDs remotas o jobs externos remotos.
-- Se usa nombre de la credencial, CREATE_CREDENTIAL Procedure.

-- destination_name: puede ser un solo nombre de destino o un grupo.
-- solo aplica para jobs de BDs remotas o jobs externos remotos.
-- Se usa CREATE_DATABASE_DESTINATION Procedure o CREATE GROUP Procedure.

-- enabled: TRUE o FALSE para habilitado el job apenas es creado. Se habilita
-- cambiando este valor por TRUE o usando 'ENABLE procedure'

-- auto_drop: Si es TRUE se le hara un drop al job apenas sea completado o
--deshabilitado.
-- Si es FALSE al job no se le hace un drop y la metadata es conservada a menos
-- que se le haga un DROP_JOB al procedimiento.
-- El valor por default es TRUE.