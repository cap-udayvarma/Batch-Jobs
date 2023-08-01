Use sql_file;

CREATE TABLE orders (
    order_id INTEGER PRIMARY KEY,
    customer_name varchar(100),
    product_name varchar(100),
    quantity INTEGER ,
    order_date DATE 
);

-- Insert data into the "orders" table
INSERT INTO orders (order_id ,customer_name, product_name, quantity, order_date)
VALUES (100,'John Doe', 'Widget A', 2, '2023-07-31');

INSERT INTO orders (order_id ,customer_name, product_name, quantity, order_date)
VALUES (101,'Jane Smith', 'Widget B', 1, '2023-07-31');

INSERT INTO orders (order_id , customer_name, product_name, quantity, order_date)
VALUES (102, 'Bob Johnson', 'Widget C', 3, '2023-07-30');

Update orders set order_date = NULL;