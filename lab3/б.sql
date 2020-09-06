use bd_estate_agency_tr
go
select distinct  К.*
from дом Д1,дом Д2,квартира К
where К.дом = Д1.id_дома and Д1.улица = Д2.улица and Д1.район<>Д2.район and Д1.id_дома <> Д2.id_дома
order by К.id_квартиры asc;