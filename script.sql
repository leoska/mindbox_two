USE `mindbox`;

SELECT t1.product_name, t3.category_name 
FROM `mindbox`.`products` t1
LEFT JOIN `mindbox`.`products_categories` t2 ON (t1.id = t2.product_id)
LEFT JOIN `mindbox`.`categories` t3 ON (t3.id = t2.category_id);