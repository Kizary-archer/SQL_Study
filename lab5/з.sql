use bd_estate_agency_tr
go
select �����.��������
from �����
where �����.�������� not in(
							select �����.��������
							from ����� join ��� on ���.����� = �����.�����_������
							where ���.id_����  in(
													select ��������.���
													from ��������
													where ���_������ = 1
												 )
							)
