-- Get all customers and their addresses.
SELECT "customers"."first_name","customers"."last_name", "addresses"."street", "addresses"."city", "addresses"."state", "addresses"."zip"
FROM "customers" JOIN "addresses" on "customers"."id" = "addresses"."customer_id";

-- Get all orders and their line items (orders, quantity and product).
SELECT "orders"."id", "line_items"."quantity", "description" 
FROM "orders" JOIN "line_items" on "orders"."id" = "line_items"."order_id"
JOIN "products" on "products"."id" = "line_items"."product_id"

-- Which warehouses have cheetos?
SELECT "warehouse"."warehouse"
FROM "warehouse" 
JOIN "warehouse_product" on "warehouse_product"."warehouse_id" = "warehouse"."id"
JOIN "products" on "products"."id" = "warehouse_product"."product_id"
WHERE "description" = 'cheetos';

Delta

-- Which warehouses have diet pepsi?
alpha
delta
gamma

-- Get the number of orders for each customer. NOTE: It is OK if those without orders are not included in results.
SELECT "customers"."first_name", count("orders") 
FROM "orders" 
JOIN "addresses" on "orders"."address_id" = "addresses"."id"
JOIN "customers" on "customers"."id" = "addresses"."customer_id" 
GROUP BY "customers"."first_name";

Lucy	3
Lisa	5
Charles	1

-- How many customers do we have?
SELECT count(*) FROM "customers";
4

-- How many products do we carry?
SELECT count(*) FROM "products";
7

-- What is the total available on-hand quantity of diet pepsi?
SELECT sum("on_hand")
FROM "warehouse_product"
JOIN "products" on "warehouse_product"."product_id" = "products"."id"
WHERE "products"."description" = 'diet pepsi';
92