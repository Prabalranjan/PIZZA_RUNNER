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
select * from ratings;

-- 4. Using your newly generated table - can you join all of the information together to form a table which has the following information for successful deliveries?
-- customer_id ->customer_orders
-- order_id ->runner_orders
-- runner_id ->runner_orders
-- rating -> ratings
-- order_time ->customer_orders
-- pickup_time ->runner_orders
-- Time between order and pickup ->runner_orders - customer_orders
-- Delivery duration ->runner_orders
-- Average speed ->runner_orders
-- Total number of pizzas ->customer_orders

select co.customer_id,co.order_id,ro.runner_id,r.rating,co.order_time,ro.pickup_time,
case when str_to_date(time(ro.pickup_time),'%H:%i:%s') < str_to_date(time(co.order_time),'%H:%i:%s') then
	timestampdiff(minute, str_to_date(time(co.order_time),'%H:%i:%s'), date_add(str_to_date(time(ro.pickup_time),'%H:%i:%s'),interval 1 day))
else timestampdiff(minute,str_to_date(time(co.order_time),'%H:%i:%s'),str_to_date(time(ro.pickup_time),'%H:%i:%s'))
end as time_diff_in_minute,
ro.duration, round((ro.distance/(ro.duration/60)),2) as speed,
count(co.customer_id) as number_of_pizza
from customer_orders co
join runner_orders ro
on co.order_id = ro.order_id 
join ratings r
on co.order_id = r.order_id
group by co.customer_id,co.order_id,ro.runner_id,r.rating,co.order_time,ro.pickup_time,ro.duration,ro.distance;

