BEGIN TRANSACTION ISOLATION LEVEL READ COMMITTED;
SELECT pg_backend_pid();

select agent."percent" from agent for update; --пользовательская блокировка

select agent."percent" from agent 
where agent.id_agent = 1;

select agent."percent" from agent
where agent.id_agent = 1;

select locktype,virtualxid,mode,granted,pid from pg_catalog.pg_locks; 
commit;