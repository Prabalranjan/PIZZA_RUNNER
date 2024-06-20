select * from runners;
select * from customer_orders;
select * from runner_orders;
select * from pizza_names;
select * from pizza_recipes;
select * from pizza_recipes_normal;
select * from pizza_toppings;
select * from worst_toppings;
select * from best_toppings;

-- 9. What was the total volume of pizzas ordered for each hour of the day? 
select month(order_time) as month,day(order_time) as date,hour(order_time) as time,count(order_id) as pizza_volumn
from customer_orders
group by hour(order_time),day(order_time),month(order_time);


-- select month(order_time) as month,day(order_time) as date,hour(order_time) as time,order_id
-- from customer_orders






