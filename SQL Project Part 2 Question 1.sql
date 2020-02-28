select c.category, b.city, b.state, b.stars, count (distinct b.id)
from business b, category c 
where b.id = c.business_id and city like '%Toronto%' and category like '%restaurant%'
group by stars
order by stars desc;
