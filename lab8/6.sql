SET NOCOUNT ON

DECLARE
	@номер_агента INT,
    @имя VARCHAR(30),
    @Фамилия VARCHAR(30),
	@отчество VARCHAR(30),
	@процент real	
	

DECLARE keysets CURSOR 
KEYSET FOR 
 SELECT [номер_агента]
       ,[имя]
       ,[Фамилия]
       ,[отчество]
       ,[процент]
       
 FROM агент_по_продаже


OPEN keysets

IF @@CURSOR_ROWS > 0
BEGIN 
FETCH NEXT FROM keysets 
INTO @номер_агента, @имя, @Фамилия,
	@отчество, @процент
	WHILE @@FETCH_STATUS = 0
	BEGIN
	waitfor delay '00:00:03'
 PRINT 'ID = '+ CONVERT(VARCHAR(10), @номер_агента)+', Имя = '+ @имя
 +', Фамилия = '+ @Фамилия +', Отчество = '+ @отчество
 + ', процент = ' + CONVERT(VARCHAR(10),@процент)
			
		
FETCH NEXT FROM keysets 
INTO @номер_агента, @имя, @Фамилия,
@отчество, @процент
PRINT @@FETCH_STATUS
	
	END
END

CLOSE keysets 
DEALLOCATE keysets 
SET NOCOUNT OFF

