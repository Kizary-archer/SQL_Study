use bd_estate_agency_tr
go
select квартира.*
from квартира
except
select квартира.*
from квартира
where квартира.кол_комнат = 1