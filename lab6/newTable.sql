create procedure newTable 
as 
begin

	create table #newTable(id_���� int,���������� int)
	insert into #newTable
		select id_����,Count(���) AS '����������'
		from �������� join ��� on ��������.��� = ���.id_����
		group by ���,id_����
		Select * from #newTable
end
go
exec newTable
go
drop procedure newTable
go
