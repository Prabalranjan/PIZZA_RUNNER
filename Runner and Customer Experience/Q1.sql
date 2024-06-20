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

-- 1. How many runners signed up for each 1 week period? (i.e. week starts 2021-01-01)
select week(registration_date,1)+1 as week_no,count(runner_id) as no_of_joinee
from runners
group by week(registration_date,1)+1;



 