select * from runners;
select * from customer_orders;
select * from runner_orders;
select * from pizza_names;
select * from pizza_recipes;
select * from pizza_recipes_normal;
select * from pizza_toppings;
select * from worst_toppings;
select * from best_toppings;

-- 3.How many successful orders were delivered by each runner? 
select count(*) as total_successful_delivery
from runner_orders
where cancellation is null;


