drop trigger ���_��������_8���
 go
create trigger ���_��������_8���
on �������� 
for insert, update, delete
as
declare @ci int, @cd int
select @ci = count(*) from inserted
select @cd = count(*) from deleted
--if @ci <= 1 and @cd <= 1 return -- ���������� ��������� 1 ������

declare @��������� smallint

declare ������_12345_i cursor for
select ���_������
from inserted
open ������_12345_i
fetch next from ������_12345_i into @���������
while @@fetch_status = 0 begin
if @��������� = 1
update ����������_������
set ���_����1 = ���_����1 + 1
if @��������� = 2
update ����������_������
set ���_����2 = ���_����2 + 1
if @��������� = 3
update ����������_������
set ���_����3 = ���_����3 + 1
if @��������� = 4
update ����������_������
set ���_����4 = ���_����4 + 1
if @��������� = 5
update ����������_������
set ���_����5 = ���_����5 + 1
fetch next from ������_12345_i into @���������
end
close ������_12345_i
deallocate ������_12345_i
--delete
declare ������_12345_d cursor for
select ���_������
from deleted
open ������_12345_d
fetch next from ������_12345_d into @���������
while @@fetch_status = 0 begin
if @��������� = 1
update ����������_������
set ���_����1 = ���_����1 - 1
if @��������� = 2
update ����������_������
set ���_����2 = ���_����2 - 1
if @��������� = 3
update ����������_������
set ���_����3 = ���_����3 - 1
if @��������� = 4
update ����������_������
set ���_����4 = ���_����4 - 1
if @��������� = 5
update ����������_������
set ���_����5 = ���_����5 - 1
fetch next from ������_12345_d into @���������
end
close ������_12345_d
deallocate ������_12345_d

INSERT INTO ��������(  �����_��������, ���_������, ����_��_�, ����������,���)
VALUES(99,3,40000,30,13)
select * from ����������_������

DELETE FROM ��������
WHERE �����_��������=99
select * from ����������_������

