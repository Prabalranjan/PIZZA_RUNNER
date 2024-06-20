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

-- 1. If a Meat Lovers pizza costs $12 and Vegetarian costs $10 and there were no charges for changes 
-- - how much money has Pizza Runner made so far if there are no delivery fees? 

select sum(case when pizza_id = 1 then 12 else 10
				-- when pizza_id = 2 then 10 
                end) as 'pizza_price'
-- sum(case when pizza_id = 2 then 10 end) as 'Vegetarian'
from customer_orders co
join runner_orders ro
on co.order_id = ro.order_id
where ro.distance is not null;