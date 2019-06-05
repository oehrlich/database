create view ad_by_area as
select *
from adforarea natural join advertisement natural join area

