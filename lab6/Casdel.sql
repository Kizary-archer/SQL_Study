--—оздаем процедуру
   CREATE PROCEDURE CasDel
   (
        --¬ход€щие параметры
        @id_дом int 
   )
   AS
   SET IDENTITY_INSERT дом ON;
   SELECT * FROM дом join квартира on дом.id_дома = квартира.дом
   DELETE FROM квартира
   WHERE  дом= @id_дом 

		DELETE FROM дом
		WHERE id_дома= @id_дом 
		
	SELECT * FROM дом join квартира on дом.id_дома = квартира.дом

   	GO
	
  	 EXECUTE CasDel @id_дом = 2
	drop procedure CasDel
   	go
