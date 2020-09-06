use bd_estate_agency_tr
go
select А.*
from агент_по_продаже А
where А.Фамилия like 'Фомин' and А.процент between '5' and '7';