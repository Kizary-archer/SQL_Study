  --Создаем процедуру
   CREATE PROCEDURE AddFlat 
   (
        --Входящие параметры
        @id_дома int,
        @номер_квартиры int,
		@кол_комнат int,
		@цена_кв_м money,
		@жилплощадь int
   )
   AS
   SET IDENTITY_INSERT дом ON;
   IF not exists (SELECT * FROM дом WHERE id_дома=@id_дома) 	
	BEGIN
        SELECT * FROM дом
		INSERT INTO дом (id_дома, номер_дома, улица, район, серия) VALUES (@id_дома, '777', 1, 5,1) 
		SELECT * FROM дом
   END
   else
   begin      
        --Добавляем новую запись
		SELECT * FROM квартира
        INSERT INTO квартира(номер_квартиры,кол_комнат, цена_кв_м, жилплощадь, дом)
                VALUES (@номер_квартиры,@кол_комнат, @цена_кв_м,@жилплощадь,@id_дома)

        --Возвращаем данные
        SELECT * FROM квартира
       end
   GO
   
    EXECUTE AddFlat @id_дома = 2, @номер_квартиры = 4, @кол_комнат= 4, @цена_кв_м = 40000,@жилплощадь = 77
	drop procedure AddFlat
   go

