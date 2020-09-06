use bd_estate_agency_tr
go 
select улица.название AS "название улицы"
from улица 
where улица.номер_улицы not in(
								select distinct Д1.улица
								from дом Д1,дом Д2
								where Д1.улица = Д2.улица and Д1.район<>Д2.район and Д1.id_дома <> Д2.id_дома
							  )