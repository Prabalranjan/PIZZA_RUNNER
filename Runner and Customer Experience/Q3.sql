use pizza_runner;
show tables;
select * from runners;
select * from customer_orders;
select * from runner_orders;
select * from pizza_names;
select * from pizza_recipes;
select * from pizza_recipes_normal;
select * from pizza_toppings;
select * from worst_toppings;
select * from best_toppings;


-- 3. Is there any relationship between the number of pizzas and how long the order takes to prepare?

with CTE1 as(
select co.order_id,co.customer_id,time(co.order_time) as order_time,time(ro.pickup_time) as pickup_time,ro.runner_id
-- timestampdiff(minute,time(co.order_time),time(ro.pickup_time)) as time_diff_min
from customer_orders co
join runner_orders ro
on co.order_id = ro.order_id
),
-- select * from CTE1;
CTE2 as(
select *,
case when str_to_date(pickup_time,'%H:%i:%s') < str_to_date(order_time,'%H:%i:%s') then
	timestampdiff(minute, str_to_date(order_time,'%H:%i:%s'), date_add(str_to_date(pickup_time,'%H:%i:%s'),interval 1 day))
else timestampdiff(minute,str_to_date(order_time,'%H:%i:%s'),str_to_date(pickup_time,'%H:%i:%s'))
end as time_diff_in_minute
    -- TIMESTAMPDIFF(MINUTE, STR_TO_DATE(time_column1, '%H.%i'), DATE_ADD(STR_TO_DATE(time_column2, '%H.%i'), INTERVAL 1 DAY))
from CTE1
)
select count(order_id) as order_count,
-- customer_id,time_diff_in_minute,
avg(time_diff_in_minute) as avg_time
-- dense_rank() over(order by order_id) as order_count
from CTE2
group by order_id;




 