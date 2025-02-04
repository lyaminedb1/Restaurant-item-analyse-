use restaurant_db ;
-- 1) View the menu_items table.
SELECT * from menu_items ; 

-- 2) find the number of items on the menu.
SELECT count(*) from menu_items ;

-- 3) What are the least and the most expensive items on the menu.
Select * from menu_items 
ORDER BY price DESC;

-- 4) How many italian dishes are o the menu.
Select COUNT(*) as Number_of_Italian_dishes from menu_items 
WHERE category = 'Italian' ;

-- 5)What are the most and the least italian dishes on the menu.
Select * from menu_items 
WHERE category = 'Italian' 
ORDER BY price ASC ;

-- 6) How many dishes are in each category.
Select category,count(menu_item_id) AS num_dishes 
from menu_items 
GROUP BY category  ;

-- 7)What is the average dish price whithin each category.
Select category,AVG(price) AS average_dish 
from menu_items 
GROUP BY category  ;