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