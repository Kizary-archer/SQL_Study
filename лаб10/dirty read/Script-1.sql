BEGIN TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;
SELECT pg_backend_pid();

update agent set "percent" = 5
where id_agent = 1;

select agent.* from agent
where agent."percent" <10;

select locktype,virtualxid,mode,granted,pid from pg_catalog.pg_locks; 
commit;