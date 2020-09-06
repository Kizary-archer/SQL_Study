
	  SET NOCOUNT ON

DECLARE 	
	@номер_агента INT,
    @имя VARCHAR(30),
    @Фамилия VARCHAR(30),
	@отчество VARCHAR(30),
	@процент real	
	
DECLARE static_cursor CURSOR 
STATIC FOR 
 SELECT [номер_агента]
       ,[имя]
       ,[Фамилия]
       ,[отчество]
       ,[процент]
       
 FROM агент_по_продаже

OPEN static_cursor
IF @@CURSOR_ROWS > 0
BEGIN 
 FETCH NEXT FROM static_cursor 
           INTO @номер_агента, @имя, @Фамилия,
	         @отчество, @процент
 WHILE @@FETCH_STATUS = 0
 BEGIN
 PRINT 'ID = '+ CONVERT(VARCHAR(10), @номер_агента)+', Имя = '+ @имя
 +', Фамилия = '+ @Фамилия +', Отчество = '+ @отчество
 + ', процент = ' + CONVERT(VARCHAR(10),@процент)
 
 
                FETCH NEXT FROM static_cursor
           INTO @номер_агента, @имя, @Фамилия,
	         @отчество, @процент
 END
END
CLOSE static_cursor
DEALLOCATE static_cursor
SET NOCOUNT OFF 
