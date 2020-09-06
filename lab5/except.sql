use bd_estate_agency_tr
go
--except
select *
from квартира
where кол_комнат = 2
except
select *
from квартира
where жилплощадь <> 45
--exists
select *
from квартира
where кол_комнат = 2 and exists (select * from квартира К where К.жилплощадь = 45 and К.id_квартиры = квартира.id_квартиры)
