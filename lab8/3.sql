SET NOCOUNT ON
DECLARE 
	@�����_������ INT,
    @��� VARCHAR(30),
    @������� VARCHAR(30),
	@�������� VARCHAR(30),
	@������� real, 
	@������� INT,
	@������ VARCHAR(30)

DECLARE dynamic_reg_cursor CURSOR 
DYNAMIC FOR 
	SELECT *
	FROM �����_��_�������
  

OPEN dynamic_reg_cursor
IF @@CURSOR_ROWS < 0
BEGIN 
     	 FETCH NEXT FROM dynamic_reg_cursor
            INTO @�����_������, @���, @�������,
	         @��������, @�������, @�������, @������
     	 WHILE @@FETCH_STATUS = 0
     	 BEGIN
		IF @������� <= 5
 	    UPDATE [�����_��_�������] 
		SET [������] = '�����'
		    
	    WHERE CURRENT OF dynamic_reg_cursor               
		
     	 FETCH NEXT FROM dynamic_reg_cursor
            INTO @�����_������, @���, @�������,
	         @��������, @�������, @�������, @������
     	 END
END
CLOSE dynamic_reg_cursor
DEALLOCATE dynamic_reg_cursor
SET NOCOUNT OFF 
GO
      
select * from �����_��_�������