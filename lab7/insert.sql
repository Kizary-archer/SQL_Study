CREATE TABLE FlatOperation
(
    Id INT IDENTITY PRIMARY KEY,
    FlatId INT NOT NULL,
   	Operation VARCHAR(200) NOT NULL,
    
)
drop trigger InsertFlat
go

CREATE TRIGGER InsertFlat
ON Квартира
AFTER INSERT
AS

SET IDENTITY_INSERT FlatOperation off;
INSERT INTO FlatOperation (FlatId, Operation)
SELECT id_квартиры, 'Добавлена квартира ' + CAST(номер_квартиры AS VARCHAR) + ' с количеством комнат  ' + CAST(кол_комнат AS VARCHAR) + 
' в доме  '  + CAST(дом AS VARCHAR) + ' по цене кв.м  '  + CAST(цена_кв_м AS VARCHAR)
FROM INSERTED


INSERT INTO квартира(  номер_квартиры, кол_комнат, цена_кв_м, жилплощадь,дом)
VALUES(99,3,40000,30,13)
 
 SELECT * FROM FlatOperation

