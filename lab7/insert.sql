CREATE TABLE FlatOperation
(
    Id INT IDENTITY PRIMARY KEY,
    FlatId INT NOT NULL,
   	Operation VARCHAR(200) NOT NULL,
    
)
drop trigger InsertFlat
go

CREATE TRIGGER InsertFlat
ON ��������
AFTER INSERT
AS

SET IDENTITY_INSERT FlatOperation off;
INSERT INTO FlatOperation (FlatId, Operation)
SELECT id_��������, '��������� �������� ' + CAST(�����_�������� AS VARCHAR) + ' � ����������� ������  ' + CAST(���_������ AS VARCHAR) + 
' � ����  '  + CAST(��� AS VARCHAR) + ' �� ���� ��.�  '  + CAST(����_��_� AS VARCHAR)
FROM INSERTED


INSERT INTO ��������(  �����_��������, ���_������, ����_��_�, ����������,���)
VALUES(99,3,40000,30,13)
 
 SELECT * FROM FlatOperation

