use bd_estate_agency_tr
go
select квартира.*
from квартира
where квартира.жилплощадь >= all(select квартира.жилплощадь
				 from квартира
				 )