SET NOCOUNT ON

DECLARE
	@�����_������ INT,
    @��� VARCHAR(30),
    @������� VARCHAR(30),
	@�������� VARCHAR(30),
	@������� real	
	

DECLARE keysets CURSOR 
KEYSET FOR 
 SELECT [�����_������]
       ,[���]
       ,[�������]
       ,[��������]
       ,[�������]
       
 FROM �����_��_�������


OPEN keysets

IF @@CURSOR_ROWS > 0
BEGIN 
FETCH NEXT FROM keysets 
INTO @�����_������, @���, @�������,
	@��������, @�������
	WHILE @@FETCH_STATUS = 0
	BEGIN
	waitfor delay '00:00:03'
 PRINT 'ID = '+ CONVERT(VARCHAR(10), @�����_������)+', ��� = '+ @���
 +', ������� = '+ @������� +', �������� = '+ @��������
 + ', ������� = ' + CONVERT(VARCHAR(10),@�������)
			
		
FETCH NEXT FROM keysets 
INTO @�����_������, @���, @�������,
@��������, @�������
PRINT @@FETCH_STATUS
	
	END
END

CLOSE keysets 
DEALLOCATE keysets 
SET NOCOUNT OFF

