create table Количество_квартир (
id_дома int not null,
 кол_комн1 int,
  кол_комн2 int,
   кол_комн3 int,
    кол_комн4 int,
	кол_комн5 int,

primary key (id_дома))
go

drop trigger Изм_квартиры
 go

 use bd_estate_agency_tr
 go

create trigger Изм_квартиры
on квартира
for insert, update, delete
as
declare @ci int, @cd int
select @ci = count(*) from inserted
select @cd = count(*) from deleted
if @ci > 1 or @cd > 1 return
declare @Id_дома smallint
declare @flat_i tinyint, @flat_d tinyint
if @ci = 1 begin
select @Id_дома = квартира.дом,
@flat_i = квартира.id_квартиры from inserted,	квартира
end
if @cd = 1 begin
select @Id_дома = квартира.дом,
@flat_i = квартира.id_квартиры from deleted,квартира
end
if @ci = 1
if not exists (select * from Колличество_квартир
where @Id_дома = квартира.дом )
insert into Колличество_Спектаклей_для_театра
values (@Id_theatre, 0,0,0,0,0)
if @ci = 1 begin
if @Id_theatre = 1
update Колличество_Спектаклей_для_театра
set КоличествоСпектаклейТеатра1 = КоличествоСпектаклейТеатра1 + 1
where @Id_theatre = Id_theatre
if @Id_theatre  = 2
update Колличество_Спектаклей_для_театра
set КоличествоСпектаклейТеатра2 = КоличествоСпектаклейТеатра2 + 1
where @Id_theatre = Id_theatre
if @Id_theatre = 3
update Колличество_Спектаклей_для_театра
set КоличествоСпектаклейТеатра3 = КоличествоСпектаклейТеатра3 + 1
where @Id_theatre = Id_theatre
if @Id_theatre = 4
update Колличество_Спектаклей_для_театра
set КоличествоСпектаклейТеатра4 = КоличествоСпектаклейТеатра4 + 1
where @Id_theatre = Id_theatre
if @Id_theatre = 5
update Колличество_Спектаклей_для_театра
set КоличествоСпектаклейТеатра5 = КоличествоСпектаклейТеатра5 + 1
where @Id_theatre = Id_theatre
end
if @cd = 1 begin
if @Id_theatre = 1
update Колличество_Спектаклей_для_театра
set КоличествоСпектаклейТеатра1 = КоличествоСпектаклейТеатра1 - 1
where @Id_theatre = Id_theatre
if @Id_theatre = 2
update Колличество_Спектаклей_для_театра
set КоличествоСпектаклейТеатра2 = КоличествоСпектаклейТеатра2 - 1
where @Id_theatre = Id_theatre
if @Id_theatre = 3
update Колличество_Спектаклей_для_театра
set КоличествоСпектаклейТеатра3 = КоличествоСпектаклейТеатра3 - 1
where @Id_theatre = Id_theatre
if @Id_theatre = 4
update Колличество_Спектаклей_для_театра
set КоличествоСпектаклейТеатра4 = КоличествоСпектаклейТеатра4 - 1
where @Id_theatre = Id_theatre
if @Id_theatre = 5
update Колличество_Спектаклей_для_театра
set КоличествоСпектаклейТеатра5 = КоличествоСпектаклейТеатра5 - 1
where @Id_theatre = Id_theatre
end
go
