CREATE USER ad
       IDENTIFIED BY ad
       DEFAULT TABLESPACE ad_data
       QUOTA 10M ON ad_data
       TEMPORARY TABLESPACE temp
       QUOTA 5M ON system;

GRANT CONNECT TO ad;
GRANT CREATE TABLE TO ad;

-- Preguntas 2
-- a) Sí se pueden crear varios esquemas.
-- b) Es preferible tener más de un esquema para que cada conjunto de objetos o tablas le pertenezcan a un usuario solamente. Puede ser por razones de organización, encapsulamiento y de seguridad. Primero, System es el que crea los esquemas de usuarios y otorga permisos. Por lo tanto, solamente el usuario que tenga los permisos correspondientes es el propietario y puede modificar el esquema.