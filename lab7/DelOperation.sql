drop trigger DelFlat
go
use bd_estate_agency_tr
go
CREATE TRIGGER DelFlat
ON ��������
AFTER DELETE
AS
INSERT INTO FlatOperation  (FlatId, Operation)
SELECT id_��������, '������� �������� ' + CAST(�����_�������� AS VARCHAR) + ' � ����������� ������  ' + CAST(���_������ AS VARCHAR) + 
' � ����  '  + CAST(��� AS VARCHAR) + ' �� ���� ��.�  '  + CAST(����_��_� AS VARCHAR)
FROM DELETED


INSERT INTO ��������(  �����_��������, ���_������, ����_��_�, ����������,���)
VALUES(99,3,40000,30,13)

DELETE FROM ��������
WHERE �����_��������=99
 
SELECT * FROM FlatOperation
go
