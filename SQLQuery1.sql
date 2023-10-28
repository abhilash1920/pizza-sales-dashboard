select * from pizza_sales;

/*Total revenue:*/
select sum(total_price) as total_revenue from pizza_sales;

/*avg order value:*/
select (sum(total_price) / count(distinct(order_id))) as avg_order_value   from pizza_sales;

/*Total pizza sold:*/
select sum(quantity) as total_pizza_sold from pizza_sales;

/*Total order:*/
select count(distinct order_id) as total_pizza_sold from pizza_sales;

/*avg of pizza per order:*/
select cast(cast(sum(quantity) as decimal(10,2)) / cast(count(distinct order_id) as decimal(10,2)) as decimal(10,2))  as total_pizza_sold from pizza_sales;
/*above will give accurate result 2.32 were as below will give 2.00*/
select cast(sum(quantity) / count(distinct order_id) as decimal(10,2))  as total_pizza_sold from pizza_sales;