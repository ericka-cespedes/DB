CREATE TABLESPACE UN_Data
       DATAFILE 'C:\DBPRUEBA\ARCHIVOS BD\Schema UN\UN_Data.dbf'
       SIZE 10M
       REUSE 
       AUTOEXTEND ON
       NEXT 512k
       MAXSIZE 200M;

CREATE TABLESPACE UN_Ind01
       DATAFILE 'C:\DBPRUEBA\ARCHIVOS BD\Schema UN\UN_Ind01'
       SIZE 10M
       REUSE
       AUTOEXTEND ON
       NEXT 512k
       MAXSIZE 200M;
       
CREATE USER UN
       IDENTIFIED BY UN
       DEFAULT TABLESPACE UN_Data
       QUOTA UNLIMITED ON UN_Data;
       
GRANT CONNECT TO UN;
grant create table to UN;

