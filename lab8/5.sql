
	  SET NOCOUNT ON

DECLARE 	
	@�����_������ INT,
    @��� VARCHAR(30),
    @������� VARCHAR(30),
	@�������� VARCHAR(30),
	@������� real	
	
DECLARE static_cursor CURSOR 
STATIC FOR 
 SELECT [�����_������]
       ,[���]
       ,[�������]
       ,[��������]
       ,[�������]
       
 FROM �����_��_�������

OPEN static_cursor
IF @@CURSOR_ROWS > 0
BEGIN 
 FETCH NEXT FROM static_cursor 
           INTO @�����_������, @���, @�������,
	         @��������, @�������
 WHILE @@FETCH_STATUS = 0
 BEGIN
 PRINT 'ID = '+ CONVERT(VARCHAR(10), @�����_������)+', ��� = '+ @���
 +', ������� = '+ @������� +', �������� = '+ @��������
 + ', ������� = ' + CONVERT(VARCHAR(10),@�������)
 
 
                FETCH NEXT FROM static_cursor
           INTO @�����_������, @���, @�������,
	         @��������, @�������
 END
END
CLOSE static_cursor
DEALLOCATE static_cursor
SET NOCOUNT OFF 
