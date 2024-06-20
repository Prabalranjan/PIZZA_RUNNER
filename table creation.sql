create database pizza_runner;
use pizza_runner;

-- creating runner table 
DROP TABLE IF EXISTS runners;
CREATE TABLE runners (
  runner_id INTEGER,
  registration_date DATE
);

INSERT INTO runners
  (runner_id, registration_date)
VALUES
  (1, '2021-01-01'),
  (2, '2021-01-03'),
  (3, '2021-01-08'),
  (4, '2021-01-15');
  
  
-- creating customer_orders table 
DROP TABLE IF EXISTS customer_orders;
CREATE TABLE customer_orders (
  order_id INTEGER,
  customer_id INTEGER,
  pizza_id INTEGER,
  exclusions varchar(5),
  extras varchar(5),
  order_time TIMESTAMP
);
drop table customer_orders;
INSERT INTO customer_orders
  (order_id, customer_id, pizza_id, exclusions, extras, order_time)
VALUES
  ('1', '101', '1', null, null, '2020-01-01 18:05:02'),
  ('2', '101', '1', null, null, '2020-01-01 19:00:52'),
  ('3', '102', '1', null, null, '2020-01-02 23:51:23'),
  ('3', '102', '2', null, null, '2020-01-02 23:51:23'),
  ('4', '103', '1', '4', null, '2020-01-04 13:23:46'),
  ('4', '103', '1', '4', null, '2020-01-04 13:23:46'),
  ('4', '103', '2', '4', null, '2020-01-04 13:23:46'),
  ('5', '104', '1', null, '1', '2020-01-08 21:00:29'),
  ('6', '101', '2', null, null, '2020-01-08 21:03:13'),
  ('7', '105', '2', null, '1', '2020-01-08 21:20:29'),
  ('8', '102', '1', null, null, '2020-01-09 23:54:33'),
  ('9', '103', '1', '4', '1, 5', '2020-01-10 11:22:59'),
  ('10', '104', '1', null, null, '2020-01-11 18:34:49'),
  ('10', '104', '1', '2, 6', '1, 4', '2020-01-11 18:34:49');
  
select * from customer_orders;  
  
-- creating runner_orders table
DROP TABLE IF EXISTS runner_orders;
CREATE TABLE runner_orders (
  order_id INTEGER,
  runner_id INTEGER,
  pickup_time timestamp,
  distance decimal(5,2),
  duration int,
  cancellation VARCHAR(23)
); 
drop table runner_orders;
INSERT INTO runner_orders
  (order_id, runner_id, pickup_time, distance, duration, cancellation)
VALUES
  ('1', '1', '2020-01-01 18:15:34', '20', '32', null),
  ('2', '1', '2020-01-01 19:10:54', '20', '27', null),
  ('3', '1', '2020-01-03 00:12:37', '13.4', '20', null),
  ('4', '2', '2020-01-04 13:53:03', '23.4', '40', null),
  ('5', '3', '2020-01-08 21:10:57', '10', '15', null),
  ('6', '3', null, null, null, 'Restaurant Cancellation'),
  ('7', '2', '2020-01-08 21:30:45', '25', '25', null),
  ('8', '2', '2020-01-10 00:15:02', '23.4', '15', null),
  ('9', '2', null, null, null, 'Customer Cancellation'),
  ('10', '1', '2020-01-11 18:50:20', '10', '10', null);
desc runner_orders;
select * from runner_orders;

-- creating pizza_name table
DROP TABLE IF EXISTS pizza_names;
CREATE TABLE pizza_names (
  pizza_id INTEGER,
  pizza_name TEXT
);
INSERT INTO pizza_names
  (pizza_id, pizza_name)
VALUES
  (1, 'Meatlovers'),
  (2, 'Vegetarian');
  

-- creating pizza_recipes table
DROP TABLE IF EXISTS pizza_recipes;
CREATE TABLE pizza_recipes (
  pizza_id INTEGER,
  toppings TEXT
);

INSERT INTO pizza_recipes
  (pizza_id, toppings)
VALUES
  (1, '1, 2, 3, 4, 5, 6, 8, 10'),
  (2, '4, 6, 7, 9, 11, 12'); 

-- creating pizza_toppings table
DROP TABLE IF EXISTS pizza_toppings;
CREATE TABLE pizza_toppings (
  topping_id INTEGER,
  topping_name TEXT
);
INSERT INTO pizza_toppings
  (topping_id, topping_name)
VALUES
  (1, 'Bacon'),
  (2, 'BBQ Sauce'),
  (3, 'Beef'),
  (4, 'Cheese'),
  (5, 'Chicken'),
  (6, 'Mushrooms'),
  (7, 'Onions'),
  (8, 'Pepperoni'),
  (9, 'Peppers'),
  (10, 'Salami'),
  (11, 'Tomatoes'),
  (12, 'Tomato Sauce'); 

select * from pizza_toppings;