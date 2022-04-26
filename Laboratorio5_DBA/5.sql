select OWNER || '.' || table_name || ': ' || COMMENTS from ALL_TAB_COMMENTS
where owner in ('UN');
