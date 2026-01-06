create database customer_profitability;
use customer_profitability;

CREATE TABLE dim_customer (
customer_id INT PRIMARY KEY,
customer_name VARCHAR(100),
region VARCHAR(50),
segment VARCHAR(50)
);

CREATE TABLE dim_product (
product_id INT PRIMARY KEY,
product_name VARCHAR(100),
category VARCHAR(50)
);

CREATE TABLE dim_date (
date_id INT PRIMARY KEY,
order_date DATE,
year INT,
month INT,
quarter VARCHAR(10)
);

CREATE TABLE fact_sales (
sales_id INT PRIMARY KEY,
customer_id INT,
product_id INT,
date_id INT,
quantity INT,
sales_amount DECIMAL(10,2),
cost_amount DECIMAL(10,2),
profit DECIMAL(10,2),
FOREIGN KEY (customer_id) REFERENCES dim_customer(customer_id),
FOREIGN KEY (product_id) REFERENCES dim_product(product_id),
FOREIGN KEY (date_id) REFERENCES dim_date(date_id)
);

