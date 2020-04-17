SELECT 'Things.sqlite3' as Database_Name,
       'SQLite' as Database_Type,
       '(file based)'   as Database_server,
       NULL       as Schema_Name,
       m.name as Table_Name, 
       p.name as Column_Name,
       p.cid as Column_Ordinal,
       p.type as Column_Type,
       NULL as Column_Length,
        NULL as Column_Precision,
        NULL AS Column_Scale,
       date('now') as Run_Date
FROM sqlite_master m
left outer join pragma_table_info((m.name)) p
     on m.name <> p.name
order by Table_Name, Column_Ordinal, Column_Name
;
