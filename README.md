# PIZZA_RUNNER

project link - https://8weeksqlchallenge.com/case-study-2/

<img width="539" alt="image" src="https://github.com/Prabalranjan/PIZZA_RUNNER/assets/71269601/da93a8cb-3055-42ed-bfea-a956d68aed17">

## Table 1: runners
The runners table shows the registration_date for each new runner

## Table 2: customer_orders
Customer pizza orders are captured in the customer_orders table with 1 row for each individual pizza that is part of the order.

The pizza_id relates to the type of pizza which was ordered whilst the exclusions are the ingredient_id values which should be removed from the pizza and the extras are the ingredient_id values that need to be added to the pizza.

Note that customers can order multiple pizzas in a single order with varying exclusions and extras values even if the pizza is the same type!

The exclusions and extras columns will need to be cleaned up before using them in your queries.

## Table 3: runner_orders
After each orders are received through the system - they are assigned to a runner - however not all orders are fully completed and can be cancelled by the restaurant or the customer.

The pickup_time is the timestamp at which the runner arrives at the Pizza Runner headquarters to pick up the freshly cooked pizzas. The distance and duration fields are related to how far and long the runner had to travel to deliver the order to the respective customer.

There are some known data issues with this table so be careful when using this in your queries - make sure to check the data types for each column in the schema SQL!

## Table 4: pizza_names
At the moment - Pizza Runner only has 2 pizzas available the Meat Lovers or Vegetarian!

## Table 5: pizza_recipes
Each pizza_id has a standard set of toppings which are used as part of the pizza recipe.

## Table 6: pizza_toppings
This table contains all of the topping_name values with their corresponding topping_id value

## A. Pizza Metrics
1. How many pizzas were ordered?  
2. How many unique customer orders were made?  
3. How many successful orders were delivered by each runner?  
4. How many of each type of pizza was delivered?  
5. How many Vegetarian and Meatlovers were ordered by each customer?  
6. What was the maximum number of pizzas delivered in a single order?  
7. For each customer, how many delivered pizzas had at least 1 change and how many had no changes?  
8. How many pizzas were delivered that had both exclusions and extras?  
9. What was the total volume of pizzas ordered for each hour of the day?  
10. What was the volume of orders for each day of the week?  
(all the codes of this section are inside the Pizza Metrics folder)  

## B. Runner and Customer Experience
1. How many runners signed up for each 1 week period? (i.e. week starts 2021-01-01)  
2. What was the average time in minutes it took for each runner to arrive at the Pizza Runner HQ to pickup the order?  
3. Is there any relationship between the number of pizzas and how long the order takes to prepare?  
4. What was the average distance travelled for each customer?  
5. What was the difference between the longest and shortest delivery times for all orders?  
6. What was the average speed for each runner for each delivery and do you notice any trend for these values?  
7. What is the successful delivery percentage for each runner?  
(all the codes of this section are inside the Runner and Customer Experience folder)

## C. Ingredient Optimisation
1. What are the standard ingredients for each pizza?  
2. What was the most commonly added extra?  
3. What was the most common exclusion?  
4. Generate an order item for each record in the customers_orders table in the format of one of the following:  
  - Meat Lovers  
  - Meat Lovers - Exclude Beef  
  - Meat Lovers - Extra Bacon  
  - Meat Lovers - Exclude Cheese, Bacon - Extra Mushroom, Peppers  
(all the codes of this section are inside the Ingredient Optimisation folder)

## D. Pricing and Ratings
1. If a Meat Lovers pizza costs $12 and Vegetarian costs $10 and there were no charges for changes - how much money has Pizza Runner made so far if there are no delivery fees?  
2. What if there was an additional $1 charge for any pizza extras?  
  - Add cheese is $1 extra  
3. The Pizza Runner team now wants to add an additional ratings system that allows customers to rate their runner, how would you design an additional table for this new dataset - generate a schema for this new table and insert your own data for ratings for each successful customer order between 1 to 5.  
4. Using your newly generated table - can you join all of the information together to form a table which has the following information for successful deliveries?  
  - customer_id  
  - order_id  
  - runner_id  
  - rating  
  - order_time  
  - pickup_time  
  - Time between order and pickup  
  - Delivery duration  
  - Average speed  
  - Total number of pizzas  
5. If a Meat Lovers pizza was $12 and Vegetarian $10 fixed prices with no cost for extras and each runner is paid $0.30 per kilometer traveled - how much money does Pizza Runner have left over after these deliveries?  
(all the codes of this section are inside the Pricing and Ratings folder)








