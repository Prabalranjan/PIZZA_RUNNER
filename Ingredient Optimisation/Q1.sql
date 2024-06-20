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

-- 1. What are the standard ingredients for each pizza?
with CTE1 as(
select pr.pizza_id, pr.topping_id,pt.topping_name,pn.pizza_name
from pizza_recipes_normal pr
inner join pizza_toppings pt
on pr.topping_id = pt.topping_id
inner join pizza_names pn
on pr.pizza_id = pn.pizza_id
)
select pizza_name,group_concat(topping_name) 
from CTE1
group by pizza_name;