SELECT * FROM zomato.zomatomain5;
select count(*) FROM zomato.zomatomain5;

select distinct RestaurantID(MONTHNAME) as month_name, count(*)
FROM zomato.zomatomain5
where MONTHNAME is not null
group by RestaurantID(MONTHNAME);




select quarter,count(*) as restaurantcount
FROM zomato.zomatomain5
where quarter is not null
group by quarter
order by quarter;



select Has_Table_booking,
count(*) as Totalrestaurant,
round((count(*) / (select count(*) FROM zomato.zomatomain5)) * 100, 2) as percentage
from  zomato.zomatomain5
group by Has_Table_booking;



select Has_Online_delivery,
count(*) as Totalrestaurant,
round((count(*) / (select count(*) FROM zomato.zomatomain5)) * 100, 2) as percentage
from  zomato.zomatomain5
group by Has_Online_delivery;






select Rating as Rating,
count(*) as restaurantcount
FROM zomato.zomatomain5
where Rating is not null
Group by Rating
order by Rating ;





select Cuisines,count(Cuisines) from zomato.zomatomain5
group by Cuisines;


select cost_range,
count(*) as TotalRestaurants
from(
	select 
		case
		when Average_Cost_for_two between 0 and 300 then '0-300'
		when Average_Cost_for_two between 301 and 600 then '301-600'
		when Average_Cost_for_two between 601 and 1000 then '601-1000'
		when Average_Cost_for_two between 1001 and 400000 then '1001-400000'
		else 'others'
        end as cost_range
		from 
        zomato.zomatomain5)
		as Subquery 
		group by 
        cost_range;





