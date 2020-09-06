drop trigger DelFlat
go
use bd_estate_agency_tr
go
CREATE TRIGGER DelFlat
ON квартира
AFTER DELETE
AS
INSERT INTO FlatOperation  (FlatId, Operation)
SELECT id_квартиры, 'Удалена квартира ' + CAST(номер_квартиры AS VARCHAR) + ' с количеством комнат  ' + CAST(кол_комнат AS VARCHAR) + 
' в доме  '  + CAST(дом AS VARCHAR) + ' по цене кв.м  '  + CAST(цена_кв_м AS VARCHAR)
FROM DELETED


INSERT INTO квартира(  номер_квартиры, кол_комнат, цена_кв_м, жилплощадь,дом)
VALUES(99,3,40000,30,13)

DELETE FROM квартира
WHERE номер_квартиры=99
 
SELECT * FROM FlatOperation
go
