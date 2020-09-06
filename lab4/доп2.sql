use bd_estate_agency_tr
go
select квартира.*
from квартира
where квартира.кол_комнат = 1
union
select квартира.*
from квартира
where квартира.кол_комнат = 2