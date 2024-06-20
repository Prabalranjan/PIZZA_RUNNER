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

-- 4.Generate an order item for each record in the customers_orders table in the format of one of the following:
-- Meat Lovers
-- Meat Lovers - Exclude Beef
-- Meat Lovers - Extra Bacon
-- Meat Lovers - Exclude Cheese, Bacon - Extra Mushroom, Peppers 

select *,
case when pizza_id = 1 and exclusions = 4 and exclusions = 1 and extras = 6 and extras = 9 then 'Exclude Cheese, Bacon - Extra Mushroom, Peppers' 
	 when pizza_id = 1 and extras = 1 then 'Meat Lovers - Extra Bacon'
	 when pizza_id = 1 and exclusions = 1 then 'Meat Lovers - Exclude Beef'
     when pizza_id = 1 then 'Meat Lovers'
     when pizza_id = 2 then 'Vegetarian'
     -- when pizza_id = 1 and extras = 1 then 'Meat Lovers - Extra Bacon'
end as order_item
from customer_orders;




