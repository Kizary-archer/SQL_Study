create function ��_����_���� () returns real
begin
declare @��_�� real
select @��_�� = avg(convert(real,����������)) from ��������
return(@��_��)
end
go
select ���
from ��������
group by ���
having avg(����������) > dbo.��_����_����()
order by ���
go