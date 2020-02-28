select h.business_id, h.hours
from hours h
where h.business_id in (
  select b.id
	from business b, category c
	where b.id = c.business_id 
	and city like '%Toronto%' 
	and category like '%restaurant%' 
	and stars >=2 and stars <=3)
