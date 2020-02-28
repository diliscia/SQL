select id, name, stars, review_count, latitude, longitude
from business
where id in (	
  select b.id
  from business b, category c
	where b.id = c.business_id
	and city like '%Toronto%'
	and category like '%restaurant%'
	and stars >=2 and stars <=3)

select id, name, stars, review_count, latitude, longitude
from business
where id in (	
  select b.id
	from business b, category c
	where b.id = c.business_id
	and city like '%Toronto%'
	and category like '%restaurant%'
	and stars >=4 and stars <=5)
