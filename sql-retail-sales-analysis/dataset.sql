/* -----------------------------------------------------------
Retail Sales SQL Analysis Dataset
Purpose:
Create tables and insert sample data used for SQL analysis.
----------------------------------------------------------- */


/* -----------------------------------------------------------
Table 1: customers
Stores customer information.
----------------------------------------------------------- */

CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(50),
    city VARCHAR(50),
    signup_date DATE
);


INSERT INTO customers VALUES
(101,'Rahul','Bangalore','2023-05-01'),
(102,'Anita','Mumbai','2023-06-15'),
(103,'Vikram','Delhi','2023-07-20'),
(104,'Priya','Hyderabad','2023-08-10'),
(105,'Arjun','Chennai','2023-09-05'),
(106,'Neha','Mumbai','2023-10-01');



/* -----------------------------------------------------------
Table 2: products
Stores product information and category.
----------------------------------------------------------- */

CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(50),
    category VARCHAR(50)
);


INSERT INTO products VALUES
(1,'Laptop','Electronics'),
(2,'Mouse','Accessories'),
(3,'Keyboard','Accessories'),
(4,'Monitor','Electronics');



/* -----------------------------------------------------------
Table 3: retail_sales
Stores transaction-level sales data.
----------------------------------------------------------- */

CREATE TABLE retail_sales (
    order_id INT,
    order_date DATE,
    customer_id INT,
    product VARCHAR(50),
    product_id INT,
    quantity INT,
    price NUMERIC(10,2),
    city VARCHAR(50)
);


INSERT INTO retail_sales VALUES
(1,'2024-01-01',101,'Laptop',1,1,50000,'Bangalore'),
(2,'2024-01-02',102,'Mouse',2,2,500,'Mumbai'),
(3,'2024-01-03',101,'Keyboard',3,1,1500,'Bangalore'),
(4,'2024-01-04',103,'Monitor',4,1,12000,'Delhi'),
(5,'2024-01-05',104,'Laptop',1,1,52000,'Hyderabad'),
(6,'2024-01-06',105,'Mouse',2,3,500,'Chennai'),
(7,'2024-01-07',101,'Monitor',4,1,12000,'Bangalore'),
(8,'2024-01-08',106,'Keyboard',3,2,1500,'Mumbai');



/* -----------------------------------------------------------
Relationships (Logical)
-----------------------------------------------------------

retail_sales.customer_id → customers.customer_id

retail_sales.product_id → products.product_id

----------------------------------------------------------- */