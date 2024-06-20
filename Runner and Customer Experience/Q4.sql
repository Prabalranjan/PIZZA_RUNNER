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


-- 4. What was the average distance travelled for each customer?
with CTE1 as(
select co.order_id,co.customer_id,ro.distance
from customer_orders co
left join runner_orders ro
on co.order_id = ro.order_id
order by  co.order_id,co.customer_id
)
select customer_id, concat(round(avg(distance)),' km') as avg_distance
from CTE1
group by customer_id




 