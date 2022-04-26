select 'alter table ' || OWNER || '.' || table_name || ' disable constraint ' || constraint_name || ';' from ALL_cons_columns
where owner in ('UN');
