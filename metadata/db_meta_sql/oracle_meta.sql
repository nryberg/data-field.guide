 SELECT 'xyz' as Database_name,
        'abc' as Database_server,
        'DB2' as Database_Type,
        TBCreator as Schema_Name,
        TBNAME as Table_Name,
        NAME as Column_Name,
        COLNO as Column_Ordinal,
        COLTYPE as Column_Type,
        LONGLENGTH as Column_Length,
        Length as Column_Precision,
        Scale as Column_scale,
        CURRENT_DATE as Run_Date
FROM SYSIBM.SYSCOLUMNS
ORDER BY TBCreator, TBName, Name
