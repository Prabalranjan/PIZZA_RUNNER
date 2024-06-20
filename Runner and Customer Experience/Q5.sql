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

-- 5. What was the difference between the longest and shortest delivery times for all orders?

with CTE1 as(
select min(time(order_time)) as min_time, max(time(order_time)) as max_time
from customer_orders
)
select concat(timestampdiff(MINUTE, min_time,max_time)," minutes") as time_diff
from CTE1


 