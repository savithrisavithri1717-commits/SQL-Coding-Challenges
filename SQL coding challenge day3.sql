-- to creat database
create database ECommerceDB;
use ECommerceDB;

create table products (
   product_id int primary key,
   product_name varchar(100),
   price decimal(10,2));
   
create table sales (
   sale_id int primary key,
   product_id int,
   sales_amount decimal(10,2),
   foreign key (product_id) references
products(product_id));   
   

insert into products values
   (1, 'laptop', 55000),
   (2, 'mobile', 25000),
   (3, 'headphones', 2000),
   (4, 'smartphone', 5000),
   (5, 'tablet', 15000);
   
 insert into sales values
   (1, 1, 55000),
   (2, 2, 25000),
   (3, 3, 20000),
   (4, 4, 50000),
   (5, 5, 15000);
   
   
 select product_id, product_name, price from products
 order by price DESC
 limit 3;
   
select 
    count(*) as total_sales_records,
    sum(sales_amount) as total_sales_amount,
    avg(sales_amount) as average_sales_amount,
    max(sales_amount) as highest_sales_amount,
    min(sales_amount) as lowest_sales_amount from sales;
    
    
    Select 
         p.product_id,
         p.product_name,
         sum(s.sales_amount) as total_sales_amount from  sales s
         join products p on s.product_id = p.product_id
         group by p.product_id, p.product_name
         having sum(s.sales_amount) > 100;
         
         
         select
              product_id,
              product_name,
              price,
              rank() over (order by price DESC) as price_rank from products;
              
              
              
              
              


