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

-- 5. Generate an alphabetically ordered comma separated ingredient list for each pizza order from the customer_orders table and add a 2x in 
-- front of any relevant ingredients For example: "Meat Lovers: 2xBacon, Beef, ... , Salami" 

with CTE1 as(
select prn.pizza_id,prn.topping_id,pt.topping_name
from pizza_recipes_normal prn
join pizza_toppings pt
on prn.topping_id = pt.topping_id
),
CTE2 as(
select pizza_id, group_concat(topping_name) as ingredients 
from CTE1
group by pizza_id
order by ingredients
),
CTE3 as(
select co.order_id,co.customer_id,co.exclusions,co.extras,CTE2.pizza_id,CTE2.ingredients
from CTE2
join customer_orders co
on CTE2.pizza_id = co.pizza_id
)
-- select CTE3.order_id,CTE3.exclusions,CTE3.extras,CTE3.pizza_id, group_concat(prn.topping_id)
-- from CTE3
-- join pizza_recipes_normal prn
-- on CTE3.pizza_id = prn.pizza_id
-- group by CTE3.order_id
select * from CTE3;


