BEGIN TRANSACTION ISOLATION LEVEL Repeatable Read;
SELECT pg_backend_pid();

select a2."percent" 
from agent a2 
where id_agent = 2 for update ;

update agent 
set "percent" = 70
where id_agent = 1; 


select locktype,virtualxid,mode,granted,pid from pg_catalog.pg_locks where locktype <> 'relation'; 
commit;