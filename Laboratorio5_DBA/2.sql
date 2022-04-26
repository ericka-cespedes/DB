select 'TRUNCATE table ' || OWNER || '.' || table_name || ';' from ALL_ALL_TABLES
where owner in ('UN');

-- Si esta conectado desde UN entonces se crean los mismos scripts, pero si es desde otro esquema entonces no.
