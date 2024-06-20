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

-- 2.What was the average time in minutes it took for each runner to arrive at the Pizza Runner HQ to pickup the order? 

select runner_id,sec_to_time(AVG(TIME_TO_SEC(pickup_time)) / 60) as avg_time
from runner_orders
group by runner_id;



-- with CTE1 as(
-- select runner_id,date(pickup_time) as main_date,time(pickup_time) as main_time,duration,minute(duration) as dur
-- from runner_orders
-- )
-- select *, sec_to_time(time_to_sec(main_time) + time_to_sec(dur)) as total_time
-- from CTE1;
-- -- order by runner_id;

