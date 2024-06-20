select * from runners;
select * from customer_orders;
select * from runner_orders;
select * from pizza_names;
select * from pizza_recipes;
select * from pizza_recipes_normal;
select * from pizza_toppings;
select * from worst_toppings;
select * from best_toppings;

-- 6. What was the maximum number of pizzas delivered in a single order?
select order_id,count(order_id) as max_order
from customer_orders
group by order_id
order by max_order desc;

-- maximum number of pizza ordered in a singler order is 3. 

