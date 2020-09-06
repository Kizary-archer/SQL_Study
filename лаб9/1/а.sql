select distinct a.* 
from apartment a join house h on a.house = h.id_house
where  a.count_room = 1 and h.street in 
										(select street.id_street
											from street join district 
												on street.district = district.id_district 
													where district.name_district = 'Московский');