drop trigger InsteadDel
go
CREATE TRIGGER InsteadDel
ON ���_����
INSTEAD OF DELETE
AS
UPDATE ���_����
SET Del = 1
WHERE ����� in (SELECT ����� FROM deleted)
go

INSERT INTO ���_����(�����, ��������)
VALUES ('��777','���-��������� ��������')
 
DELETE FROM ���_����
WHERE �����='��777';
 
SELECT * FROM ���_����;
go
