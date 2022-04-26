select 'TRUNCATE table ' || OWNER || '.' || table_name || ';' from ALL_ALL_TABLES
where owner in ('UN');

-- Crea los scripts para borrar los datos de las tablas
