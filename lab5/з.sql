use bd_estate_agency_tr
go
select район.название
from район
where район.название not in(
							select район.название
							from район join дом on дом.район = район.номер_района
							where дом.id_дома  in(
													select квартира.дом
													from квартира
													where кол_комнат = 1
												 )
							)
