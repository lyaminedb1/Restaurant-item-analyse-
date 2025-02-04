-- 1) View the orders table.
SELECT * from order_details ; 

-- 2) What is the date rang of the table .
SELECT MIN(order_date),MAX(order_date) from order_details;

-- 3) How many orders were made within this date rang.
SELECT  count(distinct order_id) from order_details;

-- 4) How many items were made within this date rang.
SELECT COUNT(DISTINCT item_id) from order_details;

-- 5)Which order had the most number of items.
SELECT order_id,count(item_id) as num_items 
from order_details
GROUP BY  (order_id) 
ORDER BY (num_items) DESC ;

-- 6) How many orders had more than 12 items.
SELECT count(*) FROM (SELECT order_id,count(item_id) as num_items 
from order_details
GROUP BY  (order_id) 
HAVING num_items > 12 ) AS num_orders ;


  