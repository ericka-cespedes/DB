select 'alter table ' || OWNER || '.' || table_name || ' enable constraint ' || constraint_name || ';'
from ALL_cons_columns
where owner in ('UN');
