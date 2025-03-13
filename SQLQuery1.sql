select*from pizza_sales;

select sum(total_price) as total_revenue from pizza_sales;



select sum(total_price)/count(distinct order_id) as aov from pizza_sales;


select sum(quantity) as total_pizza_sold from pizza_sales;

select count(distinct order_id) as total_orders from pizza_sales;

select cast(sum(quantity)as decimal(10,2))/
cast(count(distinct order_id) as decimal (10,2)) as average_pizza_per_order from pizza_sales;


select DATENAME(dw,order_date) as order_date,count(distinct order_id)
as total_orders from pizza_sales
group by DATENAME(dw,order_date)


select DATENAME(MONTH,order_date) as order_month, count(distinct order_id)
as total_order from pizza_sales
group by DATENAME(MONTH,order_date)
order by count(distinct order_id) desc


select pizza_category, sum(total_price) as total_sales, sum(total_price)*100/(select sum(total_price)from pizza_sales) as pct
from pizza_sales
group by pizza_category


select pizza_size, sum(total_price) as total_sales, sum(total_price)*100/(select sum(total_price)from pizza_sales) as pct
from pizza_sales
group by pizza_size


select top 5 pizza_name, sum(total_price) as total_sales from
pizza_sales
group by pizza_name
order by total_sales desc

select top 5 pizza_name, sum(total_price) as total_sales from
pizza_sales
group by pizza_name
order by total_sales asc


select top 5 pizza_name, sum(quantity) as total_quantity from
pizza_sales
group by pizza_name
order by total_quantity asc

select top 5 pizza_name, sum(quantity) as total_quantity from
pizza_sales
group by pizza_name
order by total_quantity desc














