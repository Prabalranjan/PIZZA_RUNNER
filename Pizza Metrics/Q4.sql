select * from runners;
select * from customer_orders;
select * from runner_orders;
select * from pizza_names;
select * from pizza_recipes;
select * from pizza_recipes_normal;
select * from pizza_toppings;
select * from worst_toppings;
select * from best_toppings;


-- 4.How many of each type of pizza was delivered? 
select pizza_id,count(pizza_id) as no_of_pizza
from customer_orders
group by pizza_id;