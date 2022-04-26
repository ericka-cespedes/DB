--Crear script en vez de procedimiento

select OWNER || '.' || table_name || ': ' || COMMENTS from ALL_TAB_COMMENTS
where owner in ('UN')
UNION
select OWNER || '.' || table_name || '.' || column_name || ': ' || COMMENTS from ALL_COL_COMMENTS
where owner in ('UN');