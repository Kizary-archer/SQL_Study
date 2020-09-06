use bd_estate_agency_tr
go
select distinct K1.*
from квартира K1,квартира K2
where K1.кол_комнат in(2,3) and K1.жилплощадь = K2.жилплощадь and K1.id_квартиры<>K2.id_квартиры; 
