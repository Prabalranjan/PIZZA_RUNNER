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

-- 7. What is the successful delivery percentage for each runner?
with CTE1 as(
select runner_id,count(runner_id) as total_run,count(case when cancellation is null then 1 end) as success_run
from runner_orders
group by runner_id
)
select runner_id,round((success_run/total_run) * 100,2) as delivery_precentage
from CTE1;
 
 
 