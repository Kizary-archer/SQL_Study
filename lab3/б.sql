use bd_estate_agency_tr
go
select distinct  �.*
from ��� �1,��� �2,�������� �
where �.��� = �1.id_���� and �1.����� = �2.����� and �1.�����<>�2.����� and �1.id_���� <> �2.id_����
order by �.id_�������� asc;