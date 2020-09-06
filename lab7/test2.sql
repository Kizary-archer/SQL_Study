create table ����������_������� (
id_���� int not null,
 ���_����1 int,
  ���_����2 int,
   ���_����3 int,
    ���_����4 int,
	���_����5 int,

primary key (id_����))
go

drop trigger ���_��������
 go

 use bd_estate_agency_tr
 go

create trigger ���_��������
on ��������
for insert, update, delete
as
declare @ci int, @cd int
select @ci = count(*) from inserted
select @cd = count(*) from deleted
if @ci > 1 or @cd > 1 return
declare @Id_���� smallint
declare @flat_i tinyint, @flat_d tinyint
if @ci = 1 begin
select @Id_���� = ��������.���,
@flat_i = ��������.id_�������� from inserted,	��������
end
if @cd = 1 begin
select @Id_���� = ��������.���,
@flat_i = ��������.id_�������� from deleted,��������
end
if @ci = 1
if not exists (select * from �����������_�������
where @Id_���� = ��������.��� )
insert into �����������_����������_���_������
values (@Id_theatre, 0,0,0,0,0)
if @ci = 1 begin
if @Id_theatre = 1
update �����������_����������_���_������
set ��������������������������1 = ��������������������������1 + 1
where @Id_theatre = Id_theatre
if @Id_theatre  = 2
update �����������_����������_���_������
set ��������������������������2 = ��������������������������2 + 1
where @Id_theatre = Id_theatre
if @Id_theatre = 3
update �����������_����������_���_������
set ��������������������������3 = ��������������������������3 + 1
where @Id_theatre = Id_theatre
if @Id_theatre = 4
update �����������_����������_���_������
set ��������������������������4 = ��������������������������4 + 1
where @Id_theatre = Id_theatre
if @Id_theatre = 5
update �����������_����������_���_������
set ��������������������������5 = ��������������������������5 + 1
where @Id_theatre = Id_theatre
end
if @cd = 1 begin
if @Id_theatre = 1
update �����������_����������_���_������
set ��������������������������1 = ��������������������������1 - 1
where @Id_theatre = Id_theatre
if @Id_theatre = 2
update �����������_����������_���_������
set ��������������������������2 = ��������������������������2 - 1
where @Id_theatre = Id_theatre
if @Id_theatre = 3
update �����������_����������_���_������
set ��������������������������3 = ��������������������������3 - 1
where @Id_theatre = Id_theatre
if @Id_theatre = 4
update �����������_����������_���_������
set ��������������������������4 = ��������������������������4 - 1
where @Id_theatre = Id_theatre
if @Id_theatre = 5
update �����������_����������_���_������
set ��������������������������5 = ��������������������������5 - 1
where @Id_theatre = Id_theatre
end
go
