create function —р_ѕлощ_ вар () returns real
begin
declare @—р_пл real
select @—р_пл = avg(convert(real,жилплощадь)) from квартира
return(@—р_пл)
end
go
select дом
from квартира
group by дом
having avg(жилплощадь) > dbo.—р_ѕлощ_ вар()
order by дом
go