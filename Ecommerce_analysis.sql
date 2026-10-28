use ecommerce_analytics;

#How many orders were placed in 2025
select count(distinct order_id) as Total_orders
from orders where order_date >='2025-01,01' and order_date < '2026-01-01';

#Which payment method is used most frequently by customers?
select payment_method, count(Distinct customer_id) from orders 
group by payment_method order by count(Distinct customer_id) desc;

#Find the top 5 most expensive products based on their Unit_Price
 select product_id, product_name, max(unit_price) as Highest_price from product 
group by product_id, product_name order by Highest_price desc limit 5;

# overall sales performance
select sum(line_total) as Total_revenue from order_items;
select count(distinct order_id) as Total_orders from orders;

select round(sum(line_total)/count(distinct order_id),2) 
as Average_order_value from order_items;

# Monthly Revenue Trend
# how does the revenue changes from month to month
select date_format(o.order_date,'%y-%m') as Sales_month,
round(sum(oi.line_total),2) as Monthly_revenue from orders o 
join order_items oi on o.order_id=oi.order_id
group by date_format(o.order_date,'%y-%m')
order by Sales_month;

# Which product generate most revenue
select p.product_id, p.product_name, round(sum(oi.line_total),2) as Total_revenue 
from product p join order_items oi on p.product_id=oi.product_id 
group by p.product_id, p.product_name
order by Total_revenue desc limit 10;

#Which customer segments generate the most revenue.
select c.customer_segment, round(sum(oi.line_total),2) as Total_revenue 
from orders o join customers c on c.customer_id=o.customer_id 
join order_items oi on o.order_id=oi.order_id 
group by customer_segment 
order by Total_revenue desc;

# Which sales channel generates the most revenue
select o.channel, round(sum(oi.line_total),2) as Total_revenue
from orders o join order_items oi on o.order_id=oi.order_id 
group by o.channel order by Total_revenue;

#Order status analysis
#How are orders distributed across different statuses, and how much revenue is associated with each status?
select o.order_status, count(distinct o.order_id) As Total_orders,
Round(sum(oi.line_total),2) as Total_revenue from orders o
join order_items oi on o.order_id=oi.order_id
group by o.order_status
order by Total_revenue;

#Which cities generate the most revenue?
select c.city, round(sum(oi.line_total),2) As Total_revenue 
from customers c join orders o on c.customer_id=o.customer_id 
join order_items oi on o.order_id=OI.order_id 
group by c.city 
order by Total_revenue limit 10;

#How many customers have placed more than one order?
select count(*) As Reapted_customers 
from (select customer_id from orders 
group by customer_id 
having count(distinct order_id) > 1) 
as customer_orders;
 



