select  b.name, 
        b.state, 
        count(distinct b.id) as NumRest, 
        avg(b.review_count) as AvgRev, 
        avg(b.review_count) - ( 
        select avg(review_count) 
        from business
        where name = 'Subway') as DifAvgRev, 
        avg(b.stars) as AvgSt
from business b
where b.name = 'Subway'
group by b.state
order by NumRest desc;
