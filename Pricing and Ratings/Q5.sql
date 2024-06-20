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
select * from ratings;

-- 5. If a Meat Lovers pizza was $12 and Vegetarian $10 fixed prices with no cost for extras 
-- and each runner is paid $0.30 per kilometre traveled - how much money does Pizza Runner 
-- have left over after these deliveries? 

select sum(case when pizza_id = 1 then 12 else 10
				-- when pizza_id = 2 then 10 
                end) as 'pizza_price'
-- sum(case when pizza_id = 2 then 10 end) as 'Vegetarian'
from customer_orders co
join runner_orders ro
on co.order_id = ro.order_id
where ro.distance is not null; 

set @total_income = 138;

with CTE1 as(
select runner_id,sum(distance) as total_distance
from runner_orders
group by runner_id
),
CTE2 as(
select  (sum(total_distance) * 0.30) as total_to_runner
from CTE1
)
select round((@total_income - total_to_runner),2) as remaining 
from CTE2;

-- how much money does Pizza Runner have left over after these deliveries? 
select 




