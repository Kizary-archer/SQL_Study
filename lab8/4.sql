SET NOCOUNT ON
DECLARE 
	@�����_������ INT,
    @��� VARCHAR(30),
    @������� VARCHAR(30),
	@�������� VARCHAR(30),
	@������� real, 
	@������� INT,
	@������ VARCHAR(30)

DECLARE dynamic_reg_cursor2 CURSOR 
DYNAMIC FOR 
	SELECT *
	FROM �����_��_�������
  

OPEN dynamic_reg_cursor2
IF @@CURSOR_ROWS < 0
BEGIN 
     	 FETCH NEXT FROM dynamic_reg_cursor2
            INTO @�����_������, @���, @�������,
	         @��������, @�������, @�������, @������
     	 WHILE @@FETCH_STATUS = 0
     	 BEGIN
		IF @������� <= 1
		Delete from [�����_��_�������] 
		    
	    WHERE CURRENT OF dynamic_reg_cursor2              
		
     	 FETCH NEXT FROM dynamic_reg_cursor2
            INTO @�����_������, @���, @�������,
	         @��������, @�������, @�������, @������
     	 END
END
CLOSE dynamic_reg_cursor2
DEALLOCATE dynamic_reg_cursor2
SET NOCOUNT OFF 
GO
      
select * from �����_��_�������