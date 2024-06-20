select * from runners;
select * from customer_orders;
select * from runner_orders;
select * from pizza_names;
select * from pizza_recipes;
select * from pizza_recipes_normal;
select * from pizza_toppings;
select * from worst_toppings;
select * from best_toppings;

-- 5.How many Vegetarian and Meatlovers were ordered by each customer? 
select customer_id,pizza_id,count(pizza_id) as no_of_pizza
from customer_orders
group by customer_id,pizza_id
order by customer_id;

-- select * from customer_orders
-- where customer_id = 101;


