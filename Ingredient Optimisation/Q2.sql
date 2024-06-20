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

-- 2. What was the most commonly added extra?

-- chatgpt
with CTE1 as (
SELECT 
    pizza_id, 
    TRIM(SUBSTRING_INDEX(SUBSTRING_INDEX(extras, ',', numbers.n), ',', -1)) AS extra
FROM 
    (SELECT 1 AS n UNION ALL SELECT 2 UNION ALL SELECT 3 UNION ALL 
            SELECT 4 UNION ALL SELECT 5 UNION ALL SELECT 6 UNION ALL 
            SELECT 7 UNION ALL SELECT 8 UNION ALL SELECT 9 UNION ALL 
            SELECT 10 UNION ALL SELECT 11 UNION ALL SELECT 12) numbers 
    JOIN customer_orders 
    ON CHAR_LENGTH(extras) - CHAR_LENGTH(REPLACE(extras, ',', '')) >= numbers.n - 1
ORDER BY pizza_id, extra
),
CTE2 as(
select pizza_id,extra,count(extra) as occurence
from CTE1
group by pizza_id,extra
)
select CTE2.pizza_id,
CTE2.extra, CTE2.occurence, pt.topping_name
from CTE2 
join pizza_toppings pt
on CTE2.extra = pt.topping_id
order by pizza_id,extra;

