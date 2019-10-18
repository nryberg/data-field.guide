SELECT   
        col.TABLE_CATALOG as Database_Name,
        'Snowflake' as Database_Type,
        'xyzabc.us-east-1.snowflakecomputing.com' as Server_Name,
        col.TABLE_SCHEMA as Schema_Name,
        col.TABLE_NAME as Table_Name,
        col.COLUMN_NAME as Column_Name,
        col.ORDINAL_POSITION as Column_Ordinal,
        col.DATA_TYPE as Column_Type,
        col.CHARACTER_MAXIMUM_LENGTH as Column_Length,
        col.NUMERIC_PRECISION as Column_Precision,
        col.NUMERIC_PRECISION_RADIX AS Column_Scale,
        CURRENT_DATE as Run_Date
FROM [Database].information_schema.columns as col
ORDER BY TABLE_CATALOG, TABLE_SCHEMA, TABLE_NAME, COLUMN_NAME
