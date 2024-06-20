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

-- 6. What was the average speed for each runner for each delivery and do you notice any trend for these values? 

with CTE1 as(
select co.order_id,co.customer_id,ro.runner_id,ro.distance,ro.duration,round((distance/(duration/60)),2) as speed
from customer_orders co
left join runner_orders ro
on co.order_id = ro.order_id
order by  co.order_id,co.customer_id
)
select order_id,runner_id,round(avg(speed),2) as avg_speed
from CTE1
group by order_id,runner_id;




-- speed calculation
-- select runner_id,distance,(duration) as km, round((distance/(duration/60)),2) as speed
-- from runner_orders;
