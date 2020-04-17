SELECT m.name as tableName, 
       p.name as columnName,
       p.type as columnType,
       p.cid as columnOrdinal
FROM sqlite_master m
left outer join pragma_table_info((m.name)) p
     on m.name <> p.name
order by tableName, p.cid, columnName
;
