use bd_estate_agency_tr
go 
select  �����,����
from(
	select �����.�������� �����,MIN(��������.����_��_�) AS "����"
	from �����,��������,���
	where ��������.��� = ���.id_���� and
		  ���.����� = �����.�����_������
	group by �����.��������
) AS "����������"
where ����������.���� = 
		(
			select MIN(����)
			from(
					select �����.�������� �����,MIN(��������.����_��_�) AS "����"
					from �����,��������,���
					where ��������.��� = ���.id_���� and
						  ���.����� = �����.�����_������
					group by �����.��������
				) AS "���"
		)
