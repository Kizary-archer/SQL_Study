drop trigger updAgent
go
use bd_estate_agency_tr
go
create trigger updAgent
on �����_��_�������
after update
as
if (select max(�������) from �����_��_�������) > 10
begin
print '������������ ������� � ������ ������� 10%'
rollback transaction
end
go
