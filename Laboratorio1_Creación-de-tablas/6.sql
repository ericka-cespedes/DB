CREATE TABLESPACE CU_Data
       DATAFILE 'C:\app\Ericka\oradata\orcl\cudata01.dbf'
       SIZE 10M
       REUSE
       AUTOEXTEND ON
       NEXT 512k
       MAXSIZE 200M;

CREATE TABLESPACE CU_Ind
       DATAFILE 'C:\app\Ericka\oradata\orcl\cuind01.dbf'
       SIZE 10M
       REUSE
       AUTOEXTEND ON
       NEXT 512k
       MAXSIZE 200M;

CREATE USER cu
       IDENTIFIED BY cu
       DEFAULT TABLESPACE cu_data
       QUOTA 10M ON cu_data
       TEMPORARY TABLESPACE temp
       QUOTA 5M ON system;

GRANT CONNECT TO cu;
GRANT CREATE TABLE TO cu;