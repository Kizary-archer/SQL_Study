BEGIN TRANSACTION ISOLATION LEVEL Repeatable Read;
SELECT pg_backend_pid();

select agent from agent 
where agent."percent" < 20;

select agent from agent 
where agent."percent" < 20;
 
commit;