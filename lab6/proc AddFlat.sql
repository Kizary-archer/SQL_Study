  --������� ���������
   CREATE PROCEDURE AddFlat 
   (
        --�������� ���������
        @id_���� int,
        @�����_�������� int,
		@���_������ int,
		@����_��_� money,
		@���������� int
   )
   AS
   SET IDENTITY_INSERT ��� ON;
   IF not exists (SELECT * FROM ��� WHERE id_����=@id_����) 	
	BEGIN
        SELECT * FROM ���
		INSERT INTO ��� (id_����, �����_����, �����, �����, �����) VALUES (@id_����, '777', 1, 5,1) 
		SELECT * FROM ���
   END
   else
   begin      
        --��������� ����� ������
		SELECT * FROM ��������
        INSERT INTO ��������(�����_��������,���_������, ����_��_�, ����������, ���)
                VALUES (@�����_��������,@���_������, @����_��_�,@����������,@id_����)

        --���������� ������
        SELECT * FROM ��������
       end
   GO
   
    EXECUTE AddFlat @id_���� = 2, @�����_�������� = 4, @���_������= 4, @����_��_� = 40000,@���������� = 77
	drop procedure AddFlat
   go

