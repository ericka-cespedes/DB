SELECT DISTINCT 'ALTER ' || object_type || ' ' || OWNER || '.' || object_name || ' compile;' from all_stored_settings
WHERE OWNER IN ('UN', 'GE', 'AD');

-- DISTINCT para que no se repitan los mismos scripts