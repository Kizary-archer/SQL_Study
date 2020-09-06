use bd_estate_agency_tr
go
select distinct К.*
from квартира К,район,дом,улица
where  К.кол_комнат = 1 and К.дом = дом.id_дома and дом.район = 3;