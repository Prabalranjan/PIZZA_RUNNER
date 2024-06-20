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

-- 2. What if there was an additional $1 charge for any pizza extras? Add cheese is $1 extra

set @basecost = 138;

select (length(group_concat(extras)) - length(replace(group_concat(extras),',','')) + 1 ) + @basecost as total_income
from customer_orders co
join runner_orders ro
on co.order_id = ro.order_id
where extras is not null and distance is not null ;
