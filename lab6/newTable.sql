create procedure newTable 
as 
begin

	create table #newTable(id_дома int,кол вартир int)
	insert into #newTable
		select id_дома,Count(дом) AS 'кол вартир'
		from квартира join дом on квартира.дом = дом.id_дома
		group by дом,id_дома
		Select * from #newTable
end
go
exec newTable
go
drop procedure newTable
go
