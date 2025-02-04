-- 1) Combine the two tables into a single table.
SELECT * FROM menu_items ;
SELECT * FROM order_details ;

SELECT * 
FROM order_details od LEFT JOIN menu_items mi 
	ON od.item_id = mi.menu_item_id; 
    
-- 2) What were the least and the most ordered items ? what category were they in ?
SELECT item_name,COUNT(order_details_id) AS num_purchases
FROM order_details od LEFT JOIN menu_items mi 
	ON od.item_id = mi.menu_item_id
    GROUP BY item_name 
    ORDER BY num_purchases desc ;

SELECT item_name,category,COUNT(order_details_id) AS num_purchases
FROM order_details od LEFT JOIN menu_items mi 
	ON od.item_id = mi.menu_item_id
    GROUP BY item_name , category
    ORDER BY num_purchases desc ;
    
-- 3) What were the top 5 orders that spent the most money ? 
SELECT order_id,SUM(price) as total_spend 
	FROM order_details od LEFT JOIN menu_items mi 
		ON od.item_id = mi.menu_item_id
			GROUP BY order_id
            ORDER BY total_spend DESC LIMIT 5 ;

-- 4) View the details of the highest spend over order , what insight can you gather ?
SELECT order_id , category , COUNT(item_id) as num_items
	FROM order_details od LEFT JOIN menu_items mi 
		ON od.item_id = mi.menu_item_id
			WHERE order_id in (440,2075,1957, 33,2675)
		GROUP BY order_id,category ;


