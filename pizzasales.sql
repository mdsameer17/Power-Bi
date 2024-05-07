create database pizza_sales;

use pizza_sales;

select * from pizza_sales;


#total orders

select round(sum(total_price)) as total_revenue from pizza_sales;

#total  pizza sold

select sum(quantity) as total_pizzas_sold from pizza_sales;

select round((sum(total_price)/count(distinct order_id)))as avg_order_value from pizza_sales;

select * from pizza_sales;

#total_orders

select count(order_id) as total_orders from pizza_sales;

select count(pizza_size) as small_pizzas from pizza_sales where pizza_size = 'S';

select hour(order_time) as order_hour, sum(quantity) as total_pizzas_sales from pizza_sales
group by hour(order_time) order by hour(order_time);

select * from pizza_sales;

select pizza_name , sum(quantity) as total_pizza_sold from pizza_sales group by pizza_name order by total_pizza_sold  limit 5
;

select pizza_name, sum(total_price) as total_pizza_revenue from pizza_sales group by pizza_name order by total_pizza_revenue desc limit 5;
