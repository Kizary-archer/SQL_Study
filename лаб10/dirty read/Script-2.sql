BEGIN TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;
SELECT pg_backend_pid();

select agent.* from agent
where agent."percent" <10;

select locktype,virtualxid,mode,granted,pid from pg_catalog.pg_locks; 
commit;