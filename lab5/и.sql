use bd_estate_agency_tr
go
select ����������.�����
from(
select �����.�������� AS �����,COUNT(���.�����) AS ���_����� --��������� ��������� ���������� ���.����� � ������ ������
from ��� join ����� on ���.����� = �����.�����_������ --���������� ������������� ������ � ����
group by �����.��������
)AS "����������"
where ����������.���_����� = ( --��������� ���.����� � ������ ������ � ����� ����������� ���.�����
								select COUNT(*)
								from ���_����
							 )
