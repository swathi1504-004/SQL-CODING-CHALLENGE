use ecommerce_db;
show tables;
select * from customer;
drop table products;
drop table orders;
drop table order_items;
drop table customers;
CREATE TABLE customers (
    customer_id int primary key auto_increment,
    customer_name varchar(50),
    email_id varchar(50),
    pwd VARCHAR(50)
    );
CREATE TABLE products(
	product_id int (20) primary key AUTO_INCREMENT,
    product_name varchar(50),
    product_price varchar(50),
    product_description varchar(255),
    stockquantity int(50)
    );
CREATE TABLE cart(
   cart_id int primary key,
   customer_id int,
   product_id int,
   foreign key (customer_id) references customers(customer_id),
   foreign key (product_id) references products(product_id),
   quantity int(50)
   );
CREATE TABLE orders(
   order_id int primary key auto_increment,
   customer_id int,
   foreign key(customer_id) references customers(customer_id),
   order_date int,
   total_price int,
   shipping_address varchar(100)
   );
CREATE TABLE order_items(
   order_item_id int primary key auto_increment,
   order_id int,
   product_id int,
   foreign key(order_id) references orders(order_id),
   foreign key(product_id) references products(product_id),
   quantity int
   );
   
   CREATE TABLE Customer (
    customer_id int primary key auto_increment,
    first_name varchar(50),
    last_name varchar(50),
    email_id VARCHAR(50),
    address varchar(250)
    );
 INSERT INTO Customer(first_name, last_name,email_id,address)
   VALUES ('John','doe','johndoe@example.com','123 Main St,City');
 INSERT INTO Customer(first_name,last_name,email_id,address)
   VALUES ('Jane','Smith','janesmith@example.com','456 Elm St,Town');
  INSERT INTO Customer(first_name, last_name,email_id,address)
   VALUES ('Robert','Johnson','robert@example.com','789 Oak St,Village');
 INSERT INTO Customer(first_name,last_name,email_id,address)
   VALUES ('Sarah','Brown','sarah@example.com','101 Pine St,Suburb');
INSERT INTO Customer(first_name, last_name,email_id,address)
   VALUES ('David','lee','david@example.com','234 Cedar St,District');
 INSERT INTO Customer(first_name,last_name,email_id,address)
   VALUES ('Laura','Hall','laura@example.com','567 Birch St,Country');
 INSERT INTO Customer(first_name, last_name,email_id,address)
   VALUES ('Michael','Davis','michael@example.com','890 Maple St,State');
 INSERT INTO Customer(first_name,last_name,email_id,address)
   VALUES ('Emma','Wilson','emma@example.com','321 Redwood St,Country');
INSERT INTO Customer(first_name,last_name,email_id,address)
   VALUES ('William','Taylor','william@example.com','432 Spruce St,Province');
 INSERT INTO Customer(first_name,last_name,email_id,address)
   VALUES ('Olivia','Adams','olivia@example.com','756 Fir St,Territory');
   UPDATE Customer
SET address = '123 Main St, City'
WHERE email_id='johndoe@example.com';
 INSERT INTO products( product_name,product_description,product_price,stockquantity)
   VALUES ('Laptop','High-performace laptop',800.00,10);
 INSERT INTO products( product_name,product_description,product_price,stockquantity)
   VALUES ('Smartphone','Latest smartphone',600.00,15);
INSERT INTO products( product_name,product_description,product_price,stockquantity)
   VALUES ('Tablet','Portable tablet',300.00,20);
 INSERT INTO products( product_name,product_description,product_price,stockquantity)
   VALUES ('Headphones','Noise-cancelling',150.00,30);
  INSERT INTO products( product_name,product_description,product_price,stockquantity)
   VALUES ('TV','4K Smart TV',900.00,5);
 INSERT INTO products( product_name,product_description,product_price,stockquantity)
   VALUES ('Coffee Maker','Automatic coffee maker',50.00,25);
INSERT INTO products( product_name,product_description,product_price,stockquantity)
   VALUES ('Refrigerator','Energy-efficient',700.00,10);
 INSERT INTO products( product_name,product_description,product_price,stockquantity)
   VALUES ('Microwave Oven','Countertop microwave',80.00,15);
  INSERT INTO products( product_name,product_description,product_price,stockquantity)
   VALUES ('Blender','High-speed blender',70.00,20);
 INSERT INTO products( product_name,product_description,product_price,stockquantity)
   VALUES ('Vaccum Cleaner','Bagless vacuum cleaner',120.00,10);
   ALTER TABLE orders
modify COLUMN order_date date;
INSERT INTO orders( order_id,customer_id,order_date,total_price)
   VALUES (1,1,'2023-01-05',1200.00);
INSERT INTO orders( order_id,customer_id,order_date,total_price)
   VALUES (2,2,'2023-02-10',900.00);
INSERT INTO orders( order_id,customer_id,order_date,total_price)
   VALUES (3,3,'2023-03-15',300.00);
INSERT INTO orders(order_id, customer_id,order_date,total_price)
   VALUES (4,4,'2023-04-20',150.00);
INSERT INTO orders( order_id,customer_id,order_date,total_price)
   VALUES (5,5,'2023-05-25',1800.00);
INSERT INTO orders( order_id,customer_id,order_date,total_price)
   VALUES (6,6,'2023-06-30',400.00);
INSERT INTO orders( order_id,customer_id,order_date,total_price)
   VALUES (7,7,'2023-07-05',700.00);
INSERT INTO orders( order_id,customer_id,order_date,total_price)
   VALUES (8,8,'2023-08-10',160.00);
INSERT INTO orders( order_id,customer_id,order_date,total_price)
   VALUES (9,9,'2023-09-15',140.00);
INSERT INTO orders( order_id,customer_id,order_date,total_price)
   VALUES (10,10,'2023-10-20',1400.00);

ALTER TABLE cart
DROP FOREIGN KEY cart_ibfk_1;

ALTER TABLE cart
ADD CONSTRAINT cart_kufk_1
FOREIGN KEY (customer_id) REFERENCES Customer(customer_id);
DELETE FROM orders WHERE order_id=1;
SHOW CREATE TABLE cart;
INSERT INTO orders(customer_id,order_date,total_price)
   VALUES (1,'2023-01-05',1200.00);
INSERT INTO orders(customer_id,order_date,total_price)
   VALUES (2,'2023-02-10',900.00);
INSERT INTO orders(customer_id,order_date,total_price)
   VALUES (3,'2023-03-15',300.00);
INSERT INTO orders(customer_id,order_date,total_price)
   VALUES (4,'2023-04-20',150.00);
INSERT INTO orders(customer_id,order_date,total_price)
   VALUES (5,'2023-05-25',1800.00);
INSERT INTO orders(customer_id,order_date,total_price)
   VALUES (6,'2023-06-30',400.00);
INSERT INTO orders(customer_id,order_date,total_price)
   VALUES (7,'2023-07-05',700.00);
INSERT INTO orders(customer_id,order_date,total_price)
   VALUES (8,'2023-08-10',160.00);
INSERT INTO orders(customer_id,order_date,total_price)
   VALUES (9,'2023-09-15',140.00);
INSERT INTO orders(customer_id,order_date,total_price)
   VALUES (10,'2023-10-20',1400.00);
   INSERT INTO orders(customer_id,order_date,total_price)
   VALUES (1,'2023-10-20',1500.00);

   alter table order_items
   add column item_amount int;
   INSERT INTO order_items(order_id,product_id,quantity,item_amount)
   VALUES (4,1,2,1600.00);
INSERT INTO order_items(order_id,product_id,quantity,item_amount)
   VALUES (5,3,1,300.00);
INSERT INTO order_items(order_id,product_id,quantity,item_amount)
   VALUES (6,2,3,1800.00);
INSERT INTO order_items(order_id,product_id,quantity,item_amount)
   VALUES (7,5,2,1800.00);
INSERT INTO order_items(order_id,product_id,quantity,item_amount)
   VALUES (8,4,4,600.00);
INSERT INTO order_items(order_id,product_id,quantity,item_amount)
   VALUES (9,6,1,50.00);
INSERT INTO order_items(order_id,product_id,quantity,item_amount)
   VALUES (10,1,1,800.00);
INSERT INTO order_items(order_id,product_id,quantity,item_amount)
   VALUES (11,2,2,1200.00);
INSERT INTO order_items(order_id,product_id,quantity,item_amount)
   VALUES (12,10,2,240.00);
INSERT INTO order_items(order_id,product_id,quantity,item_amount)
   VALUES (13,9,3,210.00);
   INSERT INTO order_items(order_id,product_id,quantity,item_amount)
   VALUES (14,9,3,210.00);
   INSERT INTO cart(cart_id,customer_id,product_id,quantity)
   VALUES (1,1,1,2);
INSERT INTO cart(cart_id,customer_id,product_id,quantity)
   VALUES (2,1,3,1);
 INSERT INTO cart(cart_id,customer_id,product_id,quantity)
   VALUES (3,2,2,3);
 INSERT INTO cart(cart_id,customer_id,product_id,quantity)
   VALUES (4,3,4,4);
 INSERT INTO cart(cart_id,customer_id,product_id,quantity)
   VALUES (5,3,5,2);
 INSERT INTO cart(cart_id,customer_id,product_id,quantity)
   VALUES (6,4,6,1);
INSERT INTO cart(cart_id,customer_id,product_id,quantity)
   VALUES (7,5,1,1);
 INSERT INTO cart(cart_id,customer_id,product_id,quantity)
   VALUES (8,6,10,2);
INSERT INTO cart(cart_id,customer_id,product_id,quantity)
   VALUES (9,6,9,3);
 INSERT INTO cart(cart_id,customer_id,product_id,quantity)
   VALUES (10,7,7,2);
   
#1 update refregirator product price to 800
UPDATE products
SET product_price = 800
WHERE product_id=7;

#2 remove all cart items for a specific customer
delete from cart where customer_id=1;

#3 retrieve products priced below $100
select * from products where product_price <100;

#4 find products with stockquantity greater than 5
select * from products where stockquantity>5;

#5 retrieve orders with total amount between $500 and $1000
select* from orders where total_price between 500 and 1000; 
  
#6 find products with name end with letter 'r'
SELECT * FROM products
WHERE product_name LIKE '%r';

#7 retrive cart items for cus 5
select c.cart_id,c.customer_id,p.product_id,p.product_name,p.product_price,p.product_description
from cart c, products p where c.customer_id=5 and c.product_id=p.product_id;

#8 find customers placed order in 2023
SELECT DISTINCT o.Customer_id, cu.first_name,cu.last_name
FROM orders o
INNER JOIN Customer cu ON o.Customer_id = cu.customer_id
WHERE YEAR(o.order_date) = 2023;

#9 determine the minimum stock quantity for each product category
SELECT category, MIN(stockquantity) AS min_stock_quantity
FROM products
GROUP BY category;

ALTER TABLE products ADD category VARCHAR(50);

UPDATE products SET category = 'Electronics' WHERE product_id IN (1, 2, 3, 4,5);
UPDATE products SET category = 'Home Appliances' WHERE product_id IN (6, 7, 8,9,10);


#10 calculate total amount spent by each customer
select sum(o.total_price) as totalPrice,o.customer_id,c.first_name,c.last_name 
from orders o,customer c where o.customer_id=c.customer_id
group by o.customer_id;


#11 find the average order amount of each customers
SELECT AVG(o.total_price),o.customer_id
FROM orders o 
group by o.customer_id;


#12 count the number of orders placed by each customers
select count(o.order_id),o.customer_id
from orders o ,customer c where o.customer_id=c.customer_id
group by o.customer_id;

#13 find the maximum order amount of each customer
select max(o.total_price),o.customer_id from orders o,customer c where o.customer_id=c.customer_id
group by o.customer_id;

#14 get customers who placed order totalling to 1000
select sum(o.total_price) as totalAmnt,o.customer_id from orders o,customer c
where o.customer_id=c.customer_id and o.total_price>=1000 
group by o.customer_id;

#15 subquery to find the products not in the cart
SELECT * FROM products 
WHERE product_id NOT IN (
    SELECT product_id 
    FROM cart
);

#16 subquery to find customers who have not placed orders
select * from customer
where customer_id not in(
	select customer_id
    from orders
);

#17 subquery to calculate the percentage of total revenue of products
SELECT product_id,
       SUM(item_amount) AS product_revenue,
       (SUM(item_amount) * 100) /
       (SELECT SUM(item_amount) FROM order_items) AS revenue_percentage
FROM order_items
GROUP BY product_id;

#18 subquery to find products with low stock
SELECT * FROM products
WHERE product_id IN (
    SELECT product_id
    FROM products
    WHERE stockquantity < 10
);

#19 subquery to find customers who placed high-value orders
select* from customer
where customer_id in(
	select customer_id 
    from orders
    where total_price>1000
);
-- Replace these values with your desired username and password
CREATE USER 'ecom_user'@'localhost' IDENTIFIED BY 'ecom_pass';

-- Give full access to the ecommerce database
GRANT ALL PRIVILEGES ON ecommerce_db.* TO 'ecom_user'@'localhost';

-- Reload privileges
FLUSH PRIVILEGES;
DROP USER 'ecom_user'@'localhost';
CREATE USER 'ecom_user'@'localhost' IDENTIFIED BY 'ecom_pass';













   
   
   


   
 
 
  
   

   










