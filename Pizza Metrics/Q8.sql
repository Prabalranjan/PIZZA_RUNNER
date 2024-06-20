select * from runners;
select * from customer_orders;
select * from runner_orders;
select * from pizza_names;
select * from pizza_recipes;
select * from pizza_recipes_normal;
select * from pizza_toppings;
select * from worst_toppings;
select * from best_toppings;

-- 8. How many pizzas were delivered that had both exclusions and extras?
select 
sum(case when (exclusions is not null) and (extras is not null) then 1 end) as _of_Nochange_pizza
from customer_orders;




