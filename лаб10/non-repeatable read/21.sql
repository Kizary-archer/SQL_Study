BEGIN TRANSACTION ISOLATION LEVEL READ COMMITTED;
SELECT pg_backend_pid();
update agent set "percent" = "percent" + 5
where id_agent = 1;
select locktype,virtualxid,mode,granted,pid from pg_catalog.pg_locks where locktype <> 'relation'; 
commit;