use bd_estate_agency_tr
go 
select �����.�������� AS "�������� �����"
from ����� 
where �����.�����_����� not in(
								select distinct �1.�����
								from ��� �1,��� �2
								where �1.����� = �2.����� and �1.�����<>�2.����� and �1.id_���� <> �2.id_����
							  )