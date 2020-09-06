SET NOCOUNT ON
DECLARE 
	@номер_агента INT,
    @имя VARCHAR(30),
    @Фамилия VARCHAR(30),
	@отчество VARCHAR(30),
	@процент real, 
	@телефон INT,
	@статус VARCHAR(30)

DECLARE dynamic_reg_cursor2 CURSOR 
DYNAMIC FOR 
	SELECT *
	FROM агент_по_продаже
  

OPEN dynamic_reg_cursor2
IF @@CURSOR_ROWS < 0
BEGIN 
     	 FETCH NEXT FROM dynamic_reg_cursor2
            INTO @номер_агента, @имя, @Фамилия,
	         @отчество, @процент, @телефон, @статус
     	 WHILE @@FETCH_STATUS = 0
     	 BEGIN
		IF @процент <= 1
		Delete from [агент_по_продаже] 
		    
	    WHERE CURRENT OF dynamic_reg_cursor2              
		
     	 FETCH NEXT FROM dynamic_reg_cursor2
            INTO @номер_агента, @имя, @Фамилия,
	         @отчество, @процент, @телефон, @статус
     	 END
END
CLOSE dynamic_reg_cursor2
DEALLOCATE dynamic_reg_cursor2
SET NOCOUNT OFF 
GO
      
select * from агент_по_продаже