BEGIN TRANSACTION ISOLATION LEVEL Repeatable Read;
SELECT pg_backend_pid();
update agent set "percent" = 10
where id_agent = 4;
select locktype,virtualxid,mode,granted,pid from pg_catalog.pg_locks where locktype <> 'relation'; 
commit;