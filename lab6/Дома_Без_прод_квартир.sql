use bd_estate_agency_tr
go
create procedure ƒома_Ѕез_прод_квартир
as
if exists (select * from дом left join квартира on дом.id_дома = квартира.дом where квартира.дом is null)
BEGIN
CREATE TABLE домЅезѕрод вар
(  
 id_дома int,  
 номер_дома varchar(10),
 улица int,
 район int,
 сери€ int 
 )
INSERT into домЅезѕрод вар( id_дома,номер_дома,улица,район,сери€)
select дом.*
from дом left join квартира on дом.id_дома = квартира.дом
where квартира.дом is null
delete from домЅезѕрод вар
where сери€ = 1
END
else print 'домов без продающихс€ квартир не обнаружено'
go