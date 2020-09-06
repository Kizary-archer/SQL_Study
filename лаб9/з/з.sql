select d.name_district 
from district d 
where d.name_district not in(
							select distinct district.name_district
							from street,district,house 
						    where  house.id_house in(
													select distinct a2.house 
													from apartment a2 
													where a2.count_room = 1
													)
							and house.street = street.id_street 
							and street.district = district.id_district
							)
