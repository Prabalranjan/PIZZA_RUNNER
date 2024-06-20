select * from runners;
select * from customer_orders;
select * from runner_orders;
select * from pizza_names;
select * from pizza_recipes;
select * from pizza_recipes_normal;
select * from pizza_toppings;
select * from worst_toppings;
select * from best_toppings;


-- 10.What was the volume of orders for each day of the week? 
select month(order_time) as month,week(order_time,1) as week,count(order_id) as pizza_volumn
from customer_orders
group by week(order_time,1),month(order_time);


-- select month(order_time) as month,day(order_time) as date,hour(order_time) as time,order_id
-- from customer_orders;

-- select month(order_time) as month,day(order_time) as date,week(order_time,1) as week,order_id
-- from customer_orders




