use bd_estate_agency_tr
go
--except
select *
from ��������
where ���_������ = 2
except
select *
from ��������
where ���������� <> 45
--exists
select *
from ��������
where ���_������ = 2 and exists (select * from �������� � where �.���������� = 45 and �.id_�������� = ��������.id_��������)
