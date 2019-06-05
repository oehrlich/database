create view ad_by_movies as
select *
from advertisement natural join movies
