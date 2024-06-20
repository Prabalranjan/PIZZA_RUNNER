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

-- 3. The Pizza Runner team now wants to add an additional ratings system that allows customers to rate their runner, 
-- how would you design an additional table for this new dataset - generate a schema for this new table and insert your own data for 
-- ratings for each successful customer order between 1 to 5.

drop table if exists ratings; 
create table ratings
(
	order_id int,
    rating int
);
insert into ratings(order_id,rating) values
(1,3),(2,5),(3,4),(4,1),(5,5),(6,3),(7,2),(8,2),(9,5),(10,3);

select * from ratings;