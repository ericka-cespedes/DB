CREATE TABLESPACE AD_Data
       DATAFILE 'C:\app\Adriana\oradata\demo\addata01.dbf'
       SIZE 10M
       REUSE
       AUTOEXTEND ON
       NEXT 512k
       MAXSIZE 200M;

CREATE TABLESPACE ad_Ind
       DATAFILE 'C:\app\Adriana\oradata\demo\adind01.dbf'
       SIZE 10M
       REUSE
       AUTOEXTEND ON
       NEXT 512k
       MAXSIZE 200M;
       
CREATE USER ad
       IDENTIFIED BY ad
       DEFAULT TABLESPACE ad_data
       QUOTA 10M ON ad_data
       TEMPORARY TABLESPACE temp
       QUOTA 5M ON system;

GRANT CONNECT TO ad;
GRANT CREATE TABLE TO ad;
