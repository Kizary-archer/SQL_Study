select c.name_city AS "Город",avg(a.meter_price * a.living_space ) AS "Средняя цена за однокомнатную квартиру"
from city c ,apartment a ,house h ,district d ,street s
where a.house = h.id_house and
	  h.street = s.id_street and 
	  s.district = d.id_district and
	  d.city = c.id_city 
	  and a.count_room = 1
group by c.name_city 
