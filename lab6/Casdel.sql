--������� ���������
   CREATE PROCEDURE CasDel
   (
        --�������� ���������
        @id_��� int 
   )
   AS
   SET IDENTITY_INSERT ��� ON;
   SELECT * FROM ��� join �������� on ���.id_���� = ��������.���
   DELETE FROM ��������
   WHERE  ���= @id_��� 

		DELETE FROM ���
		WHERE id_����= @id_��� 
		
	SELECT * FROM ��� join �������� on ���.id_���� = ��������.���

   	GO
	
  	 EXECUTE CasDel @id_��� = 2
	drop procedure CasDel
   	go
