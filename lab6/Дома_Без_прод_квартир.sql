use bd_estate_agency_tr
go
create procedure ����_���_����_�������
as
if exists (select * from ��� left join �������� on ���.id_���� = ��������.��� where ��������.��� is null)
BEGIN
CREATE TABLE ��������������
(  
 id_���� int,  
 �����_���� varchar(10),
 ����� int,
 ����� int,
 ����� int 
 )
INSERT into ��������������( id_����,�����_����,�����,�����,�����)
select ���.*
from ��� left join �������� on ���.id_���� = ��������.���
where ��������.��� is null
delete from ��������������
where ����� = 1
END
else print '����� ��� ����������� ������� �� ����������'
go