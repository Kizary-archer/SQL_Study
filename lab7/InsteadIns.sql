drop trigger InsteadIns
go
use bd_estate_agency_tr
go
create trigger InsteadIns
on квартира
instead of insert
as
if exists (select * from квартира
where id_квартиры in (select id_квартиры from inserted)
group by id_квартиры
having count(дом) >= 5)
print 'Слишком много квартир'
else
insert into квартира select номер_квартиры, кол_комнат, цена_кв_м, жилплощадь,дом from inserted
go
