use bd_estate_agency_tr
go
--Создаем процедуру
   CREATE PROCEDURE del
   (
        --Входящие параметры
        @id_дома int,
        @кол_комнат int
   )
   AS
   SET IDENTITY_INSERT квартира ON;
   SELECT * FROM квартира join дом on квартира.дом = дом.id_дома
   DELETE FROM квартира
   WHERE  дом=@id_дома and кол_комнат>@кол_комнат
   IF not exists (SELECT * FROM квартира WHERE дом=@id_дома)   	
	BEGIN
		DELETE FROM дом
		WHERE  id_дома=@id_дома	
    END
		SELECT * FROM квартира join дом on дом = дом.id_дома	
   GO

   EXECUTE del  @id_дома = 2,@кол_комнат = 3
	drop procedure del
   go
