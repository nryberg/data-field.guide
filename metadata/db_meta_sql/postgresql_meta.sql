SELECT 
      table_catalog as Database_name,
      'Postgresql' as Database_type,
      'localhost' as Database_server, -- replace as needed
      TABLE_SCHEMA as schema_name,
      TABLE_NAME as table_name,
      column_name as column_name,
      ordinal_position as column_ordinal,
      data_type as column_type,
      character_maximum_length as column_length,
      numeric_precision as column_precision,
      numeric_scale as column_scale,
      current_date as run_date

FROM  information_schema.columns
WHERE table_schema = 'public'
ORDER BY TABLE_NAME, column_name ASC
