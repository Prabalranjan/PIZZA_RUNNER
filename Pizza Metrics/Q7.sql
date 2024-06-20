select * from runners;
select * from customer_orders;
select * from runner_orders;
select * from pizza_names;
select * from pizza_recipes;
select * from pizza_recipes_normal;
select * from pizza_toppings;
select * from worst_toppings;
select * from best_toppings;

-- 7. For each customer, how many delivered pizzas had at least 1 change and how many had no changes? 

with CTE1 as(
select customer_id,exclusions,extras,
case 
	when (exclusions is null) and (extras is null) then 'no_changes'
    else 'changes'
end as property
from customer_orders
),
CTE2 as(
select customer_id,property
-- count(property)
from CTE1
-- group by customer_id,property
) 
select customer_id,
sum(case when property = 'no_changes' then 1 else 0 end) as no_of_no_changes,
sum(case when property = 'changes' then 1 else 0 end) as no_of_changes
from CTE2
group by customer_id;




