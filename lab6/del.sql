use bd_estate_agency_tr
go
--������� ���������
   CREATE PROCEDURE del
   (
        --�������� ���������
        @id_���� int,
        @���_������ int
   )
   AS
   SET IDENTITY_INSERT �������� ON;
   SELECT * FROM �������� join ��� on ��������.��� = ���.id_����
   DELETE FROM ��������
   WHERE  ���=@id_���� and ���_������>@���_������
   IF not exists (SELECT * FROM �������� WHERE ���=@id_����)   	
	BEGIN
		DELETE FROM ���
		WHERE  id_����=@id_����	
    END
		SELECT * FROM �������� join ��� on ��� = ���.id_����	
   GO

   EXECUTE del  @id_���� = 2,@���_������ = 3
	drop procedure del
   go
