SET NOCOUNT ON
DECLARE 
	@номер_агента INT,
    @имя VARCHAR(30),
    @Фамилия VARCHAR(30),
	@отчество VARCHAR(30),
	@процент real, 
	@телефон INT,
	@статус VARCHAR(30)

DECLARE dynamic_reg_cursor CURSOR 
DYNAMIC FOR 
	SELECT *
	FROM агент_по_продаже
  

OPEN dynamic_reg_cursor
IF @@CURSOR_ROWS < 0
BEGIN 
     	 FETCH NEXT FROM dynamic_reg_cursor
            INTO @номер_агента, @имя, @Фамилия,
	         @отчество, @процент, @телефон, @статус
     	 WHILE @@FETCH_STATUS = 0
     	 BEGIN
		IF @процент <= 5
 	    UPDATE [агент_по_продаже] 
		SET [статус] = 'стажёр'
		    
	    WHERE CURRENT OF dynamic_reg_cursor               
		
     	 FETCH NEXT FROM dynamic_reg_cursor
            INTO @номер_агента, @имя, @Фамилия,
	         @отчество, @процент, @телефон, @статус
     	 END
END
CLOSE dynamic_reg_cursor
DEALLOCATE dynamic_reg_cursor
SET NOCOUNT OFF 
GO
      
select * from агент_по_продаже