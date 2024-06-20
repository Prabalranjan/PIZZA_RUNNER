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

-- 3. What was the most common exclusion? 
with CTE1 as(
SELECT 
    pizza_id, 
    TRIM(SUBSTRING_INDEX(SUBSTRING_INDEX(exclusions, ',', numbers.n), ',', -1)) AS exclusion
FROM 
    (SELECT 1 AS n UNION ALL SELECT 2 UNION ALL SELECT 3 UNION ALL 
            SELECT 4 UNION ALL SELECT 5 UNION ALL SELECT 6 UNION ALL 
            SELECT 7 UNION ALL SELECT 8 UNION ALL SELECT 9 UNION ALL 
            SELECT 10 UNION ALL SELECT 11 UNION ALL SELECT 12) numbers 
    JOIN customer_orders 
    ON CHAR_LENGTH(exclusions) - CHAR_LENGTH(REPLACE(exclusions, ',', '')) >= numbers.n - 1
ORDER BY pizza_id, exclusion
),
-- select * from CTE1;
CTE2 as(
select pizza_id,exclusion,count(exclusion) as exclude
from CTE1
group by pizza_id,exclusion
)
-- select * from CTE2;
select CTE2.pizza_id,
CTE2.exclusion, CTE2.exclude, pt.topping_name
from CTE2 
join pizza_toppings pt
on CTE2.exclusion = pt.topping_id
order by pizza_id,exclusion;
