drop trigger updAgent
go
use bd_estate_agency_tr
go
create trigger updAgent
on агент_по_продаже
after update
as
if (select max(процент) from агент_по_продаже) > 10
begin
print 'Максимальный процент с продаж агентам 10%'
rollback transaction
end
go
