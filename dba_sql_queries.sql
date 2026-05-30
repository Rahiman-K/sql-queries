-- This query lists all user-created application tables by filtering out Oracle's default system management tables.

SELECT owner, table_name, tablespace_name 
FROM dba_tables 
WHERE owner NOT IN (
    'SYS', 'SYSTEM', 'OUTLN', 'AUDSYS', 'ANONYMOUS', 'AVSYS', 
    'DBSNMP', 'DBSNMP_CORE', 'DBFWUSER', 'GGSYS', 'LBACSYS', 
    'MDSYS', 'OJVMSYS', 'OLAPSYS', 'ORDDATA', 'ORDSYS', 
    'OUTLN', 'SYSBACKUP', 'SYSDG', 'SYSKM', 'SYSRAC', 
    'SYS$UMF', 'WMSYS', 'XDB', 'XS$NULL', 'GSMUSER', 
    'ORDPLUGINS', 'REMOTE_SCHEDULER_AGENT', 'SI_INFORMTN_SCHEMA',
    'DVSYS', 'DVF', 'ORACLE_OCM', 'MDDATA', 'CTXSYS',
    'APPQOSSYS', 'APEX_190300', 'APEX_PUBLIC_USER', 'FLOWS_FILES','DBSFWUSER','GSMADMIN_INTERNAL'
)
ORDER BY owner, table_name;
