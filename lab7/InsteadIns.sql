drop trigger InsteadIns
go
use bd_estate_agency_tr
go
create trigger InsteadIns
on ��������
instead of insert
as
if exists (select * from ��������
where id_�������� in (select id_�������� from inserted)
group by id_��������
having count(���) >= 5)
print '������� ����� �������'
else
insert into �������� select �����_��������, ���_������, ����_��_�, ����������,��� from inserted
go
