  SELECT 'xyz' as database_name,
      'abc' as server,
      'Oracle' as Database_Type,
      Owner as schema_owner_name,
      table_name as table_name,
      column_name as column_name,
      column_id as column_ordinal,
       data_type as Column_type,
       data_length as Column_length,
       data_precision as Column_precision,
       data_scale as Column_scale,
       Current_Date as Run_Date
  FROM all_tab_columns
WHERE OWNER IN ('def', 'ghi')
ORDER BY Owner, TABLE_NAME, COLUMN_ID;