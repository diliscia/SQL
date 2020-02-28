select 
  (
  select avg(review_count)
  from business
  where is_open = 1) as OpenAvgRev, 
  (
  select avg(review_count)
  from business
  where is_open = 0) as ClosedAvgRev;

select 
  (
  select avg(stars)
  from business
  where is_open = 1) as OpenAvgStr, 
  (
  select avg(stars)
  from business
  where is_open = 0) as ClosedAvgStr;
