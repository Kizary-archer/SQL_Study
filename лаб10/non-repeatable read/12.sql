BEGIN TRANSACTION ISOLATION LEVEL Repeatable Read;
SELECT pg_backend_pid();

select agent."percent" from agent 
where agent.id_agent = 1;

select agent."percent" from agent
where agent.id_agent = 1;
 
commit;