drop trigger Изм_Квартира_8лаб
 go
create trigger Изм_Квартира_8лаб
on квартира 
for insert, update, delete
as
declare @ci int, @cd int
select @ci = count(*) from inserted
select @cd = count(*) from deleted
--if @ci <= 1 and @cd <= 1 return -- инструкция затронула 1 строку

declare @колКомнат smallint

declare Вычисл_12345_i cursor for
select кол_комнат
from inserted
open Вычисл_12345_i
fetch next from Вычисл_12345_i into @колКомнат
while @@fetch_status = 0 begin
if @колКомнат = 1
update Количество_комнат
set кол_комн1 = кол_комн1 + 1
if @колКомнат = 2
update Количество_комнат
set кол_комн2 = кол_комн2 + 1
if @колКомнат = 3
update Количество_комнат
set кол_комн3 = кол_комн3 + 1
if @колКомнат = 4
update Количество_комнат
set кол_комн4 = кол_комн4 + 1
if @колКомнат = 5
update Количество_комнат
set кол_комн5 = кол_комн5 + 1
fetch next from Вычисл_12345_i into @колКомнат
end
close Вычисл_12345_i
deallocate Вычисл_12345_i
--delete
declare Вычисл_12345_d cursor for
select кол_комнат
from deleted
open Вычисл_12345_d
fetch next from Вычисл_12345_d into @колКомнат
while @@fetch_status = 0 begin
if @колКомнат = 1
update Количество_комнат
set кол_комн1 = кол_комн1 - 1
if @колКомнат = 2
update Количество_комнат
set кол_комн2 = кол_комн2 - 1
if @колКомнат = 3
update Количество_комнат
set кол_комн3 = кол_комн3 - 1
if @колКомнат = 4
update Количество_комнат
set кол_комн4 = кол_комн4 - 1
if @колКомнат = 5
update Количество_комнат
set кол_комн5 = кол_комн5 - 1
fetch next from Вычисл_12345_d into @колКомнат
end
close Вычисл_12345_d
deallocate Вычисл_12345_d

INSERT INTO квартира(  номер_квартиры, кол_комнат, цена_кв_м, жилплощадь,дом)
VALUES(99,3,40000,30,13)
select * from Количество_комнат

DELETE FROM квартира
WHERE номер_квартиры=99
select * from Количество_комнат

